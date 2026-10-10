package in.dragonbra.javasteam.steam.handlers.steamcloud;

import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesCloudSteamclient;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: FileUploadInfo.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class FileUploadInfo {
    private final List<FileUploadBlockDetails> blockRequests;
    private final boolean encryptFile;

    public FileUploadInfo(SteammessagesCloudSteamclient.CCloud_ClientBeginFileUpload_Response.Builder response) {
        Intrinsics.checkNotNullParameter(response, "response");
        this.encryptFile = response.getEncryptFile();
        List<SteammessagesCloudSteamclient.ClientCloudFileUploadBlockDetails> blockRequestsList = response.getBlockRequestsList();
        Intrinsics.checkNotNullExpressionValue(blockRequestsList, "getBlockRequestsList(...)");
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(blockRequestsList, 10));
        for (SteammessagesCloudSteamclient.ClientCloudFileUploadBlockDetails clientCloudFileUploadBlockDetails : blockRequestsList) {
            Intrinsics.checkNotNull(clientCloudFileUploadBlockDetails);
            arrayList.add(new FileUploadBlockDetails(clientCloudFileUploadBlockDetails));
        }
        this.blockRequests = arrayList;
    }

    public final boolean getEncryptFile() {
        return this.encryptFile;
    }

    public final List<FileUploadBlockDetails> getBlockRequests() {
        return this.blockRequests;
    }
}
