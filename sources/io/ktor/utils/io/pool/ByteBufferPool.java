package io.ktor.utils.io.pool;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ByteBufferPools.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class ByteBufferPool extends DefaultPool<ByteBuffer> {
    public final int bufferSize;

    public ByteBufferPool(int i, int i2) {
        super(i);
        this.bufferSize = i2;
    }

    public /* synthetic */ ByteBufferPool(int i, int i2, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this((i3 & 1) != 0 ? 2000 : i, (i3 & 2) != 0 ? 4096 : i2);
    }

    @Override // io.ktor.utils.io.pool.DefaultPool
    public ByteBuffer produceInstance() {
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(this.bufferSize);
        Intrinsics.checkNotNull(byteBufferAllocate);
        return byteBufferAllocate;
    }

    @Override // io.ktor.utils.io.pool.DefaultPool
    public ByteBuffer clearInstance(ByteBuffer instance) {
        Intrinsics.checkNotNullParameter(instance, "instance");
        instance.clear();
        instance.order(ByteOrder.BIG_ENDIAN);
        return instance;
    }

    @Override // io.ktor.utils.io.pool.DefaultPool
    public void validateInstance(ByteBuffer instance) {
        Intrinsics.checkNotNullParameter(instance, "instance");
        if (instance.capacity() != this.bufferSize) {
            throw new IllegalStateException("Check failed.");
        }
        if (instance.isDirect()) {
            throw new IllegalStateException("Check failed.");
        }
    }
}
