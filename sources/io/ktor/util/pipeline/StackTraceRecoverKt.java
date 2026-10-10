package io.ktor.util.pipeline;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.CoroutineStackFrame;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.DebugKt;
import kotlinx.coroutines.internal.StackTraceRecoveryKt;

/* JADX INFO: compiled from: StackTraceRecover.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class StackTraceRecoverKt {
    public static final Throwable recoverStackTraceBridge(Throwable exception, Continuation<?> continuation) {
        Intrinsics.checkNotNullParameter(exception, "exception");
        Intrinsics.checkNotNullParameter(continuation, "continuation");
        try {
            return StackTraceRecoverJvmKt.withCause((DebugKt.getRECOVER_STACK_TRACES() && (continuation instanceof CoroutineStackFrame)) ? StackTraceRecoveryKt.recoverFromStackFrame(exception, (CoroutineStackFrame) continuation) : exception, exception.getCause());
        } catch (Throwable unused) {
            return exception;
        }
    }
}
