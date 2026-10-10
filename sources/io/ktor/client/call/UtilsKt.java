package io.ktor.client.call;

import io.ktor.http.HttpMethod;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: utils.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class UtilsKt {
    public static final void checkContentLength(Long l, long j, HttpMethod method) {
        Intrinsics.checkNotNullParameter(method, "method");
        if (l == null || l.longValue() < 0 || Intrinsics.areEqual(method, HttpMethod.Companion.getHead()) || l.longValue() == j) {
            return;
        }
        throw new IllegalStateException(("Content-Length mismatch: expected " + l.longValue() + " bytes, but received " + j + " bytes").toString());
    }
}
