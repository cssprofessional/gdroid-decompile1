package io.ktor.network.util;

import io.ktor.utils.io.pool.DirectByteBufferPool;
import io.ktor.utils.io.pool.ObjectPool;
import java.nio.ByteBuffer;

/* JADX INFO: compiled from: Pools.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class PoolsKt {
    public static final ObjectPool<ByteBuffer> DefaultByteBufferPool = new DirectByteBufferPool(4096, 4096);
    public static final ObjectPool<ByteBuffer> DefaultDatagramByteBufferPool = new DirectByteBufferPool(2048, 65535);

    public static final ObjectPool<ByteBuffer> getDefaultByteBufferPool() {
        return DefaultByteBufferPool;
    }
}
