package io.ktor.network.sockets;

import io.ktor.network.selector.SelectorManager;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: Builders.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class BuildersKt {
    public static final SocketBuilder aSocket(SelectorManager selector) {
        Intrinsics.checkNotNullParameter(selector, "selector");
        return new SocketBuilder(selector, SocketOptions.Companion.create$ktor_network());
    }
}
