package io.ktor.util.cio;

import io.ktor.utils.io.pool.ByteBufferPool;
import io.ktor.utils.io.pool.ObjectPool;
import java.nio.ByteBuffer;

/* JADX INFO: compiled from: ByteBufferPool.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class ByteBufferPoolKt {
    public static final ObjectPool<ByteBuffer> KtorDefaultPool = new ByteBufferPool(2048, 4098);

    public static final ObjectPool<ByteBuffer> getKtorDefaultPool() {
        return KtorDefaultPool;
    }
}
