package io.ktor.network.sockets;

import io.ktor.network.selector.SelectorManager;
import io.ktor.network.sockets.SocketOptions;
import io.ktor.utils.io.ReaderJob;
import io.ktor.utils.io.WriterJob;
import io.ktor.utils.io.pool.ObjectPool;
import java.io.Closeable;
import java.nio.ByteBuffer;
import java.nio.channels.ByteChannel;
import java.nio.channels.ReadableByteChannel;
import java.nio.channels.SelectableChannel;
import java.nio.channels.WritableByteChannel;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.DisposableHandle;

/* JADX INFO: compiled from: NIOSocketImpl.kt */
/* JADX INFO: loaded from: classes2.dex */
public abstract class NIOSocketImpl<S extends SelectableChannel & ByteChannel> extends SocketBase implements Closeable, DisposableHandle, AReadable, AWritable {
    public final S channel;
    public final ObjectPool<ByteBuffer> pool;
    public final SelectorManager selector;
    public final SocketOptions.TCPClientSocketOptions socketOptions;

    @Override // io.ktor.network.selector.Selectable
    public S getChannel() {
        return this.channel;
    }

    public final SelectorManager getSelector() {
        return this.selector;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NIOSocketImpl(S channel, SelectorManager selector, ObjectPool<ByteBuffer> objectPool, SocketOptions.TCPClientSocketOptions tCPClientSocketOptions) {
        super(EmptyCoroutineContext.INSTANCE);
        Intrinsics.checkNotNullParameter(channel, "channel");
        Intrinsics.checkNotNullParameter(selector, "selector");
        this.channel = channel;
        this.selector = selector;
        this.pool = objectPool;
        this.socketOptions = tCPClientSocketOptions;
    }

    @Override // io.ktor.network.sockets.SocketBase
    public final WriterJob attachForReadingImpl(io.ktor.utils.io.ByteChannel channel) {
        Intrinsics.checkNotNullParameter(channel, "channel");
        if (this.pool != null) {
            return CIOReaderKt.attachForReadingImpl(this, channel, (ReadableByteChannel) getChannel(), this, this.selector, this.pool, this.socketOptions);
        }
        return CIOReaderKt.attachForReadingDirectImpl(this, channel, (ReadableByteChannel) getChannel(), this, this.selector, this.socketOptions);
    }

    @Override // io.ktor.network.sockets.SocketBase
    public final ReaderJob attachForWritingImpl(io.ktor.utils.io.ByteChannel channel) {
        Intrinsics.checkNotNullParameter(channel, "channel");
        return CIOWriterKt.attachForWritingDirectImpl(this, channel, (WritableByteChannel) getChannel(), this, this.selector, this.socketOptions);
    }

    @Override // io.ktor.network.sockets.SocketBase
    public Throwable actualClose$ktor_network() {
        try {
            getChannel().close();
            super.close();
            this.selector.notifyClosed(this);
            return null;
        } catch (Throwable th) {
            this.selector.notifyClosed(this);
            return th;
        }
    }
}
