package io.ktor.client.engine.cio;

import io.ktor.client.plugins.HttpTimeoutCapability;
import io.ktor.client.request.HttpRequestData;
import io.ktor.client.request.HttpRequestKt;
import io.ktor.http.URLProtocolKt;
import io.ktor.util.logging.KtorSimpleLoggerJvmKt;
import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineName;
import kotlinx.coroutines.GlobalScope;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.JobKt;
import org.slf4j.Logger;
import org.tukaani.xz.common.Util;

/* JADX INFO: compiled from: Endpoint.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class EndpointKt {
    public static final Logger LOGGER = KtorSimpleLoggerJvmKt.KtorSimpleLogger("io.ktor.client.engine.cio.Endpoint");

    public static final void setupTimeout(CoroutineContext coroutineContext, HttpRequestData httpRequestData, long j) {
        if (j == Util.VLI_MAX || j == 0) {
            return;
        }
        final Job jobLaunch$default = BuildersKt__Builders_commonKt.launch$default(GlobalScope.INSTANCE, new CoroutineName("cio-request-timeout"), null, new EndpointKt$setupTimeout$timeoutJob$1(j, coroutineContext, httpRequestData, null), 2, null);
        JobKt.getJob(coroutineContext).invokeOnCompletion(new Function1() { // from class: io.ktor.client.engine.cio.EndpointKt$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return EndpointKt.setupTimeout$lambda$0(jobLaunch$default, (Throwable) obj);
            }
        });
    }

    public static final Unit setupTimeout$lambda$0(Job job, Throwable th) {
        Job.DefaultImpls.cancel$default(job, null, 1, null);
        return Unit.INSTANCE;
    }

    public static final long getRequestTimeout(HttpRequestData request, CIOEngineConfig engineConfig) {
        Intrinsics.checkNotNullParameter(request, "request");
        Intrinsics.checkNotNullParameter(engineConfig, "engineConfig");
        return (request.getCapabilityOrNull(HttpTimeoutCapability.INSTANCE) != null || URLProtocolKt.isWebsocket(request.getUrl().getProtocol()) || HttpRequestKt.isUpgradeRequest(request) || HttpRequestKt.isSseRequest(request)) ? Util.VLI_MAX : engineConfig.getRequestTimeout();
    }
}
