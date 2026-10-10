package in.dragonbra.javasteam.enums;

/* JADX INFO: loaded from: classes.dex */
public enum EUniverse {
    Invalid(0),
    Public(1),
    Beta(2),
    Internal(3),
    Dev(4);

    private final int code;

    EUniverse(int i) {
        this.code = i;
    }

    public int code() {
        return this.code;
    }

    public static EUniverse from(int i) {
        for (EUniverse eUniverse : values()) {
            if (eUniverse.code == i) {
                return eUniverse;
            }
        }
        return null;
    }
}
