package io.ktor.client.plugins;

import io.ktor.client.plugins.api.ClientPluginBuilder;
import io.ktor.client.request.HttpRequestBuilder;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SpillingKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CompletableJob;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.SupervisorKt;

/* JADX INFO: compiled from: HttpRequestLifecycle.kt */
/* JADX INFO: loaded from: classes2.dex */
@DebugMetadata(c = "io.ktor.client.plugins.HttpRequestLifecycleKt$HttpRequestLifecycle$1$1", f = "HttpRequestLifecycle.kt", l = {29}, m = "invokeSuspend", v = 1)
public final class HttpRequestLifecycleKt$HttpRequestLifecycle$1$1 extends SuspendLambda implements Function3<HttpRequestBuilder, Function1<? super Continuation<? super Unit>, ? extends Object>, Continuation<? super Unit>, Object> {
    public final /* synthetic */ ClientPluginBuilder<Unit> $this_createClientPlugin;
    public /* synthetic */ Object L$0;
    public /* synthetic */ Object L$1;
    public Object L$2;
    public int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HttpRequestLifecycleKt$HttpRequestLifecycle$1$1(ClientPluginBuilder<Unit> clientPluginBuilder, Continuation<? super HttpRequestLifecycleKt$HttpRequestLifecycle$1$1> continuation) {
        super(3, continuation);
        this.$this_createClientPlugin = clientPluginBuilder;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(HttpRequestBuilder httpRequestBuilder, Function1<? super Continuation<? super Unit>, ? extends Object> function1, Continuation<? super Unit> continuation) {
        HttpRequestLifecycleKt$HttpRequestLifecycle$1$1 httpRequestLifecycleKt$HttpRequestLifecycle$1$1 = new HttpRequestLifecycleKt$HttpRequestLifecycle$1$1(this.$this_createClientPlugin, continuation);
        httpRequestLifecycleKt$HttpRequestLifecycle$1$1.L$0 = httpRequestBuilder;
        httpRequestLifecycleKt$HttpRequestLifecycle$1$1.L$1 = function1;
        return httpRequestLifecycleKt$HttpRequestLifecycle$1$1.invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Throwable th;
        CompletableJob completableJob;
        HttpRequestBuilder httpRequestBuilder = (HttpRequestBuilder) this.L$0;
        Function1 function1 = (Function1) this.L$1;
        Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i != 0) {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            completableJob = (CompletableJob) this.L$2;
            try {
                ResultKt.throwOnFailure(obj);
                completableJob.complete();
                return Unit.INSTANCE;
            } catch (Throwable th2) {
                th = th2;
                try {
                    completableJob.completeExceptionally(th);
                    throw th;
                } catch (Throwable th3) {
                    completableJob.complete();
                    throw th3;
                }
            }
        }
        ResultKt.throwOnFailure(obj);
        CompletableJob completableJobSupervisorJob = SupervisorKt.SupervisorJob(httpRequestBuilder.getExecutionContext());
        CoroutineContext.Element element = this.$this_createClientPlugin.getClient().getCoroutineContext().get(Job.Key);
        Intrinsics.checkNotNull(element);
        HttpRequestLifecycleKt.attachToClientEngineJob(completableJobSupervisorJob, (Job) element);
        try {
            httpRequestBuilder.setExecutionContext$ktor_client_core(completableJobSupervisorJob);
            this.L$0 = SpillingKt.nullOutSpilledVariable(httpRequestBuilder);
            this.L$1 = SpillingKt.nullOutSpilledVariable(function1);
            this.L$2 = completableJobSupervisorJob;
            this.label = 1;
            if (function1.invoke(this) == coroutine_suspended) {
                return coroutine_suspended;
            }
            completableJob = completableJobSupervisorJob;
            completableJob.complete();
            return Unit.INSTANCE;
        } catch (Throwable th4) {
            th = th4;
            completableJob = completableJobSupervisorJob;
            completableJob.completeExceptionally(th);
            throw th;
        }
    }
}
