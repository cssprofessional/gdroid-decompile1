package in.dragonbra.javasteam.enums;

/* JADX INFO: loaded from: classes.dex */
public enum EBillingType {
    NoCost(0),
    BillOnceOnly(1),
    BillMonthly(2),
    ProofOfPrepurchaseOnly(3),
    GuestPass(4),
    HardwarePromo(5),
    Gift(6),
    AutoGrant(7),
    OEMTicket(8),
    RecurringOption(9),
    BillOnceOrCDKey(10),
    Repurchaseable(11),
    FreeOnDemand(12),
    Rental(13),
    CommercialLicense(14),
    FreeCommercialLicense(15),
    NumBillingTypes(16);

    private final int code;

    EBillingType(int i) {
        this.code = i;
    }

    public int code() {
        return this.code;
    }

    public static EBillingType from(int i) {
        for (EBillingType eBillingType : values()) {
            if (eBillingType.code == i) {
                return eBillingType;
            }
        }
        return null;
    }
}
