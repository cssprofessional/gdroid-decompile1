package io.ktor.websocket;

import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin;
import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesPublishedfileSteamclient;
import io.ktor.websocket.Frame;
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
import kotlinx.coroutines.Job;
import kotlinx.coroutines.JobKt__JobKt;
import kotlinx.coroutines.channels.Channel;
import kotlinx.coroutines.channels.ChannelKt;
import kotlinx.coroutines.channels.SendChannel;

/* JADX INFO: compiled from: PingPong.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class PingPongKt {
    public static final CoroutineName PongerCoroutineName = new CoroutineName("ws-ponger");
    public static final CoroutineName PingerCoroutineName = new CoroutineName("ws-pinger");

    public static final SendChannel<Frame.Ping> ponger(CoroutineScope coroutineScope, SendChannel<? super Frame.Pong> outgoing) {
        Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
        Intrinsics.checkNotNullParameter(outgoing, "outgoing");
        Channel channelChannel$default = ChannelKt.Channel$default(5, null, null, 6, null);
        BuildersKt__Builders_commonKt.launch$default(coroutineScope, PongerCoroutineName, null, new C00831(channelChannel$default, outgoing, null), 2, null);
        return channelChannel$default;
    }

    /* JADX INFO: renamed from: io.ktor.websocket.PingPongKt$ponger$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: PingPong.kt */
    @DebugMetadata(c = "io.ktor.websocket.PingPongKt$ponger$1", f = "PingPong.kt", l = {119, 33}, m = "invokeSuspend", v = 1)
    public static final class C00831 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        public final /* synthetic */ Channel<Frame.Ping> $channel;
        public final /* synthetic */ SendChannel<Frame.Pong> $outgoing;
        public int I$0;
        public int I$1;
        public int I$2;
        public int I$3;
        public Object L$0;
        public Object L$1;
        public Object L$2;
        public Object L$3;
        public Object L$4;
        public Object L$5;
        public Object L$6;
        public int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public C00831(Channel<Frame.Ping> channel, SendChannel<? super Frame.Pong> sendChannel, Continuation<? super C00831> continuation) {
            super(2, continuation);
            this.$channel = channel;
            this.$outgoing = sendChannel;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C00831(this.$channel, this.$outgoing, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C00831) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Removed duplicated region for block: B:23:0x00a0 A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:24:0x00a1  */
        /* JADX WARN: Removed duplicated region for block: B:27:0x00b4 A[Catch: all -> 0x0040, TryCatch #1 {all -> 0x0040, blocks: (B:7:0x002f, B:25:0x00ac, B:27:0x00b4, B:31:0x0100, B:15:0x0066, B:19:0x0073), top: B:44:0x000b }] */
        /* JADX WARN: Removed duplicated region for block: B:31:0x0100 A[Catch: all -> 0x0040, TRY_LEAVE, TryCatch #1 {all -> 0x0040, blocks: (B:7:0x002f, B:25:0x00ac, B:27:0x00b4, B:31:0x0100, B:15:0x0066, B:19:0x0073), top: B:44:0x000b }] */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:28:0x00fa -> B:9:0x0033). Please report as a decompilation issue!!! */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r18) throws java.lang.Throwable {
            /*
                Method dump skipped, instruction units count: 275
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: io.ktor.websocket.PingPongKt.C00831.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    public static final SendChannel<Frame.Pong> pinger(CoroutineScope coroutineScope, SendChannel<? super Frame> outgoing, long j, long j2, Function2<? super CloseReason, ? super Continuation<? super Unit>, ? extends Object> onTimeout) {
        Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
        Intrinsics.checkNotNullParameter(outgoing, "outgoing");
        Intrinsics.checkNotNullParameter(onTimeout, "onTimeout");
        final CompletableJob completableJobJob$default = JobKt__JobKt.Job$default(null, 1, null);
        Channel channelChannel$default = ChannelKt.Channel$default(Integer.MAX_VALUE, null, null, 6, null);
        BuildersKt__Builders_commonKt.launch$default(coroutineScope, completableJobJob$default.plus(PingerCoroutineName), null, new AnonymousClass1(j, j2, onTimeout, channelChannel$default, outgoing, null), 2, null);
        CoroutineContext.Element element = coroutineScope.getCoroutineContext().get(Job.Key);
        Intrinsics.checkNotNull(element);
        ((Job) element).invokeOnCompletion(new Function1() { // from class: io.ktor.websocket.PingPongKt$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PingPongKt.pinger$lambda$0(completableJobJob$default, (Throwable) obj);
            }
        });
        return channelChannel$default;
    }

    /* JADX INFO: renamed from: io.ktor.websocket.PingPongKt$pinger$1, reason: invalid class name */
    /* JADX INFO: compiled from: PingPong.kt */
    @DebugMetadata(c = "io.ktor.websocket.PingPongKt$pinger$1", f = "PingPong.kt", l = {SteammessagesPublishedfileSteamclient.PublishedFileDetails.MAYBE_INAPPROPRIATE_VIOLENCE_FIELD_NUMBER, 75, SteammessagesClientserverLogin.CMsgClientLogon.MACHINE_NAME_USERCHOSEN_FIELD_NUMBER}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        public final /* synthetic */ Channel<Frame.Pong> $channel;
        public final /* synthetic */ Function2<CloseReason, Continuation<? super Unit>, Object> $onTimeout;
        public final /* synthetic */ SendChannel<Frame> $outgoing;
        public final /* synthetic */ long $periodMillis;
        public final /* synthetic */ long $timeoutMillis;
        public Object L$0;
        public Object L$1;
        public Object L$2;
        public Object L$3;
        public int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public AnonymousClass1(long j, long j2, Function2<? super CloseReason, ? super Continuation<? super Unit>, ? extends Object> function2, Channel<Frame.Pong> channel, SendChannel<? super Frame> sendChannel, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$periodMillis = j;
            this.$timeoutMillis = j2;
            this.$onTimeout = function2;
            this.$channel = channel;
            this.$outgoing = sendChannel;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass1(this.$periodMillis, this.$timeoutMillis, this.$onTimeout, this.$channel, this.$outgoing, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Removed duplicated region for block: B:22:0x00a0 A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:23:0x00a1  */
        /* JADX WARN: Removed duplicated region for block: B:26:0x00dd A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:29:0x00e2 A[Catch: ClosedByteChannelException | CancellationException | ClosedReceiveChannelException | ClosedSendChannelException -> 0x011a, ClosedByteChannelException | CancellationException | ClosedReceiveChannelException | ClosedSendChannelException -> 0x011a, ClosedByteChannelException | CancellationException | ClosedReceiveChannelException | ClosedSendChannelException -> 0x011a, ClosedByteChannelException | CancellationException | ClosedReceiveChannelException | ClosedSendChannelException -> 0x011a, TRY_LEAVE, TryCatch #0 {ClosedByteChannelException | CancellationException | ClosedReceiveChannelException | ClosedSendChannelException -> 0x011a, blocks: (B:8:0x0022, B:13:0x003b, B:13:0x003b, B:13:0x003b, B:13:0x003b, B:27:0x00de, B:27:0x00de, B:27:0x00de, B:27:0x00de, B:29:0x00e2, B:29:0x00e2, B:29:0x00e2, B:29:0x00e2, B:20:0x0089, B:20:0x0089, B:20:0x0089, B:20:0x0089, B:24:0x00a3, B:24:0x00a3, B:24:0x00a3, B:24:0x00a3, B:16:0x004b, B:16:0x004b, B:16:0x004b, B:16:0x004b), top: B:36:0x000a }] */
        /* JADX WARN: Removed duplicated region for block: B:32:0x0117  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x00db -> B:14:0x003e). Please report as a decompilation issue!!! */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r14) throws java.lang.Throwable {
            /*
                Method dump skipped, instruction units count: 285
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: io.ktor.websocket.PingPongKt.AnonymousClass1.invokeSuspend(java.lang.Object):java.lang.Object");
        }

        /* JADX INFO: renamed from: io.ktor.websocket.PingPongKt$pinger$1$1, reason: invalid class name and collision with other inner class name */
        /* JADX INFO: compiled from: PingPong.kt */
        @DebugMetadata(c = "io.ktor.websocket.PingPongKt$pinger$1$1", f = "PingPong.kt", l = {SteammessagesPublishedfileSteamclient.PublishedFileDetails.REVISION_FIELD_NUMBER}, m = "invokeSuspend", v = 1)
        public static final class C00021 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
            public final /* synthetic */ Channel<Frame.Pong> $channel;
            public int label;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C00021(Channel<Frame.Pong> channel, Continuation<? super C00021> continuation) {
                super(2, continuation);
                this.$channel = channel;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                return new C00021(this.$channel, continuation);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
                return ((C00021) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) throws Throwable {
                Channel<Frame.Pong> channel;
                Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                int i = this.label;
                if (i != 0 && i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
                do {
                    channel = this.$channel;
                    this.label = 1;
                } while (channel.receive(this) != coroutine_suspended);
                return coroutine_suspended;
            }
        }
    }

    public static final Unit pinger$lambda$0(CompletableJob completableJob, Throwable th) {
        Job.DefaultImpls.cancel$default(completableJob, null, 1, null);
        return Unit.INSTANCE;
    }
}
