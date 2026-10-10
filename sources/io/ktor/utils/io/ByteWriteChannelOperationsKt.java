package io.ktor.utils.io;

import in.dragonbra.javasteam.protobufs.steamclient.Enums;
import java.util.concurrent.CancellationException;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.DisposableHandle;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.intrinsics.CancellableKt;

/* JADX INFO: compiled from: ByteWriteChannelOperations.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class ByteWriteChannelOperationsKt {
    public static final ByteWriteChannelOperationsKt$NO_CALLBACK$1 NO_CALLBACK = new Continuation<Object>() { // from class: io.ktor.utils.io.ByteWriteChannelOperationsKt$NO_CALLBACK$1
        public final CoroutineContext context = EmptyCoroutineContext.INSTANCE;

        @Override // kotlin.coroutines.Continuation
        public void resumeWith(Object obj) {
        }

        @Override // kotlin.coroutines.Continuation
        public CoroutineContext getContext() {
            return this.context;
        }
    };

    /* JADX INFO: renamed from: io.ktor.utils.io.ByteWriteChannelOperationsKt$writePacket$2, reason: invalid class name */
    /* JADX INFO: compiled from: ByteWriteChannelOperations.kt */
    @DebugMetadata(c = "io.ktor.utils.io.ByteWriteChannelOperationsKt", f = "ByteWriteChannelOperations.kt", l = {122}, m = "writePacket", v = 1)
    public static final class AnonymousClass2 extends ContinuationImpl {
        public Object L$0;
        public Object L$1;
        public int label;
        public /* synthetic */ Object result;

        public AnonymousClass2(Continuation<? super AnonymousClass2> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Enums.EProtoAppType.k_EAppTypeDepotOnly_VALUE;
            return ByteWriteChannelOperationsKt.writePacket(null, null, this);
        }
    }

    public static final Object writeByte(ByteWriteChannel byteWriteChannel, byte b, Continuation<? super Unit> continuation) {
        byteWriteChannel.getWriteBuffer().writeByte(b);
        Object objFlushIfNeeded = ByteWriteChannelKt.flushIfNeeded(byteWriteChannel, continuation);
        return objFlushIfNeeded == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objFlushIfNeeded : Unit.INSTANCE;
    }

    public static final Object writeShort(ByteWriteChannel byteWriteChannel, short s, Continuation<? super Unit> continuation) {
        byteWriteChannel.getWriteBuffer().writeShort(s);
        Object objFlushIfNeeded = ByteWriteChannelKt.flushIfNeeded(byteWriteChannel, continuation);
        return objFlushIfNeeded == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objFlushIfNeeded : Unit.INSTANCE;
    }

    public static /* synthetic */ Object writeFully$default(ByteWriteChannel byteWriteChannel, byte[] bArr, int i, int i2, Continuation continuation, int i3, Object obj) {
        if ((i3 & 2) != 0) {
            i = 0;
        }
        if ((i3 & 4) != 0) {
            i2 = bArr.length;
        }
        return writeFully(byteWriteChannel, bArr, i, i2, continuation);
    }

    public static final Object writeFully(ByteWriteChannel byteWriteChannel, byte[] bArr, int i, int i2, Continuation<? super Unit> continuation) {
        byteWriteChannel.getWriteBuffer().write(bArr, i, i2);
        Object objFlushIfNeeded = ByteWriteChannelKt.flushIfNeeded(byteWriteChannel, continuation);
        return objFlushIfNeeded == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objFlushIfNeeded : Unit.INSTANCE;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final java.lang.Object writePacket(io.ktor.utils.io.ByteWriteChannel r7, kotlinx.io.Source r8, kotlin.coroutines.Continuation<? super kotlin.Unit> r9) throws java.lang.Throwable {
        /*
            boolean r0 = r9 instanceof io.ktor.utils.io.ByteWriteChannelOperationsKt.AnonymousClass2
            if (r0 == 0) goto L13
            r0 = r9
            io.ktor.utils.io.ByteWriteChannelOperationsKt$writePacket$2 r0 = (io.ktor.utils.io.ByteWriteChannelOperationsKt.AnonymousClass2) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            io.ktor.utils.io.ByteWriteChannelOperationsKt$writePacket$2 r0 = new io.ktor.utils.io.ByteWriteChannelOperationsKt$writePacket$2
            r0.<init>(r9)
        L18:
            java.lang.Object r9 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L3c
            if (r2 != r3) goto L34
            java.lang.Object r7 = r0.L$1
            kotlinx.io.Source r7 = (kotlinx.io.Source) r7
            java.lang.Object r8 = r0.L$0
            io.ktor.utils.io.ByteWriteChannel r8 = (io.ktor.utils.io.ByteWriteChannel) r8
            kotlin.ResultKt.throwOnFailure(r9)
            r6 = r8
            r8 = r7
            r7 = r6
            goto L3f
        L34:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r8)
            throw r7
        L3c:
            kotlin.ResultKt.throwOnFailure(r9)
        L3f:
            boolean r9 = r8.exhausted()
            if (r9 != 0) goto L5d
            kotlinx.io.Sink r9 = r7.getWriteBuffer()
            long r4 = io.ktor.utils.io.core.ByteReadPacketKt.getRemaining(r8)
            r9.write(r8, r4)
            r0.L$0 = r7
            r0.L$1 = r8
            r0.label = r3
            java.lang.Object r9 = io.ktor.utils.io.ByteWriteChannelKt.flushIfNeeded(r7, r0)
            if (r9 != r1) goto L3f
            return r1
        L5d:
            kotlin.Unit r7 = kotlin.Unit.INSTANCE
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.utils.io.ByteWriteChannelOperationsKt.writePacket(io.ktor.utils.io.ByteWriteChannel, kotlinx.io.Source, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX INFO: renamed from: io.ktor.utils.io.ByteWriteChannelOperationsKt$close$1, reason: invalid class name */
    /* JADX INFO: compiled from: ByteWriteChannelOperations.kt */
    public static final /* synthetic */ class AnonymousClass1 extends FunctionReferenceImpl implements Function1<Continuation<? super Unit>, Object> {
        public AnonymousClass1(Object obj) {
            super(1, obj, ByteWriteChannel.class, "flushAndClose", "flushAndClose(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", 0);
        }

        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Continuation<? super Unit> continuation) {
            return ((ByteWriteChannel) this.receiver).flushAndClose(continuation);
        }
    }

    public static final void close(ByteWriteChannel byteWriteChannel, Throwable th) {
        Intrinsics.checkNotNullParameter(byteWriteChannel, "<this>");
        if (th == null) {
            fireAndForget(new AnonymousClass1(byteWriteChannel));
        } else {
            byteWriteChannel.cancel(th);
        }
    }

    public static final Object join(ChannelJob channelJob, Continuation<? super Unit> continuation) {
        Object objJoin = channelJob.getJob().join(continuation);
        return objJoin == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objJoin : Unit.INSTANCE;
    }

    public static final boolean isCompleted(ChannelJob channelJob) {
        Intrinsics.checkNotNullParameter(channelJob, "<this>");
        return channelJob.getJob().isCompleted();
    }

    public static final boolean isCancelled(ChannelJob channelJob) {
        Intrinsics.checkNotNullParameter(channelJob, "<this>");
        return channelJob.getJob().isCancelled();
    }

    public static final CancellationException getCancellationException(ChannelJob channelJob) {
        Intrinsics.checkNotNullParameter(channelJob, "<this>");
        return channelJob.getJob().getCancellationException();
    }

    public static final DisposableHandle invokeOnCompletion(ChannelJob channelJob, Function1<? super Throwable, Unit> block) {
        Intrinsics.checkNotNullParameter(channelJob, "<this>");
        Intrinsics.checkNotNullParameter(block, "block");
        return channelJob.getJob().invokeOnCompletion(block);
    }

    public static final void cancel(ChannelJob channelJob) {
        Intrinsics.checkNotNullParameter(channelJob, "<this>");
        Job.DefaultImpls.cancel$default(channelJob.getJob(), null, 1, null);
    }

    public static /* synthetic */ WriterJob writer$default(CoroutineScope coroutineScope, CoroutineContext coroutineContext, boolean z, Function2 function2, int i, Object obj) {
        if ((i & 1) != 0) {
            coroutineContext = EmptyCoroutineContext.INSTANCE;
        }
        if ((i & 2) != 0) {
            z = false;
        }
        return writer(coroutineScope, coroutineContext, z, (Function2<? super WriterScope, ? super Continuation<? super Unit>, ? extends Object>) function2);
    }

    public static final WriterJob writer(CoroutineScope coroutineScope, CoroutineContext coroutineContext, boolean z, Function2<? super WriterScope, ? super Continuation<? super Unit>, ? extends Object> block) {
        Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
        Intrinsics.checkNotNullParameter(coroutineContext, "coroutineContext");
        Intrinsics.checkNotNullParameter(block, "block");
        return writer(coroutineScope, coroutineContext, new ByteChannel(false, 1, null), block);
    }

    public static final WriterJob writer(CoroutineScope coroutineScope, CoroutineContext coroutineContext, final ByteChannel channel, Function2<? super WriterScope, ? super Continuation<? super Unit>, ? extends Object> block) {
        Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
        Intrinsics.checkNotNullParameter(coroutineContext, "coroutineContext");
        Intrinsics.checkNotNullParameter(channel, "channel");
        Intrinsics.checkNotNullParameter(block, "block");
        Job jobLaunch$default = BuildersKt__Builders_commonKt.launch$default(coroutineScope, coroutineContext, null, new ByteWriteChannelOperationsKt$writer$job$1(block, channel, null), 2, null);
        jobLaunch$default.invokeOnCompletion(new Function1() { // from class: io.ktor.utils.io.ByteWriteChannelOperationsKt$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return ByteWriteChannelOperationsKt.writer$lambda$0$0(channel, (Throwable) obj);
            }
        });
        return new WriterJob(channel, jobLaunch$default);
    }

    public static final Unit writer$lambda$0$0(ByteChannel byteChannel, Throwable th) {
        if (th != null && !byteChannel.isClosedForWrite()) {
            byteChannel.cancel(th);
        }
        return Unit.INSTANCE;
    }

    public static final <R> void fireAndForget(Function1<? super Continuation<? super R>, ? extends Object> function1) {
        Intrinsics.checkNotNullParameter(function1, "<this>");
        CancellableKt.startCoroutineCancellable(function1, NO_CALLBACK);
    }
}
