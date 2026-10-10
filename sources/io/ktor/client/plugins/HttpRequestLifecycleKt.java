package io.ktor.client.plugins;

import io.ktor.client.plugins.api.ClientPlugin;
import io.ktor.client.plugins.api.ClientPluginBuilder;
import io.ktor.client.plugins.api.CreatePluginUtilsKt;
import io.ktor.util.logging.KtorSimpleLoggerJvmKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CompletableJob;
import kotlinx.coroutines.DisposableHandle;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.JobKt;
import org.slf4j.Logger;

/* JADX INFO: compiled from: HttpRequestLifecycle.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class HttpRequestLifecycleKt {
    public static final Logger LOGGER = KtorSimpleLoggerJvmKt.KtorSimpleLogger("io.ktor.client.plugins.HttpRequestLifecycle");
    public static final ClientPlugin<Unit> HttpRequestLifecycle = CreatePluginUtilsKt.createClientPlugin("RequestLifecycle", new Function1() { // from class: io.ktor.client.plugins.HttpRequestLifecycleKt$$ExternalSyntheticLambda0
        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Object obj) {
            return HttpRequestLifecycleKt.HttpRequestLifecycle$lambda$0((ClientPluginBuilder) obj);
        }
    });

    public static final ClientPlugin<Unit> getHttpRequestLifecycle() {
        return HttpRequestLifecycle;
    }

    public static final Unit HttpRequestLifecycle$lambda$0(ClientPluginBuilder createClientPlugin) {
        Intrinsics.checkNotNullParameter(createClientPlugin, "$this$createClientPlugin");
        createClientPlugin.on(SetupRequestContext.INSTANCE, new HttpRequestLifecycleKt$HttpRequestLifecycle$1$1(createClientPlugin, null));
        return Unit.INSTANCE;
    }

    public static final void attachToClientEngineJob(final CompletableJob completableJob, Job job) {
        final DisposableHandle disposableHandleInvokeOnCompletion = job.invokeOnCompletion(new Function1() { // from class: io.ktor.client.plugins.HttpRequestLifecycleKt$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return HttpRequestLifecycleKt.attachToClientEngineJob$lambda$0(completableJob, (Throwable) obj);
            }
        });
        completableJob.invokeOnCompletion(new Function1() { // from class: io.ktor.client.plugins.HttpRequestLifecycleKt$$ExternalSyntheticLambda2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return HttpRequestLifecycleKt.attachToClientEngineJob$lambda$1(disposableHandleInvokeOnCompletion, (Throwable) obj);
            }
        });
    }

    public static final Unit attachToClientEngineJob$lambda$0(CompletableJob completableJob, Throwable th) {
        if (th != null) {
            LOGGER.trace("Cancelling request because engine Job failed with error: " + th);
            JobKt.cancel(completableJob, "Engine failed", th);
        } else {
            LOGGER.trace("Cancelling request because engine Job completed");
            completableJob.complete();
        }
        return Unit.INSTANCE;
    }

    public static final Unit attachToClientEngineJob$lambda$1(DisposableHandle disposableHandle, Throwable th) {
        disposableHandle.dispose();
        return Unit.INSTANCE;
    }
}
