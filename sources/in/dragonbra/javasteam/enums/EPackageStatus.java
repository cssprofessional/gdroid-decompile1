package in.dragonbra.javasteam.enums;

/* JADX INFO: loaded from: classes.dex */
public enum EPackageStatus {
    Available(0),
    Preorder(1),
    Unavailable(2),
    Invalid(3);

    private final int code;

    EPackageStatus(int i) {
        this.code = i;
    }

    public int code() {
        return this.code;
    }

    public static EPackageStatus from(int i) {
        for (EPackageStatus ePackageStatus : values()) {
            if (ePackageStatus.code == i) {
                return ePackageStatus;
            }
        }
        return null;
    }
}
