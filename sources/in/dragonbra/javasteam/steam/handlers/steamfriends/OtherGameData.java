package in.dragonbra.javasteam.steam.handlers.steamfriends;

import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: OtherGameData.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class OtherGameData {
    private final long gameId;
    private final List<KV> richPresence;

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ OtherGameData copy$default(OtherGameData otherGameData, long j, List list, int i, Object obj) {
        if ((i & 1) != 0) {
            j = otherGameData.gameId;
        }
        if ((i & 2) != 0) {
            list = otherGameData.richPresence;
        }
        return otherGameData.copy(j, list);
    }

    public final long component1() {
        return this.gameId;
    }

    public final List<KV> component2() {
        return this.richPresence;
    }

    public final OtherGameData copy(long j, List<KV> richPresence) {
        Intrinsics.checkNotNullParameter(richPresence, "richPresence");
        return new OtherGameData(j, richPresence);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof OtherGameData)) {
            return false;
        }
        OtherGameData otherGameData = (OtherGameData) obj;
        return this.gameId == otherGameData.gameId && Intrinsics.areEqual(this.richPresence, otherGameData.richPresence);
    }

    public int hashCode() {
        return (Long.hashCode(this.gameId) * 31) + this.richPresence.hashCode();
    }

    public String toString() {
        return "OtherGameData(gameId=" + this.gameId + ", richPresence=" + this.richPresence + ")";
    }

    public OtherGameData(long j, List<KV> richPresence) {
        Intrinsics.checkNotNullParameter(richPresence, "richPresence");
        this.gameId = j;
        this.richPresence = richPresence;
    }

    public final long getGameId() {
        return this.gameId;
    }

    public final List<KV> getRichPresence() {
        return this.richPresence;
    }
}
