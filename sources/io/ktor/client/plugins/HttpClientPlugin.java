package io.ktor.client.plugins;

import io.ktor.client.HttpClient;
import io.ktor.util.AttributeKey;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* JADX INFO: compiled from: HttpClientPlugin.kt */
/* JADX INFO: loaded from: classes2.dex */
public interface HttpClientPlugin<TConfig, TPlugin> {
    AttributeKey<TPlugin> getKey();

    void install(TPlugin tplugin, HttpClient httpClient);

    TPlugin prepare(Function1<? super TConfig, Unit> function1);
}
