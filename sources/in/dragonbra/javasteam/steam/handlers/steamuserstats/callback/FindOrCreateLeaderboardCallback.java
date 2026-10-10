package in.dragonbra.javasteam.steam.handlers.steamuserstats.callback;

import com.google.protobuf.AbstractMessage;
import in.dragonbra.javasteam.base.ClientMsgProtobuf;
import in.dragonbra.javasteam.base.IPacketMsg;
import in.dragonbra.javasteam.enums.ELeaderboardDisplayType;
import in.dragonbra.javasteam.enums.ELeaderboardSortMethod;
import in.dragonbra.javasteam.enums.EResult;
import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLbs;
import in.dragonbra.javasteam.steam.steamclient.callbackmgr.CallbackMsg;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: FindOrCreateLeaderboardCallback.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class FindOrCreateLeaderboardCallback extends CallbackMsg {
    private final ELeaderboardDisplayType displayType;
    private final int entryCount;
    private final int id;
    private final EResult result;
    private final ELeaderboardSortMethod sortMethod;

    public FindOrCreateLeaderboardCallback(IPacketMsg packetMsg) {
        Intrinsics.checkNotNullParameter(packetMsg, "packetMsg");
        ClientMsgProtobuf clientMsgProtobuf = new ClientMsgProtobuf((Class<? extends AbstractMessage>) SteammessagesClientserverLbs.CMsgClientLBSFindOrCreateLBResponse.class, packetMsg);
        SteammessagesClientserverLbs.CMsgClientLBSFindOrCreateLBResponse.Builder builder = (SteammessagesClientserverLbs.CMsgClientLBSFindOrCreateLBResponse.Builder) clientMsgProtobuf.getBody();
        setJobID(clientMsgProtobuf.getTargetJobID());
        EResult eResultFrom = EResult.from(builder.getEresult());
        Intrinsics.checkNotNullExpressionValue(eResultFrom, "from(...)");
        this.result = eResultFrom;
        this.id = builder.getLeaderboardId();
        this.entryCount = builder.getLeaderboardEntryCount();
        this.sortMethod = ELeaderboardSortMethod.from(builder.getLeaderboardSortMethod());
        this.displayType = ELeaderboardDisplayType.from(builder.getLeaderboardDisplayType());
    }

    public final EResult getResult() {
        return this.result;
    }

    public final int getId() {
        return this.id;
    }

    public final int getEntryCount() {
        return this.entryCount;
    }

    public final ELeaderboardSortMethod getSortMethod() {
        return this.sortMethod;
    }

    public final ELeaderboardDisplayType getDisplayType() {
        return this.displayType;
    }
}
