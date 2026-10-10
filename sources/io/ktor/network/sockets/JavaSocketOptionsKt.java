package io.ktor.network.sockets;

import io.ktor.network.sockets.SocketOptions;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.net.SocketOption;
import java.net.StandardSocketOptions;
import java.nio.channels.DatagramChannel;
import java.nio.channels.SelectableChannel;
import java.nio.channels.ServerSocketChannel;
import java.nio.channels.SocketChannel;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: JavaSocketOptions.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class JavaSocketOptionsKt {
    public static final boolean java7NetworkApisAvailable;

    public static final boolean getJava7NetworkApisAvailable() {
        return java7NetworkApisAvailable;
    }

    static {
        boolean z;
        try {
            Class.forName("java.net.StandardSocketOptions");
            z = true;
        } catch (ClassNotFoundException unused) {
            z = false;
        }
        java7NetworkApisAvailable = z;
    }

    public static final void nonBlocking(SelectableChannel selectableChannel) throws IOException {
        Intrinsics.checkNotNullParameter(selectableChannel, "<this>");
        selectableChannel.configureBlocking(false);
    }

    public static final void assignOptions(SelectableChannel selectableChannel, SocketOptions options) throws IllegalAccessException, IOException, InvocationTargetException {
        Intrinsics.checkNotNullParameter(selectableChannel, "<this>");
        Intrinsics.checkNotNullParameter(options, "options");
        if (selectableChannel instanceof SocketChannel) {
            if (!TypeOfService.m8114equalsimpl0(options.m8112getTypeOfServicezieKYfw(), TypeOfService.Companion.m8115getUNDEFINEDzieKYfw())) {
                if (java7NetworkApisAvailable) {
                    ((SocketChannel) selectableChannel).setOption((SocketOption<Integer>) StandardSocketOptions.IP_TOS, Integer.valueOf(options.m8112getTypeOfServicezieKYfw() & 255));
                } else {
                    ((SocketChannel) selectableChannel).socket().setTrafficClass(options.m8112getTypeOfServicezieKYfw() & 255);
                }
            }
            if (options.getReuseAddress()) {
                if (java7NetworkApisAvailable) {
                    ((SocketChannel) selectableChannel).setOption((SocketOption<Boolean>) StandardSocketOptions.SO_REUSEADDR, Boolean.TRUE);
                } else {
                    ((SocketChannel) selectableChannel).socket().setReuseAddress(true);
                }
            }
            if (options.getReusePort()) {
                SocketOptionsPlatformCapabilities.INSTANCE.setReusePort((SocketChannel) selectableChannel);
            }
            if (options instanceof SocketOptions.PeerSocketOptions) {
                SocketOptions.PeerSocketOptions peerSocketOptions = (SocketOptions.PeerSocketOptions) options;
                Integer numValueOf = Integer.valueOf(peerSocketOptions.getReceiveBufferSize());
                if (numValueOf.intValue() <= 0) {
                    numValueOf = null;
                }
                if (numValueOf != null) {
                    int iIntValue = numValueOf.intValue();
                    if (java7NetworkApisAvailable) {
                        ((SocketChannel) selectableChannel).setOption((SocketOption<Integer>) StandardSocketOptions.SO_RCVBUF, Integer.valueOf(iIntValue));
                    } else {
                        ((SocketChannel) selectableChannel).socket().setReceiveBufferSize(iIntValue);
                    }
                }
                Integer numValueOf2 = Integer.valueOf(peerSocketOptions.getSendBufferSize());
                if (numValueOf2.intValue() <= 0) {
                    numValueOf2 = null;
                }
                if (numValueOf2 != null) {
                    int iIntValue2 = numValueOf2.intValue();
                    if (java7NetworkApisAvailable) {
                        ((SocketChannel) selectableChannel).setOption((SocketOption<Integer>) StandardSocketOptions.SO_SNDBUF, Integer.valueOf(iIntValue2));
                    } else {
                        ((SocketChannel) selectableChannel).socket().setSendBufferSize(iIntValue2);
                    }
                }
            }
            if (options instanceof SocketOptions.TCPClientSocketOptions) {
                SocketOptions.TCPClientSocketOptions tCPClientSocketOptions = (SocketOptions.TCPClientSocketOptions) options;
                Integer numValueOf3 = Integer.valueOf(tCPClientSocketOptions.getLingerSeconds());
                if (numValueOf3.intValue() < 0) {
                    numValueOf3 = null;
                }
                if (numValueOf3 != null) {
                    int iIntValue3 = numValueOf3.intValue();
                    if (java7NetworkApisAvailable) {
                        ((SocketChannel) selectableChannel).setOption((SocketOption<Integer>) StandardSocketOptions.SO_LINGER, Integer.valueOf(iIntValue3));
                    } else {
                        ((SocketChannel) selectableChannel).socket().setSoLinger(true, iIntValue3);
                    }
                }
                Boolean keepAlive = tCPClientSocketOptions.getKeepAlive();
                if (keepAlive != null) {
                    boolean zBooleanValue = keepAlive.booleanValue();
                    if (java7NetworkApisAvailable) {
                        ((SocketChannel) selectableChannel).setOption((SocketOption<Boolean>) StandardSocketOptions.SO_KEEPALIVE, keepAlive);
                    } else {
                        ((SocketChannel) selectableChannel).socket().setKeepAlive(zBooleanValue);
                    }
                }
                if (java7NetworkApisAvailable) {
                    ((SocketChannel) selectableChannel).setOption((SocketOption<Boolean>) StandardSocketOptions.TCP_NODELAY, Boolean.valueOf(tCPClientSocketOptions.getNoDelay()));
                } else {
                    ((SocketChannel) selectableChannel).socket().setTcpNoDelay(tCPClientSocketOptions.getNoDelay());
                }
            }
        }
        if (selectableChannel instanceof ServerSocketChannel) {
            if (options.getReuseAddress()) {
                if (java7NetworkApisAvailable) {
                    ((ServerSocketChannel) selectableChannel).setOption((SocketOption<Boolean>) StandardSocketOptions.SO_REUSEADDR, Boolean.TRUE);
                } else {
                    ((ServerSocketChannel) selectableChannel).socket().setReuseAddress(true);
                }
            }
            if (options.getReusePort()) {
                SocketOptionsPlatformCapabilities.INSTANCE.setReusePort((ServerSocketChannel) selectableChannel);
            }
        }
        if (selectableChannel instanceof DatagramChannel) {
            if (!TypeOfService.m8114equalsimpl0(options.m8112getTypeOfServicezieKYfw(), TypeOfService.Companion.m8115getUNDEFINEDzieKYfw())) {
                if (java7NetworkApisAvailable) {
                    ((DatagramChannel) selectableChannel).setOption((SocketOption<Integer>) StandardSocketOptions.IP_TOS, Integer.valueOf(options.m8112getTypeOfServicezieKYfw() & 255));
                } else {
                    ((DatagramChannel) selectableChannel).socket().setTrafficClass(options.m8112getTypeOfServicezieKYfw() & 255);
                }
            }
            if (options.getReuseAddress()) {
                if (java7NetworkApisAvailable) {
                    ((DatagramChannel) selectableChannel).setOption((SocketOption<Boolean>) StandardSocketOptions.SO_REUSEADDR, Boolean.TRUE);
                } else {
                    ((DatagramChannel) selectableChannel).socket().setReuseAddress(true);
                }
            }
            if (options.getReusePort()) {
                SocketOptionsPlatformCapabilities.INSTANCE.setReusePort((DatagramChannel) selectableChannel);
            }
            if (options instanceof SocketOptions.UDPSocketOptions) {
                if (java7NetworkApisAvailable) {
                    ((DatagramChannel) selectableChannel).setOption((SocketOption<Boolean>) StandardSocketOptions.SO_BROADCAST, Boolean.valueOf(((SocketOptions.UDPSocketOptions) options).getBroadcast()));
                } else {
                    ((DatagramChannel) selectableChannel).socket().setBroadcast(((SocketOptions.UDPSocketOptions) options).getBroadcast());
                }
            }
            if (options instanceof SocketOptions.PeerSocketOptions) {
                SocketOptions.PeerSocketOptions peerSocketOptions2 = (SocketOptions.PeerSocketOptions) options;
                Integer numValueOf4 = Integer.valueOf(peerSocketOptions2.getReceiveBufferSize());
                if (numValueOf4.intValue() <= 0) {
                    numValueOf4 = null;
                }
                if (numValueOf4 != null) {
                    int iIntValue4 = numValueOf4.intValue();
                    if (java7NetworkApisAvailable) {
                        ((DatagramChannel) selectableChannel).setOption((SocketOption<Integer>) StandardSocketOptions.SO_RCVBUF, Integer.valueOf(iIntValue4));
                    } else {
                        ((DatagramChannel) selectableChannel).socket().setReceiveBufferSize(iIntValue4);
                    }
                }
                Integer numValueOf5 = Integer.valueOf(peerSocketOptions2.getSendBufferSize());
                Integer num = numValueOf5.intValue() > 0 ? numValueOf5 : null;
                if (num != null) {
                    int iIntValue5 = num.intValue();
                    if (java7NetworkApisAvailable) {
                        ((DatagramChannel) selectableChannel).setOption((SocketOption<Integer>) StandardSocketOptions.SO_SNDBUF, Integer.valueOf(iIntValue5));
                    } else {
                        ((DatagramChannel) selectableChannel).socket().setSendBufferSize(iIntValue5);
                    }
                }
            }
        }
    }
}
