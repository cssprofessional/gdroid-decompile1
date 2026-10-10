package io.ktor.utils.io;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SpillingKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CompletableJob;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.JobKt;

/* JADX INFO: compiled from: ByteReadChannelOperations.kt */
/* JADX INFO: loaded from: classes2.dex */
@DebugMetadata(c = "io.ktor.utils.io.ByteReadChannelOperationsKt$reader$job$1", f = "ByteReadChannelOperations.kt", l = {333, 343, 343, 343}, m = "invokeSuspend", v = 1)
public final class ByteReadChannelOperationsKt$reader$job$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    public final /* synthetic */ Function2<ReaderScope, Continuation<? super Unit>, Object> $block;
    public final /* synthetic */ ByteChannel $channel;
    public /* synthetic */ Object L$0;
    public Object L$1;
    public Object L$2;
    public int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public ByteReadChannelOperationsKt$reader$job$1(Function2<? super ReaderScope, ? super Continuation<? super Unit>, ? extends Object> function2, ByteChannel byteChannel, Continuation<? super ByteReadChannelOperationsKt$reader$job$1> continuation) {
        super(2, continuation);
        this.$block = function2;
        this.$channel = byteChannel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        ByteReadChannelOperationsKt$reader$job$1 byteReadChannelOperationsKt$reader$job$1 = new ByteReadChannelOperationsKt$reader$job$1(this.$block, this.$channel, continuation);
        byteReadChannelOperationsKt$reader$job$1.L$0 = obj;
        return byteReadChannelOperationsKt$reader$job$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((ByteReadChannelOperationsKt$reader$job$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0, types: [int] */
    /* JADX WARN: Type inference failed for: r2v1, types: [java.lang.Object, kotlinx.coroutines.Job] */
    /* JADX WARN: Type inference failed for: r2v3, types: [java.lang.Object, kotlinx.coroutines.CompletableJob, kotlinx.coroutines.Job] */
    /* JADX WARN: Type inference failed for: r2v6 */
    /* JADX WARN: Type inference failed for: r2v7 */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        CoroutineScope coroutineScope = (CoroutineScope) this.L$0;
        Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        ?? r2 = this.label;
        try {
        } catch (Throwable th) {
            try {
                JobKt.cancel(r2, "Exception thrown while reading from channel", th);
                ByteWriteChannelOperationsKt.close(this.$channel, th);
                this.L$0 = SpillingKt.nullOutSpilledVariable(coroutineScope);
                this.L$1 = SpillingKt.nullOutSpilledVariable(r2);
                this.label = 3;
                if (r2.join(this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } catch (Throwable th2) {
                this.L$0 = SpillingKt.nullOutSpilledVariable(coroutineScope);
                this.L$1 = SpillingKt.nullOutSpilledVariable(r2);
                this.L$2 = th2;
                this.label = 4;
                if (r2.join(this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
                throw th2;
            }
        }
        if (r2 == 0) {
            ResultKt.throwOnFailure(obj);
            CompletableJob completableJobJob = JobKt.Job(JobKt.getJob(coroutineScope.getCoroutineContext()));
            Function2<ReaderScope, Continuation<? super Unit>, Object> function2 = this.$block;
            ReaderScope readerScope = new ReaderScope(this.$channel, coroutineScope.getCoroutineContext().plus(completableJobJob));
            this.L$0 = coroutineScope;
            this.L$1 = completableJobJob;
            this.label = 1;
            r2 = completableJobJob;
            if (function2.invoke(readerScope, this) == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (r2 != 1) {
                if (r2 == 2 || r2 == 3) {
                    ResultKt.throwOnFailure(obj);
                    return Unit.INSTANCE;
                }
                if (r2 != 4) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                Throwable th3 = (Throwable) this.L$2;
                ResultKt.throwOnFailure(obj);
                throw th3;
            }
            CompletableJob completableJob = (CompletableJob) this.L$1;
            ResultKt.throwOnFailure(obj);
            r2 = completableJob;
        }
        r2.complete();
        if (JobKt.getJob(coroutineScope.getCoroutineContext()).isCancelled()) {
            this.$channel.cancel(JobKt.getJob(coroutineScope.getCoroutineContext()).getCancellationException());
        }
        this.L$0 = SpillingKt.nullOutSpilledVariable(coroutineScope);
        this.L$1 = SpillingKt.nullOutSpilledVariable(r2);
        this.label = 2;
        if (r2.join(this) == coroutine_suspended) {
            return coroutine_suspended;
        }
        return Unit.INSTANCE;
    }
}
