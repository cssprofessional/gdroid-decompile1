package io.ktor.network.tls.cipher;

import io.ktor.network.tls.CipherSuite;
import io.ktor.network.tls.TLSRecord;
import io.ktor.network.tls.TLSRecordType;
import io.ktor.utils.io.core.ByteReadPacketKt;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import javax.crypto.Cipher;
import javax.crypto.NoSuchPaddingException;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.io.Sink;
import kotlinx.io.Source;

/* JADX INFO: compiled from: GCMCipher.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class GCMCipher implements TLSCipher {
    public long inputCounter;
    public final byte[] keyMaterial;
    public long outputCounter;
    public final CipherSuite suite;

    public GCMCipher(CipherSuite suite, byte[] keyMaterial) {
        Intrinsics.checkNotNullParameter(suite, "suite");
        Intrinsics.checkNotNullParameter(keyMaterial, "keyMaterial");
        this.suite = suite;
        this.keyMaterial = keyMaterial;
    }

    @Override // io.ktor.network.tls.cipher.TLSCipher
    public TLSRecord encrypt(TLSRecord record) throws NoSuchPaddingException, NoSuchAlgorithmException, InvalidKeyException, InvalidAlgorithmParameterException {
        Intrinsics.checkNotNullParameter(record, "record");
        CipherSuite cipherSuite = this.suite;
        byte[] bArr = this.keyMaterial;
        TLSRecordType type = record.getType();
        int remaining = (int) ByteReadPacketKt.getRemaining(record.getPacket());
        long j = this.outputCounter;
        Cipher cipherGcmEncryptCipher = GCMCipherKt.gcmEncryptCipher(cipherSuite, bArr, type, remaining, j, j);
        final long j2 = this.outputCounter;
        Source sourceCipherLoop = CipherUtilsKt.cipherLoop(record.getPacket(), cipherGcmEncryptCipher, new Function1() { // from class: io.ktor.network.tls.cipher.GCMCipher$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return GCMCipher.encrypt$lambda$0(j2, (Sink) obj);
            }
        });
        this.outputCounter++;
        return new TLSRecord(record.getType(), null, sourceCipherLoop, 2, null);
    }

    public static final Unit encrypt$lambda$0(long j, Sink cipherLoop) {
        Intrinsics.checkNotNullParameter(cipherLoop, "$this$cipherLoop");
        cipherLoop.writeLong(j);
        return Unit.INSTANCE;
    }

    @Override // io.ktor.network.tls.cipher.TLSCipher
    public TLSRecord decrypt(TLSRecord record) throws NoSuchPaddingException, NoSuchAlgorithmException, InvalidKeyException, InvalidAlgorithmParameterException {
        Intrinsics.checkNotNullParameter(record, "record");
        Source packet = record.getPacket();
        long remaining = ByteReadPacketKt.getRemaining(packet);
        long j = packet.readLong();
        long j2 = this.inputCounter;
        this.inputCounter = 1 + j2;
        return new TLSRecord(record.getType(), record.getVersion(), CipherUtilsKt.cipherLoop$default(packet, GCMCipherKt.gcmDecryptCipher(this.suite, this.keyMaterial, record.getType(), (int) remaining, j, j2), null, 2, null));
    }
}
