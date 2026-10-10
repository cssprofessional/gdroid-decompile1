package io.ktor.client.call;

import io.ktor.client.HttpClient;
import io.ktor.client.statement.HttpResponse;
import io.ktor.http.Headers;
import io.ktor.utils.io.ByteReadChannel;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: DelegatedCall.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class DelegatedCall extends HttpClientCall {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DelegatedCall(HttpClient client, HttpClientCall originCall, Function1<? super HttpResponse, ? extends ByteReadChannel> responseContent, Headers responseHeaders) {
        super(client);
        Intrinsics.checkNotNullParameter(client, "client");
        Intrinsics.checkNotNullParameter(originCall, "originCall");
        Intrinsics.checkNotNullParameter(responseContent, "responseContent");
        Intrinsics.checkNotNullParameter(responseHeaders, "responseHeaders");
        setRequest(new DelegatedRequest(this, originCall.getRequest()));
        setResponse(new DelegatedResponse(this, originCall.getResponse(), responseContent, responseHeaders));
    }
}
