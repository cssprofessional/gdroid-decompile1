package io.ktor.utils.io;

import java.io.IOException;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.io.Source;

/* JADX INFO: compiled from: SourceByteReadChannel.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class SourceByteReadChannel implements ByteReadChannel {
    private volatile CloseToken closed;
    public final Source source;

    public SourceByteReadChannel(Source source) {
        Intrinsics.checkNotNullParameter(source, "source");
        this.source = source;
    }

    @Override // io.ktor.utils.io.ByteReadChannel, io.ktor.utils.io.ByteWriteChannel
    public Throwable getClosedCause() {
        CloseToken closeToken = this.closed;
        if (closeToken != null) {
            return CloseToken.wrapCause$default(closeToken, null, 1, null);
        }
        return null;
    }

    @Override // io.ktor.utils.io.ByteReadChannel
    public boolean isClosedForRead() {
        return this.source.exhausted();
    }

    @Override // io.ktor.utils.io.ByteReadChannel
    public Source getReadBuffer() throws Throwable {
        Throwable closedCause = getClosedCause();
        if (closedCause != null) {
            throw closedCause;
        }
        return this.source.getBuffer();
    }

    @Override // io.ktor.utils.io.ByteReadChannel
    public Object awaitContent(int i, Continuation<? super Boolean> continuation) throws Throwable {
        Throwable closedCause = getClosedCause();
        if (closedCause != null) {
            throw closedCause;
        }
        return Boxing.boxBoolean(this.source.request(i));
    }

    @Override // io.ktor.utils.io.ByteReadChannel, io.ktor.utils.io.ByteWriteChannel
    public void cancel(Throwable th) {
        String message;
        if (this.closed != null) {
            return;
        }
        this.source.close();
        if (th == null || (message = th.getMessage()) == null) {
            message = "Channel was cancelled";
        }
        this.closed = new CloseToken(new IOException(message, th));
    }
}
