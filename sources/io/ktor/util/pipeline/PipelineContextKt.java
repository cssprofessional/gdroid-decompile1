package io.ktor.util.pipeline;

import java.util.List;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: PipelineContext.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class PipelineContextKt {
    public static final <TSubject, TContext> PipelineContext<TSubject, TContext> pipelineContextFor(TContext context, List<? extends Function3<? super PipelineContext<TSubject, TContext>, ? super TSubject, ? super Continuation<? super Unit>, ? extends Object>> interceptors, TSubject subject, CoroutineContext coroutineContext, boolean z) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(interceptors, "interceptors");
        Intrinsics.checkNotNullParameter(subject, "subject");
        Intrinsics.checkNotNullParameter(coroutineContext, "coroutineContext");
        if (PipelineContext_jvmKt.getDISABLE_SFG() || z) {
            return new DebugPipelineContext(context, interceptors, subject, coroutineContext);
        }
        return new SuspendFunctionGun(subject, context, interceptors);
    }
}
