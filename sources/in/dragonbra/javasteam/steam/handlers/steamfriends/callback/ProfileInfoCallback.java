package in.dragonbra.javasteam.steam.handlers.steamfriends.callback;

import com.google.protobuf.AbstractMessage;
import in.dragonbra.javasteam.base.ClientMsgProtobuf;
import in.dragonbra.javasteam.base.IPacketMsg;
import in.dragonbra.javasteam.enums.EResult;
import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends;
import in.dragonbra.javasteam.steam.steamclient.callbackmgr.CallbackMsg;
import in.dragonbra.javasteam.types.SteamID;
import java.util.Date;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ProfileInfoCallback.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class ProfileInfoCallback extends CallbackMsg {
    private final String cityName;
    private final String countryName;
    private final String headline;
    private final String realName;
    private final EResult result;
    private final String stateName;
    private final SteamID steamID;
    private final String summary;
    private final Date timeCreated;

    public final EResult getResult() {
        return this.result;
    }

    public final SteamID getSteamID() {
        return this.steamID;
    }

    public final Date getTimeCreated() {
        return this.timeCreated;
    }

    public final String getRealName() {
        return this.realName;
    }

    public final String getCityName() {
        return this.cityName;
    }

    public final String getStateName() {
        return this.stateName;
    }

    public final String getCountryName() {
        return this.countryName;
    }

    public final String getHeadline() {
        return this.headline;
    }

    public final String getSummary() {
        return this.summary;
    }

    public ProfileInfoCallback(IPacketMsg packetMsg) {
        Intrinsics.checkNotNullParameter(packetMsg, "packetMsg");
        ClientMsgProtobuf clientMsgProtobuf = new ClientMsgProtobuf((Class<? extends AbstractMessage>) SteammessagesClientserverFriends.CMsgClientFriendProfileInfoResponse.class, packetMsg);
        SteammessagesClientserverFriends.CMsgClientFriendProfileInfoResponse.Builder builder = (SteammessagesClientserverFriends.CMsgClientFriendProfileInfoResponse.Builder) clientMsgProtobuf.getBody();
        setJobID(clientMsgProtobuf.getTargetJobID());
        EResult eResultFrom = EResult.from(builder.getEresult());
        Intrinsics.checkNotNullExpressionValue(eResultFrom, "from(...)");
        this.result = eResultFrom;
        this.steamID = new SteamID(builder.getSteamidFriend());
        this.timeCreated = new Date(((long) builder.getTimeCreated()) * 1000);
        String realName = builder.getRealName();
        Intrinsics.checkNotNullExpressionValue(realName, "getRealName(...)");
        this.realName = realName;
        String cityName = builder.getCityName();
        Intrinsics.checkNotNullExpressionValue(cityName, "getCityName(...)");
        this.cityName = cityName;
        String stateName = builder.getStateName();
        Intrinsics.checkNotNullExpressionValue(stateName, "getStateName(...)");
        this.stateName = stateName;
        String countryName = builder.getCountryName();
        Intrinsics.checkNotNullExpressionValue(countryName, "getCountryName(...)");
        this.countryName = countryName;
        String headline = builder.getHeadline();
        Intrinsics.checkNotNullExpressionValue(headline, "getHeadline(...)");
        this.headline = headline;
        String summary = builder.getSummary();
        Intrinsics.checkNotNullExpressionValue(summary, "getSummary(...)");
        this.summary = summary;
    }

    public ProfileInfoCallback(EResult result, SteamID steamID, Date timeCreated, String realName, String cityName, String stateName, String countryName, String headline, String summary) {
        Intrinsics.checkNotNullParameter(result, "result");
        Intrinsics.checkNotNullParameter(steamID, "steamID");
        Intrinsics.checkNotNullParameter(timeCreated, "timeCreated");
        Intrinsics.checkNotNullParameter(realName, "realName");
        Intrinsics.checkNotNullParameter(cityName, "cityName");
        Intrinsics.checkNotNullParameter(stateName, "stateName");
        Intrinsics.checkNotNullParameter(countryName, "countryName");
        Intrinsics.checkNotNullParameter(headline, "headline");
        Intrinsics.checkNotNullParameter(summary, "summary");
        this.result = result;
        this.steamID = steamID;
        this.timeCreated = timeCreated;
        this.realName = realName;
        this.cityName = cityName;
        this.stateName = stateName;
        this.countryName = countryName;
        this.headline = headline;
        this.summary = summary;
    }
}
