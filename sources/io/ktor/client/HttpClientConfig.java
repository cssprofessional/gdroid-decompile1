package io.ktor.client;

import io.ktor.client.engine.HttpClientEngineConfig;
import io.ktor.client.plugins.HttpClientPlugin;
import io.ktor.client.plugins.HttpClientPluginKt;
import io.ktor.util.AttributeKey;
import io.ktor.util.Attributes;
import io.ktor.util.AttributesJvmKt;
import io.ktor.util.PlatformUtils;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: HttpClientConfig.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class HttpClientConfig<T extends HttpClientEngineConfig> {
    public boolean expectSuccess;
    public final Map<AttributeKey<?>, Function1<HttpClient, Unit>> plugins = new LinkedHashMap();
    public final Map<AttributeKey<?>, Function1<Object, Unit>> pluginConfigurations = new LinkedHashMap();
    public final Map<String, Function1<HttpClient, Unit>> customInterceptors = new LinkedHashMap();
    public Function1<? super T, Unit> engineConfig = new Function1() { // from class: io.ktor.client.HttpClientConfig$$ExternalSyntheticLambda2
        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Object obj) {
            return HttpClientConfig.engineConfig$lambda$0((HttpClientEngineConfig) obj);
        }
    };
    public boolean followRedirects = true;
    public boolean useDefaultTransformers = true;
    public boolean developmentMode = PlatformUtils.INSTANCE.getIS_DEVELOPMENT_MODE();

    public static final Unit engineConfig$lambda$0(HttpClientEngineConfig httpClientEngineConfig) {
        Intrinsics.checkNotNullParameter(httpClientEngineConfig, "<this>");
        return Unit.INSTANCE;
    }

    public final Function1<T, Unit> getEngineConfig$ktor_client_core() {
        return this.engineConfig;
    }

    public final boolean getFollowRedirects() {
        return this.followRedirects;
    }

    public final boolean getUseDefaultTransformers() {
        return this.useDefaultTransformers;
    }

    public final boolean getExpectSuccess() {
        return this.expectSuccess;
    }

    public static /* synthetic */ void install$default(HttpClientConfig httpClientConfig, HttpClientPlugin httpClientPlugin, Function1 function1, int i, Object obj) {
        if ((i & 2) != 0) {
            function1 = new Function1() { // from class: io.ktor.client.HttpClientConfig$$ExternalSyntheticLambda4
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj2) {
                    return HttpClientConfig.install$lambda$0(obj2);
                }
            };
        }
        httpClientConfig.install(httpClientPlugin, function1);
    }

    public static final Unit install$lambda$0(Object obj) {
        Intrinsics.checkNotNullParameter(obj, "<this>");
        return Unit.INSTANCE;
    }

    public final <TBuilder, TPlugin> void install(final HttpClientPlugin<? extends TBuilder, TPlugin> plugin, final Function1<? super TBuilder, Unit> configure) {
        Intrinsics.checkNotNullParameter(plugin, "plugin");
        Intrinsics.checkNotNullParameter(configure, "configure");
        final Function1<Object, Unit> function1 = this.pluginConfigurations.get(plugin.getKey());
        this.pluginConfigurations.put(plugin.getKey(), new Function1() { // from class: io.ktor.client.HttpClientConfig$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return HttpClientConfig.install$lambda$1(function1, configure, obj);
            }
        });
        if (this.plugins.containsKey(plugin.getKey())) {
            return;
        }
        this.plugins.put(plugin.getKey(), new Function1() { // from class: io.ktor.client.HttpClientConfig$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return HttpClientConfig.install$lambda$2(plugin, (HttpClient) obj);
            }
        });
    }

    public static final Unit install$lambda$1(Function1 function1, Function1 function12, Object obj) {
        Intrinsics.checkNotNullParameter(obj, "<this>");
        if (function1 != null) {
            function1.invoke(obj);
        }
        function12.invoke(obj);
        return Unit.INSTANCE;
    }

    public static final Unit install$lambda$2(HttpClientPlugin httpClientPlugin, HttpClient scope) {
        Intrinsics.checkNotNullParameter(scope, "scope");
        Attributes attributes = (Attributes) scope.getAttributes().computeIfAbsent(HttpClientPluginKt.getPLUGIN_INSTALLED_LIST(), new Function0() { // from class: io.ktor.client.HttpClientConfig$$ExternalSyntheticLambda3
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return HttpClientConfig.install$lambda$2$0();
            }
        });
        Function1<Object, Unit> function1 = scope.getConfig$ktor_client_core().pluginConfigurations.get(httpClientPlugin.getKey());
        Intrinsics.checkNotNull(function1);
        Object objPrepare = httpClientPlugin.prepare(function1);
        httpClientPlugin.install(objPrepare, scope);
        attributes.put(httpClientPlugin.getKey(), objPrepare);
        return Unit.INSTANCE;
    }

    public static final Attributes install$lambda$2$0() {
        return AttributesJvmKt.Attributes(true);
    }

    public final void install(String key, Function1<? super HttpClient, Unit> block) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(block, "block");
        this.customInterceptors.put(key, block);
    }

    public final void install(HttpClient client) {
        Intrinsics.checkNotNullParameter(client, "client");
        Iterator<T> it = this.plugins.values().iterator();
        while (it.hasNext()) {
            ((Function1) it.next()).invoke(client);
        }
        Iterator<T> it2 = this.customInterceptors.values().iterator();
        while (it2.hasNext()) {
            ((Function1) it2.next()).invoke(client);
        }
    }

    public final void plusAssign(HttpClientConfig<? extends T> other) {
        Intrinsics.checkNotNullParameter(other, "other");
        this.followRedirects = other.followRedirects;
        this.useDefaultTransformers = other.useDefaultTransformers;
        this.expectSuccess = other.expectSuccess;
        this.plugins.putAll(other.plugins);
        this.pluginConfigurations.putAll(other.pluginConfigurations);
        this.customInterceptors.putAll(other.customInterceptors);
    }
}
