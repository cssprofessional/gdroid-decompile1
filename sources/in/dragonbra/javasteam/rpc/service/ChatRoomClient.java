package in.dragonbra.javasteam.rpc.service;

import in.dragonbra.javasteam.base.PacketClientMsgProtobuf;
import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesChatSteamclient;
import in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.SteamUnifiedMessages;
import in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.UnifiedService;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ChatRoomClient.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class ChatRoomClient extends UnifiedService {
    @Override // in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.UnifiedService
    public void handleResponseMsg(String methodName, PacketClientMsgProtobuf packetMsg) {
        Intrinsics.checkNotNullParameter(methodName, "methodName");
        Intrinsics.checkNotNullParameter(packetMsg, "packetMsg");
    }

    @Override // in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.UnifiedService
    public String getServiceName() {
        return "ChatRoomClient";
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ChatRoomClient(SteamUnifiedMessages unifiedMessages) {
        super(unifiedMessages);
        Intrinsics.checkNotNullParameter(unifiedMessages, "unifiedMessages");
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    @Override // in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.UnifiedService
    public void handleNotificationMsg(String methodName, PacketClientMsgProtobuf packetMsg) {
        Intrinsics.checkNotNullParameter(methodName, "methodName");
        Intrinsics.checkNotNullParameter(packetMsg, "packetMsg");
        switch (methodName.hashCode()) {
            case -2142134432:
                if (methodName.equals("NotifyIncomingChatMessage")) {
                    postNotificationMsg(SteammessagesChatSteamclient.CChatRoom_IncomingChatMessage_Notification.class, packetMsg);
                    break;
                }
                break;
            case -1864792002:
                if (methodName.equals("NotifyMemberStateChange")) {
                    postNotificationMsg(SteammessagesChatSteamclient.CChatRoom_MemberStateChange_Notification.class, packetMsg);
                    break;
                }
                break;
            case -1728897881:
                if (methodName.equals("NotifyMessageReaction")) {
                    postNotificationMsg(SteammessagesChatSteamclient.CChatRoom_MessageReaction_Notification.class, packetMsg);
                    break;
                }
                break;
            case -1329038068:
                if (methodName.equals("NotifyChatGroupUserStateChanged")) {
                    postNotificationMsg(SteammessagesChatSteamclient.ChatRoomClient_NotifyChatGroupUserStateChanged_Notification.class, packetMsg);
                    break;
                }
                break;
            case -290122811:
                if (methodName.equals("NotifyChatRoomGroupRoomsChange")) {
                    postNotificationMsg(SteammessagesChatSteamclient.CChatRoom_ChatRoomGroupRoomsChange_Notification.class, packetMsg);
                    break;
                }
                break;
            case 266722456:
                if (methodName.equals("NotifyChatRoomDisconnect")) {
                    postNotificationMsg(SteammessagesChatSteamclient.ChatRoomClient_NotifyChatRoomDisconnect_Notification.class, packetMsg);
                    break;
                }
                break;
            case 469748559:
                if (methodName.equals("NotifyChatMessageModified")) {
                    postNotificationMsg(SteammessagesChatSteamclient.CChatRoom_ChatMessageModified_Notification.class, packetMsg);
                    break;
                }
                break;
            case 922390773:
                if (methodName.equals("NotifyMemberListViewUpdated")) {
                    postNotificationMsg(SteammessagesChatSteamclient.CChatRoomClient_MemberListViewUpdated_Notification.class, packetMsg);
                    break;
                }
                break;
            case 1208624084:
                if (methodName.equals("NotifyAckChatMessageEcho")) {
                    postNotificationMsg(SteammessagesChatSteamclient.CChatRoom_AckChatMessage_Notification.class, packetMsg);
                    break;
                }
                break;
            case 1240282968:
                if (methodName.equals("NotifyChatRoomHeaderStateChange")) {
                    postNotificationMsg(SteammessagesChatSteamclient.CChatRoom_ChatRoomHeaderState_Notification.class, packetMsg);
                    break;
                }
                break;
            case 2083350046:
                if (methodName.equals("NotifyShouldRejoinChatRoomVoiceChat")) {
                    postNotificationMsg(SteammessagesChatSteamclient.CChatRoom_NotifyShouldRejoinChatRoomVoiceChat_Notification.class, packetMsg);
                    break;
                }
                break;
        }
    }

    public final void notifyIncomingChatMessage(SteammessagesChatSteamclient.CChatRoom_IncomingChatMessage_Notification request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        unifiedMessages.sendNotification("ChatRoomClient.NotifyIncomingChatMessage#1", request);
    }

    public final void notifyChatMessageModified(SteammessagesChatSteamclient.CChatRoom_ChatMessageModified_Notification request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        unifiedMessages.sendNotification("ChatRoomClient.NotifyChatMessageModified#1", request);
    }

    public final void notifyMemberStateChange(SteammessagesChatSteamclient.CChatRoom_MemberStateChange_Notification request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        unifiedMessages.sendNotification("ChatRoomClient.NotifyMemberStateChange#1", request);
    }

    public final void notifyChatRoomHeaderStateChange(SteammessagesChatSteamclient.CChatRoom_ChatRoomHeaderState_Notification request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        unifiedMessages.sendNotification("ChatRoomClient.NotifyChatRoomHeaderStateChange#1", request);
    }

    public final void notifyChatRoomGroupRoomsChange(SteammessagesChatSteamclient.CChatRoom_ChatRoomGroupRoomsChange_Notification request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        unifiedMessages.sendNotification("ChatRoomClient.NotifyChatRoomGroupRoomsChange#1", request);
    }

    public final void notifyShouldRejoinChatRoomVoiceChat(SteammessagesChatSteamclient.CChatRoom_NotifyShouldRejoinChatRoomVoiceChat_Notification request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        unifiedMessages.sendNotification("ChatRoomClient.NotifyShouldRejoinChatRoomVoiceChat#1", request);
    }

    public final void notifyChatGroupUserStateChanged(SteammessagesChatSteamclient.ChatRoomClient_NotifyChatGroupUserStateChanged_Notification request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        unifiedMessages.sendNotification("ChatRoomClient.NotifyChatGroupUserStateChanged#1", request);
    }

    public final void notifyAckChatMessageEcho(SteammessagesChatSteamclient.CChatRoom_AckChatMessage_Notification request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        unifiedMessages.sendNotification("ChatRoomClient.NotifyAckChatMessageEcho#1", request);
    }

    public final void notifyChatRoomDisconnect(SteammessagesChatSteamclient.ChatRoomClient_NotifyChatRoomDisconnect_Notification request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        unifiedMessages.sendNotification("ChatRoomClient.NotifyChatRoomDisconnect#1", request);
    }

    public final void notifyMemberListViewUpdated(SteammessagesChatSteamclient.CChatRoomClient_MemberListViewUpdated_Notification request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        unifiedMessages.sendNotification("ChatRoomClient.NotifyMemberListViewUpdated#1", request);
    }

    public final void notifyMessageReaction(SteammessagesChatSteamclient.CChatRoom_MessageReaction_Notification request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        unifiedMessages.sendNotification("ChatRoomClient.NotifyMessageReaction#1", request);
    }
}
