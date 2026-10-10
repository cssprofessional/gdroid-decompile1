package io.ktor.client.call;

import io.ktor.client.statement.HttpResponse;
import io.ktor.http.Headers;
import io.ktor.utils.io.ByteReadChannel;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: DelegatedCall.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class DelegatedCallKt {
    public static /* synthetic */ HttpClientCall replaceResponse$default(HttpClientCall httpClientCall, Headers headers, Function1 function1, int i, Object obj) {
        if ((i & 1) != 0) {
            headers = httpClientCall.getResponse().getHeaders();
        }
        return replaceResponse(httpClientCall, headers, function1);
    }

    public static final HttpClientCall replaceResponse(HttpClientCall httpClientCall, Headers headers, Function1<? super HttpResponse, ? extends ByteReadChannel> content) {
        Intrinsics.checkNotNullParameter(httpClientCall, "<this>");
        Intrinsics.checkNotNullParameter(headers, "headers");
        Intrinsics.checkNotNullParameter(content, "content");
        return new DelegatedCall(httpClientCall.getClient(), httpClientCall, content, headers);
    }
}
