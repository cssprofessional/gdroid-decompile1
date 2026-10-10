package io.ktor.client.plugins.api;

import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: CreatePluginUtils.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class CreatePluginUtilsKt {
    public static final <PluginConfigT> ClientPlugin<PluginConfigT> createClientPlugin(String name, Function0<? extends PluginConfigT> createConfiguration, Function1<? super ClientPluginBuilder<PluginConfigT>, Unit> body) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(createConfiguration, "createConfiguration");
        Intrinsics.checkNotNullParameter(body, "body");
        return new ClientPluginImpl(name, createConfiguration, body);
    }

    public static final ClientPlugin<Unit> createClientPlugin(String name, Function1<? super ClientPluginBuilder<Unit>, Unit> body) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(body, "body");
        return createClientPlugin(name, new Function0() { // from class: io.ktor.client.plugins.api.CreatePluginUtilsKt$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Unit.INSTANCE;
            }
        }, body);
    }
}
