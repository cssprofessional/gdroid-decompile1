package io.ktor.client.request;

import io.ktor.http.HttpMessageBuilder;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: utils.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class UtilsKt {
    public static final void header(HttpMessageBuilder httpMessageBuilder, String key, Object obj) {
        Intrinsics.checkNotNullParameter(httpMessageBuilder, "<this>");
        Intrinsics.checkNotNullParameter(key, "key");
        if (obj != null) {
            httpMessageBuilder.getHeaders().append(key, obj.toString());
        }
    }
}
