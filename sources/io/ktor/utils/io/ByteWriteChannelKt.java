package io.ktor.utils.io;

import io.ktor.utils.io.core.BytePacketBuilderKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ByteWriteChannel.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class ByteWriteChannelKt {

    /* JADX INFO: renamed from: io.ktor.utils.io.ByteWriteChannelKt$close$1, reason: invalid class name */
    /* JADX INFO: compiled from: ByteWriteChannel.kt */
    public static final /* synthetic */ class AnonymousClass1 extends FunctionReferenceImpl implements Function1<Continuation<? super Unit>, Object> {
        public AnonymousClass1(Object obj) {
            super(1, obj, ByteWriteChannel.class, "flushAndClose", "flushAndClose(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", 0);
        }

        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Continuation<? super Unit> continuation) {
            return ((ByteWriteChannel) this.receiver).flushAndClose(continuation);
        }
    }

    public static final void close(ByteWriteChannel byteWriteChannel) {
        Intrinsics.checkNotNullParameter(byteWriteChannel, "<this>");
        ByteWriteChannelOperationsKt.fireAndForget(new AnonymousClass1(byteWriteChannel));
    }

    public static final Object flushIfNeeded(ByteWriteChannel byteWriteChannel, Continuation<? super Unit> continuation) {
        ByteReadChannelOperationsKt.rethrowCloseCauseIfNeeded(byteWriteChannel);
        if (byteWriteChannel.getAutoFlush() || BytePacketBuilderKt.getSize(byteWriteChannel.getWriteBuffer()) >= 1048576) {
            Object objFlush = byteWriteChannel.flush(continuation);
            return objFlush == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objFlush : Unit.INSTANCE;
        }
        return Unit.INSTANCE;
    }
}
