package in.dragonbra.javasteam.rpc.service;

import in.dragonbra.javasteam.base.PacketClientMsgProtobuf;
import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesPlayerSteamclient;
import in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.SteamUnifiedMessages;
import in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.UnifiedService;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: PlayerClient.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class PlayerClient extends UnifiedService {
    @Override // in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.UnifiedService
    public void handleResponseMsg(String methodName, PacketClientMsgProtobuf packetMsg) {
        Intrinsics.checkNotNullParameter(methodName, "methodName");
        Intrinsics.checkNotNullParameter(packetMsg, "packetMsg");
    }

    @Override // in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.UnifiedService
    public String getServiceName() {
        return "PlayerClient";
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PlayerClient(SteamUnifiedMessages unifiedMessages) {
        super(unifiedMessages);
        Intrinsics.checkNotNullParameter(unifiedMessages, "unifiedMessages");
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    @Override // in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.UnifiedService
    public void handleNotificationMsg(String methodName, PacketClientMsgProtobuf packetMsg) {
        Intrinsics.checkNotNullParameter(methodName, "methodName");
        Intrinsics.checkNotNullParameter(packetMsg, "packetMsg");
        switch (methodName.hashCode()) {
            case -2009562308:
                if (methodName.equals("NotifyCommunityPreferencesChanged")) {
                    postNotificationMsg(SteammessagesPlayerSteamclient.CPlayer_CommunityPreferencesChanged_Notification.class, packetMsg);
                    break;
                }
                break;
            case -1858893586:
                if (methodName.equals("NotifyPerFriendPreferencesChanged")) {
                    postNotificationMsg(SteammessagesPlayerSteamclient.CPlayer_PerFriendPreferencesChanged_Notification.class, packetMsg);
                    break;
                }
                break;
            case -1597100033:
                if (methodName.equals("NotifyFriendNicknameChanged")) {
                    postNotificationMsg(SteammessagesPlayerSteamclient.CPlayer_FriendNicknameChanged_Notification.class, packetMsg);
                    break;
                }
                break;
            case -1227446825:
                if (methodName.equals("NotifyFriendEquippedProfileItemsChanged")) {
                    postNotificationMsg(SteammessagesPlayerSteamclient.CPlayer_FriendEquippedProfileItemsChanged_Notification.class, packetMsg);
                    break;
                }
                break;
            case -969038279:
                if (methodName.equals("NotifyTextFilterWordsChanged")) {
                    postNotificationMsg(SteammessagesPlayerSteamclient.CPlayer_TextFilterWordsChanged_Notification.class, packetMsg);
                    break;
                }
                break;
            case -183034072:
                if (methodName.equals("NotifyPrivacyPrivacySettingsChanged")) {
                    postNotificationMsg(SteammessagesPlayerSteamclient.CPlayer_PrivacySettingsChanged_Notification.class, packetMsg);
                    break;
                }
                break;
            case 672389396:
                if (methodName.equals("NotifyLastPlayedTimes")) {
                    postNotificationMsg(SteammessagesPlayerSteamclient.CPlayer_LastPlayedTimes_Notification.class, packetMsg);
                    break;
                }
                break;
            case 1054320241:
                if (methodName.equals("NotifyNewSteamAnnouncementState")) {
                    postNotificationMsg(SteammessagesPlayerSteamclient.CPlayer_NewSteamAnnouncementState_Notification.class, packetMsg);
                    break;
                }
                break;
        }
    }

    public final void notifyLastPlayedTimes(SteammessagesPlayerSteamclient.CPlayer_LastPlayedTimes_Notification request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        unifiedMessages.sendNotification("PlayerClient.NotifyLastPlayedTimes#1", request);
    }

    public final void notifyFriendNicknameChanged(SteammessagesPlayerSteamclient.CPlayer_FriendNicknameChanged_Notification request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        unifiedMessages.sendNotification("PlayerClient.NotifyFriendNicknameChanged#1", request);
    }

    public final void notifyFriendEquippedProfileItemsChanged(SteammessagesPlayerSteamclient.CPlayer_FriendEquippedProfileItemsChanged_Notification request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        unifiedMessages.sendNotification("PlayerClient.NotifyFriendEquippedProfileItemsChanged#1", request);
    }

    public final void notifyNewSteamAnnouncementState(SteammessagesPlayerSteamclient.CPlayer_NewSteamAnnouncementState_Notification request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        unifiedMessages.sendNotification("PlayerClient.NotifyNewSteamAnnouncementState#1", request);
    }

    public final void notifyCommunityPreferencesChanged(SteammessagesPlayerSteamclient.CPlayer_CommunityPreferencesChanged_Notification request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        unifiedMessages.sendNotification("PlayerClient.NotifyCommunityPreferencesChanged#1", request);
    }

    public final void notifyTextFilterWordsChanged(SteammessagesPlayerSteamclient.CPlayer_TextFilterWordsChanged_Notification request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        unifiedMessages.sendNotification("PlayerClient.NotifyTextFilterWordsChanged#1", request);
    }

    public final void notifyPerFriendPreferencesChanged(SteammessagesPlayerSteamclient.CPlayer_PerFriendPreferencesChanged_Notification request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        unifiedMessages.sendNotification("PlayerClient.NotifyPerFriendPreferencesChanged#1", request);
    }

    public final void notifyPrivacyPrivacySettingsChanged(SteammessagesPlayerSteamclient.CPlayer_PrivacySettingsChanged_Notification request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        unifiedMessages.sendNotification("PlayerClient.NotifyPrivacyPrivacySettingsChanged#1", request);
    }
}
