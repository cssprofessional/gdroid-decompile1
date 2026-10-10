package io.ktor.http;

import io.ktor.http.HttpMethod;
import java.util.Set;
import kotlin.collections.SetsKt__SetsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: HttpMethod.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class HttpMethodKt {
    public static final Set<HttpMethod> REQUESTS_WITHOUT_BODY;

    static {
        HttpMethod.Companion companion = HttpMethod.Companion;
        REQUESTS_WITHOUT_BODY = SetsKt__SetsKt.setOf((Object[]) new HttpMethod[]{companion.getGet(), companion.getHead(), companion.getOptions(), new HttpMethod("TRACE")});
    }

    public static final boolean getSupportsRequestBody(HttpMethod httpMethod) {
        Intrinsics.checkNotNullParameter(httpMethod, "<this>");
        return !REQUESTS_WITHOUT_BODY.contains(httpMethod);
    }
}
