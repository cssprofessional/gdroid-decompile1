package in.dragonbra.javasteam.steam.handlers.steamapps;

import in.dragonbra.javasteam.enums.ELicenseFlags;
import in.dragonbra.javasteam.enums.ELicenseType;
import in.dragonbra.javasteam.enums.EPaymentMethod;
import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver;
import java.util.Date;
import java.util.EnumSet;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: License.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class License {
    private final long accessToken;
    private final int lastChangeNumber;
    private final EnumSet<ELicenseFlags> licenseFlags;
    private final ELicenseType licenseType;
    private final int masterPackageID;
    private final int minuteLimit;
    private final int minutesUsed;
    private final int ownerAccountID;
    private final int packageID;
    private final EPaymentMethod paymentMethod;
    private final String purchaseCode;
    private final int territoryCode;
    private final Date timeCreated;
    private final Date timeNextProcess;

    public License(SteammessagesClientserver.CMsgClientLicenseList.License license) {
        Intrinsics.checkNotNullParameter(license, "license");
        this.packageID = license.getPackageId();
        this.lastChangeNumber = license.getChangeNumber();
        this.timeCreated = new Date(((long) license.getTimeCreated()) * 1000);
        this.timeNextProcess = new Date(((long) license.getTimeNextProcess()) * 1000);
        this.minuteLimit = license.getMinuteLimit();
        this.minutesUsed = license.getMinutesUsed();
        EPaymentMethod ePaymentMethodFrom = EPaymentMethod.from(license.getPaymentMethod());
        this.paymentMethod = ePaymentMethodFrom == null ? EPaymentMethod.None : ePaymentMethodFrom;
        EnumSet<ELicenseFlags> enumSetFrom = ELicenseFlags.from(license.getFlags());
        Intrinsics.checkNotNullExpressionValue(enumSetFrom, "from(...)");
        this.licenseFlags = enumSetFrom;
        String purchaseCountryCode = license.getPurchaseCountryCode();
        Intrinsics.checkNotNullExpressionValue(purchaseCountryCode, "getPurchaseCountryCode(...)");
        this.purchaseCode = purchaseCountryCode;
        ELicenseType eLicenseTypeFrom = ELicenseType.from(license.getLicenseType());
        this.licenseType = eLicenseTypeFrom == null ? ELicenseType.NoLicense : eLicenseTypeFrom;
        this.territoryCode = license.getTerritoryCode();
        this.accessToken = license.getAccessToken();
        this.ownerAccountID = license.getOwnerId();
        this.masterPackageID = license.getMasterPackageId();
    }

    public final int getPackageID() {
        return this.packageID;
    }

    public final int getLastChangeNumber() {
        return this.lastChangeNumber;
    }

    public final Date getTimeCreated() {
        return this.timeCreated;
    }

    public final Date getTimeNextProcess() {
        return this.timeNextProcess;
    }

    public final int getMinuteLimit() {
        return this.minuteLimit;
    }

    public final int getMinutesUsed() {
        return this.minutesUsed;
    }

    public final EPaymentMethod getPaymentMethod() {
        return this.paymentMethod;
    }

    public final EnumSet<ELicenseFlags> getLicenseFlags() {
        return this.licenseFlags;
    }

    public final String getPurchaseCode() {
        return this.purchaseCode;
    }

    public final ELicenseType getLicenseType() {
        return this.licenseType;
    }

    public final int getTerritoryCode() {
        return this.territoryCode;
    }

    public final long getAccessToken() {
        return this.accessToken;
    }

    public final int getOwnerAccountID() {
        return this.ownerAccountID;
    }

    public final int getMasterPackageID() {
        return this.masterPackageID;
    }
}
