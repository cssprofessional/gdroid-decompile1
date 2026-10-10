package io.ktor.utils.io.pool;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: Pool.kt */
/* JADX INFO: loaded from: classes2.dex */
public abstract class NoPoolImpl<T> implements ObjectPool<T> {
    @Override // io.ktor.utils.io.pool.ObjectPool
    public void dispose() {
    }

    @Override // io.ktor.utils.io.pool.ObjectPool
    public void recycle(T instance) {
        Intrinsics.checkNotNullParameter(instance, "instance");
    }

    @Override // io.ktor.utils.io.pool.ObjectPool, java.lang.AutoCloseable
    public /* bridge */ void close() {
        super.close();
    }
}
