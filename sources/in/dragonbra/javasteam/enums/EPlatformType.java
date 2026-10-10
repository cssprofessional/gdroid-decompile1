package in.dragonbra.javasteam.enums;

/* JADX INFO: loaded from: classes.dex */
public enum EPlatformType {
    Unknown(0),
    Win32(1),
    Win64(2),
    Linux64(3),
    OSX(4),
    PS3(5),
    Linux32(6),
    Android32(7),
    Android64(8),
    IOS32(9),
    IOS64(10),
    TVOS(11),
    EmbeddedClient(12),
    Browser(13);

    private final int code;

    EPlatformType(int i) {
        this.code = i;
    }

    public int code() {
        return this.code;
    }

    public static EPlatformType from(int i) {
        for (EPlatformType ePlatformType : values()) {
            if (ePlatformType.code == i) {
                return ePlatformType;
            }
        }
        return null;
    }
}
