package in.dragonbra.javasteam.rpc.service;

import in.dragonbra.javasteam.base.PacketClientMsgProtobuf;
import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesChatSteamclient;
import in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.SteamUnifiedMessages;
import in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.UnifiedService;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ChatUsabilityClient.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class ChatUsabilityClient extends UnifiedService {
    @Override // in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.UnifiedService
    public void handleResponseMsg(String methodName, PacketClientMsgProtobuf packetMsg) {
        Intrinsics.checkNotNullParameter(methodName, "methodName");
        Intrinsics.checkNotNullParameter(packetMsg, "packetMsg");
    }

    @Override // in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.UnifiedService
    public String getServiceName() {
        return "ChatUsabilityClient";
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ChatUsabilityClient(SteamUnifiedMessages unifiedMessages) {
        super(unifiedMessages);
        Intrinsics.checkNotNullParameter(unifiedMessages, "unifiedMessages");
    }

    @Override // in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.UnifiedService
    public void handleNotificationMsg(String methodName, PacketClientMsgProtobuf packetMsg) {
        Intrinsics.checkNotNullParameter(methodName, "methodName");
        Intrinsics.checkNotNullParameter(packetMsg, "packetMsg");
        if (Intrinsics.areEqual(methodName, "NotifyRequestClientUsabilityMetrics")) {
            postNotificationMsg(SteammessagesChatSteamclient.CChatUsability_RequestClientUsabilityMetrics_Notification.class, packetMsg);
        }
    }

    public final void notifyRequestClientUsabilityMetrics(SteammessagesChatSteamclient.CChatUsability_RequestClientUsabilityMetrics_Notification request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        unifiedMessages.sendNotification("ChatUsabilityClient.NotifyRequestClientUsabilityMetrics#1", request);
    }
}
