package io.ktor.client.plugins;

import io.ktor.client.network.sockets.ConnectTimeoutException;
import io.ktor.client.network.sockets.TimeoutExceptionsKt;
import io.ktor.client.plugins.api.ClientPlugin;
import io.ktor.client.plugins.api.ClientPluginBuilder;
import io.ktor.client.plugins.api.CreatePluginUtilsKt;
import io.ktor.client.plugins.api.Send;
import io.ktor.client.request.ClientUpgradeContent;
import io.ktor.client.request.HttpRequestBuilder;
import io.ktor.client.request.HttpRequestData;
import io.ktor.http.URLProtocolKt;
import io.ktor.util.logging.KtorSimpleLoggerJvmKt;
import java.net.SocketTimeoutException;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineName;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Job;
import org.slf4j.Logger;
import org.tukaani.xz.common.Util;

/* JADX INFO: compiled from: HttpTimeout.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class HttpTimeoutKt {
    public static final Logger LOGGER = KtorSimpleLoggerJvmKt.KtorSimpleLogger("io.ktor.client.plugins.HttpTimeout");
    public static final ClientPlugin<HttpTimeoutConfig> HttpTimeout = CreatePluginUtilsKt.createClientPlugin("HttpTimeout", HttpTimeoutKt$HttpTimeout$2.INSTANCE, new Function1() { // from class: io.ktor.client.plugins.HttpTimeoutKt$$ExternalSyntheticLambda0
        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Object obj) {
            return HttpTimeoutKt.HttpTimeout$lambda$1((ClientPluginBuilder) obj);
        }
    });

    public static final boolean HttpTimeout$lambda$1$hasNotNullTimeouts(Long l, Long l2, Long l3, boolean z) {
        return ((!z || l == null) && l2 == null && l3 == null) ? false : true;
    }

    public static final Unit HttpTimeout$lambda$1(ClientPluginBuilder createClientPlugin) {
        Intrinsics.checkNotNullParameter(createClientPlugin, "$this$createClientPlugin");
        createClientPlugin.on(Send.INSTANCE, new HttpTimeoutKt$HttpTimeout$3$1(((HttpTimeoutConfig) createClientPlugin.getPluginConfig()).getRequestTimeoutMillis(), ((HttpTimeoutConfig) createClientPlugin.getPluginConfig()).getConnectTimeoutMillis(), ((HttpTimeoutConfig) createClientPlugin.getPluginConfig()).getSocketTimeoutMillis(), null));
        return Unit.INSTANCE;
    }

    public static final boolean getSupportsRequestTimeout(HttpRequestBuilder httpRequestBuilder) {
        if (URLProtocolKt.isWebsocket(httpRequestBuilder.getUrl().getProtocol()) || (httpRequestBuilder.getBody() instanceof ClientUpgradeContent)) {
            return false;
        }
        httpRequestBuilder.getBody();
        return true;
    }

    public static final void applyRequestTimeout(CoroutineScope coroutineScope, HttpRequestBuilder httpRequestBuilder, Long l) {
        if (l == null || l.longValue() == Util.VLI_MAX) {
            return;
        }
        final Job jobLaunch$default = BuildersKt__Builders_commonKt.launch$default(coroutineScope, new CoroutineName("request-timeout"), null, new HttpTimeoutKt$applyRequestTimeout$killer$1(l, httpRequestBuilder, httpRequestBuilder.getExecutionContext(), null), 2, null);
        httpRequestBuilder.getExecutionContext().invokeOnCompletion(new Function1() { // from class: io.ktor.client.plugins.HttpTimeoutKt$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return HttpTimeoutKt.applyRequestTimeout$lambda$0(jobLaunch$default, (Throwable) obj);
            }
        });
    }

    public static final Unit applyRequestTimeout$lambda$0(Job job, Throwable th) {
        Job.DefaultImpls.cancel$default(job, null, 1, null);
        return Unit.INSTANCE;
    }

    public static /* synthetic */ ConnectTimeoutException ConnectTimeoutException$default(HttpRequestData httpRequestData, Throwable th, int i, Object obj) {
        if ((i & 2) != 0) {
            th = null;
        }
        return ConnectTimeoutException(httpRequestData, th);
    }

    public static final ConnectTimeoutException ConnectTimeoutException(HttpRequestData request, Throwable th) {
        Object connectTimeoutMillis;
        Intrinsics.checkNotNullParameter(request, "request");
        StringBuilder sb = new StringBuilder();
        sb.append("Connect timeout has expired [url=");
        sb.append(request.getUrl());
        sb.append(", connect_timeout=");
        HttpTimeoutConfig httpTimeoutConfig = (HttpTimeoutConfig) request.getCapabilityOrNull(HttpTimeoutCapability.INSTANCE);
        if (httpTimeoutConfig == null || (connectTimeoutMillis = httpTimeoutConfig.getConnectTimeoutMillis()) == null) {
            connectTimeoutMillis = "unknown";
        }
        sb.append(connectTimeoutMillis);
        sb.append(" ms]");
        return new ConnectTimeoutException(sb.toString(), th);
    }

    public static final SocketTimeoutException SocketTimeoutException(HttpRequestData request, Throwable th) {
        Object socketTimeoutMillis;
        Intrinsics.checkNotNullParameter(request, "request");
        StringBuilder sb = new StringBuilder();
        sb.append("Socket timeout has expired [url=");
        sb.append(request.getUrl());
        sb.append(", socket_timeout=");
        HttpTimeoutConfig httpTimeoutConfig = (HttpTimeoutConfig) request.getCapabilityOrNull(HttpTimeoutCapability.INSTANCE);
        if (httpTimeoutConfig == null || (socketTimeoutMillis = httpTimeoutConfig.getSocketTimeoutMillis()) == null) {
            socketTimeoutMillis = "unknown";
        }
        sb.append(socketTimeoutMillis);
        sb.append("] ms");
        return TimeoutExceptionsKt.SocketTimeoutException(sb.toString(), th);
    }
}
