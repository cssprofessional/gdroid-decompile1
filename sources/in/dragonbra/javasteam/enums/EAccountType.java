package in.dragonbra.javasteam.enums;

/* JADX INFO: loaded from: classes.dex */
public enum EAccountType {
    Invalid(0),
    Individual(1),
    Multiseat(2),
    GameServer(3),
    AnonGameServer(4),
    Pending(5),
    ContentServer(6),
    Clan(7),
    Chat(8),
    ConsoleUser(9),
    AnonUser(10);

    private final int code;

    EAccountType(int i) {
        this.code = i;
    }

    public int code() {
        return this.code;
    }

    public static EAccountType from(int i) {
        for (EAccountType eAccountType : values()) {
            if (eAccountType.code == i) {
                return eAccountType;
            }
        }
        return null;
    }
}
