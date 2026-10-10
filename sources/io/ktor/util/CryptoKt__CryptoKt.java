package io.ktor.util;

import io.ktor.utils.io.core.BytePacketBuilderKt;
import io.ktor.utils.io.core.StringsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlinx.io.Buffer;
import kotlinx.io.SourcesKt;

/* JADX INFO: compiled from: Crypto.kt */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class CryptoKt__CryptoKt {
    public static final char[] digits = CharsetKt.toCharArray("0123456789abcdef");

    public static final byte[] generateNonce(int i) {
        Buffer buffer = new Buffer();
        while (BytePacketBuilderKt.getSize(buffer) < i) {
            StringsKt.writeText$default(buffer, CryptoKt.generateNonce(), 0, 0, null, 14, null);
        }
        return SourcesKt.readByteArray(buffer, i);
    }

    public static final String hex(byte[] bytes) {
        Intrinsics.checkNotNullParameter(bytes, "bytes");
        char[] cArr = new char[bytes.length * 2];
        char[] cArr2 = digits;
        int i = 0;
        for (byte b : bytes) {
            int i2 = i + 1;
            cArr[i] = cArr2[(b & 255) >> 4];
            i += 2;
            cArr[i2] = cArr2[b & 15];
        }
        return StringsKt__StringsJVMKt.concatToString(cArr);
    }
}
