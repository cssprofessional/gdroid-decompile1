package in.dragonbra.javasteam.rpc.service;

import in.dragonbra.javasteam.base.PacketClientMsgProtobuf;
import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient;
import in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.SteamUnifiedMessages;
import in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.UnifiedService;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: GameNotificationsClient.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class GameNotificationsClient extends UnifiedService {
    @Override // in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.UnifiedService
    public void handleResponseMsg(String methodName, PacketClientMsgProtobuf packetMsg) {
        Intrinsics.checkNotNullParameter(methodName, "methodName");
        Intrinsics.checkNotNullParameter(packetMsg, "packetMsg");
    }

    @Override // in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.UnifiedService
    public String getServiceName() {
        return "GameNotificationsClient";
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GameNotificationsClient(SteamUnifiedMessages unifiedMessages) {
        super(unifiedMessages);
        Intrinsics.checkNotNullParameter(unifiedMessages, "unifiedMessages");
    }

    @Override // in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.UnifiedService
    public void handleNotificationMsg(String methodName, PacketClientMsgProtobuf packetMsg) {
        Intrinsics.checkNotNullParameter(methodName, "methodName");
        Intrinsics.checkNotNullParameter(packetMsg, "packetMsg");
        if (Intrinsics.areEqual(methodName, "OnNotificationsRequested")) {
            postNotificationMsg(SteammessagesGamenotificationsSteamclient.CGameNotifications_OnNotificationsRequested_Notification.class, packetMsg);
        } else if (Intrinsics.areEqual(methodName, "OnUserStatusChanged")) {
            postNotificationMsg(SteammessagesGamenotificationsSteamclient.CGameNotifications_OnUserStatusChanged_Notification.class, packetMsg);
        }
    }

    public final void onNotificationsRequested(SteammessagesGamenotificationsSteamclient.CGameNotifications_OnNotificationsRequested_Notification request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        unifiedMessages.sendNotification("GameNotificationsClient.OnNotificationsRequested#1", request);
    }

    public final void onUserStatusChanged(SteammessagesGamenotificationsSteamclient.CGameNotifications_OnUserStatusChanged_Notification request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        unifiedMessages.sendNotification("GameNotificationsClient.OnUserStatusChanged#1", request);
    }
}
