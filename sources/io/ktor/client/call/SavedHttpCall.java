package io.ktor.client.call;

import io.ktor.client.HttpClient;
import io.ktor.client.request.HttpRequest;
import io.ktor.client.statement.HttpResponse;
import io.ktor.http.HttpMessagePropertiesKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: SavedCall.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class SavedHttpCall extends HttpClientCall {
    public final boolean allowDoubleReceive;
    public final byte[] responseBody;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SavedHttpCall(HttpClient client, HttpRequest request, HttpResponse response, byte[] responseBody) {
        super(client);
        Intrinsics.checkNotNullParameter(client, "client");
        Intrinsics.checkNotNullParameter(request, "request");
        Intrinsics.checkNotNullParameter(response, "response");
        Intrinsics.checkNotNullParameter(responseBody, "responseBody");
        this.responseBody = responseBody;
        setRequest(new SavedHttpRequest(this, request));
        setResponse(new SavedHttpResponse(this, responseBody, response));
        UtilsKt.checkContentLength(HttpMessagePropertiesKt.contentLength(response), responseBody.length, request.getMethod());
        this.allowDoubleReceive = true;
    }

    @Override // io.ktor.client.call.HttpClientCall
    public boolean getAllowDoubleReceive() {
        return this.allowDoubleReceive;
    }
}
