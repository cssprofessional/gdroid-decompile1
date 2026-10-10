package in.dragonbra.javasteam.enums;

/* JADX INFO: loaded from: classes.dex */
public enum EWorkshopFileType {
    First(0),
    Community(0),
    Microtransaction(1),
    Collection(2),
    Art(3),
    Video(4),
    Screenshot(5),
    Game(6),
    Software(7),
    Concept(8),
    WebGuide(9),
    IntegratedGuide(10),
    Merch(11),
    ControllerBinding(12),
    SteamworksAccessInvite(13),
    SteamVideo(14),
    GameManagedItem(15),
    Clip(16);

    private final int code;

    EWorkshopFileType(int i) {
        this.code = i;
    }

    public int code() {
        return this.code;
    }

    public static EWorkshopFileType from(int i) {
        for (EWorkshopFileType eWorkshopFileType : values()) {
            if (eWorkshopFileType.code == i) {
                return eWorkshopFileType;
            }
        }
        return null;
    }
}
