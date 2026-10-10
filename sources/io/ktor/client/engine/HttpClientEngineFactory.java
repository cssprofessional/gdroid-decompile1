package io.ktor.client.engine;

import io.ktor.client.engine.HttpClientEngineConfig;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* JADX INFO: compiled from: HttpClientEngineFactory.kt */
/* JADX INFO: loaded from: classes2.dex */
public interface HttpClientEngineFactory<T extends HttpClientEngineConfig> {
    HttpClientEngine create(Function1<? super T, Unit> function1);
}
