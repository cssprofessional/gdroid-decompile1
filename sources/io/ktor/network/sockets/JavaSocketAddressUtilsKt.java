package io.ktor.network.sockets;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: JavaSocketAddressUtils.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class JavaSocketAddressUtilsKt {
    public static final java.net.SocketAddress toJavaAddress(SocketAddress socketAddress) {
        Intrinsics.checkNotNullParameter(socketAddress, "<this>");
        return socketAddress.getAddress$ktor_network();
    }
}
