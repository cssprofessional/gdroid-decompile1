package in.dragonbra.javasteam.enums;

/* JADX INFO: loaded from: classes.dex */
public enum ESteamRealm {
    Unknown(0),
    SteamGlobal(1),
    SteamChina(2);

    private final int code;

    ESteamRealm(int i) {
        this.code = i;
    }

    public int code() {
        return this.code;
    }

    public static ESteamRealm from(int i) {
        for (ESteamRealm eSteamRealm : values()) {
            if (eSteamRealm.code == i) {
                return eSteamRealm;
            }
        }
        return null;
    }
}
