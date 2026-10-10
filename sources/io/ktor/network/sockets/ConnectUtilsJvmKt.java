package io.ktor.network.sockets;

import in.dragonbra.javasteam.protobufs.steamclient.Enums;
import java.lang.reflect.InvocationTargetException;
import java.net.ProtocolFamily;
import java.net.StandardProtocolFamily;
import java.nio.channels.SocketChannel;
import java.nio.channels.spi.SelectorProvider;
import kotlin.NoWhenBranchMatchedException;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ConnectUtilsJvm.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class ConnectUtilsJvmKt {

    /* JADX INFO: renamed from: io.ktor.network.sockets.ConnectUtilsJvmKt$tcpConnect$1, reason: invalid class name */
    /* JADX INFO: compiled from: ConnectUtilsJvm.kt */
    @DebugMetadata(c = "io.ktor.network.sockets.ConnectUtilsJvmKt", f = "ConnectUtilsJvm.kt", l = {21}, m = "tcpConnect", v = 1)
    public static final class AnonymousClass1 extends ContinuationImpl {
        public int I$0;
        public int I$1;
        public int I$2;
        public Object L$0;
        public Object L$1;
        public Object L$2;
        public Object L$3;
        public Object L$4;
        public Object L$5;
        public Object L$6;
        public Object L$7;
        public int label;
        public /* synthetic */ Object result;

        public AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Enums.EProtoAppType.k_EAppTypeDepotOnly_VALUE;
            return ConnectUtilsJvmKt.tcpConnect(null, null, null, this);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final java.lang.Object tcpConnect(io.ktor.network.selector.SelectorManager r6, io.ktor.network.sockets.SocketAddress r7, io.ktor.network.sockets.SocketOptions.TCPClientSocketOptions r8, kotlin.coroutines.Continuation<? super io.ktor.network.sockets.Socket> r9) throws java.lang.Throwable {
        /*
            boolean r0 = r9 instanceof io.ktor.network.sockets.ConnectUtilsJvmKt.AnonymousClass1
            if (r0 == 0) goto L13
            r0 = r9
            io.ktor.network.sockets.ConnectUtilsJvmKt$tcpConnect$1 r0 = (io.ktor.network.sockets.ConnectUtilsJvmKt.AnonymousClass1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            io.ktor.network.sockets.ConnectUtilsJvmKt$tcpConnect$1 r0 = new io.ktor.network.sockets.ConnectUtilsJvmKt$tcpConnect$1
            r0.<init>(r9)
        L18:
            java.lang.Object r9 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L53
            if (r2 != r3) goto L4b
            java.lang.Object r6 = r0.L$7
            io.ktor.network.sockets.SocketImpl r6 = (io.ktor.network.sockets.SocketImpl) r6
            java.lang.Object r6 = r0.L$6
            io.ktor.network.sockets.SocketImpl r6 = (io.ktor.network.sockets.SocketImpl) r6
            java.lang.Object r7 = r0.L$5
            java.io.Closeable r7 = (java.io.Closeable) r7
            java.lang.Object r8 = r0.L$4
            java.nio.channels.SocketChannel r8 = (java.nio.channels.SocketChannel) r8
            java.lang.Object r8 = r0.L$3
            io.ktor.network.selector.SelectorManager r8 = (io.ktor.network.selector.SelectorManager) r8
            java.lang.Object r8 = r0.L$2
            io.ktor.network.sockets.SocketOptions$TCPClientSocketOptions r8 = (io.ktor.network.sockets.SocketOptions.TCPClientSocketOptions) r8
            java.lang.Object r8 = r0.L$1
            io.ktor.network.sockets.SocketAddress r8 = (io.ktor.network.sockets.SocketAddress) r8
            java.lang.Object r8 = r0.L$0
            io.ktor.network.selector.SelectorManager r8 = (io.ktor.network.selector.SelectorManager) r8
            kotlin.ResultKt.throwOnFailure(r9)     // Catch: java.lang.Throwable -> L49
            goto Lb4
        L49:
            r6 = move-exception
            goto Lb5
        L4b:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L53:
            kotlin.ResultKt.throwOnFailure(r9)
            java.nio.channels.spi.SelectorProvider r9 = r6.getProvider()
            java.nio.channels.SocketChannel r9 = openSocketChannelFor(r9, r7)
            boolean r2 = r7 instanceof io.ktor.network.sockets.InetSocketAddress     // Catch: java.lang.Throwable -> L69
            if (r2 == 0) goto L6c
            kotlin.jvm.internal.Intrinsics.checkNotNull(r9)     // Catch: java.lang.Throwable -> L69
            io.ktor.network.sockets.JavaSocketOptionsKt.assignOptions(r9, r8)     // Catch: java.lang.Throwable -> L69
            goto L6c
        L69:
            r6 = move-exception
            r7 = r9
            goto Lb5
        L6c:
            kotlin.jvm.internal.Intrinsics.checkNotNull(r9)     // Catch: java.lang.Throwable -> L69
            io.ktor.network.sockets.JavaSocketOptionsKt.nonBlocking(r9)     // Catch: java.lang.Throwable -> L69
            io.ktor.network.sockets.SocketImpl r2 = new io.ktor.network.sockets.SocketImpl     // Catch: java.lang.Throwable -> L69
            r2.<init>(r9, r6, r8)     // Catch: java.lang.Throwable -> L69
            java.net.SocketAddress r4 = io.ktor.network.sockets.JavaSocketAddressUtilsKt.toJavaAddress(r7)     // Catch: java.lang.Throwable -> L69
            java.lang.Object r5 = kotlin.coroutines.jvm.internal.SpillingKt.nullOutSpilledVariable(r6)     // Catch: java.lang.Throwable -> L69
            r0.L$0 = r5     // Catch: java.lang.Throwable -> L69
            java.lang.Object r7 = kotlin.coroutines.jvm.internal.SpillingKt.nullOutSpilledVariable(r7)     // Catch: java.lang.Throwable -> L69
            r0.L$1 = r7     // Catch: java.lang.Throwable -> L69
            java.lang.Object r7 = kotlin.coroutines.jvm.internal.SpillingKt.nullOutSpilledVariable(r8)     // Catch: java.lang.Throwable -> L69
            r0.L$2 = r7     // Catch: java.lang.Throwable -> L69
            java.lang.Object r6 = kotlin.coroutines.jvm.internal.SpillingKt.nullOutSpilledVariable(r6)     // Catch: java.lang.Throwable -> L69
            r0.L$3 = r6     // Catch: java.lang.Throwable -> L69
            java.lang.Object r6 = kotlin.coroutines.jvm.internal.SpillingKt.nullOutSpilledVariable(r9)     // Catch: java.lang.Throwable -> L69
            r0.L$4 = r6     // Catch: java.lang.Throwable -> L69
            r0.L$5 = r9     // Catch: java.lang.Throwable -> L69
            r0.L$6 = r2     // Catch: java.lang.Throwable -> L69
            java.lang.Object r6 = kotlin.coroutines.jvm.internal.SpillingKt.nullOutSpilledVariable(r2)     // Catch: java.lang.Throwable -> L69
            r0.L$7 = r6     // Catch: java.lang.Throwable -> L69
            r6 = 0
            r0.I$0 = r6     // Catch: java.lang.Throwable -> L69
            r0.I$1 = r6     // Catch: java.lang.Throwable -> L69
            r0.I$2 = r6     // Catch: java.lang.Throwable -> L69
            r0.label = r3     // Catch: java.lang.Throwable -> L69
            java.lang.Object r6 = r2.connect$ktor_network(r4, r0)     // Catch: java.lang.Throwable -> L69
            if (r6 != r1) goto Lb3
            return r1
        Lb3:
            r6 = r2
        Lb4:
            return r6
        Lb5:
            r7.close()
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.network.sockets.ConnectUtilsJvmKt.tcpConnect(io.ktor.network.selector.SelectorManager, io.ktor.network.sockets.SocketAddress, io.ktor.network.sockets.SocketOptions$TCPClientSocketOptions, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public static final SocketChannel openSocketChannelFor(SelectorProvider selectorProvider, SocketAddress address) throws IllegalAccessException, InvocationTargetException {
        Intrinsics.checkNotNullParameter(selectorProvider, "<this>");
        Intrinsics.checkNotNullParameter(address, "address");
        if (address instanceof InetSocketAddress) {
            return selectorProvider.openSocketChannel();
        }
        if (!(address instanceof UnixSocketAddress)) {
            throw new NoWhenBranchMatchedException();
        }
        Object objInvoke = SelectorProvider.class.getMethod("openSocketChannel", ProtocolFamily.class).invoke(selectorProvider, StandardProtocolFamily.valueOf("UNIX"));
        Intrinsics.checkNotNull(objInvoke, "null cannot be cast to non-null type java.nio.channels.SocketChannel");
        return (SocketChannel) objInvoke;
    }
}
