package in.dragonbra.javasteam.enums;

/* JADX INFO: loaded from: classes.dex */
public enum EAuthSessionResponse {
    OK(0),
    UserNotConnectedToSteam(1),
    NoLicenseOrExpired(2),
    VACBanned(3),
    LoggedInElseWhere(4),
    VACCheckTimedOut(5),
    AuthTicketCanceled(6),
    AuthTicketInvalidAlreadyUsed(7),
    AuthTicketInvalid(8),
    PublisherIssuedBan(9);

    private final int code;

    EAuthSessionResponse(int i) {
        this.code = i;
    }

    public int code() {
        return this.code;
    }

    public static EAuthSessionResponse from(int i) {
        for (EAuthSessionResponse eAuthSessionResponse : values()) {
            if (eAuthSessionResponse.code == i) {
                return eAuthSessionResponse;
            }
        }
        return null;
    }
}
