package io.ktor.network.sockets;

import java.util.HashMap;
import java.util.Map;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.tukaani.xz.common.Util;

/* JADX INFO: compiled from: SocketOptions.kt */
/* JADX INFO: loaded from: classes2.dex */
public abstract class SocketOptions {
    public static final Companion Companion = new Companion(null);
    public final Map<Object, Object> customOptions;
    public boolean reuseAddress;
    public boolean reusePort;
    public byte typeOfService;

    public /* synthetic */ SocketOptions(Map map, DefaultConstructorMarker defaultConstructorMarker) {
        this(map);
    }

    public SocketOptions(Map<Object, Object> map) {
        this.customOptions = map;
        this.typeOfService = TypeOfService.Companion.m8115getUNDEFINEDzieKYfw();
    }

    public final Map<Object, Object> getCustomOptions() {
        return this.customOptions;
    }

    public void copyCommon(SocketOptions from) {
        Intrinsics.checkNotNullParameter(from, "from");
        this.typeOfService = from.typeOfService;
        this.reuseAddress = from.reuseAddress;
        this.reusePort = from.reusePort;
    }

    public final PeerSocketOptions peer$ktor_network() {
        PeerSocketOptions peerSocketOptions = new PeerSocketOptions(new HashMap(this.customOptions));
        copyCommon(this);
        return peerSocketOptions;
    }

    /* JADX INFO: compiled from: SocketOptions.kt */
    public static final class GeneralSocketOptions extends SocketOptions {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public GeneralSocketOptions(Map<Object, Object> customOptions) {
            super(customOptions, null);
            Intrinsics.checkNotNullParameter(customOptions, "customOptions");
        }
    }

    /* JADX INFO: renamed from: getTypeOfService-zieKYfw, reason: not valid java name */
    public final byte m8112getTypeOfServicezieKYfw() {
        return this.typeOfService;
    }

    public final boolean getReuseAddress() {
        return this.reuseAddress;
    }

    public final boolean getReusePort() {
        return this.reusePort;
    }

    /* JADX INFO: compiled from: SocketOptions.kt */
    public static class PeerSocketOptions extends SocketOptions {
        public int receiveBufferSize;
        public int sendBufferSize;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public PeerSocketOptions(Map<Object, Object> customOptions) {
            super(customOptions, null);
            Intrinsics.checkNotNullParameter(customOptions, "customOptions");
            this.sendBufferSize = -1;
            this.receiveBufferSize = -1;
        }

        public final int getSendBufferSize() {
            return this.sendBufferSize;
        }

        public final int getReceiveBufferSize() {
            return this.receiveBufferSize;
        }

        @Override // io.ktor.network.sockets.SocketOptions
        public void copyCommon(SocketOptions from) {
            Intrinsics.checkNotNullParameter(from, "from");
            super.copyCommon(from);
            if (from instanceof PeerSocketOptions) {
                PeerSocketOptions peerSocketOptions = (PeerSocketOptions) from;
                this.sendBufferSize = peerSocketOptions.sendBufferSize;
                this.receiveBufferSize = peerSocketOptions.receiveBufferSize;
            }
        }

        public final TCPClientSocketOptions tcpConnect$ktor_network() {
            TCPClientSocketOptions tCPClientSocketOptions = new TCPClientSocketOptions(new HashMap(getCustomOptions()));
            copyCommon(this);
            return tCPClientSocketOptions;
        }
    }

    /* JADX INFO: compiled from: SocketOptions.kt */
    public static final class UDPSocketOptions extends PeerSocketOptions {
        public boolean broadcast;

        public final boolean getBroadcast() {
            return this.broadcast;
        }

        @Override // io.ktor.network.sockets.SocketOptions.PeerSocketOptions, io.ktor.network.sockets.SocketOptions
        public void copyCommon(SocketOptions from) {
            Intrinsics.checkNotNullParameter(from, "from");
            super.copyCommon(from);
            if (from instanceof UDPSocketOptions) {
                this.broadcast = ((UDPSocketOptions) from).broadcast;
            }
        }
    }

    /* JADX INFO: compiled from: SocketOptions.kt */
    public static final class TCPClientSocketOptions extends PeerSocketOptions {
        public Boolean keepAlive;
        public int lingerSeconds;
        public boolean noDelay;
        public long socketTimeout;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public TCPClientSocketOptions(Map<Object, Object> customOptions) {
            super(customOptions);
            Intrinsics.checkNotNullParameter(customOptions, "customOptions");
            this.noDelay = true;
            this.lingerSeconds = -1;
            this.socketTimeout = Util.VLI_MAX;
        }

        public final boolean getNoDelay() {
            return this.noDelay;
        }

        public final int getLingerSeconds() {
            return this.lingerSeconds;
        }

        public final Boolean getKeepAlive() {
            return this.keepAlive;
        }

        public final long getSocketTimeout() {
            return this.socketTimeout;
        }

        public final void setSocketTimeout(long j) {
            this.socketTimeout = j;
        }

        @Override // io.ktor.network.sockets.SocketOptions.PeerSocketOptions, io.ktor.network.sockets.SocketOptions
        public void copyCommon(SocketOptions from) {
            Intrinsics.checkNotNullParameter(from, "from");
            super.copyCommon(from);
            if (from instanceof TCPClientSocketOptions) {
                TCPClientSocketOptions tCPClientSocketOptions = (TCPClientSocketOptions) from;
                this.noDelay = tCPClientSocketOptions.noDelay;
                this.lingerSeconds = tCPClientSocketOptions.lingerSeconds;
                this.keepAlive = tCPClientSocketOptions.keepAlive;
            }
        }
    }

    /* JADX INFO: compiled from: SocketOptions.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public Companion() {
        }

        public final SocketOptions create$ktor_network() {
            return new GeneralSocketOptions(new HashMap());
        }
    }
}
