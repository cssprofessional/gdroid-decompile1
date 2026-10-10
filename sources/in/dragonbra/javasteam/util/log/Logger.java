package in.dragonbra.javasteam.util.log;

import java.util.Iterator;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: Logger.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class Logger {
    private final Class<?> clazz;

    public final void debug(String str) {
        debug$default(this, str, null, 2, null);
    }

    public final void error() {
        error$default(this, null, null, 3, null);
    }

    public final void error(String str) {
        error$default(this, str, null, 2, null);
    }

    public Logger(Class<?> clazz) {
        Intrinsics.checkNotNullParameter(clazz, "clazz");
        this.clazz = clazz;
    }

    public final void debug(Throwable throwable) {
        Intrinsics.checkNotNullParameter(throwable, "throwable");
        debug(null, throwable);
    }

    public static /* synthetic */ void debug$default(Logger logger, String str, Throwable th, int i, Object obj) {
        if ((i & 2) != 0) {
            th = null;
        }
        logger.debug(str, th);
    }

    public final void debug(String str, Throwable th) {
        Iterator<T> it = LogManager.LOG_LISTENERS.iterator();
        while (it.hasNext()) {
            ((LogListener) it.next()).onLog(this.clazz, str, th);
        }
    }

    public final void error(Throwable throwable) {
        Intrinsics.checkNotNullParameter(throwable, "throwable");
        error(null, throwable);
    }

    public static /* synthetic */ void error$default(Logger logger, String str, Throwable th, int i, Object obj) {
        if ((i & 1) != 0) {
            str = null;
        }
        if ((i & 2) != 0) {
            th = null;
        }
        logger.error(str, th);
    }

    public final void error(String str, Throwable th) {
        Iterator<T> it = LogManager.LOG_LISTENERS.iterator();
        while (it.hasNext()) {
            ((LogListener) it.next()).onError(this.clazz, str, th);
        }
    }
}
