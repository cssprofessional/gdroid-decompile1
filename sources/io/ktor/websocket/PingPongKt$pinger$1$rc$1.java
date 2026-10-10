package io.ktor.websocket;

import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends;
import io.ktor.websocket.Frame;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.channels.Channel;
import kotlinx.coroutines.channels.SendChannel;

/* JADX INFO: compiled from: PingPong.kt */
/* JADX INFO: loaded from: classes2.dex */
@DebugMetadata(c = "io.ktor.websocket.PingPongKt$pinger$1$rc$1", f = "PingPong.kt", l = {SteammessagesClientserverFriends.CMsgClientPersonaState.Friend.WATCHING_BROADCAST_TITLE_FIELD_NUMBER, 81}, m = "invokeSuspend", v = 1)
public final class PingPongKt$pinger$1$rc$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    public final /* synthetic */ Channel<Frame.Pong> $channel;
    public final /* synthetic */ SendChannel<Frame> $outgoing;
    public final /* synthetic */ String $pingMessage;
    public int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public PingPongKt$pinger$1$rc$1(SendChannel<? super Frame> sendChannel, String str, Channel<Frame.Pong> channel, Continuation<? super PingPongKt$pinger$1$rc$1> continuation) {
        super(2, continuation);
        this.$outgoing = sendChannel;
        this.$pingMessage = str;
        this.$channel = channel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new PingPongKt$pinger$1$rc$1(this.$outgoing, this.$pingMessage, this.$channel, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((PingPongKt$pinger$1$rc$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0068  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0083  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x004a -> B:16:0x004d). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r10) throws java.lang.Throwable {
        /*
            r9 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r9.label
            r2 = 2
            r3 = 1
            if (r1 == 0) goto L1e
            if (r1 == r3) goto L1a
            if (r1 != r2) goto L12
            kotlin.ResultKt.throwOnFailure(r10)
            goto L4d
        L12:
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
            java.lang.String r10 = "call to 'resume' before 'invoke' with coroutine"
            r9.<init>(r10)
            throw r9
        L1a:
            kotlin.ResultKt.throwOnFailure(r10)
            goto L42
        L1e:
            kotlin.ResultKt.throwOnFailure(r10)
            org.slf4j.Logger r10 = io.ktor.websocket.DefaultWebSocketSessionKt.getLOGGER()
            java.lang.String r1 = "WebSocket Pinger: sending ping frame"
            r10.trace(r1)
            kotlinx.coroutines.channels.SendChannel<io.ktor.websocket.Frame> r10 = r9.$outgoing
            io.ktor.websocket.Frame$Ping r1 = new io.ktor.websocket.Frame$Ping
            java.lang.String r4 = r9.$pingMessage
            java.nio.charset.Charset r5 = kotlin.text.Charsets.ISO_8859_1
            byte[] r4 = io.ktor.utils.io.core.StringsKt.toByteArray(r4, r5)
            r1.<init>(r4)
            r9.label = r3
            java.lang.Object r10 = r10.send(r1, r9)
            if (r10 != r0) goto L42
            return r0
        L42:
            kotlinx.coroutines.channels.Channel<io.ktor.websocket.Frame$Pong> r10 = r9.$channel
            r9.label = r2
            java.lang.Object r10 = r10.receive(r9)
            if (r10 != r0) goto L4d
            return r0
        L4d:
            io.ktor.websocket.Frame$Pong r10 = (io.ktor.websocket.Frame.Pong) r10
            byte[] r3 = r10.getData()
            byte[] r1 = r10.getData()
            int r5 = r1.length
            r7 = 4
            r8 = 0
            r4 = 0
            r6 = 0
            java.lang.String r1 = kotlin.text.StringsKt__StringsJVMKt.decodeToString$default(r3, r4, r5, r6, r7, r8)
            java.lang.String r3 = r9.$pingMessage
            boolean r1 = kotlin.jvm.internal.Intrinsics.areEqual(r1, r3)
            if (r1 == 0) goto L83
            org.slf4j.Logger r9 = io.ktor.websocket.DefaultWebSocketSessionKt.getLOGGER()
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = "WebSocket Pinger: received valid pong frame "
            r0.append(r1)
            r0.append(r10)
            java.lang.String r10 = r0.toString()
            r9.trace(r10)
            kotlin.Unit r9 = kotlin.Unit.INSTANCE
            return r9
        L83:
            org.slf4j.Logger r1 = io.ktor.websocket.DefaultWebSocketSessionKt.getLOGGER()
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            java.lang.String r4 = "WebSocket Pinger: received invalid pong frame "
            r3.append(r4)
            r3.append(r10)
            java.lang.String r10 = ", continue waiting"
            r3.append(r10)
            java.lang.String r10 = r3.toString()
            r1.trace(r10)
            goto L42
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.websocket.PingPongKt$pinger$1$rc$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
