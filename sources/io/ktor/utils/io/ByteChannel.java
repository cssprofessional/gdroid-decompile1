package io.ktor.utils.io;

import in.dragonbra.javasteam.protobufs.steamclient.Enums;
import io.ktor.network.selector.InterestSuspensionsMap$$ExternalSyntheticBackportWithForwarding0;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.ExceptionsKt__ExceptionsKt;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.CharsKt__CharJVMKt;
import kotlinx.io.Buffer;
import kotlinx.io.Sink;
import kotlinx.io.Source;

/* JADX INFO: compiled from: ByteChannel.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class ByteChannel implements ByteReadChannel, ByteWriteChannel {
    volatile /* synthetic */ Object _closedCause;
    public final Buffer _readBuffer;
    public final Buffer _writeBuffer;
    public final boolean autoFlush;
    public final Buffer flushBuffer;
    public final Object flushBufferMutex;
    private volatile int flushBufferSize;
    volatile /* synthetic */ Object suspensionSlot;
    public static final /* synthetic */ AtomicReferenceFieldUpdater suspensionSlot$FU = AtomicReferenceFieldUpdater.newUpdater(ByteChannel.class, Object.class, "suspensionSlot");
    public static final /* synthetic */ AtomicReferenceFieldUpdater _closedCause$FU = AtomicReferenceFieldUpdater.newUpdater(ByteChannel.class, Object.class, "_closedCause");

    /* JADX INFO: renamed from: io.ktor.utils.io.ByteChannel$awaitContent$1, reason: invalid class name */
    /* JADX INFO: compiled from: ByteChannel.kt */
    @DebugMetadata(c = "io.ktor.utils.io.ByteChannel", f = "ByteChannel.kt", l = {284}, m = "awaitContent", v = 1)
    public static final class AnonymousClass1 extends ContinuationImpl {
        public int I$0;
        public int I$1;
        public int I$2;
        public Object L$0;
        public int label;
        public /* synthetic */ Object result;

        public AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Enums.EProtoAppType.k_EAppTypeDepotOnly_VALUE;
            return ByteChannel.this.awaitContent(0, this);
        }
    }

    /* JADX INFO: renamed from: io.ktor.utils.io.ByteChannel$flush$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: ByteChannel.kt */
    @DebugMetadata(c = "io.ktor.utils.io.ByteChannel", f = "ByteChannel.kt", l = {284}, m = "flush", v = 1)
    public static final class C00661 extends ContinuationImpl {
        public int I$0;
        public int I$1;
        public Object L$0;
        public int label;
        public /* synthetic */ Object result;

        public C00661(Continuation<? super C00661> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Enums.EProtoAppType.k_EAppTypeDepotOnly_VALUE;
            return ByteChannel.this.flush(this);
        }
    }

    /* JADX INFO: renamed from: io.ktor.utils.io.ByteChannel$flushAndClose$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: ByteChannel.kt */
    @DebugMetadata(c = "io.ktor.utils.io.ByteChannel", f = "ByteChannel.kt", l = {128}, m = "flushAndClose", v = 1)
    public static final class C00671 extends ContinuationImpl {
        public int I$0;
        public Object L$0;
        public int label;
        public /* synthetic */ Object result;

        public C00671(Continuation<? super C00671> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Enums.EProtoAppType.k_EAppTypeDepotOnly_VALUE;
            return ByteChannel.this.flushAndClose(this);
        }
    }

    public ByteChannel() {
        this(false, 1, null);
    }

    public ByteChannel(boolean z) {
        this.autoFlush = z;
        this.flushBuffer = new Buffer();
        this.flushBufferMutex = new Object();
        this.suspensionSlot = Slot.Empty.INSTANCE;
        this._readBuffer = new Buffer();
        this._writeBuffer = new Buffer();
        this._closedCause = null;
    }

    public /* synthetic */ ByteChannel(boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? false : z);
    }

    @Override // io.ktor.utils.io.ByteWriteChannel
    public boolean getAutoFlush() {
        return this.autoFlush;
    }

    @Override // io.ktor.utils.io.ByteReadChannel
    public Source getReadBuffer() throws Throwable {
        CloseToken closeToken = (CloseToken) this._closedCause;
        if (closeToken != null) {
            closeToken.throwOrNull(ByteChannel$readBuffer$1.INSTANCE);
        }
        if (this._readBuffer.exhausted()) {
            moveFlushToReadBuffer();
        }
        return this._readBuffer;
    }

    @Override // io.ktor.utils.io.ByteWriteChannel
    public Sink getWriteBuffer() throws ClosedWriteChannelException {
        CloseToken closeToken;
        if (isClosedForWrite() && ((closeToken = (CloseToken) this._closedCause) == null || closeToken.throwOrNull(ByteChannel$writeBuffer$1.INSTANCE) == null)) {
            throw new ClosedWriteChannelException(null, 1, null);
        }
        return this._writeBuffer;
    }

    @Override // io.ktor.utils.io.ByteReadChannel, io.ktor.utils.io.ByteWriteChannel
    public Throwable getClosedCause() {
        CloseToken closeToken = (CloseToken) this._closedCause;
        if (closeToken != null) {
            return CloseToken.wrapCause$default(closeToken, null, 1, null);
        }
        return null;
    }

    public boolean isClosedForWrite() {
        return this._closedCause != null;
    }

    @Override // io.ktor.utils.io.ByteReadChannel
    public boolean isClosedForRead() {
        return getClosedCause() != null || (isClosedForWrite() && this.flushBufferSize == 0 && this._readBuffer.exhausted());
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    @Override // io.ktor.utils.io.ByteReadChannel
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.Object awaitContent(int r13, kotlin.coroutines.Continuation<? super java.lang.Boolean> r14) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 307
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.utils.io.ByteChannel.awaitContent(int, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public final void moveFlushToReadBuffer() {
        synchronized (this.flushBufferMutex) {
            this.flushBuffer.transferTo(this._readBuffer);
            this.flushBufferSize = 0;
            Unit unit = Unit.INSTANCE;
        }
        Slot slot = (Slot) this.suspensionSlot;
        if ((slot instanceof Slot.Write) && InterestSuspensionsMap$$ExternalSyntheticBackportWithForwarding0.m(suspensionSlot$FU, this, slot, Slot.Empty.INSTANCE)) {
            ((Slot.Task) slot).resume();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    @Override // io.ktor.utils.io.ByteWriteChannel
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.Object flush(kotlin.coroutines.Continuation<? super kotlin.Unit> r12) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 243
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.utils.io.ByteChannel.flush(kotlin.coroutines.Continuation):java.lang.Object");
    }

    public void flushWriteBuffer() {
        if (this._writeBuffer.exhausted()) {
            return;
        }
        synchronized (this.flushBufferMutex) {
            int size = (int) this._writeBuffer.getSize();
            this.flushBuffer.transferFrom(this._writeBuffer);
            this.flushBufferSize += size;
            Unit unit = Unit.INSTANCE;
        }
        Slot slot = (Slot) this.suspensionSlot;
        if ((slot instanceof Slot.Read) && InterestSuspensionsMap$$ExternalSyntheticBackportWithForwarding0.m(suspensionSlot$FU, this, slot, Slot.Empty.INSTANCE)) {
            ((Slot.Task) slot).resume();
        }
    }

    public void close() {
        flushWriteBuffer();
        if (InterestSuspensionsMap$$ExternalSyntheticBackportWithForwarding0.m(_closedCause$FU, this, null, CloseTokenKt.getCLOSED())) {
            closeSlot(null);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    @Override // io.ktor.utils.io.ByteWriteChannel
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.Object flushAndClose(kotlin.coroutines.Continuation<? super kotlin.Unit> r5) throws java.lang.Throwable {
        /*
            r4 = this;
            boolean r0 = r5 instanceof io.ktor.utils.io.ByteChannel.C00671
            if (r0 == 0) goto L13
            r0 = r5
            io.ktor.utils.io.ByteChannel$flushAndClose$1 r0 = (io.ktor.utils.io.ByteChannel.C00671) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            io.ktor.utils.io.ByteChannel$flushAndClose$1 r0 = new io.ktor.utils.io.ByteChannel$flushAndClose$1
            r0.<init>(r5)
        L18:
            java.lang.Object r5 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L37
            if (r2 != r3) goto L2f
            java.lang.Object r0 = r0.L$0
            io.ktor.utils.io.ByteChannel r0 = (io.ktor.utils.io.ByteChannel) r0
            kotlin.ResultKt.throwOnFailure(r5)     // Catch: java.lang.Throwable -> L2d
            goto L4e
        L2d:
            r5 = move-exception
            goto L54
        L2f:
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            r4.<init>(r5)
            throw r4
        L37:
            kotlin.ResultKt.throwOnFailure(r5)
            kotlin.Result$Companion r5 = kotlin.Result.Companion     // Catch: java.lang.Throwable -> L2d
            java.lang.Object r5 = kotlin.coroutines.jvm.internal.SpillingKt.nullOutSpilledVariable(r4)     // Catch: java.lang.Throwable -> L2d
            r0.L$0 = r5     // Catch: java.lang.Throwable -> L2d
            r5 = 0
            r0.I$0 = r5     // Catch: java.lang.Throwable -> L2d
            r0.label = r3     // Catch: java.lang.Throwable -> L2d
            java.lang.Object r5 = r4.flush(r0)     // Catch: java.lang.Throwable -> L2d
            if (r5 != r1) goto L4e
            return r1
        L4e:
            kotlin.Unit r5 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L2d
            kotlin.Result.m8149constructorimpl(r5)     // Catch: java.lang.Throwable -> L2d
            goto L5d
        L54:
            kotlin.Result$Companion r0 = kotlin.Result.Companion
            java.lang.Object r5 = kotlin.ResultKt.createFailure(r5)
            kotlin.Result.m8149constructorimpl(r5)
        L5d:
            java.util.concurrent.atomic.AtomicReferenceFieldUpdater r5 = io.ktor.utils.io.ByteChannel._closedCause$FU
            io.ktor.utils.io.CloseToken r0 = io.ktor.utils.io.CloseTokenKt.getCLOSED()
            r1 = 0
            boolean r5 = io.ktor.network.selector.InterestSuspensionsMap$$ExternalSyntheticBackportWithForwarding0.m(r5, r4, r1, r0)
            if (r5 != 0) goto L6d
            kotlin.Unit r4 = kotlin.Unit.INSTANCE
            return r4
        L6d:
            r4.closeSlot(r1)
            kotlin.Unit r4 = kotlin.Unit.INSTANCE
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.utils.io.ByteChannel.flushAndClose(kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // io.ktor.utils.io.ByteReadChannel, io.ktor.utils.io.ByteWriteChannel
    public void cancel(Throwable th) {
        if (this._closedCause != null) {
            return;
        }
        CloseToken closeToken = new CloseToken(th);
        InterestSuspensionsMap$$ExternalSyntheticBackportWithForwarding0.m(_closedCause$FU, this, null, closeToken);
        closeSlot(CloseToken.wrapCause$default(closeToken, null, 1, null));
    }

    public String toString() {
        return "ByteChannel[" + hashCode() + ']';
    }

    public final void closeSlot(Throwable th) {
        Slot slot = (Slot) suspensionSlot$FU.getAndSet(this, th != null ? new Slot.Closed(th) : Slot.Companion.getCLOSED());
        if (slot instanceof Slot.Task) {
            ((Slot.Task) slot).resume(th);
        }
    }

    /* JADX INFO: compiled from: ByteChannel.kt */
    public interface Slot {
        public static final Companion Companion = Companion.$$INSTANCE;

        /* JADX INFO: compiled from: ByteChannel.kt */
        public static final class Empty implements Slot {
            public static final Empty INSTANCE = new Empty();

            public boolean equals(Object obj) {
                return this == obj || (obj instanceof Empty);
            }

            public int hashCode() {
                return -231472095;
            }

            public String toString() {
                return "Empty";
            }
        }

        /* JADX INFO: compiled from: ByteChannel.kt */
        public static final class Companion {
            public static final /* synthetic */ Companion $$INSTANCE = new Companion();
            public static final Closed CLOSED = new Closed(null);
            public static final Object RESUME;

            static {
                Result.Companion companion = Result.Companion;
                RESUME = Result.m8149constructorimpl(Unit.INSTANCE);
            }

            public final Closed getCLOSED() {
                return CLOSED;
            }

            /* JADX INFO: renamed from: getRESUME-d1pmJ48, reason: not valid java name */
            public final Object m8133getRESUMEd1pmJ48() {
                return RESUME;
            }
        }

        /* JADX INFO: compiled from: ByteChannel.kt */
        public static final class Closed implements Slot {
            public final Throwable cause;

            public boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof Closed) && Intrinsics.areEqual(this.cause, ((Closed) obj).cause);
            }

            public int hashCode() {
                Throwable th = this.cause;
                if (th == null) {
                    return 0;
                }
                return th.hashCode();
            }

            public String toString() {
                return "Closed(cause=" + this.cause + ')';
            }

            public Closed(Throwable th) {
                this.cause = th;
            }

            public final Throwable getCause() {
                return this.cause;
            }
        }

        /* JADX INFO: compiled from: ByteChannel.kt */
        public interface Task extends Slot {
            Continuation<Unit> getContinuation();

            Throwable getCreated();

            String taskName();

            default void resume() {
                getContinuation().resumeWith(Slot.Companion.m8133getRESUMEd1pmJ48());
            }

            default void resume(Throwable th) {
                Object objM8133getRESUMEd1pmJ48;
                Continuation<Unit> continuation = getContinuation();
                if (th != null) {
                    Result.Companion companion = Result.Companion;
                    objM8133getRESUMEd1pmJ48 = Result.m8149constructorimpl(ResultKt.createFailure(th));
                } else {
                    objM8133getRESUMEd1pmJ48 = Slot.Companion.m8133getRESUMEd1pmJ48();
                }
                continuation.resumeWith(objM8133getRESUMEd1pmJ48);
            }
        }

        /* JADX INFO: compiled from: ByteChannel.kt */
        public static final class Read implements Task {
            public final Continuation<Unit> continuation;
            public Throwable created;

            /* JADX WARN: Multi-variable type inference failed */
            public Read(Continuation<? super Unit> continuation) {
                Intrinsics.checkNotNullParameter(continuation, "continuation");
                this.continuation = continuation;
                if (ByteChannel_jvmKt.getDEVELOPMENT_MODE()) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("ReadTask 0x");
                    String string = Integer.toString(getContinuation().hashCode(), CharsKt__CharJVMKt.checkRadix(16));
                    Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
                    sb.append(string);
                    Throwable th = new Throwable(sb.toString());
                    ExceptionsKt__ExceptionsKt.stackTraceToString(th);
                    setCreated(th);
                }
            }

            @Override // io.ktor.utils.io.ByteChannel.Slot.Task
            public Continuation<Unit> getContinuation() {
                return this.continuation;
            }

            @Override // io.ktor.utils.io.ByteChannel.Slot.Task
            public /* bridge */ void resume() {
                super.resume();
            }

            @Override // io.ktor.utils.io.ByteChannel.Slot.Task
            public /* bridge */ void resume(Throwable th) {
                super.resume(th);
            }

            @Override // io.ktor.utils.io.ByteChannel.Slot.Task
            public Throwable getCreated() {
                return this.created;
            }

            public void setCreated(Throwable th) {
                this.created = th;
            }

            @Override // io.ktor.utils.io.ByteChannel.Slot.Task
            public String taskName() {
                return "read";
            }
        }

        /* JADX INFO: compiled from: ByteChannel.kt */
        public static final class Write implements Task {
            public final Continuation<Unit> continuation;
            public Throwable created;

            /* JADX WARN: Multi-variable type inference failed */
            public Write(Continuation<? super Unit> continuation) {
                Intrinsics.checkNotNullParameter(continuation, "continuation");
                this.continuation = continuation;
                if (ByteChannel_jvmKt.getDEVELOPMENT_MODE()) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("WriteTask 0x");
                    String string = Integer.toString(getContinuation().hashCode(), CharsKt__CharJVMKt.checkRadix(16));
                    Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
                    sb.append(string);
                    Throwable th = new Throwable(sb.toString());
                    ExceptionsKt__ExceptionsKt.stackTraceToString(th);
                    setCreated(th);
                }
            }

            @Override // io.ktor.utils.io.ByteChannel.Slot.Task
            public Continuation<Unit> getContinuation() {
                return this.continuation;
            }

            @Override // io.ktor.utils.io.ByteChannel.Slot.Task
            public /* bridge */ void resume() {
                super.resume();
            }

            @Override // io.ktor.utils.io.ByteChannel.Slot.Task
            public /* bridge */ void resume(Throwable th) {
                super.resume(th);
            }

            @Override // io.ktor.utils.io.ByteChannel.Slot.Task
            public Throwable getCreated() {
                return this.created;
            }

            public void setCreated(Throwable th) {
                this.created = th;
            }

            @Override // io.ktor.utils.io.ByteChannel.Slot.Task
            public String taskName() {
                return "write";
            }
        }
    }
}
