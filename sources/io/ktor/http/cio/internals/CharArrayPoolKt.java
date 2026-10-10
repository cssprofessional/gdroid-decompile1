package io.ktor.http.cio.internals;

import io.ktor.utils.io.pool.DefaultPool;
import io.ktor.utils.io.pool.NoPoolImpl;
import io.ktor.utils.io.pool.ObjectPool;

/* JADX INFO: compiled from: CharArrayPool.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class CharArrayPoolKt {
    public static final ObjectPool<char[]> CharArrayPool;

    static {
        ObjectPool<char[]> objectPool;
        if (CharArrayPoolJvmKt.isPoolingDisabled()) {
            objectPool = new NoPoolImpl<char[]>() { // from class: io.ktor.http.cio.internals.CharArrayPoolKt$CharArrayPool$1
                @Override // io.ktor.utils.io.pool.ObjectPool
                public char[] borrow() {
                    return new char[2048];
                }
            };
        } else {
            objectPool = new DefaultPool<char[]>() { // from class: io.ktor.http.cio.internals.CharArrayPoolKt$CharArrayPool$2
                @Override // io.ktor.utils.io.pool.DefaultPool
                public char[] produceInstance() {
                    return new char[2048];
                }
            };
        }
        CharArrayPool = objectPool;
    }

    public static final ObjectPool<char[]> getCharArrayPool() {
        return CharArrayPool;
    }
}
