package in.dragonbra.javasteam.enums;

/* JADX INFO: loaded from: classes.dex */
public enum EClanRank {
    None(0),
    Owner(1),
    Officer(2),
    Member(3),
    Moderator(4);

    private final int code;

    EClanRank(int i) {
        this.code = i;
    }

    public int code() {
        return this.code;
    }

    public static EClanRank from(int i) {
        for (EClanRank eClanRank : values()) {
            if (eClanRank.code == i) {
                return eClanRank;
            }
        }
        return null;
    }
}
