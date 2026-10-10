package io.ktor.network.sockets;

import io.ktor.network.selector.SelectorManager;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: Builders.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class SocketBuilder {
    public SocketOptions options;
    public final SelectorManager selector;

    public SocketBuilder(SelectorManager selector, SocketOptions options) {
        Intrinsics.checkNotNullParameter(selector, "selector");
        Intrinsics.checkNotNullParameter(options, "options");
        this.selector = selector;
        this.options = options;
    }

    public SocketOptions getOptions() {
        return this.options;
    }

    public final TcpSocketBuilder tcp() {
        return new TcpSocketBuilder(this.selector, getOptions().peer$ktor_network());
    }
}
