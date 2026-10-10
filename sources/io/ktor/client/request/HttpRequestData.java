package io.ktor.client.request;

import io.ktor.client.engine.HttpClientEngineCapability;
import io.ktor.client.engine.HttpClientEngineCapabilityKt;
import io.ktor.http.Headers;
import io.ktor.http.HttpMethod;
import io.ktor.http.Url;
import io.ktor.http.content.OutgoingContent;
import io.ktor.util.Attributes;
import java.util.Map;
import java.util.Set;
import kotlin.collections.SetsKt__SetsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.Job;

/* JADX INFO: compiled from: HttpRequest.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class HttpRequestData {
    public final Attributes attributes;
    public final OutgoingContent body;
    public final Job executionContext;
    public final Headers headers;
    public final HttpMethod method;
    public final Set<HttpClientEngineCapability<?>> requiredCapabilities;
    public final Url url;

    public HttpRequestData(Url url, HttpMethod method, Headers headers, OutgoingContent body, Job executionContext, Attributes attributes) {
        Set<HttpClientEngineCapability<?>> setKeySet;
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(method, "method");
        Intrinsics.checkNotNullParameter(headers, "headers");
        Intrinsics.checkNotNullParameter(body, "body");
        Intrinsics.checkNotNullParameter(executionContext, "executionContext");
        Intrinsics.checkNotNullParameter(attributes, "attributes");
        this.url = url;
        this.method = method;
        this.headers = headers;
        this.body = body;
        this.executionContext = executionContext;
        this.attributes = attributes;
        Map map = (Map) attributes.getOrNull(HttpClientEngineCapabilityKt.getENGINE_CAPABILITIES_KEY());
        this.requiredCapabilities = (map == null || (setKeySet = map.keySet()) == null) ? SetsKt__SetsKt.emptySet() : setKeySet;
    }

    public final Url getUrl() {
        return this.url;
    }

    public final HttpMethod getMethod() {
        return this.method;
    }

    public final Headers getHeaders() {
        return this.headers;
    }

    public final OutgoingContent getBody() {
        return this.body;
    }

    public final Job getExecutionContext() {
        return this.executionContext;
    }

    public final Attributes getAttributes() {
        return this.attributes;
    }

    public final <T> T getCapabilityOrNull(HttpClientEngineCapability<T> key) {
        Intrinsics.checkNotNullParameter(key, "key");
        Map map = (Map) this.attributes.getOrNull(HttpClientEngineCapabilityKt.getENGINE_CAPABILITIES_KEY());
        if (map != null) {
            return (T) map.get(key);
        }
        return null;
    }

    public final Set<HttpClientEngineCapability<?>> getRequiredCapabilities$ktor_client_core() {
        return this.requiredCapabilities;
    }

    public String toString() {
        return "HttpRequestData(url=" + this.url + ", method=" + this.method + ')';
    }
}
