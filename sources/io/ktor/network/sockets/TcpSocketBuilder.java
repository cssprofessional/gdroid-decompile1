package io.ktor.network.sockets;

import io.ktor.network.selector.SelectorManager;
import io.ktor.network.sockets.SocketOptions;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: TcpSocketBuilder.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class TcpSocketBuilder {
    public SocketOptions.PeerSocketOptions options;
    public final SelectorManager selector;

    public TcpSocketBuilder(SelectorManager selector, SocketOptions.PeerSocketOptions options) {
        Intrinsics.checkNotNullParameter(selector, "selector");
        Intrinsics.checkNotNullParameter(options, "options");
        this.selector = selector;
        this.options = options;
    }

    public SocketOptions.PeerSocketOptions getOptions() {
        return this.options;
    }

    public final Object connect(SocketAddress socketAddress, Function1<? super SocketOptions.TCPClientSocketOptions, Unit> function1, Continuation<? super Socket> continuation) {
        SelectorManager selectorManager = this.selector;
        SocketOptions.TCPClientSocketOptions tCPClientSocketOptionsTcpConnect$ktor_network = getOptions().tcpConnect$ktor_network();
        function1.invoke(tCPClientSocketOptionsTcpConnect$ktor_network);
        return ConnectUtilsJvmKt.tcpConnect(selectorManager, socketAddress, tCPClientSocketOptionsTcpConnect$ktor_network, continuation);
    }
}
