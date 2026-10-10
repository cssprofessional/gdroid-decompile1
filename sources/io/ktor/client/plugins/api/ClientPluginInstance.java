package io.ktor.client.plugins.api;

import io.ktor.client.HttpClient;
import io.ktor.util.AttributeKey;
import java.io.Closeable;
import java.util.Iterator;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ClientPluginInstance.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class ClientPluginInstance<PluginConfig> implements Closeable {
    public final Function1<ClientPluginBuilder<PluginConfig>, Unit> body;
    public final PluginConfig config;
    public final AttributeKey<ClientPluginInstance<PluginConfig>> key;
    public Function0<Unit> onClose;

    /* JADX WARN: Multi-variable type inference failed */
    public ClientPluginInstance(AttributeKey<ClientPluginInstance<PluginConfig>> key, PluginConfig config, Function1<? super ClientPluginBuilder<PluginConfig>, Unit> body) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(config, "config");
        Intrinsics.checkNotNullParameter(body, "body");
        this.key = key;
        this.config = config;
        this.body = body;
        this.onClose = new Function0() { // from class: io.ktor.client.plugins.api.ClientPluginInstance$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Unit.INSTANCE;
            }
        };
    }

    public final void install(HttpClient scope) {
        Intrinsics.checkNotNullParameter(scope, "scope");
        ClientPluginBuilder<PluginConfig> clientPluginBuilder = new ClientPluginBuilder<>(this.key, scope, this.config);
        this.body.invoke(clientPluginBuilder);
        this.onClose = clientPluginBuilder.getOnClose$ktor_client_core();
        Iterator<T> it = clientPluginBuilder.getHooks$ktor_client_core().iterator();
        while (it.hasNext()) {
            ((HookHandler) it.next()).install(scope);
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.onClose.invoke();
    }
}
