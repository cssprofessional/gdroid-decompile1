package in.dragonbra.javasteam.enums;

/* JADX INFO: loaded from: classes.dex */
public enum ENewsUpdateType {
    AppNews(0),
    SteamAds(1),
    SteamNews(2),
    CDDBUpdate(3),
    ClientUpdate(4);

    private final int code;

    ENewsUpdateType(int i) {
        this.code = i;
    }

    public int code() {
        return this.code;
    }

    public static ENewsUpdateType from(int i) {
        for (ENewsUpdateType eNewsUpdateType : values()) {
            if (eNewsUpdateType.code == i) {
                return eNewsUpdateType;
            }
        }
        return null;
    }
}
