package io.ktor.network.selector;

import java.io.IOException;

/* JADX INFO: compiled from: SelectorManagerSupport.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class SelectorManagerSupportKt {
    public static final Void selectableIsClosed() throws IOException {
        throw new IOException("Selectable is already closed");
    }

    public static final Void selectableIsInvalid(int i, int i2) {
        throw new IllegalStateException(("Selectable is invalid state: " + i + ", " + i2).toString());
    }
}
