package io.ktor.network.tls.cipher;

import io.ktor.network.tls.CipherSuite;
import io.ktor.network.tls.KeysKt;
import io.ktor.network.tls.TLSRecordType;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;
import javax.crypto.Cipher;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.GCMParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: GCMCipher.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class GCMCipherKt {
    public static final Cipher gcmEncryptCipher(CipherSuite cipherSuite, byte[] bArr, TLSRecordType tLSRecordType, int i, long j, long j2) throws NoSuchPaddingException, NoSuchAlgorithmException, InvalidKeyException, InvalidAlgorithmParameterException {
        Cipher cipher = Cipher.getInstance(cipherSuite.getJdkCipherName());
        Intrinsics.checkNotNull(cipher);
        SecretKeySpec secretKeySpecClientKey = KeysKt.clientKey(bArr, cipherSuite);
        byte[] bArrCopyOf = Arrays.copyOf(KeysKt.clientIV(bArr, cipherSuite), cipherSuite.getIvLength());
        Intrinsics.checkNotNullExpressionValue(bArrCopyOf, "copyOf(...)");
        CipherKt.set(bArrCopyOf, cipherSuite.getFixedIvLength(), j);
        cipher.init(1, secretKeySpecClientKey, new GCMParameterSpec(cipherSuite.getCipherTagSizeInBytes() * 8, bArrCopyOf));
        byte[] bArr2 = new byte[13];
        CipherKt.set(bArr2, 0, j2);
        bArr2[8] = (byte) tLSRecordType.getCode();
        bArr2[9] = 3;
        bArr2[10] = 3;
        CipherKt.set(bArr2, 11, (short) i);
        cipher.updateAAD(bArr2);
        return cipher;
    }

    public static final Cipher gcmDecryptCipher(CipherSuite cipherSuite, byte[] bArr, TLSRecordType tLSRecordType, int i, long j, long j2) throws NoSuchPaddingException, NoSuchAlgorithmException, InvalidKeyException, InvalidAlgorithmParameterException {
        Cipher cipher = Cipher.getInstance(cipherSuite.getJdkCipherName());
        Intrinsics.checkNotNull(cipher);
        SecretKeySpec secretKeySpecServerKey = KeysKt.serverKey(bArr, cipherSuite);
        byte[] bArrCopyOf = Arrays.copyOf(KeysKt.serverIV(bArr, cipherSuite), cipherSuite.getIvLength());
        Intrinsics.checkNotNullExpressionValue(bArrCopyOf, "copyOf(...)");
        CipherKt.set(bArrCopyOf, cipherSuite.getFixedIvLength(), j);
        cipher.init(2, secretKeySpecServerKey, new GCMParameterSpec(cipherSuite.getCipherTagSizeInBytes() * 8, bArrCopyOf));
        int ivLength = (i - (cipherSuite.getIvLength() - cipherSuite.getFixedIvLength())) - cipherSuite.getCipherTagSizeInBytes();
        if (ivLength >= 65536) {
            throw new IllegalStateException(("Content size should fit in 2 bytes, actual: " + ivLength).toString());
        }
        byte[] bArr2 = new byte[13];
        CipherKt.set(bArr2, 0, j2);
        bArr2[8] = (byte) tLSRecordType.getCode();
        bArr2[9] = 3;
        bArr2[10] = 3;
        CipherKt.set(bArr2, 11, (short) ivLength);
        cipher.updateAAD(bArr2);
        return cipher;
    }
}
