package in.dragonbra.javasteam.steam.handlers.steamscreenshots;

import in.dragonbra.javasteam.enums.EUCMFilePrivacyState;
import in.dragonbra.javasteam.types.GameID;
import java.util.Date;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ScreenshotDetails.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class ScreenshotDetails {
    private String caption;
    private Date creationTime;
    private GameID gameID;
    private int height;
    private boolean isContainsSpoilers;
    private EUCMFilePrivacyState privacy;
    private String ufsImageFilePath;
    private String usfThumbnailFilePath;
    private int width;

    public final GameID component1() {
        return this.gameID;
    }

    public final String component2() {
        return this.ufsImageFilePath;
    }

    public final String component3() {
        return this.usfThumbnailFilePath;
    }

    public final String component4() {
        return this.caption;
    }

    public final EUCMFilePrivacyState component5() {
        return this.privacy;
    }

    public final int component6() {
        return this.width;
    }

    public final int component7() {
        return this.height;
    }

    public final Date component8() {
        return this.creationTime;
    }

    public final boolean component9() {
        return this.isContainsSpoilers;
    }

    public final ScreenshotDetails copy(GameID gameID, String str, String str2, String str3, EUCMFilePrivacyState privacy, int i, int i2, Date creationTime, boolean z) {
        Intrinsics.checkNotNullParameter(privacy, "privacy");
        Intrinsics.checkNotNullParameter(creationTime, "creationTime");
        return new ScreenshotDetails(gameID, str, str2, str3, privacy, i, i2, creationTime, z);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ScreenshotDetails)) {
            return false;
        }
        ScreenshotDetails screenshotDetails = (ScreenshotDetails) obj;
        return Intrinsics.areEqual(this.gameID, screenshotDetails.gameID) && Intrinsics.areEqual(this.ufsImageFilePath, screenshotDetails.ufsImageFilePath) && Intrinsics.areEqual(this.usfThumbnailFilePath, screenshotDetails.usfThumbnailFilePath) && Intrinsics.areEqual(this.caption, screenshotDetails.caption) && this.privacy == screenshotDetails.privacy && this.width == screenshotDetails.width && this.height == screenshotDetails.height && Intrinsics.areEqual(this.creationTime, screenshotDetails.creationTime) && this.isContainsSpoilers == screenshotDetails.isContainsSpoilers;
    }

    public int hashCode() {
        GameID gameID = this.gameID;
        int iHashCode = (gameID == null ? 0 : gameID.hashCode()) * 31;
        String str = this.ufsImageFilePath;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.usfThumbnailFilePath;
        int iHashCode3 = (iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.caption;
        return ((((((((((iHashCode3 + (str3 != null ? str3.hashCode() : 0)) * 31) + this.privacy.hashCode()) * 31) + Integer.hashCode(this.width)) * 31) + Integer.hashCode(this.height)) * 31) + this.creationTime.hashCode()) * 31) + Boolean.hashCode(this.isContainsSpoilers);
    }

    public String toString() {
        return "ScreenshotDetails(gameID=" + this.gameID + ", ufsImageFilePath=" + this.ufsImageFilePath + ", usfThumbnailFilePath=" + this.usfThumbnailFilePath + ", caption=" + this.caption + ", privacy=" + this.privacy + ", width=" + this.width + ", height=" + this.height + ", creationTime=" + this.creationTime + ", isContainsSpoilers=" + this.isContainsSpoilers + ")";
    }

    public ScreenshotDetails(GameID gameID, String str, String str2, String str3, EUCMFilePrivacyState privacy, int i, int i2, Date creationTime, boolean z) {
        Intrinsics.checkNotNullParameter(privacy, "privacy");
        Intrinsics.checkNotNullParameter(creationTime, "creationTime");
        this.gameID = gameID;
        this.ufsImageFilePath = str;
        this.usfThumbnailFilePath = str2;
        this.caption = str3;
        this.privacy = privacy;
        this.width = i;
        this.height = i2;
        this.creationTime = creationTime;
        this.isContainsSpoilers = z;
    }

    public final GameID getGameID() {
        return this.gameID;
    }

    public final void setGameID(GameID gameID) {
        this.gameID = gameID;
    }

    public final String getUfsImageFilePath() {
        return this.ufsImageFilePath;
    }

    public final void setUfsImageFilePath(String str) {
        this.ufsImageFilePath = str;
    }

    public final String getUsfThumbnailFilePath() {
        return this.usfThumbnailFilePath;
    }

    public final void setUsfThumbnailFilePath(String str) {
        this.usfThumbnailFilePath = str;
    }

    public final String getCaption() {
        return this.caption;
    }

    public final void setCaption(String str) {
        this.caption = str;
    }

    public final EUCMFilePrivacyState getPrivacy() {
        return this.privacy;
    }

    public final void setPrivacy(EUCMFilePrivacyState eUCMFilePrivacyState) {
        Intrinsics.checkNotNullParameter(eUCMFilePrivacyState, "<set-?>");
        this.privacy = eUCMFilePrivacyState;
    }

    public final int getWidth() {
        return this.width;
    }

    public final void setWidth(int i) {
        this.width = i;
    }

    public final int getHeight() {
        return this.height;
    }

    public final void setHeight(int i) {
        this.height = i;
    }

    public final Date getCreationTime() {
        return this.creationTime;
    }

    public final void setCreationTime(Date date) {
        Intrinsics.checkNotNullParameter(date, "<set-?>");
        this.creationTime = date;
    }

    public final boolean isContainsSpoilers() {
        return this.isContainsSpoilers;
    }

    public final void setContainsSpoilers(boolean z) {
        this.isContainsSpoilers = z;
    }
}
