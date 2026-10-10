package io.ktor.utils.io.jvm.javaio;

import io.ktor.utils.io.ByteReadChannel;
import io.ktor.utils.io.ByteReadChannelKt;
import io.ktor.utils.io.ByteReadChannelOperationsKt;
import java.io.InputStream;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__BuildersKt;
import kotlinx.coroutines.Job;

/* JADX INFO: compiled from: Blocking.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class BlockingKt {
    public static final InputStream toInputStream(final ByteReadChannel byteReadChannel, Job job) {
        Intrinsics.checkNotNullParameter(byteReadChannel, "<this>");
        return new InputStream() { // from class: io.ktor.utils.io.jvm.javaio.BlockingKt.toInputStream.1
            @Override // java.io.InputStream
            public int read() throws InterruptedException {
                if (byteReadChannel.isClosedForRead()) {
                    return -1;
                }
                if (byteReadChannel.getReadBuffer().exhausted()) {
                    blockingWait();
                }
                if (byteReadChannel.isClosedForRead()) {
                    return -1;
                }
                return byteReadChannel.getReadBuffer().readByte() & 255;
            }

            @Override // java.io.InputStream
            public int read(byte[] b, int i, int i2) throws InterruptedException {
                Intrinsics.checkNotNullParameter(b, "b");
                if (byteReadChannel.isClosedForRead()) {
                    return -1;
                }
                if (byteReadChannel.getReadBuffer().exhausted()) {
                    blockingWait();
                }
                int atMostTo = byteReadChannel.getReadBuffer().readAtMostTo(b, i, Math.min(ByteReadChannelOperationsKt.getAvailableForRead(byteReadChannel), i2) + i);
                return atMostTo >= 0 ? atMostTo : byteReadChannel.isClosedForRead() ? -1 : 0;
            }

            public final void blockingWait() throws InterruptedException {
                BuildersKt__BuildersKt.runBlocking$default(null, new BlockingKt$toInputStream$1$blockingWait$1(byteReadChannel, null), 1, null);
            }

            @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
            public void close() {
                ByteReadChannelKt.cancel(byteReadChannel);
            }
        };
    }
}
