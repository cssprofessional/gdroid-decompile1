package io.ktor.client.engine.cio;

import io.ktor.utils.io.ByteReadChannel;
import io.ktor.utils.io.ByteWriteChannel;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Job;

/* JADX INFO: compiled from: ConnectionPipeline.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class ConnectionPipelineKt {

    /* JADX INFO: renamed from: io.ktor.client.engine.cio.ConnectionPipelineKt$skipCancels$1, reason: invalid class name */
    /* JADX INFO: compiled from: ConnectionPipeline.kt */
    @DebugMetadata(c = "io.ktor.client.engine.cio.ConnectionPipelineKt$skipCancels$1", f = "ConnectionPipeline.kt", l = {165, 170, 173, 181, 181}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        public final /* synthetic */ ByteReadChannel $input;
        public final /* synthetic */ ByteWriteChannel $output;
        public int I$0;
        public int I$1;
        public int I$2;
        public Object L$0;
        public Object L$1;
        public Object L$2;
        public Object L$3;
        public Object L$4;
        public Object L$5;
        public int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(ByteWriteChannel byteWriteChannel, ByteReadChannel byteReadChannel, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$output = byteWriteChannel;
            this.$input = byteReadChannel;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass1(this.$output, this.$input, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Removed duplicated region for block: B:31:0x00ea A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:32:0x00eb  */
        /* JADX WARN: Removed duplicated region for block: B:35:0x00fb A[Catch: all -> 0x0059, TRY_LEAVE, TryCatch #5 {all -> 0x0059, blocks: (B:14:0x004a, B:29:0x00cf, B:33:0x00f3, B:35:0x00fb, B:53:0x017e, B:24:0x00b1, B:28:0x00ca), top: B:81:0x000e }] */
        /* JADX WARN: Removed duplicated region for block: B:47:0x0165 A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:48:0x0166  */
        /* JADX WARN: Removed duplicated region for block: B:53:0x017e A[Catch: all -> 0x0059, TRY_ENTER, TRY_LEAVE, TryCatch #5 {all -> 0x0059, blocks: (B:14:0x004a, B:29:0x00cf, B:33:0x00f3, B:35:0x00fb, B:53:0x017e, B:24:0x00b1, B:28:0x00ca), top: B:81:0x000e }] */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:39:0x0117 -> B:40:0x011f). Please report as a decompilation issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:48:0x0166 -> B:40:0x011f). Please report as a decompilation issue!!! */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r25) throws java.lang.Throwable {
            /*
                Method dump skipped, instruction units count: 448
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: io.ktor.client.engine.cio.ConnectionPipelineKt.AnonymousClass1.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    public static final Job skipCancels(CoroutineScope coroutineScope, ByteReadChannel byteReadChannel, ByteWriteChannel byteWriteChannel) {
        return BuildersKt__Builders_commonKt.launch$default(coroutineScope, null, null, new AnonymousClass1(byteWriteChannel, byteReadChannel, null), 3, null);
    }
}
