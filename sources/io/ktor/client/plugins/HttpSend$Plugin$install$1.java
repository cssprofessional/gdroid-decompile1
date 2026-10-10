package io.ktor.client.plugins;

import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin;
import io.ktor.client.HttpClient;
import io.ktor.client.call.HttpClientCall;
import io.ktor.client.plugins.HttpSend;
import io.ktor.client.request.HttpRequestBuilder;
import io.ktor.http.HttpMessageBuilder;
import io.ktor.http.HttpMessagePropertiesKt;
import io.ktor.http.content.NullBody;
import io.ktor.http.content.OutgoingContent;
import io.ktor.util.pipeline.PipelineContext;
import io.ktor.util.reflect.TypeInfo;
import java.util.Iterator;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SpillingKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import kotlin.reflect.KType;
import kotlin.text.StringsKt__IndentKt;

/* JADX INFO: compiled from: HttpSend.kt */
/* JADX INFO: loaded from: classes2.dex */
@DebugMetadata(c = "io.ktor.client.plugins.HttpSend$Plugin$install$1", f = "HttpSend.kt", l = {SteammessagesClientserverLogin.CMsgClientLogon.WEB_LOGON_NONCE_FIELD_NUMBER, SteammessagesClientserverLogin.CMsgClientLogon.PRIORITY_REASON_FIELD_NUMBER}, m = "invokeSuspend", v = 1)
public final class HttpSend$Plugin$install$1 extends SuspendLambda implements Function3<PipelineContext<Object, HttpRequestBuilder>, Object, Continuation<? super Unit>, Object> {
    public final /* synthetic */ HttpSend $plugin;
    public final /* synthetic */ HttpClient $scope;
    public int I$0;
    public /* synthetic */ Object L$0;
    public /* synthetic */ Object L$1;
    public Object L$2;
    public Object L$3;
    public Object L$4;
    public Object L$5;
    public int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HttpSend$Plugin$install$1(HttpSend httpSend, HttpClient httpClient, Continuation<? super HttpSend$Plugin$install$1> continuation) {
        super(3, continuation);
        this.$plugin = httpSend;
        this.$scope = httpClient;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(PipelineContext<Object, HttpRequestBuilder> pipelineContext, Object obj, Continuation<? super Unit> continuation) {
        HttpSend$Plugin$install$1 httpSend$Plugin$install$1 = new HttpSend$Plugin$install$1(this.$plugin, this.$scope, continuation);
        httpSend$Plugin$install$1.L$0 = pipelineContext;
        httpSend$Plugin$install$1.L$1 = obj;
        return httpSend$Plugin$install$1.invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Integer num;
        int iIntValue;
        Sender defaultSender;
        Sender sender;
        PipelineContext pipelineContext = (PipelineContext) this.L$0;
        Object obj2 = this.L$1;
        Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            KType kTypeTypeOf = null;
            if (!(obj2 instanceof OutgoingContent)) {
                throw new IllegalStateException(StringsKt__IndentKt.trimMargin$default("\n|Fail to prepare request body for sending. \n|The body type is: " + Reflection.getOrCreateKotlinClass(obj2.getClass()) + ", with Content-Type: " + HttpMessagePropertiesKt.contentType((HttpMessageBuilder) pipelineContext.getContext()) + ".\n|\n|If you expect serialized body, please check that you have installed the corresponding plugin(like `ContentNegotiation`) and set `Content-Type` header.", null, 1, null).toString());
            }
            HttpRequestBuilder httpRequestBuilder = (HttpRequestBuilder) pipelineContext.getContext();
            if (obj2 == null) {
                httpRequestBuilder.setBody(NullBody.INSTANCE);
                KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(OutgoingContent.class);
                try {
                    kTypeTypeOf = Reflection.typeOf(OutgoingContent.class);
                } catch (Throwable unused) {
                }
                httpRequestBuilder.setBodyType(new TypeInfo(orCreateKotlinClass, kTypeTypeOf));
            } else if (obj2 instanceof OutgoingContent) {
                httpRequestBuilder.setBody(obj2);
                httpRequestBuilder.setBodyType(null);
            } else {
                httpRequestBuilder.setBody(obj2);
                KClass orCreateKotlinClass2 = Reflection.getOrCreateKotlinClass(OutgoingContent.class);
                try {
                    kTypeTypeOf = Reflection.typeOf(OutgoingContent.class);
                } catch (Throwable unused2) {
                }
                httpRequestBuilder.setBodyType(new TypeInfo(orCreateKotlinClass2, kTypeTypeOf));
            }
            num = (Integer) ((HttpRequestBuilder) pipelineContext.getContext()).getAttributes().getOrNull(HttpRequestRetryKt.getMaxRetriesPerRequestAttributeKey());
            iIntValue = num != null ? num.intValue() + 1 : this.$plugin.maxSendCount;
            defaultSender = new HttpSend.DefaultSender(iIntValue, this.$scope);
            Iterator it = CollectionsKt___CollectionsKt.reversed(this.$plugin.interceptors).iterator();
            Sender interceptedSender = defaultSender;
            while (it.hasNext()) {
                interceptedSender = new HttpSend.InterceptedSender((Function3) it.next(), interceptedSender);
            }
            HttpRequestBuilder httpRequestBuilder2 = (HttpRequestBuilder) pipelineContext.getContext();
            this.L$0 = pipelineContext;
            this.L$1 = SpillingKt.nullOutSpilledVariable(obj2);
            this.L$2 = SpillingKt.nullOutSpilledVariable(num);
            this.L$3 = SpillingKt.nullOutSpilledVariable(defaultSender);
            this.L$4 = SpillingKt.nullOutSpilledVariable(interceptedSender);
            this.I$0 = iIntValue;
            this.label = 1;
            obj = interceptedSender.execute(httpRequestBuilder2, this);
            if (obj == coroutine_suspended) {
                return coroutine_suspended;
            }
            sender = interceptedSender;
        } else {
            if (i != 1) {
                if (i != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
                return Unit.INSTANCE;
            }
            iIntValue = this.I$0;
            sender = (Sender) this.L$4;
            defaultSender = (Sender) this.L$3;
            num = (Integer) this.L$2;
            ResultKt.throwOnFailure(obj);
        }
        HttpClientCall httpClientCall = (HttpClientCall) obj;
        this.L$0 = SpillingKt.nullOutSpilledVariable(pipelineContext);
        this.L$1 = SpillingKt.nullOutSpilledVariable(obj2);
        this.L$2 = SpillingKt.nullOutSpilledVariable(num);
        this.L$3 = SpillingKt.nullOutSpilledVariable(defaultSender);
        this.L$4 = SpillingKt.nullOutSpilledVariable(sender);
        this.L$5 = SpillingKt.nullOutSpilledVariable(httpClientCall);
        this.I$0 = iIntValue;
        this.label = 2;
        if (pipelineContext.proceedWith(httpClientCall, this) == coroutine_suspended) {
            return coroutine_suspended;
        }
        return Unit.INSTANCE;
    }
}
