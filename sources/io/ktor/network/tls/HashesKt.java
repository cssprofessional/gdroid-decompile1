package io.ktor.network.tls;

import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;
import javax.crypto.Mac;
import javax.crypto.SecretKey;
import kotlin.collections.ArraysKt___ArraysJvmKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: Hashes.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class HashesKt {
    public static final byte[] PRF(SecretKey secret, byte[] label, byte[] seed, int i) throws NoSuchAlgorithmException {
        Intrinsics.checkNotNullParameter(secret, "secret");
        Intrinsics.checkNotNullParameter(label, "label");
        Intrinsics.checkNotNullParameter(seed, "seed");
        byte[] bArrPlus = ArraysKt___ArraysJvmKt.plus(label, seed);
        Mac mac = Mac.getInstance(secret.getAlgorithm());
        Intrinsics.checkNotNullExpressionValue(mac, "getInstance(...)");
        return P_hash(bArrPlus, mac, secret, i);
    }

    public static final byte[] P_hash(byte[] bArr, Mac mac, SecretKey secretKey, int i) throws InvalidKeyException {
        if (i < 12) {
            throw new IllegalArgumentException("Failed requirement.");
        }
        byte[] bArrPlus = new byte[0];
        byte[] bArrDoFinal = bArr;
        while (bArrPlus.length < i) {
            mac.reset();
            mac.init(secretKey);
            mac.update(bArrDoFinal);
            bArrDoFinal = mac.doFinal();
            Intrinsics.checkNotNullExpressionValue(bArrDoFinal, "doFinal(...)");
            mac.reset();
            mac.init(secretKey);
            mac.update(bArrDoFinal);
            mac.update(bArr);
            byte[] bArrDoFinal2 = mac.doFinal();
            Intrinsics.checkNotNullExpressionValue(bArrDoFinal2, "doFinal(...)");
            bArrPlus = ArraysKt___ArraysJvmKt.plus(bArrPlus, bArrDoFinal2);
        }
        byte[] bArrCopyOf = Arrays.copyOf(bArrPlus, i);
        Intrinsics.checkNotNullExpressionValue(bArrCopyOf, "copyOf(...)");
        return bArrCopyOf;
    }
}
