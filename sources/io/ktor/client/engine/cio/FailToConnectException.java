package io.ktor.client.engine.cio;

/* JADX INFO: compiled from: Endpoint.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class FailToConnectException extends Exception {
    public FailToConnectException() {
        super("Connect timed out or retry attempts exceeded");
    }
}
