package in.dragonbra.javasteam.steam.handlers.steamapps;

import in.dragonbra.javasteam.protobufs.steamclient.Enums;
import java.net.InetAddress;
import java.util.Arrays;
import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: GamePlayedInfo.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class GamePlayedInfo {
    private final String betaName;
    private final int compatToolBuildId;
    private final String compatToolCmd;
    private final int compatToolId;
    private final int controllerConnectionType;
    private final long controllerWorkshopFileId;
    private final int deprecatedGameIpAddress;
    private final int dlcContext;
    private final int gameBuildId;
    private final byte[] gameDataBlob;
    private final String gameExtraInfo;
    private final int gameFlags;
    private final long gameId;
    private final InetAddress gameIpAddress;
    private final int gameOsPlatform;
    private final int gamePort;
    private final boolean isSecure;
    private final int launchOptionType;
    private final int launchSource;
    private final int ownerId;
    private final int primaryControllerType;
    private final String primarySteamControllerSerial;
    private final int processId;
    private final List<AppProcessInfo> processIdList;
    private final long steamIdGs;
    private final int streamingProviderId;
    private final byte[] token;
    private final int totalNonSteamControllerCount;
    private final int totalSteamControllerCount;
    private final String vrHmdModel;
    private final int vrHmdRuntime;
    private final String vrHmdVendor;

    public final long component1() {
        return this.steamIdGs;
    }

    public final int component10() {
        return this.streamingProviderId;
    }

    public final int component11() {
        return this.gameFlags;
    }

    public final int component12() {
        return this.ownerId;
    }

    public final String component13() {
        return this.vrHmdVendor;
    }

    public final String component14() {
        return this.vrHmdModel;
    }

    public final int component15() {
        return this.launchOptionType;
    }

    public final int component16() {
        return this.primaryControllerType;
    }

    public final String component17() {
        return this.primarySteamControllerSerial;
    }

    public final int component18() {
        return this.totalSteamControllerCount;
    }

    public final int component19() {
        return this.totalNonSteamControllerCount;
    }

    public final long component2() {
        return this.gameId;
    }

    public final long component20() {
        return this.controllerWorkshopFileId;
    }

    public final int component21() {
        return this.launchSource;
    }

    public final int component22() {
        return this.vrHmdRuntime;
    }

    public final InetAddress component23() {
        return this.gameIpAddress;
    }

    public final int component24() {
        return this.controllerConnectionType;
    }

    public final int component25() {
        return this.gameOsPlatform;
    }

    public final int component26() {
        return this.gameBuildId;
    }

    public final int component27() {
        return this.compatToolId;
    }

    public final String component28() {
        return this.compatToolCmd;
    }

    public final int component29() {
        return this.compatToolBuildId;
    }

    public final int component3() {
        return this.deprecatedGameIpAddress;
    }

    public final String component30() {
        return this.betaName;
    }

    public final int component31() {
        return this.dlcContext;
    }

    public final List<AppProcessInfo> component32() {
        return this.processIdList;
    }

    public final int component4() {
        return this.gamePort;
    }

    public final boolean component5() {
        return this.isSecure;
    }

    public final byte[] component6() {
        return this.token;
    }

    public final String component7() {
        return this.gameExtraInfo;
    }

    public final byte[] component8() {
        return this.gameDataBlob;
    }

    public final int component9() {
        return this.processId;
    }

    public final GamePlayedInfo copy(long j, long j2, int i, int i2, boolean z, byte[] token, String gameExtraInfo, byte[] bArr, int i3, int i4, int i5, int i6, String vrHmdVendor, String vrHmdModel, int i7, int i8, String primarySteamControllerSerial, int i9, int i10, long j3, int i11, int i12, InetAddress inetAddress, int i13, int i14, int i15, int i16, String compatToolCmd, int i17, String betaName, int i18, List<AppProcessInfo> processIdList) {
        Intrinsics.checkNotNullParameter(token, "token");
        Intrinsics.checkNotNullParameter(gameExtraInfo, "gameExtraInfo");
        Intrinsics.checkNotNullParameter(vrHmdVendor, "vrHmdVendor");
        Intrinsics.checkNotNullParameter(vrHmdModel, "vrHmdModel");
        Intrinsics.checkNotNullParameter(primarySteamControllerSerial, "primarySteamControllerSerial");
        Intrinsics.checkNotNullParameter(compatToolCmd, "compatToolCmd");
        Intrinsics.checkNotNullParameter(betaName, "betaName");
        Intrinsics.checkNotNullParameter(processIdList, "processIdList");
        return new GamePlayedInfo(j, j2, i, i2, z, token, gameExtraInfo, bArr, i3, i4, i5, i6, vrHmdVendor, vrHmdModel, i7, i8, primarySteamControllerSerial, i9, i10, j3, i11, i12, inetAddress, i13, i14, i15, i16, compatToolCmd, i17, betaName, i18, processIdList);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof GamePlayedInfo)) {
            return false;
        }
        GamePlayedInfo gamePlayedInfo = (GamePlayedInfo) obj;
        return this.steamIdGs == gamePlayedInfo.steamIdGs && this.gameId == gamePlayedInfo.gameId && this.deprecatedGameIpAddress == gamePlayedInfo.deprecatedGameIpAddress && this.gamePort == gamePlayedInfo.gamePort && this.isSecure == gamePlayedInfo.isSecure && Intrinsics.areEqual(this.token, gamePlayedInfo.token) && Intrinsics.areEqual(this.gameExtraInfo, gamePlayedInfo.gameExtraInfo) && Intrinsics.areEqual(this.gameDataBlob, gamePlayedInfo.gameDataBlob) && this.processId == gamePlayedInfo.processId && this.streamingProviderId == gamePlayedInfo.streamingProviderId && this.gameFlags == gamePlayedInfo.gameFlags && this.ownerId == gamePlayedInfo.ownerId && Intrinsics.areEqual(this.vrHmdVendor, gamePlayedInfo.vrHmdVendor) && Intrinsics.areEqual(this.vrHmdModel, gamePlayedInfo.vrHmdModel) && this.launchOptionType == gamePlayedInfo.launchOptionType && this.primaryControllerType == gamePlayedInfo.primaryControllerType && Intrinsics.areEqual(this.primarySteamControllerSerial, gamePlayedInfo.primarySteamControllerSerial) && this.totalSteamControllerCount == gamePlayedInfo.totalSteamControllerCount && this.totalNonSteamControllerCount == gamePlayedInfo.totalNonSteamControllerCount && this.controllerWorkshopFileId == gamePlayedInfo.controllerWorkshopFileId && this.launchSource == gamePlayedInfo.launchSource && this.vrHmdRuntime == gamePlayedInfo.vrHmdRuntime && Intrinsics.areEqual(this.gameIpAddress, gamePlayedInfo.gameIpAddress) && this.controllerConnectionType == gamePlayedInfo.controllerConnectionType && this.gameOsPlatform == gamePlayedInfo.gameOsPlatform && this.gameBuildId == gamePlayedInfo.gameBuildId && this.compatToolId == gamePlayedInfo.compatToolId && Intrinsics.areEqual(this.compatToolCmd, gamePlayedInfo.compatToolCmd) && this.compatToolBuildId == gamePlayedInfo.compatToolBuildId && Intrinsics.areEqual(this.betaName, gamePlayedInfo.betaName) && this.dlcContext == gamePlayedInfo.dlcContext && Intrinsics.areEqual(this.processIdList, gamePlayedInfo.processIdList);
    }

    public int hashCode() {
        int iHashCode = ((((((((((((Long.hashCode(this.steamIdGs) * 31) + Long.hashCode(this.gameId)) * 31) + Integer.hashCode(this.deprecatedGameIpAddress)) * 31) + Integer.hashCode(this.gamePort)) * 31) + Boolean.hashCode(this.isSecure)) * 31) + Arrays.hashCode(this.token)) * 31) + this.gameExtraInfo.hashCode()) * 31;
        byte[] bArr = this.gameDataBlob;
        int iHashCode2 = (((((((((((((((((((((((((((((iHashCode + (bArr == null ? 0 : Arrays.hashCode(bArr))) * 31) + Integer.hashCode(this.processId)) * 31) + Integer.hashCode(this.streamingProviderId)) * 31) + Integer.hashCode(this.gameFlags)) * 31) + Integer.hashCode(this.ownerId)) * 31) + this.vrHmdVendor.hashCode()) * 31) + this.vrHmdModel.hashCode()) * 31) + Integer.hashCode(this.launchOptionType)) * 31) + Integer.hashCode(this.primaryControllerType)) * 31) + this.primarySteamControllerSerial.hashCode()) * 31) + Integer.hashCode(this.totalSteamControllerCount)) * 31) + Integer.hashCode(this.totalNonSteamControllerCount)) * 31) + Long.hashCode(this.controllerWorkshopFileId)) * 31) + Integer.hashCode(this.launchSource)) * 31) + Integer.hashCode(this.vrHmdRuntime)) * 31;
        InetAddress inetAddress = this.gameIpAddress;
        return ((((((((((((((((((iHashCode2 + (inetAddress != null ? inetAddress.hashCode() : 0)) * 31) + Integer.hashCode(this.controllerConnectionType)) * 31) + Integer.hashCode(this.gameOsPlatform)) * 31) + Integer.hashCode(this.gameBuildId)) * 31) + Integer.hashCode(this.compatToolId)) * 31) + this.compatToolCmd.hashCode()) * 31) + Integer.hashCode(this.compatToolBuildId)) * 31) + this.betaName.hashCode()) * 31) + Integer.hashCode(this.dlcContext)) * 31) + this.processIdList.hashCode();
    }

    public String toString() {
        return "GamePlayedInfo(steamIdGs=" + this.steamIdGs + ", gameId=" + this.gameId + ", deprecatedGameIpAddress=" + this.deprecatedGameIpAddress + ", gamePort=" + this.gamePort + ", isSecure=" + this.isSecure + ", token=" + Arrays.toString(this.token) + ", gameExtraInfo=" + this.gameExtraInfo + ", gameDataBlob=" + Arrays.toString(this.gameDataBlob) + ", processId=" + this.processId + ", streamingProviderId=" + this.streamingProviderId + ", gameFlags=" + this.gameFlags + ", ownerId=" + this.ownerId + ", vrHmdVendor=" + this.vrHmdVendor + ", vrHmdModel=" + this.vrHmdModel + ", launchOptionType=" + this.launchOptionType + ", primaryControllerType=" + this.primaryControllerType + ", primarySteamControllerSerial=" + this.primarySteamControllerSerial + ", totalSteamControllerCount=" + this.totalSteamControllerCount + ", totalNonSteamControllerCount=" + this.totalNonSteamControllerCount + ", controllerWorkshopFileId=" + this.controllerWorkshopFileId + ", launchSource=" + this.launchSource + ", vrHmdRuntime=" + this.vrHmdRuntime + ", gameIpAddress=" + this.gameIpAddress + ", controllerConnectionType=" + this.controllerConnectionType + ", gameOsPlatform=" + this.gameOsPlatform + ", gameBuildId=" + this.gameBuildId + ", compatToolId=" + this.compatToolId + ", compatToolCmd=" + this.compatToolCmd + ", compatToolBuildId=" + this.compatToolBuildId + ", betaName=" + this.betaName + ", dlcContext=" + this.dlcContext + ", processIdList=" + this.processIdList + ")";
    }

    public GamePlayedInfo(long j, long j2, int i, int i2, boolean z, byte[] token, String gameExtraInfo, byte[] bArr, int i3, int i4, int i5, int i6, String vrHmdVendor, String vrHmdModel, int i7, int i8, String primarySteamControllerSerial, int i9, int i10, long j3, int i11, int i12, InetAddress inetAddress, int i13, int i14, int i15, int i16, String compatToolCmd, int i17, String betaName, int i18, List<AppProcessInfo> processIdList) {
        Intrinsics.checkNotNullParameter(token, "token");
        Intrinsics.checkNotNullParameter(gameExtraInfo, "gameExtraInfo");
        Intrinsics.checkNotNullParameter(vrHmdVendor, "vrHmdVendor");
        Intrinsics.checkNotNullParameter(vrHmdModel, "vrHmdModel");
        Intrinsics.checkNotNullParameter(primarySteamControllerSerial, "primarySteamControllerSerial");
        Intrinsics.checkNotNullParameter(compatToolCmd, "compatToolCmd");
        Intrinsics.checkNotNullParameter(betaName, "betaName");
        Intrinsics.checkNotNullParameter(processIdList, "processIdList");
        this.steamIdGs = j;
        this.gameId = j2;
        this.deprecatedGameIpAddress = i;
        this.gamePort = i2;
        this.isSecure = z;
        this.token = token;
        this.gameExtraInfo = gameExtraInfo;
        this.gameDataBlob = bArr;
        this.processId = i3;
        this.streamingProviderId = i4;
        this.gameFlags = i5;
        this.ownerId = i6;
        this.vrHmdVendor = vrHmdVendor;
        this.vrHmdModel = vrHmdModel;
        this.launchOptionType = i7;
        this.primaryControllerType = i8;
        this.primarySteamControllerSerial = primarySteamControllerSerial;
        this.totalSteamControllerCount = i9;
        this.totalNonSteamControllerCount = i10;
        this.controllerWorkshopFileId = j3;
        this.launchSource = i11;
        this.vrHmdRuntime = i12;
        this.gameIpAddress = inetAddress;
        this.controllerConnectionType = i13;
        this.gameOsPlatform = i14;
        this.gameBuildId = i15;
        this.compatToolId = i16;
        this.compatToolCmd = compatToolCmd;
        this.compatToolBuildId = i17;
        this.betaName = betaName;
        this.dlcContext = i18;
        this.processIdList = processIdList;
    }

    public /* synthetic */ GamePlayedInfo(long j, long j2, int i, int i2, boolean z, byte[] bArr, String str, byte[] bArr2, int i3, int i4, int i5, int i6, String str2, String str3, int i7, int i8, String str4, int i9, int i10, long j3, int i11, int i12, InetAddress inetAddress, int i13, int i14, int i15, int i16, String str5, int i17, String str6, int i18, List list, int i19, DefaultConstructorMarker defaultConstructorMarker) {
        this((i19 & 1) != 0 ? 0L : j, j2, (i19 & 4) != 0 ? 0 : i, (i19 & 8) != 0 ? 0 : i2, (i19 & 16) != 0 ? false : z, (i19 & 32) != 0 ? new byte[0] : bArr, (i19 & 64) != 0 ? "" : str, (i19 & 128) != 0 ? null : bArr2, i3, (i19 & 512) != 0 ? 0 : i4, (i19 & 1024) != 0 ? 0 : i5, i6, (i19 & 4096) != 0 ? "" : str2, (i19 & Enums.EProtoAppType.k_EAppTypeMusicAlbum_VALUE) != 0 ? "" : str3, (i19 & Enums.EProtoAppType.k_EAppTypeSeries_VALUE) != 0 ? 0 : i7, (32768 & i19) != 0 ? -1 : i8, (65536 & i19) != 0 ? "" : str4, (131072 & i19) != 0 ? 0 : i9, (262144 & i19) != 0 ? 0 : i10, (524288 & i19) != 0 ? 0L : j3, (1048576 & i19) != 0 ? 0 : i11, (2097152 & i19) != 0 ? 0 : i12, (4194304 & i19) != 0 ? null : inetAddress, (8388608 & i19) != 0 ? 0 : i13, (16777216 & i19) != 0 ? -1 : i14, i15, (67108864 & i19) != 0 ? 0 : i16, (134217728 & i19) != 0 ? "" : str5, (268435456 & i19) != 0 ? 0 : i17, (536870912 & i19) != 0 ? "" : str6, (1073741824 & i19) != 0 ? 0 : i18, (i19 & Enums.EProtoAppType.k_EAppTypeDepotOnly_VALUE) != 0 ? CollectionsKt__CollectionsKt.emptyList() : list);
    }

    public final long getSteamIdGs() {
        return this.steamIdGs;
    }

    public final long getGameId() {
        return this.gameId;
    }

    public final int getDeprecatedGameIpAddress() {
        return this.deprecatedGameIpAddress;
    }

    public final int getGamePort() {
        return this.gamePort;
    }

    public final boolean isSecure() {
        return this.isSecure;
    }

    public final byte[] getToken() {
        return this.token;
    }

    public final String getGameExtraInfo() {
        return this.gameExtraInfo;
    }

    public final byte[] getGameDataBlob() {
        return this.gameDataBlob;
    }

    public final int getProcessId() {
        return this.processId;
    }

    public final int getStreamingProviderId() {
        return this.streamingProviderId;
    }

    public final int getGameFlags() {
        return this.gameFlags;
    }

    public final int getOwnerId() {
        return this.ownerId;
    }

    public final String getVrHmdVendor() {
        return this.vrHmdVendor;
    }

    public final String getVrHmdModel() {
        return this.vrHmdModel;
    }

    public final int getLaunchOptionType() {
        return this.launchOptionType;
    }

    public final int getPrimaryControllerType() {
        return this.primaryControllerType;
    }

    public final String getPrimarySteamControllerSerial() {
        return this.primarySteamControllerSerial;
    }

    public final int getTotalSteamControllerCount() {
        return this.totalSteamControllerCount;
    }

    public final int getTotalNonSteamControllerCount() {
        return this.totalNonSteamControllerCount;
    }

    public final long getControllerWorkshopFileId() {
        return this.controllerWorkshopFileId;
    }

    public final int getLaunchSource() {
        return this.launchSource;
    }

    public final int getVrHmdRuntime() {
        return this.vrHmdRuntime;
    }

    public final InetAddress getGameIpAddress() {
        return this.gameIpAddress;
    }

    public final int getControllerConnectionType() {
        return this.controllerConnectionType;
    }

    public final int getGameOsPlatform() {
        return this.gameOsPlatform;
    }

    public final int getGameBuildId() {
        return this.gameBuildId;
    }

    public final int getCompatToolId() {
        return this.compatToolId;
    }

    public final String getCompatToolCmd() {
        return this.compatToolCmd;
    }

    public final int getCompatToolBuildId() {
        return this.compatToolBuildId;
    }

    public final String getBetaName() {
        return this.betaName;
    }

    public final int getDlcContext() {
        return this.dlcContext;
    }

    public final List<AppProcessInfo> getProcessIdList() {
        return this.processIdList;
    }
}
