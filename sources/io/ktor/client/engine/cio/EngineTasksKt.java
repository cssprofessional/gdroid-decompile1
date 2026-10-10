package io.ktor.client.engine.cio;

import io.ktor.client.plugins.HttpTimeoutCapability;
import io.ktor.client.plugins.HttpTimeoutConfig;
import io.ktor.client.request.HttpRequestData;
import io.ktor.client.request.HttpRequestKt;
import io.ktor.http.Headers;
import io.ktor.http.HttpHeaders;
import io.ktor.http.HttpMethod;
import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: EngineTasks.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class EngineTasksKt {
    public static final boolean requiresDedicatedConnection(HttpRequestData httpRequestData) {
        HttpMethod.Companion companion;
        Intrinsics.checkNotNullParameter(httpRequestData, "<this>");
        List<Headers> listListOf = CollectionsKt__CollectionsKt.listOf((Object[]) new Headers[]{httpRequestData.getHeaders(), httpRequestData.getBody().getHeaders()});
        if (listListOf != null && listListOf.isEmpty()) {
            companion = HttpMethod.Companion;
            if (CollectionsKt__CollectionsKt.listOf((Object[]) new HttpMethod[]{companion.getGet(), companion.getHead()}).contains(httpRequestData.getMethod())) {
                return false;
            }
        } else {
            for (Headers headers : listListOf) {
                HttpHeaders httpHeaders = HttpHeaders.INSTANCE;
                if (Intrinsics.areEqual(headers.get(httpHeaders.getConnection()), "close") || headers.contains(httpHeaders.getUpgrade())) {
                    break;
                }
            }
            companion = HttpMethod.Companion;
            if (CollectionsKt__CollectionsKt.listOf((Object[]) new HttpMethod[]{companion.getGet(), companion.getHead()}).contains(httpRequestData.getMethod()) && !containsCustomTimeouts(httpRequestData) && !HttpRequestKt.isSseRequest(httpRequestData)) {
                return false;
            }
        }
        return true;
    }

    public static final boolean containsCustomTimeouts(HttpRequestData httpRequestData) {
        HttpTimeoutConfig httpTimeoutConfig = (HttpTimeoutConfig) httpRequestData.getCapabilityOrNull(HttpTimeoutCapability.INSTANCE);
        if (httpTimeoutConfig != null) {
            return (httpTimeoutConfig.getConnectTimeoutMillis() == null && httpTimeoutConfig.getSocketTimeoutMillis() == null) ? false : true;
        }
        return false;
    }
}
