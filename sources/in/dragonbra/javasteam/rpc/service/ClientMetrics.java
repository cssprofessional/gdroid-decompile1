package in.dragonbra.javasteam.rpc.service;

import in.dragonbra.javasteam.base.PacketClientMsgProtobuf;
import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientmetricsSteamclient;
import in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.SteamUnifiedMessages;
import in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.UnifiedService;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ClientMetrics.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class ClientMetrics extends UnifiedService {
    @Override // in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.UnifiedService
    public void handleResponseMsg(String methodName, PacketClientMsgProtobuf packetMsg) {
        Intrinsics.checkNotNullParameter(methodName, "methodName");
        Intrinsics.checkNotNullParameter(packetMsg, "packetMsg");
    }

    @Override // in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.UnifiedService
    public String getServiceName() {
        return "ClientMetrics";
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ClientMetrics(SteamUnifiedMessages unifiedMessages) {
        super(unifiedMessages);
        Intrinsics.checkNotNullParameter(unifiedMessages, "unifiedMessages");
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    @Override // in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.UnifiedService
    public void handleNotificationMsg(String methodName, PacketClientMsgProtobuf packetMsg) {
        Intrinsics.checkNotNullParameter(methodName, "methodName");
        Intrinsics.checkNotNullParameter(packetMsg, "packetMsg");
        switch (methodName.hashCode()) {
            case -1923227716:
                if (methodName.equals("ReportClientArgs")) {
                    postNotificationMsg(SteammessagesClientmetricsSteamclient.CClientMetrics_ReportClientArgs_Notification.class, packetMsg);
                    break;
                }
                break;
            case -1436068647:
                if (methodName.equals("ReportClipRange")) {
                    postNotificationMsg(SteammessagesClientmetricsSteamclient.CClientMetrics_ClipRange_Notification.class, packetMsg);
                    break;
                }
                break;
            case -1434948741:
                if (methodName.equals("ReportClipShare")) {
                    postNotificationMsg(SteammessagesClientmetricsSteamclient.CClientMetrics_ClipShare_Notification.class, packetMsg);
                    break;
                }
                break;
            case -867860353:
                if (methodName.equals("ReportLinuxStats")) {
                    postNotificationMsg(SteammessagesClientmetricsSteamclient.CClientMetrics_ReportLinuxStats_Notification.class, packetMsg);
                    break;
                }
                break;
            case -809938160:
                if (methodName.equals("ClientAppInterfaceStatsReport")) {
                    postNotificationMsg(SteammessagesClientmetricsSteamclient.CClientMetrics_AppInterfaceStats_Notification.class, packetMsg);
                    break;
                }
                break;
            case -735680603:
                if (methodName.equals("ClientDownloadResponseCodeCounts")) {
                    postNotificationMsg(SteammessagesClientmetricsSteamclient.CClientMetrics_ContentDownloadResponse_Counts_Notification.class, packetMsg);
                    break;
                }
                break;
            case -709746056:
                if (methodName.equals("ReportEndGameRecording")) {
                    postNotificationMsg(SteammessagesClientmetricsSteamclient.CClientMetrics_EndGameRecording_Notification.class, packetMsg);
                    break;
                }
                break;
            case -430832406:
                if (methodName.equals("ReportGamePerformance")) {
                    postNotificationMsg(SteammessagesClientmetricsSteamclient.CClientMetrics_GamePerformance_Notification.class, packetMsg);
                    break;
                }
                break;
            case 191718164:
                if (methodName.equals("ClientDownloadRatesReport")) {
                    postNotificationMsg(SteammessagesClientmetricsSteamclient.CClientMetrics_DownloadRates_Notification.class, packetMsg);
                    break;
                }
                break;
            case 495595835:
                if (methodName.equals("ClientContentValidationReport")) {
                    postNotificationMsg(SteammessagesClientmetricsSteamclient.CClientMetrics_ContentValidation_Notification.class, packetMsg);
                    break;
                }
                break;
            case 513187593:
                if (methodName.equals("ReportClientError")) {
                    postNotificationMsg(SteammessagesClientmetricsSteamclient.CClientMetrics_ReportClientError_Notification.class, packetMsg);
                    break;
                }
                break;
            case 798314454:
                if (methodName.equals("ReportReactUsage")) {
                    postNotificationMsg(SteammessagesClientmetricsSteamclient.CClientMetrics_ReportReactUsage_Notification.class, packetMsg);
                    break;
                }
                break;
            case 843423389:
                if (methodName.equals("ReportAccessibilitySettings")) {
                    postNotificationMsg(SteammessagesClientmetricsSteamclient.CClientMetrics_ReportAccessibilitySettings_Notification.class, packetMsg);
                    break;
                }
                break;
            case 1485306829:
                if (methodName.equals("ClientCloudAppSyncStats")) {
                    postNotificationMsg(SteammessagesClientmetricsSteamclient.CClientMetrics_CloudAppSyncStats_Notification.class, packetMsg);
                    break;
                }
                break;
            case 1651551677:
                if (methodName.equals("ClientIPv6ConnectivityReport")) {
                    postNotificationMsg(SteammessagesClientmetricsSteamclient.CClientMetrics_IPv6Connectivity_Notification.class, packetMsg);
                    break;
                }
                break;
            case 1818405892:
                if (methodName.equals("SteamPipeWorkStatsReport")) {
                    postNotificationMsg(SteammessagesClientmetricsSteamclient.CClientMetrics_SteamPipeWorkStats_Notification.class, packetMsg);
                    break;
                }
                break;
            case 2048502231:
                if (methodName.equals("ClientBootstrapReport")) {
                    postNotificationMsg(SteammessagesClientmetricsSteamclient.CClientMetrics_ClientBootstrap_Notification.class, packetMsg);
                    break;
                }
                break;
        }
    }

    public final void clientAppInterfaceStatsReport(SteammessagesClientmetricsSteamclient.CClientMetrics_AppInterfaceStats_Notification request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        unifiedMessages.sendNotification("ClientMetrics.ClientAppInterfaceStatsReport#1", request);
    }

    public final void clientIPv6ConnectivityReport(SteammessagesClientmetricsSteamclient.CClientMetrics_IPv6Connectivity_Notification request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        unifiedMessages.sendNotification("ClientMetrics.ClientIPv6ConnectivityReport#1", request);
    }

    public final void steamPipeWorkStatsReport(SteammessagesClientmetricsSteamclient.CClientMetrics_SteamPipeWorkStats_Notification request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        unifiedMessages.sendNotification("ClientMetrics.SteamPipeWorkStatsReport#1", request);
    }

    public final void reportReactUsage(SteammessagesClientmetricsSteamclient.CClientMetrics_ReportReactUsage_Notification request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        unifiedMessages.sendNotification("ClientMetrics.ReportReactUsage#1", request);
    }

    public final void reportClientError(SteammessagesClientmetricsSteamclient.CClientMetrics_ReportClientError_Notification request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        unifiedMessages.sendNotification("ClientMetrics.ReportClientError#1", request);
    }

    public final void clientBootstrapReport(SteammessagesClientmetricsSteamclient.CClientMetrics_ClientBootstrap_Notification request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        unifiedMessages.sendNotification("ClientMetrics.ClientBootstrapReport#1", request);
    }

    public final void clientDownloadRatesReport(SteammessagesClientmetricsSteamclient.CClientMetrics_DownloadRates_Notification request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        unifiedMessages.sendNotification("ClientMetrics.ClientDownloadRatesReport#1", request);
    }

    public final void clientContentValidationReport(SteammessagesClientmetricsSteamclient.CClientMetrics_ContentValidation_Notification request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        unifiedMessages.sendNotification("ClientMetrics.ClientContentValidationReport#1", request);
    }

    public final void clientCloudAppSyncStats(SteammessagesClientmetricsSteamclient.CClientMetrics_CloudAppSyncStats_Notification request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        unifiedMessages.sendNotification("ClientMetrics.ClientCloudAppSyncStats#1", request);
    }

    public final void clientDownloadResponseCodeCounts(SteammessagesClientmetricsSteamclient.CClientMetrics_ContentDownloadResponse_Counts_Notification request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        unifiedMessages.sendNotification("ClientMetrics.ClientDownloadResponseCodeCounts#1", request);
    }

    public final void reportClientArgs(SteammessagesClientmetricsSteamclient.CClientMetrics_ReportClientArgs_Notification request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        unifiedMessages.sendNotification("ClientMetrics.ReportClientArgs#1", request);
    }

    public final void reportLinuxStats(SteammessagesClientmetricsSteamclient.CClientMetrics_ReportLinuxStats_Notification request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        unifiedMessages.sendNotification("ClientMetrics.ReportLinuxStats#1", request);
    }

    public final void reportAccessibilitySettings(SteammessagesClientmetricsSteamclient.CClientMetrics_ReportAccessibilitySettings_Notification request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        unifiedMessages.sendNotification("ClientMetrics.ReportAccessibilitySettings#1", request);
    }

    public final void reportClipShare(SteammessagesClientmetricsSteamclient.CClientMetrics_ClipShare_Notification request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        unifiedMessages.sendNotification("ClientMetrics.ReportClipShare#1", request);
    }

    public final void reportClipRange(SteammessagesClientmetricsSteamclient.CClientMetrics_ClipRange_Notification request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        unifiedMessages.sendNotification("ClientMetrics.ReportClipRange#1", request);
    }

    public final void reportEndGameRecording(SteammessagesClientmetricsSteamclient.CClientMetrics_EndGameRecording_Notification request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        unifiedMessages.sendNotification("ClientMetrics.ReportEndGameRecording#1", request);
    }

    public final void reportGamePerformance(SteammessagesClientmetricsSteamclient.CClientMetrics_GamePerformance_Notification request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        unifiedMessages.sendNotification("ClientMetrics.ReportGamePerformance#1", request);
    }
}
