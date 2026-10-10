package io.ktor.network.tls;

import in.dragonbra.javasteam.protobufs.steamclient.Enums;
import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends;
import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin;
import io.ktor.network.sockets.Socket;
import io.ktor.utils.io.ByteChannel;
import io.ktor.utils.io.ByteReadChannel;
import io.ktor.utils.io.ByteReadChannelOperationsKt;
import io.ktor.utils.io.ByteWriteChannel;
import io.ktor.utils.io.ByteWriteChannelOperationsKt;
import io.ktor.utils.io.ReaderJob;
import io.ktor.utils.io.ReaderScope;
import io.ktor.utils.io.WriterJob;
import io.ktor.utils.io.WriterScope;
import java.io.IOException;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SpillingKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineName;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: TLSClientSessionJvm.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class TLSSocket implements CoroutineScope, Socket {
    public final TLSClientHandshake base;
    public final CoroutineContext coroutineContext;
    public final Socket socket;

    /* JADX INFO: compiled from: TLSClientSessionJvm.kt */
    public static final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[TLSRecordType.values().length];
            try {
                iArr[TLSRecordType.ApplicationData.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX INFO: renamed from: io.ktor.network.tls.TLSSocket$appDataInputLoop$1, reason: invalid class name */
    /* JADX INFO: compiled from: TLSClientSessionJvm.kt */
    @DebugMetadata(c = "io.ktor.network.tls.TLSSocket", f = "TLSClientSessionJvm.kt", l = {119, 70, 71, SteammessagesClientserverFriends.CMsgClientPersonaState.Friend.IS_COMMUNITY_BANNED_FIELD_NUMBER, SteammessagesClientserverFriends.CMsgClientPersonaState.Friend.IS_COMMUNITY_BANNED_FIELD_NUMBER, SteammessagesClientserverFriends.CMsgClientPersonaState.Friend.IS_COMMUNITY_BANNED_FIELD_NUMBER}, m = "appDataInputLoop", v = 1)
    public static final class AnonymousClass1 extends ContinuationImpl {
        public int I$0;
        public int I$1;
        public int I$2;
        public int I$3;
        public long J$0;
        public Object L$0;
        public Object L$1;
        public Object L$2;
        public Object L$3;
        public Object L$4;
        public Object L$5;
        public Object L$6;
        public Object L$7;
        public int label;
        public /* synthetic */ Object result;

        public AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Enums.EProtoAppType.k_EAppTypeDepotOnly_VALUE;
            return TLSSocket.this.appDataInputLoop(null, this);
        }
    }

    /* JADX INFO: renamed from: io.ktor.network.tls.TLSSocket$appDataOutputLoop$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: TLSClientSessionJvm.kt */
    @DebugMetadata(c = "io.ktor.network.tls.TLSSocket", f = "TLSClientSessionJvm.kt", l = {SteammessagesClientserverLogin.CMsgClientLogon.STEAM2_TICKET_REQUEST_FIELD_NUMBER, SteammessagesClientserverLogin.CMsgClientLogon.CREATE_NEW_PSN_LINKED_ACCOUNT_IF_NEEDED_FIELD_NUMBER}, m = "appDataOutputLoop", v = 1)
    public static final class C00631 extends ContinuationImpl {
        public int I$0;
        public int I$1;
        public int I$2;
        public Object L$0;
        public Object L$1;
        public Object L$2;
        public Object L$3;
        public int label;
        public /* synthetic */ Object result;

        public C00631(Continuation<? super C00631> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Enums.EProtoAppType.k_EAppTypeDepotOnly_VALUE;
            return TLSSocket.this.appDataOutputLoop(null, this);
        }
    }

    public TLSSocket(TLSClientHandshake base, Socket socket, CoroutineContext coroutineContext) {
        Intrinsics.checkNotNullParameter(base, "base");
        Intrinsics.checkNotNullParameter(socket, "socket");
        Intrinsics.checkNotNullParameter(coroutineContext, "coroutineContext");
        this.base = base;
        this.socket = socket;
        this.coroutineContext = coroutineContext;
    }

    @Override // kotlinx.coroutines.CoroutineScope
    public CoroutineContext getCoroutineContext() {
        return this.coroutineContext;
    }

    /* JADX INFO: renamed from: io.ktor.network.tls.TLSSocket$attachForReading$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: TLSClientSessionJvm.kt */
    @DebugMetadata(c = "io.ktor.network.tls.TLSSocket$attachForReading$1", f = "TLSClientSessionJvm.kt", l = {55}, m = "invokeSuspend", v = 1)
    public static final class C00641 extends SuspendLambda implements Function2<WriterScope, Continuation<? super Unit>, Object> {
        public /* synthetic */ Object L$0;
        public int label;

        public C00641(Continuation<? super C00641> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            C00641 c00641 = TLSSocket.this.new C00641(continuation);
            c00641.L$0 = obj;
            return c00641;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(WriterScope writerScope, Continuation<? super Unit> continuation) {
            return ((C00641) create(writerScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            WriterScope writerScope = (WriterScope) this.L$0;
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                TLSSocket tLSSocket = TLSSocket.this;
                ByteWriteChannel channel = writerScope.getChannel();
                this.L$0 = SpillingKt.nullOutSpilledVariable(writerScope);
                this.label = 1;
                if (tLSSocket.appDataInputLoop(channel, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            return Unit.INSTANCE;
        }
    }

    @Override // io.ktor.network.sockets.AReadable
    public WriterJob attachForReading(ByteChannel channel) {
        Intrinsics.checkNotNullParameter(channel, "channel");
        return ByteWriteChannelOperationsKt.writer(this, getCoroutineContext().plus(new CoroutineName("cio-tls-input-loop")), channel, new C00641(null));
    }

    /* JADX INFO: renamed from: io.ktor.network.tls.TLSSocket$attachForWriting$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: TLSClientSessionJvm.kt */
    @DebugMetadata(c = "io.ktor.network.tls.TLSSocket$attachForWriting$1", f = "TLSClientSessionJvm.kt", l = {60}, m = "invokeSuspend", v = 1)
    public static final class C00651 extends SuspendLambda implements Function2<ReaderScope, Continuation<? super Unit>, Object> {
        public /* synthetic */ Object L$0;
        public int label;

        public C00651(Continuation<? super C00651> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            C00651 c00651 = TLSSocket.this.new C00651(continuation);
            c00651.L$0 = obj;
            return c00651;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(ReaderScope readerScope, Continuation<? super Unit> continuation) {
            return ((C00651) create(readerScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            ReaderScope readerScope = (ReaderScope) this.L$0;
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                TLSSocket tLSSocket = TLSSocket.this;
                ByteReadChannel channel = readerScope.getChannel();
                this.L$0 = SpillingKt.nullOutSpilledVariable(readerScope);
                this.label = 1;
                if (tLSSocket.appDataOutputLoop(channel, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            return Unit.INSTANCE;
        }
    }

    @Override // io.ktor.network.sockets.AWritable
    public ReaderJob attachForWriting(ByteChannel channel) {
        Intrinsics.checkNotNullParameter(channel, "channel");
        return ByteReadChannelOperationsKt.reader(this, getCoroutineContext().plus(new CoroutineName("cio-tls-output-loop")), channel, new C00651(null));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0120 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0129 A[Catch: all -> 0x020f, TRY_LEAVE, TryCatch #10 {all -> 0x020f, blocks: (B:36:0x00f8, B:39:0x0121, B:41:0x0129), top: B:109:0x00f8 }] */
    /* JADX WARN: Removed duplicated region for block: B:54:0x01cb A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:55:0x01cc  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0212 A[Catch: all -> 0x020c, TRY_LEAVE, TryCatch #7 {all -> 0x020c, blocks: (B:65:0x01e2, B:66:0x020b, B:71:0x0212), top: B:104:0x0127 }] */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v12 */
    /* JADX WARN: Type inference failed for: r1v17 */
    /* JADX WARN: Type inference failed for: r1v2 */
    /* JADX WARN: Type inference failed for: r1v23 */
    /* JADX WARN: Type inference failed for: r1v24 */
    /* JADX WARN: Type inference failed for: r1v25 */
    /* JADX WARN: Type inference failed for: r1v26 */
    /* JADX WARN: Type inference failed for: r1v3, types: [io.ktor.utils.io.ByteWriteChannel, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v4 */
    /* JADX WARN: Type inference failed for: r1v5 */
    /* JADX WARN: Type inference failed for: r1v7 */
    /* JADX WARN: Type inference failed for: r5v12 */
    /* JADX WARN: Type inference failed for: r5v13 */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r5v22 */
    /* JADX WARN: Type inference failed for: r5v28 */
    /* JADX WARN: Type inference failed for: r5v3, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r5v30 */
    /* JADX WARN: Type inference failed for: r5v33 */
    /* JADX WARN: Type inference failed for: r5v34 */
    /* JADX WARN: Type inference failed for: r5v4 */
    /* JADX WARN: Type inference failed for: r5v5 */
    /* JADX WARN: Type inference failed for: r5v8 */
    /* JADX WARN: Type inference failed for: r9v2 */
    /* JADX WARN: Type inference failed for: r9v20 */
    /* JADX WARN: Type inference failed for: r9v5 */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:55:0x01cc -> B:56:0x01cd). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object appDataInputLoop(io.ktor.utils.io.ByteWriteChannel r19, kotlin.coroutines.Continuation<? super kotlin.Unit> r20) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 630
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.network.tls.TLSSocket.appDataInputLoop(io.ktor.utils.io.ByteWriteChannel, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x009a A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x009b  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00b0 A[Catch: all -> 0x004c, ClosedSendChannelException -> 0x0108, TRY_LEAVE, TryCatch #4 {ClosedSendChannelException -> 0x0108, all -> 0x004c, blocks: (B:13:0x003f, B:25:0x0083, B:29:0x00a7, B:31:0x00b0, B:20:0x0069), top: B:51:0x0027, outer: #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00ec A[Catch: all -> 0x00f9, TRY_ENTER, TryCatch #2 {all -> 0x00f9, blocks: (B:35:0x00ec, B:36:0x00f3, B:39:0x00fd, B:40:0x0107, B:41:0x0108, B:13:0x003f, B:25:0x0083, B:29:0x00a7, B:31:0x00b0, B:20:0x0069), top: B:51:0x0027, inners: #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0017  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:32:0x00e7 -> B:14:0x0042). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object appDataOutputLoop(io.ktor.utils.io.ByteReadChannel r23, kotlin.coroutines.Continuation<? super kotlin.Unit> r24) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 285
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.network.tls.TLSSocket.appDataOutputLoop(io.ktor.utils.io.ByteReadChannel, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // kotlinx.coroutines.DisposableHandle
    public void dispose() {
        close();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.base.close().invokeOnCompletion(new Function1() { // from class: io.ktor.network.tls.TLSSocket$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return TLSSocket.close$lambda$0(this.f$0, (Throwable) obj);
            }
        });
    }

    public static final Unit close$lambda$0(TLSSocket tLSSocket, Throwable th) throws IOException {
        tLSSocket.socket.close();
        return Unit.INSTANCE;
    }
}
