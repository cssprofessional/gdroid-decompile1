package in.dragonbra.javasteam.enums;

/* JADX INFO: loaded from: classes.dex */
public enum ETradeOfferConfirmationMethod {
    Invalid(0),
    Email(1),
    MobileApp(2);

    private final int code;

    ETradeOfferConfirmationMethod(int i) {
        this.code = i;
    }

    public int code() {
        return this.code;
    }

    public static ETradeOfferConfirmationMethod from(int i) {
        for (ETradeOfferConfirmationMethod eTradeOfferConfirmationMethod : values()) {
            if (eTradeOfferConfirmationMethod.code == i) {
                return eTradeOfferConfirmationMethod;
            }
        }
        return null;
    }
}
