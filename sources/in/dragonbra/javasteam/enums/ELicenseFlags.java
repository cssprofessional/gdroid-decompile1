package in.dragonbra.javasteam.enums;

import in.dragonbra.javasteam.protobufs.steamclient.Enums;
import java.util.EnumSet;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public enum ELicenseFlags {
    None(0),
    Renew(1),
    RenewalFailed(2),
    Pending(4),
    Expired(8),
    CancelledByUser(16),
    CancelledByAdmin(32),
    LowViolenceContent(64),
    ImportedFromSteam2(128),
    ForceRunRestriction(256),
    RegionRestrictionExpired(512),
    CancelledByFriendlyFraudLock(1024),
    NotActivated(2048),
    PendingRefund(Enums.EProtoAppType.k_EAppTypeMusicAlbum_VALUE),
    Borrowed(Enums.EProtoAppType.k_EAppTypeSeries_VALUE),
    ReleaseStateOverride(32768),
    CancelledByPartner(262144),
    NonPermanent(524288),
    PreferredOwner(1048576);

    private final int code;

    ELicenseFlags(int i) {
        this.code = i;
    }

    public int code() {
        return this.code;
    }

    public static EnumSet<ELicenseFlags> from(int i) {
        EnumSet<ELicenseFlags> enumSetNoneOf = EnumSet.noneOf(ELicenseFlags.class);
        for (ELicenseFlags eLicenseFlags : values()) {
            int i2 = eLicenseFlags.code;
            if ((i2 & i) == i2) {
                enumSetNoneOf.add(eLicenseFlags);
            }
        }
        return enumSetNoneOf;
    }

    public static int code(EnumSet<ELicenseFlags> enumSet) {
        Iterator<ELicenseFlags> it = enumSet.iterator();
        int i = 0;
        while (it.hasNext()) {
            i |= it.next().code;
        }
        return i;
    }
}
