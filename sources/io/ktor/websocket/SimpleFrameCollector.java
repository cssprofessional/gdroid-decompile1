package io.ktor.websocket;

import io.ktor.util.NIOKt;
import java.nio.ByteBuffer;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: SimpleFrameCollector.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class SimpleFrameCollector {
    public ByteBuffer buffer;
    public final ByteBuffer maskBuffer = ByteBuffer.allocate(4);
    public int remaining;

    public final boolean getHasRemaining() {
        return this.remaining > 0;
    }

    /* JADX WARN: Removed duplicated region for block: B:8:0x0018  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void start(int r2, java.nio.ByteBuffer r3) {
        /*
            r1 = this;
            java.lang.String r0 = "bb"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r3, r0)
            int r0 = r1.remaining
            if (r0 != 0) goto L2a
            r1.remaining = r2
            java.nio.ByteBuffer r0 = r1.buffer
            if (r0 == 0) goto L18
            kotlin.jvm.internal.Intrinsics.checkNotNull(r0)
            int r0 = r0.capacity()
            if (r0 >= r2) goto L1e
        L18:
            java.nio.ByteBuffer r2 = java.nio.ByteBuffer.allocate(r2)
            r1.buffer = r2
        L1e:
            java.nio.ByteBuffer r2 = r1.buffer
            kotlin.jvm.internal.Intrinsics.checkNotNull(r2)
            r2.clear()
            r1.handle(r3)
            return
        L2a:
            java.lang.IllegalStateException r1 = new java.lang.IllegalStateException
            java.lang.String r2 = "remaining should be 0"
            r1.<init>(r2)
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.websocket.SimpleFrameCollector.start(int, java.nio.ByteBuffer):void");
    }

    public final void handle(ByteBuffer bb) {
        Intrinsics.checkNotNullParameter(bb, "bb");
        int i = this.remaining;
        ByteBuffer byteBuffer = this.buffer;
        Intrinsics.checkNotNull(byteBuffer);
        this.remaining = i - NIOKt.moveTo(bb, byteBuffer, this.remaining);
    }

    public final ByteBuffer take(Integer num) {
        ByteBuffer byteBuffer = this.buffer;
        Intrinsics.checkNotNull(byteBuffer);
        byteBuffer.flip();
        ByteBuffer byteBufferSlice = byteBuffer.slice();
        if (num != null) {
            this.maskBuffer.clear();
            this.maskBuffer.asIntBuffer().put(num.intValue());
            this.maskBuffer.clear();
            Intrinsics.checkNotNull(byteBufferSlice);
            ByteBuffer maskBuffer = this.maskBuffer;
            Intrinsics.checkNotNullExpressionValue(maskBuffer, "maskBuffer");
            UtilsKt.xor(byteBufferSlice, maskBuffer);
        }
        this.buffer = null;
        ByteBuffer byteBufferAsReadOnlyBuffer = byteBufferSlice.asReadOnlyBuffer();
        Intrinsics.checkNotNullExpressionValue(byteBufferAsReadOnlyBuffer, "run(...)");
        return byteBufferAsReadOnlyBuffer;
    }
}
