package io.ktor.client.plugins.websocket;

import io.ktor.util.AttributeKey;
import io.ktor.util.logging.KtorSimpleLoggerJvmKt;
import io.ktor.util.reflect.TypeInfo;
import io.ktor.websocket.WebSocketExtension;
import java.util.List;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import kotlin.reflect.KType;
import kotlin.reflect.KTypeProjection;
import org.slf4j.Logger;

/* JADX INFO: compiled from: WebSockets.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class WebSocketsKt {
    public static final Logger LOGGER;
    public static final AttributeKey<List<WebSocketExtension<?>>> REQUEST_EXTENSIONS_KEY;
    public static final AttributeKey<WebSockets> WEBSOCKETS_KEY;

    public static final AttributeKey<WebSockets> getWEBSOCKETS_KEY() {
        return WEBSOCKETS_KEY;
    }

    public static final Logger getLOGGER() {
        return LOGGER;
    }

    static {
        KType kTypeTypeOf;
        KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(List.class);
        KType kTypeTypeOf2 = null;
        try {
            KTypeProjection.Companion companion = KTypeProjection.Companion;
            kTypeTypeOf = Reflection.typeOf(List.class, companion.invariant(Reflection.typeOf(WebSocketExtension.class, companion.getSTAR())));
        } catch (Throwable unused) {
            kTypeTypeOf = null;
        }
        REQUEST_EXTENSIONS_KEY = new AttributeKey<>("Websocket extensions", new TypeInfo(orCreateKotlinClass, kTypeTypeOf));
        KClass orCreateKotlinClass2 = Reflection.getOrCreateKotlinClass(WebSockets.class);
        try {
            kTypeTypeOf2 = Reflection.typeOf(WebSockets.class);
        } catch (Throwable unused2) {
        }
        WEBSOCKETS_KEY = new AttributeKey<>("Websocket plugin config", new TypeInfo(orCreateKotlinClass2, kTypeTypeOf2));
        LOGGER = KtorSimpleLoggerJvmKt.KtorSimpleLogger("io.ktor.client.plugins.websocket.WebSockets");
    }
}
