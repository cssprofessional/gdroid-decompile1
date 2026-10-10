package io.ktor.network.sockets;

import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: compiled from: SocketAddressJvm.kt */
/* JADX INFO: loaded from: classes2.dex */
public abstract class SocketAddress {
    public /* synthetic */ SocketAddress(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public abstract java.net.SocketAddress getAddress$ktor_network();

    public SocketAddress() {
    }
}
