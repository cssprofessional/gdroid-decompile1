package io.ktor.network.tls.cipher;

import java.nio.ByteBuffer;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: Cipher.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class CipherKt {
    public static final ByteBuffer EmptyByteBuffer;

    public static final void set(byte[] bArr, int i, long j) {
        Intrinsics.checkNotNullParameter(bArr, "<this>");
        for (int i2 = 0; i2 < 8; i2++) {
            bArr[i2 + i] = (byte) (j >>> ((7 - i2) * 8));
        }
    }

    public static final void set(byte[] bArr, int i, short s) {
        Intrinsics.checkNotNullParameter(bArr, "<this>");
        for (int i2 = 0; i2 < 2; i2++) {
            bArr[i2 + i] = (byte) (s >>> ((1 - i2) * 8));
        }
    }

    static {
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(0);
        Intrinsics.checkNotNullExpressionValue(byteBufferAllocate, "allocate(...)");
        EmptyByteBuffer = byteBufferAllocate;
    }

    public static final ByteBuffer getEmptyByteBuffer() {
        return EmptyByteBuffer;
    }
}
