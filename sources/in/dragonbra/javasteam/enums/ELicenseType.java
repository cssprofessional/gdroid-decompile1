package in.dragonbra.javasteam.enums;

/* JADX INFO: loaded from: classes.dex */
public enum ELicenseType {
    NoLicense(0),
    SinglePurchase(1),
    SinglePurchaseLimitedUse(2),
    RecurringCharge(3),
    RecurringChargeLimitedUse(4),
    RecurringChargeLimitedUseWithOverages(5),
    RecurringOption(6),
    LimitedUseDelayedActivation(7);

    private final int code;

    ELicenseType(int i) {
        this.code = i;
    }

    public int code() {
        return this.code;
    }

    public static ELicenseType from(int i) {
        for (ELicenseType eLicenseType : values()) {
            if (eLicenseType.code == i) {
                return eLicenseType;
            }
        }
        return null;
    }
}
