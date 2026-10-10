package io.ktor.client.engine;

import in.dragonbra.javasteam.protobufs.steamclient.Enums;
import io.ktor.client.HttpClient;
import io.ktor.client.call.HttpClientCall;
import io.ktor.client.engine.HttpClientEngine;
import io.ktor.client.request.HttpRequestBuilder;
import io.ktor.client.request.HttpRequestData;
import io.ktor.client.request.HttpResponseData;
import io.ktor.client.request.HttpSendPipeline;
import io.ktor.client.statement.HttpResponse;
import io.ktor.client.utils.ClientEventsKt;
import io.ktor.http.content.NullBody;
import io.ktor.http.content.OutgoingContent;
import io.ktor.util.pipeline.PipelineContext;
import io.ktor.util.reflect.TypeInfo;
import java.io.Closeable;
import java.util.Set;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.SetsKt__SetsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SpillingKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import kotlin.reflect.KType;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.JobKt;

/* JADX INFO: compiled from: HttpClientEngine.kt */
/* JADX INFO: loaded from: classes2.dex */
public interface HttpClientEngine extends CoroutineScope, Closeable {

    /* JADX INFO: renamed from: io.ktor.client.engine.HttpClientEngine$executeWithinCallContext$1, reason: invalid class name */
    /* JADX INFO: compiled from: HttpClientEngine.kt */
    @DebugMetadata(c = "io.ktor.client.engine.HttpClientEngine", f = "HttpClientEngine.kt", l = {175, 184}, m = "executeWithinCallContext", v = 1)
    public static final class AnonymousClass1 extends ContinuationImpl {
        public Object L$0;
        public Object L$1;
        public Object L$2;
        public int label;
        public /* synthetic */ Object result;

        public AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Enums.EProtoAppType.k_EAppTypeDepotOnly_VALUE;
            return HttpClientEngine.this.executeWithinCallContext(null, this);
        }
    }

    Object execute(HttpRequestData httpRequestData, Continuation<? super HttpResponseData> continuation);

    HttpClientEngineConfig getConfig();

    default Set<HttpClientEngineCapability<?>> getSupportedCapabilities() {
        return SetsKt__SetsKt.emptySet();
    }

    default boolean getClosed() {
        return !(((Job) getCoroutineContext().get(Job.Key)) != null ? r1.isActive() : false);
    }

    /* JADX INFO: renamed from: io.ktor.client.engine.HttpClientEngine$install$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: HttpClientEngine.kt */
    @DebugMetadata(c = "io.ktor.client.engine.HttpClientEngine$install$1", f = "HttpClientEngine.kt", l = {154, 166}, m = "invokeSuspend", v = 1)
    public static final class C00321 extends SuspendLambda implements Function3<PipelineContext<Object, HttpRequestBuilder>, Object, Continuation<? super Unit>, Object> {
        public final /* synthetic */ HttpClient $client;
        public /* synthetic */ Object L$0;
        public /* synthetic */ Object L$1;
        public Object L$2;
        public Object L$3;
        public Object L$4;
        public Object L$5;
        public Object L$6;
        public int label;
        public final /* synthetic */ HttpClientEngine this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C00321(HttpClient httpClient, HttpClientEngine httpClientEngine, Continuation<? super C00321> continuation) {
            super(3, continuation);
            this.$client = httpClient;
            this.this$0 = httpClientEngine;
        }

        @Override // kotlin.jvm.functions.Function3
        public final Object invoke(PipelineContext<Object, HttpRequestBuilder> pipelineContext, Object obj, Continuation<? super Unit> continuation) {
            C00321 c00321 = new C00321(this.$client, this.this$0, continuation);
            c00321.L$0 = pipelineContext;
            c00321.L$1 = obj;
            return c00321.invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            HttpRequestData httpRequestDataBuild;
            HttpRequestBuilder httpRequestBuilder;
            PipelineContext pipelineContext = (PipelineContext) this.L$0;
            Object obj2 = this.L$1;
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                HttpRequestBuilder httpRequestBuilder2 = new HttpRequestBuilder();
                httpRequestBuilder2.takeFromWithExecutionContext((HttpRequestBuilder) pipelineContext.getContext());
                KType kTypeTypeOf = null;
                if (obj2 == null) {
                    httpRequestBuilder2.setBody(NullBody.INSTANCE);
                    KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(Object.class);
                    try {
                        kTypeTypeOf = Reflection.typeOf(Object.class);
                    } catch (Throwable unused) {
                    }
                    httpRequestBuilder2.setBodyType(new TypeInfo(orCreateKotlinClass, kTypeTypeOf));
                } else if (obj2 instanceof OutgoingContent) {
                    httpRequestBuilder2.setBody(obj2);
                    httpRequestBuilder2.setBodyType(null);
                } else {
                    httpRequestBuilder2.setBody(obj2);
                    KClass orCreateKotlinClass2 = Reflection.getOrCreateKotlinClass(Object.class);
                    try {
                        kTypeTypeOf = Reflection.typeOf(Object.class);
                    } catch (Throwable unused2) {
                    }
                    httpRequestBuilder2.setBodyType(new TypeInfo(orCreateKotlinClass2, kTypeTypeOf));
                }
                this.$client.getMonitor().raise(ClientEventsKt.getHttpRequestIsReadyForSending(), httpRequestBuilder2);
                httpRequestDataBuild = httpRequestBuilder2.build();
                httpRequestDataBuild.getAttributes().put(HttpClientEngineKt.getCLIENT_CONFIG(), this.$client.getConfig$ktor_client_core());
                HttpClientEngineKt.validateHeaders(httpRequestDataBuild);
                this.this$0.checkExtensions(httpRequestDataBuild);
                HttpClientEngine httpClientEngine = this.this$0;
                this.L$0 = pipelineContext;
                this.L$1 = SpillingKt.nullOutSpilledVariable(obj2);
                this.L$2 = SpillingKt.nullOutSpilledVariable(httpRequestBuilder2);
                this.L$3 = httpRequestDataBuild;
                this.label = 1;
                Object objExecuteWithinCallContext = httpClientEngine.executeWithinCallContext(httpRequestDataBuild, this);
                if (objExecuteWithinCallContext == coroutine_suspended) {
                    return coroutine_suspended;
                }
                httpRequestBuilder = httpRequestBuilder2;
                obj = objExecuteWithinCallContext;
            } else {
                if (i != 1) {
                    if (i != 2) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.throwOnFailure(obj);
                    return Unit.INSTANCE;
                }
                httpRequestDataBuild = (HttpRequestData) this.L$3;
                httpRequestBuilder = (HttpRequestBuilder) this.L$2;
                ResultKt.throwOnFailure(obj);
            }
            HttpResponseData httpResponseData = (HttpResponseData) obj;
            HttpClientCall httpClientCall = new HttpClientCall(this.$client, httpRequestDataBuild, httpResponseData);
            final HttpResponse response = httpClientCall.getResponse();
            this.$client.getMonitor().raise(ClientEventsKt.getHttpResponseReceived(), response);
            Job job = JobKt.getJob(response.getCoroutineContext());
            final HttpClient httpClient = this.$client;
            job.invokeOnCompletion(new Function1() { // from class: io.ktor.client.engine.HttpClientEngine$install$1$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj3) {
                    return HttpClientEngine.C00321.invokeSuspend$lambda$2(httpClient, response, (Throwable) obj3);
                }
            });
            this.L$0 = SpillingKt.nullOutSpilledVariable(pipelineContext);
            this.L$1 = SpillingKt.nullOutSpilledVariable(obj2);
            this.L$2 = SpillingKt.nullOutSpilledVariable(httpRequestBuilder);
            this.L$3 = SpillingKt.nullOutSpilledVariable(httpRequestDataBuild);
            this.L$4 = SpillingKt.nullOutSpilledVariable(httpResponseData);
            this.L$5 = SpillingKt.nullOutSpilledVariable(httpClientCall);
            this.L$6 = SpillingKt.nullOutSpilledVariable(response);
            this.label = 2;
            if (pipelineContext.proceedWith(httpClientCall, this) == coroutine_suspended) {
                return coroutine_suspended;
            }
            return Unit.INSTANCE;
        }

        public static final Unit invokeSuspend$lambda$2(HttpClient httpClient, HttpResponse httpResponse, Throwable th) {
            if (th != null) {
                httpClient.getMonitor().raise(ClientEventsKt.getHttpResponseCancelled(), httpResponse);
            }
            return Unit.INSTANCE;
        }
    }

    default void install(HttpClient client) {
        Intrinsics.checkNotNullParameter(client, "client");
        client.getSendPipeline().intercept(HttpSendPipeline.Phases.getEngine(), new C00321(client, this, null));
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    default java.lang.Object executeWithinCallContext(io.ktor.client.request.HttpRequestData r11, kotlin.coroutines.Continuation<? super io.ktor.client.request.HttpResponseData> r12) throws java.lang.Throwable {
        /*
            r10 = this;
            boolean r0 = r12 instanceof io.ktor.client.engine.HttpClientEngine.AnonymousClass1
            if (r0 == 0) goto L13
            r0 = r12
            io.ktor.client.engine.HttpClientEngine$executeWithinCallContext$1 r0 = (io.ktor.client.engine.HttpClientEngine.AnonymousClass1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            io.ktor.client.engine.HttpClientEngine$executeWithinCallContext$1 r0 = new io.ktor.client.engine.HttpClientEngine$executeWithinCallContext$1
            r0.<init>(r12)
        L18:
            java.lang.Object r12 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L48
            if (r2 == r4) goto L40
            if (r2 != r3) goto L38
            java.lang.Object r10 = r0.L$2
            kotlin.coroutines.CoroutineContext r10 = (kotlin.coroutines.CoroutineContext) r10
            java.lang.Object r10 = r0.L$1
            kotlin.coroutines.CoroutineContext r10 = (kotlin.coroutines.CoroutineContext) r10
            java.lang.Object r10 = r0.L$0
            io.ktor.client.request.HttpRequestData r10 = (io.ktor.client.request.HttpRequestData) r10
            kotlin.ResultKt.throwOnFailure(r12)
            goto L8f
        L38:
            java.lang.IllegalStateException r10 = new java.lang.IllegalStateException
            java.lang.String r11 = "call to 'resume' before 'invoke' with coroutine"
            r10.<init>(r11)
            throw r10
        L40:
            java.lang.Object r11 = r0.L$0
            io.ktor.client.request.HttpRequestData r11 = (io.ktor.client.request.HttpRequestData) r11
            kotlin.ResultKt.throwOnFailure(r12)
            goto L5a
        L48:
            kotlin.ResultKt.throwOnFailure(r12)
            kotlinx.coroutines.Job r12 = r11.getExecutionContext()
            r0.L$0 = r11
            r0.label = r4
            java.lang.Object r12 = io.ktor.client.engine.HttpClientEngineKt.createCallContext(r10, r12, r0)
            if (r12 != r1) goto L5a
            return r1
        L5a:
            kotlin.coroutines.CoroutineContext r12 = (kotlin.coroutines.CoroutineContext) r12
            io.ktor.client.engine.KtorCallContextElement r2 = new io.ktor.client.engine.KtorCallContextElement
            r2.<init>(r12)
            kotlin.coroutines.CoroutineContext r2 = r12.plus(r2)
            io.ktor.client.engine.HttpClientEngine$executeWithinCallContext$2 r7 = new io.ktor.client.engine.HttpClientEngine$executeWithinCallContext$2
            r4 = 0
            r7.<init>(r11, r4)
            r8 = 2
            r9 = 0
            r6 = 0
            r4 = r10
            r5 = r2
            kotlinx.coroutines.Deferred r10 = kotlinx.coroutines.BuildersKt.async$default(r4, r5, r6, r7, r8, r9)
            java.lang.Object r11 = kotlin.coroutines.jvm.internal.SpillingKt.nullOutSpilledVariable(r11)
            r0.L$0 = r11
            java.lang.Object r11 = kotlin.coroutines.jvm.internal.SpillingKt.nullOutSpilledVariable(r12)
            r0.L$1 = r11
            java.lang.Object r11 = kotlin.coroutines.jvm.internal.SpillingKt.nullOutSpilledVariable(r2)
            r0.L$2 = r11
            r0.label = r3
            java.lang.Object r12 = r10.await(r0)
            if (r12 != r1) goto L8f
            return r1
        L8f:
            return r12
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.client.engine.HttpClientEngine.executeWithinCallContext(io.ktor.client.request.HttpRequestData, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX INFO: renamed from: io.ktor.client.engine.HttpClientEngine$executeWithinCallContext$2, reason: invalid class name */
    /* JADX INFO: compiled from: HttpClientEngine.kt */
    @DebugMetadata(c = "io.ktor.client.engine.HttpClientEngine$executeWithinCallContext$2", f = "HttpClientEngine.kt", l = {183}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super HttpResponseData>, Object> {
        public final /* synthetic */ HttpRequestData $requestData;
        public int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass2(HttpRequestData httpRequestData, Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
            this.$requestData = httpRequestData;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return HttpClientEngine.this.new AnonymousClass2(this.$requestData, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super HttpResponseData> continuation) {
            return ((AnonymousClass2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                if (HttpClientEngine.this.getClosed()) {
                    throw new ClientEngineClosedException(null, 1, null);
                }
                HttpClientEngine httpClientEngine = HttpClientEngine.this;
                HttpRequestData httpRequestData = this.$requestData;
                this.label = 1;
                obj = httpClientEngine.execute(httpRequestData, this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            return obj;
        }
    }

    default void checkExtensions(HttpRequestData httpRequestData) {
        for (HttpClientEngineCapability<?> httpClientEngineCapability : httpRequestData.getRequiredCapabilities$ktor_client_core()) {
            if (!getSupportedCapabilities().contains(httpClientEngineCapability)) {
                throw new IllegalArgumentException(("Engine doesn't support " + httpClientEngineCapability).toString());
            }
        }
    }
}
