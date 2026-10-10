package io.ktor.client.utils;

import io.ktor.client.content.ProgressListener;
import io.ktor.utils.io.ByteReadChannel;
import io.ktor.utils.io.ByteWriteChannelOperationsKt;
import io.ktor.utils.io.WriterScope;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.GlobalScope;

/* JADX INFO: compiled from: ByteChannelUtils.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class ByteChannelUtilsKt {

    /* JADX INFO: renamed from: io.ktor.client.utils.ByteChannelUtilsKt$observable$1, reason: invalid class name */
    /* JADX INFO: compiled from: ByteChannelUtils.kt */
    @DebugMetadata(c = "io.ktor.client.utils.ByteChannelUtilsKt$observable$1", f = "ByteChannelUtils.kt", l = {22, 24, 26, 31}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<WriterScope, Continuation<? super Unit>, Object> {
        public final /* synthetic */ Long $contentLength;
        public final /* synthetic */ ProgressListener $listener;
        public final /* synthetic */ ByteReadChannel $this_observable;
        public int I$0;
        public int I$1;
        public int I$2;
        public long J$0;
        public /* synthetic */ Object L$0;
        public Object L$1;
        public Object L$2;
        public Object L$3;
        public Object L$4;
        public Object L$5;
        public Object L$6;
        public int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(ByteReadChannel byteReadChannel, ProgressListener progressListener, Long l, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$this_observable = byteReadChannel;
            this.$listener = progressListener;
            this.$contentLength = l;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$this_observable, this.$listener, this.$contentLength, continuation);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(WriterScope writerScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(writerScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Code restructure failed: missing block: B:77:0x00e6, code lost:
        
            r14 = 1;
         */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Not initialized variable reg: 7, insn: 0x0068: MOVE (r1 I:??[OBJECT, ARRAY]) = (r7 I:??[OBJECT, ARRAY]), block:B:19:0x0068 */
        /* JADX WARN: Removed duplicated region for block: B:33:0x00ec A[Catch: all -> 0x01a1, TryCatch #0 {all -> 0x01a1, blocks: (B:31:0x00e6, B:33:0x00ec, B:37:0x0133, B:39:0x013b, B:53:0x01b0, B:57:0x01c3), top: B:68:0x00e6 }] */
        /* JADX WARN: Removed duplicated region for block: B:39:0x013b A[Catch: all -> 0x01a1, TRY_LEAVE, TryCatch #0 {all -> 0x01a1, blocks: (B:31:0x00e6, B:33:0x00ec, B:37:0x0133, B:39:0x013b, B:53:0x01b0, B:57:0x01c3), top: B:68:0x00e6 }] */
        /* JADX WARN: Removed duplicated region for block: B:46:0x0190 A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:47:0x0191  */
        /* JADX WARN: Removed duplicated region for block: B:52:0x01a5  */
        /* JADX WARN: Type inference failed for: r11v11 */
        /* JADX WARN: Type inference failed for: r11v12, types: [java.lang.Object] */
        /* JADX WARN: Type inference failed for: r11v14, types: [java.lang.Object] */
        /* JADX WARN: Type inference failed for: r11v15 */
        /* JADX WARN: Type inference failed for: r11v16 */
        /* JADX WARN: Type inference failed for: r11v3 */
        /* JADX WARN: Type inference failed for: r11v8 */
        /* JADX WARN: Type inference failed for: r11v9 */
        /* JADX WARN: Type inference failed for: r15v13 */
        /* JADX WARN: Type inference failed for: r15v2, types: [io.ktor.utils.io.pool.ObjectPool] */
        /* JADX WARN: Type inference failed for: r15v4 */
        /* JADX WARN: Type inference failed for: r15v6, types: [java.lang.Object] */
        /* JADX WARN: Type inference failed for: r15v9 */
        /* JADX WARN: Type inference failed for: r24v0 */
        /* JADX WARN: Type inference failed for: r2v1 */
        /* JADX WARN: Type inference failed for: r2v10 */
        /* JADX WARN: Type inference failed for: r2v18 */
        /* JADX WARN: Type inference failed for: r2v20 */
        /* JADX WARN: Type inference failed for: r2v27, types: [io.ktor.utils.io.pool.ObjectPool] */
        /* JADX WARN: Type inference failed for: r2v29 */
        /* JADX WARN: Type inference failed for: r2v6, types: [io.ktor.utils.io.pool.ObjectPool] */
        /* JADX WARN: Type inference failed for: r2v7 */
        /* JADX WARN: Type inference failed for: r2v8, types: [io.ktor.utils.io.pool.ObjectPool] */
        /* JADX WARN: Type inference failed for: r2v9, types: [io.ktor.utils.io.pool.ObjectPool] */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r26) throws java.lang.Throwable {
            /*
                Method dump skipped, instruction units count: 516
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: io.ktor.client.utils.ByteChannelUtilsKt.AnonymousClass1.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    public static final ByteReadChannel observable(ByteReadChannel byteReadChannel, CoroutineContext context, Long l, ProgressListener listener) {
        Intrinsics.checkNotNullParameter(byteReadChannel, "<this>");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(listener, "listener");
        return ByteWriteChannelOperationsKt.writer((CoroutineScope) GlobalScope.INSTANCE, context, true, (Function2<? super WriterScope, ? super Continuation<? super Unit>, ? extends Object>) new AnonymousClass1(byteReadChannel, listener, l, null)).getChannel();
    }
}
