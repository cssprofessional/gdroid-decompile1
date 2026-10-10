package in.dragonbra.javasteam.rpc.service;

import in.dragonbra.javasteam.base.PacketClientMsgProtobuf;
import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFriendmessagesSteamclient;
import in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.SteamUnifiedMessages;
import in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.UnifiedService;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: FriendMessagesClient.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class FriendMessagesClient extends UnifiedService {
    @Override // in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.UnifiedService
    public void handleResponseMsg(String methodName, PacketClientMsgProtobuf packetMsg) {
        Intrinsics.checkNotNullParameter(methodName, "methodName");
        Intrinsics.checkNotNullParameter(packetMsg, "packetMsg");
    }

    @Override // in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.UnifiedService
    public String getServiceName() {
        return "FriendMessagesClient";
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FriendMessagesClient(SteamUnifiedMessages unifiedMessages) {
        super(unifiedMessages);
        Intrinsics.checkNotNullParameter(unifiedMessages, "unifiedMessages");
    }

    @Override // in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.UnifiedService
    public void handleNotificationMsg(String methodName, PacketClientMsgProtobuf packetMsg) {
        Intrinsics.checkNotNullParameter(methodName, "methodName");
        Intrinsics.checkNotNullParameter(packetMsg, "packetMsg");
        int iHashCode = methodName.hashCode();
        if (iHashCode == -1065222352) {
            if (methodName.equals("MessageReaction")) {
                postNotificationMsg(SteammessagesFriendmessagesSteamclient.CFriendMessages_MessageReaction_Notification.class, packetMsg);
            }
        } else if (iHashCode == -197918495) {
            if (methodName.equals("IncomingMessage")) {
                postNotificationMsg(SteammessagesFriendmessagesSteamclient.CFriendMessages_IncomingMessage_Notification.class, packetMsg);
            }
        } else if (iHashCode == 1029559884 && methodName.equals("NotifyAckMessageEcho")) {
            postNotificationMsg(SteammessagesFriendmessagesSteamclient.CFriendMessages_AckMessage_Notification.class, packetMsg);
        }
    }

    public final void incomingMessage(SteammessagesFriendmessagesSteamclient.CFriendMessages_IncomingMessage_Notification request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        unifiedMessages.sendNotification("FriendMessagesClient.IncomingMessage#1", request);
    }

    public final void notifyAckMessageEcho(SteammessagesFriendmessagesSteamclient.CFriendMessages_AckMessage_Notification request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        unifiedMessages.sendNotification("FriendMessagesClient.NotifyAckMessageEcho#1", request);
    }

    public final void messageReaction(SteammessagesFriendmessagesSteamclient.CFriendMessages_MessageReaction_Notification request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        unifiedMessages.sendNotification("FriendMessagesClient.MessageReaction#1", request);
    }
}
