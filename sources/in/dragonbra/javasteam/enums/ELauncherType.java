package in.dragonbra.javasteam.enums;

/* JADX INFO: loaded from: classes.dex */
public enum ELauncherType {
    Default(0),
    PerfectWorld(1),
    Nexon(2),
    CmdLine(3),
    CSGO(4),
    ClientUI(5),
    Headless(6),
    SteamChina(7),
    SingleApp(8),
    GameServer(9);

    private final int code;

    ELauncherType(int i) {
        this.code = i;
    }

    public int code() {
        return this.code;
    }

    public static ELauncherType from(int i) {
        for (ELauncherType eLauncherType : values()) {
            if (eLauncherType.code == i) {
                return eLauncherType;
            }
        }
        return null;
    }
}
