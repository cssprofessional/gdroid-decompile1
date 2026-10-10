package io.ktor.client.request;

import io.ktor.http.URLUtilsKt;
import io.ktor.util.AttributeKey;
import io.ktor.util.AttributesKt;
import io.ktor.util.reflect.TypeInfo;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import kotlin.reflect.KType;

/* JADX INFO: compiled from: HttpRequest.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class HttpRequestKt {
    public static final AttributeKey<ResponseAdapter> ResponseAdapterAttributeKey;

    static {
        KType kTypeTypeOf;
        KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(ResponseAdapter.class);
        try {
            kTypeTypeOf = Reflection.typeOf(ResponseAdapter.class);
        } catch (Throwable unused) {
            kTypeTypeOf = null;
        }
        ResponseAdapterAttributeKey = new AttributeKey<>("ResponseAdapterAttributeKey", new TypeInfo(orCreateKotlinClass, kTypeTypeOf));
    }

    public static final HttpRequestBuilder takeFrom(HttpRequestBuilder httpRequestBuilder, HttpRequestData request) {
        Intrinsics.checkNotNullParameter(httpRequestBuilder, "<this>");
        Intrinsics.checkNotNullParameter(request, "request");
        httpRequestBuilder.setMethod(request.getMethod());
        httpRequestBuilder.setBody(request.getBody());
        httpRequestBuilder.setBodyType((TypeInfo) httpRequestBuilder.getAttributes().getOrNull(RequestBodyKt.getBodyTypeAttributeKey()));
        URLUtilsKt.takeFrom(httpRequestBuilder.getUrl(), request.getUrl());
        httpRequestBuilder.getHeaders().appendAll(request.getHeaders());
        AttributesKt.putAll(httpRequestBuilder.getAttributes(), request.getAttributes());
        return httpRequestBuilder;
    }

    public static final boolean isUpgradeRequest(HttpRequestData httpRequestData) {
        Intrinsics.checkNotNullParameter(httpRequestData, "<this>");
        return httpRequestData.getBody() instanceof ClientUpgradeContent;
    }

    public static final boolean isSseRequest(HttpRequestData httpRequestData) {
        Intrinsics.checkNotNullParameter(httpRequestData, "<this>");
        httpRequestData.getBody();
        return false;
    }

    public static final AttributeKey<ResponseAdapter> getResponseAdapterAttributeKey() {
        return ResponseAdapterAttributeKey;
    }
}
