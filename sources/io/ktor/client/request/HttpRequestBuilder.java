package io.ktor.client.request;

import io.ktor.client.engine.HttpClientEngineCapability;
import io.ktor.client.engine.HttpClientEngineCapabilityKt;
import io.ktor.client.utils.EmptyContent;
import io.ktor.http.Headers;
import io.ktor.http.HeadersBuilder;
import io.ktor.http.HttpMessageBuilder;
import io.ktor.http.HttpMethod;
import io.ktor.http.URLBuilder;
import io.ktor.http.URLUtilsKt;
import io.ktor.http.Url;
import io.ktor.http.content.OutgoingContent;
import io.ktor.util.Attributes;
import io.ktor.util.AttributesJvmKt;
import io.ktor.util.AttributesKt;
import io.ktor.util.StringValuesKt;
import io.ktor.util.reflect.TypeInfo;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.SupervisorKt;

/* JADX INFO: compiled from: HttpRequest.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class HttpRequestBuilder implements HttpMessageBuilder {
    public static final Companion Companion = new Companion(null);
    public final URLBuilder url = new URLBuilder(null, null, 0, null, null, null, null, null, false, 511, null);
    public HttpMethod method = HttpMethod.Companion.getGet();
    public final HeadersBuilder headers = new HeadersBuilder(0, 1, null);
    public Object body = EmptyContent.INSTANCE;
    public Job executionContext = SupervisorKt.SupervisorJob$default(null, 1, null);
    public final Attributes attributes = AttributesJvmKt.Attributes(true);

    public final URLBuilder getUrl() {
        return this.url;
    }

    public final HttpMethod getMethod() {
        return this.method;
    }

    public final void setMethod(HttpMethod httpMethod) {
        Intrinsics.checkNotNullParameter(httpMethod, "<set-?>");
        this.method = httpMethod;
    }

    @Override // io.ktor.http.HttpMessageBuilder
    public HeadersBuilder getHeaders() {
        return this.headers;
    }

    public final Object getBody() {
        return this.body;
    }

    public final void setBody(Object obj) {
        Intrinsics.checkNotNullParameter(obj, "<set-?>");
        this.body = obj;
    }

    public final TypeInfo getBodyType() {
        return (TypeInfo) this.attributes.getOrNull(RequestBodyKt.getBodyTypeAttributeKey());
    }

    public final void setBodyType(TypeInfo typeInfo) {
        if (typeInfo != null) {
            this.attributes.put(RequestBodyKt.getBodyTypeAttributeKey(), typeInfo);
        } else {
            this.attributes.remove(RequestBodyKt.getBodyTypeAttributeKey());
        }
    }

    public final Job getExecutionContext() {
        return this.executionContext;
    }

    public final void setExecutionContext$ktor_client_core(Job job) {
        Intrinsics.checkNotNullParameter(job, "<set-?>");
        this.executionContext = job;
    }

    public final Attributes getAttributes() {
        return this.attributes;
    }

    public final void url(Function2<? super URLBuilder, ? super URLBuilder, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        URLBuilder uRLBuilder = this.url;
        block.invoke(uRLBuilder, uRLBuilder);
    }

    public final HttpRequestData build() {
        Url urlBuild = this.url.build();
        HttpMethod httpMethod = this.method;
        Headers headersBuild = getHeaders().build();
        Object obj = this.body;
        OutgoingContent outgoingContent = obj instanceof OutgoingContent ? (OutgoingContent) obj : null;
        if (outgoingContent != null) {
            return new HttpRequestData(urlBuild, httpMethod, headersBuild, outgoingContent, this.executionContext, this.attributes);
        }
        throw new IllegalStateException(("No request transformation found: " + this.body).toString());
    }

    public final HttpRequestBuilder takeFromWithExecutionContext(HttpRequestBuilder builder) {
        Intrinsics.checkNotNullParameter(builder, "builder");
        this.executionContext = builder.executionContext;
        return takeFrom(builder);
    }

    public final HttpRequestBuilder takeFrom(HttpRequestBuilder builder) {
        Intrinsics.checkNotNullParameter(builder, "builder");
        this.method = builder.method;
        this.body = builder.body;
        setBodyType(builder.getBodyType());
        URLUtilsKt.takeFrom(this.url, builder.url);
        URLBuilder uRLBuilder = this.url;
        uRLBuilder.setEncodedPathSegments(uRLBuilder.getEncodedPathSegments());
        StringValuesKt.appendAll(getHeaders(), builder.getHeaders());
        AttributesKt.putAll(this.attributes, builder.attributes);
        return this;
    }

    public static final Map setCapability$lambda$0() {
        return new LinkedHashMap();
    }

    public final <T> void setCapability(HttpClientEngineCapability<T> key, T capability) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(capability, "capability");
        ((Map) this.attributes.computeIfAbsent(HttpClientEngineCapabilityKt.getENGINE_CAPABILITIES_KEY(), new Function0() { // from class: io.ktor.client.request.HttpRequestBuilder$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return HttpRequestBuilder.setCapability$lambda$0();
            }
        })).put(key, capability);
    }

    public final <T> T getCapabilityOrNull(HttpClientEngineCapability<T> key) {
        Intrinsics.checkNotNullParameter(key, "key");
        Map map = (Map) this.attributes.getOrNull(HttpClientEngineCapabilityKt.getENGINE_CAPABILITIES_KEY());
        if (map != null) {
            return (T) map.get(key);
        }
        return null;
    }

    /* JADX INFO: compiled from: HttpRequest.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public Companion() {
        }
    }
}
