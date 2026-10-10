package in.dragonbra.javasteam.enums;

/* JADX INFO: loaded from: classes.dex */
public enum EActivationCodeClass {
    WonCDKey(0),
    ValveCDKey(1),
    Doom3CDKey(2),
    DBLookup(3),
    Steam2010Key(4),
    Max(5),
    Test(Integer.MAX_VALUE),
    Invalid(-1);

    private final int code;

    EActivationCodeClass(int i) {
        this.code = i;
    }

    public int code() {
        return this.code;
    }

    public static EActivationCodeClass from(int i) {
        for (EActivationCodeClass eActivationCodeClass : values()) {
            if (eActivationCodeClass.code == i) {
                return eActivationCodeClass;
            }
        }
        return null;
    }
}
