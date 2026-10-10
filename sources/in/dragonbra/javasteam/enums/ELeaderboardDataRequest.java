package in.dragonbra.javasteam.enums;

/* JADX INFO: loaded from: classes.dex */
public enum ELeaderboardDataRequest {
    Global(0),
    GlobalAroundUser(1),
    Friends(2),
    Users(3);

    private final int code;

    ELeaderboardDataRequest(int i) {
        this.code = i;
    }

    public int code() {
        return this.code;
    }

    public static ELeaderboardDataRequest from(int i) {
        for (ELeaderboardDataRequest eLeaderboardDataRequest : values()) {
            if (eLeaderboardDataRequest.code == i) {
                return eLeaderboardDataRequest;
            }
        }
        return null;
    }
}
