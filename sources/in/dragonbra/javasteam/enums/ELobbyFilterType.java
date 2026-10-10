package in.dragonbra.javasteam.enums;

/* JADX INFO: loaded from: classes.dex */
public enum ELobbyFilterType {
    String(0),
    Numerical(1),
    SlotsAvailable(2),
    NearValue(3),
    Distance(4);

    private final int code;

    ELobbyFilterType(int i) {
        this.code = i;
    }

    public int code() {
        return this.code;
    }

    public static ELobbyFilterType from(int i) {
        for (ELobbyFilterType eLobbyFilterType : values()) {
            if (eLobbyFilterType.code == i) {
                return eLobbyFilterType;
            }
        }
        return null;
    }
}
