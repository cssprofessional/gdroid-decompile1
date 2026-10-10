package in.dragonbra.javasteam.enums;

/* JADX INFO: loaded from: classes.dex */
public enum ESystemIMType {
    RawText(0),
    InvalidCard(1),
    RecurringPurchaseFailed(2),
    CardWillExpire(3),
    SubscriptionExpired(4),
    GuestPassReceived(5),
    GuestPassGranted(6),
    GiftRevoked(7),
    SupportMessage(8),
    SupportMessageClearAlert(9);

    private final int code;

    ESystemIMType(int i) {
        this.code = i;
    }

    public int code() {
        return this.code;
    }

    public static ESystemIMType from(int i) {
        for (ESystemIMType eSystemIMType : values()) {
            if (eSystemIMType.code == i) {
                return eSystemIMType;
            }
        }
        return null;
    }
}
