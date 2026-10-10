package io.ktor.network.tls;

import io.ktor.utils.io.ByteWriteChannel;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SpillingKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.io.Buffer;

/* JADX INFO: compiled from: TLSClientHandshake.kt */
/* JADX INFO: loaded from: classes2.dex */
@DebugMetadata(c = "io.ktor.network.tls.TLSClientHandshake$output$2$1$1", f = "TLSClientHandshake.kt", l = {132, 133}, m = "invokeSuspend", v = 1)
public final class TLSClientHandshake$output$2$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    public final /* synthetic */ ByteWriteChannel $rawOutput;
    public Object L$0;
    public Object L$1;
    public int label;
    public final /* synthetic */ TLSClientHandshake this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TLSClientHandshake$output$2$1$1(TLSClientHandshake tLSClientHandshake, ByteWriteChannel byteWriteChannel, Continuation<? super TLSClientHandshake$output$2$1$1> continuation) {
        super(2, continuation);
        this.this$0 = tLSClientHandshake;
        this.$rawOutput = byteWriteChannel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new TLSClientHandshake$output$2$1$1(this.this$0, this.$rawOutput, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((TLSClientHandshake$output$2$1$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        TLSRecord tLSRecordEncrypt;
        TLSRecord tLSRecord;
        Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        try {
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                TLSRecordType tLSRecordType = TLSRecordType.Alert;
                Buffer buffer = new Buffer();
                buffer.writeByte((byte) TLSAlertLevel.WARNING.getCode());
                buffer.writeByte((byte) TLSAlertType.CloseNotify.getCode());
                Unit unit = Unit.INSTANCE;
                TLSRecord tLSRecord2 = new TLSRecord(tLSRecordType, null, buffer, 2, null);
                tLSRecordEncrypt = this.this$0.getUseCipher() ? this.this$0.getCipher().encrypt(tLSRecord2) : tLSRecord2;
                ByteWriteChannel byteWriteChannel = this.$rawOutput;
                this.L$0 = SpillingKt.nullOutSpilledVariable(tLSRecord2);
                this.L$1 = SpillingKt.nullOutSpilledVariable(tLSRecordEncrypt);
                this.label = 1;
                if (RenderKt.writeRecord(byteWriteChannel, tLSRecordEncrypt, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
                tLSRecord = tLSRecord2;
            } else {
                if (i != 1) {
                    if (i != 2) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.throwOnFailure(obj);
                    this.this$0.closeTask.complete();
                    return Unit.INSTANCE;
                }
                tLSRecordEncrypt = (TLSRecord) this.L$1;
                tLSRecord = (TLSRecord) this.L$0;
                ResultKt.throwOnFailure(obj);
            }
            ByteWriteChannel byteWriteChannel2 = this.$rawOutput;
            this.L$0 = SpillingKt.nullOutSpilledVariable(tLSRecord);
            this.L$1 = SpillingKt.nullOutSpilledVariable(tLSRecordEncrypt);
            this.label = 2;
            if (byteWriteChannel2.flushAndClose(this) == coroutine_suspended) {
                return coroutine_suspended;
            }
            this.this$0.closeTask.complete();
            return Unit.INSTANCE;
        } catch (Throwable th) {
            this.this$0.closeTask.complete();
            throw th;
        }
    }
}
