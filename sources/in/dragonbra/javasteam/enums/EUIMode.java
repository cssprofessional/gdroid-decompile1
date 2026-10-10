package in.dragonbra.javasteam.enums;

/* JADX INFO: loaded from: classes.dex */
public enum EUIMode {
    Unknown(-1),
    VGUI(0),
    Tenfoot(1),
    Mobile(2),
    Web(3),
    GamePadUI(4),
    MobileChat(5),
    EmbeddedClient(6),
    DesktopUI(7);

    private final int code;

    EUIMode(int i) {
        this.code = i;
    }

    public int code() {
        return this.code;
    }

    public static EUIMode from(int i) {
        for (EUIMode eUIMode : values()) {
            if (eUIMode.code == i) {
                return eUIMode;
            }
        }
        return null;
    }
}
