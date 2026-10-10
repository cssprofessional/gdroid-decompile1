package io.ktor.client.request;

import io.ktor.http.Headers;
import io.ktor.http.HttpStatusCode;
import io.ktor.http.content.OutgoingContent;
import io.ktor.utils.io.ByteReadChannel;
import kotlin.coroutines.CoroutineContext;

/* JADX INFO: compiled from: HttpRequest.kt */
/* JADX INFO: loaded from: classes2.dex */
public interface ResponseAdapter {
    Object adapt(HttpRequestData httpRequestData, HttpStatusCode httpStatusCode, Headers headers, ByteReadChannel byteReadChannel, OutgoingContent outgoingContent, CoroutineContext coroutineContext);
}
