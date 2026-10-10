package io.ktor.network.tls;

import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin;
import io.ktor.utils.io.ByteWriteChannel;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.channels.ActorScope;

/* JADX INFO: compiled from: TLSClientHandshake.kt */
/* JADX INFO: loaded from: classes2.dex */
@DebugMetadata(c = "io.ktor.network.tls.TLSClientHandshake$output$1", f = "TLSClientHandshake.kt", l = {SteammessagesClientserverLogin.CMsgClientLogon.IS_CHROME_OS_FIELD_NUMBER, 114}, m = "invokeSuspend", v = 1)
public final class TLSClientHandshake$output$1 extends SuspendLambda implements Function2<ActorScope<TLSRecord>, Continuation<? super Unit>, Object> {
    public final /* synthetic */ ByteWriteChannel $rawOutput;
    public /* synthetic */ Object L$0;
    public Object L$1;
    public Object L$2;
    public Object L$3;
    public int label;
    public final /* synthetic */ TLSClientHandshake this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TLSClientHandshake$output$1(TLSClientHandshake tLSClientHandshake, ByteWriteChannel byteWriteChannel, Continuation<? super TLSClientHandshake$output$1> continuation) {
        super(2, continuation);
        this.this$0 = tLSClientHandshake;
        this.$rawOutput = byteWriteChannel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        TLSClientHandshake$output$1 tLSClientHandshake$output$1 = new TLSClientHandshake$output$1(this.this$0, this.$rawOutput, continuation);
        tLSClientHandshake$output$1.L$0 = obj;
        return tLSClientHandshake$output$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(ActorScope<TLSRecord> actorScope, Continuation<? super Unit> continuation) {
        return ((TLSClientHandshake$output$1) create(actorScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0052 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0053  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x005e  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:30:0x009d -> B:8:0x0021). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r10) throws java.lang.Throwable {
        /*
            r9 = this;
            java.lang.Object r0 = r9.L$0
            kotlinx.coroutines.channels.ActorScope r0 = (kotlinx.coroutines.channels.ActorScope) r0
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r9.label
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L36
            if (r2 == r4) goto L2e
            if (r2 != r3) goto L26
            java.lang.Object r2 = r9.L$3
            io.ktor.network.tls.TLSRecord r2 = (io.ktor.network.tls.TLSRecord) r2
            java.lang.Object r2 = r9.L$2
            io.ktor.network.tls.TLSRecord r2 = (io.ktor.network.tls.TLSRecord) r2
            java.lang.Object r2 = r9.L$1
            kotlinx.coroutines.channels.ChannelIterator r2 = (kotlinx.coroutines.channels.ChannelIterator) r2
            kotlin.ResultKt.throwOnFailure(r10)     // Catch: java.lang.Throwable -> L23
        L21:
            r10 = r2
            goto L41
        L23:
            r9 = move-exception
            goto La0
        L26:
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
            java.lang.String r10 = "call to 'resume' before 'invoke' with coroutine"
            r9.<init>(r10)
            throw r9
        L2e:
            java.lang.Object r2 = r9.L$1
            kotlinx.coroutines.channels.ChannelIterator r2 = (kotlinx.coroutines.channels.ChannelIterator) r2
            kotlin.ResultKt.throwOnFailure(r10)
            goto L56
        L36:
            kotlin.ResultKt.throwOnFailure(r10)
            kotlinx.coroutines.channels.Channel r10 = r0.getChannel()
            kotlinx.coroutines.channels.ChannelIterator r10 = r10.iterator()
        L41:
            r9.L$0 = r0
            r9.L$1 = r10
            r2 = 0
            r9.L$2 = r2
            r9.L$3 = r2
            r9.label = r4
            java.lang.Object r2 = r10.hasNext(r9)
            if (r2 != r1) goto L53
            return r1
        L53:
            r8 = r2
            r2 = r10
            r10 = r8
        L56:
            java.lang.Boolean r10 = (java.lang.Boolean) r10
            boolean r10 = r10.booleanValue()
            if (r10 == 0) goto La7
            java.lang.Object r10 = r2.next()
            io.ktor.network.tls.TLSRecord r10 = (io.ktor.network.tls.TLSRecord) r10
            io.ktor.network.tls.TLSClientHandshake r5 = r9.this$0     // Catch: java.lang.Throwable -> L23
            boolean r5 = r5.getUseCipher()     // Catch: java.lang.Throwable -> L23
            if (r5 == 0) goto L77
            io.ktor.network.tls.TLSClientHandshake r5 = r9.this$0     // Catch: java.lang.Throwable -> L23
            io.ktor.network.tls.cipher.TLSCipher r5 = io.ktor.network.tls.TLSClientHandshake.access$getCipher(r5)     // Catch: java.lang.Throwable -> L23
            io.ktor.network.tls.TLSRecord r5 = r5.encrypt(r10)     // Catch: java.lang.Throwable -> L23
            goto L78
        L77:
            r5 = r10
        L78:
            io.ktor.network.tls.TLSRecordType r6 = r10.getType()     // Catch: java.lang.Throwable -> L23
            io.ktor.network.tls.TLSRecordType r7 = io.ktor.network.tls.TLSRecordType.ChangeCipherSpec     // Catch: java.lang.Throwable -> L23
            if (r6 != r7) goto L85
            io.ktor.network.tls.TLSClientHandshake r6 = r9.this$0     // Catch: java.lang.Throwable -> L23
            r6.setUseCipher(r4)     // Catch: java.lang.Throwable -> L23
        L85:
            io.ktor.utils.io.ByteWriteChannel r6 = r9.$rawOutput     // Catch: java.lang.Throwable -> L23
            r9.L$0 = r0     // Catch: java.lang.Throwable -> L23
            r9.L$1 = r2     // Catch: java.lang.Throwable -> L23
            java.lang.Object r10 = kotlin.coroutines.jvm.internal.SpillingKt.nullOutSpilledVariable(r10)     // Catch: java.lang.Throwable -> L23
            r9.L$2 = r10     // Catch: java.lang.Throwable -> L23
            java.lang.Object r10 = kotlin.coroutines.jvm.internal.SpillingKt.nullOutSpilledVariable(r5)     // Catch: java.lang.Throwable -> L23
            r9.L$3 = r10     // Catch: java.lang.Throwable -> L23
            r9.label = r3     // Catch: java.lang.Throwable -> L23
            java.lang.Object r10 = io.ktor.network.tls.RenderKt.writeRecord(r6, r5, r9)     // Catch: java.lang.Throwable -> L23
            if (r10 != r1) goto L21
            return r1
        La0:
            kotlinx.coroutines.channels.Channel r10 = r0.getChannel()
            r10.close(r9)
        La7:
            kotlin.Unit r9 = kotlin.Unit.INSTANCE
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.network.tls.TLSClientHandshake$output$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
