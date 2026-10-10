package io.ktor.network.tls.cipher;

import io.ktor.network.tls.CipherSuite;
import io.ktor.network.tls.KeysKt;
import io.ktor.network.tls.TLSException;
import io.ktor.network.tls.TLSRecord;
import io.ktor.util.CryptoKt;
import io.ktor.utils.io.core.BytePacketBuilderKt;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import javax.crypto.Cipher;
import javax.crypto.Mac;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import kotlin.Unit;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt___RangesKt;
import kotlinx.io.Buffer;
import kotlinx.io.Sink;
import kotlinx.io.Source;
import kotlinx.io.SourcesKt;

/* JADX INFO: compiled from: CBCCipher.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class CBCCipher implements TLSCipher {
    public long inputCounter;
    public final byte[] keyMaterial;
    public long outputCounter;
    public final Cipher receiveCipher;
    public final SecretKeySpec receiveKey;
    public final Mac receiveMac;
    public final Cipher sendCipher;
    public final SecretKeySpec sendKey;
    public final Mac sendMac;
    public final CipherSuite suite;

    public CBCCipher(CipherSuite suite, byte[] keyMaterial) throws NoSuchPaddingException, NoSuchAlgorithmException {
        Intrinsics.checkNotNullParameter(suite, "suite");
        Intrinsics.checkNotNullParameter(keyMaterial, "keyMaterial");
        this.suite = suite;
        this.keyMaterial = keyMaterial;
        Cipher cipher = Cipher.getInstance(suite.getJdkCipherName());
        Intrinsics.checkNotNull(cipher);
        this.sendCipher = cipher;
        this.sendKey = KeysKt.clientKey(keyMaterial, suite);
        Mac mac = Mac.getInstance(suite.getMacName());
        Intrinsics.checkNotNull(mac);
        this.sendMac = mac;
        Cipher cipher2 = Cipher.getInstance(suite.getJdkCipherName());
        Intrinsics.checkNotNull(cipher2);
        this.receiveCipher = cipher2;
        this.receiveKey = KeysKt.serverKey(keyMaterial, suite);
        Mac mac2 = Mac.getInstance(suite.getMacName());
        Intrinsics.checkNotNull(mac2);
        this.receiveMac = mac2;
    }

    @Override // io.ktor.network.tls.cipher.TLSCipher
    public TLSRecord encrypt(TLSRecord record) throws InvalidKeyException, InvalidAlgorithmParameterException {
        Intrinsics.checkNotNullParameter(record, "record");
        this.sendCipher.init(1, this.sendKey, new IvParameterSpec(CryptoKt.generateNonce(this.suite.getFixedIvLength())));
        byte[] byteArray = SourcesKt.readByteArray(record.getPacket());
        byte[] bArrPrepareMac = prepareMac(record, byteArray);
        Buffer buffer = new Buffer();
        BytePacketBuilderKt.writeFully$default(buffer, byteArray, 0, 0, 6, null);
        BytePacketBuilderKt.writeFully$default(buffer, bArrPrepareMac, 0, 0, 6, null);
        writePadding(buffer);
        return new TLSRecord(record.getType(), null, CipherUtilsKt.cipherLoop(buffer, this.sendCipher, new Function1() { // from class: io.ktor.network.tls.cipher.CBCCipher$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return CBCCipher.encrypt$lambda$1(this.f$0, (Sink) obj);
            }
        }), 2, null);
    }

    public static final Unit encrypt$lambda$1(CBCCipher cBCCipher, Sink cipherLoop) {
        Intrinsics.checkNotNullParameter(cipherLoop, "$this$cipherLoop");
        byte[] iv = cBCCipher.sendCipher.getIV();
        Intrinsics.checkNotNullExpressionValue(iv, "getIV(...)");
        BytePacketBuilderKt.writeFully$default(cipherLoop, iv, 0, 0, 6, null);
        return Unit.INSTANCE;
    }

    @Override // io.ktor.network.tls.cipher.TLSCipher
    public TLSRecord decrypt(TLSRecord record) throws TLSException, InvalidKeyException, InvalidAlgorithmParameterException {
        Intrinsics.checkNotNullParameter(record, "record");
        Source packet = record.getPacket();
        this.receiveCipher.init(2, this.receiveKey, new IvParameterSpec(SourcesKt.readByteArray(packet, this.suite.getFixedIvLength())));
        byte[] byteArray = SourcesKt.readByteArray(CipherUtilsKt.cipherLoop$default(packet, this.receiveCipher, null, 2, null));
        int length = (byteArray.length - (byteArray[byteArray.length - 1] & 255)) - 1;
        int macStrengthInBytes = length - this.suite.getMacStrengthInBytes();
        validatePadding(byteArray, length);
        validateMac(record, byteArray, macStrengthInBytes);
        Buffer buffer = new Buffer();
        BytePacketBuilderKt.writeFully(buffer, byteArray, 0, macStrengthInBytes);
        return new TLSRecord(record.getType(), record.getVersion(), buffer);
    }

    public final byte[] prepareMac(TLSRecord tLSRecord, byte[] bArr) throws InvalidKeyException {
        this.sendMac.reset();
        this.sendMac.init(KeysKt.clientMacKey(this.keyMaterial, this.suite));
        byte[] bArr2 = new byte[13];
        CipherKt.set(bArr2, 0, this.outputCounter);
        bArr2[8] = (byte) tLSRecord.getType().getCode();
        bArr2[9] = 3;
        bArr2[10] = 3;
        CipherKt.set(bArr2, 11, (short) bArr.length);
        this.outputCounter++;
        this.sendMac.update(bArr2);
        byte[] bArrDoFinal = this.sendMac.doFinal(bArr);
        Intrinsics.checkNotNullExpressionValue(bArrDoFinal, "doFinal(...)");
        return bArrDoFinal;
    }

    public final void writePadding(Sink sink) {
        byte blockSize = (byte) (this.sendCipher.getBlockSize() - ((BytePacketBuilderKt.getSize(sink) + 1) % this.sendCipher.getBlockSize()));
        int i = blockSize + 1;
        for (int i2 = 0; i2 < i; i2++) {
            sink.writeByte(blockSize);
        }
    }

    public final void validatePadding(byte[] bArr, int i) throws TLSException {
        int i2 = bArr[bArr.length - 1] & 255;
        int length = bArr.length;
        while (i < length) {
            int i3 = bArr[i] & 255;
            if (i2 != i3) {
                throw new TLSException("Padding invalid: expected " + i2 + ", actual " + i3, null, 2, null);
            }
            i++;
        }
    }

    public final void validateMac(TLSRecord tLSRecord, byte[] bArr, int i) throws TLSException, InvalidKeyException {
        this.receiveMac.reset();
        this.receiveMac.init(KeysKt.serverMacKey(this.keyMaterial, this.suite));
        byte[] bArr2 = new byte[13];
        CipherKt.set(bArr2, 0, this.inputCounter);
        bArr2[8] = (byte) tLSRecord.getType().getCode();
        bArr2[9] = 3;
        bArr2[10] = 3;
        CipherKt.set(bArr2, 11, (short) i);
        this.inputCounter++;
        this.receiveMac.update(bArr2);
        this.receiveMac.update(bArr, 0, i);
        byte[] bArrDoFinal = this.receiveMac.doFinal();
        Intrinsics.checkNotNull(bArrDoFinal);
        if (!MessageDigest.isEqual(bArrDoFinal, ArraysKt___ArraysKt.sliceArray(bArr, RangesKt___RangesKt.until(i, this.suite.getMacStrengthInBytes() + i)))) {
            throw new TLSException("Failed to verify MAC content", null, 2, null);
        }
    }
}
