package io.ktor.websocket;

import io.ktor.util.internal.ExceptionUtilsJvmKt;
import kotlinx.coroutines.CopyableThrowable;

/* JADX INFO: compiled from: FrameTooBigException.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class FrameTooBigException extends Exception implements CopyableThrowable<FrameTooBigException> {
    public final long frameSize;

    public FrameTooBigException(long j) {
        this.frameSize = j;
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        return "Frame is too big: " + this.frameSize;
    }

    @Override // kotlinx.coroutines.CopyableThrowable
    public FrameTooBigException createCopy() {
        FrameTooBigException frameTooBigException = new FrameTooBigException(this.frameSize);
        ExceptionUtilsJvmKt.initCauseBridge(frameTooBigException, this);
        return frameTooBigException;
    }
}
