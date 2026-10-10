package io.ktor.client.plugins;

import io.ktor.client.HttpClient;
import io.ktor.util.AttributeKey;
import io.ktor.util.Attributes;
import io.ktor.util.reflect.TypeInfo;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import kotlin.reflect.KType;

/* JADX INFO: compiled from: HttpClientPlugin.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class HttpClientPluginKt {
    public static final AttributeKey<Attributes> PLUGIN_INSTALLED_LIST;

    public static final AttributeKey<Attributes> getPLUGIN_INSTALLED_LIST() {
        return PLUGIN_INSTALLED_LIST;
    }

    public static final <B, F> F pluginOrNull(HttpClient httpClient, HttpClientPlugin<? extends B, F> plugin) {
        Intrinsics.checkNotNullParameter(httpClient, "<this>");
        Intrinsics.checkNotNullParameter(plugin, "plugin");
        Attributes attributes = (Attributes) httpClient.getAttributes().getOrNull(PLUGIN_INSTALLED_LIST);
        if (attributes != null) {
            return (F) attributes.getOrNull(plugin.getKey());
        }
        return null;
    }

    public static final <B, F> F plugin(HttpClient httpClient, HttpClientPlugin<? extends B, F> plugin) {
        Intrinsics.checkNotNullParameter(httpClient, "<this>");
        Intrinsics.checkNotNullParameter(plugin, "plugin");
        F f = (F) pluginOrNull(httpClient, plugin);
        if (f != null) {
            return f;
        }
        throw new IllegalStateException("Plugin " + plugin + " is not installed. Consider using `install(" + plugin.getKey() + ")` in client config first.");
    }

    static {
        KType kTypeTypeOf;
        KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(Attributes.class);
        try {
            kTypeTypeOf = Reflection.typeOf(Attributes.class);
        } catch (Throwable unused) {
            kTypeTypeOf = null;
        }
        PLUGIN_INSTALLED_LIST = new AttributeKey<>("ApplicationPluginRegistry", new TypeInfo(orCreateKotlinClass, kTypeTypeOf));
    }
}
