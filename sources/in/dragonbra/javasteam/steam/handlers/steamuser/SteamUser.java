package in.dragonbra.javasteam.steam.handlers.steamuser;

import com.google.protobuf.ByteString;
import in.dragonbra.javasteam.base.ClientMsgProtobuf;
import in.dragonbra.javasteam.base.IPacketMsg;
import in.dragonbra.javasteam.enums.EAccountType;
import in.dragonbra.javasteam.enums.EGamingDeviceType;
import in.dragonbra.javasteam.enums.EMsg;
import in.dragonbra.javasteam.enums.EResult;
import in.dragonbra.javasteam.enums.EUIMode;
import in.dragonbra.javasteam.enums.EUniverse;
import in.dragonbra.javasteam.generated.MsgClientLogon;
import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase;
import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2;
import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin;
import in.dragonbra.javasteam.steam.handlers.ClientMsgHandler;
import in.dragonbra.javasteam.steam.handlers.steamuser.callback.AccountInfoCallback;
import in.dragonbra.javasteam.steam.handlers.steamuser.callback.EmailAddrInfoCallback;
import in.dragonbra.javasteam.steam.handlers.steamuser.callback.LoggedOffCallback;
import in.dragonbra.javasteam.steam.handlers.steamuser.callback.LoggedOnCallback;
import in.dragonbra.javasteam.steam.handlers.steamuser.callback.MarketingMessageCallback;
import in.dragonbra.javasteam.steam.handlers.steamuser.callback.PlayingSessionStateCallback;
import in.dragonbra.javasteam.steam.handlers.steamuser.callback.SessionTokenCallback;
import in.dragonbra.javasteam.steam.handlers.steamuser.callback.VanityURLChangedCallback;
import in.dragonbra.javasteam.steam.handlers.steamuser.callback.WalletInfoCallback;
import in.dragonbra.javasteam.steam.handlers.steamuser.callback.WebAPIUserNonceCallback;
import in.dragonbra.javasteam.steam.steamclient.callbackmgr.CallbackMsg;
import in.dragonbra.javasteam.types.SteamID;
import in.dragonbra.javasteam.util.HardwareUtils;
import in.dragonbra.javasteam.util.NetHelpers;
import java.net.InetAddress;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: SteamUser.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class SteamUser extends ClientMsgHandler {
    public static final Companion Companion = new Companion(null);

    public final void logOnAnonymous() {
        logOnAnonymous$default(this, null, 1, null);
    }

    public final SteamID getSteamID() {
        return getClient().getSteamID();
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

    public final void logOn(LogOnDetails details) {
        String password;
        String accessToken;
        Intrinsics.checkNotNullParameter(details, "details");
        if (details.getUsername().length() == 0 || (((password = details.getPassword()) == null || password.length() == 0) && ((accessToken = details.getAccessToken()) == null || accessToken.length() == 0))) {
            throw new IllegalArgumentException("LogOn requires a username and password or access token to be set in 'details'.");
        }
        if (!getClient().isConnected()) {
            getClient().postCallback(new LoggedOnCallback(EResult.NoConnection));
            return;
        }
        ClientMsgProtobuf clientMsgProtobuf = new ClientMsgProtobuf(SteammessagesClientserverLogin.CMsgClientLogon.class, EMsg.ClientLogon, 0, 4, null);
        long accountID = details.getAccountID();
        long accountInstance = details.getAccountInstance();
        EUniverse universe = getClient().getUniverse();
        Intrinsics.checkNotNullExpressionValue(universe, "getUniverse(...)");
        SteamID steamID = new SteamID(accountID, accountInstance, universe, EAccountType.Individual);
        if (details.getLoginID() != null) {
            SteammessagesClientserverLogin.CMsgClientLogon.Builder builder = (SteammessagesClientserverLogin.CMsgClientLogon.Builder) clientMsgProtobuf.getBody();
            SteammessagesBase.CMsgIPAddress.Builder builderNewBuilder = SteammessagesBase.CMsgIPAddress.newBuilder();
            Integer loginID = details.getLoginID();
            Intrinsics.checkNotNull(loginID);
            builderNewBuilder.setV4(loginID.intValue());
            builder.setObfuscatedPrivateIp(builderNewBuilder.build());
        } else {
            InetAddress localIP = getClient().getLocalIP();
            if (localIP != null) {
                ((SteammessagesClientserverLogin.CMsgClientLogon.Builder) clientMsgProtobuf.getBody()).setObfuscatedPrivateIp(NetHelpers.obfuscatePrivateIP(NetHelpers.getMsgIPAddress(localIP)));
            }
        }
        if (((SteammessagesClientserverLogin.CMsgClientLogon.Builder) clientMsgProtobuf.getBody()).getObfuscatedPrivateIp().hasV4()) {
            ((SteammessagesClientserverLogin.CMsgClientLogon.Builder) clientMsgProtobuf.getBody()).setDeprecatedObfustucatedPrivateIp(((SteammessagesClientserverLogin.CMsgClientLogon.Builder) clientMsgProtobuf.getBody()).getObfuscatedPrivateIp().getV4());
        }
        clientMsgProtobuf.getProtoHeader().setClientSessionid(0);
        clientMsgProtobuf.getProtoHeader().setSteamid(steamID.convertToUInt64());
        ((SteammessagesClientserverLogin.CMsgClientLogon.Builder) clientMsgProtobuf.getBody()).setAccountName(details.getUsername());
        if (details.getPassword() != null) {
            ((SteammessagesClientserverLogin.CMsgClientLogon.Builder) clientMsgProtobuf.getBody()).setPassword(details.getPassword());
        }
        ((SteammessagesClientserverLogin.CMsgClientLogon.Builder) clientMsgProtobuf.getBody()).setShouldRememberPassword(details.getShouldRememberPassword());
        ((SteammessagesClientserverLogin.CMsgClientLogon.Builder) clientMsgProtobuf.getBody()).setProtocolVersion(MsgClientLogon.CurrentProtocol);
        ((SteammessagesClientserverLogin.CMsgClientLogon.Builder) clientMsgProtobuf.getBody()).setClientOsType(details.getClientOSType().code());
        ((SteammessagesClientserverLogin.CMsgClientLogon.Builder) clientMsgProtobuf.getBody()).setClientLanguage(details.getClientLanguage());
        SteammessagesClientserverLogin.CMsgClientLogon.Builder builder2 = (SteammessagesClientserverLogin.CMsgClientLogon.Builder) clientMsgProtobuf.getBody();
        Integer cellID = details.getCellID();
        builder2.setCellId(cellID != null ? cellID.intValue() : getClient().getConfiguration().getCellID());
        ((SteammessagesClientserverLogin.CMsgClientLogon.Builder) clientMsgProtobuf.getBody()).setSteam2TicketRequest(details.getRequestSteam2Ticket());
        ((SteammessagesClientserverLogin.CMsgClientLogon.Builder) clientMsgProtobuf.getBody()).setClientPackageVersion(1771);
        ((SteammessagesClientserverLogin.CMsgClientLogon.Builder) clientMsgProtobuf.getBody()).setSupportsRateLimitResponse(true);
        ((SteammessagesClientserverLogin.CMsgClientLogon.Builder) clientMsgProtobuf.getBody()).setMachineName(details.getMachineName());
        ((SteammessagesClientserverLogin.CMsgClientLogon.Builder) clientMsgProtobuf.getBody()).setMachineId(ByteString.copyFrom(HardwareUtils.getMachineID()));
        if (details.getChatMode() != ChatMode.DEFAULT) {
            ((SteammessagesClientserverLogin.CMsgClientLogon.Builder) clientMsgProtobuf.getBody()).setChatMode(details.getChatMode().getMode());
        }
        if (details.getUiMode() != EUIMode.Unknown) {
            ((SteammessagesClientserverLogin.CMsgClientLogon.Builder) clientMsgProtobuf.getBody()).setUiMode(details.getUiMode().code());
        }
        if (details.getGamingDeviceType() != EGamingDeviceType.Unknown) {
            ((SteammessagesClientserverLogin.CMsgClientLogon.Builder) clientMsgProtobuf.getBody()).setGamingDeviceType(details.getGamingDeviceType().code());
        }
        if (details.isSteamDeck()) {
            ((SteammessagesClientserverLogin.CMsgClientLogon.Builder) clientMsgProtobuf.getBody()).setIsSteamDeckDeprecated(true);
        }
        if (details.getAuthCode() != null) {
            ((SteammessagesClientserverLogin.CMsgClientLogon.Builder) clientMsgProtobuf.getBody()).setAuthCode(details.getAuthCode());
        }
        if (details.getTwoFactorCode() != null) {
            ((SteammessagesClientserverLogin.CMsgClientLogon.Builder) clientMsgProtobuf.getBody()).setTwoFactorCode(details.getTwoFactorCode());
        }
        if (details.getAccessToken() != null) {
            ((SteammessagesClientserverLogin.CMsgClientLogon.Builder) clientMsgProtobuf.getBody()).setAccessToken(details.getAccessToken());
        }
        getClient().send(clientMsgProtobuf);
    }

    public static /* synthetic */ void logOnAnonymous$default(SteamUser steamUser, AnonymousLogOnDetails anonymousLogOnDetails, int i, Object obj) {
        if ((i & 1) != 0) {
            anonymousLogOnDetails = new AnonymousLogOnDetails(null, null, null, 7, null);
        }
        steamUser.logOnAnonymous(anonymousLogOnDetails);
    }

    public final void logOnAnonymous(AnonymousLogOnDetails details) {
        Intrinsics.checkNotNullParameter(details, "details");
        if (!getClient().isConnected()) {
            getClient().postCallback(new LoggedOnCallback(EResult.NoConnection));
            return;
        }
        ClientMsgProtobuf clientMsgProtobuf = new ClientMsgProtobuf(SteammessagesClientserverLogin.CMsgClientLogon.class, EMsg.ClientLogon, 0, 4, null);
        EUniverse universe = getClient().getUniverse();
        Intrinsics.checkNotNullExpressionValue(universe, "getUniverse(...)");
        SteamID steamID = new SteamID(0L, 0L, universe, EAccountType.AnonUser);
        clientMsgProtobuf.getProtoHeader().setClientSessionid(0);
        clientMsgProtobuf.getProtoHeader().setSteamid(steamID.convertToUInt64());
        ((SteammessagesClientserverLogin.CMsgClientLogon.Builder) clientMsgProtobuf.getBody()).setProtocolVersion(MsgClientLogon.CurrentProtocol);
        ((SteammessagesClientserverLogin.CMsgClientLogon.Builder) clientMsgProtobuf.getBody()).setClientOsType(details.getClientOSType().code());
        ((SteammessagesClientserverLogin.CMsgClientLogon.Builder) clientMsgProtobuf.getBody()).setClientLanguage(details.getClientLanguage());
        SteammessagesClientserverLogin.CMsgClientLogon.Builder builder = (SteammessagesClientserverLogin.CMsgClientLogon.Builder) clientMsgProtobuf.getBody();
        Integer cellID = details.getCellID();
        builder.setCellId(cellID != null ? cellID.intValue() : getClient().getConfiguration().getCellID());
        ((SteammessagesClientserverLogin.CMsgClientLogon.Builder) clientMsgProtobuf.getBody()).setMachineId(ByteString.copyFrom(HardwareUtils.getMachineID()));
        getClient().send(clientMsgProtobuf);
    }

    public final void logOff() {
        setExpectDisconnection(true);
        getClient().send(new ClientMsgProtobuf(SteammessagesClientserverLogin.CMsgClientLogOff.class, EMsg.ClientLogOff, 0, 4, null));
        getClient().disconnect();
    }

    public static /* synthetic */ void kickPlayingSession$default(SteamUser steamUser, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        steamUser.kickPlayingSession(z);
    }

    public final void kickPlayingSession(boolean z) {
        ClientMsgProtobuf clientMsgProtobuf = new ClientMsgProtobuf(SteammessagesClientserver2.CMsgClientKickPlayingSession.class, EMsg.ClientKickPlayingSession, 0, 4, null);
        ((SteammessagesClientserver2.CMsgClientKickPlayingSession.Builder) clientMsgProtobuf.getBody()).setOnlyStopGame(z);
        getClient().send(clientMsgProtobuf);
    }

    /* JADX INFO: compiled from: SteamUser.kt */
    public static final class Companion {

        /* JADX INFO: compiled from: SteamUser.kt */
        public static final /* synthetic */ class WhenMappings {
            public static final /* synthetic */ int[] $EnumSwitchMapping$0;

            static {
                int[] iArr = new int[EMsg.values().length];
                try {
                    iArr[EMsg.ClientLogOnResponse.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[EMsg.ClientLoggedOff.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                try {
                    iArr[EMsg.ClientSessionToken.ordinal()] = 3;
                } catch (NoSuchFieldError unused3) {
                }
                try {
                    iArr[EMsg.ClientAccountInfo.ordinal()] = 4;
                } catch (NoSuchFieldError unused4) {
                }
                try {
                    iArr[EMsg.ClientEmailAddrInfo.ordinal()] = 5;
                } catch (NoSuchFieldError unused5) {
                }
                try {
                    iArr[EMsg.ClientWalletInfoUpdate.ordinal()] = 6;
                } catch (NoSuchFieldError unused6) {
                }
                try {
                    iArr[EMsg.ClientRequestWebAPIAuthenticateUserNonceResponse.ordinal()] = 7;
                } catch (NoSuchFieldError unused7) {
                }
                try {
                    iArr[EMsg.ClientVanityURLChangedNotification.ordinal()] = 8;
                } catch (NoSuchFieldError unused8) {
                }
                try {
                    iArr[EMsg.ClientMarketingMessageUpdate2.ordinal()] = 9;
                } catch (NoSuchFieldError unused9) {
                }
                try {
                    iArr[EMsg.ClientPlayingSessionState.ordinal()] = 10;
                } catch (NoSuchFieldError unused10) {
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
            switch (WhenMappings.$EnumSwitchMapping$0[iPacketMsg.getMsgType().ordinal()]) {
                case 1:
                    return new LoggedOnCallback(iPacketMsg);
                case 2:
                    return new LoggedOffCallback(iPacketMsg);
                case 3:
                    return new SessionTokenCallback(iPacketMsg);
                case 4:
                    return new AccountInfoCallback(iPacketMsg);
                case 5:
                    return new EmailAddrInfoCallback(iPacketMsg);
                case 6:
                    return new WalletInfoCallback(iPacketMsg);
                case 7:
                    return new WebAPIUserNonceCallback(iPacketMsg);
                case 8:
                    return new VanityURLChangedCallback(iPacketMsg);
                case 9:
                    return new MarketingMessageCallback(iPacketMsg);
                case 10:
                    return new PlayingSessionStateCallback(iPacketMsg);
                default:
                    return null;
            }
        }
    }
}
