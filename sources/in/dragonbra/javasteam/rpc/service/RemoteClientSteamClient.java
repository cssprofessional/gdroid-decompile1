package in.dragonbra.javasteam.rpc.service;

import in.dragonbra.javasteam.base.PacketClientMsgProtobuf;
import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages;
import in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.SteamUnifiedMessages;
import in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.UnifiedService;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: RemoteClientSteamClient.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class RemoteClientSteamClient extends UnifiedService {
    @Override // in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.UnifiedService
    public void handleResponseMsg(String methodName, PacketClientMsgProtobuf packetMsg) {
        Intrinsics.checkNotNullParameter(methodName, "methodName");
        Intrinsics.checkNotNullParameter(packetMsg, "packetMsg");
    }

    @Override // in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.UnifiedService
    public String getServiceName() {
        return "RemoteClientSteamClient";
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RemoteClientSteamClient(SteamUnifiedMessages unifiedMessages) {
        super(unifiedMessages);
        Intrinsics.checkNotNullParameter(unifiedMessages, "unifiedMessages");
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    @Override // in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.UnifiedService
    public void handleNotificationMsg(String methodName, PacketClientMsgProtobuf packetMsg) {
        Intrinsics.checkNotNullParameter(methodName, "methodName");
        Intrinsics.checkNotNullParameter(packetMsg, "packetMsg");
        switch (methodName.hashCode()) {
            case -1853115306:
                if (methodName.equals("NotifySteamToSteamPacket")) {
                    postNotificationMsg(SteammessagesRemoteclientServiceMessages.CRemoteClient_SteamToSteam_Notification.class, packetMsg);
                    break;
                }
                break;
            case -1786495195:
                if (methodName.equals("NotifyRemotePlayTogetherPacket")) {
                    postNotificationMsg(SteammessagesRemoteclientServiceMessages.CRemotePlayTogether_Notification.class, packetMsg);
                    break;
                }
                break;
            case -1776299454:
                if (methodName.equals("NotifySteamBroadcastPacket")) {
                    postNotificationMsg(SteammessagesRemoteclientServiceMessages.CRemoteClient_SteamBroadcast_Notification.class, packetMsg);
                    break;
                }
                break;
            case -1435015561:
                if (methodName.equals("NotifyRemotePacket")) {
                    postNotificationMsg(SteammessagesRemoteclientServiceMessages.CRemoteClient_RemotePacket_Notification.class, packetMsg);
                    break;
                }
                break;
            case 531594828:
                if (methodName.equals("NotifyTaskList")) {
                    postNotificationMsg(SteammessagesRemoteclientServiceMessages.CRemoteClient_TaskList_Notification.class, packetMsg);
                    break;
                }
                break;
            case 898625664:
                if (methodName.equals("NotifyUnregisterStatusUpdate")) {
                    postNotificationMsg(SteammessagesRemoteclientServiceMessages.CRemoteClient_UnregisterStatusUpdate_Notification.class, packetMsg);
                    break;
                }
                break;
            case 2026784423:
                if (methodName.equals("NotifyRegisterStatusUpdate")) {
                    postNotificationMsg(SteammessagesRemoteclientServiceMessages.CRemoteClient_RegisterStatusUpdate_Notification.class, packetMsg);
                    break;
                }
                break;
        }
    }

    public final void notifyRegisterStatusUpdate(SteammessagesRemoteclientServiceMessages.CRemoteClient_RegisterStatusUpdate_Notification request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        unifiedMessages.sendNotification("RemoteClientSteamClient.NotifyRegisterStatusUpdate#1", request);
    }

    public final void notifyUnregisterStatusUpdate(SteammessagesRemoteclientServiceMessages.CRemoteClient_UnregisterStatusUpdate_Notification request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        unifiedMessages.sendNotification("RemoteClientSteamClient.NotifyUnregisterStatusUpdate#1", request);
    }

    public final void notifyRemotePacket(SteammessagesRemoteclientServiceMessages.CRemoteClient_RemotePacket_Notification request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        unifiedMessages.sendNotification("RemoteClientSteamClient.NotifyRemotePacket#1", request);
    }

    public final void notifySteamBroadcastPacket(SteammessagesRemoteclientServiceMessages.CRemoteClient_SteamBroadcast_Notification request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        unifiedMessages.sendNotification("RemoteClientSteamClient.NotifySteamBroadcastPacket#1", request);
    }

    public final void notifySteamToSteamPacket(SteammessagesRemoteclientServiceMessages.CRemoteClient_SteamToSteam_Notification request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        unifiedMessages.sendNotification("RemoteClientSteamClient.NotifySteamToSteamPacket#1", request);
    }

    public final void notifyRemotePlayTogetherPacket(SteammessagesRemoteclientServiceMessages.CRemotePlayTogether_Notification request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        unifiedMessages.sendNotification("RemoteClientSteamClient.NotifyRemotePlayTogetherPacket#1", request);
    }

    public final void notifyTaskList(SteammessagesRemoteclientServiceMessages.CRemoteClient_TaskList_Notification request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        unifiedMessages.sendNotification("RemoteClientSteamClient.NotifyTaskList#1", request);
    }
}
