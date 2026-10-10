package in.dragonbra.javasteam.rpc.service;

import in.dragonbra.javasteam.base.PacketClientMsgProtobuf;
import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesRemoteclientServiceMessages;
import in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.SteamUnifiedMessages;
import in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.UnifiedService;
import in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.callback.ServiceMethodResponse;
import in.dragonbra.javasteam.types.AsyncJobSingle;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: RemoteClient.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class RemoteClient extends UnifiedService {
    @Override // in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.UnifiedService
    public String getServiceName() {
        return "RemoteClient";
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RemoteClient(SteamUnifiedMessages unifiedMessages) {
        super(unifiedMessages);
        Intrinsics.checkNotNullParameter(unifiedMessages, "unifiedMessages");
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    @Override // in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.UnifiedService
    public void handleResponseMsg(String methodName, PacketClientMsgProtobuf packetMsg) {
        Intrinsics.checkNotNullParameter(methodName, "methodName");
        Intrinsics.checkNotNullParameter(packetMsg, "packetMsg");
        switch (methodName.hashCode()) {
            case -1783680092:
                if (methodName.equals("AllocateSDR")) {
                    postResponseMsg(SteammessagesRemoteclientServiceMessages.CRemoteClient_AllocateSDR_Response.class, packetMsg);
                    break;
                }
                break;
            case -1321973397:
                if (methodName.equals("MarkTaskComplete")) {
                    postResponseMsg(SteammessagesRemoteclientServiceMessages.CRemoteClient_MarkTaskComplete_Response.class, packetMsg);
                    break;
                }
                break;
            case -673301736:
                if (methodName.equals("DeleteRemotePlayTogetherInvitation")) {
                    postResponseMsg(SteammessagesRemoteclientServiceMessages.CRemoteClient_DeleteRemotePlayTogetherInvitation_Response.class, packetMsg);
                    break;
                }
                break;
            case -666347904:
                if (methodName.equals("GetPairingInfo")) {
                    postResponseMsg(SteammessagesRemoteclientServiceMessages.CRemoteClient_GetPairingInfo_Response.class, packetMsg);
                    break;
                }
                break;
            case -239197463:
                if (methodName.equals("CreateRemotePlayTogetherInvitation")) {
                    postResponseMsg(SteammessagesRemoteclientServiceMessages.CRemoteClient_CreateRemotePlayTogetherInvitation_Response.class, packetMsg);
                    break;
                }
                break;
            case -55274089:
                if (methodName.equals("AllocateRelayServer")) {
                    postResponseMsg(SteammessagesRemoteclientServiceMessages.CRemoteClient_AllocateRelayServer_Response.class, packetMsg);
                    break;
                }
                break;
            case 384920589:
                if (methodName.equals("SendRemotePlaySessionStarted")) {
                    postResponseMsg(SteammessagesRemoteclientServiceMessages.CRemotePlay_SessionStarted_Response.class, packetMsg);
                    break;
                }
                break;
            case 502401943:
                if (methodName.equals("GetRecentClients")) {
                    postResponseMsg(SteammessagesRemoteclientServiceMessages.CRemoteClient_GetRecentClients_Response.class, packetMsg);
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
            case -1164571415:
                if (methodName.equals("NotifyReplyPacket")) {
                    postNotificationMsg(SteammessagesRemoteclientServiceMessages.CRemoteClient_ReplyPacket_Notification.class, packetMsg);
                    break;
                }
                break;
            case -1109265820:
                if (methodName.equals("SendRemotePlayTogetherPacket")) {
                    postNotificationMsg(SteammessagesRemoteclientServiceMessages.CRemotePlayTogether_Notification.class, packetMsg);
                    break;
                }
                break;
            case 397786457:
                if (methodName.equals("SendRemotePlaySessionStopped")) {
                    postNotificationMsg(SteammessagesRemoteclientServiceMessages.CRemotePlay_SessionStopped_Notification.class, packetMsg);
                    break;
                }
                break;
            case 1000275201:
                if (methodName.equals("SendSteamBroadcastPacket")) {
                    postNotificationMsg(SteammessagesRemoteclientServiceMessages.CRemoteClient_SteamBroadcast_Notification.class, packetMsg);
                    break;
                }
                break;
            case 1513894684:
                if (methodName.equals("NotifyOnline")) {
                    postNotificationMsg(SteammessagesRemoteclientServiceMessages.CRemoteClient_Online_Notification.class, packetMsg);
                    break;
                }
                break;
            case 1912898261:
                if (methodName.equals("SendSteamToSteamPacket")) {
                    postNotificationMsg(SteammessagesRemoteclientServiceMessages.CRemoteClient_SteamToSteam_Notification.class, packetMsg);
                    break;
                }
                break;
        }
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesRemoteclientServiceMessages.CRemoteClient_GetPairingInfo_Response.Builder>> getPairingInfo(SteammessagesRemoteclientServiceMessages.CRemoteClient_GetPairingInfo_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesRemoteclientServiceMessages.CRemoteClient_GetPairingInfo_Response.Builder.class, "RemoteClient.GetPairingInfo#1", request);
    }

    public final void notifyOnline(SteammessagesRemoteclientServiceMessages.CRemoteClient_Online_Notification request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        unifiedMessages.sendNotification("RemoteClient.NotifyOnline#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesRemoteclientServiceMessages.CRemoteClient_GetRecentClients_Response.Builder>> getRecentClients(SteammessagesRemoteclientServiceMessages.CRemoteClient_GetRecentClients_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesRemoteclientServiceMessages.CRemoteClient_GetRecentClients_Response.Builder.class, "RemoteClient.GetRecentClients#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesRemoteclientServiceMessages.CRemoteClient_MarkTaskComplete_Response.Builder>> markTaskComplete(SteammessagesRemoteclientServiceMessages.CRemoteClient_MarkTaskComplete_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesRemoteclientServiceMessages.CRemoteClient_MarkTaskComplete_Response.Builder.class, "RemoteClient.MarkTaskComplete#1", request);
    }

    public final void notifyReplyPacket(SteammessagesRemoteclientServiceMessages.CRemoteClient_ReplyPacket_Notification request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        unifiedMessages.sendNotification("RemoteClient.NotifyReplyPacket#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesRemoteclientServiceMessages.CRemoteClient_AllocateRelayServer_Response.Builder>> allocateRelayServer(SteammessagesRemoteclientServiceMessages.CRemoteClient_AllocateRelayServer_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesRemoteclientServiceMessages.CRemoteClient_AllocateRelayServer_Response.Builder.class, "RemoteClient.AllocateRelayServer#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesRemoteclientServiceMessages.CRemoteClient_AllocateSDR_Response.Builder>> allocateSDR(SteammessagesRemoteclientServiceMessages.CRemoteClient_AllocateSDR_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesRemoteclientServiceMessages.CRemoteClient_AllocateSDR_Response.Builder.class, "RemoteClient.AllocateSDR#1", request);
    }

    public final void sendSteamBroadcastPacket(SteammessagesRemoteclientServiceMessages.CRemoteClient_SteamBroadcast_Notification request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        unifiedMessages.sendNotification("RemoteClient.SendSteamBroadcastPacket#1", request);
    }

    public final void sendSteamToSteamPacket(SteammessagesRemoteclientServiceMessages.CRemoteClient_SteamToSteam_Notification request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        unifiedMessages.sendNotification("RemoteClient.SendSteamToSteamPacket#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesRemoteclientServiceMessages.CRemotePlay_SessionStarted_Response.Builder>> sendRemotePlaySessionStarted(SteammessagesRemoteclientServiceMessages.CRemotePlay_SessionStarted_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesRemoteclientServiceMessages.CRemotePlay_SessionStarted_Response.Builder.class, "RemoteClient.SendRemotePlaySessionStarted#1", request);
    }

    public final void sendRemotePlaySessionStopped(SteammessagesRemoteclientServiceMessages.CRemotePlay_SessionStopped_Notification request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        unifiedMessages.sendNotification("RemoteClient.SendRemotePlaySessionStopped#1", request);
    }

    public final void sendRemotePlayTogetherPacket(SteammessagesRemoteclientServiceMessages.CRemotePlayTogether_Notification request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        unifiedMessages.sendNotification("RemoteClient.SendRemotePlayTogetherPacket#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesRemoteclientServiceMessages.CRemoteClient_CreateRemotePlayTogetherInvitation_Response.Builder>> createRemotePlayTogetherInvitation(SteammessagesRemoteclientServiceMessages.CRemoteClient_CreateRemotePlayTogetherInvitation_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesRemoteclientServiceMessages.CRemoteClient_CreateRemotePlayTogetherInvitation_Response.Builder.class, "RemoteClient.CreateRemotePlayTogetherInvitation#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesRemoteclientServiceMessages.CRemoteClient_DeleteRemotePlayTogetherInvitation_Response.Builder>> deleteRemotePlayTogetherInvitation(SteammessagesRemoteclientServiceMessages.CRemoteClient_DeleteRemotePlayTogetherInvitation_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesRemoteclientServiceMessages.CRemoteClient_DeleteRemotePlayTogetherInvitation_Response.Builder.class, "RemoteClient.DeleteRemotePlayTogetherInvitation#1", request);
    }
}
