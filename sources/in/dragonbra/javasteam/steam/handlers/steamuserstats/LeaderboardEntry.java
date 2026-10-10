package in.dragonbra.javasteam.steam.handlers.steamuserstats;

import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLbs;
import in.dragonbra.javasteam.types.SteamID;
import in.dragonbra.javasteam.types.UGCHandle;
import in.dragonbra.javasteam.util.log.LogManager;
import in.dragonbra.javasteam.util.log.Logger;
import in.dragonbra.javasteam.util.stream.BinaryReader;
import in.dragonbra.javasteam.util.stream.MemoryStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: LeaderboardEntry.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class LeaderboardEntry {
    public static final Companion Companion = new Companion(null);
    private static final Logger logger = LogManager.getLogger(LeaderboardEntry.class);
    private final List<Integer> details;
    private final int globalRank;
    private final int score;
    private final SteamID steamID;
    private final UGCHandle ugcId;

    public LeaderboardEntry(SteammessagesClientserverLbs.CMsgClientLBSGetLBEntriesResponse.Entry entry) {
        Intrinsics.checkNotNullParameter(entry, "entry");
        this.steamID = new SteamID(entry.getSteamIdUser());
        this.globalRank = entry.getGlobalRank();
        this.score = entry.getScore();
        this.ugcId = new UGCHandle(entry.getUgcId());
        ArrayList arrayList = new ArrayList();
        if (entry.getDetails() != null) {
            MemoryStream memoryStream = new MemoryStream(entry.getDetails().toByteArray());
            BinaryReader binaryReader = new BinaryReader(memoryStream);
            while (memoryStream.getLength() - memoryStream.getPosition() > 4) {
                try {
                    arrayList.add(Integer.valueOf(binaryReader.readInt()));
                } catch (IOException e) {
                    logger.error("failed to read details", e);
                }
            }
        }
        this.details = CollectionsKt___CollectionsKt.toList(arrayList);
    }

    /* JADX INFO: compiled from: LeaderboardEntry.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    public final SteamID getSteamID() {
        return this.steamID;
    }

    public final int getGlobalRank() {
        return this.globalRank;
    }

    public final int getScore() {
        return this.score;
    }

    public final UGCHandle getUgcId() {
        return this.ugcId;
    }

    public final List<Integer> getDetails() {
        return this.details;
    }
}
