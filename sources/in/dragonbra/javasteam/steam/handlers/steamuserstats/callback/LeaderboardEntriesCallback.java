package in.dragonbra.javasteam.steam.handlers.steamuserstats.callback;

import com.google.protobuf.AbstractMessage;
import in.dragonbra.javasteam.base.ClientMsgProtobuf;
import in.dragonbra.javasteam.base.IPacketMsg;
import in.dragonbra.javasteam.enums.EResult;
import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLbs;
import in.dragonbra.javasteam.steam.handlers.steamuserstats.LeaderboardEntry;
import in.dragonbra.javasteam.steam.steamclient.callbackmgr.CallbackMsg;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: LeaderboardEntriesCallback.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class LeaderboardEntriesCallback extends CallbackMsg {
    private final List<LeaderboardEntry> entries;
    private final int entryCount;
    private final EResult result;

    public LeaderboardEntriesCallback(IPacketMsg packetMsg) {
        Intrinsics.checkNotNullParameter(packetMsg, "packetMsg");
        ClientMsgProtobuf clientMsgProtobuf = new ClientMsgProtobuf((Class<? extends AbstractMessage>) SteammessagesClientserverLbs.CMsgClientLBSGetLBEntriesResponse.class, packetMsg);
        SteammessagesClientserverLbs.CMsgClientLBSGetLBEntriesResponse.Builder builder = (SteammessagesClientserverLbs.CMsgClientLBSGetLBEntriesResponse.Builder) clientMsgProtobuf.getBody();
        setJobID(clientMsgProtobuf.getTargetJobID());
        EResult eResultFrom = EResult.from(builder.getEresult());
        Intrinsics.checkNotNullExpressionValue(eResultFrom, "from(...)");
        this.result = eResultFrom;
        this.entryCount = builder.getLeaderboardEntryCount();
        List<SteammessagesClientserverLbs.CMsgClientLBSGetLBEntriesResponse.Entry> entriesList = builder.getEntriesList();
        Intrinsics.checkNotNullExpressionValue(entriesList, "getEntriesList(...)");
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(entriesList, 10));
        for (SteammessagesClientserverLbs.CMsgClientLBSGetLBEntriesResponse.Entry entry : entriesList) {
            Intrinsics.checkNotNull(entry);
            arrayList.add(new LeaderboardEntry(entry));
        }
        this.entries = arrayList;
    }

    public final EResult getResult() {
        return this.result;
    }

    public final int getEntryCount() {
        return this.entryCount;
    }

    public final List<LeaderboardEntry> getEntries() {
        return this.entries;
    }
}
