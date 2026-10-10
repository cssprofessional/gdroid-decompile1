package in.dragonbra.javasteam.steam.handlers.steamuserstats.callback;

import com.google.protobuf.AbstractMessage;
import com.google.protobuf.ByteString;
import in.dragonbra.javasteam.base.ClientMsgProtobuf;
import in.dragonbra.javasteam.base.IPacketMsg;
import in.dragonbra.javasteam.enums.EResult;
import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUserstats;
import in.dragonbra.javasteam.steam.handlers.steamuserstats.AchievementBlocks;
import in.dragonbra.javasteam.steam.handlers.steamuserstats.Stats;
import in.dragonbra.javasteam.steam.steamclient.callbackmgr.CallbackMsg;
import in.dragonbra.javasteam.types.KeyValue;
import in.dragonbra.javasteam.util.stream.MemoryStream;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.io.CloseableKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: UserStatsCallback.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class UserStatsCallback extends CallbackMsg {
    private final List<AchievementBlocks> achievementBlocks;
    private final int crcStats;
    private final long gameId;
    private final EResult result;
    private final ByteString schema;
    private final KeyValue schemaKeyValues;
    private final List<Stats> stats;

    public final List<AchievementBlocks> getExpandedAchievements() {
        return getExpandedAchievements$default(this, null, 1, null);
    }

    public UserStatsCallback(IPacketMsg packetMsg) {
        Intrinsics.checkNotNullParameter(packetMsg, "packetMsg");
        this.schemaKeyValues = new KeyValue(null, null, 3, null);
        ClientMsgProtobuf clientMsgProtobuf = new ClientMsgProtobuf((Class<? extends AbstractMessage>) SteammessagesClientserverUserstats.CMsgClientGetUserStatsResponse.class, packetMsg);
        SteammessagesClientserverUserstats.CMsgClientGetUserStatsResponse.Builder builder = (SteammessagesClientserverUserstats.CMsgClientGetUserStatsResponse.Builder) clientMsgProtobuf.getBody();
        setJobID(clientMsgProtobuf.getTargetJobID());
        EResult eResultFrom = EResult.from(builder.getEresult());
        Intrinsics.checkNotNullExpressionValue(eResultFrom, "from(...)");
        this.result = eResultFrom;
        this.gameId = builder.getGameId();
        this.crcStats = builder.getCrcStats();
        ByteString schema = builder.getSchema();
        Intrinsics.checkNotNullExpressionValue(schema, "getSchema(...)");
        this.schema = schema;
        List<SteammessagesClientserverUserstats.CMsgClientGetUserStatsResponse.Stats> statsList = builder.getStatsList();
        Intrinsics.checkNotNullExpressionValue(statsList, "getStatsList(...)");
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(statsList, 10));
        for (SteammessagesClientserverUserstats.CMsgClientGetUserStatsResponse.Stats stats : statsList) {
            arrayList.add(new Stats(stats.getStatId(), stats.getStatValue()));
        }
        this.stats = arrayList;
        try {
            if (this.schema.size() > 0) {
                MemoryStream memoryStream = new MemoryStream(this.schema.toByteArray());
                try {
                    this.schemaKeyValues.tryReadAsBinary(memoryStream);
                    CloseableKt.closeFinally(memoryStream, null);
                } finally {
                }
            }
        } catch (Exception unused) {
        }
        List<SteammessagesClientserverUserstats.CMsgClientGetUserStatsResponse.Achievement_Blocks> achievementBlocksList = builder.getAchievementBlocksList();
        Intrinsics.checkNotNullExpressionValue(achievementBlocksList, "getAchievementBlocksList(...)");
        ArrayList arrayList2 = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(achievementBlocksList, 10));
        for (SteammessagesClientserverUserstats.CMsgClientGetUserStatsResponse.Achievement_Blocks achievement_Blocks : achievementBlocksList) {
            int achievementId = achievement_Blocks.getAchievementId();
            List<Integer> unlockTimeList = achievement_Blocks.getUnlockTimeList();
            Intrinsics.checkNotNullExpressionValue(unlockTimeList, "getUnlockTimeList(...)");
            arrayList2.add(new AchievementBlocks(achievementId, unlockTimeList, null, null, null, null, null, false));
        }
        this.achievementBlocks = arrayList2;
    }

    public final EResult getResult() {
        return this.result;
    }

    public final long getGameId() {
        return this.gameId;
    }

    public final int getCrcStats() {
        return this.crcStats;
    }

    public final ByteString getSchema() {
        return this.schema;
    }

    public final List<Stats> getStats() {
        return this.stats;
    }

    public final List<AchievementBlocks> getAchievementBlocks() {
        return this.achievementBlocks;
    }

    public final KeyValue getSchemaKeyValues() {
        return this.schemaKeyValues;
    }

    public static /* synthetic */ List getExpandedAchievements$default(UserStatsCallback userStatsCallback, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = "english";
        }
        return userStatsCallback.getExpandedAchievements(str);
    }

    public final List<AchievementBlocks> getExpandedAchievements(String language) {
        Intrinsics.checkNotNullParameter(language, "language");
        ArrayList arrayList = new ArrayList();
        try {
            KeyValue keyValue = this.schemaKeyValues.get("stats");
            if (Intrinsics.areEqual(keyValue, KeyValue.INVALID)) {
                return this.achievementBlocks;
            }
            for (AchievementBlocks achievementBlocks : this.achievementBlocks) {
                KeyValue keyValue2 = keyValue.get(String.valueOf(achievementBlocks.getAchievementId())).get("bits");
                if (!Intrinsics.areEqual(keyValue2, KeyValue.INVALID)) {
                    for (KeyValue keyValue3 : keyValue2.getChildren()) {
                        int iIntValue = 0;
                        int iAsInteger$default = KeyValue.asInteger$default(keyValue3.get("bit"), 0, 1, null);
                        KeyValue keyValue4 = keyValue3.get("display");
                        String value = keyValue3.get("name").getValue();
                        String value2 = keyValue4.get("name").get(language).getValue();
                        String value3 = keyValue4.get("desc").get(language).getValue();
                        String value4 = keyValue4.get("icon").getValue();
                        String value5 = keyValue4.get("icon_gray").getValue();
                        boolean zAreEqual = Intrinsics.areEqual(keyValue4.get("hidden").getValue(), "1");
                        if (iAsInteger$default < achievementBlocks.getUnlockTime().size()) {
                            iIntValue = achievementBlocks.getUnlockTime().get(iAsInteger$default).intValue();
                        }
                        arrayList.add(new AchievementBlocks((achievementBlocks.getAchievementId() * 100) + iAsInteger$default, CollectionsKt__CollectionsJVMKt.listOf(Integer.valueOf(iIntValue)), value, value2, value3, value4, value5, zAreEqual));
                    }
                } else {
                    arrayList.add(achievementBlocks);
                }
            }
            return arrayList;
        } catch (Exception unused) {
            return this.achievementBlocks;
        }
    }
}
