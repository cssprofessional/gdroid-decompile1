package in.dragonbra.javasteam.rpc.service;

import in.dragonbra.javasteam.base.PacketClientMsgProtobuf;
import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFamilygroupsSteamclient;
import in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.SteamUnifiedMessages;
import in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.UnifiedService;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: FamilyGroupsClient.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class FamilyGroupsClient extends UnifiedService {
    @Override // in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.UnifiedService
    public void handleResponseMsg(String methodName, PacketClientMsgProtobuf packetMsg) {
        Intrinsics.checkNotNullParameter(methodName, "methodName");
        Intrinsics.checkNotNullParameter(packetMsg, "packetMsg");
    }

    @Override // in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.UnifiedService
    public String getServiceName() {
        return "FamilyGroupsClient";
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FamilyGroupsClient(SteamUnifiedMessages unifiedMessages) {
        super(unifiedMessages);
        Intrinsics.checkNotNullParameter(unifiedMessages, "unifiedMessages");
    }

    @Override // in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.UnifiedService
    public void handleNotificationMsg(String methodName, PacketClientMsgProtobuf packetMsg) {
        Intrinsics.checkNotNullParameter(methodName, "methodName");
        Intrinsics.checkNotNullParameter(packetMsg, "packetMsg");
        int iHashCode = methodName.hashCode();
        if (iHashCode == -1954974296) {
            if (methodName.equals("NotifyRunningApps")) {
                postNotificationMsg(SteammessagesFamilygroupsSteamclient.CFamilyGroupsClient_NotifyRunningApps_Notification.class, packetMsg);
            }
        } else if (iHashCode == -999898524) {
            if (methodName.equals("NotifyInviteStatus")) {
                postNotificationMsg(SteammessagesFamilygroupsSteamclient.CFamilyGroupsClient_InviteStatus_Notification.class, packetMsg);
            }
        } else if (iHashCode == -897545922 && methodName.equals("NotifyGroupChanged")) {
            postNotificationMsg(SteammessagesFamilygroupsSteamclient.CFamilyGroupsClient_GroupChanged_Notification.class, packetMsg);
        }
    }

    public final void notifyRunningApps(SteammessagesFamilygroupsSteamclient.CFamilyGroupsClient_NotifyRunningApps_Notification request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        unifiedMessages.sendNotification("FamilyGroupsClient.NotifyRunningApps#1", request);
    }

    public final void notifyInviteStatus(SteammessagesFamilygroupsSteamclient.CFamilyGroupsClient_InviteStatus_Notification request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        unifiedMessages.sendNotification("FamilyGroupsClient.NotifyInviteStatus#1", request);
    }

    public final void notifyGroupChanged(SteammessagesFamilygroupsSteamclient.CFamilyGroupsClient_GroupChanged_Notification request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        unifiedMessages.sendNotification("FamilyGroupsClient.NotifyGroupChanged#1", request);
    }
}
