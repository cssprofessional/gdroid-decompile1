package in.dragonbra.javasteam.steam.handlers.steamuser.callback;

import com.google.protobuf.AbstractMessage;
import com.google.protobuf.InvalidProtocolBufferException;
import in.dragonbra.javasteam.base.ClientMsg;
import in.dragonbra.javasteam.base.ClientMsgProtobuf;
import in.dragonbra.javasteam.base.IPacketMsg;
import in.dragonbra.javasteam.enums.EAccountFlags;
import in.dragonbra.javasteam.enums.EResult;
import in.dragonbra.javasteam.generated.MsgClientLogOnResponse;
import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesBase;
import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin;
import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalObjects;
import in.dragonbra.javasteam.steam.steamclient.callbackmgr.CallbackMsg;
import in.dragonbra.javasteam.types.SteamID;
import in.dragonbra.javasteam.util.NetHelpers;
import in.dragonbra.javasteam.util.log.LogManager;
import in.dragonbra.javasteam.util.log.Logger;
import java.net.InetAddress;
import java.util.Date;
import java.util.EnumSet;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: LoggedOnCallback.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class LoggedOnCallback extends CallbackMsg {
    public static final Companion Companion = new Companion(null);
    private static final Logger logger = LogManager.getLogger(LoggedOnCallback.class);
    private EnumSet<EAccountFlags> accountFlags;
    private int cellID;
    private int cellIDPingThreshold;
    private long clientInstanceId;
    private SteamID clientSteamID;
    private String emailDomain;
    private EResult extendedResult;
    private long familyGroupId;
    private int inGameSecsPerHeartbeat;
    private String ipCountryCode;
    private int numDisconnectsToMigrate;
    private int numLoginFailuresToMigrate;
    private int outOfGameSecsPerHeartbeat;
    private SteammessagesParentalObjects.ParentalSettings parentalSettings;
    private InetAddress publicIP;
    private EResult result;
    private Date serverTime;
    private byte[] steam2Ticket;
    private String vanityURL;

    /* JADX INFO: compiled from: LoggedOnCallback.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    public final EResult getResult() {
        return this.result;
    }

    public final EResult getExtendedResult() {
        return this.extendedResult;
    }

    public final void setExtendedResult(EResult eResult) {
        this.extendedResult = eResult;
    }

    public final int getOutOfGameSecsPerHeartbeat() {
        return this.outOfGameSecsPerHeartbeat;
    }

    public final int getInGameSecsPerHeartbeat() {
        return this.inGameSecsPerHeartbeat;
    }

    public final InetAddress getPublicIP() {
        return this.publicIP;
    }

    public final Date getServerTime() {
        return this.serverTime;
    }

    public final EnumSet<EAccountFlags> getAccountFlags() {
        return this.accountFlags;
    }

    public final void setAccountFlags(EnumSet<EAccountFlags> enumSet) {
        this.accountFlags = enumSet;
    }

    public final SteamID getClientSteamID() {
        return this.clientSteamID;
    }

    public final void setClientSteamID(SteamID steamID) {
        this.clientSteamID = steamID;
    }

    public final String getEmailDomain() {
        return this.emailDomain;
    }

    public final int getCellID() {
        return this.cellID;
    }

    public final int getCellIDPingThreshold() {
        return this.cellIDPingThreshold;
    }

    public final byte[] getSteam2Ticket() {
        return this.steam2Ticket;
    }

    public final String getIpCountryCode() {
        return this.ipCountryCode;
    }

    public final String getVanityURL() {
        return this.vanityURL;
    }

    public final int getNumLoginFailuresToMigrate() {
        return this.numLoginFailuresToMigrate;
    }

    public final int getNumDisconnectsToMigrate() {
        return this.numDisconnectsToMigrate;
    }

    public final SteammessagesParentalObjects.ParentalSettings getParentalSettings() {
        return this.parentalSettings;
    }

    public final void setParentalSettings(SteammessagesParentalObjects.ParentalSettings parentalSettings) {
        this.parentalSettings = parentalSettings;
    }

    public final long getFamilyGroupId() {
        return this.familyGroupId;
    }

    public final long getClientInstanceId() {
        return this.clientInstanceId;
    }

    public LoggedOnCallback(IPacketMsg packetMsg) {
        Intrinsics.checkNotNullParameter(packetMsg, "packetMsg");
        this.result = EResult.Invalid;
        if (!packetMsg.isProto()) {
            handleNonProtoLogon(packetMsg);
            return;
        }
        SteammessagesClientserverLogin.CMsgClientLogonResponse.Builder builder = (SteammessagesClientserverLogin.CMsgClientLogonResponse.Builder) new ClientMsgProtobuf((Class<? extends AbstractMessage>) SteammessagesClientserverLogin.CMsgClientLogonResponse.class, packetMsg).getBody();
        EResult eResultFrom = EResult.from(builder.getEresult());
        Intrinsics.checkNotNullExpressionValue(eResultFrom, "from(...)");
        this.result = eResultFrom;
        this.extendedResult = EResult.from(builder.getEresultExtended());
        this.outOfGameSecsPerHeartbeat = builder.getLegacyOutOfGameHeartbeatSeconds();
        this.inGameSecsPerHeartbeat = builder.getHeartbeatSeconds();
        SteammessagesBase.CMsgIPAddress publicIp = builder.getPublicIp();
        Intrinsics.checkNotNullExpressionValue(publicIp, "getPublicIp(...)");
        this.publicIP = NetHelpers.getIPAddress(publicIp);
        this.serverTime = new Date(((long) builder.getRtime32ServerTime()) * 1000);
        this.accountFlags = EAccountFlags.from(builder.getAccountFlags());
        this.clientSteamID = new SteamID(builder.getClientSuppliedSteamid());
        this.emailDomain = builder.getEmailDomain();
        this.cellID = builder.getCellId();
        this.cellIDPingThreshold = builder.getCellIdPingThreshold();
        this.steam2Ticket = builder.getSteam2Ticket().toByteArray();
        this.ipCountryCode = builder.getIpCountryCode();
        this.vanityURL = builder.getVanityUrl();
        this.numLoginFailuresToMigrate = builder.getCountLoginfailuresToMigrate();
        this.numDisconnectsToMigrate = builder.getCountDisconnectsToMigrate();
        if (builder.getParentalSettings() != null) {
            try {
                this.parentalSettings = SteammessagesParentalObjects.ParentalSettings.parseFrom(builder.getParentalSettings());
            } catch (InvalidProtocolBufferException e) {
                logger.error("Failed to parse parental settings", e);
            }
        }
        this.familyGroupId = builder.getFamilyGroupId();
        this.clientInstanceId = builder.getClientInstanceId();
    }

    public LoggedOnCallback(EResult result) {
        Intrinsics.checkNotNullParameter(result, "result");
        EResult eResult = EResult.Invalid;
        this.result = result;
    }

    private final void handleNonProtoLogon(IPacketMsg iPacketMsg) {
        MsgClientLogOnResponse msgClientLogOnResponse = (MsgClientLogOnResponse) new ClientMsg(MsgClientLogOnResponse.class, iPacketMsg).getBody();
        EResult result = msgClientLogOnResponse.getResult();
        Intrinsics.checkNotNullExpressionValue(result, "getResult(...)");
        this.result = result;
        this.outOfGameSecsPerHeartbeat = msgClientLogOnResponse.getOutOfGameHeartbeatRateSec();
        this.inGameSecsPerHeartbeat = msgClientLogOnResponse.getInGameHeartbeatRateSec();
        this.publicIP = NetHelpers.getIPAddress(msgClientLogOnResponse.getIpPublic());
        this.serverTime = new Date(((long) msgClientLogOnResponse.getServerRealTime()) * 1000);
        this.clientSteamID = msgClientLogOnResponse.getClientSuppliedSteamId();
    }
}
