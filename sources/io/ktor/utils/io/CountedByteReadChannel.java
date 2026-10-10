package io.ktor.utils.io;

import in.dragonbra.javasteam.protobufs.steamclient.Enums;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.io.Buffer;

/* JADX INFO: compiled from: CountedByteReadChannel.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class CountedByteReadChannel implements ByteReadChannel {
    public final Buffer buffer;
    public long consumed;
    public final ByteReadChannel delegate;
    public long initial;

    /* JADX INFO: renamed from: io.ktor.utils.io.CountedByteReadChannel$awaitContent$1, reason: invalid class name */
    /* JADX INFO: compiled from: CountedByteReadChannel.kt */
    @DebugMetadata(c = "io.ktor.utils.io.CountedByteReadChannel", f = "CountedByteReadChannel.kt", l = {48}, m = "awaitContent", v = 1)
    public static final class AnonymousClass1 extends ContinuationImpl {
        public int I$0;
        public int label;
        public /* synthetic */ Object result;

        public AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Enums.EProtoAppType.k_EAppTypeDepotOnly_VALUE;
            return CountedByteReadChannel.this.awaitContent(0, this);
        }
    }

    public CountedByteReadChannel(ByteReadChannel delegate) {
        Intrinsics.checkNotNullParameter(delegate, "delegate");
        this.delegate = delegate;
        this.buffer = new Buffer();
    }

    public final long getTotalBytesRead() {
        updateConsumed();
        return this.consumed;
    }

    @Override // io.ktor.utils.io.ByteReadChannel, io.ktor.utils.io.ByteWriteChannel
    public Throwable getClosedCause() {
        return this.delegate.getClosedCause();
    }

    @Override // io.ktor.utils.io.ByteReadChannel
    public boolean isClosedForRead() {
        return this.buffer.exhausted() && this.delegate.isClosedForRead();
    }

    @Override // io.ktor.utils.io.ByteReadChannel
    public Buffer getReadBuffer() {
        transferFromDelegate();
        return this.buffer;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    @Override // io.ktor.utils.io.ByteReadChannel
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.Object awaitContent(int r9, kotlin.coroutines.Continuation<? super java.lang.Boolean> r10) throws java.lang.Throwable {
        /*
            r8 = this;
            boolean r0 = r10 instanceof io.ktor.utils.io.CountedByteReadChannel.AnonymousClass1
            if (r0 == 0) goto L13
            r0 = r10
            io.ktor.utils.io.CountedByteReadChannel$awaitContent$1 r0 = (io.ktor.utils.io.CountedByteReadChannel.AnonymousClass1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            io.ktor.utils.io.CountedByteReadChannel$awaitContent$1 r0 = new io.ktor.utils.io.CountedByteReadChannel$awaitContent$1
            r0.<init>(r10)
        L18:
            java.lang.Object r10 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L31
            if (r2 != r3) goto L29
            kotlin.ResultKt.throwOnFailure(r10)
            goto L53
        L29:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r9)
            throw r8
        L31:
            kotlin.ResultKt.throwOnFailure(r10)
            kotlinx.io.Buffer r10 = r8.getReadBuffer()
            long r4 = r10.getSize()
            long r6 = (long) r9
            int r10 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            if (r10 < 0) goto L46
            java.lang.Boolean r8 = kotlin.coroutines.jvm.internal.Boxing.boxBoolean(r3)
            return r8
        L46:
            io.ktor.utils.io.ByteReadChannel r10 = r8.delegate
            r0.I$0 = r9
            r0.label = r3
            java.lang.Object r10 = r10.awaitContent(r9, r0)
            if (r10 != r1) goto L53
            return r1
        L53:
            java.lang.Boolean r10 = (java.lang.Boolean) r10
            boolean r9 = r10.booleanValue()
            if (r9 == 0) goto L63
            r8.transferFromDelegate()
            java.lang.Boolean r8 = kotlin.coroutines.jvm.internal.Boxing.boxBoolean(r3)
            return r8
        L63:
            r8 = 0
            java.lang.Boolean r8 = kotlin.coroutines.jvm.internal.Boxing.boxBoolean(r8)
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.utils.io.CountedByteReadChannel.awaitContent(int, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public final void transferFromDelegate() {
        updateConsumed();
        this.initial += this.buffer.transferFrom(this.delegate.getReadBuffer());
    }

    @Override // io.ktor.utils.io.ByteReadChannel, io.ktor.utils.io.ByteWriteChannel
    public void cancel(Throwable th) {
        this.delegate.cancel(th);
        this.buffer.close();
    }

    public final void updateConsumed() {
        this.consumed += this.initial - this.buffer.getSize();
        this.initial = this.buffer.getSize();
    }
}
