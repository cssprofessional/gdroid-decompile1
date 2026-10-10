package in.dragonbra.javasteam.enums;

/* JADX INFO: loaded from: classes.dex */
public enum ETradeOfferState {
    Invalid(1),
    Active(2),
    Accepted(3),
    Countered(4),
    Expired(5),
    Canceled(6),
    Declined(7),
    InvalidItems(8),
    CreatedNeedsConfirmation(9),
    CanceledBySecondFactor(10),
    InEscrow(11),
    Reverted(12);

    private final int code;

    ETradeOfferState(int i) {
        this.code = i;
    }

    public int code() {
        return this.code;
    }

    public static ETradeOfferState from(int i) {
        for (ETradeOfferState eTradeOfferState : values()) {
            if (eTradeOfferState.code == i) {
                return eTradeOfferState;
            }
        }
        return null;
    }
}
