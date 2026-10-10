package io.ktor.client.engine.cio;

import in.dragonbra.javasteam.protobufs.steamclient.Enums;
import io.ktor.network.selector.SelectorManager;
import io.ktor.network.sockets.SocketAddress;
import io.ktor.util.collections.ConcurrentMap;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.sync.Semaphore;
import kotlinx.coroutines.sync.SemaphoreKt;

/* JADX INFO: compiled from: ConnectionFactory.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class ConnectionFactory {
    public final int addressConnectionsLimit;
    public final ConcurrentMap<SocketAddress, Semaphore> addressLimit;
    public final Semaphore limit;
    public final SelectorManager selector;

    /* JADX INFO: renamed from: io.ktor.client.engine.cio.ConnectionFactory$connect$1, reason: invalid class name */
    /* JADX INFO: compiled from: ConnectionFactory.kt */
    @DebugMetadata(c = "io.ktor.client.engine.cio.ConnectionFactory", f = "ConnectionFactory.kt", l = {24, 27, 30}, m = "connect", v = 1)
    public static final class AnonymousClass1 extends ContinuationImpl {
        public Object L$0;
        public Object L$1;
        public Object L$2;
        public int label;
        public /* synthetic */ Object result;

        public AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Enums.EProtoAppType.k_EAppTypeDepotOnly_VALUE;
            return ConnectionFactory.this.connect(null, null, this);
        }
    }

    public ConnectionFactory(SelectorManager selector, int i, int i2) {
        Intrinsics.checkNotNullParameter(selector, "selector");
        this.selector = selector;
        this.addressConnectionsLimit = i2;
        this.limit = SemaphoreKt.Semaphore$default(i, 0, 2, null);
        this.addressLimit = new ConcurrentMap<>(0, 1, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00b6 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /* JADX WARN: Type inference failed for: r2v3 */
    /* JADX WARN: Type inference failed for: r2v4, types: [io.ktor.network.sockets.SocketAddress, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v7 */
    /* JADX WARN: Type inference failed for: r7v0, types: [io.ktor.network.sockets.SocketAddress, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r7v1, types: [kotlinx.coroutines.sync.Semaphore] */
    /* JADX WARN: Type inference failed for: r7v15 */
    /* JADX WARN: Type inference failed for: r7v16 */
    /* JADX WARN: Type inference failed for: r7v18 */
    /* JADX WARN: Type inference failed for: r7v19 */
    /* JADX WARN: Type inference failed for: r7v3, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r7v6 */
    /* JADX WARN: Type inference failed for: r9v9, types: [io.ktor.network.sockets.TcpSocketBuilder] */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object connect(io.ktor.network.sockets.SocketAddress r7, kotlin.jvm.functions.Function1<? super io.ktor.network.sockets.SocketOptions.TCPClientSocketOptions, kotlin.Unit> r8, kotlin.coroutines.Continuation<? super io.ktor.network.sockets.Socket> r9) throws java.lang.Throwable {
        /*
            r6 = this;
            boolean r0 = r9 instanceof io.ktor.client.engine.cio.ConnectionFactory.AnonymousClass1
            if (r0 == 0) goto L13
            r0 = r9
            io.ktor.client.engine.cio.ConnectionFactory$connect$1 r0 = (io.ktor.client.engine.cio.ConnectionFactory.AnonymousClass1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            io.ktor.client.engine.cio.ConnectionFactory$connect$1 r0 = new io.ktor.client.engine.cio.ConnectionFactory$connect$1
            r0.<init>(r9)
        L18:
            java.lang.Object r9 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 3
            r4 = 2
            r5 = 1
            if (r2 == 0) goto L66
            if (r2 == r5) goto L59
            if (r2 == r4) goto L47
            if (r2 != r3) goto L3f
            java.lang.Object r7 = r0.L$2
            kotlinx.coroutines.sync.Semaphore r7 = (kotlinx.coroutines.sync.Semaphore) r7
            java.lang.Object r8 = r0.L$1
            kotlin.jvm.functions.Function1 r8 = (kotlin.jvm.functions.Function1) r8
            java.lang.Object r8 = r0.L$0
            io.ktor.network.sockets.SocketAddress r8 = (io.ktor.network.sockets.SocketAddress) r8
            kotlin.ResultKt.throwOnFailure(r9)     // Catch: java.lang.Throwable -> L3c
            goto Lb7
        L3c:
            r8 = move-exception
            goto Lba
        L3f:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L47:
            java.lang.Object r7 = r0.L$2
            kotlinx.coroutines.sync.Semaphore r7 = (kotlinx.coroutines.sync.Semaphore) r7
            java.lang.Object r8 = r0.L$1
            kotlin.jvm.functions.Function1 r8 = (kotlin.jvm.functions.Function1) r8
            java.lang.Object r2 = r0.L$0
            io.ktor.network.sockets.SocketAddress r2 = (io.ktor.network.sockets.SocketAddress) r2
            kotlin.ResultKt.throwOnFailure(r9)     // Catch: java.lang.Throwable -> L57
            goto L96
        L57:
            r7 = move-exception
            goto Lbe
        L59:
            java.lang.Object r7 = r0.L$1
            r8 = r7
            kotlin.jvm.functions.Function1 r8 = (kotlin.jvm.functions.Function1) r8
            java.lang.Object r7 = r0.L$0
            io.ktor.network.sockets.SocketAddress r7 = (io.ktor.network.sockets.SocketAddress) r7
            kotlin.ResultKt.throwOnFailure(r9)
            goto L78
        L66:
            kotlin.ResultKt.throwOnFailure(r9)
            kotlinx.coroutines.sync.Semaphore r9 = r6.limit
            r0.L$0 = r7
            r0.L$1 = r8
            r0.label = r5
            java.lang.Object r9 = r9.acquire(r0)
            if (r9 != r1) goto L78
            return r1
        L78:
            io.ktor.util.collections.ConcurrentMap<io.ktor.network.sockets.SocketAddress, kotlinx.coroutines.sync.Semaphore> r9 = r6.addressLimit     // Catch: java.lang.Throwable -> L57
            io.ktor.client.engine.cio.ConnectionFactory$$ExternalSyntheticLambda0 r2 = new io.ktor.client.engine.cio.ConnectionFactory$$ExternalSyntheticLambda0     // Catch: java.lang.Throwable -> L57
            r2.<init>()     // Catch: java.lang.Throwable -> L57
            java.lang.Object r9 = r9.computeIfAbsent(r7, r2)     // Catch: java.lang.Throwable -> L57
            kotlinx.coroutines.sync.Semaphore r9 = (kotlinx.coroutines.sync.Semaphore) r9     // Catch: java.lang.Throwable -> L57
            r0.L$0 = r7     // Catch: java.lang.Throwable -> L57
            r0.L$1 = r8     // Catch: java.lang.Throwable -> L57
            r0.L$2 = r9     // Catch: java.lang.Throwable -> L57
            r0.label = r4     // Catch: java.lang.Throwable -> L57
            java.lang.Object r2 = r9.acquire(r0)     // Catch: java.lang.Throwable -> L57
            if (r2 != r1) goto L94
            return r1
        L94:
            r2 = r7
            r7 = r9
        L96:
            io.ktor.network.selector.SelectorManager r9 = r6.selector     // Catch: java.lang.Throwable -> L3c
            io.ktor.network.sockets.SocketBuilder r9 = io.ktor.network.sockets.BuildersKt.aSocket(r9)     // Catch: java.lang.Throwable -> L3c
            io.ktor.network.sockets.TcpSocketBuilder r9 = r9.tcp()     // Catch: java.lang.Throwable -> L3c
            java.lang.Object r4 = kotlin.coroutines.jvm.internal.SpillingKt.nullOutSpilledVariable(r2)     // Catch: java.lang.Throwable -> L3c
            r0.L$0 = r4     // Catch: java.lang.Throwable -> L3c
            java.lang.Object r4 = kotlin.coroutines.jvm.internal.SpillingKt.nullOutSpilledVariable(r8)     // Catch: java.lang.Throwable -> L3c
            r0.L$1 = r4     // Catch: java.lang.Throwable -> L3c
            r0.L$2 = r7     // Catch: java.lang.Throwable -> L3c
            r0.label = r3     // Catch: java.lang.Throwable -> L3c
            java.lang.Object r9 = r9.connect(r2, r8, r0)     // Catch: java.lang.Throwable -> L3c
            if (r9 != r1) goto Lb7
            return r1
        Lb7:
            io.ktor.network.sockets.Socket r9 = (io.ktor.network.sockets.Socket) r9     // Catch: java.lang.Throwable -> L3c
            return r9
        Lba:
            r7.release()     // Catch: java.lang.Throwable -> L57
            throw r8     // Catch: java.lang.Throwable -> L57
        Lbe:
            kotlinx.coroutines.sync.Semaphore r6 = r6.limit
            r6.release()
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.client.engine.cio.ConnectionFactory.connect(io.ktor.network.sockets.SocketAddress, kotlin.jvm.functions.Function1, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public static final Semaphore connect$lambda$1(ConnectionFactory connectionFactory) {
        return SemaphoreKt.Semaphore$default(connectionFactory.addressConnectionsLimit, 0, 2, null);
    }

    public final void release(SocketAddress address) {
        Intrinsics.checkNotNullParameter(address, "address");
        Semaphore semaphore = this.addressLimit.get(address);
        if (semaphore != null) {
            semaphore.release();
        }
        this.limit.release();
    }
}
