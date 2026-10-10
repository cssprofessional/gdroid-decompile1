package in.dragonbra.javasteam.util;

import com.google.protobuf.ByteString;
import in.dragonbra.javasteam.generated.MsgClientLogon;
import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase;
import java.net.DatagramSocket;
import java.net.Inet6Address;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.net.UnknownHostException;
import java.nio.ByteBuffer;
import java.util.Arrays;
import kotlin.internal.ProgressionUtilKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringNumberConversionsKt;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;
import kotlin.text.StringsKt___StringsKt;

/* JADX INFO: compiled from: NetHelpers.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class NetHelpers {
    public static final NetHelpers INSTANCE = new NetHelpers();

    private NetHelpers() {
    }

    public static final int getIPAddress(InetAddress ipAddr) throws IllegalArgumentException {
        Intrinsics.checkNotNullParameter(ipAddr, "ipAddr");
        if (ipAddr.getAddress().length != 4) {
            throw new IllegalArgumentException("only works with IPv4 addresses.");
        }
        return ByteBuffer.wrap(ipAddr.getAddress()).getInt();
    }

    public static final InetAddress getLocalIP(Socket socket) throws Exception {
        Intrinsics.checkNotNullParameter(socket, "socket");
        return getLocalIP(socket.getLocalAddress());
    }

    public static final InetAddress getLocalIP(DatagramSocket datagramSocket) throws IllegalArgumentException {
        Intrinsics.checkNotNullParameter(datagramSocket, "datagramSocket");
        return getLocalIP(datagramSocket.getLocalAddress());
    }

    public static final InetAddress getLocalIP(InetAddress inetAddress) {
        if (inetAddress == null || Arrays.equals(inetAddress.getAddress(), InetAddress.getByName("0.0.0.0").getAddress())) {
            return null;
        }
        return inetAddress;
    }

    public static final InetAddress getIPAddress(int i) throws UnknownHostException {
        InetAddress byAddress = InetAddress.getByAddress(new byte[]{(byte) ((i >> 24) & 255), (byte) ((i >> 16) & 255), (byte) ((i >> 8) & 255), (byte) (i & 255)});
        Intrinsics.checkNotNullExpressionValue(byAddress, "getByAddress(...)");
        return byAddress;
    }

    public static final InetAddress getIPAddress(SteammessagesBase.CMsgIPAddress ipAddr) throws UnknownHostException {
        Intrinsics.checkNotNullParameter(ipAddr, "ipAddr");
        if (ipAddr.hasV6()) {
            InetAddress byAddress = InetAddress.getByAddress(ipAddr.getV6().toByteArray());
            Intrinsics.checkNotNull(byAddress);
            return byAddress;
        }
        return getIPAddress(ipAddr.getV4());
    }

    public static final SteammessagesBase.CMsgIPAddress getMsgIPAddress(InetAddress ipAddr) {
        Intrinsics.checkNotNullParameter(ipAddr, "ipAddr");
        SteammessagesBase.CMsgIPAddress.Builder builderNewBuilder = SteammessagesBase.CMsgIPAddress.newBuilder();
        if (ipAddr instanceof Inet6Address) {
            builderNewBuilder.setV6(ByteString.copyFrom(((Inet6Address) ipAddr).getAddress()));
        } else {
            builderNewBuilder.setV4(getIPAddress(ipAddr));
        }
        SteammessagesBase.CMsgIPAddress cMsgIPAddressBuild = builderNewBuilder.build();
        Intrinsics.checkNotNullExpressionValue(cMsgIPAddressBuild, "build(...)");
        return cMsgIPAddressBuild;
    }

    public static final SteammessagesBase.CMsgIPAddress obfuscatePrivateIP(SteammessagesBase.CMsgIPAddress msgIpAddress) {
        Intrinsics.checkNotNullParameter(msgIpAddress, "msgIpAddress");
        SteammessagesBase.CMsgIPAddress.Builder builder = msgIpAddress.toBuilder();
        if (builder.hasV6()) {
            byte[] byteArray = msgIpAddress.getV6().toByteArray();
            int i = 0;
            int progressionLastElement = ProgressionUtilKt.getProgressionLastElement(0, 15, 4);
            if (progressionLastElement >= 0) {
                while (true) {
                    byteArray[i] = (byte) (byteArray[i] ^ 13);
                    int i2 = i + 1;
                    byteArray[i2] = (byte) (byteArray[i2] ^ 240);
                    int i3 = i + 2;
                    byteArray[i3] = (byte) (byteArray[i3] ^ 173);
                    int i4 = i + 3;
                    byteArray[i4] = (byte) (byteArray[i4] ^ 186);
                    if (i == progressionLastElement) {
                        break;
                    }
                    i += 4;
                }
            }
            builder.setV6(ByteString.copyFrom(byteArray));
        } else {
            builder.setV4(msgIpAddress.getV4() ^ MsgClientLogon.ObfuscationMask);
        }
        SteammessagesBase.CMsgIPAddress cMsgIPAddressBuild = builder.build();
        Intrinsics.checkNotNullExpressionValue(cMsgIPAddressBuild, "build(...)");
        return cMsgIPAddressBuild;
    }

    public static final InetSocketAddress tryParseIPEndPoint(String stringValue) {
        Intrinsics.checkNotNullParameter(stringValue, "stringValue");
        try {
            int iLastIndexOf$default = StringsKt__StringsKt.lastIndexOf$default((CharSequence) stringValue, ':', 0, false, 6, (Object) null);
            if (iLastIndexOf$default == -1) {
                return null;
            }
            String strTake = StringsKt___StringsKt.take(stringValue, iLastIndexOf$default);
            String strSubstring = stringValue.substring(iLastIndexOf$default + 1);
            Intrinsics.checkNotNullExpressionValue(strSubstring, "substring(...)");
            Integer intOrNull = StringsKt__StringNumberConversionsKt.toIntOrNull(strSubstring);
            if (intOrNull == null) {
                return null;
            }
            int iIntValue = intOrNull.intValue();
            if (StringsKt__StringsJVMKt.startsWith$default(strTake, "[", false, 2, null) && StringsKt__StringsJVMKt.endsWith$default(strTake, "]", false, 2, null)) {
                strTake = strTake.substring(1, strTake.length() - 1);
                Intrinsics.checkNotNullExpressionValue(strTake, "substring(...)");
            }
            return new InetSocketAddress(strTake, iIntValue);
        } catch (UnknownHostException | Exception unused) {
            return null;
        }
    }
}
