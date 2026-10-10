package io.ktor.utils.io;

import in.dragonbra.javasteam.protobufs.steamclient.Enums;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.Job;

/* JADX INFO: compiled from: ByteReadChannelOperations.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class ReaderJob implements ChannelJob {
    public final ByteWriteChannel channel;
    public final Job job;

    /* JADX INFO: renamed from: io.ktor.utils.io.ReaderJob$flushAndClose$1, reason: invalid class name */
    /* JADX INFO: compiled from: ByteReadChannelOperations.kt */
    @DebugMetadata(c = "io.ktor.utils.io.ReaderJob", f = "ByteReadChannelOperations.kt", l = {311, 313}, m = "flushAndClose", v = 1)
    public static final class AnonymousClass1 extends ContinuationImpl {
        public int I$0;
        public int I$1;
        public Object L$0;
        public Object L$1;
        public Object L$2;
        public Object L$3;
        public int label;
        public /* synthetic */ Object result;

        public AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Enums.EProtoAppType.k_EAppTypeDepotOnly_VALUE;
            return ReaderJob.this.flushAndClose(this);
        }
    }

    public ReaderJob(ByteWriteChannel channel, Job job) {
        Intrinsics.checkNotNullParameter(channel, "channel");
        Intrinsics.checkNotNullParameter(job, "job");
        this.channel = channel;
        this.job = job;
    }

    public final ByteWriteChannel getChannel() {
        return this.channel;
    }

    @Override // io.ktor.utils.io.ChannelJob
    public Job getJob() {
        return this.job;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object flushAndClose(kotlin.coroutines.Continuation<? super kotlin.Unit> r12) throws java.lang.Throwable {
        /*
            r11 = this;
            boolean r0 = r12 instanceof io.ktor.utils.io.ReaderJob.AnonymousClass1
            if (r0 == 0) goto L13
            r0 = r12
            io.ktor.utils.io.ReaderJob$flushAndClose$1 r0 = (io.ktor.utils.io.ReaderJob.AnonymousClass1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            io.ktor.utils.io.ReaderJob$flushAndClose$1 r0 = new io.ktor.utils.io.ReaderJob$flushAndClose$1
            r0.<init>(r12)
        L18:
            java.lang.Object r12 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 0
            r4 = 2
            r5 = 1
            r6 = 0
            if (r2 == 0) goto L49
            if (r2 == r5) goto L37
            if (r2 != r4) goto L2f
            kotlin.ResultKt.throwOnFailure(r12)
            goto La6
        L2f:
            java.lang.IllegalStateException r11 = new java.lang.IllegalStateException
            java.lang.String r12 = "call to 'resume' before 'invoke' with coroutine"
            r11.<init>(r12)
            throw r11
        L37:
            int r2 = r0.I$0
            java.lang.Object r7 = r0.L$3
            kotlinx.coroutines.Job r7 = (kotlinx.coroutines.Job) r7
            java.lang.Object r7 = r0.L$1
            java.util.Iterator r7 = (java.util.Iterator) r7
            java.lang.Object r8 = r0.L$0
            kotlin.sequences.Sequence r8 = (kotlin.sequences.Sequence) r8
            kotlin.ResultKt.throwOnFailure(r12)
            goto L62
        L49:
            kotlin.ResultKt.throwOnFailure(r12)
            kotlinx.coroutines.Job r12 = r11.getJob()
            kotlinx.coroutines.JobKt.cancelChildren$default(r12, r6, r5, r6)
            kotlinx.coroutines.Job r12 = r11.getJob()
            kotlin.sequences.Sequence r12 = r12.getChildren()
            java.util.Iterator r2 = r12.iterator()
            r8 = r12
            r7 = r2
            r2 = r3
        L62:
            boolean r12 = r7.hasNext()
            if (r12 == 0) goto L93
            java.lang.Object r12 = r7.next()
            r9 = r12
            kotlinx.coroutines.Job r9 = (kotlinx.coroutines.Job) r9
            kotlinx.coroutines.Job.DefaultImpls.cancel$default(r9, r6, r5, r6)
            java.lang.Object r10 = kotlin.coroutines.jvm.internal.SpillingKt.nullOutSpilledVariable(r8)
            r0.L$0 = r10
            r0.L$1 = r7
            java.lang.Object r12 = kotlin.coroutines.jvm.internal.SpillingKt.nullOutSpilledVariable(r12)
            r0.L$2 = r12
            java.lang.Object r12 = kotlin.coroutines.jvm.internal.SpillingKt.nullOutSpilledVariable(r9)
            r0.L$3 = r12
            r0.I$0 = r2
            r0.I$1 = r3
            r0.label = r5
            java.lang.Object r12 = r9.join(r0)
            if (r12 != r1) goto L62
            return r1
        L93:
            io.ktor.utils.io.ByteWriteChannel r11 = r11.channel
            r0.L$0 = r6
            r0.L$1 = r6
            r0.L$2 = r6
            r0.L$3 = r6
            r0.label = r4
            java.lang.Object r11 = r11.flushAndClose(r0)
            if (r11 != r1) goto La6
            return r1
        La6:
            kotlin.Unit r11 = kotlin.Unit.INSTANCE
            return r11
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.utils.io.ReaderJob.flushAndClose(kotlin.coroutines.Continuation):java.lang.Object");
    }
}
