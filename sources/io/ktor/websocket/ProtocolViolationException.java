package io.ktor.websocket;

import io.ktor.util.internal.ExceptionUtilsJvmKt;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CopyableThrowable;

/* JADX INFO: compiled from: ProtocolViolationException.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class ProtocolViolationException extends Exception implements CopyableThrowable<ProtocolViolationException> {
    public final String violation;

    public ProtocolViolationException(String violation) {
        Intrinsics.checkNotNullParameter(violation, "violation");
        this.violation = violation;
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        return "Received illegal frame: " + this.violation;
    }

    @Override // kotlinx.coroutines.CopyableThrowable
    public ProtocolViolationException createCopy() {
        ProtocolViolationException protocolViolationException = new ProtocolViolationException(this.violation);
        ExceptionUtilsJvmKt.initCauseBridge(protocolViolationException, this);
        return protocolViolationException;
    }
}
