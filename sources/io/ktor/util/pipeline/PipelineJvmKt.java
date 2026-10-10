package io.ktor.util.pipeline;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.TypeIntrinsics;

/* JADX INFO: compiled from: PipelineJvm.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class PipelineJvmKt {
    public static final <TSubject, TContext> Object pipelineStartCoroutineUninterceptedOrReturn(Function3<? super PipelineContext<TSubject, TContext>, ? super TSubject, ? super Continuation<? super Unit>, ? extends Object> interceptor, PipelineContext<TSubject, TContext> context, TSubject subject, Continuation<? super Unit> continuation) {
        Intrinsics.checkNotNullParameter(interceptor, "interceptor");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(subject, "subject");
        Intrinsics.checkNotNullParameter(continuation, "continuation");
        return ((Function3) TypeIntrinsics.beforeCheckcastToFunctionOfArity(interceptor, 3)).invoke(context, subject, continuation);
    }
}
