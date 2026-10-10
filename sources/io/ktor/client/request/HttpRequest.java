package io.ktor.client.request;

import io.ktor.client.call.HttpClientCall;
import io.ktor.http.HttpMessage;
import io.ktor.http.HttpMethod;
import io.ktor.http.Url;
import io.ktor.http.content.OutgoingContent;
import io.ktor.util.Attributes;
import kotlin.coroutines.CoroutineContext;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: HttpRequest.kt */
/* JADX INFO: loaded from: classes2.dex */
public interface HttpRequest extends HttpMessage, CoroutineScope {
    Attributes getAttributes();

    HttpClientCall getCall();

    OutgoingContent getContent();

    HttpMethod getMethod();

    Url getUrl();

    default CoroutineContext getCoroutineContext() {
        return getCall().getCoroutineContext();
    }
}
