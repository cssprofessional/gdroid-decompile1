package kotlin.time;

import java.text.DecimalFormat;

/* JADX INFO: compiled from: DurationJvm.kt */
/* JADX INFO: loaded from: classes3.dex */
public final class DurationJvmKt {
    public static final boolean durationAssertionsEnabled = false;
    public static final ThreadLocal<DecimalFormat>[] precisionFormats;

    public static final boolean getDurationAssertionsEnabled() {
        return durationAssertionsEnabled;
    }

    static {
        ThreadLocal<DecimalFormat>[] threadLocalArr = new ThreadLocal[4];
        for (int i = 0; i < 4; i++) {
            threadLocalArr[i] = new ThreadLocal<>();
        }
        precisionFormats = threadLocalArr;
    }
}
