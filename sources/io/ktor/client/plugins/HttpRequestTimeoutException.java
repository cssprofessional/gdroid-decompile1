package io.ktor.client.plugins;

import io.ktor.client.request.HttpRequestBuilder;
import io.ktor.client.request.HttpRequestData;
import java.io.IOException;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CopyableThrowable;

/* JADX INFO: compiled from: HttpTimeout.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class HttpRequestTimeoutException extends IOException implements CopyableThrowable<HttpRequestTimeoutException> {
    public final Long timeoutMillis;
    public final String url;

    public /* synthetic */ HttpRequestTimeoutException(String str, Long l, Throwable th, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, l, (i & 4) != 0 ? null : th);
    }

    public HttpRequestTimeoutException(String url, Long l, Throwable th) {
        Intrinsics.checkNotNullParameter(url, "url");
        StringBuilder sb = new StringBuilder();
        sb.append("Request timeout has expired [url=");
        sb.append(url);
        sb.append(", request_timeout=");
        sb.append(l == null ? "unknown" : l);
        sb.append(" ms]");
        super(sb.toString(), th);
        this.url = url;
        this.timeoutMillis = l;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public HttpRequestTimeoutException(HttpRequestBuilder request) {
        Intrinsics.checkNotNullParameter(request, "request");
        String strBuildString = request.getUrl().buildString();
        HttpTimeoutConfig httpTimeoutConfig = (HttpTimeoutConfig) request.getCapabilityOrNull(HttpTimeoutCapability.INSTANCE);
        this(strBuildString, httpTimeoutConfig != null ? httpTimeoutConfig.getRequestTimeoutMillis() : null, null, 4, null);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public HttpRequestTimeoutException(HttpRequestData request) {
        Intrinsics.checkNotNullParameter(request, "request");
        String string = request.getUrl().toString();
        HttpTimeoutConfig httpTimeoutConfig = (HttpTimeoutConfig) request.getCapabilityOrNull(HttpTimeoutCapability.INSTANCE);
        this(string, httpTimeoutConfig != null ? httpTimeoutConfig.getRequestTimeoutMillis() : null, null, 4, null);
    }

    @Override // kotlinx.coroutines.CopyableThrowable
    public HttpRequestTimeoutException createCopy() {
        return new HttpRequestTimeoutException(this.url, this.timeoutMillis, getCause());
    }
}
