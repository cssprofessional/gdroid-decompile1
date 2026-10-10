package io.ktor.util.logging;

import kotlin.jvm.internal.Intrinsics;
import org.slf4j.Logger;

/* JADX INFO: compiled from: LoggerJvm.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class LoggerJvmKt {
    public static final boolean isTraceEnabled(Logger logger) {
        Intrinsics.checkNotNullParameter(logger, "<this>");
        return logger.isTraceEnabled();
    }
}
