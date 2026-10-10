package kotlin.io;

import java.io.Closeable;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import kotlin.ExceptionsKt__ExceptionsKt;

/* JADX INFO: compiled from: Closeable.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class CloseableKt {
    public static final void closeFinally(Closeable closeable, Throwable th) throws IllegalAccessException, IOException, InvocationTargetException {
        if (closeable != null) {
            if (th == null) {
                closeable.close();
                return;
            }
            try {
                closeable.close();
            } catch (Throwable th2) {
                ExceptionsKt__ExceptionsKt.addSuppressed(th, th2);
            }
        }
    }
}
