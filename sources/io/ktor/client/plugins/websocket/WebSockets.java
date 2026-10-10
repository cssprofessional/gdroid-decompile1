package io.ktor.client.plugins.websocket;

import io.ktor.client.HttpClient;
import io.ktor.client.call.HttpClientCall;
import io.ktor.client.plugins.HttpClientPlugin;
import io.ktor.client.request.HttpRequestBuilder;
import io.ktor.client.request.HttpRequestPipeline;
import io.ktor.client.request.UtilsKt;
import io.ktor.client.statement.HttpResponsePipeline;
import io.ktor.http.HttpHeaders;
import io.ktor.serialization.WebsocketContentConverter;
import io.ktor.util.AttributeKey;
import io.ktor.util.reflect.TypeInfo;
import io.ktor.websocket.DefaultWebSocketSession;
import io.ktor.websocket.DefaultWebSocketSessionKt;
import io.ktor.websocket.WebSocketExtension;
import io.ktor.websocket.WebSocketExtensionHeader;
import io.ktor.websocket.WebSocketExtensionHeaderKt;
import io.ktor.websocket.WebSocketExtensionsConfig;
import io.ktor.websocket.WebSocketSession;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__MutableCollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import kotlin.reflect.KType;

/* JADX INFO: compiled from: WebSockets.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class WebSockets {
    public static final Plugin Plugin = new Plugin(0 == true ? 1 : 0);
    public static final AttributeKey<WebSockets> key;
    public final WebSocketExtensionsConfig extensionsConfig;
    public final long maxFrameSize;
    public final long pingIntervalMillis;

    public WebSockets(long j, long j2, WebSocketExtensionsConfig extensionsConfig, WebsocketContentConverter websocketContentConverter) {
        Intrinsics.checkNotNullParameter(extensionsConfig, "extensionsConfig");
        this.pingIntervalMillis = j;
        this.maxFrameSize = j2;
        this.extensionsConfig = extensionsConfig;
    }

    public /* synthetic */ WebSockets(long j, long j2, WebSocketExtensionsConfig webSocketExtensionsConfig, WebsocketContentConverter websocketContentConverter, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(j, j2, webSocketExtensionsConfig, (i & 8) != 0 ? null : websocketContentConverter);
    }

    public final long getMaxFrameSize() {
        return this.maxFrameSize;
    }

    /* JADX WARN: Multi-variable type inference failed */
    static {
        KType kTypeTypeOf = null;
        KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(WebSockets.class);
        try {
            kTypeTypeOf = Reflection.typeOf(WebSockets.class);
        } catch (Throwable unused) {
        }
        key = new AttributeKey<>("Websocket", new TypeInfo(orCreateKotlinClass, kTypeTypeOf));
    }

    public WebSockets() {
        this(0L, 2147483647L, new WebSocketExtensionsConfig(), null, 8, null);
    }

    public final void installExtensions(HttpRequestBuilder httpRequestBuilder) {
        List<WebSocketExtension<?>> listBuild = this.extensionsConfig.build();
        httpRequestBuilder.getAttributes().put(WebSocketsKt.REQUEST_EXTENSIONS_KEY, listBuild);
        ArrayList arrayList = new ArrayList();
        Iterator<T> it = listBuild.iterator();
        while (it.hasNext()) {
            CollectionsKt__MutableCollectionsKt.addAll(arrayList, ((WebSocketExtension) it.next()).getProtocols());
        }
        addNegotiatedProtocols(httpRequestBuilder, arrayList);
    }

    public final List<WebSocketExtension<?>> completeNegotiation(HttpClientCall httpClientCall) {
        List<WebSocketExtensionHeader> listEmptyList;
        String str = httpClientCall.getResponse().getHeaders().get(HttpHeaders.INSTANCE.getSecWebSocketExtensions());
        if (str == null || (listEmptyList = WebSocketExtensionHeaderKt.parseWebSocketExtensions(str)) == null) {
            listEmptyList = CollectionsKt__CollectionsKt.emptyList();
        }
        List list = (List) httpClientCall.getAttributes().get(WebSocketsKt.REQUEST_EXTENSIONS_KEY);
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            if (((WebSocketExtension) obj).clientNegotiation(listEmptyList)) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }

    public final void addNegotiatedProtocols(HttpRequestBuilder httpRequestBuilder, List<WebSocketExtensionHeader> list) {
        if (list.isEmpty()) {
            return;
        }
        UtilsKt.header(httpRequestBuilder, HttpHeaders.INSTANCE.getSecWebSocketExtensions(), CollectionsKt___CollectionsKt.joinToString$default(list, ",", null, null, 0, null, null, 62, null));
    }

    public final DefaultWebSocketSession convertSessionToDefault$ktor_client_core(WebSocketSession session) {
        Intrinsics.checkNotNullParameter(session, "session");
        if (session instanceof DefaultWebSocketSession) {
            return (DefaultWebSocketSession) session;
        }
        long j = this.pingIntervalMillis;
        DefaultWebSocketSession DefaultWebSocketSession = DefaultWebSocketSessionKt.DefaultWebSocketSession(session, j, ((long) 2) * j);
        DefaultWebSocketSession.setMaxFrameSize(this.maxFrameSize);
        return DefaultWebSocketSession;
    }

    /* JADX INFO: compiled from: WebSockets.kt */
    public static final class Config {
        public final WebSocketExtensionsConfig extensionsConfig = new WebSocketExtensionsConfig();
        public long maxFrameSize = 2147483647L;
        public long pingIntervalMillis;

        public final WebsocketContentConverter getContentConverter() {
            return null;
        }

        public final WebSocketExtensionsConfig getExtensionsConfig$ktor_client_core() {
            return this.extensionsConfig;
        }

        public final long getPingIntervalMillis() {
            return this.pingIntervalMillis;
        }

        public final void setPingIntervalMillis(long j) {
            this.pingIntervalMillis = j;
        }

        public final long getMaxFrameSize() {
            return this.maxFrameSize;
        }
    }

    /* JADX INFO: compiled from: WebSockets.kt */
    public static final class Plugin implements HttpClientPlugin<Config, WebSockets> {
        public /* synthetic */ Plugin(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public Plugin() {
        }

        @Override // io.ktor.client.plugins.HttpClientPlugin
        public AttributeKey<WebSockets> getKey() {
            return WebSockets.key;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // io.ktor.client.plugins.HttpClientPlugin
        public WebSockets prepare(Function1<? super Config, Unit> block) {
            Intrinsics.checkNotNullParameter(block, "block");
            Config config = new Config();
            block.invoke(config);
            long pingIntervalMillis = config.getPingIntervalMillis();
            long maxFrameSize = config.getMaxFrameSize();
            WebSocketExtensionsConfig extensionsConfig$ktor_client_core = config.getExtensionsConfig$ktor_client_core();
            config.getContentConverter();
            return new WebSockets(pingIntervalMillis, maxFrameSize, extensionsConfig$ktor_client_core, null);
        }

        @Override // io.ktor.client.plugins.HttpClientPlugin
        public void install(WebSockets plugin, HttpClient scope) {
            Intrinsics.checkNotNullParameter(plugin, "plugin");
            Intrinsics.checkNotNullParameter(scope, "scope");
            boolean zContains = scope.getEngine().getSupportedCapabilities().contains(WebSocketExtensionsCapability.INSTANCE);
            scope.getRequestPipeline().intercept(HttpRequestPipeline.Phases.getRender(), new WebSockets$Plugin$install$1(zContains, plugin, null));
            scope.getResponsePipeline().intercept(HttpResponsePipeline.Phases.getTransform(), new WebSockets$Plugin$install$2(plugin, zContains, null));
        }
    }
}
