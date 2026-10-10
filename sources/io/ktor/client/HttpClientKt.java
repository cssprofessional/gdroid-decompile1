package io.ktor.client;

import io.ktor.client.engine.HttpClientEngine;
import io.ktor.client.engine.HttpClientEngineConfig;
import io.ktor.client.engine.HttpClientEngineFactory;
import java.io.IOException;
import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.Job;

/* JADX INFO: compiled from: HttpClient.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class HttpClientKt {
    public static final <T extends HttpClientEngineConfig> HttpClient HttpClient(HttpClientEngineFactory<? extends T> engineFactory, Function1<? super HttpClientConfig<T>, Unit> block) {
        Intrinsics.checkNotNullParameter(engineFactory, "engineFactory");
        Intrinsics.checkNotNullParameter(block, "block");
        HttpClientConfig httpClientConfig = new HttpClientConfig();
        block.invoke(httpClientConfig);
        final HttpClientEngine httpClientEngineCreate = engineFactory.create(httpClientConfig.getEngineConfig$ktor_client_core());
        HttpClient httpClient = new HttpClient(httpClientEngineCreate, httpClientConfig, true);
        CoroutineContext.Element element = httpClient.getCoroutineContext().get(Job.Key);
        Intrinsics.checkNotNull(element);
        ((Job) element).invokeOnCompletion(new Function1() { // from class: io.ktor.client.HttpClientKt$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return HttpClientKt.HttpClient$lambda$1(httpClientEngineCreate, (Throwable) obj);
            }
        });
        return httpClient;
    }

    public static final Unit HttpClient$lambda$1(HttpClientEngine httpClientEngine, Throwable th) throws IOException {
        httpClientEngine.close();
        return Unit.INSTANCE;
    }
}
