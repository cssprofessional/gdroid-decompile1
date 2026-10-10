package in.dragonbra.javasteam.enums;

/* JADX INFO: loaded from: classes.dex */
public enum ELeaderboardUploadScoreMethod {
    None(0),
    KeepBest(1),
    ForceUpdate(2);

    private final int code;

    ELeaderboardUploadScoreMethod(int i) {
        this.code = i;
    }

    public int code() {
        return this.code;
    }

    public static ELeaderboardUploadScoreMethod from(int i) {
        for (ELeaderboardUploadScoreMethod eLeaderboardUploadScoreMethod : values()) {
            if (eLeaderboardUploadScoreMethod.code == i) {
                return eLeaderboardUploadScoreMethod;
            }
        }
        return null;
    }
}
