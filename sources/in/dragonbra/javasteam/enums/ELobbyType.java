package in.dragonbra.javasteam.enums;

/* JADX INFO: loaded from: classes.dex */
public enum ELobbyType {
    Private(0),
    FriendsOnly(1),
    Public(2),
    Invisible(3),
    PrivateUnique(4);

    private final int code;

    ELobbyType(int i) {
        this.code = i;
    }

    public int code() {
        return this.code;
    }

    public static ELobbyType from(int i) {
        for (ELobbyType eLobbyType : values()) {
            if (eLobbyType.code == i) {
                return eLobbyType;
            }
        }
        return null;
    }
}
