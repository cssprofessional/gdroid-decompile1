package io.ktor.network.sockets;

import io.ktor.network.selector.SelectInterest;
import io.ktor.network.selector.SelectorManager;
import io.ktor.network.sockets.SocketOptions;
import java.io.IOException;
import java.net.InetAddress;
import java.nio.channels.SocketChannel;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: SocketImpl.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class SocketImpl<S extends SocketChannel> extends NIOSocketImpl<S> implements Socket {
    public final S channel;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SocketImpl(S channel, SelectorManager selector, SocketOptions.TCPClientSocketOptions tCPClientSocketOptions) {
        super(channel, selector, null, tCPClientSocketOptions);
        Intrinsics.checkNotNullParameter(channel, "channel");
        Intrinsics.checkNotNullParameter(selector, "selector");
        this.channel = channel;
        if (getChannel().isBlocking()) {
            throw new IllegalArgumentException("Channel need to be configured as non-blocking.");
        }
    }

    @Override // io.ktor.network.sockets.NIOSocketImpl, io.ktor.network.selector.Selectable
    public S getChannel() {
        return this.channel;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object connect$ktor_network(java.net.SocketAddress r7, kotlin.coroutines.Continuation<? super io.ktor.network.sockets.Socket> r8) throws java.lang.Throwable {
        /*
            r6 = this;
            boolean r0 = r8 instanceof io.ktor.network.sockets.SocketImpl$connect$1
            if (r0 == 0) goto L13
            r0 = r8
            io.ktor.network.sockets.SocketImpl$connect$1 r0 = (io.ktor.network.sockets.SocketImpl$connect$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            io.ktor.network.sockets.SocketImpl$connect$1 r0 = new io.ktor.network.sockets.SocketImpl$connect$1
            r0.<init>(r6, r8)
        L18:
            java.lang.Object r8 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L39
            if (r2 == r4) goto L31
            if (r2 != r3) goto L29
            goto L31
        L29:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L31:
            java.lang.Object r7 = r0.L$0
            java.net.SocketAddress r7 = (java.net.SocketAddress) r7
            kotlin.ResultKt.throwOnFailure(r8)
            goto L5f
        L39:
            kotlin.ResultKt.throwOnFailure(r8)
            java.nio.channels.SocketChannel r8 = r6.getChannel()
            boolean r8 = r8.connect(r7)
            if (r8 == 0) goto L47
            return r6
        L47:
            r6.wantConnect(r4)
            io.ktor.network.selector.SelectorManager r8 = r6.getSelector()
            io.ktor.network.selector.SelectInterest r2 = io.ktor.network.selector.SelectInterest.CONNECT
            java.lang.Object r5 = kotlin.coroutines.jvm.internal.SpillingKt.nullOutSpilledVariable(r7)
            r0.L$0 = r5
            r0.label = r4
            java.lang.Object r8 = r8.select(r6, r2, r0)
            if (r8 != r1) goto L5f
            return r1
        L5f:
            java.nio.channels.SocketChannel r8 = r6.getChannel()
            boolean r8 = r8.finishConnect()
            if (r8 == 0) goto L8e
            boolean r8 = r6.inetSelfConnect()
            if (r8 == 0) goto L89
            boolean r8 = io.ktor.network.sockets.JavaSocketOptionsKt.getJava7NetworkApisAvailable()
            if (r8 == 0) goto L7d
            java.nio.channels.SocketChannel r8 = r6.getChannel()
            r8.close()
            goto L5f
        L7d:
            java.nio.channels.SocketChannel r8 = r6.getChannel()
            java.net.Socket r8 = r8.socket()
            r8.close()
            goto L5f
        L89:
            r7 = 0
            r6.wantConnect(r7)
            return r6
        L8e:
            r6.wantConnect(r4)
            io.ktor.network.selector.SelectorManager r8 = r6.getSelector()
            io.ktor.network.selector.SelectInterest r2 = io.ktor.network.selector.SelectInterest.CONNECT
            java.lang.Object r5 = kotlin.coroutines.jvm.internal.SpillingKt.nullOutSpilledVariable(r7)
            r0.L$0 = r5
            r0.label = r3
            java.lang.Object r8 = r8.select(r6, r2, r0)
            if (r8 != r1) goto L5f
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.network.sockets.SocketImpl.connect$ktor_network(java.net.SocketAddress, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public final void wantConnect(boolean z) {
        interestOp(SelectInterest.CONNECT, z);
    }

    public final boolean inetSelfConnect() throws IOException {
        java.net.SocketAddress localSocketAddress;
        java.net.SocketAddress remoteSocketAddress;
        String hostAddress;
        InetAddress address;
        InetAddress address2;
        String hostAddress2;
        InetAddress address3;
        if (JavaSocketOptionsKt.getJava7NetworkApisAvailable()) {
            localSocketAddress = getChannel().getLocalAddress();
        } else {
            localSocketAddress = getChannel().socket().getLocalSocketAddress();
        }
        if (JavaSocketOptionsKt.getJava7NetworkApisAvailable()) {
            remoteSocketAddress = getChannel().getRemoteAddress();
        } else {
            remoteSocketAddress = getChannel().socket().getRemoteSocketAddress();
        }
        if (localSocketAddress == null || remoteSocketAddress == null) {
            throw new IllegalStateException("localAddress and remoteAddress should not be null.");
        }
        java.net.InetSocketAddress inetSocketAddress = localSocketAddress instanceof java.net.InetSocketAddress ? (java.net.InetSocketAddress) localSocketAddress : null;
        java.net.InetSocketAddress inetSocketAddress2 = remoteSocketAddress instanceof java.net.InetSocketAddress ? (java.net.InetSocketAddress) remoteSocketAddress : null;
        if (inetSocketAddress == null && inetSocketAddress2 == null) {
            return false;
        }
        String str = "";
        if (inetSocketAddress == null || (address3 = inetSocketAddress.getAddress()) == null || (hostAddress = address3.getHostAddress()) == null) {
            hostAddress = "";
        }
        if (inetSocketAddress2 != null && (address2 = inetSocketAddress2.getAddress()) != null && (hostAddress2 = address2.getHostAddress()) != null) {
            str = hostAddress2;
        }
        boolean zIsAnyLocalAddress = (inetSocketAddress2 == null || (address = inetSocketAddress2.getAddress()) == null) ? false : address.isAnyLocalAddress();
        if (Intrinsics.areEqual(inetSocketAddress != null ? Integer.valueOf(inetSocketAddress.getPort()) : null, inetSocketAddress2 != null ? Integer.valueOf(inetSocketAddress2.getPort()) : null)) {
            return zIsAnyLocalAddress || Intrinsics.areEqual(hostAddress, str);
        }
        return false;
    }
}
