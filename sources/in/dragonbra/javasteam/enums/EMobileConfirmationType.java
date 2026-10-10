package in.dragonbra.javasteam.enums;

/* JADX INFO: loaded from: classes.dex */
public enum EMobileConfirmationType {
    Invalid(0),
    Test(1),
    Trade(2),
    MarketListing(3),
    FeatureOptOut(4),
    PhoneNumberChange(5),
    AccountRecovery(6),
    BuildChangeRequest(7),
    AddUser(8),
    RegisterApiKey(9),
    InviteToFamilyGroup(10),
    JoinFamilyGroup(11),
    MarketPurchase(12),
    RequestRefund(13);

    private final int code;

    EMobileConfirmationType(int i) {
        this.code = i;
    }

    public int code() {
        return this.code;
    }

    public static EMobileConfirmationType from(int i) {
        for (EMobileConfirmationType eMobileConfirmationType : values()) {
            if (eMobileConfirmationType.code == i) {
                return eMobileConfirmationType;
            }
        }
        return null;
    }
}
