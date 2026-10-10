package io.ktor.network.sockets;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: SocketAddressJvm.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class InetSocketAddress extends SocketAddress {
    public final java.net.InetSocketAddress address;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public InetSocketAddress(java.net.InetSocketAddress address) {
        super(null);
        Intrinsics.checkNotNullParameter(address, "address");
        this.address = address;
    }

    @Override // io.ktor.network.sockets.SocketAddress
    public java.net.InetSocketAddress getAddress$ktor_network() {
        return this.address;
    }

    public final String getHostname() {
        String hostName = getAddress$ktor_network().getHostName();
        Intrinsics.checkNotNullExpressionValue(hostName, "getHostName(...)");
        return hostName;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public InetSocketAddress(String hostname, int i) {
        this(new java.net.InetSocketAddress(hostname, i));
        Intrinsics.checkNotNullParameter(hostname, "hostname");
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!Intrinsics.areEqual(InetSocketAddress.class, obj != null ? obj.getClass() : null)) {
            return false;
        }
        Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type io.ktor.network.sockets.InetSocketAddress");
        return Intrinsics.areEqual(getAddress$ktor_network(), ((InetSocketAddress) obj).getAddress$ktor_network());
    }

    public int hashCode() {
        return getAddress$ktor_network().hashCode();
    }

    public String toString() {
        String string = getAddress$ktor_network().toString();
        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
        return string;
    }
}
