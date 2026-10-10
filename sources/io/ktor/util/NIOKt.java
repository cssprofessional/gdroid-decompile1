package io.ktor.util;

import java.nio.ByteBuffer;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: NIO.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class NIOKt {
    public static /* synthetic */ int moveTo$default(ByteBuffer byteBuffer, ByteBuffer byteBuffer2, int i, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = Integer.MAX_VALUE;
        }
        return moveTo(byteBuffer, byteBuffer2, i);
    }

    public static final int moveTo(ByteBuffer byteBuffer, ByteBuffer destination, int i) {
        Intrinsics.checkNotNullParameter(byteBuffer, "<this>");
        Intrinsics.checkNotNullParameter(destination, "destination");
        int iMin = Math.min(i, Math.min(byteBuffer.remaining(), destination.remaining()));
        if (iMin == byteBuffer.remaining()) {
            destination.put(byteBuffer);
        } else {
            int iLimit = byteBuffer.limit();
            byteBuffer.limit(byteBuffer.position() + iMin);
            destination.put(byteBuffer);
            byteBuffer.limit(iLimit);
        }
        return iMin;
    }

    public static final byte[] moveToByteArray(ByteBuffer byteBuffer) {
        Intrinsics.checkNotNullParameter(byteBuffer, "<this>");
        byte[] bArr = new byte[byteBuffer.remaining()];
        byteBuffer.get(bArr);
        return bArr;
    }

    public static /* synthetic */ ByteBuffer copy$default(ByteBuffer byteBuffer, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = byteBuffer.remaining();
        }
        return copy(byteBuffer, i);
    }

    public static final ByteBuffer copy(ByteBuffer byteBuffer, int i) {
        Intrinsics.checkNotNullParameter(byteBuffer, "<this>");
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(i);
        ByteBuffer byteBufferSlice = byteBuffer.slice();
        Intrinsics.checkNotNullExpressionValue(byteBufferSlice, "slice(...)");
        Intrinsics.checkNotNull(byteBufferAllocate);
        moveTo$default(byteBufferSlice, byteBufferAllocate, 0, 2, null);
        byteBufferAllocate.clear();
        Intrinsics.checkNotNullExpressionValue(byteBufferAllocate, "apply(...)");
        return byteBufferAllocate;
    }
}
