package in.dragonbra.javasteam.rpc.service;

import in.dragonbra.javasteam.base.PacketClientMsgProtobuf;
import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient;
import in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.SteamUnifiedMessages;
import in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.UnifiedService;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ParentalClient.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class ParentalClient extends UnifiedService {
    @Override // in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.UnifiedService
    public void handleResponseMsg(String methodName, PacketClientMsgProtobuf packetMsg) {
        Intrinsics.checkNotNullParameter(methodName, "methodName");
        Intrinsics.checkNotNullParameter(packetMsg, "packetMsg");
    }

    @Override // in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.UnifiedService
    public String getServiceName() {
        return "ParentalClient";
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ParentalClient(SteamUnifiedMessages unifiedMessages) {
        super(unifiedMessages);
        Intrinsics.checkNotNullParameter(unifiedMessages, "unifiedMessages");
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    @Override // in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.UnifiedService
    public void handleNotificationMsg(String methodName, PacketClientMsgProtobuf packetMsg) {
        Intrinsics.checkNotNullParameter(methodName, "methodName");
        Intrinsics.checkNotNullParameter(packetMsg, "packetMsg");
        switch (methodName.hashCode()) {
            case 165125479:
                if (methodName.equals("NotifyPlaytimeUsed")) {
                    postNotificationMsg(SteammessagesParentalSteamclient.CParental_PlaytimeUsed_Notification.class, packetMsg);
                    break;
                }
                break;
            case 828301364:
                if (methodName.equals("NotifyLock")) {
                    postNotificationMsg(SteammessagesParentalSteamclient.CParental_ParentalLock_Notification.class, packetMsg);
                    break;
                }
                break;
            case 1685675021:
                if (methodName.equals("NotifyUnlock")) {
                    postNotificationMsg(SteammessagesParentalSteamclient.CParental_ParentalUnlock_Notification.class, packetMsg);
                    break;
                }
                break;
            case 2018277756:
                if (methodName.equals("NotifySettingsChange")) {
                    postNotificationMsg(SteammessagesParentalSteamclient.CParental_ParentalSettingsChange_Notification.class, packetMsg);
                    break;
                }
                break;
        }
    }

    public final void notifySettingsChange(SteammessagesParentalSteamclient.CParental_ParentalSettingsChange_Notification request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        unifiedMessages.sendNotification("ParentalClient.NotifySettingsChange#1", request);
    }

    public final void notifyUnlock(SteammessagesParentalSteamclient.CParental_ParentalUnlock_Notification request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        unifiedMessages.sendNotification("ParentalClient.NotifyUnlock#1", request);
    }

    public final void notifyLock(SteammessagesParentalSteamclient.CParental_ParentalLock_Notification request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        unifiedMessages.sendNotification("ParentalClient.NotifyLock#1", request);
    }

    public final void notifyPlaytimeUsed(SteammessagesParentalSteamclient.CParental_PlaytimeUsed_Notification request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        unifiedMessages.sendNotification("ParentalClient.NotifyPlaytimeUsed#1", request);
    }
}
