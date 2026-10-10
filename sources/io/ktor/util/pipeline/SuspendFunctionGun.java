package io.ktor.util.pipeline;

import java.util.List;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: SuspendFunctionGun.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class SuspendFunctionGun<TSubject, TContext> extends PipelineContext<TSubject, TContext> {
    public final List<Function3<PipelineContext<TSubject, TContext>, TSubject, Continuation<? super Unit>, Object>> blocks;
    public final Continuation<Unit> continuation;
    public int index;
    public int lastSuspensionIndex;
    public TSubject subject;
    public final Continuation<TSubject>[] suspensions;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public SuspendFunctionGun(TSubject initial, TContext context, List<? extends Function3<? super PipelineContext<TSubject, TContext>, ? super TSubject, ? super Continuation<? super Unit>, ? extends Object>> blocks) {
        super(context);
        Intrinsics.checkNotNullParameter(initial, "initial");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(blocks, "blocks");
        this.blocks = blocks;
        this.continuation = new SuspendFunctionGun$continuation$1(this);
        this.subject = initial;
        this.suspensions = new Continuation[blocks.size()];
        this.lastSuspensionIndex = -1;
    }

    @Override // kotlinx.coroutines.CoroutineScope
    public CoroutineContext getCoroutineContext() {
        return this.continuation.getContext();
    }

    @Override // io.ktor.util.pipeline.PipelineContext
    public TSubject getSubject() {
        return this.subject;
    }

    public void setSubject(TSubject tsubject) {
        Intrinsics.checkNotNullParameter(tsubject, "<set-?>");
        this.subject = tsubject;
    }

    @Override // io.ktor.util.pipeline.PipelineContext
    public Object proceed(Continuation<? super TSubject> continuation) {
        Object coroutine_suspended;
        if (this.index == this.blocks.size()) {
            coroutine_suspended = getSubject();
        } else {
            addContinuation$ktor_utils(IntrinsicsKt__IntrinsicsJvmKt.intercepted(continuation));
            if (loop(true)) {
                discardLastRootContinuation();
                coroutine_suspended = getSubject();
            } else {
                coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            }
        }
        if (coroutine_suspended == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        return coroutine_suspended;
    }

    @Override // io.ktor.util.pipeline.PipelineContext
    public Object proceedWith(TSubject tsubject, Continuation<? super TSubject> continuation) {
        setSubject(tsubject);
        return proceed(continuation);
    }

    @Override // io.ktor.util.pipeline.PipelineContext
    public Object execute$ktor_utils(TSubject tsubject, Continuation<? super TSubject> continuation) {
        this.index = 0;
        if (this.blocks.size() == 0) {
            return tsubject;
        }
        setSubject(tsubject);
        if (this.lastSuspensionIndex >= 0) {
            throw new IllegalStateException("Already started");
        }
        return proceed(continuation);
    }

    public final boolean loop(boolean z) {
        int i;
        do {
            i = this.index;
            if (i == this.blocks.size()) {
                if (z) {
                    return true;
                }
                Result.Companion companion = Result.Companion;
                resumeRootWith(Result.m8149constructorimpl(getSubject()));
                return false;
            }
            this.index = i + 1;
            try {
            } catch (Throwable th) {
                Result.Companion companion2 = Result.Companion;
                resumeRootWith(Result.m8149constructorimpl(ResultKt.createFailure(th)));
                return false;
            }
        } while (PipelineJvmKt.pipelineStartCoroutineUninterceptedOrReturn(this.blocks.get(i), this, getSubject(), this.continuation) != IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED());
        return false;
    }

    public final void resumeRootWith(Object obj) {
        int i = this.lastSuspensionIndex;
        if (i < 0) {
            throw new IllegalStateException("No more continuations to resume");
        }
        Continuation<TSubject> continuation = this.suspensions[i];
        Intrinsics.checkNotNull(continuation);
        Continuation<TSubject>[] continuationArr = this.suspensions;
        int i2 = this.lastSuspensionIndex;
        this.lastSuspensionIndex = i2 - 1;
        continuationArr[i2] = null;
        if (!Result.m8151isFailureimpl(obj)) {
            continuation.resumeWith(obj);
            return;
        }
        Throwable thM8150exceptionOrNullimpl = Result.m8150exceptionOrNullimpl(obj);
        Intrinsics.checkNotNull(thM8150exceptionOrNullimpl);
        continuation.resumeWith(Result.m8149constructorimpl(ResultKt.createFailure(StackTraceRecoverKt.recoverStackTraceBridge(thM8150exceptionOrNullimpl, continuation))));
    }

    public final void discardLastRootContinuation() {
        int i = this.lastSuspensionIndex;
        if (i < 0) {
            throw new IllegalStateException("No more continuations to resume");
        }
        Continuation<TSubject>[] continuationArr = this.suspensions;
        this.lastSuspensionIndex = i - 1;
        continuationArr[i] = null;
    }

    public final void addContinuation$ktor_utils(Continuation<? super TSubject> continuation) {
        Intrinsics.checkNotNullParameter(continuation, "continuation");
        Continuation<TSubject>[] continuationArr = this.suspensions;
        int i = this.lastSuspensionIndex + 1;
        this.lastSuspensionIndex = i;
        continuationArr[i] = continuation;
    }
}
