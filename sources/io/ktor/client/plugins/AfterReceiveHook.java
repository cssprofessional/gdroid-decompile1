package io.ktor.client.plugins;

import io.ktor.client.HttpClient;
import io.ktor.client.plugins.api.ClientHook;
import io.ktor.client.statement.HttpReceivePipeline;
import io.ktor.client.statement.HttpResponse;
import io.ktor.util.pipeline.PipelineContext;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SpillingKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: BodyProgress.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class AfterReceiveHook implements ClientHook<Function2<? super HttpResponse, ? super Continuation<? super HttpResponse>, ? extends Object>> {
    public static final AfterReceiveHook INSTANCE = new AfterReceiveHook();

    /* JADX INFO: renamed from: io.ktor.client.plugins.AfterReceiveHook$install$1, reason: invalid class name */
    /* JADX INFO: compiled from: BodyProgress.kt */
    @DebugMetadata(c = "io.ktor.client.plugins.AfterReceiveHook$install$1", f = "BodyProgress.kt", l = {50, 51}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass1 extends SuspendLambda implements Function3<PipelineContext<HttpResponse, Unit>, HttpResponse, Continuation<? super Unit>, Object> {
        public final /* synthetic */ Function2<HttpResponse, Continuation<? super HttpResponse>, Object> $handler;
        public /* synthetic */ Object L$0;
        public /* synthetic */ Object L$1;
        public Object L$2;
        public int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public AnonymousClass1(Function2<? super HttpResponse, ? super Continuation<? super HttpResponse>, ? extends Object> function2, Continuation<? super AnonymousClass1> continuation) {
            super(3, continuation);
            this.$handler = function2;
        }

        @Override // kotlin.jvm.functions.Function3
        public final Object invoke(PipelineContext<HttpResponse, Unit> pipelineContext, HttpResponse httpResponse, Continuation<? super Unit> continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$handler, continuation);
            anonymousClass1.L$0 = pipelineContext;
            anonymousClass1.L$1 = httpResponse;
            return anonymousClass1.invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            PipelineContext pipelineContext = (PipelineContext) this.L$0;
            HttpResponse httpResponse = (HttpResponse) this.L$1;
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                Function2<HttpResponse, Continuation<? super HttpResponse>, Object> function2 = this.$handler;
                this.L$0 = pipelineContext;
                this.L$1 = SpillingKt.nullOutSpilledVariable(httpResponse);
                this.label = 1;
                obj = function2.invoke(httpResponse, this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    if (i != 2) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.throwOnFailure(obj);
                    return Unit.INSTANCE;
                }
                ResultKt.throwOnFailure(obj);
            }
            HttpResponse httpResponse2 = (HttpResponse) obj;
            if (httpResponse2 != null) {
                this.L$0 = SpillingKt.nullOutSpilledVariable(pipelineContext);
                this.L$1 = SpillingKt.nullOutSpilledVariable(httpResponse);
                this.L$2 = SpillingKt.nullOutSpilledVariable(httpResponse2);
                this.label = 2;
                if (pipelineContext.proceedWith(httpResponse2, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            }
            return Unit.INSTANCE;
        }
    }

    @Override // io.ktor.client.plugins.api.ClientHook
    public void install(HttpClient client, Function2<? super HttpResponse, ? super Continuation<? super HttpResponse>, ? extends Object> handler) {
        Intrinsics.checkNotNullParameter(client, "client");
        Intrinsics.checkNotNullParameter(handler, "handler");
        client.getReceivePipeline().intercept(HttpReceivePipeline.Phases.getAfter(), new AnonymousClass1(handler, null));
    }
}
