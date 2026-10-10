package in.dragonbra.javasteam.rpc.service;

import in.dragonbra.javasteam.base.PacketClientMsgProtobuf;
import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesChatSteamclient;
import in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.SteamUnifiedMessages;
import in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.UnifiedService;
import in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.callback.ServiceMethodResponse;
import in.dragonbra.javasteam.types.AsyncJobSingle;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ChatRoom.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class ChatRoom extends UnifiedService {
    @Override // in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.UnifiedService
    public String getServiceName() {
        return "ChatRoom";
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ChatRoom(SteamUnifiedMessages unifiedMessages) {
        super(unifiedMessages);
        Intrinsics.checkNotNullParameter(unifiedMessages, "unifiedMessages");
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    @Override // in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.UnifiedService
    public void handleResponseMsg(String methodName, PacketClientMsgProtobuf packetMsg) {
        Intrinsics.checkNotNullParameter(methodName, "methodName");
        Intrinsics.checkNotNullParameter(packetMsg, "packetMsg");
        switch (methodName.hashCode()) {
            case -2135701389:
                if (methodName.equals("ReplaceRoleActions")) {
                    postResponseMsg(SteammessagesChatSteamclient.CChatRoom_ReplaceRoleActions_Response.class, packetMsg);
                    break;
                }
                break;
            case -2114364193:
                if (methodName.equals("CreateInviteLink")) {
                    postResponseMsg(SteammessagesChatSteamclient.CChatRoom_CreateInviteLink_Response.class, packetMsg);
                    break;
                }
                break;
            case -2096423819:
                if (methodName.equals("RevokeInviteToGroup")) {
                    postResponseMsg(SteammessagesChatSteamclient.CChatRoom_RevokeInvite_Response.class, packetMsg);
                    break;
                }
                break;
            case -1969134499:
                if (methodName.equals("AddRoleToUser")) {
                    postResponseMsg(SteammessagesChatSteamclient.CChatRoom_AddRoleToUser_Response.class, packetMsg);
                    break;
                }
                break;
            case -1947229824:
                if (methodName.equals("JoinVoiceChat")) {
                    postResponseMsg(SteammessagesChatSteamclient.CChatRoom_JoinVoiceChat_Response.class, packetMsg);
                    break;
                }
                break;
            case -1799744243:
                if (methodName.equals("GetRolesForUser")) {
                    postResponseMsg(SteammessagesChatSteamclient.CChatRoom_GetRolesForUser_Response.class, packetMsg);
                    break;
                }
                break;
            case -1742748188:
                if (methodName.equals("SetAppChatRoomGroupForceActive")) {
                    postResponseMsg(SteammessagesChatSteamclient.CChatRoom_SetAppChatRoomGroupForceActive_Response.class, packetMsg);
                    break;
                }
                break;
            case -1617627330:
                if (methodName.equals("DeleteChatRoom")) {
                    postResponseMsg(SteammessagesChatSteamclient.CChatRoom_DeleteChatRoom_Response.class, packetMsg);
                    break;
                }
                break;
            case -1602610889:
                if (methodName.equals("GetBanList")) {
                    postResponseMsg(SteammessagesChatSteamclient.CChatRoom_GetBanList_Response.class, packetMsg);
                    break;
                }
                break;
            case -1594475839:
                if (methodName.equals("SetSessionActiveChatRoomGroups")) {
                    postResponseMsg(SteammessagesChatSteamclient.CChatRoom_SetSessionActiveChatRoomGroups_Response.class, packetMsg);
                    break;
                }
                break;
            case -1552725209:
                if (methodName.equals("UpdateMessageReaction")) {
                    postResponseMsg(SteammessagesChatSteamclient.CChatRoom_UpdateMessageReaction_Response.class, packetMsg);
                    break;
                }
                break;
            case -1533347216:
                if (methodName.equals("GetInviteLinksForGroup")) {
                    postResponseMsg(SteammessagesChatSteamclient.CChatRoom_GetInviteLinksForGroup_Response.class, packetMsg);
                    break;
                }
                break;
            case -1501342300:
                if (methodName.equals("SetChatRoomGroupWatchingBroadcast")) {
                    postResponseMsg(SteammessagesChatSteamclient.CChatRoom_SetChatRoomGroupWatchingBroadcast_Response.class, packetMsg);
                    break;
                }
                break;
            case -1492947378:
                if (methodName.equals("ReorderChatRoom")) {
                    postResponseMsg(SteammessagesChatSteamclient.CChatRoom_ReorderChatRoom_Response.class, packetMsg);
                    break;
                }
                break;
            case -1342325494:
                if (methodName.equals("InviteFriendToChatRoomGroup")) {
                    postResponseMsg(SteammessagesChatSteamclient.CChatRoom_InviteFriendToChatRoomGroup_Response.class, packetMsg);
                    break;
                }
                break;
            case -1230635471:
                if (methodName.equals("SearchMembers")) {
                    postResponseMsg(SteammessagesChatSteamclient.CChatRoom_SearchMembers_Response.class, packetMsg);
                    break;
                }
                break;
            case -1165790514:
                if (methodName.equals("DeleteInviteLink")) {
                    postResponseMsg(SteammessagesChatSteamclient.CChatRoom_DeleteInviteLink_Response.class, packetMsg);
                    break;
                }
                break;
            case -1154042917:
                if (methodName.equals("GetChatRoomGroupState")) {
                    postResponseMsg(SteammessagesChatSteamclient.CChatRoom_GetChatRoomGroupState_Response.class, packetMsg);
                    break;
                }
                break;
            case -1108007921:
                if (methodName.equals("SetUserBanState")) {
                    postResponseMsg(SteammessagesChatSteamclient.CChatRoom_SetUserBanState_Response.class, packetMsg);
                    break;
                }
                break;
            case -932342862:
                if (methodName.equals("CreateRole")) {
                    postResponseMsg(SteammessagesChatSteamclient.CChatRoom_CreateRole_Response.class, packetMsg);
                    break;
                }
                break;
            case -852124882:
                if (methodName.equals("RenameChatRoomGroup")) {
                    postResponseMsg(SteammessagesChatSteamclient.CChatRoom_RenameChatRoomGroup_Response.class, packetMsg);
                    break;
                }
                break;
            case -836756281:
                if (methodName.equals("SendChatMessage")) {
                    postResponseMsg(SteammessagesChatSteamclient.CChatRoom_SendChatMessage_Response.class, packetMsg);
                    break;
                }
                break;
            case -698707650:
                if (methodName.equals("SetUserChatGroupPreferences")) {
                    postResponseMsg(SteammessagesChatSteamclient.CChatRoom_SetUserChatGroupPreferences_Response.class, packetMsg);
                    break;
                }
                break;
            case -615941437:
                if (methodName.equals("SetChatRoomGroupAvatar")) {
                    postResponseMsg(SteammessagesChatSteamclient.CChatRoom_SetChatRoomGroupAvatar_Response.class, packetMsg);
                    break;
                }
                break;
            case -597836153:
                if (methodName.equals("EndMiniGameForChatRoomGroup")) {
                    postResponseMsg(SteammessagesChatSteamclient.CChatRoom_EndMiniGameForChatRoomGroup_Response.class, packetMsg);
                    break;
                }
                break;
            case -536966943:
                if (methodName.equals("DeleteRole")) {
                    postResponseMsg(SteammessagesChatSteamclient.CChatRoom_DeleteRole_Response.class, packetMsg);
                    break;
                }
                break;
            case -427201342:
                if (methodName.equals("JoinChatRoomGroup")) {
                    postResponseMsg(SteammessagesChatSteamclient.CChatRoom_JoinChatRoomGroup_Response.class, packetMsg);
                    break;
                }
                break;
            case -162461532:
                if (methodName.equals("KickUserFromGroup")) {
                    postResponseMsg(SteammessagesChatSteamclient.CChatRoom_KickUser_Response.class, packetMsg);
                    break;
                }
                break;
            case -85784591:
                if (methodName.equals("ReorderRole")) {
                    postResponseMsg(SteammessagesChatSteamclient.CChatRoom_ReorderRole_Response.class, packetMsg);
                    break;
                }
                break;
            case 12255766:
                if (methodName.equals("JoinMiniGameForChatRoomGroup")) {
                    postResponseMsg(SteammessagesChatSteamclient.CChatRoom_JoinMiniGameForChatRoomGroup_Response.class, packetMsg);
                    break;
                }
                break;
            case 98592591:
                if (methodName.equals("SaveChatRoomGroup")) {
                    postResponseMsg(SteammessagesChatSteamclient.CChatRoom_SaveChatRoomGroup_Response.class, packetMsg);
                    break;
                }
                break;
            case 126117329:
                if (methodName.equals("RenameChatRoom")) {
                    postResponseMsg(SteammessagesChatSteamclient.CChatRoom_RenameChatRoom_Response.class, packetMsg);
                    break;
                }
                break;
            case 220275861:
                if (methodName.equals("LeaveChatRoomGroup")) {
                    postResponseMsg(SteammessagesChatSteamclient.CChatRoom_LeaveChatRoomGroup_Response.class, packetMsg);
                    break;
                }
                break;
            case 312115911:
                if (methodName.equals("GetInviteLinkInfo")) {
                    postResponseMsg(SteammessagesChatSteamclient.CChatRoom_GetInviteLinkInfo_Response.class, packetMsg);
                    break;
                }
                break;
            case 561921558:
                if (methodName.equals("MuteUserInGroup")) {
                    postResponseMsg(SteammessagesChatSteamclient.CChatRoom_MuteUser_Response.class, packetMsg);
                    break;
                }
                break;
            case 742013172:
                if (methodName.equals("RenameRole")) {
                    postResponseMsg(SteammessagesChatSteamclient.CChatRoom_RenameRole_Response.class, packetMsg);
                    break;
                }
                break;
            case 1084001839:
                if (methodName.equals("DeleteChatMessages")) {
                    postResponseMsg(SteammessagesChatSteamclient.CChatRoom_DeleteChatMessages_Response.class, packetMsg);
                    break;
                }
                break;
            case 1135723363:
                if (methodName.equals("GetMessageHistory")) {
                    postResponseMsg(SteammessagesChatSteamclient.CChatRoom_GetMessageHistory_Response.class, packetMsg);
                    break;
                }
                break;
            case 1323973331:
                if (methodName.equals("LeaveVoiceChat")) {
                    postResponseMsg(SteammessagesChatSteamclient.CChatRoom_LeaveVoiceChat_Response.class, packetMsg);
                    break;
                }
                break;
            case 1357918607:
                if (methodName.equals("CreateChatRoom")) {
                    postResponseMsg(SteammessagesChatSteamclient.CChatRoom_CreateChatRoom_Response.class, packetMsg);
                    break;
                }
                break;
            case 1377194091:
                if (methodName.equals("GetMessageReactionReactors")) {
                    postResponseMsg(SteammessagesChatSteamclient.CChatRoom_GetMessageReactionReactors_Response.class, packetMsg);
                    break;
                }
                break;
            case 1467450980:
                if (methodName.equals("SetChatRoomGroupTagline")) {
                    postResponseMsg(SteammessagesChatSteamclient.CChatRoom_SetChatRoomGroupTagline_Response.class, packetMsg);
                    break;
                }
                break;
            case 1521055280:
                if (methodName.equals("CreateChatRoomGroup")) {
                    postResponseMsg(SteammessagesChatSteamclient.CChatRoom_CreateChatRoomGroup_Response.class, packetMsg);
                    break;
                }
                break;
            case 1698972461:
                if (methodName.equals("GetInviteInfo")) {
                    postResponseMsg(SteammessagesChatSteamclient.CChatRoom_GetInviteInfo_Response.class, packetMsg);
                    break;
                }
                break;
            case 1699057437:
                if (methodName.equals("GetInviteList")) {
                    postResponseMsg(SteammessagesChatSteamclient.CChatRoom_GetInviteList_Response.class, packetMsg);
                    break;
                }
                break;
            case 1724321430:
                if (methodName.equals("DeleteRoleFromUser")) {
                    postResponseMsg(SteammessagesChatSteamclient.CChatRoom_DeleteRoleFromUser_Response.class, packetMsg);
                    break;
                }
                break;
            case 1947386921:
                if (methodName.equals("GetMyChatRoomGroups")) {
                    postResponseMsg(SteammessagesChatSteamclient.CChatRoom_GetMyChatRoomGroups_Response.class, packetMsg);
                    break;
                }
                break;
            case 2029164839:
                if (methodName.equals("GetRoles")) {
                    postResponseMsg(SteammessagesChatSteamclient.CChatRoom_GetRoles_Response.class, packetMsg);
                    break;
                }
                break;
            case 2121998993:
                if (methodName.equals("GetRoleActions")) {
                    postResponseMsg(SteammessagesChatSteamclient.CChatRoom_GetRoleActions_Response.class, packetMsg);
                    break;
                }
                break;
        }
    }

    @Override // in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.UnifiedService
    public void handleNotificationMsg(String methodName, PacketClientMsgProtobuf packetMsg) {
        Intrinsics.checkNotNullParameter(methodName, "methodName");
        Intrinsics.checkNotNullParameter(packetMsg, "packetMsg");
        int iHashCode = methodName.hashCode();
        if (iHashCode == -553218714) {
            if (methodName.equals("AckChatMessage")) {
                postNotificationMsg(SteammessagesChatSteamclient.CChatRoom_AckChatMessage_Notification.class, packetMsg);
            }
        } else if (iHashCode == -245089690) {
            if (methodName.equals("UpdateMemberListView")) {
                postNotificationMsg(SteammessagesChatSteamclient.CChatRoom_UpdateMemberListView_Notification.class, packetMsg);
            }
        } else if (iHashCode == 1624731394 && methodName.equals("SetAppChatRoomGroupStopForceActive")) {
            postNotificationMsg(SteammessagesChatSteamclient.CChatRoom_SetAppChatRoomGroupStopForceActive_Notification.class, packetMsg);
        }
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesChatSteamclient.CChatRoom_CreateChatRoomGroup_Response.Builder>> createChatRoomGroup(SteammessagesChatSteamclient.CChatRoom_CreateChatRoomGroup_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesChatSteamclient.CChatRoom_CreateChatRoomGroup_Response.Builder.class, "ChatRoom.CreateChatRoomGroup#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesChatSteamclient.CChatRoom_SaveChatRoomGroup_Response.Builder>> saveChatRoomGroup(SteammessagesChatSteamclient.CChatRoom_SaveChatRoomGroup_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesChatSteamclient.CChatRoom_SaveChatRoomGroup_Response.Builder.class, "ChatRoom.SaveChatRoomGroup#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesChatSteamclient.CChatRoom_RenameChatRoomGroup_Response.Builder>> renameChatRoomGroup(SteammessagesChatSteamclient.CChatRoom_RenameChatRoomGroup_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesChatSteamclient.CChatRoom_RenameChatRoomGroup_Response.Builder.class, "ChatRoom.RenameChatRoomGroup#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesChatSteamclient.CChatRoom_SetChatRoomGroupTagline_Response.Builder>> setChatRoomGroupTagline(SteammessagesChatSteamclient.CChatRoom_SetChatRoomGroupTagline_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesChatSteamclient.CChatRoom_SetChatRoomGroupTagline_Response.Builder.class, "ChatRoom.SetChatRoomGroupTagline#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesChatSteamclient.CChatRoom_SetChatRoomGroupAvatar_Response.Builder>> setChatRoomGroupAvatar(SteammessagesChatSteamclient.CChatRoom_SetChatRoomGroupAvatar_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesChatSteamclient.CChatRoom_SetChatRoomGroupAvatar_Response.Builder.class, "ChatRoom.SetChatRoomGroupAvatar#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesChatSteamclient.CChatRoom_SetChatRoomGroupWatchingBroadcast_Response.Builder>> setChatRoomGroupWatchingBroadcast(SteammessagesChatSteamclient.CChatRoom_SetChatRoomGroupWatchingBroadcast_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesChatSteamclient.CChatRoom_SetChatRoomGroupWatchingBroadcast_Response.Builder.class, "ChatRoom.SetChatRoomGroupWatchingBroadcast#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesChatSteamclient.CChatRoom_JoinMiniGameForChatRoomGroup_Response.Builder>> joinMiniGameForChatRoomGroup(SteammessagesChatSteamclient.CChatRoom_JoinMiniGameForChatRoomGroup_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesChatSteamclient.CChatRoom_JoinMiniGameForChatRoomGroup_Response.Builder.class, "ChatRoom.JoinMiniGameForChatRoomGroup#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesChatSteamclient.CChatRoom_EndMiniGameForChatRoomGroup_Response.Builder>> endMiniGameForChatRoomGroup(SteammessagesChatSteamclient.CChatRoom_EndMiniGameForChatRoomGroup_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesChatSteamclient.CChatRoom_EndMiniGameForChatRoomGroup_Response.Builder.class, "ChatRoom.EndMiniGameForChatRoomGroup#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesChatSteamclient.CChatRoom_MuteUser_Response.Builder>> muteUserInGroup(SteammessagesChatSteamclient.CChatRoom_MuteUser_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesChatSteamclient.CChatRoom_MuteUser_Response.Builder.class, "ChatRoom.MuteUserInGroup#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesChatSteamclient.CChatRoom_KickUser_Response.Builder>> kickUserFromGroup(SteammessagesChatSteamclient.CChatRoom_KickUser_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesChatSteamclient.CChatRoom_KickUser_Response.Builder.class, "ChatRoom.KickUserFromGroup#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesChatSteamclient.CChatRoom_SetUserBanState_Response.Builder>> setUserBanState(SteammessagesChatSteamclient.CChatRoom_SetUserBanState_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesChatSteamclient.CChatRoom_SetUserBanState_Response.Builder.class, "ChatRoom.SetUserBanState#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesChatSteamclient.CChatRoom_RevokeInvite_Response.Builder>> revokeInviteToGroup(SteammessagesChatSteamclient.CChatRoom_RevokeInvite_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesChatSteamclient.CChatRoom_RevokeInvite_Response.Builder.class, "ChatRoom.RevokeInviteToGroup#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesChatSteamclient.CChatRoom_CreateRole_Response.Builder>> createRole(SteammessagesChatSteamclient.CChatRoom_CreateRole_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesChatSteamclient.CChatRoom_CreateRole_Response.Builder.class, "ChatRoom.CreateRole#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesChatSteamclient.CChatRoom_GetRoles_Response.Builder>> getRoles(SteammessagesChatSteamclient.CChatRoom_GetRoles_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesChatSteamclient.CChatRoom_GetRoles_Response.Builder.class, "ChatRoom.GetRoles#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesChatSteamclient.CChatRoom_RenameRole_Response.Builder>> renameRole(SteammessagesChatSteamclient.CChatRoom_RenameRole_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesChatSteamclient.CChatRoom_RenameRole_Response.Builder.class, "ChatRoom.RenameRole#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesChatSteamclient.CChatRoom_ReorderRole_Response.Builder>> reorderRole(SteammessagesChatSteamclient.CChatRoom_ReorderRole_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesChatSteamclient.CChatRoom_ReorderRole_Response.Builder.class, "ChatRoom.ReorderRole#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesChatSteamclient.CChatRoom_DeleteRole_Response.Builder>> deleteRole(SteammessagesChatSteamclient.CChatRoom_DeleteRole_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesChatSteamclient.CChatRoom_DeleteRole_Response.Builder.class, "ChatRoom.DeleteRole#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesChatSteamclient.CChatRoom_GetRoleActions_Response.Builder>> getRoleActions(SteammessagesChatSteamclient.CChatRoom_GetRoleActions_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesChatSteamclient.CChatRoom_GetRoleActions_Response.Builder.class, "ChatRoom.GetRoleActions#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesChatSteamclient.CChatRoom_ReplaceRoleActions_Response.Builder>> replaceRoleActions(SteammessagesChatSteamclient.CChatRoom_ReplaceRoleActions_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesChatSteamclient.CChatRoom_ReplaceRoleActions_Response.Builder.class, "ChatRoom.ReplaceRoleActions#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesChatSteamclient.CChatRoom_AddRoleToUser_Response.Builder>> addRoleToUser(SteammessagesChatSteamclient.CChatRoom_AddRoleToUser_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesChatSteamclient.CChatRoom_AddRoleToUser_Response.Builder.class, "ChatRoom.AddRoleToUser#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesChatSteamclient.CChatRoom_GetRolesForUser_Response.Builder>> getRolesForUser(SteammessagesChatSteamclient.CChatRoom_GetRolesForUser_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesChatSteamclient.CChatRoom_GetRolesForUser_Response.Builder.class, "ChatRoom.GetRolesForUser#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesChatSteamclient.CChatRoom_DeleteRoleFromUser_Response.Builder>> deleteRoleFromUser(SteammessagesChatSteamclient.CChatRoom_DeleteRoleFromUser_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesChatSteamclient.CChatRoom_DeleteRoleFromUser_Response.Builder.class, "ChatRoom.DeleteRoleFromUser#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesChatSteamclient.CChatRoom_JoinChatRoomGroup_Response.Builder>> joinChatRoomGroup(SteammessagesChatSteamclient.CChatRoom_JoinChatRoomGroup_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesChatSteamclient.CChatRoom_JoinChatRoomGroup_Response.Builder.class, "ChatRoom.JoinChatRoomGroup#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesChatSteamclient.CChatRoom_InviteFriendToChatRoomGroup_Response.Builder>> inviteFriendToChatRoomGroup(SteammessagesChatSteamclient.CChatRoom_InviteFriendToChatRoomGroup_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesChatSteamclient.CChatRoom_InviteFriendToChatRoomGroup_Response.Builder.class, "ChatRoom.InviteFriendToChatRoomGroup#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesChatSteamclient.CChatRoom_LeaveChatRoomGroup_Response.Builder>> leaveChatRoomGroup(SteammessagesChatSteamclient.CChatRoom_LeaveChatRoomGroup_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesChatSteamclient.CChatRoom_LeaveChatRoomGroup_Response.Builder.class, "ChatRoom.LeaveChatRoomGroup#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesChatSteamclient.CChatRoom_CreateChatRoom_Response.Builder>> createChatRoom(SteammessagesChatSteamclient.CChatRoom_CreateChatRoom_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesChatSteamclient.CChatRoom_CreateChatRoom_Response.Builder.class, "ChatRoom.CreateChatRoom#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesChatSteamclient.CChatRoom_DeleteChatRoom_Response.Builder>> deleteChatRoom(SteammessagesChatSteamclient.CChatRoom_DeleteChatRoom_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesChatSteamclient.CChatRoom_DeleteChatRoom_Response.Builder.class, "ChatRoom.DeleteChatRoom#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesChatSteamclient.CChatRoom_RenameChatRoom_Response.Builder>> renameChatRoom(SteammessagesChatSteamclient.CChatRoom_RenameChatRoom_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesChatSteamclient.CChatRoom_RenameChatRoom_Response.Builder.class, "ChatRoom.RenameChatRoom#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesChatSteamclient.CChatRoom_ReorderChatRoom_Response.Builder>> reorderChatRoom(SteammessagesChatSteamclient.CChatRoom_ReorderChatRoom_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesChatSteamclient.CChatRoom_ReorderChatRoom_Response.Builder.class, "ChatRoom.ReorderChatRoom#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesChatSteamclient.CChatRoom_SendChatMessage_Response.Builder>> sendChatMessage(SteammessagesChatSteamclient.CChatRoom_SendChatMessage_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesChatSteamclient.CChatRoom_SendChatMessage_Response.Builder.class, "ChatRoom.SendChatMessage#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesChatSteamclient.CChatRoom_JoinVoiceChat_Response.Builder>> joinVoiceChat(SteammessagesChatSteamclient.CChatRoom_JoinVoiceChat_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesChatSteamclient.CChatRoom_JoinVoiceChat_Response.Builder.class, "ChatRoom.JoinVoiceChat#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesChatSteamclient.CChatRoom_LeaveVoiceChat_Response.Builder>> leaveVoiceChat(SteammessagesChatSteamclient.CChatRoom_LeaveVoiceChat_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesChatSteamclient.CChatRoom_LeaveVoiceChat_Response.Builder.class, "ChatRoom.LeaveVoiceChat#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesChatSteamclient.CChatRoom_GetMessageHistory_Response.Builder>> getMessageHistory(SteammessagesChatSteamclient.CChatRoom_GetMessageHistory_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesChatSteamclient.CChatRoom_GetMessageHistory_Response.Builder.class, "ChatRoom.GetMessageHistory#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesChatSteamclient.CChatRoom_GetMyChatRoomGroups_Response.Builder>> getMyChatRoomGroups(SteammessagesChatSteamclient.CChatRoom_GetMyChatRoomGroups_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesChatSteamclient.CChatRoom_GetMyChatRoomGroups_Response.Builder.class, "ChatRoom.GetMyChatRoomGroups#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesChatSteamclient.CChatRoom_GetChatRoomGroupState_Response.Builder>> getChatRoomGroupState(SteammessagesChatSteamclient.CChatRoom_GetChatRoomGroupState_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesChatSteamclient.CChatRoom_GetChatRoomGroupState_Response.Builder.class, "ChatRoom.GetChatRoomGroupState#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesChatSteamclient.CChatRoom_SetAppChatRoomGroupForceActive_Response.Builder>> setAppChatRoomGroupForceActive(SteammessagesChatSteamclient.CChatRoom_SetAppChatRoomGroupForceActive_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesChatSteamclient.CChatRoom_SetAppChatRoomGroupForceActive_Response.Builder.class, "ChatRoom.SetAppChatRoomGroupForceActive#1", request);
    }

    public final void setAppChatRoomGroupStopForceActive(SteammessagesChatSteamclient.CChatRoom_SetAppChatRoomGroupStopForceActive_Notification request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        unifiedMessages.sendNotification("ChatRoom.SetAppChatRoomGroupStopForceActive#1", request);
    }

    public final void ackChatMessage(SteammessagesChatSteamclient.CChatRoom_AckChatMessage_Notification request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        unifiedMessages.sendNotification("ChatRoom.AckChatMessage#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesChatSteamclient.CChatRoom_CreateInviteLink_Response.Builder>> createInviteLink(SteammessagesChatSteamclient.CChatRoom_CreateInviteLink_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesChatSteamclient.CChatRoom_CreateInviteLink_Response.Builder.class, "ChatRoom.CreateInviteLink#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesChatSteamclient.CChatRoom_GetInviteLinkInfo_Response.Builder>> getInviteLinkInfo(SteammessagesChatSteamclient.CChatRoom_GetInviteLinkInfo_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesChatSteamclient.CChatRoom_GetInviteLinkInfo_Response.Builder.class, "ChatRoom.GetInviteLinkInfo#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesChatSteamclient.CChatRoom_GetInviteInfo_Response.Builder>> getInviteInfo(SteammessagesChatSteamclient.CChatRoom_GetInviteInfo_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesChatSteamclient.CChatRoom_GetInviteInfo_Response.Builder.class, "ChatRoom.GetInviteInfo#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesChatSteamclient.CChatRoom_GetInviteLinksForGroup_Response.Builder>> getInviteLinksForGroup(SteammessagesChatSteamclient.CChatRoom_GetInviteLinksForGroup_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesChatSteamclient.CChatRoom_GetInviteLinksForGroup_Response.Builder.class, "ChatRoom.GetInviteLinksForGroup#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesChatSteamclient.CChatRoom_GetBanList_Response.Builder>> getBanList(SteammessagesChatSteamclient.CChatRoom_GetBanList_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesChatSteamclient.CChatRoom_GetBanList_Response.Builder.class, "ChatRoom.GetBanList#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesChatSteamclient.CChatRoom_GetInviteList_Response.Builder>> getInviteList(SteammessagesChatSteamclient.CChatRoom_GetInviteList_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesChatSteamclient.CChatRoom_GetInviteList_Response.Builder.class, "ChatRoom.GetInviteList#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesChatSteamclient.CChatRoom_DeleteInviteLink_Response.Builder>> deleteInviteLink(SteammessagesChatSteamclient.CChatRoom_DeleteInviteLink_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesChatSteamclient.CChatRoom_DeleteInviteLink_Response.Builder.class, "ChatRoom.DeleteInviteLink#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesChatSteamclient.CChatRoom_SetSessionActiveChatRoomGroups_Response.Builder>> setSessionActiveChatRoomGroups(SteammessagesChatSteamclient.CChatRoom_SetSessionActiveChatRoomGroups_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesChatSteamclient.CChatRoom_SetSessionActiveChatRoomGroups_Response.Builder.class, "ChatRoom.SetSessionActiveChatRoomGroups#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesChatSteamclient.CChatRoom_SetUserChatGroupPreferences_Response.Builder>> setUserChatGroupPreferences(SteammessagesChatSteamclient.CChatRoom_SetUserChatGroupPreferences_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesChatSteamclient.CChatRoom_SetUserChatGroupPreferences_Response.Builder.class, "ChatRoom.SetUserChatGroupPreferences#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesChatSteamclient.CChatRoom_DeleteChatMessages_Response.Builder>> deleteChatMessages(SteammessagesChatSteamclient.CChatRoom_DeleteChatMessages_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesChatSteamclient.CChatRoom_DeleteChatMessages_Response.Builder.class, "ChatRoom.DeleteChatMessages#1", request);
    }

    public final void updateMemberListView(SteammessagesChatSteamclient.CChatRoom_UpdateMemberListView_Notification request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        unifiedMessages.sendNotification("ChatRoom.UpdateMemberListView#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesChatSteamclient.CChatRoom_SearchMembers_Response.Builder>> searchMembers(SteammessagesChatSteamclient.CChatRoom_SearchMembers_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesChatSteamclient.CChatRoom_SearchMembers_Response.Builder.class, "ChatRoom.SearchMembers#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesChatSteamclient.CChatRoom_UpdateMessageReaction_Response.Builder>> updateMessageReaction(SteammessagesChatSteamclient.CChatRoom_UpdateMessageReaction_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesChatSteamclient.CChatRoom_UpdateMessageReaction_Response.Builder.class, "ChatRoom.UpdateMessageReaction#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesChatSteamclient.CChatRoom_GetMessageReactionReactors_Response.Builder>> getMessageReactionReactors(SteammessagesChatSteamclient.CChatRoom_GetMessageReactionReactors_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesChatSteamclient.CChatRoom_GetMessageReactionReactors_Response.Builder.class, "ChatRoom.GetMessageReactionReactors#1", request);
    }
}
