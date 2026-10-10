package io.ktor.client.utils;

import io.ktor.utils.io.pool.ByteBufferPool;

/* JADX INFO: compiled from: CIOJvm.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class CIOJvmKt {
    public static final ByteBufferPool HttpClientDefaultPool = new ByteBufferPool(0, 0, 3, null);

    public static final ByteBufferPool getHttpClientDefaultPool() {
        return HttpClientDefaultPool;
    }
}
