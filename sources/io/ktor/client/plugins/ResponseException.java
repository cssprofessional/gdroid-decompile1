package io.ktor.client.plugins;

import io.ktor.client.statement.HttpResponse;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: DefaultResponseValidation.kt */
/* JADX INFO: loaded from: classes2.dex */
public class ResponseException extends IllegalStateException {
    public final transient HttpResponse response;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ResponseException(HttpResponse response, String cachedResponseText) {
        super("Bad response: " + response + ". Text: \"" + cachedResponseText + '\"');
        Intrinsics.checkNotNullParameter(response, "response");
        Intrinsics.checkNotNullParameter(cachedResponseText, "cachedResponseText");
        this.response = response;
    }
}
