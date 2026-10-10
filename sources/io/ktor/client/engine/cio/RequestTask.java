package io.ktor.client.engine.cio;

import io.ktor.client.request.HttpRequestData;
import io.ktor.client.request.HttpResponseData;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CompletableDeferred;

/* JADX INFO: compiled from: EngineTasks.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class RequestTask {
    public final CoroutineContext context;
    public final HttpRequestData request;
    public final CompletableDeferred<HttpResponseData> response;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof RequestTask)) {
            return false;
        }
        RequestTask requestTask = (RequestTask) obj;
        return Intrinsics.areEqual(this.request, requestTask.request) && Intrinsics.areEqual(this.response, requestTask.response) && Intrinsics.areEqual(this.context, requestTask.context);
    }

    public int hashCode() {
        return (((this.request.hashCode() * 31) + this.response.hashCode()) * 31) + this.context.hashCode();
    }

    public String toString() {
        return "RequestTask(request=" + this.request + ", response=" + this.response + ", context=" + this.context + ')';
    }

    public RequestTask(HttpRequestData request, CompletableDeferred<HttpResponseData> response, CoroutineContext context) {
        Intrinsics.checkNotNullParameter(request, "request");
        Intrinsics.checkNotNullParameter(response, "response");
        Intrinsics.checkNotNullParameter(context, "context");
        this.request = request;
        this.response = response;
        this.context = context;
    }

    public final HttpRequestData getRequest() {
        return this.request;
    }

    public final CompletableDeferred<HttpResponseData> getResponse() {
        return this.response;
    }

    public final CoroutineContext getContext() {
        return this.context;
    }
}
