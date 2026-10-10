package kotlinx.coroutines;

import kotlin.Result;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.CoroutineStackFrame;
import kotlinx.coroutines.internal.StackTraceRecoveryKt;

/* JADX INFO: compiled from: CompletionState.kt */
/* JADX INFO: loaded from: classes3.dex */
public final class CompletionStateKt {
    public static final <T> Object toState(Object obj) {
        Throwable thM8150exceptionOrNullimpl = Result.m8150exceptionOrNullimpl(obj);
        return thM8150exceptionOrNullimpl == null ? obj : new CompletedExceptionally(thM8150exceptionOrNullimpl, false, 2, null);
    }

    public static final <T> Object toState(Object obj, CancellableContinuation<?> cancellableContinuation) {
        Throwable thM8150exceptionOrNullimpl = Result.m8150exceptionOrNullimpl(obj);
        if (thM8150exceptionOrNullimpl != null) {
            if (DebugKt.getRECOVER_STACK_TRACES() && (cancellableContinuation instanceof CoroutineStackFrame)) {
                thM8150exceptionOrNullimpl = StackTraceRecoveryKt.recoverFromStackFrame(thM8150exceptionOrNullimpl, (CoroutineStackFrame) cancellableContinuation);
            }
            obj = new CompletedExceptionally(thM8150exceptionOrNullimpl, false, 2, null);
        }
        return obj;
    }

    public static final <T> Object recoverResult(Object obj, Continuation<? super T> continuation) {
        if (obj instanceof CompletedExceptionally) {
            Result.Companion companion = Result.Companion;
            Throwable thRecoverFromStackFrame = ((CompletedExceptionally) obj).cause;
            if (DebugKt.getRECOVER_STACK_TRACES() && (continuation instanceof CoroutineStackFrame)) {
                thRecoverFromStackFrame = StackTraceRecoveryKt.recoverFromStackFrame(thRecoverFromStackFrame, (CoroutineStackFrame) continuation);
            }
            return Result.m8149constructorimpl(ResultKt.createFailure(thRecoverFromStackFrame));
        }
        return Result.m8149constructorimpl(obj);
    }
}
