package in.dragonbra.javasteam.steam.handlers.steamcloud;

import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesCloudSteamclient;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: AppUploadBatchResponse.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class AppUploadBatchResponse {
    private final long appChangeNumber;
    private final long batchID;

    public AppUploadBatchResponse(SteammessagesCloudSteamclient.CCloud_BeginAppUploadBatch_Response.Builder response) {
        Intrinsics.checkNotNullParameter(response, "response");
        this.batchID = response.getBatchId();
        this.appChangeNumber = response.getAppChangeNumber();
    }

    public final long getBatchID() {
        return this.batchID;
    }

    public final long getAppChangeNumber() {
        return this.appChangeNumber;
    }
}
