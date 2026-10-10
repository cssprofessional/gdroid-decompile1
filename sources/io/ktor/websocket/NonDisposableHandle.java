package io.ktor.websocket;

import kotlinx.coroutines.DisposableHandle;

/* JADX INFO: compiled from: FrameCommon.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class NonDisposableHandle implements DisposableHandle {
    public static final NonDisposableHandle INSTANCE = new NonDisposableHandle();

    @Override // kotlinx.coroutines.DisposableHandle
    public void dispose() {
    }

    public boolean equals(Object obj) {
        return this == obj || (obj instanceof NonDisposableHandle);
    }

    public int hashCode() {
        return 207988788;
    }

    public String toString() {
        return "NonDisposableHandle";
    }
}
