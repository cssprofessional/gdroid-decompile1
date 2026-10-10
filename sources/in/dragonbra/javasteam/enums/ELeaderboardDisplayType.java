package in.dragonbra.javasteam.enums;

/* JADX INFO: loaded from: classes.dex */
public enum ELeaderboardDisplayType {
    None(0),
    Numeric(1),
    TimeSeconds(2),
    TimeMilliSeconds(3);

    private final int code;

    ELeaderboardDisplayType(int i) {
        this.code = i;
    }

    public int code() {
        return this.code;
    }

    public static ELeaderboardDisplayType from(int i) {
        for (ELeaderboardDisplayType eLeaderboardDisplayType : values()) {
            if (eLeaderboardDisplayType.code == i) {
                return eLeaderboardDisplayType;
            }
        }
        return null;
    }
}
