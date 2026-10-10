package io.ktor.network.selector;

import in.dragonbra.javasteam.protobufs.steamclient.Enums;
import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin;
import java.io.Closeable;
import java.nio.channels.ClosedChannelException;
import java.nio.channels.ClosedSelectorException;
import java.nio.channels.SelectionKey;
import java.nio.channels.Selector;
import java.nio.channels.spi.AbstractSelector;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SpillingKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.io.CloseableKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineName;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.channels.ClosedSendChannelException;

/* JADX INFO: compiled from: ActorSelectorManager.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class ActorSelectorManager extends SelectorManagerSupport implements Closeable, CoroutineScope {
    private volatile boolean closed;
    public final ContinuationHolder<Unit, Continuation<Unit>> continuation;
    public final CoroutineContext coroutineContext;
    private volatile boolean inSelect;
    public final LockFreeMPSCQueue<Selectable> selectionQueue;
    private volatile Selector selectorRef;
    public final AtomicLong wakeup;

    /* JADX INFO: renamed from: io.ktor.network.selector.ActorSelectorManager$process$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: ActorSelectorManager.kt */
    @DebugMetadata(c = "io.ktor.network.selector.ActorSelectorManager", f = "ActorSelectorManager.kt", l = {70, 74, SteammessagesClientserverLogin.CMsgClientLogon.SONY_PSN_TICKET_FIELD_NUMBER}, m = "process", v = 1)
    public static final class C00491 extends ContinuationImpl {
        public Object L$0;
        public Object L$1;
        public Object L$2;
        public int label;
        public /* synthetic */ Object result;

        public C00491(Continuation<? super C00491> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Enums.EProtoAppType.k_EAppTypeDepotOnly_VALUE;
            return ActorSelectorManager.this.process(null, null, this);
        }
    }

    /* JADX INFO: renamed from: io.ktor.network.selector.ActorSelectorManager$receiveOrNullSuspend$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: ActorSelectorManager.kt */
    @DebugMetadata(c = "io.ktor.network.selector.ActorSelectorManager", f = "ActorSelectorManager.kt", l = {168}, m = "receiveOrNullSuspend", v = 1)
    public static final class C00501 extends ContinuationImpl {
        public Object L$0;
        public Object L$1;
        public int label;
        public /* synthetic */ Object result;

        public C00501(Continuation<? super C00501> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Enums.EProtoAppType.k_EAppTypeDepotOnly_VALUE;
            return ActorSelectorManager.this.receiveOrNullSuspend(null, this);
        }
    }

    /* JADX INFO: renamed from: io.ktor.network.selector.ActorSelectorManager$select$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: ActorSelectorManager.kt */
    @DebugMetadata(c = "io.ktor.network.selector.ActorSelectorManager", f = "ActorSelectorManager.kt", l = {210}, m = "select", v = 1)
    public static final class C00511 extends ContinuationImpl {
        public int I$0;
        public Object L$0;
        public Object L$1;
        public int label;
        public /* synthetic */ Object result;

        public C00511(Continuation<? super C00511> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Enums.EProtoAppType.k_EAppTypeDepotOnly_VALUE;
            return ActorSelectorManager.this.select(null, this);
        }
    }

    public ActorSelectorManager(CoroutineContext context) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.wakeup = new AtomicLong();
        this.continuation = new ContinuationHolder<>();
        this.selectionQueue = new LockFreeMPSCQueue<>();
        this.coroutineContext = context.plus(new CoroutineName("selector"));
        BuildersKt__Builders_commonKt.launch$default(this, null, null, new AnonymousClass1(null), 3, null);
    }

    @Override // kotlinx.coroutines.CoroutineScope
    public CoroutineContext getCoroutineContext() {
        return this.coroutineContext;
    }

    /* JADX INFO: renamed from: io.ktor.network.selector.ActorSelectorManager$1, reason: invalid class name */
    /* JADX INFO: compiled from: ActorSelectorManager.kt */
    @DebugMetadata(c = "io.ktor.network.selector.ActorSelectorManager$1", f = "ActorSelectorManager.kt", l = {44}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        public int I$0;
        public Object L$0;
        public Object L$1;
        public Object L$2;
        public Object L$3;
        public int label;

        public AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return ActorSelectorManager.this.new AnonymousClass1(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            ActorSelectorManager actorSelectorManager;
            AbstractSelector abstractSelector;
            Closeable closeable;
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            try {
                if (i == 0) {
                    ResultKt.throwOnFailure(obj);
                    AbstractSelector abstractSelectorOpenSelector = ActorSelectorManager.this.getProvider().openSelector();
                    if (abstractSelectorOpenSelector != null) {
                        ActorSelectorManager.this.selectorRef = abstractSelectorOpenSelector;
                        actorSelectorManager = ActorSelectorManager.this;
                        try {
                            LockFreeMPSCQueue lockFreeMPSCQueue = actorSelectorManager.selectionQueue;
                            this.L$0 = SpillingKt.nullOutSpilledVariable(abstractSelectorOpenSelector);
                            this.L$1 = abstractSelectorOpenSelector;
                            this.L$2 = actorSelectorManager;
                            this.L$3 = abstractSelectorOpenSelector;
                            this.I$0 = 0;
                            this.label = 1;
                            if (actorSelectorManager.process(lockFreeMPSCQueue, abstractSelectorOpenSelector, this) == coroutine_suspended) {
                                return coroutine_suspended;
                            }
                            abstractSelector = abstractSelectorOpenSelector;
                            closeable = abstractSelector;
                            actorSelectorManager.closed = true;
                            actorSelectorManager.selectionQueue.close();
                            actorSelectorManager.selectorRef = null;
                        } catch (Throwable th) {
                            th = th;
                            abstractSelector = abstractSelectorOpenSelector;
                            closeable = abstractSelector;
                            actorSelectorManager.closed = true;
                            actorSelectorManager.selectionQueue.close();
                            actorSelectorManager.cancelAllSuspensions(abstractSelector, th);
                            actorSelectorManager.closed = true;
                            actorSelectorManager.selectionQueue.close();
                            actorSelectorManager.selectorRef = null;
                        }
                    } else {
                        throw new IllegalStateException("openSelector() = null");
                    }
                } else {
                    if (i != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    abstractSelector = (AbstractSelector) this.L$3;
                    actorSelectorManager = (ActorSelectorManager) this.L$2;
                    closeable = (Closeable) this.L$1;
                    try {
                        ResultKt.throwOnFailure(obj);
                        actorSelectorManager.closed = true;
                        actorSelectorManager.selectionQueue.close();
                        actorSelectorManager.selectorRef = null;
                    } catch (Throwable th2) {
                        th = th2;
                        try {
                            actorSelectorManager.closed = true;
                            actorSelectorManager.selectionQueue.close();
                            actorSelectorManager.cancelAllSuspensions(abstractSelector, th);
                            actorSelectorManager.closed = true;
                            actorSelectorManager.selectionQueue.close();
                            actorSelectorManager.selectorRef = null;
                        } catch (Throwable th3) {
                            actorSelectorManager.closed = true;
                            actorSelectorManager.selectionQueue.close();
                            actorSelectorManager.selectorRef = null;
                            actorSelectorManager.cancelAllSuspensions(abstractSelector, (Throwable) null);
                            throw th3;
                        }
                    }
                }
                actorSelectorManager.cancelAllSuspensions(abstractSelector, (Throwable) null);
                while (true) {
                    Selectable selectable = (Selectable) actorSelectorManager.selectionQueue.removeFirstOrNull();
                    if (selectable != null) {
                        actorSelectorManager.cancelAllSuspensions(selectable, new ClosedSendChannelException("Failed to apply interest: selector closed"));
                    } else {
                        Unit unit = Unit.INSTANCE;
                        CloseableKt.closeFinally(closeable, null);
                        return Unit.INSTANCE;
                    }
                }
            } finally {
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0070  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0091  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00a3  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00fc  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:28:0x0091 -> B:19:0x006c). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:31:0x00ab -> B:19:0x006c). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:33:0x00bf -> B:19:0x006c). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:42:0x00f4 -> B:44:0x00f7). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object process(io.ktor.network.selector.LockFreeMPSCQueue<io.ktor.network.selector.Selectable> r10, java.nio.channels.Selector r11, kotlin.coroutines.Continuation<? super kotlin.Unit> r12) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 260
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.network.selector.ActorSelectorManager.process(io.ktor.network.selector.LockFreeMPSCQueue, java.nio.channels.Selector, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object select(java.nio.channels.Selector r7, kotlin.coroutines.Continuation<? super java.lang.Integer> r8) throws java.lang.Throwable {
        /*
            r6 = this;
            boolean r0 = r8 instanceof io.ktor.network.selector.ActorSelectorManager.C00511
            if (r0 == 0) goto L13
            r0 = r8
            io.ktor.network.selector.ActorSelectorManager$select$1 r0 = (io.ktor.network.selector.ActorSelectorManager.C00511) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            io.ktor.network.selector.ActorSelectorManager$select$1 r0 = new io.ktor.network.selector.ActorSelectorManager$select$1
            r0.<init>(r8)
        L18:
            java.lang.Object r8 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 0
            r4 = 1
            if (r2 == 0) goto L3a
            if (r2 != r4) goto L32
            java.lang.Object r7 = r0.L$1
            io.ktor.network.selector.ActorSelectorManager r7 = (io.ktor.network.selector.ActorSelectorManager) r7
            java.lang.Object r7 = r0.L$0
            java.nio.channels.Selector r7 = (java.nio.channels.Selector) r7
            kotlin.ResultKt.throwOnFailure(r8)
            goto L52
        L32:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L3a:
            kotlin.ResultKt.throwOnFailure(r8)
            r6.inSelect = r4
            r0.L$0 = r7
            java.lang.Object r8 = kotlin.coroutines.jvm.internal.SpillingKt.nullOutSpilledVariable(r6)
            r0.L$1 = r8
            r0.I$0 = r3
            r0.label = r4
            java.lang.Object r8 = kotlinx.coroutines.YieldKt.yield(r0)
            if (r8 != r1) goto L52
            return r1
        L52:
            java.util.concurrent.atomic.AtomicLong r8 = r6.wakeup
            long r0 = r8.get()
            r4 = 0
            int r8 = (r0 > r4 ? 1 : (r0 == r4 ? 0 : -1))
            if (r8 != 0) goto L67
            r0 = 500(0x1f4, double:2.47E-321)
            int r7 = r7.select(r0)
            r6.inSelect = r3
            goto L72
        L67:
            r6.inSelect = r3
            java.util.concurrent.atomic.AtomicLong r6 = r6.wakeup
            r6.set(r4)
            int r7 = r7.selectNow()
        L72:
            java.lang.Integer r6 = kotlin.coroutines.jvm.internal.Boxing.boxInt(r7)
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.network.selector.ActorSelectorManager.select(java.nio.channels.Selector, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public final void selectWakeup() {
        Selector selector;
        if (this.wakeup.incrementAndGet() == 1 && this.inSelect && (selector = this.selectorRef) != null) {
            selector.wakeup();
        }
    }

    public final void processInterests(LockFreeMPSCQueue<Selectable> lockFreeMPSCQueue, Selector selector) {
        while (true) {
            Selectable selectableRemoveFirstOrNull = lockFreeMPSCQueue.removeFirstOrNull();
            if (selectableRemoveFirstOrNull == null) {
                return;
            } else {
                applyInterest(selector, selectableRemoveFirstOrNull);
            }
        }
    }

    @Override // io.ktor.network.selector.SelectorManager
    public void notifyClosed(Selectable selectable) {
        SelectionKey selectionKeyKeyFor;
        Intrinsics.checkNotNullParameter(selectable, "selectable");
        cancelAllSuspensions(selectable, new ClosedChannelException());
        Selector selector = this.selectorRef;
        if (selector == null || (selectionKeyKeyFor = selectable.getChannel().keyFor(selector)) == null) {
            return;
        }
        selectionKeyKeyFor.cancel();
        selectWakeup();
    }

    @Override // io.ktor.network.selector.SelectorManagerSupport
    public void publishInterest(Selectable selectable) {
        Intrinsics.checkNotNullParameter(selectable, "selectable");
        try {
            if (this.selectionQueue.addLast(selectable)) {
                this.continuation.resume(Unit.INSTANCE);
                selectWakeup();
            } else {
                if (selectable.getChannel().isOpen()) {
                    throw new ClosedSelectorException();
                }
                throw new ClosedChannelException();
            }
        } catch (Throwable th) {
            cancelAllSuspensions(selectable, th);
        }
    }

    public final Object receiveOrNull(LockFreeMPSCQueue<Selectable> lockFreeMPSCQueue, Continuation<? super Selectable> continuation) {
        Selectable selectableRemoveFirstOrNull = lockFreeMPSCQueue.removeFirstOrNull();
        return selectableRemoveFirstOrNull == null ? receiveOrNullSuspend(lockFreeMPSCQueue, continuation) : selectableRemoveFirstOrNull;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object receiveOrNullSuspend(io.ktor.network.selector.LockFreeMPSCQueue<io.ktor.network.selector.Selectable> r6, kotlin.coroutines.Continuation<? super io.ktor.network.selector.Selectable> r7) throws java.lang.Throwable {
        /*
            r5 = this;
            boolean r0 = r7 instanceof io.ktor.network.selector.ActorSelectorManager.C00501
            if (r0 == 0) goto L13
            r0 = r7
            io.ktor.network.selector.ActorSelectorManager$receiveOrNullSuspend$1 r0 = (io.ktor.network.selector.ActorSelectorManager.C00501) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            io.ktor.network.selector.ActorSelectorManager$receiveOrNullSuspend$1 r0 = new io.ktor.network.selector.ActorSelectorManager$receiveOrNullSuspend$1
            r0.<init>(r7)
        L18:
            java.lang.Object r7 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L36
            if (r2 != r3) goto L2e
            java.lang.Object r6 = r0.L$1
            io.ktor.network.selector.Selectable r6 = (io.ktor.network.selector.Selectable) r6
            java.lang.Object r6 = r0.L$0
            io.ktor.network.selector.LockFreeMPSCQueue r6 = (io.ktor.network.selector.LockFreeMPSCQueue) r6
            goto L36
        L2e:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L36:
            kotlin.ResultKt.throwOnFailure(r7)
        L39:
            java.lang.Object r7 = r6.removeFirstOrNull()
            io.ktor.network.selector.Selectable r7 = (io.ktor.network.selector.Selectable) r7
            if (r7 == 0) goto L42
            return r7
        L42:
            boolean r2 = r5.closed
            r4 = 0
            if (r2 == 0) goto L48
            return r4
        L48:
            r0.L$0 = r6
            java.lang.Object r7 = kotlin.coroutines.jvm.internal.SpillingKt.nullOutSpilledVariable(r7)
            r0.L$1 = r7
            r0.label = r3
            io.ktor.network.selector.ActorSelectorManager$ContinuationHolder<kotlin.Unit, kotlin.coroutines.Continuation<kotlin.Unit>> r7 = r5.continuation
            boolean r2 = r6.isEmpty()
            if (r2 == 0) goto L8b
            boolean r2 = r5.closed
            if (r2 != 0) goto L8b
            java.util.concurrent.atomic.AtomicReference r2 = io.ktor.network.selector.ActorSelectorManager.ContinuationHolder.access$getRef$p(r7)
            boolean r2 = in.dragonbra.javasteam.networking.steam3.UdpConnection$$ExternalSyntheticBackportWithForwarding0.m(r2, r4, r0)
            if (r2 == 0) goto L83
            boolean r2 = r6.isEmpty()
            if (r2 == 0) goto L73
            boolean r2 = r5.closed
            if (r2 != 0) goto L73
            goto L7e
        L73:
            java.util.concurrent.atomic.AtomicReference r7 = io.ktor.network.selector.ActorSelectorManager.ContinuationHolder.access$getRef$p(r7)
            boolean r7 = in.dragonbra.javasteam.networking.steam3.UdpConnection$$ExternalSyntheticBackportWithForwarding0.m(r7, r0, r4)
            if (r7 == 0) goto L7e
            goto L8b
        L7e:
            java.lang.Object r4 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            goto L8b
        L83:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "Continuation is already set"
            r5.<init>(r6)
            throw r5
        L8b:
            if (r4 != 0) goto L8f
            kotlin.Unit r4 = kotlin.Unit.INSTANCE
        L8f:
            java.lang.Object r7 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            if (r4 != r7) goto L98
            kotlin.coroutines.jvm.internal.DebugProbesKt.probeCoroutineSuspended(r0)
        L98:
            if (r4 != r1) goto L39
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.network.selector.ActorSelectorManager.receiveOrNullSuspend(io.ktor.network.selector.LockFreeMPSCQueue, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.closed = true;
        this.selectionQueue.close();
        if (this.continuation.resume(Unit.INSTANCE)) {
            return;
        }
        selectWakeup();
    }

    /* JADX INFO: compiled from: ActorSelectorManager.kt */
    public static final class ContinuationHolder<R, C extends Continuation<? super R>> {
        public final AtomicReference<C> ref = new AtomicReference<>(null);

        public final boolean resume(R r) {
            C andSet = this.ref.getAndSet(null);
            if (andSet == null) {
                return false;
            }
            andSet.resumeWith(Result.m8149constructorimpl(r));
            return true;
        }
    }
}
