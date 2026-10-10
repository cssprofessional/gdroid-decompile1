package io.ktor.util.internal;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ExceptionUtilsJvm.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class ExceptionUtilsJvmKt {
    public static final void initCauseBridge(Throwable th, Throwable cause) {
        Intrinsics.checkNotNullParameter(th, "<this>");
        Intrinsics.checkNotNullParameter(cause, "cause");
        th.initCause(cause);
    }
}
