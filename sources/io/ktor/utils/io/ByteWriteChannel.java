package io.ktor.utils.io;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlinx.io.Sink;

/* JADX INFO: compiled from: ByteWriteChannel.kt */
/* JADX INFO: loaded from: classes2.dex */
public interface ByteWriteChannel {
    void cancel(Throwable th);

    Object flush(Continuation<? super Unit> continuation);

    Object flushAndClose(Continuation<? super Unit> continuation);

    default boolean getAutoFlush() {
        return false;
    }

    Throwable getClosedCause();

    Sink getWriteBuffer();
}
