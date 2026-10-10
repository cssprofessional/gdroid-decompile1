package io.ktor.utils.io.pool;

/* JADX INFO: compiled from: ByteArrayPool.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class ByteArrayPoolKt {
    public static final ObjectPool<byte[]> ByteArrayPool = new DefaultPool<byte[]>() { // from class: io.ktor.utils.io.pool.ByteArrayPoolKt$ByteArrayPool$1
        @Override // io.ktor.utils.io.pool.DefaultPool
        public byte[] produceInstance() {
            return new byte[4096];
        }
    };

    public static final ObjectPool<byte[]> getByteArrayPool() {
        return ByteArrayPool;
    }
}
