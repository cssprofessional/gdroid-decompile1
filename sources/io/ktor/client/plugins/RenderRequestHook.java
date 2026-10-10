package io.ktor.client.plugins;

import io.ktor.client.HttpClient;
import io.ktor.client.plugins.api.ClientHook;
import io.ktor.client.request.HttpRequestBuilder;
import io.ktor.client.request.HttpRequestPipeline;
import io.ktor.http.content.OutgoingContent;
import io.ktor.util.pipeline.PipelineContext;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: HttpPlainText.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class RenderRequestHook implements ClientHook<Function3<? super HttpRequestBuilder, ? super Object, ? super Continuation<? super OutgoingContent>, ? extends Object>> {
    public static final RenderRequestHook INSTANCE = new RenderRequestHook();

    @Override // io.ktor.client.plugins.api.ClientHook
    public /* bridge */ /* synthetic */ void install(HttpClient httpClient, Function3<? super HttpRequestBuilder, ? super Object, ? super Continuation<? super OutgoingContent>, ? extends Object> function3) {
        install2(httpClient, (Function3<? super HttpRequestBuilder, Object, ? super Continuation<? super OutgoingContent>, ? extends Object>) function3);
    }

    /* JADX INFO: renamed from: io.ktor.client.plugins.RenderRequestHook$install$1, reason: invalid class name */
    /* JADX INFO: compiled from: HttpPlainText.kt */
    @DebugMetadata(c = "io.ktor.client.plugins.RenderRequestHook$install$1", f = "HttpPlainText.kt", l = {155, 156}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass1 extends SuspendLambda implements Function3<PipelineContext<Object, HttpRequestBuilder>, Object, Continuation<? super Unit>, Object> {
        public final /* synthetic */ Function3<HttpRequestBuilder, Object, Continuation<? super OutgoingContent>, Object> $handler;
        public /* synthetic */ Object L$0;
        public /* synthetic */ Object L$1;
        public Object L$2;
        public int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public AnonymousClass1(Function3<? super HttpRequestBuilder, Object, ? super Continuation<? super OutgoingContent>, ? extends Object> function3, Continuation<? super AnonymousClass1> continuation) {
            super(3, continuation);
            this.$handler = function3;
        }

        @Override // kotlin.jvm.functions.Function3
        public final Object invoke(PipelineContext<Object, HttpRequestBuilder> pipelineContext, Object obj, Continuation<? super Unit> continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$handler, continuation);
            anonymousClass1.L$0 = pipelineContext;
            anonymousClass1.L$1 = obj;
            return anonymousClass1.invokeSuspend(Unit.INSTANCE);
        }

        /*  JADX ERROR: JadxRuntimeException in pass: ModVisitor
            jadx.core.utils.exceptions.JadxRuntimeException: Can't change immutable type java.lang.Object to io.ktor.client.plugins.RenderRequestHook$install$1 for r7v6 'this'  java.lang.Object
            	at jadx.core.dex.instructions.args.SSAVar.setType(SSAVar.java:114)
            	at jadx.core.dex.instructions.args.RegisterArg.setType(RegisterArg.java:52)
            	at jadx.core.dex.visitors.ModVisitor.removeCheckCast(ModVisitor.java:417)
            	at jadx.core.dex.visitors.ModVisitor.replaceStep(ModVisitor.java:152)
            	at jadx.core.dex.visitors.ModVisitor.visit(ModVisitor.java:96)
            */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final java.lang.Object invokeSuspend(java.lang.Object r8) {
            /*
                r7 = this;
                java.lang.Object r0 = r7.L$0
                io.ktor.util.pipeline.PipelineContext r0 = (io.ktor.util.pipeline.PipelineContext) r0
                java.lang.Object r1 = r7.L$1
                java.lang.Object r2 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
                int r3 = r7.label
                r4 = 2
                r5 = 1
                if (r3 == 0) goto L28
                if (r3 == r5) goto L24
                if (r3 != r4) goto L1c
                java.lang.Object r7 = r7.L$2
                io.ktor.http.content.OutgoingContent r7 = (io.ktor.http.content.OutgoingContent) r7
                kotlin.ResultKt.throwOnFailure(r8)
                goto L61
            L1c:
                java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
                java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
                r7.<init>(r8)
                throw r7
            L24:
                kotlin.ResultKt.throwOnFailure(r8)
                goto L42
            L28:
                kotlin.ResultKt.throwOnFailure(r8)
                kotlin.jvm.functions.Function3<io.ktor.client.request.HttpRequestBuilder, java.lang.Object, kotlin.coroutines.Continuation<? super io.ktor.http.content.OutgoingContent>, java.lang.Object> r8 = r7.$handler
                java.lang.Object r3 = r0.getContext()
                r7.L$0 = r0
                java.lang.Object r6 = kotlin.coroutines.jvm.internal.SpillingKt.nullOutSpilledVariable(r1)
                r7.L$1 = r6
                r7.label = r5
                java.lang.Object r8 = r8.invoke(r3, r1, r7)
                if (r8 != r2) goto L42
                return r2
            L42:
                io.ktor.http.content.OutgoingContent r8 = (io.ktor.http.content.OutgoingContent) r8
                if (r8 == 0) goto L61
                java.lang.Object r3 = kotlin.coroutines.jvm.internal.SpillingKt.nullOutSpilledVariable(r0)
                r7.L$0 = r3
                java.lang.Object r1 = kotlin.coroutines.jvm.internal.SpillingKt.nullOutSpilledVariable(r1)
                r7.L$1 = r1
                java.lang.Object r1 = kotlin.coroutines.jvm.internal.SpillingKt.nullOutSpilledVariable(r8)
                r7.L$2 = r1
                r7.label = r4
                java.lang.Object r7 = r0.proceedWith(r8, r7)
                if (r7 != r2) goto L61
                return r2
            L61:
                kotlin.Unit r7 = kotlin.Unit.INSTANCE
                return r7
            */
            throw new UnsupportedOperationException("Method not decompiled: io.ktor.client.plugins.RenderRequestHook.AnonymousClass1.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    /* JADX INFO: renamed from: install, reason: avoid collision after fix types in other method */
    public void install2(HttpClient client, Function3<? super HttpRequestBuilder, Object, ? super Continuation<? super OutgoingContent>, ? extends Object> handler) {
        Intrinsics.checkNotNullParameter(client, "client");
        Intrinsics.checkNotNullParameter(handler, "handler");
        client.getRequestPipeline().intercept(HttpRequestPipeline.Phases.getRender(), new AnonymousClass1(handler, null));
    }
}
