package in.dragonbra.javasteam.enums;

/* JADX INFO: loaded from: classes.dex */
public enum ELobbyComparison {
    EqualToOrLessThan(-2),
    LessThan(-1),
    Equal(0),
    GreaterThan(1),
    EqualToOrGreaterThan(2),
    NotEqual(3);

    private final int code;

    ELobbyComparison(int i) {
        this.code = i;
    }

    public int code() {
        return this.code;
    }

    public static ELobbyComparison from(int i) {
        for (ELobbyComparison eLobbyComparison : values()) {
            if (eLobbyComparison.code == i) {
                return eLobbyComparison;
            }
        }
        return null;
    }
}
