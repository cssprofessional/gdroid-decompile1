package in.dragonbra.javasteam.steam.handlers.steamcloud;

import com.google.protobuf.ByteString;
import in.dragonbra.javasteam.base.ClientMsgProtobuf;
import in.dragonbra.javasteam.base.IPacketMsg;
import in.dragonbra.javasteam.enums.EMsg;
import in.dragonbra.javasteam.enums.EOSType;
import in.dragonbra.javasteam.enums.EPlatformType;
import in.dragonbra.javasteam.enums.EResult;
import in.dragonbra.javasteam.enums.ESteamRealm;
import in.dragonbra.javasteam.protobufs.steamclient.Enums;
import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientObjects;
import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientmetricsSteamclient;
import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin;
import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUfs;
import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesCloudSteamclient;
import in.dragonbra.javasteam.rpc.service.ClientMetrics;
import in.dragonbra.javasteam.rpc.service.Cloud;
import in.dragonbra.javasteam.steam.handlers.ClientMsgHandler;
import in.dragonbra.javasteam.steam.handlers.steamcloud.callback.ShareFileCallback;
import in.dragonbra.javasteam.steam.handlers.steamcloud.callback.SingleFileInfoCallback;
import in.dragonbra.javasteam.steam.handlers.steamcloud.callback.UGCDetailsCallback;
import in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.SteamUnifiedMessages;
import in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.callback.ServiceMethodResponse;
import in.dragonbra.javasteam.steam.steamclient.callbackmgr.CallbackMsg;
import in.dragonbra.javasteam.types.AsyncJobSingle;
import in.dragonbra.javasteam.types.UGCHandle;
import in.dragonbra.javasteam.util.HardwareUtils;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.concurrent.CompletableFuture;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SpillingKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.future.FutureKt;
import org.bouncycastle.pqc.crypto.crystals.dilithium.DilithiumEngine;

/* JADX INFO: compiled from: SteamCloud.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class SteamCloud extends ClientMsgHandler {
    public static final Companion Companion = new Companion(null);
    private final Lazy cloudService$delegate = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: in.dragonbra.javasteam.steam.handlers.steamcloud.SteamCloud$$ExternalSyntheticLambda0
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return SteamCloud.cloudService_delegate$lambda$0(this.f$0);
        }
    });
    private final Lazy clientMetrics$delegate = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: in.dragonbra.javasteam.steam.handlers.steamcloud.SteamCloud$$ExternalSyntheticLambda1
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return SteamCloud.clientMetrics_delegate$lambda$0(this.f$0);
        }
    });

    public final void appCloudSyncStats(int i, EPlatformType platformType, boolean z, long j, long j2, long j3, long j4, int i2) {
        Intrinsics.checkNotNullParameter(platformType, "platformType");
        appCloudSyncStats$default(this, i, platformType, false, z, 0, 0, 0, 0L, 0L, j, j2, j3, 0L, 0L, 0L, j4, 0L, 0L, 0L, 0, i2, 1012212, null);
    }

    public final void appCloudSyncStats(int i, EPlatformType platformType, boolean z, boolean z2, int i2, int i3, int i4, long j, long j2, long j3, long j4, int i5) {
        Intrinsics.checkNotNullParameter(platformType, "platformType");
        appCloudSyncStats$default(this, i, platformType, z, z2, i2, i3, i4, 0L, 0L, j, j2, j3, 0L, 0L, 0L, j4, 0L, 0L, 0L, 0, i5, 1012096, null);
    }

    public final void appCloudSyncStats(int i, EPlatformType platformType, boolean z, boolean z2, int i2, int i3, int i4, long j, long j2, long j3, long j4, long j5, int i5) {
        Intrinsics.checkNotNullParameter(platformType, "platformType");
        appCloudSyncStats$default(this, i, platformType, z, z2, i2, i3, i4, j, 0L, j2, j3, j4, 0L, 0L, 0L, j5, 0L, 0L, 0L, 0, i5, 1011968, null);
    }

    public final void appCloudSyncStats(int i, EPlatformType platformType, boolean z, boolean z2, int i2, int i3, int i4, long j, long j2, long j3, long j4, long j5, long j6, int i5) {
        Intrinsics.checkNotNullParameter(platformType, "platformType");
        appCloudSyncStats$default(this, i, platformType, z, z2, i2, i3, i4, j, j2, j3, j4, j5, 0L, 0L, 0L, j6, 0L, 0L, 0L, 0, i5, 1011712, null);
    }

    public final void appCloudSyncStats(int i, EPlatformType platformType, boolean z, boolean z2, int i2, int i3, int i4, long j, long j2, long j3, long j4, long j5, long j6, long j7, int i5) {
        Intrinsics.checkNotNullParameter(platformType, "platformType");
        appCloudSyncStats$default(this, i, platformType, z, z2, i2, i3, i4, j, j2, j3, j4, j5, j6, 0L, 0L, j7, 0L, 0L, 0L, 0, i5, 1007616, null);
    }

    public final void appCloudSyncStats(int i, EPlatformType platformType, boolean z, boolean z2, int i2, int i3, int i4, long j, long j2, long j3, long j4, long j5, long j6, long j7, long j8, int i5) {
        Intrinsics.checkNotNullParameter(platformType, "platformType");
        appCloudSyncStats$default(this, i, platformType, z, z2, i2, i3, i4, j, j2, j3, j4, j5, j6, j7, 0L, j8, 0L, 0L, 0L, 0, i5, 999424, null);
    }

    public final void appCloudSyncStats(int i, EPlatformType platformType, boolean z, boolean z2, int i2, int i3, int i4, long j, long j2, long j3, long j4, long j5, long j6, long j7, long j8, long j9, int i5) {
        Intrinsics.checkNotNullParameter(platformType, "platformType");
        appCloudSyncStats$default(this, i, platformType, z, z2, i2, i3, i4, j, j2, j3, j4, j5, j6, j7, j8, j9, 0L, 0L, 0L, 0, i5, 983040, null);
    }

    public final void appCloudSyncStats(int i, EPlatformType platformType, boolean z, boolean z2, int i2, int i3, int i4, long j, long j2, long j3, long j4, long j5, long j6, long j7, long j8, long j9, long j10, int i5) {
        Intrinsics.checkNotNullParameter(platformType, "platformType");
        appCloudSyncStats$default(this, i, platformType, z, z2, i2, i3, i4, j, j2, j3, j4, j5, j6, j7, j8, j9, j10, 0L, 0L, 0, i5, 917504, null);
    }

    public final void appCloudSyncStats(int i, EPlatformType platformType, boolean z, boolean z2, int i2, int i3, int i4, long j, long j2, long j3, long j4, long j5, long j6, long j7, long j8, long j9, long j10, long j11, int i5) {
        Intrinsics.checkNotNullParameter(platformType, "platformType");
        appCloudSyncStats$default(this, i, platformType, z, z2, i2, i3, i4, j, j2, j3, j4, j5, j6, j7, j8, j9, j10, j11, 0L, 0, i5, 786432, null);
    }

    public final void appCloudSyncStats(int i, EPlatformType platformType, boolean z, boolean z2, int i2, int i3, int i4, long j, long j2, long j3, long j4, long j5, long j6, long j7, long j8, long j9, long j10, long j11, long j12, int i5) {
        Intrinsics.checkNotNullParameter(platformType, "platformType");
        appCloudSyncStats$default(this, i, platformType, z, z2, i2, i3, i4, j, j2, j3, j4, j5, j6, j7, j8, j9, j10, j11, j12, 0, i5, 524288, null);
    }

    public final void appCloudSyncStats(int i, EPlatformType platformType, boolean z, boolean z2, int i2, int i3, long j, long j2, long j3, long j4, int i4) {
        Intrinsics.checkNotNullParameter(platformType, "platformType");
        appCloudSyncStats$default(this, i, platformType, z, z2, i2, i3, 0, 0L, 0L, j, j2, j3, 0L, 0L, 0L, j4, 0L, 0L, 0L, 0, i4, 1012160, null);
    }

    public final void appCloudSyncStats(int i, EPlatformType platformType, boolean z, boolean z2, int i2, long j, long j2, long j3, long j4, int i3) {
        Intrinsics.checkNotNullParameter(platformType, "platformType");
        appCloudSyncStats$default(this, i, platformType, z, z2, i2, 0, 0, 0L, 0L, j, j2, j3, 0L, 0L, 0L, j4, 0L, 0L, 0L, 0, i3, 1012192, null);
    }

    public final void appCloudSyncStats(int i, EPlatformType platformType, boolean z, boolean z2, long j, long j2, long j3, long j4, int i2) {
        Intrinsics.checkNotNullParameter(platformType, "platformType");
        appCloudSyncStats$default(this, i, platformType, z, z2, 0, 0, 0, 0L, 0L, j, j2, j3, 0L, 0L, 0L, j4, 0L, 0L, 0L, 0, i2, 1012208, null);
    }

    public final CompletableFuture<AppUploadBatchResponse> beginAppUploadBatch(int i, long j, long j2) {
        return beginAppUploadBatch$default(this, i, null, null, null, j, j2, null, 78, null);
    }

    public final CompletableFuture<AppUploadBatchResponse> beginAppUploadBatch(int i, String machineName, long j, long j2) {
        Intrinsics.checkNotNullParameter(machineName, "machineName");
        return beginAppUploadBatch$default(this, i, machineName, null, null, j, j2, null, 76, null);
    }

    public final CompletableFuture<AppUploadBatchResponse> beginAppUploadBatch(int i, String machineName, List<String> filesToUpload, long j, long j2) {
        Intrinsics.checkNotNullParameter(machineName, "machineName");
        Intrinsics.checkNotNullParameter(filesToUpload, "filesToUpload");
        return beginAppUploadBatch$default(this, i, machineName, filesToUpload, null, j, j2, null, 72, null);
    }

    public final CompletableFuture<AppUploadBatchResponse> beginAppUploadBatch(int i, String machineName, List<String> filesToUpload, List<String> filesToDelete, long j, long j2) {
        Intrinsics.checkNotNullParameter(machineName, "machineName");
        Intrinsics.checkNotNullParameter(filesToUpload, "filesToUpload");
        Intrinsics.checkNotNullParameter(filesToDelete, "filesToDelete");
        return beginAppUploadBatch$default(this, i, machineName, filesToUpload, filesToDelete, j, j2, null, 64, null);
    }

    public final CompletableFuture<FileDownloadInfo> clientFileDownload(int i, String fileName) {
        Intrinsics.checkNotNullParameter(fileName, "fileName");
        return clientFileDownload$default(this, i, fileName, null, false, null, 28, null);
    }

    public final CompletableFuture<FileDownloadInfo> clientFileDownload(int i, String fileName, ESteamRealm realm) {
        Intrinsics.checkNotNullParameter(fileName, "fileName");
        Intrinsics.checkNotNullParameter(realm, "realm");
        return clientFileDownload$default(this, i, fileName, realm, false, null, 24, null);
    }

    public final CompletableFuture<FileDownloadInfo> clientFileDownload(int i, String fileName, ESteamRealm realm, boolean z) {
        Intrinsics.checkNotNullParameter(fileName, "fileName");
        Intrinsics.checkNotNullParameter(realm, "realm");
        return clientFileDownload$default(this, i, fileName, realm, z, null, 16, null);
    }

    public final CompletableFuture<Boolean> commitFileUpload(boolean z, int i, byte[] fileSha, String filename) {
        Intrinsics.checkNotNullParameter(fileSha, "fileSha");
        Intrinsics.checkNotNullParameter(filename, "filename");
        return commitFileUpload$default(this, z, i, fileSha, filename, null, 16, null);
    }

    public final CompletableFuture<Unit> completeAppUploadBatch(int i, long j) {
        return completeAppUploadBatch$default(this, i, j, null, null, 12, null);
    }

    public final CompletableFuture<Unit> completeAppUploadBatch(int i, long j, EResult batchEResult) {
        Intrinsics.checkNotNullParameter(batchEResult, "batchEResult");
        return completeAppUploadBatch$default(this, i, j, batchEResult, null, 8, null);
    }

    public final void externalStorageTransferReport(String host, String path, boolean z, boolean z2, int i, long j, long j2, int i2, boolean z3, boolean z4, boolean z5, int i3, int i4, int i5, int i6) {
        Intrinsics.checkNotNullParameter(host, "host");
        Intrinsics.checkNotNullParameter(path, "path");
        externalStorageTransferReport$default(this, host, path, z, z2, i, j, j2, i2, 0, z3, z4, z5, i3, i4, i5, i6, 256, null);
    }

    public final CompletableFuture<AppFileChangeList> getAppFileListChange(int i) {
        return getAppFileListChange$default(this, i, 0L, null, 6, null);
    }

    public final CompletableFuture<AppFileChangeList> getAppFileListChange(int i, long j) {
        return getAppFileListChange$default(this, i, j, null, 4, null);
    }

    public final CompletableFuture<List<PendingRemoteOperation>> signalAppLaunchIntent(int i, long j, EOSType osType) {
        Intrinsics.checkNotNullParameter(osType, "osType");
        return signalAppLaunchIntent$default(this, i, j, null, null, osType, null, null, SteammessagesClientserverLogin.CMsgClientLogon.ACCESS_TOKEN_FIELD_NUMBER, null);
    }

    public final CompletableFuture<List<PendingRemoteOperation>> signalAppLaunchIntent(int i, long j, String machineName, EOSType osType) {
        Intrinsics.checkNotNullParameter(machineName, "machineName");
        Intrinsics.checkNotNullParameter(osType, "osType");
        return signalAppLaunchIntent$default(this, i, j, machineName, null, osType, null, null, SteammessagesClientserverLogin.CMsgClientLogon.PRIORITY_REASON_FIELD_NUMBER, null);
    }

    public final CompletableFuture<List<PendingRemoteOperation>> signalAppLaunchIntent(int i, long j, String machineName, Boolean bool, EOSType osType) {
        Intrinsics.checkNotNullParameter(machineName, "machineName");
        Intrinsics.checkNotNullParameter(osType, "osType");
        return signalAppLaunchIntent$default(this, i, j, machineName, bool, osType, null, null, 96, null);
    }

    public final CompletableFuture<List<PendingRemoteOperation>> signalAppLaunchIntent(int i, long j, String machineName, Boolean bool, EOSType osType, Enums.EBluetoothDeviceType deviceType) {
        Intrinsics.checkNotNullParameter(machineName, "machineName");
        Intrinsics.checkNotNullParameter(osType, "osType");
        Intrinsics.checkNotNullParameter(deviceType, "deviceType");
        return signalAppLaunchIntent$default(this, i, j, machineName, bool, osType, deviceType, null, 64, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Cloud getCloudService() {
        return (Cloud) this.cloudService$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Cloud cloudService_delegate$lambda$0(SteamCloud steamCloud) {
        SteamUnifiedMessages steamUnifiedMessages = (SteamUnifiedMessages) steamCloud.getClient().getHandler(SteamUnifiedMessages.class);
        if (steamUnifiedMessages != null) {
            return (Cloud) steamUnifiedMessages.createService(Cloud.class);
        }
        throw new NullPointerException("Unable to get SteamUnifiedMessages handler");
    }

    private final ClientMetrics getClientMetrics() {
        return (ClientMetrics) this.clientMetrics$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ClientMetrics clientMetrics_delegate$lambda$0(SteamCloud steamCloud) {
        SteamUnifiedMessages steamUnifiedMessages = (SteamUnifiedMessages) steamCloud.getClient().getHandler(SteamUnifiedMessages.class);
        if (steamUnifiedMessages != null) {
            return (ClientMetrics) steamUnifiedMessages.createService(ClientMetrics.class);
        }
        throw new NullPointerException("Unable to get SteamUnifiedMessages handler");
    }

    public final AsyncJobSingle<UGCDetailsCallback> requestUGCDetails(UGCHandle ugcId) {
        Intrinsics.checkNotNullParameter(ugcId, "ugcId");
        ClientMsgProtobuf clientMsgProtobuf = new ClientMsgProtobuf(SteammessagesClientserverUfs.CMsgClientUFSGetUGCDetails.class, EMsg.ClientUFSGetUGCDetails, 0, 4, null);
        clientMsgProtobuf.setSourceJobID(getClient().getNextJobID());
        ((SteammessagesClientserverUfs.CMsgClientUFSGetUGCDetails.Builder) clientMsgProtobuf.getBody()).setHcontent(ugcId.getValue());
        getClient().send(clientMsgProtobuf);
        return new AsyncJobSingle<>(getClient(), clientMsgProtobuf.getSourceJobID());
    }

    public final AsyncJobSingle<SingleFileInfoCallback> getSingleFileInfo(int i, String filename) {
        Intrinsics.checkNotNullParameter(filename, "filename");
        ClientMsgProtobuf clientMsgProtobuf = new ClientMsgProtobuf(SteammessagesClientserverUfs.CMsgClientUFSGetSingleFileInfo.class, EMsg.ClientUFSGetSingleFileInfo, 0, 4, null);
        clientMsgProtobuf.setSourceJobID(getClient().getNextJobID());
        ((SteammessagesClientserverUfs.CMsgClientUFSGetSingleFileInfo.Builder) clientMsgProtobuf.getBody()).setAppId(i);
        ((SteammessagesClientserverUfs.CMsgClientUFSGetSingleFileInfo.Builder) clientMsgProtobuf.getBody()).setFileName(filename);
        getClient().send(clientMsgProtobuf);
        return new AsyncJobSingle<>(getClient(), clientMsgProtobuf.getSourceJobID());
    }

    public final AsyncJobSingle<ShareFileCallback> shareFile(int i, String filename) {
        Intrinsics.checkNotNullParameter(filename, "filename");
        ClientMsgProtobuf clientMsgProtobuf = new ClientMsgProtobuf(SteammessagesClientserverUfs.CMsgClientUFSShareFile.class, EMsg.ClientUFSShareFile, 0, 4, null);
        clientMsgProtobuf.setSourceJobID(getClient().getNextJobID());
        ((SteammessagesClientserverUfs.CMsgClientUFSShareFile.Builder) clientMsgProtobuf.getBody()).setAppId(i);
        ((SteammessagesClientserverUfs.CMsgClientUFSShareFile.Builder) clientMsgProtobuf.getBody()).setFileName(filename);
        getClient().send(clientMsgProtobuf);
        return new AsyncJobSingle<>(getClient(), clientMsgProtobuf.getSourceJobID());
    }

    /* JADX INFO: renamed from: in.dragonbra.javasteam.steam.handlers.steamcloud.SteamCloud$getAppFileListChange$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: SteamCloud.kt */
    @DebugMetadata(c = "in.dragonbra.javasteam.steam.handlers.steamcloud.SteamCloud$getAppFileListChange$1", f = "SteamCloud.kt", l = {151}, m = "invokeSuspend", v = 1)
    public static final class C00251 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super AppFileChangeList>, Object> {
        final /* synthetic */ int $appId;
        final /* synthetic */ long $syncedChangeNumber;
        Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C00251(int i, long j, Continuation<? super C00251> continuation) {
            super(2, continuation);
            this.$appId = i;
            this.$syncedChangeNumber = j;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return SteamCloud.this.new C00251(this.$appId, this.$syncedChangeNumber, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super AppFileChangeList> continuation) {
            return ((C00251) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                SteammessagesCloudSteamclient.CCloud_GetAppFileChangelist_Request.Builder builderNewBuilder = SteammessagesCloudSteamclient.CCloud_GetAppFileChangelist_Request.newBuilder();
                int i2 = this.$appId;
                long j = this.$syncedChangeNumber;
                builderNewBuilder.setAppid(i2);
                builderNewBuilder.setSyncedChangeNumber(j);
                Cloud cloudService = SteamCloud.this.getCloudService();
                SteammessagesCloudSteamclient.CCloud_GetAppFileChangelist_Request cCloud_GetAppFileChangelist_RequestBuild = builderNewBuilder.build();
                Intrinsics.checkNotNullExpressionValue(cCloud_GetAppFileChangelist_RequestBuild, "build(...)");
                AsyncJobSingle<ServiceMethodResponse<SteammessagesCloudSteamclient.CCloud_GetAppFileChangelist_Response.Builder>> appFileChangelist = cloudService.getAppFileChangelist(cCloud_GetAppFileChangelist_RequestBuild);
                this.L$0 = SpillingKt.nullOutSpilledVariable(builderNewBuilder);
                this.label = 1;
                obj = appFileChangelist.await(this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            return new AppFileChangeList((SteammessagesCloudSteamclient.CCloud_GetAppFileChangelist_Response.Builder) ((ServiceMethodResponse) obj).getBody());
        }
    }

    public static /* synthetic */ CompletableFuture getAppFileListChange$default(SteamCloud steamCloud, int i, long j, CoroutineScope coroutineScope, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            j = 0;
        }
        if ((i2 & 4) != 0) {
            coroutineScope = CoroutineScopeKt.CoroutineScope(Dispatchers.getIO());
        }
        return steamCloud.getAppFileListChange(i, j, coroutineScope);
    }

    public final CompletableFuture<AppFileChangeList> getAppFileListChange(int i, long j, CoroutineScope parentScope) {
        Intrinsics.checkNotNullParameter(parentScope, "parentScope");
        return FutureKt.future$default(parentScope, null, null, new C00251(i, j, null), 3, null);
    }

    public static /* synthetic */ CompletableFuture clientFileDownload$default(SteamCloud steamCloud, int i, String str, ESteamRealm eSteamRealm, boolean z, CoroutineScope coroutineScope, int i2, Object obj) {
        if ((i2 & 4) != 0) {
            eSteamRealm = ESteamRealm.SteamGlobal;
        }
        ESteamRealm eSteamRealm2 = eSteamRealm;
        if ((i2 & 8) != 0) {
            z = false;
        }
        boolean z2 = z;
        if ((i2 & 16) != 0) {
            coroutineScope = CoroutineScopeKt.CoroutineScope(Dispatchers.getIO());
        }
        return steamCloud.clientFileDownload(i, str, eSteamRealm2, z2, coroutineScope);
    }

    /* JADX INFO: renamed from: in.dragonbra.javasteam.steam.handlers.steamcloud.SteamCloud$clientFileDownload$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: SteamCloud.kt */
    @DebugMetadata(c = "in.dragonbra.javasteam.steam.handlers.steamcloud.SteamCloud$clientFileDownload$1", f = "SteamCloud.kt", l = {181}, m = "invokeSuspend", v = 1)
    public static final class C00221 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super FileDownloadInfo>, Object> {
        final /* synthetic */ int $appId;
        final /* synthetic */ String $fileName;
        final /* synthetic */ boolean $forceProxy;
        final /* synthetic */ ESteamRealm $realm;
        Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C00221(int i, String str, ESteamRealm eSteamRealm, boolean z, Continuation<? super C00221> continuation) {
            super(2, continuation);
            this.$appId = i;
            this.$fileName = str;
            this.$realm = eSteamRealm;
            this.$forceProxy = z;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return SteamCloud.this.new C00221(this.$appId, this.$fileName, this.$realm, this.$forceProxy, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super FileDownloadInfo> continuation) {
            return ((C00221) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                SteammessagesCloudSteamclient.CCloud_ClientFileDownload_Request.Builder builderNewBuilder = SteammessagesCloudSteamclient.CCloud_ClientFileDownload_Request.newBuilder();
                int i2 = this.$appId;
                String str = this.$fileName;
                ESteamRealm eSteamRealm = this.$realm;
                boolean z = this.$forceProxy;
                builderNewBuilder.setAppid(i2);
                builderNewBuilder.setFilename(str);
                builderNewBuilder.setRealm(eSteamRealm.code());
                builderNewBuilder.setForceProxy(z);
                Cloud cloudService = SteamCloud.this.getCloudService();
                SteammessagesCloudSteamclient.CCloud_ClientFileDownload_Request cCloud_ClientFileDownload_RequestBuild = builderNewBuilder.build();
                Intrinsics.checkNotNullExpressionValue(cCloud_ClientFileDownload_RequestBuild, "build(...)");
                AsyncJobSingle<ServiceMethodResponse<SteammessagesCloudSteamclient.CCloud_ClientFileDownload_Response.Builder>> asyncJobSingleClientFileDownload = cloudService.clientFileDownload(cCloud_ClientFileDownload_RequestBuild);
                this.L$0 = SpillingKt.nullOutSpilledVariable(builderNewBuilder);
                this.label = 1;
                obj = asyncJobSingleClientFileDownload.await(this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            return new FileDownloadInfo((SteammessagesCloudSteamclient.CCloud_ClientFileDownload_Response.Builder) ((ServiceMethodResponse) obj).getBody());
        }
    }

    public final CompletableFuture<FileDownloadInfo> clientFileDownload(int i, String fileName, ESteamRealm realm, boolean z, CoroutineScope parentScope) {
        Intrinsics.checkNotNullParameter(fileName, "fileName");
        Intrinsics.checkNotNullParameter(realm, "realm");
        Intrinsics.checkNotNullParameter(parentScope, "parentScope");
        return FutureKt.future$default(parentScope, null, null, new C00221(i, fileName, realm, z, null), 3, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ CompletableFuture beginAppUploadBatch$default(SteamCloud steamCloud, int i, String str, List list, List list2, long j, long j2, CoroutineScope coroutineScope, int i2, Object obj) {
        String str2;
        if ((i2 & 2) != 0) {
            String machineName = HardwareUtils.getMachineName();
            Intrinsics.checkNotNullExpressionValue(machineName, "getMachineName(...)");
            str2 = machineName;
        } else {
            str2 = str;
        }
        return steamCloud.beginAppUploadBatch(i, str2, (i2 & 4) != 0 ? CollectionsKt__CollectionsKt.emptyList() : list, (i2 & 8) != 0 ? CollectionsKt__CollectionsKt.emptyList() : list2, j, j2, (i2 & 64) != 0 ? CoroutineScopeKt.CoroutineScope(Dispatchers.getIO()) : coroutineScope);
    }

    /* JADX INFO: renamed from: in.dragonbra.javasteam.steam.handlers.steamcloud.SteamCloud$beginAppUploadBatch$1, reason: invalid class name */
    /* JADX INFO: compiled from: SteamCloud.kt */
    @DebugMetadata(c = "in.dragonbra.javasteam.steam.handlers.steamcloud.SteamCloud$beginAppUploadBatch$1", f = "SteamCloud.kt", l = {217}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super AppUploadBatchResponse>, Object> {
        final /* synthetic */ long $appBuildId;
        final /* synthetic */ int $appId;
        final /* synthetic */ long $clientId;
        final /* synthetic */ List<String> $filesToDelete;
        final /* synthetic */ List<String> $filesToUpload;
        final /* synthetic */ String $machineName;
        Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(int i, String str, List<String> list, List<String> list2, long j, long j2, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$appId = i;
            this.$machineName = str;
            this.$filesToUpload = list;
            this.$filesToDelete = list2;
            this.$clientId = j;
            this.$appBuildId = j2;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return SteamCloud.this.new AnonymousClass1(this.$appId, this.$machineName, this.$filesToUpload, this.$filesToDelete, this.$clientId, this.$appBuildId, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super AppUploadBatchResponse> continuation) {
            return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                SteammessagesCloudSteamclient.CCloud_BeginAppUploadBatch_Request.Builder builderNewBuilder = SteammessagesCloudSteamclient.CCloud_BeginAppUploadBatch_Request.newBuilder();
                int i2 = this.$appId;
                String str = this.$machineName;
                List<String> list = this.$filesToUpload;
                List<String> list2 = this.$filesToDelete;
                long j = this.$clientId;
                long j2 = this.$appBuildId;
                builderNewBuilder.setAppid(i2);
                builderNewBuilder.setMachineName(str);
                builderNewBuilder.addAllFilesToUpload(list);
                builderNewBuilder.addAllFilesToDelete(list2);
                builderNewBuilder.setClientId(j);
                builderNewBuilder.setAppBuildId(j2);
                Cloud cloudService = SteamCloud.this.getCloudService();
                SteammessagesCloudSteamclient.CCloud_BeginAppUploadBatch_Request cCloud_BeginAppUploadBatch_RequestBuild = builderNewBuilder.build();
                Intrinsics.checkNotNullExpressionValue(cCloud_BeginAppUploadBatch_RequestBuild, "build(...)");
                AsyncJobSingle<ServiceMethodResponse<SteammessagesCloudSteamclient.CCloud_BeginAppUploadBatch_Response.Builder>> asyncJobSingleBeginAppUploadBatch = cloudService.beginAppUploadBatch(cCloud_BeginAppUploadBatch_RequestBuild);
                this.L$0 = SpillingKt.nullOutSpilledVariable(builderNewBuilder);
                this.label = 1;
                obj = asyncJobSingleBeginAppUploadBatch.await(this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            return new AppUploadBatchResponse((SteammessagesCloudSteamclient.CCloud_BeginAppUploadBatch_Response.Builder) ((ServiceMethodResponse) obj).getBody());
        }
    }

    public final CompletableFuture<AppUploadBatchResponse> beginAppUploadBatch(int i, String machineName, List<String> filesToUpload, List<String> filesToDelete, long j, long j2, CoroutineScope parentScope) {
        Intrinsics.checkNotNullParameter(machineName, "machineName");
        Intrinsics.checkNotNullParameter(filesToUpload, "filesToUpload");
        Intrinsics.checkNotNullParameter(filesToDelete, "filesToDelete");
        Intrinsics.checkNotNullParameter(parentScope, "parentScope");
        return FutureKt.future$default(parentScope, null, null, new AnonymousClass1(i, machineName, filesToUpload, filesToDelete, j, j2, null), 3, null);
    }

    public static /* synthetic */ CompletableFuture beginFileUpload$default(SteamCloud steamCloud, int i, int i2, int i3, byte[] bArr, Date date, String str, int i4, int i5, boolean z, boolean z2, Integer num, long j, CoroutineScope coroutineScope, int i6, Object obj) {
        int iIntValue;
        int i7 = (i6 & 64) != 0 ? -1 : i4;
        if ((i6 & 128) != 0) {
            Integer cellID = steamCloud.getClient().getCellID();
            Intrinsics.checkNotNull(cellID);
            iIntValue = cellID.intValue();
        } else {
            iIntValue = i5;
        }
        return steamCloud.beginFileUpload(i, i2, i3, bArr, date, str, i7, iIntValue, (i6 & 256) != 0 ? true : z, (i6 & 512) != 0 ? false : z2, (i6 & 1024) != 0 ? null : num, j, (i6 & 4096) != 0 ? CoroutineScopeKt.CoroutineScope(Dispatchers.getIO()) : coroutineScope);
    }

    /* JADX INFO: renamed from: in.dragonbra.javasteam.steam.handlers.steamcloud.SteamCloud$beginFileUpload$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: SteamCloud.kt */
    @DebugMetadata(c = "in.dragonbra.javasteam.steam.handlers.steamcloud.SteamCloud$beginFileUpload$1", f = "SteamCloud.kt", l = {264}, m = "invokeSuspend", v = 1)
    public static final class C00211 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super FileUploadInfo>, Object> {
        final /* synthetic */ int $appId;
        final /* synthetic */ boolean $canEncrypt;
        final /* synthetic */ int $cellId;
        final /* synthetic */ Integer $deprecatedRealm;
        final /* synthetic */ byte[] $fileSha;
        final /* synthetic */ int $fileSize;
        final /* synthetic */ String $filename;
        final /* synthetic */ boolean $isSharedFile;
        final /* synthetic */ int $platformsToSync;
        final /* synthetic */ int $rawFileSize;
        final /* synthetic */ Date $timestamp;
        final /* synthetic */ long $uploadBatchId;
        Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C00211(int i, int i2, int i3, byte[] bArr, Date date, String str, int i4, int i5, boolean z, boolean z2, Integer num, long j, Continuation<? super C00211> continuation) {
            super(2, continuation);
            this.$appId = i;
            this.$fileSize = i2;
            this.$rawFileSize = i3;
            this.$fileSha = bArr;
            this.$timestamp = date;
            this.$filename = str;
            this.$platformsToSync = i4;
            this.$cellId = i5;
            this.$canEncrypt = z;
            this.$isSharedFile = z2;
            this.$deprecatedRealm = num;
            this.$uploadBatchId = j;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return SteamCloud.this.new C00211(this.$appId, this.$fileSize, this.$rawFileSize, this.$fileSha, this.$timestamp, this.$filename, this.$platformsToSync, this.$cellId, this.$canEncrypt, this.$isSharedFile, this.$deprecatedRealm, this.$uploadBatchId, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super FileUploadInfo> continuation) {
            return ((C00211) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            Object objAwait;
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                SteammessagesCloudSteamclient.CCloud_ClientBeginFileUpload_Request.Builder builderNewBuilder = SteammessagesCloudSteamclient.CCloud_ClientBeginFileUpload_Request.newBuilder();
                int i2 = this.$appId;
                int i3 = this.$fileSize;
                int i4 = this.$rawFileSize;
                byte[] bArr = this.$fileSha;
                Date date = this.$timestamp;
                String str = this.$filename;
                int i5 = this.$platformsToSync;
                int i6 = this.$cellId;
                boolean z = this.$canEncrypt;
                boolean z2 = this.$isSharedFile;
                Integer num = this.$deprecatedRealm;
                long j = this.$uploadBatchId;
                builderNewBuilder.setAppid(i2);
                builderNewBuilder.setFileSize(i3);
                builderNewBuilder.setRawFileSize(i4);
                builderNewBuilder.setFileSha(ByteString.copyFrom(bArr));
                builderNewBuilder.setTimeStamp(date.getTime() / 1000);
                builderNewBuilder.setFilename(str);
                builderNewBuilder.setPlatformsToSync(i5);
                builderNewBuilder.setCellId(i6);
                builderNewBuilder.setCanEncrypt(z);
                builderNewBuilder.setIsSharedFile(z2);
                if (num != null) {
                    builderNewBuilder.setDeprecatedRealm(num.intValue());
                }
                builderNewBuilder.setUploadBatchId(j);
                Cloud cloudService = SteamCloud.this.getCloudService();
                SteammessagesCloudSteamclient.CCloud_ClientBeginFileUpload_Request cCloud_ClientBeginFileUpload_RequestBuild = builderNewBuilder.build();
                Intrinsics.checkNotNullExpressionValue(cCloud_ClientBeginFileUpload_RequestBuild, "build(...)");
                AsyncJobSingle<ServiceMethodResponse<SteammessagesCloudSteamclient.CCloud_ClientBeginFileUpload_Response.Builder>> asyncJobSingleClientBeginFileUpload = cloudService.clientBeginFileUpload(cCloud_ClientBeginFileUpload_RequestBuild);
                this.L$0 = SpillingKt.nullOutSpilledVariable(builderNewBuilder);
                this.label = 1;
                objAwait = asyncJobSingleClientBeginFileUpload.await(this);
                if (objAwait == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
                objAwait = obj;
            }
            return new FileUploadInfo((SteammessagesCloudSteamclient.CCloud_ClientBeginFileUpload_Response.Builder) ((ServiceMethodResponse) objAwait).getBody());
        }
    }

    public final CompletableFuture<FileUploadInfo> beginFileUpload(int i, int i2, int i3, byte[] fileSha, Date timestamp, String filename, int i4, int i5, boolean z, boolean z2, Integer num, long j, CoroutineScope parentScope) {
        Intrinsics.checkNotNullParameter(fileSha, "fileSha");
        Intrinsics.checkNotNullParameter(timestamp, "timestamp");
        Intrinsics.checkNotNullParameter(filename, "filename");
        Intrinsics.checkNotNullParameter(parentScope, "parentScope");
        return FutureKt.future$default(parentScope, null, null, new C00211(i, i2, i3, fileSha, timestamp, filename, i4, i5, z, z2, num, j, null), 3, null);
    }

    /* JADX INFO: renamed from: in.dragonbra.javasteam.steam.handlers.steamcloud.SteamCloud$commitFileUpload$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: SteamCloud.kt */
    @DebugMetadata(c = "in.dragonbra.javasteam.steam.handlers.steamcloud.SteamCloud$commitFileUpload$1", f = "SteamCloud.kt", l = {294}, m = "invokeSuspend", v = 1)
    public static final class C00231 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Boolean>, Object> {
        final /* synthetic */ int $appId;
        final /* synthetic */ byte[] $fileSha;
        final /* synthetic */ String $filename;
        final /* synthetic */ boolean $transferSucceeded;
        Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C00231(boolean z, int i, byte[] bArr, String str, Continuation<? super C00231> continuation) {
            super(2, continuation);
            this.$transferSucceeded = z;
            this.$appId = i;
            this.$fileSha = bArr;
            this.$filename = str;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return SteamCloud.this.new C00231(this.$transferSucceeded, this.$appId, this.$fileSha, this.$filename, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Boolean> continuation) {
            return ((C00231) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                SteammessagesCloudSteamclient.CCloud_ClientCommitFileUpload_Request.Builder builderNewBuilder = SteammessagesCloudSteamclient.CCloud_ClientCommitFileUpload_Request.newBuilder();
                boolean z = this.$transferSucceeded;
                int i2 = this.$appId;
                byte[] bArr = this.$fileSha;
                String str = this.$filename;
                builderNewBuilder.setTransferSucceeded(z);
                builderNewBuilder.setAppid(i2);
                builderNewBuilder.setFileSha(ByteString.copyFrom(bArr));
                builderNewBuilder.setFilename(str);
                Cloud cloudService = SteamCloud.this.getCloudService();
                SteammessagesCloudSteamclient.CCloud_ClientCommitFileUpload_Request cCloud_ClientCommitFileUpload_RequestBuild = builderNewBuilder.build();
                Intrinsics.checkNotNullExpressionValue(cCloud_ClientCommitFileUpload_RequestBuild, "build(...)");
                AsyncJobSingle<ServiceMethodResponse<SteammessagesCloudSteamclient.CCloud_ClientCommitFileUpload_Response.Builder>> asyncJobSingleClientCommitFileUpload = cloudService.clientCommitFileUpload(cCloud_ClientCommitFileUpload_RequestBuild);
                this.L$0 = SpillingKt.nullOutSpilledVariable(builderNewBuilder);
                this.label = 1;
                obj = asyncJobSingleClientCommitFileUpload.await(this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            return Boxing.boxBoolean(((SteammessagesCloudSteamclient.CCloud_ClientCommitFileUpload_Response.Builder) ((ServiceMethodResponse) obj).getBody()).getFileCommitted());
        }
    }

    public static /* synthetic */ CompletableFuture commitFileUpload$default(SteamCloud steamCloud, boolean z, int i, byte[] bArr, String str, CoroutineScope coroutineScope, int i2, Object obj) {
        if ((i2 & 16) != 0) {
            coroutineScope = CoroutineScopeKt.CoroutineScope(Dispatchers.getIO());
        }
        return steamCloud.commitFileUpload(z, i, bArr, str, coroutineScope);
    }

    public final CompletableFuture<Boolean> commitFileUpload(boolean z, int i, byte[] fileSha, String filename, CoroutineScope parentScope) {
        Intrinsics.checkNotNullParameter(fileSha, "fileSha");
        Intrinsics.checkNotNullParameter(filename, "filename");
        Intrinsics.checkNotNullParameter(parentScope, "parentScope");
        return FutureKt.future$default(parentScope, null, null, new C00231(z, i, fileSha, filename, null), 3, null);
    }

    public static /* synthetic */ CompletableFuture completeAppUploadBatch$default(SteamCloud steamCloud, int i, long j, EResult eResult, CoroutineScope coroutineScope, int i2, Object obj) {
        if ((i2 & 4) != 0) {
            eResult = EResult.OK;
        }
        EResult eResult2 = eResult;
        if ((i2 & 8) != 0) {
            coroutineScope = CoroutineScopeKt.CoroutineScope(Dispatchers.getIO());
        }
        return steamCloud.completeAppUploadBatch(i, j, eResult2, coroutineScope);
    }

    /* JADX INFO: renamed from: in.dragonbra.javasteam.steam.handlers.steamcloud.SteamCloud$completeAppUploadBatch$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: SteamCloud.kt */
    @DebugMetadata(c = "in.dragonbra.javasteam.steam.handlers.steamcloud.SteamCloud$completeAppUploadBatch$1", f = "SteamCloud.kt", l = {DilithiumEngine.DilithiumPolyT1PackedBytes}, m = "invokeSuspend", v = 1)
    public static final class C00241 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ int $appId;
        final /* synthetic */ EResult $batchEResult;
        final /* synthetic */ long $batchId;
        Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C00241(int i, long j, EResult eResult, Continuation<? super C00241> continuation) {
            super(2, continuation);
            this.$appId = i;
            this.$batchId = j;
            this.$batchEResult = eResult;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return SteamCloud.this.new C00241(this.$appId, this.$batchId, this.$batchEResult, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C00241) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                SteammessagesCloudSteamclient.CCloud_CompleteAppUploadBatch_Request.Builder builderNewBuilder = SteammessagesCloudSteamclient.CCloud_CompleteAppUploadBatch_Request.newBuilder();
                int i2 = this.$appId;
                long j = this.$batchId;
                EResult eResult = this.$batchEResult;
                builderNewBuilder.setAppid(i2);
                builderNewBuilder.setBatchId(j);
                builderNewBuilder.setBatchEresult(eResult.code());
                Cloud cloudService = SteamCloud.this.getCloudService();
                SteammessagesCloudSteamclient.CCloud_CompleteAppUploadBatch_Request cCloud_CompleteAppUploadBatch_RequestBuild = builderNewBuilder.build();
                Intrinsics.checkNotNullExpressionValue(cCloud_CompleteAppUploadBatch_RequestBuild, "build(...)");
                AsyncJobSingle<ServiceMethodResponse<SteammessagesCloudSteamclient.CCloud_CompleteAppUploadBatch_Response.Builder>> asyncJobSingleCompleteAppUploadBatchBlocking = cloudService.completeAppUploadBatchBlocking(cCloud_CompleteAppUploadBatch_RequestBuild);
                this.L$0 = SpillingKt.nullOutSpilledVariable(builderNewBuilder);
                this.label = 1;
                if (asyncJobSingleCompleteAppUploadBatchBlocking.await(this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            return Unit.INSTANCE;
        }
    }

    public final CompletableFuture<Unit> completeAppUploadBatch(int i, long j, EResult batchEResult, CoroutineScope parentScope) {
        Intrinsics.checkNotNullParameter(batchEResult, "batchEResult");
        Intrinsics.checkNotNullParameter(parentScope, "parentScope");
        return FutureKt.future$default(parentScope, null, null, new C00241(i, j, batchEResult, null), 3, null);
    }

    public static /* synthetic */ void appCloudSyncStats$default(SteamCloud steamCloud, int i, EPlatformType ePlatformType, boolean z, boolean z2, int i2, int i3, int i4, long j, long j2, long j3, long j4, long j5, long j6, long j7, long j8, long j9, long j10, long j11, long j12, int i5, int i6, int i7, Object obj) {
        steamCloud.appCloudSyncStats(i, ePlatformType, (i7 & 4) != 0 ? false : z, z2, (i7 & 16) != 0 ? 0 : i2, (i7 & 32) != 0 ? 0 : i3, (i7 & 64) != 0 ? 0 : i4, (i7 & 128) != 0 ? 0L : j, (i7 & 256) != 0 ? 0L : j2, j3, j4, j5, (i7 & 4096) != 0 ? 0L : j6, (i7 & Enums.EProtoAppType.k_EAppTypeMusicAlbum_VALUE) != 0 ? 0L : j7, (i7 & Enums.EProtoAppType.k_EAppTypeSeries_VALUE) != 0 ? 0L : j8, j9, (65536 & i7) != 0 ? 0L : j10, (131072 & i7) != 0 ? 0L : j11, (262144 & i7) != 0 ? 0L : j12, (i7 & 524288) != 0 ? 1 : i5, i6);
    }

    public final void appCloudSyncStats(int i, EPlatformType platformType, boolean z, boolean z2, int i2, int i3, int i4, long j, long j2, long j3, long j4, long j5, long j6, long j7, long j8, long j9, long j10, long j11, long j12, int i5, int i6) {
        Intrinsics.checkNotNullParameter(platformType, "platformType");
        SteammessagesClientmetricsSteamclient.CClientMetrics_CloudAppSyncStats_Notification.Builder builderNewBuilder = SteammessagesClientmetricsSteamclient.CClientMetrics_CloudAppSyncStats_Notification.newBuilder();
        builderNewBuilder.setAppId(i);
        builderNewBuilder.setPlatformType(platformType.code());
        builderNewBuilder.setPreload(z);
        builderNewBuilder.setBlockingAppLaunch(z2);
        if (i2 > 0) {
            builderNewBuilder.setFilesUploaded(i2);
        }
        if (i3 > 0) {
            builderNewBuilder.setFilesDownloaded(i3);
        }
        if (i4 > 0) {
            builderNewBuilder.setFilesDeleted(i4);
        }
        if (j > 0) {
            builderNewBuilder.setBytesUploaded(j);
        }
        if (j2 > 0) {
            builderNewBuilder.setBytesDownloaded(j2);
        }
        builderNewBuilder.setMicrosecTotal(j3);
        builderNewBuilder.setMicrosecInitCaches(j4);
        builderNewBuilder.setMicrosecValidateState(j5);
        if (j6 > 0) {
            builderNewBuilder.setMicrosecAcLaunch(j6);
        }
        if (j7 > 0) {
            builderNewBuilder.setMicrosecAcPrepUserFiles(j7);
        }
        if (j8 > 0) {
            builderNewBuilder.setMicrosecAcExit(j8);
        }
        builderNewBuilder.setMicrosecBuildSyncList(j9);
        if (j10 > 0) {
            builderNewBuilder.setMicrosecDeleteFiles(j10);
        }
        if (j11 > 0) {
            builderNewBuilder.setMicrosecDownloadFiles(j11);
        }
        if (j12 > 0) {
            builderNewBuilder.setMicrosecUploadFiles(j12);
        }
        builderNewBuilder.setHardwareType(i5);
        builderNewBuilder.setFilesManaged(i6);
        ClientMetrics clientMetrics = getClientMetrics();
        SteammessagesClientmetricsSteamclient.CClientMetrics_CloudAppSyncStats_Notification cClientMetrics_CloudAppSyncStats_NotificationBuild = builderNewBuilder.build();
        Intrinsics.checkNotNullExpressionValue(cClientMetrics_CloudAppSyncStats_NotificationBuild, "build(...)");
        clientMetrics.clientCloudAppSyncStats(cClientMetrics_CloudAppSyncStats_NotificationBuild);
    }

    public static /* synthetic */ CompletableFuture signalAppLaunchIntent$default(SteamCloud steamCloud, int i, long j, String str, Boolean bool, EOSType eOSType, Enums.EBluetoothDeviceType eBluetoothDeviceType, CoroutineScope coroutineScope, int i2, Object obj) {
        String str2;
        if ((i2 & 4) != 0) {
            String machineName = HardwareUtils.getMachineName();
            Intrinsics.checkNotNullExpressionValue(machineName, "getMachineName(...)");
            str2 = machineName;
        } else {
            str2 = str;
        }
        return steamCloud.signalAppLaunchIntent(i, j, str2, (i2 & 8) != 0 ? null : bool, eOSType, (i2 & 32) != 0 ? Enums.EBluetoothDeviceType.k_BluetoothDeviceType_Unknown : eBluetoothDeviceType, (i2 & 64) != 0 ? CoroutineScopeKt.CoroutineScope(Dispatchers.getIO()) : coroutineScope);
    }

    /* JADX INFO: renamed from: in.dragonbra.javasteam.steam.handlers.steamcloud.SteamCloud$signalAppLaunchIntent$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: SteamCloud.kt */
    @DebugMetadata(c = "in.dragonbra.javasteam.steam.handlers.steamcloud.SteamCloud$signalAppLaunchIntent$1", f = "SteamCloud.kt", l = {443}, m = "invokeSuspend", v = 1)
    public static final class C00261 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super List<? extends PendingRemoteOperation>>, Object> {
        final /* synthetic */ int $appId;
        final /* synthetic */ long $clientId;
        final /* synthetic */ Enums.EBluetoothDeviceType $deviceType;
        final /* synthetic */ Boolean $ignorePendingOperations;
        final /* synthetic */ String $machineName;
        final /* synthetic */ EOSType $osType;
        Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C00261(int i, long j, String str, Boolean bool, EOSType eOSType, Enums.EBluetoothDeviceType eBluetoothDeviceType, Continuation<? super C00261> continuation) {
            super(2, continuation);
            this.$appId = i;
            this.$clientId = j;
            this.$machineName = str;
            this.$ignorePendingOperations = bool;
            this.$osType = eOSType;
            this.$deviceType = eBluetoothDeviceType;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return SteamCloud.this.new C00261(this.$appId, this.$clientId, this.$machineName, this.$ignorePendingOperations, this.$osType, this.$deviceType, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Object invoke(CoroutineScope coroutineScope, Continuation<? super List<? extends PendingRemoteOperation>> continuation) {
            return invoke2(coroutineScope, (Continuation<? super List<PendingRemoteOperation>>) continuation);
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final Object invoke2(CoroutineScope coroutineScope, Continuation<? super List<PendingRemoteOperation>> continuation) {
            return ((C00261) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                SteammessagesCloudSteamclient.CCloud_AppLaunchIntent_Request.Builder builderNewBuilder = SteammessagesCloudSteamclient.CCloud_AppLaunchIntent_Request.newBuilder();
                int i2 = this.$appId;
                long j = this.$clientId;
                String str = this.$machineName;
                Boolean bool = this.$ignorePendingOperations;
                EOSType eOSType = this.$osType;
                Enums.EBluetoothDeviceType eBluetoothDeviceType = this.$deviceType;
                builderNewBuilder.setAppid(i2);
                builderNewBuilder.setClientId(j);
                builderNewBuilder.setMachineName(str);
                if (bool != null) {
                    builderNewBuilder.setIgnorePendingOperations(bool.booleanValue());
                }
                builderNewBuilder.setOsType(eOSType.code());
                builderNewBuilder.setDeviceType(eBluetoothDeviceType.getNumber());
                Cloud cloudService = SteamCloud.this.getCloudService();
                SteammessagesCloudSteamclient.CCloud_AppLaunchIntent_Request cCloud_AppLaunchIntent_RequestBuild = builderNewBuilder.build();
                Intrinsics.checkNotNullExpressionValue(cCloud_AppLaunchIntent_RequestBuild, "build(...)");
                AsyncJobSingle<ServiceMethodResponse<SteammessagesCloudSteamclient.CCloud_AppLaunchIntent_Response.Builder>> asyncJobSingleSignalAppLaunchIntent = cloudService.signalAppLaunchIntent(cCloud_AppLaunchIntent_RequestBuild);
                this.L$0 = SpillingKt.nullOutSpilledVariable(builderNewBuilder);
                this.label = 1;
                obj = asyncJobSingleSignalAppLaunchIntent.await(this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            List<SteammessagesClientObjects.CCloud_PendingRemoteOperation> pendingRemoteOperationsList = ((SteammessagesCloudSteamclient.CCloud_AppLaunchIntent_Response.Builder) ((ServiceMethodResponse) obj).getBody()).getPendingRemoteOperationsList();
            Intrinsics.checkNotNullExpressionValue(pendingRemoteOperationsList, "getPendingRemoteOperationsList(...)");
            ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(pendingRemoteOperationsList, 10));
            for (SteammessagesClientObjects.CCloud_PendingRemoteOperation cCloud_PendingRemoteOperation : pendingRemoteOperationsList) {
                Intrinsics.checkNotNull(cCloud_PendingRemoteOperation);
                arrayList.add(new PendingRemoteOperation(cCloud_PendingRemoteOperation));
            }
            return arrayList;
        }
    }

    public final CompletableFuture<List<PendingRemoteOperation>> signalAppLaunchIntent(int i, long j, String machineName, Boolean bool, EOSType osType, Enums.EBluetoothDeviceType deviceType, CoroutineScope parentScope) {
        Intrinsics.checkNotNullParameter(machineName, "machineName");
        Intrinsics.checkNotNullParameter(osType, "osType");
        Intrinsics.checkNotNullParameter(deviceType, "deviceType");
        Intrinsics.checkNotNullParameter(parentScope, "parentScope");
        return FutureKt.future$default(parentScope, null, null, new C00261(i, j, machineName, bool, osType, deviceType, null), 3, null);
    }

    public final void signalAppExitSyncDone(int i, long j, boolean z, boolean z2) {
        SteammessagesCloudSteamclient.CCloud_AppExitSyncDone_Notification.Builder builderNewBuilder = SteammessagesCloudSteamclient.CCloud_AppExitSyncDone_Notification.newBuilder();
        builderNewBuilder.setAppid(i);
        builderNewBuilder.setClientId(j);
        builderNewBuilder.setUploadsCompleted(z);
        builderNewBuilder.setUploadsRequired(z2);
        Cloud cloudService = getCloudService();
        SteammessagesCloudSteamclient.CCloud_AppExitSyncDone_Notification cCloud_AppExitSyncDone_NotificationBuild = builderNewBuilder.build();
        Intrinsics.checkNotNullExpressionValue(cCloud_AppExitSyncDone_NotificationBuild, "build(...)");
        cloudService.signalAppExitSyncDone(cCloud_AppExitSyncDone_NotificationBuild);
    }

    public static /* synthetic */ void externalStorageTransferReport$default(SteamCloud steamCloud, String str, String str2, boolean z, boolean z2, int i, long j, long j2, int i2, int i3, boolean z3, boolean z4, boolean z5, int i4, int i5, int i6, int i7, int i8, Object obj) {
        int iIntValue;
        if ((i8 & 256) != 0) {
            Integer cellID = steamCloud.getClient().getCellID();
            Intrinsics.checkNotNull(cellID);
            iIntValue = cellID.intValue();
        } else {
            iIntValue = i3;
        }
        steamCloud.externalStorageTransferReport(str, str2, z, z2, i, j, j2, i2, iIntValue, z3, z4, z5, i4, i5, i6, i7);
    }

    public final void externalStorageTransferReport(String host, String path, boolean z, boolean z2, int i, long j, long j2, int i2, int i3, boolean z3, boolean z4, boolean z5, int i4, int i5, int i6, int i7) {
        Intrinsics.checkNotNullParameter(host, "host");
        Intrinsics.checkNotNullParameter(path, "path");
        SteammessagesCloudSteamclient.CCloud_ExternalStorageTransferReport_Notification.Builder builderNewBuilder = SteammessagesCloudSteamclient.CCloud_ExternalStorageTransferReport_Notification.newBuilder();
        builderNewBuilder.setHost(host);
        builderNewBuilder.setPath(path);
        builderNewBuilder.setIsUpload(z);
        builderNewBuilder.setSuccess(z2);
        builderNewBuilder.setHttpStatusCode(i);
        builderNewBuilder.setBytesExpected(j);
        builderNewBuilder.setBytesActual(j2);
        builderNewBuilder.setDurationMs(i2);
        builderNewBuilder.setCellid(i3);
        builderNewBuilder.setProxied(z3);
        builderNewBuilder.setIpv6Local(z4);
        builderNewBuilder.setIpv6Remote(z5);
        builderNewBuilder.setTimeToConnectMs(i4);
        builderNewBuilder.setTimeToSendReqMs(i5);
        builderNewBuilder.setTimeToFirstByteMs(i6);
        builderNewBuilder.setTimeToLastByteMs(i7);
        Cloud cloudService = getCloudService();
        SteammessagesCloudSteamclient.CCloud_ExternalStorageTransferReport_Notification cCloud_ExternalStorageTransferReport_NotificationBuild = builderNewBuilder.build();
        Intrinsics.checkNotNullExpressionValue(cCloud_ExternalStorageTransferReport_NotificationBuild, "build(...)");
        cloudService.externalStorageTransferReport(cCloud_ExternalStorageTransferReport_NotificationBuild);
    }

    @Override // in.dragonbra.javasteam.steam.handlers.ClientMsgHandler
    public void handleMsg(IPacketMsg packetMsg) {
        Intrinsics.checkNotNullParameter(packetMsg, "packetMsg");
        CallbackMsg callback = Companion.getCallback(packetMsg);
        if (callback == null) {
            return;
        }
        getClient().postCallback(callback);
    }

    /* JADX INFO: compiled from: SteamCloud.kt */
    public static final class Companion {

        /* JADX INFO: compiled from: SteamCloud.kt */
        public static final /* synthetic */ class WhenMappings {
            public static final /* synthetic */ int[] $EnumSwitchMapping$0;

            static {
                int[] iArr = new int[EMsg.values().length];
                try {
                    iArr[EMsg.ClientUFSGetUGCDetailsResponse.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[EMsg.ClientUFSGetSingleFileInfoResponse.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                try {
                    iArr[EMsg.ClientUFSShareFileResponse.ordinal()] = 3;
                } catch (NoSuchFieldError unused3) {
                }
                $EnumSwitchMapping$0 = iArr;
            }
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final CallbackMsg getCallback(IPacketMsg iPacketMsg) {
            int i = WhenMappings.$EnumSwitchMapping$0[iPacketMsg.getMsgType().ordinal()];
            if (i == 1) {
                return new UGCDetailsCallback(iPacketMsg);
            }
            if (i == 2) {
                return new SingleFileInfoCallback(iPacketMsg);
            }
            if (i != 3) {
                return null;
            }
            return new ShareFileCallback(iPacketMsg);
        }
    }
}
