package io.ktor.network.selector;

import java.util.concurrent.CancellationException;

/* JADX INFO: compiled from: Selectable.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class ClosedChannelCancellationException extends CancellationException {
    public ClosedChannelCancellationException() {
        super("Closed channel.");
    }
}
