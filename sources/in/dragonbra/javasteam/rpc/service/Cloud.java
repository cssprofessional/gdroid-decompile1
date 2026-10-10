package in.dragonbra.javasteam.rpc.service;

import in.dragonbra.javasteam.base.PacketClientMsgProtobuf;
import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesCloudSteamclient;
import in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.SteamUnifiedMessages;
import in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.UnifiedService;
import in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.callback.ServiceMethodResponse;
import in.dragonbra.javasteam.types.AsyncJobSingle;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: Cloud.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class Cloud extends UnifiedService {
    @Override // in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.UnifiedService
    public String getServiceName() {
        return "Cloud";
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Cloud(SteamUnifiedMessages unifiedMessages) {
        super(unifiedMessages);
        Intrinsics.checkNotNullParameter(unifiedMessages, "unifiedMessages");
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    @Override // in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.UnifiedService
    public void handleResponseMsg(String methodName, PacketClientMsgProtobuf packetMsg) {
        Intrinsics.checkNotNullParameter(methodName, "methodName");
        Intrinsics.checkNotNullParameter(packetMsg, "packetMsg");
        switch (methodName.hashCode()) {
            case -2064661029:
                if (methodName.equals("CommitUGCUpload")) {
                    postResponseMsg(SteammessagesCloudSteamclient.CCloud_CommitUGCUpload_Response.class, packetMsg);
                    break;
                }
                break;
            case -1636607096:
                if (methodName.equals("EnumerateUserFiles")) {
                    postResponseMsg(SteammessagesCloudSteamclient.CCloud_EnumerateUserFiles_Response.class, packetMsg);
                    break;
                }
                break;
            case -1506176593:
                if (methodName.equals("ClientFileDownload")) {
                    postResponseMsg(SteammessagesCloudSteamclient.CCloud_ClientFileDownload_Response.class, packetMsg);
                    break;
                }
                break;
            case -683989665:
                if (methodName.equals("ClientGetAppQuotaUsage")) {
                    postResponseMsg(SteammessagesCloudSteamclient.CCloud_ClientGetAppQuotaUsage_Response.class, packetMsg);
                    break;
                }
                break;
            case -628235839:
                if (methodName.equals("BeginAppUploadBatch")) {
                    postResponseMsg(SteammessagesCloudSteamclient.CCloud_BeginAppUploadBatch_Response.class, packetMsg);
                    break;
                }
                break;
            case -396293824:
                if (methodName.equals("CommitHTTPUpload")) {
                    postResponseMsg(SteammessagesCloudSteamclient.CCloud_CommitHTTPUpload_Response.class, packetMsg);
                    break;
                }
                break;
            case -332202689:
                if (methodName.equals("ClientCommitFileUpload")) {
                    postResponseMsg(SteammessagesCloudSteamclient.CCloud_ClientCommitFileUpload_Response.class, packetMsg);
                    break;
                }
                break;
            case -264506906:
                if (methodName.equals("CompleteAppUploadBatchBlocking")) {
                    postResponseMsg(SteammessagesCloudSteamclient.CCloud_CompleteAppUploadBatch_Response.class, packetMsg);
                    break;
                }
                break;
            case -263870990:
                if (methodName.equals("BeginHTTPUpload")) {
                    postResponseMsg(SteammessagesCloudSteamclient.CCloud_BeginHTTPUpload_Response.class, packetMsg);
                    break;
                }
                break;
            case -259274007:
                if (methodName.equals("BeginUGCUpload")) {
                    postResponseMsg(SteammessagesCloudSteamclient.CCloud_BeginUGCUpload_Response.class, packetMsg);
                    break;
                }
                break;
            case 287562939:
                if (methodName.equals("ClientBeginFileUpload")) {
                    postResponseMsg(SteammessagesCloudSteamclient.CCloud_ClientBeginFileUpload_Response.class, packetMsg);
                    break;
                }
                break;
            case 794151537:
                if (methodName.equals("SuspendAppSession")) {
                    postResponseMsg(SteammessagesCloudSteamclient.CCloud_AppSessionSuspend_Response.class, packetMsg);
                    break;
                }
                break;
            case 878561979:
                if (methodName.equals("GetClientEncryptionKey")) {
                    postResponseMsg(SteammessagesCloudSteamclient.CCloud_GetClientEncryptionKey_Response.class, packetMsg);
                    break;
                }
                break;
            case 1023184136:
                if (methodName.equals("SignalAppLaunchIntent")) {
                    postResponseMsg(SteammessagesCloudSteamclient.CCloud_AppLaunchIntent_Response.class, packetMsg);
                    break;
                }
                break;
            case 1431712786:
                if (methodName.equals("ClientDeleteFile")) {
                    postResponseMsg(SteammessagesCloudSteamclient.CCloud_ClientDeleteFile_Response.class, packetMsg);
                    break;
                }
                break;
            case 1649311074:
                if (methodName.equals("ResumeAppSession")) {
                    postResponseMsg(SteammessagesCloudSteamclient.CCloud_AppSessionResume_Response.class, packetMsg);
                    break;
                }
                break;
            case 1814217744:
                if (methodName.equals("GetFileDetails")) {
                    postResponseMsg(SteammessagesCloudSteamclient.CCloud_GetFileDetails_Response.class, packetMsg);
                    break;
                }
                break;
            case 2043376075:
                if (methodName.equals("Delete")) {
                    postResponseMsg(SteammessagesCloudSteamclient.CCloud_Delete_Response.class, packetMsg);
                    break;
                }
                break;
            case 2055194325:
                if (methodName.equals("GetAppFileChangelist")) {
                    postResponseMsg(SteammessagesCloudSteamclient.CCloud_GetAppFileChangelist_Response.class, packetMsg);
                    break;
                }
                break;
        }
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    @Override // in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.UnifiedService
    public void handleNotificationMsg(String methodName, PacketClientMsgProtobuf packetMsg) {
        Intrinsics.checkNotNullParameter(methodName, "methodName");
        Intrinsics.checkNotNullParameter(packetMsg, "packetMsg");
        switch (methodName.hashCode()) {
            case -1828565485:
                if (methodName.equals("ClientLogUploadComplete")) {
                    postNotificationMsg(SteammessagesCloudSteamclient.CCloud_ClientLogUploadComplete_Notification.class, packetMsg);
                    break;
                }
                break;
            case -1398438290:
                if (methodName.equals("ClientLogUploadCheck")) {
                    postNotificationMsg(SteammessagesCloudSteamclient.CCloud_ClientLogUploadCheck_Notification.class, packetMsg);
                    break;
                }
                break;
            case -1317002028:
                if (methodName.equals("SignalAppExitSyncDone")) {
                    postNotificationMsg(SteammessagesCloudSteamclient.CCloud_AppExitSyncDone_Notification.class, packetMsg);
                    break;
                }
                break;
            case -347408023:
                if (methodName.equals("ClientConflictResolution")) {
                    postNotificationMsg(SteammessagesCloudSteamclient.CCloud_ClientConflictResolution_Notification.class, packetMsg);
                    break;
                }
                break;
            case 361777057:
                if (methodName.equals("CDNReport")) {
                    postNotificationMsg(SteammessagesCloudSteamclient.CCloud_CDNReport_Notification.class, packetMsg);
                    break;
                }
                break;
            case 1637696145:
                if (methodName.equals("CompleteAppUploadBatch")) {
                    postNotificationMsg(SteammessagesCloudSteamclient.CCloud_CompleteAppUploadBatch_Notification.class, packetMsg);
                    break;
                }
                break;
            case 1707536687:
                if (methodName.equals("ExternalStorageTransferReport")) {
                    postNotificationMsg(SteammessagesCloudSteamclient.CCloud_ExternalStorageTransferReport_Notification.class, packetMsg);
                    break;
                }
                break;
        }
    }

    public final void clientLogUploadCheck(SteammessagesCloudSteamclient.CCloud_ClientLogUploadCheck_Notification request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        unifiedMessages.sendNotification("Cloud.ClientLogUploadCheck#1", request);
    }

    public final void clientLogUploadComplete(SteammessagesCloudSteamclient.CCloud_ClientLogUploadComplete_Notification request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        unifiedMessages.sendNotification("Cloud.ClientLogUploadComplete#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesCloudSteamclient.CCloud_BeginHTTPUpload_Response.Builder>> beginHTTPUpload(SteammessagesCloudSteamclient.CCloud_BeginHTTPUpload_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesCloudSteamclient.CCloud_BeginHTTPUpload_Response.Builder.class, "Cloud.BeginHTTPUpload#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesCloudSteamclient.CCloud_CommitHTTPUpload_Response.Builder>> commitHTTPUpload(SteammessagesCloudSteamclient.CCloud_CommitHTTPUpload_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesCloudSteamclient.CCloud_CommitHTTPUpload_Response.Builder.class, "Cloud.CommitHTTPUpload#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesCloudSteamclient.CCloud_BeginUGCUpload_Response.Builder>> beginUGCUpload(SteammessagesCloudSteamclient.CCloud_BeginUGCUpload_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesCloudSteamclient.CCloud_BeginUGCUpload_Response.Builder.class, "Cloud.BeginUGCUpload#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesCloudSteamclient.CCloud_CommitUGCUpload_Response.Builder>> commitUGCUpload(SteammessagesCloudSteamclient.CCloud_CommitUGCUpload_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesCloudSteamclient.CCloud_CommitUGCUpload_Response.Builder.class, "Cloud.CommitUGCUpload#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesCloudSteamclient.CCloud_GetFileDetails_Response.Builder>> getFileDetails(SteammessagesCloudSteamclient.CCloud_GetFileDetails_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesCloudSteamclient.CCloud_GetFileDetails_Response.Builder.class, "Cloud.GetFileDetails#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesCloudSteamclient.CCloud_EnumerateUserFiles_Response.Builder>> enumerateUserFiles(SteammessagesCloudSteamclient.CCloud_EnumerateUserFiles_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesCloudSteamclient.CCloud_EnumerateUserFiles_Response.Builder.class, "Cloud.EnumerateUserFiles#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesCloudSteamclient.CCloud_Delete_Response.Builder>> delete(SteammessagesCloudSteamclient.CCloud_Delete_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesCloudSteamclient.CCloud_Delete_Response.Builder.class, "Cloud.Delete#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesCloudSteamclient.CCloud_GetClientEncryptionKey_Response.Builder>> getClientEncryptionKey(SteammessagesCloudSteamclient.CCloud_GetClientEncryptionKey_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesCloudSteamclient.CCloud_GetClientEncryptionKey_Response.Builder.class, "Cloud.GetClientEncryptionKey#1", request);
    }

    public final void cDNReport(SteammessagesCloudSteamclient.CCloud_CDNReport_Notification request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        unifiedMessages.sendNotification("Cloud.CDNReport#1", request);
    }

    public final void externalStorageTransferReport(SteammessagesCloudSteamclient.CCloud_ExternalStorageTransferReport_Notification request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        unifiedMessages.sendNotification("Cloud.ExternalStorageTransferReport#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesCloudSteamclient.CCloud_BeginAppUploadBatch_Response.Builder>> beginAppUploadBatch(SteammessagesCloudSteamclient.CCloud_BeginAppUploadBatch_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesCloudSteamclient.CCloud_BeginAppUploadBatch_Response.Builder.class, "Cloud.BeginAppUploadBatch#1", request);
    }

    public final void completeAppUploadBatch(SteammessagesCloudSteamclient.CCloud_CompleteAppUploadBatch_Notification request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        unifiedMessages.sendNotification("Cloud.CompleteAppUploadBatch#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesCloudSteamclient.CCloud_CompleteAppUploadBatch_Response.Builder>> completeAppUploadBatchBlocking(SteammessagesCloudSteamclient.CCloud_CompleteAppUploadBatch_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesCloudSteamclient.CCloud_CompleteAppUploadBatch_Response.Builder.class, "Cloud.CompleteAppUploadBatchBlocking#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesCloudSteamclient.CCloud_ClientBeginFileUpload_Response.Builder>> clientBeginFileUpload(SteammessagesCloudSteamclient.CCloud_ClientBeginFileUpload_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesCloudSteamclient.CCloud_ClientBeginFileUpload_Response.Builder.class, "Cloud.ClientBeginFileUpload#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesCloudSteamclient.CCloud_ClientCommitFileUpload_Response.Builder>> clientCommitFileUpload(SteammessagesCloudSteamclient.CCloud_ClientCommitFileUpload_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesCloudSteamclient.CCloud_ClientCommitFileUpload_Response.Builder.class, "Cloud.ClientCommitFileUpload#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesCloudSteamclient.CCloud_ClientFileDownload_Response.Builder>> clientFileDownload(SteammessagesCloudSteamclient.CCloud_ClientFileDownload_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesCloudSteamclient.CCloud_ClientFileDownload_Response.Builder.class, "Cloud.ClientFileDownload#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesCloudSteamclient.CCloud_ClientDeleteFile_Response.Builder>> clientDeleteFile(SteammessagesCloudSteamclient.CCloud_ClientDeleteFile_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesCloudSteamclient.CCloud_ClientDeleteFile_Response.Builder.class, "Cloud.ClientDeleteFile#1", request);
    }

    public final void clientConflictResolution(SteammessagesCloudSteamclient.CCloud_ClientConflictResolution_Notification request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        unifiedMessages.sendNotification("Cloud.ClientConflictResolution#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesCloudSteamclient.CCloud_GetAppFileChangelist_Response.Builder>> getAppFileChangelist(SteammessagesCloudSteamclient.CCloud_GetAppFileChangelist_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesCloudSteamclient.CCloud_GetAppFileChangelist_Response.Builder.class, "Cloud.GetAppFileChangelist#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesCloudSteamclient.CCloud_AppSessionSuspend_Response.Builder>> suspendAppSession(SteammessagesCloudSteamclient.CCloud_AppSessionSuspend_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesCloudSteamclient.CCloud_AppSessionSuspend_Response.Builder.class, "Cloud.SuspendAppSession#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesCloudSteamclient.CCloud_AppSessionResume_Response.Builder>> resumeAppSession(SteammessagesCloudSteamclient.CCloud_AppSessionResume_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesCloudSteamclient.CCloud_AppSessionResume_Response.Builder.class, "Cloud.ResumeAppSession#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesCloudSteamclient.CCloud_AppLaunchIntent_Response.Builder>> signalAppLaunchIntent(SteammessagesCloudSteamclient.CCloud_AppLaunchIntent_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesCloudSteamclient.CCloud_AppLaunchIntent_Response.Builder.class, "Cloud.SignalAppLaunchIntent#1", request);
    }

    public final void signalAppExitSyncDone(SteammessagesCloudSteamclient.CCloud_AppExitSyncDone_Notification request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        unifiedMessages.sendNotification("Cloud.SignalAppExitSyncDone#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesCloudSteamclient.CCloud_ClientGetAppQuotaUsage_Response.Builder>> clientGetAppQuotaUsage(SteammessagesCloudSteamclient.CCloud_ClientGetAppQuotaUsage_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesCloudSteamclient.CCloud_ClientGetAppQuotaUsage_Response.Builder.class, "Cloud.ClientGetAppQuotaUsage#1", request);
    }
}
