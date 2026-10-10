package io.ktor.utils.io;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlinx.io.Buffer;
import kotlinx.io.Source;

/* JADX INFO: compiled from: ByteReadChannel.kt */
/* JADX INFO: loaded from: classes2.dex */
public interface ByteReadChannel {
    public static final Companion Companion = Companion.$$INSTANCE;

    Object awaitContent(int i, Continuation<? super Boolean> continuation);

    void cancel(Throwable th);

    Throwable getClosedCause();

    Source getReadBuffer();

    boolean isClosedForRead();

    static /* synthetic */ Object awaitContent$default(ByteReadChannel byteReadChannel, int i, Continuation continuation, int i2, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: awaitContent");
        }
        if ((i2 & 1) != 0) {
            i = 1;
        }
        return byteReadChannel.awaitContent(i, continuation);
    }

    /* JADX INFO: compiled from: ByteReadChannel.kt */
    public static final class Companion {
        public static final /* synthetic */ Companion $$INSTANCE = new Companion();
        public static final ByteReadChannel Empty = new ByteReadChannel() { // from class: io.ktor.utils.io.ByteReadChannel$Companion$Empty$1
            public final Throwable closedCause;
            public final Source readBuffer = new Buffer();

            @Override // io.ktor.utils.io.ByteReadChannel, io.ktor.utils.io.ByteWriteChannel
            public void cancel(Throwable th) {
            }

            @Override // io.ktor.utils.io.ByteReadChannel
            public boolean isClosedForRead() {
                return true;
            }

            @Override // io.ktor.utils.io.ByteReadChannel, io.ktor.utils.io.ByteWriteChannel
            public Throwable getClosedCause() {
                return this.closedCause;
            }

            @Override // io.ktor.utils.io.ByteReadChannel
            public Source getReadBuffer() {
                return this.readBuffer;
            }

            @Override // io.ktor.utils.io.ByteReadChannel
            public Object awaitContent(int i, Continuation<? super Boolean> continuation) {
                return Boxing.boxBoolean(false);
            }
        };

        public final ByteReadChannel getEmpty() {
            return Empty;
        }
    }
}
