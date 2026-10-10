package in.dragonbra.javasteam.util.log;

/* JADX INFO: compiled from: LogListener.kt */
/* JADX INFO: loaded from: classes2.dex */
public interface LogListener {
    void onError(Class<?> cls, String str, Throwable th);

    void onLog(Class<?> cls, String str, Throwable th);
}
