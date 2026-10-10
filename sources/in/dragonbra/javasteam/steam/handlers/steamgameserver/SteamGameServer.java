package in.dragonbra.javasteam.steam.handlers.steamgameserver;

import com.google.protobuf.ByteString;
import in.dragonbra.javasteam.base.ClientMsgProtobuf;
import in.dragonbra.javasteam.base.IPacketMsg;
import in.dragonbra.javasteam.enums.EAccountType;
import in.dragonbra.javasteam.enums.EMsg;
import in.dragonbra.javasteam.enums.EResult;
import in.dragonbra.javasteam.enums.EServerFlags;
import in.dragonbra.javasteam.enums.EUniverse;
import in.dragonbra.javasteam.generated.MsgClientLogon;
import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers;
import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin;
import in.dragonbra.javasteam.steam.handlers.ClientMsgHandler;
import in.dragonbra.javasteam.steam.handlers.steamgameserver.callback.StatusReplyCallback;
import in.dragonbra.javasteam.steam.handlers.steamgameserver.callback.TicketAuthCallback;
import in.dragonbra.javasteam.steam.handlers.steamuser.callback.LoggedOnCallback;
import in.dragonbra.javasteam.steam.steamclient.callbackmgr.CallbackMsg;
import in.dragonbra.javasteam.types.SteamID;
import in.dragonbra.javasteam.util.HardwareUtils;
import in.dragonbra.javasteam.util.NetHelpers;
import in.dragonbra.javasteam.util.Utils;
import java.net.Inet6Address;
import java.net.InetAddress;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: SteamGameServer.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class SteamGameServer extends ClientMsgHandler {
    public static final Companion Companion = new Companion(null);

    public final void logOnAnonymous() {
        logOnAnonymous$default(this, 0, 1, null);
    }

    public final void logOn(LogOnDetails details) {
        Intrinsics.checkNotNullParameter(details, "details");
        String token = details.getToken();
        if (token == null || token.length() == 0) {
            throw new IllegalArgumentException("LogOn requires a game server token to be set in 'details'.");
        }
        if (!getClient().isConnected()) {
            getClient().postCallback(new LoggedOnCallback(EResult.NoConnection));
            return;
        }
        ClientMsgProtobuf clientMsgProtobuf = new ClientMsgProtobuf(SteammessagesClientserverLogin.CMsgClientLogon.class, EMsg.ClientLogonGameServer, 0, 4, null);
        EUniverse universe = getClient().getUniverse();
        Intrinsics.checkNotNullExpressionValue(universe, "getUniverse(...)");
        SteamID steamID = new SteamID(0L, 0L, universe, EAccountType.GameServer);
        clientMsgProtobuf.getProtoHeader().setClientSessionid(0);
        clientMsgProtobuf.getProtoHeader().setSteamid(steamID.convertToUInt64());
        InetAddress localIP = getClient().getLocalIP();
        Intrinsics.checkNotNull(localIP);
        ((SteammessagesClientserverLogin.CMsgClientLogon.Builder) clientMsgProtobuf.getBody()).setObfuscatedPrivateIp(NetHelpers.obfuscatePrivateIP(NetHelpers.getMsgIPAddress(localIP)));
        ((SteammessagesClientserverLogin.CMsgClientLogon.Builder) clientMsgProtobuf.getBody()).setProtocolVersion(MsgClientLogon.CurrentProtocol);
        ((SteammessagesClientserverLogin.CMsgClientLogon.Builder) clientMsgProtobuf.getBody()).setClientOsType(Utils.getOSType().code());
        ((SteammessagesClientserverLogin.CMsgClientLogon.Builder) clientMsgProtobuf.getBody()).setGameServerAppId(details.getAppID());
        ((SteammessagesClientserverLogin.CMsgClientLogon.Builder) clientMsgProtobuf.getBody()).setMachineId(ByteString.copyFrom(HardwareUtils.getMachineID()));
        ((SteammessagesClientserverLogin.CMsgClientLogon.Builder) clientMsgProtobuf.getBody()).setGameServerToken(details.getToken());
        getClient().send(clientMsgProtobuf);
    }

    public static /* synthetic */ void logOnAnonymous$default(SteamGameServer steamGameServer, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = 0;
        }
        steamGameServer.logOnAnonymous(i);
    }

    public final void logOnAnonymous(int i) {
        if (!getClient().isConnected()) {
            getClient().postCallback(new LoggedOnCallback(EResult.NoConnection));
            return;
        }
        ClientMsgProtobuf clientMsgProtobuf = new ClientMsgProtobuf(SteammessagesClientserverLogin.CMsgClientLogon.class, EMsg.ClientLogonGameServer, 0, 4, null);
        EUniverse universe = getClient().getUniverse();
        Intrinsics.checkNotNullExpressionValue(universe, "getUniverse(...)");
        SteamID steamID = new SteamID(0L, 0L, universe, EAccountType.AnonGameServer);
        clientMsgProtobuf.getProtoHeader().setClientSessionid(0);
        clientMsgProtobuf.getProtoHeader().setSteamid(steamID.convertToUInt64());
        InetAddress localIP = getClient().getLocalIP();
        Intrinsics.checkNotNull(localIP);
        ((SteammessagesClientserverLogin.CMsgClientLogon.Builder) clientMsgProtobuf.getBody()).setObfuscatedPrivateIp(NetHelpers.obfuscatePrivateIP(NetHelpers.getMsgIPAddress(localIP)));
        ((SteammessagesClientserverLogin.CMsgClientLogon.Builder) clientMsgProtobuf.getBody()).setProtocolVersion(MsgClientLogon.CurrentProtocol);
        ((SteammessagesClientserverLogin.CMsgClientLogon.Builder) clientMsgProtobuf.getBody()).setClientOsType(Utils.getOSType().code());
        ((SteammessagesClientserverLogin.CMsgClientLogon.Builder) clientMsgProtobuf.getBody()).setGameServerAppId(i);
        ((SteammessagesClientserverLogin.CMsgClientLogon.Builder) clientMsgProtobuf.getBody()).setMachineId(ByteString.copyFrom(HardwareUtils.getMachineID()));
        getClient().send(clientMsgProtobuf);
    }

    public final void logOff() {
        setExpectDisconnection(true);
        getClient().send(new ClientMsgProtobuf(SteammessagesClientserverLogin.CMsgClientLogOff.class, EMsg.ClientLogOff, 0, 4, null));
        getClient().disconnect();
    }

    public final void sendStatus(StatusDetails details) {
        Intrinsics.checkNotNullParameter(details, "details");
        if (details.getAddress() != null && (details.getAddress() instanceof Inet6Address)) {
            throw new IllegalArgumentException("Only IPv4 addresses are supported.");
        }
        ClientMsgProtobuf clientMsgProtobuf = new ClientMsgProtobuf(SteammessagesClientserverGameservers.CMsgGSServerType.class, EMsg.GSServerType, 0, 4, null);
        ((SteammessagesClientserverGameservers.CMsgGSServerType.Builder) clientMsgProtobuf.getBody()).setAppIdServed(details.getAppID());
        ((SteammessagesClientserverGameservers.CMsgGSServerType.Builder) clientMsgProtobuf.getBody()).setFlags(EServerFlags.code(details.getServerFlags()));
        ((SteammessagesClientserverGameservers.CMsgGSServerType.Builder) clientMsgProtobuf.getBody()).setGameDir(details.getGameDirectory());
        ((SteammessagesClientserverGameservers.CMsgGSServerType.Builder) clientMsgProtobuf.getBody()).setGamePort(details.getPort());
        ((SteammessagesClientserverGameservers.CMsgGSServerType.Builder) clientMsgProtobuf.getBody()).setGameQueryPort(details.getQueryPort());
        ((SteammessagesClientserverGameservers.CMsgGSServerType.Builder) clientMsgProtobuf.getBody()).setGameVersion(details.getVersion());
        if (details.getAddress() != null) {
            SteammessagesClientserverGameservers.CMsgGSServerType.Builder builder = (SteammessagesClientserverGameservers.CMsgGSServerType.Builder) clientMsgProtobuf.getBody();
            InetAddress address = details.getAddress();
            Intrinsics.checkNotNull(address);
            builder.setDeprecatedGameIpAddress(NetHelpers.getIPAddress(address));
        }
        getClient().send(clientMsgProtobuf);
    }

    @Override // in.dragonbra.javasteam.steam.handlers.ClientMsgHandler
    public void handleMsg(IPacketMsg packetMsg) {
        Intrinsics.checkNotNullParameter(packetMsg, "packetMsg");
        CallbackMsg callback = Companion.getCallback(packetMsg);
        if (callback == null) {
            return;
        }
        getClient().postCallback(callback);
    }

    /* JADX INFO: compiled from: SteamGameServer.kt */
    public static final class Companion {

        /* JADX INFO: compiled from: SteamGameServer.kt */
        public static final /* synthetic */ class WhenMappings {
            public static final /* synthetic */ int[] $EnumSwitchMapping$0;

            static {
                int[] iArr = new int[EMsg.values().length];
                try {
                    iArr[EMsg.GSStatusReply.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[EMsg.ClientTicketAuthComplete.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                $EnumSwitchMapping$0 = iArr;
            }
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final CallbackMsg getCallback(IPacketMsg iPacketMsg) {
            int i = WhenMappings.$EnumSwitchMapping$0[iPacketMsg.getMsgType().ordinal()];
            if (i == 1) {
                return new StatusReplyCallback(iPacketMsg);
            }
            if (i != 2) {
                return null;
            }
            return new TicketAuthCallback(iPacketMsg);
        }
    }
}
