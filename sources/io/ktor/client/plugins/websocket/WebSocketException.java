package io.ktor.client.plugins.websocket;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: WebSockets.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class WebSocketException extends IllegalStateException {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WebSocketException(String message, Throwable th) {
        super(message, th);
        Intrinsics.checkNotNullParameter(message, "message");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public WebSocketException(String message) {
        this(message, null);
        Intrinsics.checkNotNullParameter(message, "message");
    }
}
