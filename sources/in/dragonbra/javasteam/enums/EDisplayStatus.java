package in.dragonbra.javasteam.enums;

/* JADX INFO: loaded from: classes.dex */
public enum EDisplayStatus {
    Invalid(0),
    Launching(1),
    Uninstalling(2),
    Installing(3),
    Running(4),
    Validating(5),
    Updating(6),
    Downloading(7),
    Synchronizing(8),
    ReadyToInstall(9),
    ReadyToPreload(10),
    ReadyToLaunch(11),
    RegionRestricted(12),
    PresaleOnly(13),
    InvalidPlatform(14),
    ParentalBlocked(15),
    PreloadComplete(16),
    BorrowerLocked(17),
    UpdatePaused(18),
    UpdateQueued(19),
    UpdateRequired(20),
    UpdateDisabled(21),
    DownloadPaused(22),
    DownloadQueued(23),
    DownloadRequired(24),
    DownloadDisabled(25),
    LicensePending(26),
    LicenseExpired(27),
    AvailForFree(28),
    AvailToBorrow(29),
    AvailGuestPass(30),
    Purchase(31),
    Unavailable(32),
    NotLaunchable(33),
    CloudError(34),
    CloudOutOfDate(35),
    Terminating(36),
    OwnerLocked(37),
    DownloadFailed(38),
    UpdateFailed(39);

    private final int code;

    EDisplayStatus(int i) {
        this.code = i;
    }

    public int code() {
        return this.code;
    }

    public static EDisplayStatus from(int i) {
        for (EDisplayStatus eDisplayStatus : values()) {
            if (eDisplayStatus.code == i) {
                return eDisplayStatus;
            }
        }
        return null;
    }
}
