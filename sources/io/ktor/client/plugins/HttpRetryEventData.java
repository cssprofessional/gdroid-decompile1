package io.ktor.client.plugins;

import io.ktor.client.request.HttpRequestBuilder;
import io.ktor.client.statement.HttpResponse;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: HttpRequestRetry.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class HttpRetryEventData {
    public final Throwable cause;
    public final HttpRequestBuilder request;
    public final HttpResponse response;
    public final int retryCount;

    public HttpRetryEventData(HttpRequestBuilder request, int i, HttpResponse httpResponse, Throwable th) {
        Intrinsics.checkNotNullParameter(request, "request");
        this.request = request;
        this.retryCount = i;
        this.response = httpResponse;
        this.cause = th;
    }

    public final HttpRequestBuilder getRequest() {
        return this.request;
    }

    public final int getRetryCount() {
        return this.retryCount;
    }

    public final HttpResponse getResponse() {
        return this.response;
    }

    public final Throwable getCause() {
        return this.cause;
    }
}
