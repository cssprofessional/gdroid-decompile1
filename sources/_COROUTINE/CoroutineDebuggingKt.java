package _COROUTINE;

/* JADX INFO: compiled from: CoroutineDebugging.kt */
/* JADX INFO: loaded from: classes.dex */
public final class CoroutineDebuggingKt {
    public static final String ARTIFICIAL_FRAME_PACKAGE_NAME = "_COROUTINE";

    public static final String getARTIFICIAL_FRAME_PACKAGE_NAME() {
        return ARTIFICIAL_FRAME_PACKAGE_NAME;
    }

    public static final StackTraceElement artificialFrame(Throwable th, String str) {
        StackTraceElement stackTraceElement = th.getStackTrace()[0];
        return new StackTraceElement(ARTIFICIAL_FRAME_PACKAGE_NAME + '.' + str, "_", stackTraceElement.getFileName(), stackTraceElement.getLineNumber());
    }
}
