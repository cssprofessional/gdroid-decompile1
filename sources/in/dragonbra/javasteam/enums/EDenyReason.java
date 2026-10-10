package in.dragonbra.javasteam.enums;

/* JADX INFO: loaded from: classes.dex */
public enum EDenyReason {
    InvalidVersion(1),
    Generic(2),
    NotLoggedOn(3),
    NoLicense(4),
    Cheater(5),
    LoggedInElseWhere(6),
    UnknownText(7),
    IncompatibleAnticheat(8),
    MemoryCorruption(9),
    IncompatibleSoftware(10),
    SteamConnectionLost(11),
    SteamConnectionError(12),
    SteamResponseTimedOut(13),
    SteamValidationStalled(14),
    SteamOwnerLeftGuestUser(15);

    private final int code;

    EDenyReason(int i) {
        this.code = i;
    }

    public int code() {
        return this.code;
    }

    public static EDenyReason from(int i) {
        for (EDenyReason eDenyReason : values()) {
            if (eDenyReason.code == i) {
                return eDenyReason;
            }
        }
        return null;
    }
}
