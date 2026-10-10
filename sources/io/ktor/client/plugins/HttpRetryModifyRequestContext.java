package io.ktor.client.plugins;

import io.ktor.client.request.HttpRequestBuilder;
import io.ktor.client.statement.HttpResponse;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: HttpRequestRetry.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class HttpRetryModifyRequestContext {
    public final Throwable cause;
    public final HttpRequestBuilder request;
    public final HttpResponse response;
    public final int retryCount;

    public HttpRetryModifyRequestContext(HttpRequestBuilder request, HttpResponse httpResponse, Throwable th, int i) {
        Intrinsics.checkNotNullParameter(request, "request");
        this.request = request;
        this.response = httpResponse;
        this.cause = th;
        this.retryCount = i;
    }
}
