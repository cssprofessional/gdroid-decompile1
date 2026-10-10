package in.dragonbra.javasteam.enums;

/* JADX INFO: loaded from: classes.dex */
public enum ERegionCode {
    USEast((byte) 0),
    USWest((byte) 1),
    SouthAmerica((byte) 2),
    Europe((byte) 3),
    Asia((byte) 4),
    Australia((byte) 5),
    MiddleEast((byte) 6),
    Africa((byte) 7),
    World((byte) -1);

    private final byte code;

    ERegionCode(byte b) {
        this.code = b;
    }

    public byte code() {
        return this.code;
    }

    public static ERegionCode from(byte b) {
        for (ERegionCode eRegionCode : values()) {
            if (eRegionCode.code == b) {
                return eRegionCode;
            }
        }
        return null;
    }
}
