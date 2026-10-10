package io.ktor.client.engine.cio;

import io.ktor.client.plugins.HttpTimeoutKt;
import io.ktor.client.request.HttpRequestData;
import io.ktor.util.ThrowableKt;
import java.net.SocketTimeoutException;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: Exceptions.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class ExceptionsKt {
    public static final Throwable mapToKtor(Throwable th, HttpRequestData request) {
        Intrinsics.checkNotNullParameter(th, "<this>");
        Intrinsics.checkNotNullParameter(request, "request");
        Throwable cause = th.getCause();
        Throwable thSocketTimeoutException = (cause != null ? ThrowableKt.getRootCause(cause) : null) instanceof SocketTimeoutException ? HttpTimeoutKt.SocketTimeoutException(request, th.getCause()) : th.getCause();
        return thSocketTimeoutException == null ? th : thSocketTimeoutException;
    }
}
