package in.dragonbra.javasteam.rpc.service;

import in.dragonbra.javasteam.base.PacketClientMsgProtobuf;
import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesFamilygroupsSteamclient;
import in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.SteamUnifiedMessages;
import in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.UnifiedService;
import in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.callback.ServiceMethodResponse;
import in.dragonbra.javasteam.types.AsyncJobSingle;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: FamilyGroups.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class FamilyGroups extends UnifiedService {
    @Override // in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.UnifiedService
    public void handleNotificationMsg(String methodName, PacketClientMsgProtobuf packetMsg) {
        Intrinsics.checkNotNullParameter(methodName, "methodName");
        Intrinsics.checkNotNullParameter(packetMsg, "packetMsg");
    }

    @Override // in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.UnifiedService
    public String getServiceName() {
        return "FamilyGroups";
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FamilyGroups(SteamUnifiedMessages unifiedMessages) {
        super(unifiedMessages);
        Intrinsics.checkNotNullParameter(unifiedMessages, "unifiedMessages");
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    @Override // in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.UnifiedService
    public void handleResponseMsg(String methodName, PacketClientMsgProtobuf packetMsg) {
        Intrinsics.checkNotNullParameter(methodName, "methodName");
        Intrinsics.checkNotNullParameter(packetMsg, "packetMsg");
        switch (methodName.hashCode()) {
            case -1992015561:
                if (methodName.equals("UndeleteFamilyGroup")) {
                    postResponseMsg(SteammessagesFamilygroupsSteamclient.CFamilyGroups_UndeleteFamilyGroup_Response.class, packetMsg);
                    break;
                }
                break;
            case -1587779350:
                if (methodName.equals("CancelFamilyGroupInvite")) {
                    postResponseMsg(SteammessagesFamilygroupsSteamclient.CFamilyGroups_CancelFamilyGroupInvite_Response.class, packetMsg);
                    break;
                }
                break;
            case -1450486193:
                if (methodName.equals("GetPlaytimeSummary")) {
                    postResponseMsg(SteammessagesFamilygroupsSteamclient.CFamilyGroups_GetPlaytimeSummary_Response.class, packetMsg);
                    break;
                }
                break;
            case -1278811472:
                if (methodName.equals("DeleteFamilyGroup")) {
                    postResponseMsg(SteammessagesFamilygroupsSteamclient.CFamilyGroups_DeleteFamilyGroup_Response.class, packetMsg);
                    break;
                }
                break;
            case -1130287423:
                if (methodName.equals("ModifyFamilyGroupDetails")) {
                    postResponseMsg(SteammessagesFamilygroupsSteamclient.CFamilyGroups_ModifyFamilyGroupDetails_Response.class, packetMsg);
                    break;
                }
                break;
            case -1065484132:
                if (methodName.equals("ForceAcceptInvite")) {
                    postResponseMsg(SteammessagesFamilygroupsSteamclient.CFamilyGroups_ForceAcceptInvite_Response.class, packetMsg);
                    break;
                }
                break;
            case -959638384:
                if (methodName.equals("RequestPurchase")) {
                    postResponseMsg(SteammessagesFamilygroupsSteamclient.CFamilyGroups_RequestPurchase_Response.class, packetMsg);
                    break;
                }
                break;
            case -806587745:
                if (methodName.equals("RespondToRequestedPurchase")) {
                    postResponseMsg(SteammessagesFamilygroupsSteamclient.CFamilyGroups_RespondToRequestedPurchase_Response.class, packetMsg);
                    break;
                }
                break;
            case -619824449:
                if (methodName.equals("CreateFamilyGroup")) {
                    postResponseMsg(SteammessagesFamilygroupsSteamclient.CFamilyGroups_CreateFamilyGroup_Response.class, packetMsg);
                    break;
                }
                break;
            case -446696873:
                if (methodName.equals("ClearCooldownSkip")) {
                    postResponseMsg(SteammessagesFamilygroupsSteamclient.CFamilyGroups_ClearCooldownSkip_Response.class, packetMsg);
                    break;
                }
                break;
            case -379369728:
                if (methodName.equals("GetUsersSharingDevice")) {
                    postResponseMsg(SteammessagesFamilygroupsSteamclient.CFamilyGroups_GetUsersSharingDevice_Response.class, packetMsg);
                    break;
                }
                break;
            case -325838031:
                if (methodName.equals("ConfirmJoinFamilyGroup")) {
                    postResponseMsg(SteammessagesFamilygroupsSteamclient.CFamilyGroups_ConfirmJoinFamilyGroup_Response.class, packetMsg);
                    break;
                }
                break;
            case 450883599:
                if (methodName.equals("GetFamilyGroupForUser")) {
                    postResponseMsg(SteammessagesFamilygroupsSteamclient.CFamilyGroups_GetFamilyGroupForUser_Response.class, packetMsg);
                    break;
                }
                break;
            case 826191313:
                if (methodName.equals("JoinFamilyGroup")) {
                    postResponseMsg(SteammessagesFamilygroupsSteamclient.CFamilyGroups_JoinFamilyGroup_Response.class, packetMsg);
                    break;
                }
                break;
            case 944662331:
                if (methodName.equals("GetPurchaseRequests")) {
                    postResponseMsg(SteammessagesFamilygroupsSteamclient.CFamilyGroups_GetPurchaseRequests_Response.class, packetMsg);
                    break;
                }
                break;
            case 965870482:
                if (methodName.equals("GetSharedLibraryApps")) {
                    postResponseMsg(SteammessagesFamilygroupsSteamclient.CFamilyGroups_GetSharedLibraryApps_Response.class, packetMsg);
                    break;
                }
                break;
            case 1013070348:
                if (methodName.equals("ResendInvitationToFamilyGroup")) {
                    postResponseMsg(SteammessagesFamilygroupsSteamclient.CFamilyGroups_ResendInvitationToFamilyGroup_Response.class, packetMsg);
                    break;
                }
                break;
            case 1389963547:
                if (methodName.equals("SetPreferredLender")) {
                    postResponseMsg(SteammessagesFamilygroupsSteamclient.CFamilyGroups_SetPreferredLender_Response.class, packetMsg);
                    break;
                }
                break;
            case 1461036365:
                if (methodName.equals("GetInviteCheckResults")) {
                    postResponseMsg(SteammessagesFamilygroupsSteamclient.CFamilyGroups_GetInviteCheckResults_Response.class, packetMsg);
                    break;
                }
                break;
            case 1609957086:
                if (methodName.equals("GetChangeLog")) {
                    postResponseMsg(SteammessagesFamilygroupsSteamclient.CFamilyGroups_GetChangeLog_Response.class, packetMsg);
                    break;
                }
                break;
            case 1632124005:
                if (methodName.equals("GetFamilyGroup")) {
                    postResponseMsg(SteammessagesFamilygroupsSteamclient.CFamilyGroups_GetFamilyGroup_Response.class, packetMsg);
                    break;
                }
                break;
            case 1659615063:
                if (methodName.equals("InviteToFamilyGroup")) {
                    postResponseMsg(SteammessagesFamilygroupsSteamclient.CFamilyGroups_InviteToFamilyGroup_Response.class, packetMsg);
                    break;
                }
                break;
            case 1661280598:
                if (methodName.equals("SetFamilyCooldownOverrides")) {
                    postResponseMsg(SteammessagesFamilygroupsSteamclient.CFamilyGroups_SetFamilyCooldownOverrides_Response.class, packetMsg);
                    break;
                }
                break;
            case 1682481709:
                if (methodName.equals("RemoveFromFamilyGroup")) {
                    postResponseMsg(SteammessagesFamilygroupsSteamclient.CFamilyGroups_RemoveFromFamilyGroup_Response.class, packetMsg);
                    break;
                }
                break;
            case 1682924972:
                if (methodName.equals("GetPreferredLenders")) {
                    postResponseMsg(SteammessagesFamilygroupsSteamclient.CFamilyGroups_GetPreferredLenders_Response.class, packetMsg);
                    break;
                }
                break;
            case 1896576183:
                if (methodName.equals("ConfirmInviteToFamilyGroup")) {
                    postResponseMsg(SteammessagesFamilygroupsSteamclient.CFamilyGroups_ConfirmInviteToFamilyGroup_Response.class, packetMsg);
                    break;
                }
                break;
        }
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesFamilygroupsSteamclient.CFamilyGroups_CreateFamilyGroup_Response.Builder>> createFamilyGroup(SteammessagesFamilygroupsSteamclient.CFamilyGroups_CreateFamilyGroup_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesFamilygroupsSteamclient.CFamilyGroups_CreateFamilyGroup_Response.Builder.class, "FamilyGroups.CreateFamilyGroup#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesFamilygroupsSteamclient.CFamilyGroups_GetFamilyGroup_Response.Builder>> getFamilyGroup(SteammessagesFamilygroupsSteamclient.CFamilyGroups_GetFamilyGroup_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesFamilygroupsSteamclient.CFamilyGroups_GetFamilyGroup_Response.Builder.class, "FamilyGroups.GetFamilyGroup#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesFamilygroupsSteamclient.CFamilyGroups_GetFamilyGroupForUser_Response.Builder>> getFamilyGroupForUser(SteammessagesFamilygroupsSteamclient.CFamilyGroups_GetFamilyGroupForUser_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesFamilygroupsSteamclient.CFamilyGroups_GetFamilyGroupForUser_Response.Builder.class, "FamilyGroups.GetFamilyGroupForUser#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesFamilygroupsSteamclient.CFamilyGroups_ModifyFamilyGroupDetails_Response.Builder>> modifyFamilyGroupDetails(SteammessagesFamilygroupsSteamclient.CFamilyGroups_ModifyFamilyGroupDetails_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesFamilygroupsSteamclient.CFamilyGroups_ModifyFamilyGroupDetails_Response.Builder.class, "FamilyGroups.ModifyFamilyGroupDetails#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesFamilygroupsSteamclient.CFamilyGroups_InviteToFamilyGroup_Response.Builder>> inviteToFamilyGroup(SteammessagesFamilygroupsSteamclient.CFamilyGroups_InviteToFamilyGroup_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesFamilygroupsSteamclient.CFamilyGroups_InviteToFamilyGroup_Response.Builder.class, "FamilyGroups.InviteToFamilyGroup#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesFamilygroupsSteamclient.CFamilyGroups_ConfirmInviteToFamilyGroup_Response.Builder>> confirmInviteToFamilyGroup(SteammessagesFamilygroupsSteamclient.CFamilyGroups_ConfirmInviteToFamilyGroup_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesFamilygroupsSteamclient.CFamilyGroups_ConfirmInviteToFamilyGroup_Response.Builder.class, "FamilyGroups.ConfirmInviteToFamilyGroup#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesFamilygroupsSteamclient.CFamilyGroups_ResendInvitationToFamilyGroup_Response.Builder>> resendInvitationToFamilyGroup(SteammessagesFamilygroupsSteamclient.CFamilyGroups_ResendInvitationToFamilyGroup_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesFamilygroupsSteamclient.CFamilyGroups_ResendInvitationToFamilyGroup_Response.Builder.class, "FamilyGroups.ResendInvitationToFamilyGroup#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesFamilygroupsSteamclient.CFamilyGroups_JoinFamilyGroup_Response.Builder>> joinFamilyGroup(SteammessagesFamilygroupsSteamclient.CFamilyGroups_JoinFamilyGroup_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesFamilygroupsSteamclient.CFamilyGroups_JoinFamilyGroup_Response.Builder.class, "FamilyGroups.JoinFamilyGroup#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesFamilygroupsSteamclient.CFamilyGroups_ConfirmJoinFamilyGroup_Response.Builder>> confirmJoinFamilyGroup(SteammessagesFamilygroupsSteamclient.CFamilyGroups_ConfirmJoinFamilyGroup_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesFamilygroupsSteamclient.CFamilyGroups_ConfirmJoinFamilyGroup_Response.Builder.class, "FamilyGroups.ConfirmJoinFamilyGroup#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesFamilygroupsSteamclient.CFamilyGroups_RemoveFromFamilyGroup_Response.Builder>> removeFromFamilyGroup(SteammessagesFamilygroupsSteamclient.CFamilyGroups_RemoveFromFamilyGroup_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesFamilygroupsSteamclient.CFamilyGroups_RemoveFromFamilyGroup_Response.Builder.class, "FamilyGroups.RemoveFromFamilyGroup#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesFamilygroupsSteamclient.CFamilyGroups_CancelFamilyGroupInvite_Response.Builder>> cancelFamilyGroupInvite(SteammessagesFamilygroupsSteamclient.CFamilyGroups_CancelFamilyGroupInvite_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesFamilygroupsSteamclient.CFamilyGroups_CancelFamilyGroupInvite_Response.Builder.class, "FamilyGroups.CancelFamilyGroupInvite#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesFamilygroupsSteamclient.CFamilyGroups_GetUsersSharingDevice_Response.Builder>> getUsersSharingDevice(SteammessagesFamilygroupsSteamclient.CFamilyGroups_GetUsersSharingDevice_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesFamilygroupsSteamclient.CFamilyGroups_GetUsersSharingDevice_Response.Builder.class, "FamilyGroups.GetUsersSharingDevice#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesFamilygroupsSteamclient.CFamilyGroups_DeleteFamilyGroup_Response.Builder>> deleteFamilyGroup(SteammessagesFamilygroupsSteamclient.CFamilyGroups_DeleteFamilyGroup_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesFamilygroupsSteamclient.CFamilyGroups_DeleteFamilyGroup_Response.Builder.class, "FamilyGroups.DeleteFamilyGroup#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesFamilygroupsSteamclient.CFamilyGroups_UndeleteFamilyGroup_Response.Builder>> undeleteFamilyGroup(SteammessagesFamilygroupsSteamclient.CFamilyGroups_UndeleteFamilyGroup_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesFamilygroupsSteamclient.CFamilyGroups_UndeleteFamilyGroup_Response.Builder.class, "FamilyGroups.UndeleteFamilyGroup#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesFamilygroupsSteamclient.CFamilyGroups_GetPlaytimeSummary_Response.Builder>> getPlaytimeSummary(SteammessagesFamilygroupsSteamclient.CFamilyGroups_GetPlaytimeSummary_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesFamilygroupsSteamclient.CFamilyGroups_GetPlaytimeSummary_Response.Builder.class, "FamilyGroups.GetPlaytimeSummary#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesFamilygroupsSteamclient.CFamilyGroups_RequestPurchase_Response.Builder>> requestPurchase(SteammessagesFamilygroupsSteamclient.CFamilyGroups_RequestPurchase_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesFamilygroupsSteamclient.CFamilyGroups_RequestPurchase_Response.Builder.class, "FamilyGroups.RequestPurchase#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesFamilygroupsSteamclient.CFamilyGroups_GetPurchaseRequests_Response.Builder>> getPurchaseRequests(SteammessagesFamilygroupsSteamclient.CFamilyGroups_GetPurchaseRequests_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesFamilygroupsSteamclient.CFamilyGroups_GetPurchaseRequests_Response.Builder.class, "FamilyGroups.GetPurchaseRequests#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesFamilygroupsSteamclient.CFamilyGroups_RespondToRequestedPurchase_Response.Builder>> respondToRequestedPurchase(SteammessagesFamilygroupsSteamclient.CFamilyGroups_RespondToRequestedPurchase_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesFamilygroupsSteamclient.CFamilyGroups_RespondToRequestedPurchase_Response.Builder.class, "FamilyGroups.RespondToRequestedPurchase#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesFamilygroupsSteamclient.CFamilyGroups_GetChangeLog_Response.Builder>> getChangeLog(SteammessagesFamilygroupsSteamclient.CFamilyGroups_GetChangeLog_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesFamilygroupsSteamclient.CFamilyGroups_GetChangeLog_Response.Builder.class, "FamilyGroups.GetChangeLog#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesFamilygroupsSteamclient.CFamilyGroups_SetFamilyCooldownOverrides_Response.Builder>> setFamilyCooldownOverrides(SteammessagesFamilygroupsSteamclient.CFamilyGroups_SetFamilyCooldownOverrides_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesFamilygroupsSteamclient.CFamilyGroups_SetFamilyCooldownOverrides_Response.Builder.class, "FamilyGroups.SetFamilyCooldownOverrides#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesFamilygroupsSteamclient.CFamilyGroups_GetSharedLibraryApps_Response.Builder>> getSharedLibraryApps(SteammessagesFamilygroupsSteamclient.CFamilyGroups_GetSharedLibraryApps_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesFamilygroupsSteamclient.CFamilyGroups_GetSharedLibraryApps_Response.Builder.class, "FamilyGroups.GetSharedLibraryApps#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesFamilygroupsSteamclient.CFamilyGroups_SetPreferredLender_Response.Builder>> setPreferredLender(SteammessagesFamilygroupsSteamclient.CFamilyGroups_SetPreferredLender_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesFamilygroupsSteamclient.CFamilyGroups_SetPreferredLender_Response.Builder.class, "FamilyGroups.SetPreferredLender#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesFamilygroupsSteamclient.CFamilyGroups_GetPreferredLenders_Response.Builder>> getPreferredLenders(SteammessagesFamilygroupsSteamclient.CFamilyGroups_GetPreferredLenders_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesFamilygroupsSteamclient.CFamilyGroups_GetPreferredLenders_Response.Builder.class, "FamilyGroups.GetPreferredLenders#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesFamilygroupsSteamclient.CFamilyGroups_ForceAcceptInvite_Response.Builder>> forceAcceptInvite(SteammessagesFamilygroupsSteamclient.CFamilyGroups_ForceAcceptInvite_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesFamilygroupsSteamclient.CFamilyGroups_ForceAcceptInvite_Response.Builder.class, "FamilyGroups.ForceAcceptInvite#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesFamilygroupsSteamclient.CFamilyGroups_GetInviteCheckResults_Response.Builder>> getInviteCheckResults(SteammessagesFamilygroupsSteamclient.CFamilyGroups_GetInviteCheckResults_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesFamilygroupsSteamclient.CFamilyGroups_GetInviteCheckResults_Response.Builder.class, "FamilyGroups.GetInviteCheckResults#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesFamilygroupsSteamclient.CFamilyGroups_ClearCooldownSkip_Response.Builder>> clearCooldownSkip(SteammessagesFamilygroupsSteamclient.CFamilyGroups_ClearCooldownSkip_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesFamilygroupsSteamclient.CFamilyGroups_ClearCooldownSkip_Response.Builder.class, "FamilyGroups.ClearCooldownSkip#1", request);
    }
}
