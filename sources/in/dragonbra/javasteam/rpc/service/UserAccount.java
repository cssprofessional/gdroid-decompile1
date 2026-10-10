package in.dragonbra.javasteam.rpc.service;

import in.dragonbra.javasteam.base.PacketClientMsgProtobuf;
import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesUseraccountSteamclient;
import in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.SteamUnifiedMessages;
import in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.UnifiedService;
import in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.callback.ServiceMethodResponse;
import in.dragonbra.javasteam.types.AsyncJobSingle;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: UserAccount.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class UserAccount extends UnifiedService {
    @Override // in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.UnifiedService
    public void handleNotificationMsg(String methodName, PacketClientMsgProtobuf packetMsg) {
        Intrinsics.checkNotNullParameter(methodName, "methodName");
        Intrinsics.checkNotNullParameter(packetMsg, "packetMsg");
    }

    @Override // in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.UnifiedService
    public String getServiceName() {
        return "UserAccount";
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UserAccount(SteamUnifiedMessages unifiedMessages) {
        super(unifiedMessages);
        Intrinsics.checkNotNullParameter(unifiedMessages, "unifiedMessages");
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    @Override // in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.UnifiedService
    public void handleResponseMsg(String methodName, PacketClientMsgProtobuf packetMsg) {
        Intrinsics.checkNotNullParameter(methodName, "methodName");
        Intrinsics.checkNotNullParameter(packetMsg, "packetMsg");
        switch (methodName.hashCode()) {
            case -1947494563:
                if (methodName.equals("RegisterCompatTool")) {
                    postResponseMsg(SteammessagesUseraccountSteamclient.CUserAccount_RegisterCompatTool_Response.class, packetMsg);
                    break;
                }
                break;
            case -1747178260:
                if (methodName.equals("RevokeFriendInviteToken")) {
                    postResponseMsg(SteammessagesUseraccountSteamclient.CUserAccount_RevokeFriendInviteToken_Response.class, packetMsg);
                    break;
                }
                break;
            case -1732481089:
                if (methodName.equals("CancelLicenseForApp")) {
                    postResponseMsg(SteammessagesUseraccountSteamclient.CUserAccount_CancelLicenseForApp_Response.class, packetMsg);
                    break;
                }
                break;
            case -1064281427:
                if (methodName.equals("ViewFriendInviteToken")) {
                    postResponseMsg(SteammessagesUseraccountSteamclient.CUserAccount_ViewFriendInviteToken_Response.class, packetMsg);
                    break;
                }
                break;
            case -986297291:
                if (methodName.equals("GetUserCountry")) {
                    postResponseMsg(SteammessagesUseraccountSteamclient.CUserAccount_GetUserCountry_Response.class, packetMsg);
                    break;
                }
                break;
            case -843442890:
                if (methodName.equals("CreateFriendInviteToken")) {
                    postResponseMsg(SteammessagesUseraccountSteamclient.CUserAccount_CreateFriendInviteToken_Response.class, packetMsg);
                    break;
                }
                break;
            case -78032746:
                if (methodName.equals("RedeemFriendInviteToken")) {
                    postResponseMsg(SteammessagesUseraccountSteamclient.CUserAccount_RedeemFriendInviteToken_Response.class, packetMsg);
                    break;
                }
                break;
            case 188647831:
                if (methodName.equals("GetFriendInviteTokens")) {
                    postResponseMsg(SteammessagesUseraccountSteamclient.CUserAccount_GetFriendInviteTokens_Response.class, packetMsg);
                    break;
                }
                break;
            case 810484456:
                if (methodName.equals("GetClientWalletDetails")) {
                    postResponseMsg(SteammessagesUseraccountSteamclient.CUserAccount_GetWalletDetails_Response.class, packetMsg);
                    break;
                }
                break;
            case 852300878:
                if (methodName.equals("GetAvailableValveDiscountPromotions")) {
                    postResponseMsg(SteammessagesUseraccountSteamclient.CUserAccount_GetAvailableValveDiscountPromotions_Response.class, packetMsg);
                    break;
                }
                break;
            case 1252660739:
                if (methodName.equals("GetAccountLinkStatus")) {
                    postResponseMsg(SteammessagesUseraccountSteamclient.CUserAccount_GetAccountLinkStatus_Response.class, packetMsg);
                    break;
                }
                break;
        }
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesUseraccountSteamclient.CUserAccount_GetAvailableValveDiscountPromotions_Response.Builder>> getAvailableValveDiscountPromotions(SteammessagesUseraccountSteamclient.CUserAccount_GetAvailableValveDiscountPromotions_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesUseraccountSteamclient.CUserAccount_GetAvailableValveDiscountPromotions_Response.Builder.class, "UserAccount.GetAvailableValveDiscountPromotions#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesUseraccountSteamclient.CUserAccount_GetWalletDetails_Response.Builder>> getClientWalletDetails(SteammessagesUseraccountSteamclient.CUserAccount_GetClientWalletDetails_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesUseraccountSteamclient.CUserAccount_GetWalletDetails_Response.Builder.class, "UserAccount.GetClientWalletDetails#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesUseraccountSteamclient.CUserAccount_GetAccountLinkStatus_Response.Builder>> getAccountLinkStatus(SteammessagesUseraccountSteamclient.CUserAccount_GetAccountLinkStatus_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesUseraccountSteamclient.CUserAccount_GetAccountLinkStatus_Response.Builder.class, "UserAccount.GetAccountLinkStatus#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesUseraccountSteamclient.CUserAccount_CancelLicenseForApp_Response.Builder>> cancelLicenseForApp(SteammessagesUseraccountSteamclient.CUserAccount_CancelLicenseForApp_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesUseraccountSteamclient.CUserAccount_CancelLicenseForApp_Response.Builder.class, "UserAccount.CancelLicenseForApp#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesUseraccountSteamclient.CUserAccount_GetUserCountry_Response.Builder>> getUserCountry(SteammessagesUseraccountSteamclient.CUserAccount_GetUserCountry_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesUseraccountSteamclient.CUserAccount_GetUserCountry_Response.Builder.class, "UserAccount.GetUserCountry#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesUseraccountSteamclient.CUserAccount_CreateFriendInviteToken_Response.Builder>> createFriendInviteToken(SteammessagesUseraccountSteamclient.CUserAccount_CreateFriendInviteToken_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesUseraccountSteamclient.CUserAccount_CreateFriendInviteToken_Response.Builder.class, "UserAccount.CreateFriendInviteToken#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesUseraccountSteamclient.CUserAccount_GetFriendInviteTokens_Response.Builder>> getFriendInviteTokens(SteammessagesUseraccountSteamclient.CUserAccount_GetFriendInviteTokens_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesUseraccountSteamclient.CUserAccount_GetFriendInviteTokens_Response.Builder.class, "UserAccount.GetFriendInviteTokens#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesUseraccountSteamclient.CUserAccount_ViewFriendInviteToken_Response.Builder>> viewFriendInviteToken(SteammessagesUseraccountSteamclient.CUserAccount_ViewFriendInviteToken_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesUseraccountSteamclient.CUserAccount_ViewFriendInviteToken_Response.Builder.class, "UserAccount.ViewFriendInviteToken#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesUseraccountSteamclient.CUserAccount_RedeemFriendInviteToken_Response.Builder>> redeemFriendInviteToken(SteammessagesUseraccountSteamclient.CUserAccount_RedeemFriendInviteToken_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesUseraccountSteamclient.CUserAccount_RedeemFriendInviteToken_Response.Builder.class, "UserAccount.RedeemFriendInviteToken#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesUseraccountSteamclient.CUserAccount_RevokeFriendInviteToken_Response.Builder>> revokeFriendInviteToken(SteammessagesUseraccountSteamclient.CUserAccount_RevokeFriendInviteToken_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesUseraccountSteamclient.CUserAccount_RevokeFriendInviteToken_Response.Builder.class, "UserAccount.RevokeFriendInviteToken#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesUseraccountSteamclient.CUserAccount_RegisterCompatTool_Response.Builder>> registerCompatTool(SteammessagesUseraccountSteamclient.CUserAccount_RegisterCompatTool_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesUseraccountSteamclient.CUserAccount_RegisterCompatTool_Response.Builder.class, "UserAccount.RegisterCompatTool#1", request);
    }
}
