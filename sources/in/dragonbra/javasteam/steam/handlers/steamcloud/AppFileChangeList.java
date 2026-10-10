package in.dragonbra.javasteam.steam.handlers.steamcloud;

import com.google.protobuf.ProtocolStringList;
import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesCloudSteamclient;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: AppFileChangeList.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class AppFileChangeList {
    private final long appBuildIDHwm;
    private final long currentChangeNumber;
    private final List<AppFileInfo> files;
    private final boolean isOnlyDelta;
    private final List<String> machineNames;
    private final List<String> pathPrefixes;

    public AppFileChangeList(SteammessagesCloudSteamclient.CCloud_GetAppFileChangelist_Response.Builder response) {
        Intrinsics.checkNotNullParameter(response, "response");
        this.currentChangeNumber = response.getCurrentChangeNumber();
        List<SteammessagesCloudSteamclient.CCloud_AppFileInfo> filesList = response.getFilesList();
        Intrinsics.checkNotNullExpressionValue(filesList, "getFilesList(...)");
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(filesList, 10));
        for (SteammessagesCloudSteamclient.CCloud_AppFileInfo cCloud_AppFileInfo : filesList) {
            Intrinsics.checkNotNull(cCloud_AppFileInfo);
            arrayList.add(new AppFileInfo(cCloud_AppFileInfo));
        }
        this.files = arrayList;
        this.isOnlyDelta = response.getIsOnlyDelta();
        ProtocolStringList pathPrefixesList = response.getPathPrefixesList();
        Intrinsics.checkNotNullExpressionValue(pathPrefixesList, "getPathPrefixesList(...)");
        this.pathPrefixes = pathPrefixesList;
        ProtocolStringList machineNamesList = response.getMachineNamesList();
        Intrinsics.checkNotNullExpressionValue(machineNamesList, "getMachineNamesList(...)");
        this.machineNames = machineNamesList;
        this.appBuildIDHwm = response.getAppBuildidHwm();
    }

    public final long getCurrentChangeNumber() {
        return this.currentChangeNumber;
    }

    public final List<AppFileInfo> getFiles() {
        return this.files;
    }

    public final boolean isOnlyDelta() {
        return this.isOnlyDelta;
    }

    public final List<String> getPathPrefixes() {
        return this.pathPrefixes;
    }

    public final List<String> getMachineNames() {
        return this.machineNames;
    }

    public final long getAppBuildIDHwm() {
        return this.appBuildIDHwm;
    }
}
