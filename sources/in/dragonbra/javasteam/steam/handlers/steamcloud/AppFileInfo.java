package in.dragonbra.javasteam.steam.handlers.steamcloud;

import in.dragonbra.javasteam.protobufs.steamclient.Enums;
import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesCloudSteamclient;
import java.util.Date;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: AppFileInfo.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class AppFileInfo {
    private final String filename;
    private final int machineNameIndex;
    private final int pathPrefixIndex;
    private final Enums.ECloudStoragePersistState persistState;
    private final int platformsToSync;
    private final int rawFileSize;
    private final byte[] shaFile;
    private final Date timestamp;

    public AppFileInfo(SteammessagesCloudSteamclient.CCloud_AppFileInfo response) {
        Intrinsics.checkNotNullParameter(response, "response");
        String fileName = response.getFileName();
        Intrinsics.checkNotNullExpressionValue(fileName, "getFileName(...)");
        this.filename = fileName;
        byte[] byteArray = response.getShaFile().toByteArray();
        Intrinsics.checkNotNullExpressionValue(byteArray, "toByteArray(...)");
        this.shaFile = byteArray;
        this.timestamp = new Date(response.getTimeStamp() * 1000);
        this.rawFileSize = response.getRawFileSize();
        Enums.ECloudStoragePersistState persistState = response.getPersistState();
        Intrinsics.checkNotNullExpressionValue(persistState, "getPersistState(...)");
        this.persistState = persistState;
        this.platformsToSync = response.getPlatformsToSync();
        this.pathPrefixIndex = response.getPathPrefixIndex();
        this.machineNameIndex = response.getMachineNameIndex();
    }

    public final String getFilename() {
        return this.filename;
    }

    public final byte[] getShaFile() {
        return this.shaFile;
    }

    public final Date getTimestamp() {
        return this.timestamp;
    }

    public final int getRawFileSize() {
        return this.rawFileSize;
    }

    public final Enums.ECloudStoragePersistState getPersistState() {
        return this.persistState;
    }

    public final int getPlatformsToSync() {
        return this.platformsToSync;
    }

    public final int getPathPrefixIndex() {
        return this.pathPrefixIndex;
    }

    public final int getMachineNameIndex() {
        return this.machineNameIndex;
    }
}
