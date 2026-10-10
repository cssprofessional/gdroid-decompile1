package in.dragonbra.javasteam.rpc.service;

import in.dragonbra.javasteam.base.PacketClientMsgProtobuf;
import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesPlayerSteamclient;
import in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.SteamUnifiedMessages;
import in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.UnifiedService;
import in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.callback.ServiceMethodResponse;
import in.dragonbra.javasteam.types.AsyncJobSingle;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: Player.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class Player extends UnifiedService {
    @Override // in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.UnifiedService
    public void handleNotificationMsg(String methodName, PacketClientMsgProtobuf packetMsg) {
        Intrinsics.checkNotNullParameter(methodName, "methodName");
        Intrinsics.checkNotNullParameter(packetMsg, "packetMsg");
    }

    @Override // in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.UnifiedService
    public String getServiceName() {
        return "Player";
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Player(SteamUnifiedMessages unifiedMessages) {
        super(unifiedMessages);
        Intrinsics.checkNotNullParameter(unifiedMessages, "unifiedMessages");
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    @Override // in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.UnifiedService
    public void handleResponseMsg(String methodName, PacketClientMsgProtobuf packetMsg) {
        Intrinsics.checkNotNullParameter(methodName, "methodName");
        Intrinsics.checkNotNullParameter(packetMsg, "packetMsg");
        switch (methodName.hashCode()) {
            case -2099873126:
                if (methodName.equals("GetEmoticonList")) {
                    postResponseMsg(SteammessagesPlayerSteamclient.CPlayer_GetEmoticonList_Response.class, packetMsg);
                    break;
                }
                break;
            case -1854319853:
                if (methodName.equals("GetFriendsGameplayInfo")) {
                    postResponseMsg(SteammessagesPlayerSteamclient.CPlayer_GetFriendsGameplayInfo_Response.class, packetMsg);
                    break;
                }
                break;
            case -1793638735:
                if (methodName.equals("SetCommunityPreferences")) {
                    postResponseMsg(SteammessagesPlayerSteamclient.CPlayer_SetCommunityPreferences_Response.class, packetMsg);
                    break;
                }
                break;
            case -1731510214:
                if (methodName.equals("UpdateSteamAnnouncementLastRead")) {
                    postResponseMsg(SteammessagesPlayerSteamclient.CPlayer_UpdateSteamAnnouncementLastRead_Response.class, packetMsg);
                    break;
                }
                break;
            case -1645761394:
                if (methodName.equals("GetTextFilterWords")) {
                    postResponseMsg(SteammessagesPlayerSteamclient.CPlayer_GetTextFilterWords_Response.class, packetMsg);
                    break;
                }
                break;
            case -1635384508:
                if (methodName.equals("GetNewSteamAnnouncementState")) {
                    postResponseMsg(SteammessagesPlayerSteamclient.CPlayer_GetNewSteamAnnouncementState_Response.class, packetMsg);
                    break;
                }
                break;
            case -1620080345:
                if (methodName.equals("GetSteamDeckKeyboardSkin")) {
                    postResponseMsg(SteammessagesPlayerSteamclient.CPlayer_GetSteamDeckKeyboardSkin_Response.class, packetMsg);
                    break;
                }
                break;
            case -1541348606:
                if (methodName.equals("SetProfileTheme")) {
                    postResponseMsg(SteammessagesPlayerSteamclient.CPlayer_SetProfileTheme_Response.class, packetMsg);
                    break;
                }
                break;
            case -1401762932:
                if (methodName.equals("GetGameAchievements")) {
                    postResponseMsg(SteammessagesPlayerSteamclient.CPlayer_GetGameAchievements_Response.class, packetMsg);
                    break;
                }
                break;
            case -1312825620:
                if (methodName.equals("SetEquippedProfileItemFlags")) {
                    postResponseMsg(SteammessagesPlayerSteamclient.CPlayer_SetEquippedProfileItemFlags_Response.class, packetMsg);
                    break;
                }
                break;
            case -1275894234:
                if (methodName.equals("GetMutualFriendsForIncomingInvites")) {
                    postResponseMsg(SteammessagesPlayerSteamclient.CPlayer_GetMutualFriendsForIncomingInvites_Response.class, packetMsg);
                    break;
                }
                break;
            case -1268123010:
                if (methodName.equals("GetAvatarFrame")) {
                    postResponseMsg(SteammessagesPlayerSteamclient.CPlayer_GetAvatarFrame_Response.class, packetMsg);
                    break;
                }
                break;
            case -1262406262:
                if (methodName.equals("GetGameBadgeLevels")) {
                    postResponseMsg(SteammessagesPlayerSteamclient.CPlayer_GetGameBadgeLevels_Response.class, packetMsg);
                    break;
                }
                break;
            case -1232773825:
                if (methodName.equals("SetPerFriendPreferences")) {
                    postResponseMsg(SteammessagesPlayerSteamclient.CPlayer_SetPerFriendPreferences_Response.class, packetMsg);
                    break;
                }
                break;
            case -1063399326:
                if (methodName.equals("RemoveFriend")) {
                    postResponseMsg(SteammessagesPlayerSteamclient.CPlayer_RemoveFriend_Response.class, packetMsg);
                    break;
                }
                break;
            case -991576719:
                if (methodName.equals("SetProfilePreferences")) {
                    postResponseMsg(SteammessagesPlayerSteamclient.CPlayer_SetProfilePreferences_Response.class, packetMsg);
                    break;
                }
                break;
            case -958896116:
                if (methodName.equals("GetProfileThemesAvailable")) {
                    postResponseMsg(SteammessagesPlayerSteamclient.CPlayer_GetProfileThemesAvailable_Response.class, packetMsg);
                    break;
                }
                break;
            case -833577728:
                if (methodName.equals("GetProfileCustomization")) {
                    postResponseMsg(SteammessagesPlayerSteamclient.CPlayer_GetProfileCustomization_Response.class, packetMsg);
                    break;
                }
                break;
            case -783831609:
                if (methodName.equals("GetAchievementsProgress")) {
                    postResponseMsg(SteammessagesPlayerSteamclient.CPlayer_GetAchievementsProgress_Response.class, packetMsg);
                    break;
                }
                break;
            case -712990821:
                if (methodName.equals("GetTopAchievementsForGames")) {
                    postResponseMsg(SteammessagesPlayerSteamclient.CPlayer_GetTopAchievementsForGames_Response.class, packetMsg);
                    break;
                }
                break;
            case -458538091:
                if (methodName.equals("SetProfileBackground")) {
                    postResponseMsg(SteammessagesPlayerSteamclient.CPlayer_SetProfileBackground_Response.class, packetMsg);
                    break;
                }
                break;
            case -414463563:
                if (methodName.equals("GetPrivacySettings")) {
                    postResponseMsg(SteammessagesPlayerSteamclient.CPlayer_GetPrivacySettings_Response.class, packetMsg);
                    break;
                }
                break;
            case -408404571:
                if (methodName.equals("GetTimeSSAAccepted")) {
                    postResponseMsg(SteammessagesPlayerSteamclient.CPlayer_GetTimeSSAAccepted_Response.class, packetMsg);
                    break;
                }
                break;
            case -401479099:
                if (methodName.equals("SetFavoriteBadge")) {
                    postResponseMsg(SteammessagesPlayerSteamclient.CPlayer_SetFavoriteBadge_Response.class, packetMsg);
                    break;
                }
                break;
            case -117534957:
                if (methodName.equals("GetDurationControl")) {
                    postResponseMsg(SteammessagesPlayerSteamclient.CPlayer_GetDurationControl_Response.class, packetMsg);
                    break;
                }
                break;
            case -113823815:
                if (methodName.equals("AcceptSSA")) {
                    postResponseMsg(SteammessagesPlayerSteamclient.CPlayer_AcceptSSA_Response.class, packetMsg);
                    break;
                }
                break;
            case -101899472:
                if (methodName.equals("IgnoreFriend")) {
                    postResponseMsg(SteammessagesPlayerSteamclient.CPlayer_IgnoreFriend_Response.class, packetMsg);
                    break;
                }
                break;
            case -59020078:
                if (methodName.equals("ClientGetLastPlayedTimes")) {
                    postResponseMsg(SteammessagesPlayerSteamclient.CPlayer_GetLastPlayedTimes_Response.class, packetMsg);
                    break;
                }
                break;
            case 62674408:
                if (methodName.equals("PostStatusToFriends")) {
                    postResponseMsg(SteammessagesPlayerSteamclient.CPlayer_PostStatusToFriends_Response.class, packetMsg);
                    break;
                }
                break;
            case 72012984:
                if (methodName.equals("GetProfileItemsOwned")) {
                    postResponseMsg(SteammessagesPlayerSteamclient.CPlayer_GetProfileItemsOwned_Response.class, packetMsg);
                    break;
                }
                break;
            case 152385313:
                if (methodName.equals("GetProfileBackground")) {
                    postResponseMsg(SteammessagesPlayerSteamclient.CPlayer_GetProfileBackground_Response.class, packetMsg);
                    break;
                }
                break;
            case 437863870:
                if (methodName.equals("SetAnimatedAvatar")) {
                    postResponseMsg(SteammessagesPlayerSteamclient.CPlayer_SetAnimatedAvatar_Response.class, packetMsg);
                    break;
                }
                break;
            case 449056677:
                if (methodName.equals("GetCommunityPreferences")) {
                    postResponseMsg(SteammessagesPlayerSteamclient.CPlayer_GetCommunityPreferences_Response.class, packetMsg);
                    break;
                }
                break;
            case 634984178:
                if (methodName.equals("GetOwnedGames")) {
                    postResponseMsg(SteammessagesPlayerSteamclient.CPlayer_GetOwnedGames_Response.class, packetMsg);
                    break;
                }
                break;
            case 824780893:
                if (methodName.equals("GetCommunityBadgeProgress")) {
                    postResponseMsg(SteammessagesPlayerSteamclient.CPlayer_GetCommunityBadgeProgress_Response.class, packetMsg);
                    break;
                }
                break;
            case 901118844:
                if (methodName.equals("DeletePostedStatus")) {
                    postResponseMsg(SteammessagesPlayerSteamclient.CPlayer_DeletePostedStatus_Response.class, packetMsg);
                    break;
                }
                break;
            case 945805415:
                if (methodName.equals("GetPostedStatus")) {
                    postResponseMsg(SteammessagesPlayerSteamclient.CPlayer_GetPostedStatus_Response.class, packetMsg);
                    break;
                }
                break;
            case 1009921587:
                if (methodName.equals("GetPerFriendPreferences")) {
                    postResponseMsg(SteammessagesPlayerSteamclient.CPlayer_GetPerFriendPreferences_Response.class, packetMsg);
                    break;
                }
                break;
            case 1076403180:
                if (methodName.equals("GetProfileItemsEquipped")) {
                    postResponseMsg(SteammessagesPlayerSteamclient.CPlayer_GetProfileItemsEquipped_Response.class, packetMsg);
                    break;
                }
                break;
            case 1151552151:
                if (methodName.equals("GetPurchasedAndUpgradedProfileCustomizations")) {
                    postResponseMsg(SteammessagesPlayerSteamclient.CPlayer_GetPurchasedAndUpgradedProfileCustomizations_Response.class, packetMsg);
                    break;
                }
                break;
            case 1255108082:
                if (methodName.equals("SetAvatarFrame")) {
                    postResponseMsg(SteammessagesPlayerSteamclient.CPlayer_SetAvatarFrame_Response.class, packetMsg);
                    break;
                }
                break;
            case 1308203262:
                if (methodName.equals("SetMiniProfileBackground")) {
                    postResponseMsg(SteammessagesPlayerSteamclient.CPlayer_SetMiniProfileBackground_Response.class, packetMsg);
                    break;
                }
                break;
            case 1329378717:
                if (methodName.equals("GetPlayNext")) {
                    postResponseMsg(SteammessagesPlayerSteamclient.CPlayer_GetPlayNext_Response.class, packetMsg);
                    break;
                }
                break;
            case 1378016690:
                if (methodName.equals("GetAnimatedAvatar")) {
                    postResponseMsg(SteammessagesPlayerSteamclient.CPlayer_GetAnimatedAvatar_Response.class, packetMsg);
                    break;
                }
                break;
            case 1417921052:
                if (methodName.equals("GetPurchasedProfileCustomizations")) {
                    postResponseMsg(SteammessagesPlayerSteamclient.CPlayer_GetPurchasedProfileCustomizations_Response.class, packetMsg);
                    break;
                }
                break;
            case 1429963729:
                if (methodName.equals("GetFavoriteBadge")) {
                    postResponseMsg(SteammessagesPlayerSteamclient.CPlayer_GetFavoriteBadge_Response.class, packetMsg);
                    break;
                }
                break;
            case 1436464493:
                if (methodName.equals("RecordDisconnectedPlaytime")) {
                    postResponseMsg(SteammessagesPlayerSteamclient.CPlayer_RecordDisconnectedPlaytime_Response.class, packetMsg);
                    break;
                }
                break;
            case 1630524031:
                if (methodName.equals("AddFriend")) {
                    postResponseMsg(SteammessagesPlayerSteamclient.CPlayer_AddFriend_Response.class, packetMsg);
                    break;
                }
                break;
            case 1683632258:
                if (methodName.equals("GetNicknameList")) {
                    postResponseMsg(SteammessagesPlayerSteamclient.CPlayer_GetNicknameList_Response.class, packetMsg);
                    break;
                }
                break;
            case 1848946353:
                if (methodName.equals("GetPlayerLinkDetails")) {
                    postResponseMsg(SteammessagesPlayerSteamclient.CPlayer_GetPlayerLinkDetails_Response.class, packetMsg);
                    break;
                }
                break;
            case 1870805915:
                if (methodName.equals("SetSteamDeckKeyboardSkin")) {
                    postResponseMsg(SteammessagesPlayerSteamclient.CPlayer_SetSteamDeckKeyboardSkin_Response.class, packetMsg);
                    break;
                }
                break;
            case 1987642882:
                if (methodName.equals("GetRecentPlaytimeSessionsForChild")) {
                    postResponseMsg(SteammessagesPlayerSteamclient.CPlayer_GetRecentPlaytimeSessionsForChild_Response.class, packetMsg);
                    break;
                }
                break;
            case 2112284298:
                if (methodName.equals("GetMiniProfileBackground")) {
                    postResponseMsg(SteammessagesPlayerSteamclient.CPlayer_GetMiniProfileBackground_Response.class, packetMsg);
                    break;
                }
                break;
        }
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesPlayerSteamclient.CPlayer_GetRecentPlaytimeSessionsForChild_Response.Builder>> getRecentPlaytimeSessionsForChild(SteammessagesPlayerSteamclient.CPlayer_GetRecentPlaytimeSessionsForChild_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesPlayerSteamclient.CPlayer_GetRecentPlaytimeSessionsForChild_Response.Builder.class, "Player.GetRecentPlaytimeSessionsForChild#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesPlayerSteamclient.CPlayer_GetPlayerLinkDetails_Response.Builder>> getPlayerLinkDetails(SteammessagesPlayerSteamclient.CPlayer_GetPlayerLinkDetails_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesPlayerSteamclient.CPlayer_GetPlayerLinkDetails_Response.Builder.class, "Player.GetPlayerLinkDetails#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesPlayerSteamclient.CPlayer_GetMutualFriendsForIncomingInvites_Response.Builder>> getMutualFriendsForIncomingInvites(SteammessagesPlayerSteamclient.CPlayer_GetMutualFriendsForIncomingInvites_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesPlayerSteamclient.CPlayer_GetMutualFriendsForIncomingInvites_Response.Builder.class, "Player.GetMutualFriendsForIncomingInvites#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesPlayerSteamclient.CPlayer_GetOwnedGames_Response.Builder>> getOwnedGames(SteammessagesPlayerSteamclient.CPlayer_GetOwnedGames_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesPlayerSteamclient.CPlayer_GetOwnedGames_Response.Builder.class, "Player.GetOwnedGames#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesPlayerSteamclient.CPlayer_GetPlayNext_Response.Builder>> getPlayNext(SteammessagesPlayerSteamclient.CPlayer_GetPlayNext_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesPlayerSteamclient.CPlayer_GetPlayNext_Response.Builder.class, "Player.GetPlayNext#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesPlayerSteamclient.CPlayer_GetFriendsGameplayInfo_Response.Builder>> getFriendsGameplayInfo(SteammessagesPlayerSteamclient.CPlayer_GetFriendsGameplayInfo_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesPlayerSteamclient.CPlayer_GetFriendsGameplayInfo_Response.Builder.class, "Player.GetFriendsGameplayInfo#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesPlayerSteamclient.CPlayer_GetGameBadgeLevels_Response.Builder>> getGameBadgeLevels(SteammessagesPlayerSteamclient.CPlayer_GetGameBadgeLevels_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesPlayerSteamclient.CPlayer_GetGameBadgeLevels_Response.Builder.class, "Player.GetGameBadgeLevels#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesPlayerSteamclient.CPlayer_GetProfileBackground_Response.Builder>> getProfileBackground(SteammessagesPlayerSteamclient.CPlayer_GetProfileBackground_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesPlayerSteamclient.CPlayer_GetProfileBackground_Response.Builder.class, "Player.GetProfileBackground#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesPlayerSteamclient.CPlayer_SetProfileBackground_Response.Builder>> setProfileBackground(SteammessagesPlayerSteamclient.CPlayer_SetProfileBackground_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesPlayerSteamclient.CPlayer_SetProfileBackground_Response.Builder.class, "Player.SetProfileBackground#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesPlayerSteamclient.CPlayer_GetMiniProfileBackground_Response.Builder>> getMiniProfileBackground(SteammessagesPlayerSteamclient.CPlayer_GetMiniProfileBackground_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesPlayerSteamclient.CPlayer_GetMiniProfileBackground_Response.Builder.class, "Player.GetMiniProfileBackground#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesPlayerSteamclient.CPlayer_SetMiniProfileBackground_Response.Builder>> setMiniProfileBackground(SteammessagesPlayerSteamclient.CPlayer_SetMiniProfileBackground_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesPlayerSteamclient.CPlayer_SetMiniProfileBackground_Response.Builder.class, "Player.SetMiniProfileBackground#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesPlayerSteamclient.CPlayer_GetAvatarFrame_Response.Builder>> getAvatarFrame(SteammessagesPlayerSteamclient.CPlayer_GetAvatarFrame_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesPlayerSteamclient.CPlayer_GetAvatarFrame_Response.Builder.class, "Player.GetAvatarFrame#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesPlayerSteamclient.CPlayer_SetAvatarFrame_Response.Builder>> setAvatarFrame(SteammessagesPlayerSteamclient.CPlayer_SetAvatarFrame_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesPlayerSteamclient.CPlayer_SetAvatarFrame_Response.Builder.class, "Player.SetAvatarFrame#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesPlayerSteamclient.CPlayer_GetAnimatedAvatar_Response.Builder>> getAnimatedAvatar(SteammessagesPlayerSteamclient.CPlayer_GetAnimatedAvatar_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesPlayerSteamclient.CPlayer_GetAnimatedAvatar_Response.Builder.class, "Player.GetAnimatedAvatar#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesPlayerSteamclient.CPlayer_SetAnimatedAvatar_Response.Builder>> setAnimatedAvatar(SteammessagesPlayerSteamclient.CPlayer_SetAnimatedAvatar_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesPlayerSteamclient.CPlayer_SetAnimatedAvatar_Response.Builder.class, "Player.SetAnimatedAvatar#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesPlayerSteamclient.CPlayer_GetSteamDeckKeyboardSkin_Response.Builder>> getSteamDeckKeyboardSkin(SteammessagesPlayerSteamclient.CPlayer_GetSteamDeckKeyboardSkin_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesPlayerSteamclient.CPlayer_GetSteamDeckKeyboardSkin_Response.Builder.class, "Player.GetSteamDeckKeyboardSkin#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesPlayerSteamclient.CPlayer_SetSteamDeckKeyboardSkin_Response.Builder>> setSteamDeckKeyboardSkin(SteammessagesPlayerSteamclient.CPlayer_SetSteamDeckKeyboardSkin_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesPlayerSteamclient.CPlayer_SetSteamDeckKeyboardSkin_Response.Builder.class, "Player.SetSteamDeckKeyboardSkin#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesPlayerSteamclient.CPlayer_GetProfileItemsOwned_Response.Builder>> getProfileItemsOwned(SteammessagesPlayerSteamclient.CPlayer_GetProfileItemsOwned_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesPlayerSteamclient.CPlayer_GetProfileItemsOwned_Response.Builder.class, "Player.GetProfileItemsOwned#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesPlayerSteamclient.CPlayer_GetProfileItemsEquipped_Response.Builder>> getProfileItemsEquipped(SteammessagesPlayerSteamclient.CPlayer_GetProfileItemsEquipped_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesPlayerSteamclient.CPlayer_GetProfileItemsEquipped_Response.Builder.class, "Player.GetProfileItemsEquipped#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesPlayerSteamclient.CPlayer_SetEquippedProfileItemFlags_Response.Builder>> setEquippedProfileItemFlags(SteammessagesPlayerSteamclient.CPlayer_SetEquippedProfileItemFlags_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesPlayerSteamclient.CPlayer_SetEquippedProfileItemFlags_Response.Builder.class, "Player.SetEquippedProfileItemFlags#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesPlayerSteamclient.CPlayer_GetEmoticonList_Response.Builder>> getEmoticonList(SteammessagesPlayerSteamclient.CPlayer_GetEmoticonList_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesPlayerSteamclient.CPlayer_GetEmoticonList_Response.Builder.class, "Player.GetEmoticonList#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesPlayerSteamclient.CPlayer_GetCommunityBadgeProgress_Response.Builder>> getCommunityBadgeProgress(SteammessagesPlayerSteamclient.CPlayer_GetCommunityBadgeProgress_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesPlayerSteamclient.CPlayer_GetCommunityBadgeProgress_Response.Builder.class, "Player.GetCommunityBadgeProgress#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesPlayerSteamclient.CPlayer_GetTopAchievementsForGames_Response.Builder>> getTopAchievementsForGames(SteammessagesPlayerSteamclient.CPlayer_GetTopAchievementsForGames_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesPlayerSteamclient.CPlayer_GetTopAchievementsForGames_Response.Builder.class, "Player.GetTopAchievementsForGames#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesPlayerSteamclient.CPlayer_GetAchievementsProgress_Response.Builder>> getAchievementsProgress(SteammessagesPlayerSteamclient.CPlayer_GetAchievementsProgress_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesPlayerSteamclient.CPlayer_GetAchievementsProgress_Response.Builder.class, "Player.GetAchievementsProgress#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesPlayerSteamclient.CPlayer_GetGameAchievements_Response.Builder>> getGameAchievements(SteammessagesPlayerSteamclient.CPlayer_GetGameAchievements_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesPlayerSteamclient.CPlayer_GetGameAchievements_Response.Builder.class, "Player.GetGameAchievements#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesPlayerSteamclient.CPlayer_GetFavoriteBadge_Response.Builder>> getFavoriteBadge(SteammessagesPlayerSteamclient.CPlayer_GetFavoriteBadge_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesPlayerSteamclient.CPlayer_GetFavoriteBadge_Response.Builder.class, "Player.GetFavoriteBadge#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesPlayerSteamclient.CPlayer_SetFavoriteBadge_Response.Builder>> setFavoriteBadge(SteammessagesPlayerSteamclient.CPlayer_SetFavoriteBadge_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesPlayerSteamclient.CPlayer_SetFavoriteBadge_Response.Builder.class, "Player.SetFavoriteBadge#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesPlayerSteamclient.CPlayer_GetProfileCustomization_Response.Builder>> getProfileCustomization(SteammessagesPlayerSteamclient.CPlayer_GetProfileCustomization_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesPlayerSteamclient.CPlayer_GetProfileCustomization_Response.Builder.class, "Player.GetProfileCustomization#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesPlayerSteamclient.CPlayer_GetPurchasedProfileCustomizations_Response.Builder>> getPurchasedProfileCustomizations(SteammessagesPlayerSteamclient.CPlayer_GetPurchasedProfileCustomizations_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesPlayerSteamclient.CPlayer_GetPurchasedProfileCustomizations_Response.Builder.class, "Player.GetPurchasedProfileCustomizations#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesPlayerSteamclient.CPlayer_GetPurchasedAndUpgradedProfileCustomizations_Response.Builder>> getPurchasedAndUpgradedProfileCustomizations(SteammessagesPlayerSteamclient.CPlayer_GetPurchasedAndUpgradedProfileCustomizations_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesPlayerSteamclient.CPlayer_GetPurchasedAndUpgradedProfileCustomizations_Response.Builder.class, "Player.GetPurchasedAndUpgradedProfileCustomizations#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesPlayerSteamclient.CPlayer_GetProfileThemesAvailable_Response.Builder>> getProfileThemesAvailable(SteammessagesPlayerSteamclient.CPlayer_GetProfileThemesAvailable_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesPlayerSteamclient.CPlayer_GetProfileThemesAvailable_Response.Builder.class, "Player.GetProfileThemesAvailable#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesPlayerSteamclient.CPlayer_SetProfileTheme_Response.Builder>> setProfileTheme(SteammessagesPlayerSteamclient.CPlayer_SetProfileTheme_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesPlayerSteamclient.CPlayer_SetProfileTheme_Response.Builder.class, "Player.SetProfileTheme#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesPlayerSteamclient.CPlayer_SetProfilePreferences_Response.Builder>> setProfilePreferences(SteammessagesPlayerSteamclient.CPlayer_SetProfilePreferences_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesPlayerSteamclient.CPlayer_SetProfilePreferences_Response.Builder.class, "Player.SetProfilePreferences#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesPlayerSteamclient.CPlayer_PostStatusToFriends_Response.Builder>> postStatusToFriends(SteammessagesPlayerSteamclient.CPlayer_PostStatusToFriends_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesPlayerSteamclient.CPlayer_PostStatusToFriends_Response.Builder.class, "Player.PostStatusToFriends#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesPlayerSteamclient.CPlayer_GetPostedStatus_Response.Builder>> getPostedStatus(SteammessagesPlayerSteamclient.CPlayer_GetPostedStatus_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesPlayerSteamclient.CPlayer_GetPostedStatus_Response.Builder.class, "Player.GetPostedStatus#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesPlayerSteamclient.CPlayer_DeletePostedStatus_Response.Builder>> deletePostedStatus(SteammessagesPlayerSteamclient.CPlayer_DeletePostedStatus_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesPlayerSteamclient.CPlayer_DeletePostedStatus_Response.Builder.class, "Player.DeletePostedStatus#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesPlayerSteamclient.CPlayer_GetLastPlayedTimes_Response.Builder>> clientGetLastPlayedTimes(SteammessagesPlayerSteamclient.CPlayer_GetLastPlayedTimes_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesPlayerSteamclient.CPlayer_GetLastPlayedTimes_Response.Builder.class, "Player.ClientGetLastPlayedTimes#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesPlayerSteamclient.CPlayer_GetTimeSSAAccepted_Response.Builder>> getTimeSSAAccepted(SteammessagesPlayerSteamclient.CPlayer_GetTimeSSAAccepted_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesPlayerSteamclient.CPlayer_GetTimeSSAAccepted_Response.Builder.class, "Player.GetTimeSSAAccepted#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesPlayerSteamclient.CPlayer_AcceptSSA_Response.Builder>> acceptSSA(SteammessagesPlayerSteamclient.CPlayer_AcceptSSA_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesPlayerSteamclient.CPlayer_AcceptSSA_Response.Builder.class, "Player.AcceptSSA#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesPlayerSteamclient.CPlayer_GetNicknameList_Response.Builder>> getNicknameList(SteammessagesPlayerSteamclient.CPlayer_GetNicknameList_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesPlayerSteamclient.CPlayer_GetNicknameList_Response.Builder.class, "Player.GetNicknameList#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesPlayerSteamclient.CPlayer_GetPerFriendPreferences_Response.Builder>> getPerFriendPreferences(SteammessagesPlayerSteamclient.CPlayer_GetPerFriendPreferences_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesPlayerSteamclient.CPlayer_GetPerFriendPreferences_Response.Builder.class, "Player.GetPerFriendPreferences#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesPlayerSteamclient.CPlayer_SetPerFriendPreferences_Response.Builder>> setPerFriendPreferences(SteammessagesPlayerSteamclient.CPlayer_SetPerFriendPreferences_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesPlayerSteamclient.CPlayer_SetPerFriendPreferences_Response.Builder.class, "Player.SetPerFriendPreferences#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesPlayerSteamclient.CPlayer_AddFriend_Response.Builder>> addFriend(SteammessagesPlayerSteamclient.CPlayer_AddFriend_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesPlayerSteamclient.CPlayer_AddFriend_Response.Builder.class, "Player.AddFriend#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesPlayerSteamclient.CPlayer_RemoveFriend_Response.Builder>> removeFriend(SteammessagesPlayerSteamclient.CPlayer_RemoveFriend_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesPlayerSteamclient.CPlayer_RemoveFriend_Response.Builder.class, "Player.RemoveFriend#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesPlayerSteamclient.CPlayer_IgnoreFriend_Response.Builder>> ignoreFriend(SteammessagesPlayerSteamclient.CPlayer_IgnoreFriend_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesPlayerSteamclient.CPlayer_IgnoreFriend_Response.Builder.class, "Player.IgnoreFriend#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesPlayerSteamclient.CPlayer_GetCommunityPreferences_Response.Builder>> getCommunityPreferences(SteammessagesPlayerSteamclient.CPlayer_GetCommunityPreferences_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesPlayerSteamclient.CPlayer_GetCommunityPreferences_Response.Builder.class, "Player.GetCommunityPreferences#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesPlayerSteamclient.CPlayer_SetCommunityPreferences_Response.Builder>> setCommunityPreferences(SteammessagesPlayerSteamclient.CPlayer_SetCommunityPreferences_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesPlayerSteamclient.CPlayer_SetCommunityPreferences_Response.Builder.class, "Player.SetCommunityPreferences#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesPlayerSteamclient.CPlayer_GetTextFilterWords_Response.Builder>> getTextFilterWords(SteammessagesPlayerSteamclient.CPlayer_GetTextFilterWords_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesPlayerSteamclient.CPlayer_GetTextFilterWords_Response.Builder.class, "Player.GetTextFilterWords#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesPlayerSteamclient.CPlayer_GetNewSteamAnnouncementState_Response.Builder>> getNewSteamAnnouncementState(SteammessagesPlayerSteamclient.CPlayer_GetNewSteamAnnouncementState_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesPlayerSteamclient.CPlayer_GetNewSteamAnnouncementState_Response.Builder.class, "Player.GetNewSteamAnnouncementState#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesPlayerSteamclient.CPlayer_UpdateSteamAnnouncementLastRead_Response.Builder>> updateSteamAnnouncementLastRead(SteammessagesPlayerSteamclient.CPlayer_UpdateSteamAnnouncementLastRead_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesPlayerSteamclient.CPlayer_UpdateSteamAnnouncementLastRead_Response.Builder.class, "Player.UpdateSteamAnnouncementLastRead#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesPlayerSteamclient.CPlayer_GetPrivacySettings_Response.Builder>> getPrivacySettings(SteammessagesPlayerSteamclient.CPlayer_GetPrivacySettings_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesPlayerSteamclient.CPlayer_GetPrivacySettings_Response.Builder.class, "Player.GetPrivacySettings#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesPlayerSteamclient.CPlayer_GetDurationControl_Response.Builder>> getDurationControl(SteammessagesPlayerSteamclient.CPlayer_GetDurationControl_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesPlayerSteamclient.CPlayer_GetDurationControl_Response.Builder.class, "Player.GetDurationControl#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesPlayerSteamclient.CPlayer_RecordDisconnectedPlaytime_Response.Builder>> recordDisconnectedPlaytime(SteammessagesPlayerSteamclient.CPlayer_RecordDisconnectedPlaytime_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesPlayerSteamclient.CPlayer_RecordDisconnectedPlaytime_Response.Builder.class, "Player.RecordDisconnectedPlaytime#1", request);
    }
}
