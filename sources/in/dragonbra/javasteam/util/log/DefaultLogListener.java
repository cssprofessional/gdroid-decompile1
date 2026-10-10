package in.dragonbra.javasteam.util.log;

import java.text.SimpleDateFormat;
import java.util.Date;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt___StringsKt;

/* JADX INFO: compiled from: DefaultLogListener.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class DefaultLogListener implements LogListener {
    public static final Companion Companion = new Companion(null);
    private static final SimpleDateFormat FORMAT = new SimpleDateFormat("HH:mm:ss.SSS");

    /* JADX INFO: compiled from: DefaultLogListener.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    @Override // in.dragonbra.javasteam.util.log.LogListener
    public void onLog(Class<?> clazz, String str, Throwable th) {
        Intrinsics.checkNotNullParameter(clazz, "clazz");
        String name = Thread.currentThread().getName();
        Intrinsics.checkNotNullExpressionValue(name, "getName(...)");
        String strTake = StringsKt___StringsKt.take(name, 10);
        if (str == null) {
            System.out.printf("%s [%10s] %s%n", FORMAT.format(new Date()), strTake, clazz.getName());
        } else {
            System.out.printf("%s [%10s] %s - %s%n", FORMAT.format(new Date()), strTake, clazz.getName(), str);
        }
        if (th != null) {
            th.printStackTrace();
        }
    }

    @Override // in.dragonbra.javasteam.util.log.LogListener
    public void onError(Class<?> clazz, String str, Throwable th) {
        Intrinsics.checkNotNullParameter(clazz, "clazz");
        String name = Thread.currentThread().getName();
        Intrinsics.checkNotNullExpressionValue(name, "getName(...)");
        String strTake = StringsKt___StringsKt.take(name, 10);
        if (str == null) {
            System.err.printf("%s [%10s] %s%n", FORMAT.format(new Date()), strTake, clazz.getName());
        } else {
            System.err.printf("%s [%10s] %s - %s%n", FORMAT.format(new Date()), strTake, clazz.getName(), str);
        }
        if (th != null) {
            th.printStackTrace();
        }
    }
}
