package io.ktor.network.tls;

import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin;
import io.ktor.utils.io.ByteReadChannel;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.channels.ProducerScope;

/* JADX INFO: compiled from: TLSClientHandshake.kt */
/* JADX INFO: loaded from: classes2.dex */
@DebugMetadata(c = "io.ktor.network.tls.TLSClientHandshake$input$1", f = "TLSClientHandshake.kt", l = {63, SteammessagesClientserverLogin.CMsgClientLogon.SONY_PSN_NAME_FIELD_NUMBER}, m = "invokeSuspend", v = 1)
public final class TLSClientHandshake$input$1 extends SuspendLambda implements Function2<ProducerScope<? super TLSRecord>, Continuation<? super Unit>, Object> {
    public final /* synthetic */ ByteReadChannel $rawInput;
    public int I$0;
    public /* synthetic */ Object L$0;
    public Object L$1;
    public Object L$2;
    public Object L$3;
    public int label;
    public final /* synthetic */ TLSClientHandshake this$0;

    /* JADX INFO: compiled from: TLSClientHandshake.kt */
    public static final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[TLSRecordType.values().length];
            try {
                iArr[TLSRecordType.Alert.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[TLSRecordType.ChangeCipherSpec.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TLSClientHandshake$input$1(ByteReadChannel byteReadChannel, TLSClientHandshake tLSClientHandshake, Continuation<? super TLSClientHandshake$input$1> continuation) {
        super(2, continuation);
        this.$rawInput = byteReadChannel;
        this.this$0 = tLSClientHandshake;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        TLSClientHandshake$input$1 tLSClientHandshake$input$1 = new TLSClientHandshake$input$1(this.$rawInput, this.this$0, continuation);
        tLSClientHandshake$input$1.L$0 = obj;
        return tLSClientHandshake$input$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(ProducerScope<? super TLSRecord> producerScope, Continuation<? super Unit> continuation) {
        return ((TLSClientHandshake$input$1) create(producerScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0058 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x005d A[Catch: all -> 0x0029, ClosedReceiveChannelException -> 0x002c, TryCatch #2 {ClosedReceiveChannelException -> 0x002c, blocks: (B:7:0x0024, B:18:0x0044, B:21:0x0059, B:23:0x005d, B:25:0x0069, B:28:0x007d, B:15:0x003a), top: B:74:0x0010 }] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0068  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x007b  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00f1 A[Catch: all -> 0x0029, ClosedReceiveChannelException -> 0x00b9, TryCatch #3 {all -> 0x0029, blocks: (B:7:0x0024, B:18:0x0044, B:21:0x0059, B:23:0x005d, B:25:0x0069, B:28:0x007d, B:30:0x0094, B:36:0x00bf, B:39:0x00c8, B:41:0x00e1, B:42:0x00e4, B:45:0x00e9, B:46:0x00f0, B:47:0x00f1, B:49:0x0109, B:53:0x0117, B:55:0x0133, B:15:0x003a), top: B:74:0x0010 }] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:31:0x00b3 -> B:33:0x00b6). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:38:0x00c6 -> B:33:0x00b6). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r19) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 380
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.network.tls.TLSClientHandshake$input$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
