package in.dragonbra.javasteam.steam.handlers.steamfriends;

/* JADX INFO: compiled from: ClanData.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class ClanData {
    private final long chatGroupID;
    private final int oggAppId;

    public static /* synthetic */ ClanData copy$default(ClanData clanData, int i, long j, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = clanData.oggAppId;
        }
        if ((i2 & 2) != 0) {
            j = clanData.chatGroupID;
        }
        return clanData.copy(i, j);
    }

    public final int component1() {
        return this.oggAppId;
    }

    public final long component2() {
        return this.chatGroupID;
    }

    public final ClanData copy(int i, long j) {
        return new ClanData(i, j);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ClanData)) {
            return false;
        }
        ClanData clanData = (ClanData) obj;
        return this.oggAppId == clanData.oggAppId && this.chatGroupID == clanData.chatGroupID;
    }

    public int hashCode() {
        return (Integer.hashCode(this.oggAppId) * 31) + Long.hashCode(this.chatGroupID);
    }

    public String toString() {
        return "ClanData(oggAppId=" + this.oggAppId + ", chatGroupID=" + this.chatGroupID + ")";
    }

    public ClanData(int i, long j) {
        this.oggAppId = i;
        this.chatGroupID = j;
    }

    public final long getChatGroupID() {
        return this.chatGroupID;
    }

    public final int getOggAppId() {
        return this.oggAppId;
    }
}
