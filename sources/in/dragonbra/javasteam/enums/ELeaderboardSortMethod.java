package in.dragonbra.javasteam.enums;

/* JADX INFO: loaded from: classes.dex */
public enum ELeaderboardSortMethod {
    None(0),
    Ascending(1),
    Descending(2);

    private final int code;

    ELeaderboardSortMethod(int i) {
        this.code = i;
    }

    public int code() {
        return this.code;
    }

    public static ELeaderboardSortMethod from(int i) {
        for (ELeaderboardSortMethod eLeaderboardSortMethod : values()) {
            if (eLeaderboardSortMethod.code == i) {
                return eLeaderboardSortMethod;
            }
        }
        return null;
    }
}
