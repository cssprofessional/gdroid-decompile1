package io.ktor.client.plugins.api;

import io.ktor.client.HttpClient;
import io.ktor.client.request.HttpRequestBuilder;
import io.ktor.client.statement.HttpResponse;
import io.ktor.util.AttributeKey;
import io.ktor.util.reflect.TypeInfo;
import io.ktor.utils.io.ByteReadChannel;
import java.util.ArrayList;
import java.util.List;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.functions.Function5;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ClientPluginBuilder.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class ClientPluginBuilder<PluginConfig> {
    public final HttpClient client;
    public final List<HookHandler<?>> hooks;
    public final AttributeKey<ClientPluginInstance<PluginConfig>> key;
    public Function0<Unit> onClose;
    public final PluginConfig pluginConfig;

    public ClientPluginBuilder(AttributeKey<ClientPluginInstance<PluginConfig>> key, HttpClient client, PluginConfig pluginConfig) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(client, "client");
        Intrinsics.checkNotNullParameter(pluginConfig, "pluginConfig");
        this.key = key;
        this.client = client;
        this.pluginConfig = pluginConfig;
        this.hooks = new ArrayList();
        this.onClose = new Function0() { // from class: io.ktor.client.plugins.api.ClientPluginBuilder$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Unit.INSTANCE;
            }
        };
    }

    public final HttpClient getClient() {
        return this.client;
    }

    public final PluginConfig getPluginConfig() {
        return this.pluginConfig;
    }

    public final List<HookHandler<?>> getHooks$ktor_client_core() {
        return this.hooks;
    }

    public final Function0<Unit> getOnClose$ktor_client_core() {
        return this.onClose;
    }

    public final void onRequest(Function4<? super OnRequestContext, ? super HttpRequestBuilder, Object, ? super Continuation<? super Unit>, ? extends Object> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        on(RequestHook.INSTANCE, block);
    }

    public final void transformResponseBody(Function5<? super TransformResponseBodyContext, ? super HttpResponse, ? super ByteReadChannel, ? super TypeInfo, ? super Continuation<Object>, ? extends Object> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        on(TransformResponseBodyHook.INSTANCE, block);
    }

    public final <HookHandler> void on(ClientHook<HookHandler> hook, HookHandler hookhandler) {
        Intrinsics.checkNotNullParameter(hook, "hook");
        this.hooks.add(new HookHandler<>(hook, hookhandler));
    }
}
