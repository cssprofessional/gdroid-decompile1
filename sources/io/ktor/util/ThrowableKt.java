package io.ktor.util;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: Throwable.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class ThrowableKt {
    public static final Throwable getRootCause(Throwable th) {
        Intrinsics.checkNotNullParameter(th, "<this>");
        while (true) {
            if ((th != null ? th.getCause() : null) == null) {
                return th;
            }
            th = th.getCause();
        }
    }
}
