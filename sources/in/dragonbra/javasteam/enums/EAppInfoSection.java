package in.dragonbra.javasteam.enums;

/* JADX INFO: loaded from: classes.dex */
public enum EAppInfoSection {
    Unknown(0),
    All(1),
    First(2),
    Common(2),
    Extended(3),
    Config(4),
    Stats(5),
    Install(6),
    Depots(7),
    UFS(10),
    OGG(11),
    Policies(13),
    SysReqs(14),
    Community(15),
    Store(16),
    Localization(17),
    Broadcastgamedata(18),
    Computed(19),
    Albummetadata(20);

    private final int code;

    EAppInfoSection(int i) {
        this.code = i;
    }

    public int code() {
        return this.code;
    }

    public static EAppInfoSection from(int i) {
        for (EAppInfoSection eAppInfoSection : values()) {
            if (eAppInfoSection.code == i) {
                return eAppInfoSection;
            }
        }
        return null;
    }
}
