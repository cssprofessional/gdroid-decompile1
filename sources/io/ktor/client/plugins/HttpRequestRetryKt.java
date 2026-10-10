package io.ktor.client.plugins;

import in.dragonbra.javasteam.protobufs.steamclient.Enums;
import io.ktor.client.call.HttpClientCall;
import io.ktor.client.network.sockets.ConnectTimeoutException;
import io.ktor.client.plugins.api.ClientPlugin;
import io.ktor.client.plugins.api.ClientPluginBuilder;
import io.ktor.client.plugins.api.CreatePluginUtilsKt;
import io.ktor.client.plugins.api.Send;
import io.ktor.client.request.HttpRequest;
import io.ktor.client.request.HttpRequestBuilder;
import io.ktor.client.statement.HttpResponse;
import io.ktor.client.utils.ExceptionUtilsJvmKt;
import io.ktor.events.EventDefinition;
import io.ktor.util.AttributeKey;
import io.ktor.util.logging.KtorSimpleLoggerJvmKt;
import io.ktor.util.reflect.TypeInfo;
import java.net.SocketTimeoutException;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import kotlin.reflect.KType;
import kotlin.reflect.KTypeProjection;
import kotlinx.coroutines.CompletableJob;
import kotlinx.coroutines.Job;
import org.slf4j.Logger;

/* JADX INFO: compiled from: HttpRequestRetry.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class HttpRequestRetryKt {
    public static final AttributeKey<Integer> MaxRetriesPerRequestAttributeKey;
    public static final AttributeKey<Function2<HttpRetryModifyRequestContext, HttpRequestBuilder, Unit>> ModifyRequestPerRequestAttributeKey;
    public static final AttributeKey<Function2<HttpRetryDelayContext, Integer, Long>> RetryDelayPerRequestAttributeKey;
    public static final AttributeKey<Function3<HttpRetryShouldRetryContext, HttpRequestBuilder, Throwable, Boolean>> ShouldRetryOnExceptionPerRequestAttributeKey;
    public static final AttributeKey<Function3<HttpRetryShouldRetryContext, HttpRequest, HttpResponse, Boolean>> ShouldRetryPerRequestAttributeKey;
    public static final Logger LOGGER = KtorSimpleLoggerJvmKt.KtorSimpleLogger("io.ktor.client.plugins.HttpRequestRetry");
    public static final EventDefinition<HttpRetryEventData> HttpRequestRetryEvent = new EventDefinition<>();
    public static final ClientPlugin<HttpRequestRetryConfig> HttpRequestRetry = CreatePluginUtilsKt.createClientPlugin("RetryFeature", HttpRequestRetryKt$HttpRequestRetry$1.INSTANCE, new Function1() { // from class: io.ktor.client.plugins.HttpRequestRetryKt$$ExternalSyntheticLambda0
        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Object obj) {
            return HttpRequestRetryKt.HttpRequestRetry$lambda$0((ClientPluginBuilder) obj);
        }
    });

    /* JADX INFO: renamed from: io.ktor.client.plugins.HttpRequestRetryKt$throwOnInvalidResponseBody$1, reason: invalid class name */
    /* JADX INFO: compiled from: HttpRequestRetry.kt */
    @DebugMetadata(c = "io.ktor.client.plugins.HttpRequestRetryKt", f = "HttpRequestRetry.kt", l = {488}, m = "throwOnInvalidResponseBody", v = 1)
    public static final class AnonymousClass1 extends ContinuationImpl {
        public int I$0;
        public Object L$0;
        public Object L$1;
        public int label;
        public /* synthetic */ Object result;

        public AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Enums.EProtoAppType.k_EAppTypeDepotOnly_VALUE;
            return HttpRequestRetryKt.throwOnInvalidResponseBody(null, this);
        }
    }

    static {
        KType kTypeTypeOf;
        KType kTypeTypeOf2;
        KType kTypeTypeOf3;
        KType kTypeTypeOf4;
        KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(Integer.class);
        KType kTypeTypeOf5 = null;
        try {
            kTypeTypeOf = Reflection.typeOf(Integer.TYPE);
        } catch (Throwable unused) {
            kTypeTypeOf = null;
        }
        MaxRetriesPerRequestAttributeKey = new AttributeKey<>("MaxRetriesPerRequestAttributeKey", new TypeInfo(orCreateKotlinClass, kTypeTypeOf));
        KClass orCreateKotlinClass2 = Reflection.getOrCreateKotlinClass(Function3.class);
        try {
            KTypeProjection.Companion companion = KTypeProjection.Companion;
            kTypeTypeOf2 = Reflection.typeOf(Function3.class, companion.invariant(Reflection.typeOf(HttpRetryShouldRetryContext.class)), companion.invariant(Reflection.typeOf(HttpRequest.class)), companion.invariant(Reflection.typeOf(HttpResponse.class)), companion.invariant(Reflection.typeOf(Boolean.TYPE)));
        } catch (Throwable unused2) {
            kTypeTypeOf2 = null;
        }
        ShouldRetryPerRequestAttributeKey = new AttributeKey<>("ShouldRetryPerRequestAttributeKey", new TypeInfo(orCreateKotlinClass2, kTypeTypeOf2));
        KClass orCreateKotlinClass3 = Reflection.getOrCreateKotlinClass(Function3.class);
        try {
            KTypeProjection.Companion companion2 = KTypeProjection.Companion;
            kTypeTypeOf3 = Reflection.typeOf(Function3.class, companion2.invariant(Reflection.typeOf(HttpRetryShouldRetryContext.class)), companion2.invariant(Reflection.typeOf(HttpRequestBuilder.class)), companion2.invariant(Reflection.typeOf(Throwable.class)), companion2.invariant(Reflection.typeOf(Boolean.TYPE)));
        } catch (Throwable unused3) {
            kTypeTypeOf3 = null;
        }
        ShouldRetryOnExceptionPerRequestAttributeKey = new AttributeKey<>("ShouldRetryOnExceptionPerRequestAttributeKey", new TypeInfo(orCreateKotlinClass3, kTypeTypeOf3));
        KClass orCreateKotlinClass4 = Reflection.getOrCreateKotlinClass(Function2.class);
        try {
            KTypeProjection.Companion companion3 = KTypeProjection.Companion;
            kTypeTypeOf4 = Reflection.typeOf(Function2.class, companion3.invariant(Reflection.typeOf(HttpRetryModifyRequestContext.class)), companion3.invariant(Reflection.typeOf(HttpRequestBuilder.class)), companion3.invariant(Reflection.typeOf(Unit.class)));
        } catch (Throwable unused4) {
            kTypeTypeOf4 = null;
        }
        ModifyRequestPerRequestAttributeKey = new AttributeKey<>("ModifyRequestPerRequestAttributeKey", new TypeInfo(orCreateKotlinClass4, kTypeTypeOf4));
        KClass orCreateKotlinClass5 = Reflection.getOrCreateKotlinClass(Function2.class);
        try {
            KTypeProjection.Companion companion4 = KTypeProjection.Companion;
            kTypeTypeOf5 = Reflection.typeOf(Function2.class, companion4.invariant(Reflection.typeOf(HttpRetryDelayContext.class)), companion4.invariant(Reflection.typeOf(Integer.TYPE)), companion4.invariant(Reflection.typeOf(Long.TYPE)));
        } catch (Throwable unused5) {
        }
        RetryDelayPerRequestAttributeKey = new AttributeKey<>("RetryDelayPerRequestAttributeKey", new TypeInfo(orCreateKotlinClass5, kTypeTypeOf5));
    }

    public static final EventDefinition<HttpRetryEventData> getHttpRequestRetryEvent() {
        return HttpRequestRetryEvent;
    }

    public static final Unit HttpRequestRetry$lambda$0(ClientPluginBuilder createClientPlugin) {
        Intrinsics.checkNotNullParameter(createClientPlugin, "$this$createClientPlugin");
        Function3<HttpRetryShouldRetryContext, HttpRequest, HttpResponse, Boolean> shouldRetry$ktor_client_core = ((HttpRequestRetryConfig) createClientPlugin.getPluginConfig()).getShouldRetry$ktor_client_core();
        Function3<HttpRetryShouldRetryContext, HttpRequestBuilder, Throwable, Boolean> shouldRetryOnException$ktor_client_core = ((HttpRequestRetryConfig) createClientPlugin.getPluginConfig()).getShouldRetryOnException$ktor_client_core();
        Function2<HttpRetryDelayContext, Integer, Long> delayMillis$ktor_client_core = ((HttpRequestRetryConfig) createClientPlugin.getPluginConfig()).getDelayMillis$ktor_client_core();
        Function2<Long, Continuation<? super Unit>, Object> delay$ktor_client_core = ((HttpRequestRetryConfig) createClientPlugin.getPluginConfig()).getDelay$ktor_client_core();
        int maxRetries = ((HttpRequestRetryConfig) createClientPlugin.getPluginConfig()).getMaxRetries();
        Function2<HttpRetryModifyRequestContext, HttpRequestBuilder, Unit> modifyRequest = ((HttpRequestRetryConfig) createClientPlugin.getPluginConfig()).getModifyRequest();
        createClientPlugin.onRequest(new HttpRequestRetryKt$HttpRequestRetry$2$1(maxRetries, null));
        createClientPlugin.on(Send.INSTANCE, new HttpRequestRetryKt$HttpRequestRetry$2$2(shouldRetry$ktor_client_core, shouldRetryOnException$ktor_client_core, maxRetries, delayMillis$ktor_client_core, modifyRequest, createClientPlugin, delay$ktor_client_core, null));
        return Unit.INSTANCE;
    }

    public static final boolean HttpRequestRetry$lambda$0$shouldRetry(int i, int i2, Function3<? super HttpRetryShouldRetryContext, ? super HttpRequest, ? super HttpResponse, Boolean> function3, HttpClientCall httpClientCall) {
        return i < i2 && function3.invoke(new HttpRetryShouldRetryContext(i + 1), httpClientCall.getRequest(), httpClientCall.getResponse()).booleanValue();
    }

    public static final boolean HttpRequestRetry$lambda$0$shouldRetryOnException(int i, int i2, Function3<? super HttpRetryShouldRetryContext, ? super HttpRequestBuilder, ? super Throwable, Boolean> function3, HttpRequestBuilder httpRequestBuilder, Throwable th) {
        return i < i2 && function3.invoke(new HttpRetryShouldRetryContext(i + 1), httpRequestBuilder, th).booleanValue();
    }

    public static final HttpRequestBuilder HttpRequestRetry$lambda$0$prepareRequest(HttpRequestBuilder httpRequestBuilder) {
        final HttpRequestBuilder httpRequestBuilderTakeFrom = new HttpRequestBuilder().takeFrom(httpRequestBuilder);
        httpRequestBuilder.getExecutionContext().invokeOnCompletion(new Function1() { // from class: io.ktor.client.plugins.HttpRequestRetryKt$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return HttpRequestRetryKt.HttpRequestRetry$lambda$0$prepareRequest$0(httpRequestBuilderTakeFrom, (Throwable) obj);
            }
        });
        return httpRequestBuilderTakeFrom;
    }

    public static final Unit HttpRequestRetry$lambda$0$prepareRequest$0(HttpRequestBuilder httpRequestBuilder, Throwable th) {
        Job executionContext = httpRequestBuilder.getExecutionContext();
        Intrinsics.checkNotNull(executionContext, "null cannot be cast to non-null type kotlinx.coroutines.CompletableJob");
        CompletableJob completableJob = (CompletableJob) executionContext;
        if (th == null) {
            completableJob.complete();
        } else {
            completableJob.completeExceptionally(th);
        }
        return Unit.INSTANCE;
    }

    public static final AttributeKey<Integer> getMaxRetriesPerRequestAttributeKey() {
        return MaxRetriesPerRequestAttributeKey;
    }

    public static final boolean isTimeoutException(Throwable th) {
        Throwable thUnwrapCancellationException = ExceptionUtilsJvmKt.unwrapCancellationException(th);
        return (thUnwrapCancellationException instanceof HttpRequestTimeoutException) || (thUnwrapCancellationException instanceof ConnectTimeoutException) || (thUnwrapCancellationException instanceof SocketTimeoutException);
    }

    /* JADX WARN: Can't wrap try/catch for region: R(13:0|2|(2:4|(1:6)(1:7))(0)|8|(1:(3:11|49|12)(2:16|17))(4:18|(4:20|51|21|(1:23)(1:24))|45|46)|25|47|26|30|(1:32)|(1:34)|45|46) */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0074, code lost:
    
        r7 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0075, code lost:
    
        r0 = kotlin.Result.Companion;
        r7 = kotlin.Result.m8149constructorimpl(kotlin.ResultKt.createFailure(r7));
     */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00af  */
    /* JADX WARN: Removed duplicated region for block: B:55:? A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final java.lang.Object throwOnInvalidResponseBody(io.ktor.client.statement.HttpResponse r7, kotlin.coroutines.Continuation<? super java.lang.Boolean> r8) throws java.lang.Throwable {
        /*
            boolean r0 = r8 instanceof io.ktor.client.plugins.HttpRequestRetryKt.AnonymousClass1
            if (r0 == 0) goto L13
            r0 = r8
            io.ktor.client.plugins.HttpRequestRetryKt$throwOnInvalidResponseBody$1 r0 = (io.ktor.client.plugins.HttpRequestRetryKt.AnonymousClass1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            io.ktor.client.plugins.HttpRequestRetryKt$throwOnInvalidResponseBody$1 r0 = new io.ktor.client.plugins.HttpRequestRetryKt$throwOnInvalidResponseBody$1
            r0.<init>(r8)
        L18:
            java.lang.Object r8 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            java.lang.String r3 = "Failed to close response body channel"
            r4 = 0
            r5 = 1
            if (r2 == 0) goto L3e
            if (r2 != r5) goto L36
            java.lang.Object r7 = r0.L$1
            io.ktor.utils.io.ByteReadChannel r7 = (io.ktor.utils.io.ByteReadChannel) r7
            java.lang.Object r0 = r0.L$0
            io.ktor.client.statement.HttpResponse r0 = (io.ktor.client.statement.HttpResponse) r0
            kotlin.ResultKt.throwOnFailure(r8)     // Catch: java.lang.Throwable -> L34
            goto L62
        L34:
            r8 = move-exception
            goto L92
        L36:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r8)
            throw r7
        L3e:
            kotlin.ResultKt.throwOnFailure(r8)
            boolean r8 = io.ktor.client.plugins.DoubleReceivePluginKt.isSaved(r7)
            if (r8 == 0) goto Lb5
            io.ktor.utils.io.ByteReadChannel r8 = r7.getRawContent()
            java.lang.Object r7 = kotlin.coroutines.jvm.internal.SpillingKt.nullOutSpilledVariable(r7)     // Catch: java.lang.Throwable -> L8e
            r0.L$0 = r7     // Catch: java.lang.Throwable -> L8e
            r0.L$1 = r8     // Catch: java.lang.Throwable -> L8e
            r0.I$0 = r4     // Catch: java.lang.Throwable -> L8e
            r0.label = r5     // Catch: java.lang.Throwable -> L8e
            r7 = 0
            java.lang.Object r7 = io.ktor.utils.io.ByteReadChannel.awaitContent$default(r8, r4, r0, r5, r7)     // Catch: java.lang.Throwable -> L8e
            if (r7 != r1) goto L5f
            return r1
        L5f:
            r6 = r8
            r8 = r7
            r7 = r6
        L62:
            java.lang.Boolean r8 = (java.lang.Boolean) r8     // Catch: java.lang.Throwable -> L34
            boolean r8 = r8.booleanValue()     // Catch: java.lang.Throwable -> L34
            kotlin.Result$Companion r0 = kotlin.Result.Companion     // Catch: java.lang.Throwable -> L74
            io.ktor.utils.io.ByteReadChannelKt.cancel(r7)     // Catch: java.lang.Throwable -> L74
            kotlin.Unit r7 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L74
            java.lang.Object r7 = kotlin.Result.m8149constructorimpl(r7)     // Catch: java.lang.Throwable -> L74
            goto L7f
        L74:
            r7 = move-exception
            kotlin.Result$Companion r0 = kotlin.Result.Companion
            java.lang.Object r7 = kotlin.ResultKt.createFailure(r7)
            java.lang.Object r7 = kotlin.Result.m8149constructorimpl(r7)
        L7f:
            java.lang.Throwable r7 = kotlin.Result.m8150exceptionOrNullimpl(r7)
            if (r7 == 0) goto L8a
            org.slf4j.Logger r0 = io.ktor.client.plugins.HttpRequestRetryKt.LOGGER
            r0.debug(r3, r7)
        L8a:
            if (r8 == 0) goto Lb5
            r4 = r5
            goto Lb5
        L8e:
            r7 = move-exception
            r6 = r8
            r8 = r7
            r7 = r6
        L92:
            kotlin.Result$Companion r0 = kotlin.Result.Companion     // Catch: java.lang.Throwable -> L9e
            io.ktor.utils.io.ByteReadChannelKt.cancel(r7)     // Catch: java.lang.Throwable -> L9e
            kotlin.Unit r7 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L9e
            java.lang.Object r7 = kotlin.Result.m8149constructorimpl(r7)     // Catch: java.lang.Throwable -> L9e
            goto La9
        L9e:
            r7 = move-exception
            kotlin.Result$Companion r0 = kotlin.Result.Companion
            java.lang.Object r7 = kotlin.ResultKt.createFailure(r7)
            java.lang.Object r7 = kotlin.Result.m8149constructorimpl(r7)
        La9:
            java.lang.Throwable r7 = kotlin.Result.m8150exceptionOrNullimpl(r7)
            if (r7 == 0) goto Lb4
            org.slf4j.Logger r0 = io.ktor.client.plugins.HttpRequestRetryKt.LOGGER
            r0.debug(r3, r7)
        Lb4:
            throw r8
        Lb5:
            java.lang.Boolean r7 = kotlin.coroutines.jvm.internal.Boxing.boxBoolean(r4)
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.client.plugins.HttpRequestRetryKt.throwOnInvalidResponseBody(io.ktor.client.statement.HttpResponse, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
