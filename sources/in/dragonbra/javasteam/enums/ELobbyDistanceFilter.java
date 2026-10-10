package in.dragonbra.javasteam.enums;

/* JADX INFO: loaded from: classes.dex */
public enum ELobbyDistanceFilter {
    Close(0),
    Default(1),
    Far(2),
    Worldwide(3);

    private final int code;

    ELobbyDistanceFilter(int i) {
        this.code = i;
    }

    public int code() {
        return this.code;
    }

    public static ELobbyDistanceFilter from(int i) {
        for (ELobbyDistanceFilter eLobbyDistanceFilter : values()) {
            if (eLobbyDistanceFilter.code == i) {
                return eLobbyDistanceFilter;
            }
        }
        return null;
    }
}
