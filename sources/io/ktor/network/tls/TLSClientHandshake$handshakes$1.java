package io.ktor.network.tls;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.channels.ProducerScope;

/* JADX INFO: compiled from: TLSClientHandshake.kt */
/* JADX INFO: loaded from: classes2.dex */
@DebugMetadata(c = "io.ktor.network.tls.TLSClientHandshake$handshakes$1", f = "TLSClientHandshake.kt", l = {150, 165}, m = "invokeSuspend", v = 1)
public final class TLSClientHandshake$handshakes$1 extends SuspendLambda implements Function2<ProducerScope<? super TLSHandshake>, Continuation<? super Unit>, Object> {
    public /* synthetic */ Object L$0;
    public Object L$1;
    public Object L$2;
    public Object L$3;
    public int label;
    public final /* synthetic */ TLSClientHandshake this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TLSClientHandshake$handshakes$1(TLSClientHandshake tLSClientHandshake, Continuation<? super TLSClientHandshake$handshakes$1> continuation) {
        super(2, continuation);
        this.this$0 = tLSClientHandshake;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        TLSClientHandshake$handshakes$1 tLSClientHandshake$handshakes$1 = new TLSClientHandshake$handshakes$1(this.this$0, continuation);
        tLSClientHandshake$handshakes$1.L$0 = obj;
        return tLSClientHandshake$handshakes$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(ProducerScope<? super TLSHandshake> producerScope, Continuation<? super Unit> continuation) {
        return ((TLSClientHandshake$handshakes$1) create(producerScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x0072, code lost:
    
        if (r2.getType() == io.ktor.network.tls.TLSHandshakeType.Finished) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0074, code lost:
    
        io.ktor.network.tls.UtilsKt.m8129plusAssignHh8V18w(r8.this$0.digest, r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x007d, code lost:
    
        r9 = r0.getChannel();
        r8.L$0 = r0;
        r8.L$1 = kotlin.coroutines.jvm.internal.SpillingKt.nullOutSpilledVariable(r6);
        r8.L$2 = r5;
        r8.L$3 = r2;
        r8.label = 2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0093, code lost:
    
        if (r9.send(r2, r8) != r1) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0095, code lost:
    
        return r1;
     */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0049 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0054  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0060  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00a4  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x0054 -> B:17:0x005a). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x0093 -> B:27:0x0096). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r9) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 202
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.network.tls.TLSClientHandshake$handshakes$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
