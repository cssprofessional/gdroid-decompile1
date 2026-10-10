package io.ktor.network.sockets;

import io.ktor.network.selector.InterestSuspensionsMap$$ExternalSyntheticBackportWithForwarding0;
import io.ktor.network.selector.SelectableBase;
import io.ktor.utils.io.ByteChannel;
import io.ktor.utils.io.ByteChannelUtilsKt;
import io.ktor.utils.io.ByteWriteChannelOperationsKt;
import io.ktor.utils.io.ReaderJob;
import io.ktor.utils.io.WriterJob;
import java.io.Closeable;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.ExceptionsKt__ExceptionsKt;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CompletableJob;
import kotlinx.coroutines.CoroutineName;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.DisposableHandle;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.JobKt;

/* JADX INFO: compiled from: SocketBase.kt */
/* JADX INFO: loaded from: classes2.dex */
public abstract class SocketBase extends SelectableBase implements Closeable, DisposableHandle, AReadable, AWritable, CoroutineScope {
    private volatile /* synthetic */ int actualCloseFlag;
    public final Function1<Throwable, Unit> channelCompletionHandler;
    private volatile /* synthetic */ int closeFlag;
    volatile /* synthetic */ Object readerJob;
    public final CompletableJob socketContext;
    volatile /* synthetic */ Object writerJob;
    public static final /* synthetic */ AtomicIntegerFieldUpdater closeFlag$FU = AtomicIntegerFieldUpdater.newUpdater(SocketBase.class, "closeFlag");
    public static final /* synthetic */ AtomicIntegerFieldUpdater actualCloseFlag$FU = AtomicIntegerFieldUpdater.newUpdater(SocketBase.class, "actualCloseFlag");
    public static final /* synthetic */ AtomicReferenceFieldUpdater readerJob$FU = AtomicReferenceFieldUpdater.newUpdater(SocketBase.class, Object.class, "readerJob");
    public static final /* synthetic */ AtomicReferenceFieldUpdater writerJob$FU = AtomicReferenceFieldUpdater.newUpdater(SocketBase.class, Object.class, "writerJob");

    public abstract Throwable actualClose$ktor_network();

    public abstract WriterJob attachForReadingImpl(ByteChannel byteChannel);

    public abstract ReaderJob attachForWritingImpl(ByteChannel byteChannel);

    public SocketBase(CoroutineContext parent) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        this.closeFlag = 0;
        this.actualCloseFlag = 0;
        this.readerJob = null;
        this.writerJob = null;
        this.channelCompletionHandler = new Function1() { // from class: io.ktor.network.sockets.SocketBase$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return SocketBase.channelCompletionHandler$lambda$0(this.f$0, (Throwable) obj);
            }
        };
        this.socketContext = JobKt.Job((Job) parent.get(Job.Key));
    }

    public static final Unit channelCompletionHandler$lambda$0(SocketBase socketBase, Throwable th) throws IllegalAccessException, InvocationTargetException {
        socketBase.checkChannels();
        return Unit.INSTANCE;
    }

    public CompletableJob getSocketContext() {
        return this.socketContext;
    }

    @Override // kotlinx.coroutines.CoroutineScope
    public CoroutineContext getCoroutineContext() {
        return getSocketContext();
    }

    @Override // kotlinx.coroutines.DisposableHandle
    public void dispose() {
        close();
    }

    @Override // io.ktor.network.selector.SelectableBase, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        if (closeFlag$FU.compareAndSet(this, 0, 1)) {
            BuildersKt__Builders_commonKt.launch$default(this, new CoroutineName("socket-close"), null, new AnonymousClass1(null), 2, null);
        }
    }

    /* JADX INFO: renamed from: io.ktor.network.sockets.SocketBase$close$1, reason: invalid class name */
    /* JADX INFO: compiled from: SocketBase.kt */
    @DebugMetadata(c = "io.ktor.network.sockets.SocketBase$close$1", f = "SocketBase.kt", l = {42}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        public int label;

        public AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return SocketBase.this.new AnonymousClass1(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                ReaderJob readerJob = (ReaderJob) SocketBase.this.readerJob;
                if (readerJob != null) {
                    this.label = 1;
                    if (readerJob.flushAndClose(this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            WriterJob writerJob = (WriterJob) SocketBase.this.writerJob;
            if (writerJob != null) {
                ByteWriteChannelOperationsKt.cancel(writerJob);
            }
            SocketBase.this.checkChannels();
            return Unit.INSTANCE;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x0043  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void checkChannels() throws java.lang.IllegalAccessException, java.lang.reflect.InvocationTargetException {
        /*
            r4 = this;
            int r0 = r4.closeFlag
            if (r0 == 0) goto L77
            java.lang.Object r0 = r4.readerJob
            io.ktor.utils.io.ChannelJob r0 = (io.ktor.utils.io.ChannelJob) r0
            if (r0 == 0) goto L10
            boolean r0 = io.ktor.utils.io.ByteWriteChannelOperationsKt.isCompleted(r0)
            if (r0 == 0) goto L77
        L10:
            java.lang.Object r0 = r4.writerJob
            io.ktor.utils.io.ChannelJob r0 = (io.ktor.utils.io.ChannelJob) r0
            if (r0 == 0) goto L1c
            boolean r0 = io.ktor.utils.io.ByteWriteChannelOperationsKt.isCompleted(r0)
            if (r0 == 0) goto L77
        L1c:
            java.util.concurrent.atomic.AtomicIntegerFieldUpdater r0 = io.ktor.network.sockets.SocketBase.actualCloseFlag$FU
            r1 = 0
            r2 = 1
            boolean r0 = r0.compareAndSet(r4, r1, r2)
            if (r0 != 0) goto L27
            return
        L27:
            java.lang.Object r0 = r4.readerJob
            io.ktor.utils.io.ChannelJob r0 = (io.ktor.utils.io.ChannelJob) r0
            r1 = 0
            if (r0 == 0) goto L43
            boolean r2 = io.ktor.utils.io.ByteWriteChannelOperationsKt.isCancelled(r0)
            if (r2 == 0) goto L35
            goto L36
        L35:
            r0 = r1
        L36:
            if (r0 == 0) goto L43
            java.util.concurrent.CancellationException r0 = io.ktor.utils.io.ByteWriteChannelOperationsKt.getCancellationException(r0)
            if (r0 == 0) goto L43
            java.lang.Throwable r0 = r0.getCause()
            goto L44
        L43:
            r0 = r1
        L44:
            java.lang.Object r2 = r4.writerJob
            io.ktor.utils.io.ChannelJob r2 = (io.ktor.utils.io.ChannelJob) r2
            if (r2 == 0) goto L5e
            boolean r3 = io.ktor.utils.io.ByteWriteChannelOperationsKt.isCancelled(r2)
            if (r3 == 0) goto L51
            goto L52
        L51:
            r2 = r1
        L52:
            if (r2 == 0) goto L5e
            java.util.concurrent.CancellationException r2 = io.ktor.utils.io.ByteWriteChannelOperationsKt.getCancellationException(r2)
            if (r2 == 0) goto L5e
            java.lang.Throwable r1 = r2.getCause()
        L5e:
            java.lang.Throwable r2 = r4.actualClose$ktor_network()
            java.lang.Throwable r0 = r4.combine(r0, r1)
            java.lang.Throwable r0 = r4.combine(r0, r2)
            kotlinx.coroutines.CompletableJob r4 = r4.getSocketContext()
            if (r0 != 0) goto L74
            r4.complete()
            goto L77
        L74:
            r4.completeExceptionally(r0)
        L77:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.network.sockets.SocketBase.checkChannels():void");
    }

    public final Throwable combine(Throwable th, Throwable th2) throws IllegalAccessException, InvocationTargetException {
        if (th == null) {
            return th2;
        }
        if (th2 == null || th == th2) {
            return th;
        }
        ExceptionsKt__ExceptionsKt.addSuppressed(th, th2);
        return th;
    }

    @Override // io.ktor.network.sockets.AReadable
    public final WriterJob attachForReading(ByteChannel channel) throws IOException {
        Intrinsics.checkNotNullParameter(channel, "channel");
        if (this.closeFlag == 0) {
            WriterJob writerJobAttachForReadingImpl = attachForReadingImpl(channel);
            if (!InterestSuspensionsMap$$ExternalSyntheticBackportWithForwarding0.m(writerJob$FU, this, null, writerJobAttachForReadingImpl)) {
                IllegalStateException illegalStateException = new IllegalStateException("reading channel has already been set");
                ByteWriteChannelOperationsKt.cancel(writerJobAttachForReadingImpl);
                throw illegalStateException;
            }
            if (this.closeFlag != 0) {
                IOException iOException = new IOException("Socket closed");
                ByteWriteChannelOperationsKt.cancel(writerJobAttachForReadingImpl);
                ByteWriteChannelOperationsKt.close(channel, iOException);
                throw iOException;
            }
            ByteChannelUtilsKt.attachJob(channel, writerJobAttachForReadingImpl);
            ByteWriteChannelOperationsKt.invokeOnCompletion(writerJobAttachForReadingImpl, this.channelCompletionHandler);
            return writerJobAttachForReadingImpl;
        }
        IOException iOException2 = new IOException("Socket closed");
        ByteWriteChannelOperationsKt.close(channel, iOException2);
        throw iOException2;
    }

    @Override // io.ktor.network.sockets.AWritable
    public final ReaderJob attachForWriting(ByteChannel channel) throws IOException {
        Intrinsics.checkNotNullParameter(channel, "channel");
        if (this.closeFlag == 0) {
            ReaderJob readerJobAttachForWritingImpl = attachForWritingImpl(channel);
            if (!InterestSuspensionsMap$$ExternalSyntheticBackportWithForwarding0.m(readerJob$FU, this, null, readerJobAttachForWritingImpl)) {
                IllegalStateException illegalStateException = new IllegalStateException("writing channel has already been set");
                ByteWriteChannelOperationsKt.cancel(readerJobAttachForWritingImpl);
                throw illegalStateException;
            }
            if (this.closeFlag != 0) {
                IOException iOException = new IOException("Socket closed");
                ByteWriteChannelOperationsKt.cancel(readerJobAttachForWritingImpl);
                ByteWriteChannelOperationsKt.close(channel, iOException);
                throw iOException;
            }
            ByteChannelUtilsKt.attachJob(channel, readerJobAttachForWritingImpl);
            ByteWriteChannelOperationsKt.invokeOnCompletion(readerJobAttachForWritingImpl, this.channelCompletionHandler);
            return readerJobAttachForWritingImpl;
        }
        IOException iOException2 = new IOException("Socket closed");
        ByteWriteChannelOperationsKt.close(channel, iOException2);
        throw iOException2;
    }
}
