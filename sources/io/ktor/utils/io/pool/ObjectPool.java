package io.ktor.utils.io.pool;

/* JADX INFO: compiled from: Pool.kt */
/* JADX INFO: loaded from: classes2.dex */
public interface ObjectPool<T> extends AutoCloseable {
    T borrow();

    void dispose();

    void recycle(T t);

    @Override // java.lang.AutoCloseable
    default void close() {
        dispose();
    }
}
