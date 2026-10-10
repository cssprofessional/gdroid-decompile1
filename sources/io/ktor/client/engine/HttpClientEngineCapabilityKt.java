package io.ktor.client.engine;

import io.ktor.client.plugins.HttpTimeoutCapability;
import io.ktor.util.AttributeKey;
import io.ktor.util.reflect.TypeInfo;
import java.util.Map;
import java.util.Set;
import kotlin.collections.SetsKt__SetsJVMKt;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import kotlin.reflect.KType;
import kotlin.reflect.KTypeProjection;

/* JADX INFO: compiled from: HttpClientEngineCapability.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class HttpClientEngineCapabilityKt {
    public static final Set<HttpClientEngineCapability<?>> DEFAULT_CAPABILITIES;
    public static final AttributeKey<Map<HttpClientEngineCapability<?>, Object>> ENGINE_CAPABILITIES_KEY;

    public static final AttributeKey<Map<HttpClientEngineCapability<?>, Object>> getENGINE_CAPABILITIES_KEY() {
        return ENGINE_CAPABILITIES_KEY;
    }

    static {
        KType kTypeMutableCollectionType;
        KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(Map.class);
        try {
            KTypeProjection.Companion companion = KTypeProjection.Companion;
            kTypeMutableCollectionType = Reflection.mutableCollectionType(Reflection.typeOf(Map.class, companion.invariant(Reflection.typeOf(HttpClientEngineCapability.class, companion.getSTAR())), companion.invariant(Reflection.typeOf(Object.class))));
        } catch (Throwable unused) {
            kTypeMutableCollectionType = null;
        }
        ENGINE_CAPABILITIES_KEY = new AttributeKey<>("EngineCapabilities", new TypeInfo(orCreateKotlinClass, kTypeMutableCollectionType));
        DEFAULT_CAPABILITIES = SetsKt__SetsJVMKt.setOf(HttpTimeoutCapability.INSTANCE);
    }
}
