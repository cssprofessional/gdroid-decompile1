package in.dragonbra.javasteam.rpc.service;

import in.dragonbra.javasteam.base.PacketClientMsgProtobuf;
import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesCloudSteamclient;
import in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.SteamUnifiedMessages;
import in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.UnifiedService;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: CloudClient.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class CloudClient extends UnifiedService {
    @Override // in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.UnifiedService
    public void handleResponseMsg(String methodName, PacketClientMsgProtobuf packetMsg) {
        Intrinsics.checkNotNullParameter(methodName, "methodName");
        Intrinsics.checkNotNullParameter(packetMsg, "packetMsg");
    }

    @Override // in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.UnifiedService
    public String getServiceName() {
        return "CloudClient";
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CloudClient(SteamUnifiedMessages unifiedMessages) {
        super(unifiedMessages);
        Intrinsics.checkNotNullParameter(unifiedMessages, "unifiedMessages");
    }

    @Override // in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.UnifiedService
    public void handleNotificationMsg(String methodName, PacketClientMsgProtobuf packetMsg) {
        Intrinsics.checkNotNullParameter(methodName, "methodName");
        Intrinsics.checkNotNullParameter(packetMsg, "packetMsg");
        if (Intrinsics.areEqual(methodName, "NotifyAppStateChange")) {
            postNotificationMsg(SteammessagesCloudSteamclient.CCloud_AppCloudStateChange_Notification.class, packetMsg);
        } else if (Intrinsics.areEqual(methodName, "ClientLogUploadRequest")) {
            postNotificationMsg(SteammessagesCloudSteamclient.CCloud_ClientLogUploadRequest_Notification.class, packetMsg);
        }
    }

    public final void notifyAppStateChange(SteammessagesCloudSteamclient.CCloud_AppCloudStateChange_Notification request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        unifiedMessages.sendNotification("CloudClient.NotifyAppStateChange#1", request);
    }

    public final void clientLogUploadRequest(SteammessagesCloudSteamclient.CCloud_ClientLogUploadRequest_Notification request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        unifiedMessages.sendNotification("CloudClient.ClientLogUploadRequest#1", request);
    }
}
