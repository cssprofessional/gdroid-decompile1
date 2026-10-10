package in.dragonbra.javasteam.rpc.service;

import in.dragonbra.javasteam.base.PacketClientMsgProtobuf;
import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient;
import in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.SteamUnifiedMessages;
import in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.UnifiedService;
import in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.callback.ServiceMethodResponse;
import in.dragonbra.javasteam.types.AsyncJobSingle;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: FriendMessages.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class FriendMessages extends UnifiedService {
    @Override // in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.UnifiedService
    public String getServiceName() {
        return "FriendMessages";
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FriendMessages(SteamUnifiedMessages unifiedMessages) {
        super(unifiedMessages);
        Intrinsics.checkNotNullParameter(unifiedMessages, "unifiedMessages");
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    @Override // in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.UnifiedService
    public void handleResponseMsg(String methodName, PacketClientMsgProtobuf packetMsg) {
        Intrinsics.checkNotNullParameter(methodName, "methodName");
        Intrinsics.checkNotNullParameter(packetMsg, "packetMsg");
        switch (methodName.hashCode()) {
            case -1935644865:
                if (methodName.equals("SendMessage")) {
                    postResponseMsg(SteammessagesFriendmessagesSteamclient.CFriendMessages_SendMessage_Response.class, packetMsg);
                    break;
                }
                break;
            case -1552725209:
                if (methodName.equals("UpdateMessageReaction")) {
                    postResponseMsg(SteammessagesFriendmessagesSteamclient.CFriendMessages_UpdateMessageReaction_Response.class, packetMsg);
                    break;
                }
                break;
            case -1148893014:
                if (methodName.equals("IsInFriendsUIBeta")) {
                    postResponseMsg(SteammessagesFriendmessagesSteamclient.CFriendMessages_IsInFriendsUIBeta_Response.class, packetMsg);
                    break;
                }
                break;
            case 719241288:
                if (methodName.equals("GetActiveMessageSessions")) {
                    postResponseMsg(SteammessagesFriendmessagesSteamclient.CFriendsMessages_GetActiveMessageSessions_Response.class, packetMsg);
                    break;
                }
                break;
            case 1319054749:
                if (methodName.equals("GetRecentMessages")) {
                    postResponseMsg(SteammessagesFriendmessagesSteamclient.CFriendMessages_GetRecentMessages_Response.class, packetMsg);
                    break;
                }
                break;
        }
    }

    @Override // in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.UnifiedService
    public void handleNotificationMsg(String methodName, PacketClientMsgProtobuf packetMsg) {
        Intrinsics.checkNotNullParameter(methodName, "methodName");
        Intrinsics.checkNotNullParameter(packetMsg, "packetMsg");
        if (Intrinsics.areEqual(methodName, "AckMessage")) {
            postNotificationMsg(SteammessagesFriendmessagesSteamclient.CFriendMessages_AckMessage_Notification.class, packetMsg);
        }
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesFriendmessagesSteamclient.CFriendMessages_GetRecentMessages_Response.Builder>> getRecentMessages(SteammessagesFriendmessagesSteamclient.CFriendMessages_GetRecentMessages_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesFriendmessagesSteamclient.CFriendMessages_GetRecentMessages_Response.Builder.class, "FriendMessages.GetRecentMessages#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesFriendmessagesSteamclient.CFriendsMessages_GetActiveMessageSessions_Response.Builder>> getActiveMessageSessions(SteammessagesFriendmessagesSteamclient.CFriendsMessages_GetActiveMessageSessions_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesFriendmessagesSteamclient.CFriendsMessages_GetActiveMessageSessions_Response.Builder.class, "FriendMessages.GetActiveMessageSessions#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesFriendmessagesSteamclient.CFriendMessages_SendMessage_Response.Builder>> sendMessage(SteammessagesFriendmessagesSteamclient.CFriendMessages_SendMessage_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesFriendmessagesSteamclient.CFriendMessages_SendMessage_Response.Builder.class, "FriendMessages.SendMessage#1", request);
    }

    public final void ackMessage(SteammessagesFriendmessagesSteamclient.CFriendMessages_AckMessage_Notification request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        unifiedMessages.sendNotification("FriendMessages.AckMessage#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesFriendmessagesSteamclient.CFriendMessages_IsInFriendsUIBeta_Response.Builder>> isInFriendsUIBeta(SteammessagesFriendmessagesSteamclient.CFriendMessages_IsInFriendsUIBeta_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesFriendmessagesSteamclient.CFriendMessages_IsInFriendsUIBeta_Response.Builder.class, "FriendMessages.IsInFriendsUIBeta#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesFriendmessagesSteamclient.CFriendMessages_UpdateMessageReaction_Response.Builder>> updateMessageReaction(SteammessagesFriendmessagesSteamclient.CFriendMessages_UpdateMessageReaction_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesFriendmessagesSteamclient.CFriendMessages_UpdateMessageReaction_Response.Builder.class, "FriendMessages.UpdateMessageReaction#1", request);
    }
}
