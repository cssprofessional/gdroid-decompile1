package io.ktor.client.network.sockets;

import java.net.SocketTimeoutException;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: TimeoutExceptions.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class TimeoutExceptionsKt {
    public static final SocketTimeoutException SocketTimeoutException(String message, Throwable th) {
        Intrinsics.checkNotNullParameter(message, "message");
        SocketTimeoutException socketTimeoutException = new SocketTimeoutException(message);
        socketTimeoutException.initCause(th);
        return socketTimeoutException;
    }
}
