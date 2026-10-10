package kotlinx.coroutines.internal;

/* JADX INFO: compiled from: ThreadLocal.kt */
/* JADX INFO: loaded from: classes3.dex */
public final class ThreadLocalKt {
    public static final <T> ThreadLocal<T> commonThreadLocal(Symbol symbol) {
        return new ThreadLocal<>();
    }
}
