package in.dragonbra.javasteam.steam.handlers.steamclientcommunication;

import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__IndentKt;

/* JADX INFO: compiled from: ClientAppListAppData.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class ClientAppListAppData {
    private final String app;
    private final String appType;
    private final int appid;
    private final boolean autoUpdate;
    private final boolean availableOnPlatform;
    private final int bytesDownloadRate;
    private final long bytesDownloaded;
    private final long bytesRequired;
    private final long bytesStaged;
    private final long bytesToDownload;
    private final long bytesToStage;
    private final String category;
    private final boolean changing;
    private final List<ClientAppListDlcData> dlcs;
    private final boolean downloadPaused;
    private final int estimatedSecondsRemaining;
    private final boolean favorite;
    private final boolean installed;
    private final int numDownloading;
    private final int queuePosition;
    private final int rtTimeScheduled;
    private final boolean running;
    private final int sourceBuildId;
    private final int targetBuildId;
    private final boolean uninstalling;
    private final int updatePercentage;

    public final int component1() {
        return this.appid;
    }

    public final boolean component10() {
        return this.favorite;
    }

    public final boolean component11() {
        return this.autoUpdate;
    }

    public final boolean component12() {
        return this.installed;
    }

    public final boolean component13() {
        return this.downloadPaused;
    }

    public final boolean component14() {
        return this.changing;
    }

    public final boolean component15() {
        return this.availableOnPlatform;
    }

    public final long component16() {
        return this.bytesStaged;
    }

    public final long component17() {
        return this.bytesToStage;
    }

    public final long component18() {
        return this.bytesRequired;
    }

    public final int component19() {
        return this.sourceBuildId;
    }

    public final String component2() {
        return this.app;
    }

    public final int component20() {
        return this.targetBuildId;
    }

    public final int component21() {
        return this.estimatedSecondsRemaining;
    }

    public final int component22() {
        return this.queuePosition;
    }

    public final boolean component23() {
        return this.uninstalling;
    }

    public final int component24() {
        return this.rtTimeScheduled;
    }

    public final boolean component25() {
        return this.running;
    }

    public final int component26() {
        return this.updatePercentage;
    }

    public final String component3() {
        return this.category;
    }

    public final String component4() {
        return this.appType;
    }

    public final int component5() {
        return this.numDownloading;
    }

    public final int component6() {
        return this.bytesDownloadRate;
    }

    public final long component7() {
        return this.bytesDownloaded;
    }

    public final long component8() {
        return this.bytesToDownload;
    }

    public final List<ClientAppListDlcData> component9() {
        return this.dlcs;
    }

    public final ClientAppListAppData copy(int i, String app, String category, String appType, int i2, int i3, long j, long j2, List<ClientAppListDlcData> dlcs, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, long j3, long j4, long j5, int i4, int i5, int i6, int i7, boolean z7, int i8, boolean z8, int i9) {
        Intrinsics.checkNotNullParameter(app, "app");
        Intrinsics.checkNotNullParameter(category, "category");
        Intrinsics.checkNotNullParameter(appType, "appType");
        Intrinsics.checkNotNullParameter(dlcs, "dlcs");
        return new ClientAppListAppData(i, app, category, appType, i2, i3, j, j2, dlcs, z, z2, z3, z4, z5, z6, j3, j4, j5, i4, i5, i6, i7, z7, i8, z8, i9);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ClientAppListAppData)) {
            return false;
        }
        ClientAppListAppData clientAppListAppData = (ClientAppListAppData) obj;
        return this.appid == clientAppListAppData.appid && Intrinsics.areEqual(this.app, clientAppListAppData.app) && Intrinsics.areEqual(this.category, clientAppListAppData.category) && Intrinsics.areEqual(this.appType, clientAppListAppData.appType) && this.numDownloading == clientAppListAppData.numDownloading && this.bytesDownloadRate == clientAppListAppData.bytesDownloadRate && this.bytesDownloaded == clientAppListAppData.bytesDownloaded && this.bytesToDownload == clientAppListAppData.bytesToDownload && Intrinsics.areEqual(this.dlcs, clientAppListAppData.dlcs) && this.favorite == clientAppListAppData.favorite && this.autoUpdate == clientAppListAppData.autoUpdate && this.installed == clientAppListAppData.installed && this.downloadPaused == clientAppListAppData.downloadPaused && this.changing == clientAppListAppData.changing && this.availableOnPlatform == clientAppListAppData.availableOnPlatform && this.bytesStaged == clientAppListAppData.bytesStaged && this.bytesToStage == clientAppListAppData.bytesToStage && this.bytesRequired == clientAppListAppData.bytesRequired && this.sourceBuildId == clientAppListAppData.sourceBuildId && this.targetBuildId == clientAppListAppData.targetBuildId && this.estimatedSecondsRemaining == clientAppListAppData.estimatedSecondsRemaining && this.queuePosition == clientAppListAppData.queuePosition && this.uninstalling == clientAppListAppData.uninstalling && this.rtTimeScheduled == clientAppListAppData.rtTimeScheduled && this.running == clientAppListAppData.running && this.updatePercentage == clientAppListAppData.updatePercentage;
    }

    public int hashCode() {
        return (((((((((((((((((((((((((((((((((((((((((((((((((Integer.hashCode(this.appid) * 31) + this.app.hashCode()) * 31) + this.category.hashCode()) * 31) + this.appType.hashCode()) * 31) + Integer.hashCode(this.numDownloading)) * 31) + Integer.hashCode(this.bytesDownloadRate)) * 31) + Long.hashCode(this.bytesDownloaded)) * 31) + Long.hashCode(this.bytesToDownload)) * 31) + this.dlcs.hashCode()) * 31) + Boolean.hashCode(this.favorite)) * 31) + Boolean.hashCode(this.autoUpdate)) * 31) + Boolean.hashCode(this.installed)) * 31) + Boolean.hashCode(this.downloadPaused)) * 31) + Boolean.hashCode(this.changing)) * 31) + Boolean.hashCode(this.availableOnPlatform)) * 31) + Long.hashCode(this.bytesStaged)) * 31) + Long.hashCode(this.bytesToStage)) * 31) + Long.hashCode(this.bytesRequired)) * 31) + Integer.hashCode(this.sourceBuildId)) * 31) + Integer.hashCode(this.targetBuildId)) * 31) + Integer.hashCode(this.estimatedSecondsRemaining)) * 31) + Integer.hashCode(this.queuePosition)) * 31) + Boolean.hashCode(this.uninstalling)) * 31) + Integer.hashCode(this.rtTimeScheduled)) * 31) + Boolean.hashCode(this.running)) * 31) + Integer.hashCode(this.updatePercentage);
    }

    public ClientAppListAppData(int i, String app, String category, String appType, int i2, int i3, long j, long j2, List<ClientAppListDlcData> dlcs, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, long j3, long j4, long j5, int i4, int i5, int i6, int i7, boolean z7, int i8, boolean z8, int i9) {
        Intrinsics.checkNotNullParameter(app, "app");
        Intrinsics.checkNotNullParameter(category, "category");
        Intrinsics.checkNotNullParameter(appType, "appType");
        Intrinsics.checkNotNullParameter(dlcs, "dlcs");
        this.appid = i;
        this.app = app;
        this.category = category;
        this.appType = appType;
        this.numDownloading = i2;
        this.bytesDownloadRate = i3;
        this.bytesDownloaded = j;
        this.bytesToDownload = j2;
        this.dlcs = dlcs;
        this.favorite = z;
        this.autoUpdate = z2;
        this.installed = z3;
        this.downloadPaused = z4;
        this.changing = z5;
        this.availableOnPlatform = z6;
        this.bytesStaged = j3;
        this.bytesToStage = j4;
        this.bytesRequired = j5;
        this.sourceBuildId = i4;
        this.targetBuildId = i5;
        this.estimatedSecondsRemaining = i6;
        this.queuePosition = i7;
        this.uninstalling = z7;
        this.rtTimeScheduled = i8;
        this.running = z8;
        this.updatePercentage = i9;
    }

    public final int getAppid() {
        return this.appid;
    }

    public final String getApp() {
        return this.app;
    }

    public final String getCategory() {
        return this.category;
    }

    public final String getAppType() {
        return this.appType;
    }

    public final int getNumDownloading() {
        return this.numDownloading;
    }

    public final int getBytesDownloadRate() {
        return this.bytesDownloadRate;
    }

    public final long getBytesDownloaded() {
        return this.bytesDownloaded;
    }

    public final long getBytesToDownload() {
        return this.bytesToDownload;
    }

    public final List<ClientAppListDlcData> getDlcs() {
        return this.dlcs;
    }

    public final boolean getFavorite() {
        return this.favorite;
    }

    public final boolean getAutoUpdate() {
        return this.autoUpdate;
    }

    public final boolean getInstalled() {
        return this.installed;
    }

    public final boolean getDownloadPaused() {
        return this.downloadPaused;
    }

    public final boolean getChanging() {
        return this.changing;
    }

    public final boolean getAvailableOnPlatform() {
        return this.availableOnPlatform;
    }

    public final long getBytesStaged() {
        return this.bytesStaged;
    }

    public final long getBytesToStage() {
        return this.bytesToStage;
    }

    public final long getBytesRequired() {
        return this.bytesRequired;
    }

    public final int getSourceBuildId() {
        return this.sourceBuildId;
    }

    public final int getTargetBuildId() {
        return this.targetBuildId;
    }

    public final int getEstimatedSecondsRemaining() {
        return this.estimatedSecondsRemaining;
    }

    public final int getQueuePosition() {
        return this.queuePosition;
    }

    public final boolean getUninstalling() {
        return this.uninstalling;
    }

    public final int getRtTimeScheduled() {
        return this.rtTimeScheduled;
    }

    public final boolean getRunning() {
        return this.running;
    }

    public final int getUpdatePercentage() {
        return this.updatePercentage;
    }

    public String toString() {
        return StringsKt__IndentKt.trimIndent("\n            ClientAppListAppData(\n                appid=" + this.appid + ",\n                app='" + this.app + "',\n                category='" + this.category + "',\n                appType='" + this.appType + "',\n                numDownloading=" + this.numDownloading + ",\n                bytesDownloadRate=" + this.bytesDownloadRate + ",\n                bytesDownloaded=" + this.bytesDownloaded + ",\n                bytesToDownload=" + this.bytesToDownload + ",\n                dlcs=" + this.dlcs + ",\n                favorite=" + this.favorite + ",\n                autoUpdate=" + this.autoUpdate + ",\n                installed=" + this.installed + ",\n                downloadPaused=" + this.downloadPaused + ",\n                changing=" + this.changing + ",\n                availableOnPlatform=" + this.availableOnPlatform + ",\n                bytesStaged=" + this.bytesStaged + ",\n                bytesToStage=" + this.bytesToStage + ",\n                bytesRequired=" + this.bytesRequired + ",\n                sourceBuildId=" + this.sourceBuildId + ",\n                targetBuildId=" + this.targetBuildId + ",\n                estimatedSecondsRemaining=" + this.estimatedSecondsRemaining + ",\n                queuePosition=" + this.queuePosition + ",\n                uninstalling=" + this.uninstalling + ",\n                rtTimeScheduled=" + this.rtTimeScheduled + ",\n                running=" + this.running + ",\n                updatePercentage=" + this.updatePercentage + "\n            )\n    ");
    }
}
