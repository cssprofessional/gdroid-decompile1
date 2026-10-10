package in.dragonbra.javasteam.enums;

/* JADX INFO: loaded from: classes.dex */
public enum EWorkshopEnumerationType {
    RankedByVote(0),
    Recent(1),
    Trending(2),
    FavoriteOfFriends(3),
    VotedByFriends(4),
    ContentByFriends(5),
    RecentFromFollowedUsers(6);

    private final int code;

    EWorkshopEnumerationType(int i) {
        this.code = i;
    }

    public int code() {
        return this.code;
    }

    public static EWorkshopEnumerationType from(int i) {
        for (EWorkshopEnumerationType eWorkshopEnumerationType : values()) {
            if (eWorkshopEnumerationType.code == i) {
                return eWorkshopEnumerationType;
            }
        }
        return null;
    }
}
