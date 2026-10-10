package io.ktor.client.plugins.websocket;

import io.ktor.client.call.HttpClientCall;
import io.ktor.client.statement.HttpResponse;
import io.ktor.client.statement.HttpResponseContainer;
import io.ktor.client.statement.HttpResponseKt;
import io.ktor.http.HttpStatusCode;
import io.ktor.http.content.OutgoingContent;
import io.ktor.util.logging.LoggerJvmKt;
import io.ktor.util.pipeline.PipelineContext;
import io.ktor.util.reflect.TypeInfo;
import io.ktor.websocket.WebSocketSession;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SpillingKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import org.slf4j.Logger;

/* JADX INFO: compiled from: WebSockets.kt */
/* JADX INFO: loaded from: classes2.dex */
@DebugMetadata(c = "io.ktor.client.plugins.websocket.WebSockets$Plugin$install$2", f = "WebSockets.kt", l = {243}, m = "invokeSuspend", v = 1)
public final class WebSockets$Plugin$install$2 extends SuspendLambda implements Function3<PipelineContext<HttpResponseContainer, HttpClientCall>, HttpResponseContainer, Continuation<? super Unit>, Object> {
    public final /* synthetic */ boolean $extensionsSupported;
    public final /* synthetic */ WebSockets $plugin;
    public /* synthetic */ Object L$0;
    public /* synthetic */ Object L$1;
    public Object L$2;
    public Object L$3;
    public Object L$4;
    public Object L$5;
    public Object L$6;
    public Object L$7;
    public int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WebSockets$Plugin$install$2(WebSockets webSockets, boolean z, Continuation<? super WebSockets$Plugin$install$2> continuation) {
        super(3, continuation);
        this.$plugin = webSockets;
        this.$extensionsSupported = z;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(PipelineContext<HttpResponseContainer, HttpClientCall> pipelineContext, HttpResponseContainer httpResponseContainer, Continuation<? super Unit> continuation) {
        WebSockets$Plugin$install$2 webSockets$Plugin$install$2 = new WebSockets$Plugin$install$2(this.$plugin, this.$extensionsSupported, continuation);
        webSockets$Plugin$install$2.L$0 = pipelineContext;
        webSockets$Plugin$install$2.L$1 = httpResponseContainer;
        return webSockets$Plugin$install$2.invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object delegatingClientWebSocketSession;
        PipelineContext pipelineContext = (PipelineContext) this.L$0;
        HttpResponseContainer httpResponseContainer = (HttpResponseContainer) this.L$1;
        Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            TypeInfo typeInfoComponent1 = httpResponseContainer.component1();
            Object objComponent2 = httpResponseContainer.component2();
            HttpResponse response = ((HttpClientCall) pipelineContext.getContext()).getResponse();
            HttpStatusCode status = response.getStatus();
            OutgoingContent content = HttpResponseKt.getRequest(response).getContent();
            if (!(content instanceof WebSocketContent)) {
                Logger logger = WebSocketsKt.getLOGGER();
                if (LoggerJvmKt.isTraceEnabled(logger)) {
                    logger.trace("Skipping non-websocket response from " + ((HttpClientCall) pipelineContext.getContext()).getRequest().getUrl() + ": " + content);
                }
                return Unit.INSTANCE;
            }
            HttpStatusCode.Companion companion = HttpStatusCode.Companion;
            if (!Intrinsics.areEqual(status, companion.getSwitchingProtocols())) {
                throw new WebSocketException("Handshake exception, expected status code " + companion.getSwitchingProtocols().getValue() + " but was " + status.getValue());
            }
            if (!(objComponent2 instanceof WebSocketSession)) {
                throw new WebSocketException("Handshake exception, expected `WebSocketSession` content but was " + Reflection.getOrCreateKotlinClass(objComponent2.getClass()));
            }
            Logger logger2 = WebSocketsKt.getLOGGER();
            if (LoggerJvmKt.isTraceEnabled(logger2)) {
                logger2.trace("Receive websocket session from " + ((HttpClientCall) pipelineContext.getContext()).getRequest().getUrl() + ": " + objComponent2);
            }
            if (this.$plugin.getMaxFrameSize() != 2147483647L) {
                ((WebSocketSession) objComponent2).setMaxFrameSize(this.$plugin.getMaxFrameSize());
            }
            if (Intrinsics.areEqual(typeInfoComponent1.getType(), Reflection.getOrCreateKotlinClass(DefaultClientWebSocketSession.class))) {
                DefaultClientWebSocketSession defaultClientWebSocketSession = new DefaultClientWebSocketSession((HttpClientCall) pipelineContext.getContext(), this.$plugin.convertSessionToDefault$ktor_client_core((WebSocketSession) objComponent2));
                defaultClientWebSocketSession.start(this.$extensionsSupported ? this.$plugin.completeNegotiation((HttpClientCall) pipelineContext.getContext()) : CollectionsKt__CollectionsKt.emptyList());
                delegatingClientWebSocketSession = defaultClientWebSocketSession;
            } else {
                delegatingClientWebSocketSession = new DelegatingClientWebSocketSession((HttpClientCall) pipelineContext.getContext(), (WebSocketSession) objComponent2);
            }
            HttpResponseContainer httpResponseContainer2 = new HttpResponseContainer(typeInfoComponent1, delegatingClientWebSocketSession);
            this.L$0 = SpillingKt.nullOutSpilledVariable(pipelineContext);
            this.L$1 = SpillingKt.nullOutSpilledVariable(httpResponseContainer);
            this.L$2 = SpillingKt.nullOutSpilledVariable(typeInfoComponent1);
            this.L$3 = SpillingKt.nullOutSpilledVariable(objComponent2);
            this.L$4 = SpillingKt.nullOutSpilledVariable(response);
            this.L$5 = SpillingKt.nullOutSpilledVariable(status);
            this.L$6 = SpillingKt.nullOutSpilledVariable(content);
            this.L$7 = SpillingKt.nullOutSpilledVariable(delegatingClientWebSocketSession);
            this.label = 1;
            if (pipelineContext.proceedWith(httpResponseContainer2, this) == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
        }
        return Unit.INSTANCE;
    }
}
