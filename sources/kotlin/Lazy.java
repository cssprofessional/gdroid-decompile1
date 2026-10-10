package kotlin;

/* JADX INFO: compiled from: Lazy.kt */
/* JADX INFO: loaded from: classes2.dex */
public interface Lazy<T> {
    T getValue();

    boolean isInitialized();
}
