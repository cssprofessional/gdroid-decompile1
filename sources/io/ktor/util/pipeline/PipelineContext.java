package io.ktor.util.pipeline;

import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: PipelineContext.kt */
/* JADX INFO: loaded from: classes2.dex */
public abstract class PipelineContext<TSubject, TContext> implements CoroutineScope {
    public final TContext context;

    public abstract Object execute$ktor_utils(TSubject tsubject, Continuation<? super TSubject> continuation);

    public abstract TSubject getSubject();

    public abstract Object proceed(Continuation<? super TSubject> continuation);

    public abstract Object proceedWith(TSubject tsubject, Continuation<? super TSubject> continuation);

    public PipelineContext(TContext context) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.context = context;
    }

    public final TContext getContext() {
        return this.context;
    }
}
