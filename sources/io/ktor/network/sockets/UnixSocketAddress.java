package io.ktor.network.sockets;

import java.lang.reflect.InvocationTargetException;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: SocketAddressJvm.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class UnixSocketAddress extends SocketAddress {
    public static final Companion Companion = new Companion(0 == true ? 1 : 0);
    public static final Class<?> unixDomainSocketAddressClass;
    public final java.net.SocketAddress address;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UnixSocketAddress(java.net.SocketAddress address) {
        super(null);
        Intrinsics.checkNotNullParameter(address, "address");
        this.address = address;
        if (!Intrinsics.areEqual(getAddress$ktor_network().getClass().getName(), "java.net.UnixDomainSocketAddress")) {
            throw new IllegalStateException("address should be java.net.UnixDomainSocketAddress");
        }
    }

    @Override // io.ktor.network.sockets.SocketAddress
    public java.net.SocketAddress getAddress$ktor_network() {
        return this.address;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public UnixSocketAddress(String path) throws IllegalAccessException, InvocationTargetException {
        Intrinsics.checkNotNullParameter(path, "path");
        Object objInvoke = Companion.checkSupportForUnixDomainSockets$ktor_network().getMethod("of", String.class).invoke(null, path);
        Intrinsics.checkNotNull(objInvoke, "null cannot be cast to non-null type java.net.SocketAddress");
        this((java.net.SocketAddress) objInvoke);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!Intrinsics.areEqual(UnixSocketAddress.class, obj != null ? obj.getClass() : null)) {
            return false;
        }
        Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type io.ktor.network.sockets.UnixSocketAddress");
        return Intrinsics.areEqual(getAddress$ktor_network(), ((UnixSocketAddress) obj).getAddress$ktor_network());
    }

    public int hashCode() {
        return getAddress$ktor_network().hashCode();
    }

    public String toString() {
        return getAddress$ktor_network().toString();
    }

    /* JADX INFO: compiled from: SocketAddressJvm.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public Companion() {
        }

        public final Class<?> checkSupportForUnixDomainSockets$ktor_network() {
            Class<?> cls = UnixSocketAddress.unixDomainSocketAddressClass;
            if (cls != null) {
                return cls;
            }
            throw new IllegalStateException("Unix domain sockets are unsupported before Java 16.");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    static {
        Class<?> cls = null;
        try {
            cls = Class.forName("java.net.UnixDomainSocketAddress");
        } catch (ClassNotFoundException unused) {
        }
        unixDomainSocketAddressClass = cls;
    }
}
