package io.ktor.util.pipeline;

import in.dragonbra.javasteam.protobufs.steamclient.Enums;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.jvm.internal.CoroutineStackFrame;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: SuspendFunctionGun.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class SuspendFunctionGun$continuation$1 implements Continuation<Unit>, CoroutineStackFrame {
    public int currentIndex = Enums.EProtoAppType.k_EAppTypeDepotOnly_VALUE;
    public final /* synthetic */ SuspendFunctionGun<TSubject, TContext> this$0;

    @Override // kotlin.coroutines.jvm.internal.CoroutineStackFrame
    public StackTraceElement getStackTraceElement() {
        return null;
    }

    public SuspendFunctionGun$continuation$1(SuspendFunctionGun<TSubject, TContext> suspendFunctionGun) {
        this.this$0 = suspendFunctionGun;
    }

    @Override // kotlin.coroutines.jvm.internal.CoroutineStackFrame
    public CoroutineStackFrame getCallerFrame() {
        Continuation<?> continuationPeekContinuation = peekContinuation();
        if (continuationPeekContinuation instanceof CoroutineStackFrame) {
            return (CoroutineStackFrame) continuationPeekContinuation;
        }
        return null;
    }

    public final Continuation<?> peekContinuation() {
        if (this.currentIndex == Integer.MIN_VALUE) {
            this.currentIndex = this.this$0.lastSuspensionIndex;
        }
        if (this.currentIndex >= 0) {
            try {
                Continuation<?>[] continuationArr = this.this$0.suspensions;
                int i = this.currentIndex;
                Continuation<?> continuation = continuationArr[i];
                if (continuation == null) {
                    return StackWalkingFailedFrame.INSTANCE;
                }
                this.currentIndex = i - 1;
                return continuation;
            } catch (Throwable unused) {
                return StackWalkingFailedFrame.INSTANCE;
            }
        }
        this.currentIndex = Enums.EProtoAppType.k_EAppTypeDepotOnly_VALUE;
        return null;
    }

    @Override // kotlin.coroutines.Continuation
    public CoroutineContext getContext() {
        Continuation continuation = this.this$0.suspensions[this.this$0.lastSuspensionIndex];
        if (continuation == this || continuation == null) {
            int i = this.this$0.lastSuspensionIndex - 1;
            while (i >= 0) {
                int i2 = i - 1;
                Continuation continuation2 = this.this$0.suspensions[i];
                if (continuation2 != this && continuation2 != null) {
                    return continuation2.getContext();
                }
                i = i2;
            }
            throw new IllegalStateException("Not started");
        }
        return continuation.getContext();
    }

    @Override // kotlin.coroutines.Continuation
    public void resumeWith(Object obj) {
        if (!Result.m8151isFailureimpl(obj)) {
            this.this$0.loop(false);
            return;
        }
        SuspendFunctionGun<TSubject, TContext> suspendFunctionGun = this.this$0;
        Throwable thM8150exceptionOrNullimpl = Result.m8150exceptionOrNullimpl(obj);
        Intrinsics.checkNotNull(thM8150exceptionOrNullimpl);
        suspendFunctionGun.resumeRootWith(Result.m8149constructorimpl(ResultKt.createFailure(thM8150exceptionOrNullimpl)));
    }
}
