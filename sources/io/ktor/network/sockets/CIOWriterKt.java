package io.ktor.network.sockets;

import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends;
import io.ktor.network.selector.Selectable;
import io.ktor.network.selector.SelectorManager;
import io.ktor.network.sockets.SocketOptions;
import io.ktor.network.util.Timeout;
import io.ktor.utils.io.ByteChannel;
import io.ktor.utils.io.ByteReadChannelOperationsKt;
import io.ktor.utils.io.ReaderJob;
import io.ktor.utils.io.ReaderScope;
import java.nio.ByteBuffer;
import java.nio.channels.WritableByteChannel;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$IntRef;
import kotlinx.coroutines.CoroutineName;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Dispatchers;

/* JADX INFO: compiled from: CIOWriter.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class CIOWriterKt {

    /* JADX INFO: renamed from: io.ktor.network.sockets.CIOWriterKt$attachForWritingDirectImpl$1, reason: invalid class name */
    /* JADX INFO: compiled from: CIOWriter.kt */
    @DebugMetadata(c = "io.ktor.network.sockets.CIOWriterKt$attachForWritingDirectImpl$1", f = "CIOWriter.kt", l = {33, 74, SteammessagesClientserverFriends.CMsgClientPersonaState.Friend.IS_COMMUNITY_BANNED_FIELD_NUMBER, 50}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<ReaderScope, Continuation<? super Unit>, Object> {
        public final /* synthetic */ ByteChannel $channel;
        public final /* synthetic */ WritableByteChannel $nioChannel;
        public final /* synthetic */ Selectable $selectable;
        public final /* synthetic */ SelectorManager $selector;
        public final /* synthetic */ SocketOptions.TCPClientSocketOptions $socketOptions;
        public int I$0;
        public int I$1;
        public /* synthetic */ Object L$0;
        public Object L$1;
        public Object L$2;
        public Object L$3;
        public Object L$4;
        public int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(Selectable selectable, SocketOptions.TCPClientSocketOptions tCPClientSocketOptions, ByteChannel byteChannel, SelectorManager selectorManager, WritableByteChannel writableByteChannel, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$selectable = selectable;
            this.$socketOptions = tCPClientSocketOptions;
            this.$channel = byteChannel;
            this.$selector = selectorManager;
            this.$nioChannel = writableByteChannel;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$selectable, this.$socketOptions, this.$channel, this.$selector, this.$nioChannel, continuation);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(ReaderScope readerScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(readerScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Removed duplicated region for block: B:36:0x00b8 A[Catch: all -> 0x0029, TryCatch #1 {all -> 0x0029, blocks: (B:10:0x0024, B:34:0x00b0, B:36:0x00b8, B:38:0x00c0, B:41:0x00d9, B:45:0x0105, B:47:0x010d, B:48:0x0116, B:50:0x011a, B:53:0x0140, B:54:0x0167, B:56:0x016a, B:17:0x0044, B:19:0x0051, B:22:0x006d, B:26:0x0086, B:28:0x008a, B:31:0x0096), top: B:77:0x0011 }] */
        /* JADX WARN: Removed duplicated region for block: B:47:0x010d A[Catch: all -> 0x0029, TryCatch #1 {all -> 0x0029, blocks: (B:10:0x0024, B:34:0x00b0, B:36:0x00b8, B:38:0x00c0, B:41:0x00d9, B:45:0x0105, B:47:0x010d, B:48:0x0116, B:50:0x011a, B:53:0x0140, B:54:0x0167, B:56:0x016a, B:17:0x0044, B:19:0x0051, B:22:0x006d, B:26:0x0086, B:28:0x008a, B:31:0x0096), top: B:77:0x0011 }] */
        /* JADX WARN: Removed duplicated region for block: B:50:0x011a A[Catch: all -> 0x0029, TryCatch #1 {all -> 0x0029, blocks: (B:10:0x0024, B:34:0x00b0, B:36:0x00b8, B:38:0x00c0, B:41:0x00d9, B:45:0x0105, B:47:0x010d, B:48:0x0116, B:50:0x011a, B:53:0x0140, B:54:0x0167, B:56:0x016a, B:17:0x0044, B:19:0x0051, B:22:0x006d, B:26:0x0086, B:28:0x008a, B:31:0x0096), top: B:77:0x0011 }] */
        /* JADX WARN: Removed duplicated region for block: B:53:0x0140 A[Catch: all -> 0x0029, TryCatch #1 {all -> 0x0029, blocks: (B:10:0x0024, B:34:0x00b0, B:36:0x00b8, B:38:0x00c0, B:41:0x00d9, B:45:0x0105, B:47:0x010d, B:48:0x0116, B:50:0x011a, B:53:0x0140, B:54:0x0167, B:56:0x016a, B:17:0x0044, B:19:0x0051, B:22:0x006d, B:26:0x0086, B:28:0x008a, B:31:0x0096), top: B:77:0x0011 }] */
        /* JADX WARN: Removed duplicated region for block: B:56:0x016a A[Catch: all -> 0x0029, TRY_LEAVE, TryCatch #1 {all -> 0x0029, blocks: (B:10:0x0024, B:34:0x00b0, B:36:0x00b8, B:38:0x00c0, B:41:0x00d9, B:45:0x0105, B:47:0x010d, B:48:0x0116, B:50:0x011a, B:53:0x0140, B:54:0x0167, B:56:0x016a, B:17:0x0044, B:19:0x0051, B:22:0x006d, B:26:0x0086, B:28:0x008a, B:31:0x0096), top: B:77:0x0011 }] */
        /* JADX WARN: Removed duplicated region for block: B:79:0x017a A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:49:0x0118 -> B:34:0x00b0). Please report as a decompilation issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:51:0x013d -> B:34:0x00b0). Please report as a decompilation issue!!! */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r17) throws java.lang.Throwable {
            /*
                Method dump skipped, instruction units count: 445
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: io.ktor.network.sockets.CIOWriterKt.AnonymousClass1.invokeSuspend(java.lang.Object):java.lang.Object");
        }

        public static final Unit invokeSuspend$lambda$0(Timeout timeout, Ref$IntRef ref$IntRef, WritableByteChannel writableByteChannel, ByteBuffer byteBuffer) {
            while (byteBuffer.hasRemaining()) {
                if (timeout == null) {
                    do {
                        ref$IntRef.element = writableByteChannel.write(byteBuffer);
                        if (byteBuffer.hasRemaining()) {
                        }
                    } while (ref$IntRef.element > 0);
                } else {
                    timeout.start();
                    do {
                        try {
                            ref$IntRef.element = writableByteChannel.write(byteBuffer);
                            if (!byteBuffer.hasRemaining()) {
                                break;
                            }
                        } catch (Throwable th) {
                            timeout.stop();
                            throw th;
                        }
                    } while (ref$IntRef.element > 0);
                    Unit unit = Unit.INSTANCE;
                    timeout.stop();
                }
            }
            return Unit.INSTANCE;
        }
    }

    public static final ReaderJob attachForWritingDirectImpl(CoroutineScope coroutineScope, ByteChannel channel, WritableByteChannel nioChannel, Selectable selectable, SelectorManager selector, SocketOptions.TCPClientSocketOptions tCPClientSocketOptions) {
        Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
        Intrinsics.checkNotNullParameter(channel, "channel");
        Intrinsics.checkNotNullParameter(nioChannel, "nioChannel");
        Intrinsics.checkNotNullParameter(selectable, "selectable");
        Intrinsics.checkNotNullParameter(selector, "selector");
        return ByteReadChannelOperationsKt.reader(coroutineScope, Dispatchers.getIO().plus(new CoroutineName("cio-to-nio-writer")), channel, new AnonymousClass1(selectable, tCPClientSocketOptions, channel, selector, nioChannel, null));
    }
}
