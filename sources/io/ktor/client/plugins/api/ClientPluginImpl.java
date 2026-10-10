package io.ktor.client.plugins.api;

import io.ktor.client.HttpClient;
import io.ktor.util.AttributeKey;
import io.ktor.util.reflect.TypeInfo;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import kotlin.reflect.KType;
import kotlin.reflect.KTypeParameter;
import kotlin.reflect.KTypeProjection;
import kotlin.reflect.KVariance;

/* JADX INFO: compiled from: CreatePluginUtils.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class ClientPluginImpl<PluginConfigT> implements ClientPlugin<PluginConfigT> {
    public final Function1<ClientPluginBuilder<PluginConfigT>, Unit> body;
    public final Function0<PluginConfigT> createConfiguration;
    public final AttributeKey<ClientPluginInstance<PluginConfigT>> key;

    /* JADX WARN: Multi-variable type inference failed */
    public ClientPluginImpl(String name, Function0<? extends PluginConfigT> createConfiguration, Function1<? super ClientPluginBuilder<PluginConfigT>, Unit> body) {
        KType kTypeTypeOf;
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(createConfiguration, "createConfiguration");
        Intrinsics.checkNotNullParameter(body, "body");
        this.createConfiguration = createConfiguration;
        this.body = body;
        KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(ClientPluginInstance.class);
        try {
            KTypeProjection.Companion companion = KTypeProjection.Companion;
            KTypeParameter kTypeParameterTypeParameter = Reflection.typeParameter(Reflection.getOrCreateKotlinClass(ClientPluginImpl.class), "PluginConfigT", KVariance.INVARIANT, false);
            Reflection.setUpperBounds(kTypeParameterTypeParameter, Reflection.typeOf(Object.class));
            kTypeTypeOf = Reflection.typeOf(ClientPluginInstance.class, companion.invariant(Reflection.typeOf(kTypeParameterTypeParameter)));
        } catch (Throwable unused) {
            kTypeTypeOf = null;
        }
        this.key = new AttributeKey<>(name, new TypeInfo(orCreateKotlinClass, kTypeTypeOf));
    }

    @Override // io.ktor.client.plugins.HttpClientPlugin
    public AttributeKey<ClientPluginInstance<PluginConfigT>> getKey() {
        return this.key;
    }

    @Override // io.ktor.client.plugins.HttpClientPlugin
    public ClientPluginInstance<PluginConfigT> prepare(Function1<? super PluginConfigT, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        PluginConfigT pluginconfigtInvoke = this.createConfiguration.invoke();
        block.invoke(pluginconfigtInvoke);
        return new ClientPluginInstance<>(getKey(), pluginconfigtInvoke, this.body);
    }

    @Override // io.ktor.client.plugins.HttpClientPlugin
    public void install(ClientPluginInstance<PluginConfigT> plugin, HttpClient scope) {
        Intrinsics.checkNotNullParameter(plugin, "plugin");
        Intrinsics.checkNotNullParameter(scope, "scope");
        plugin.install(scope);
    }
}
