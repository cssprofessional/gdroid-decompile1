package in.dragonbra.javasteam.rpc.service;

import in.dragonbra.javasteam.base.PacketClientMsgProtobuf;
import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesAuthSteamclient;
import in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.SteamUnifiedMessages;
import in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.UnifiedService;
import in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.callback.ServiceMethodResponse;
import in.dragonbra.javasteam.types.AsyncJobSingle;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: Authentication.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class Authentication extends UnifiedService {
    @Override // in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.UnifiedService
    public String getServiceName() {
        return "Authentication";
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Authentication(SteamUnifiedMessages unifiedMessages) {
        super(unifiedMessages);
        Intrinsics.checkNotNullParameter(unifiedMessages, "unifiedMessages");
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    @Override // in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.UnifiedService
    public void handleResponseMsg(String methodName, PacketClientMsgProtobuf packetMsg) {
        Intrinsics.checkNotNullParameter(methodName, "methodName");
        Intrinsics.checkNotNullParameter(packetMsg, "packetMsg");
        switch (methodName.hashCode()) {
            case -1431716126:
                if (methodName.equals("UpdateAuthSessionWithMobileConfirmation")) {
                    postResponseMsg(SteammessagesAuthSteamclient.CAuthentication_UpdateAuthSessionWithMobileConfirmation_Response.class, packetMsg);
                    break;
                }
                break;
            case -917125890:
                if (methodName.equals("EnumerateTokens")) {
                    postResponseMsg(SteammessagesAuthSteamclient.CAuthentication_RefreshToken_Enumerate_Response.class, packetMsg);
                    break;
                }
                break;
            case -904162571:
                if (methodName.equals("GetAuthSessionRiskInfo")) {
                    postResponseMsg(SteammessagesAuthSteamclient.CAuthentication_GetAuthSessionRiskInfo_Response.class, packetMsg);
                    break;
                }
                break;
            case -59618359:
                if (methodName.equals("MigrateMobileSession")) {
                    postResponseMsg(SteammessagesAuthSteamclient.CAuthentication_MigrateMobileSession_Response.class, packetMsg);
                    break;
                }
                break;
            case 372896831:
                if (methodName.equals("GetAuthSessionsForAccount")) {
                    postResponseMsg(SteammessagesAuthSteamclient.CAuthentication_GetAuthSessionsForAccount_Response.class, packetMsg);
                    break;
                }
                break;
            case 538202666:
                if (methodName.equals("BeginAuthSessionViaQR")) {
                    postResponseMsg(SteammessagesAuthSteamclient.CAuthentication_BeginAuthSessionViaQR_Response.class, packetMsg);
                    break;
                }
                break;
            case 775806854:
                if (methodName.equals("GetAuthSessionInfo")) {
                    postResponseMsg(SteammessagesAuthSteamclient.CAuthentication_GetAuthSessionInfo_Response.class, packetMsg);
                    break;
                }
                break;
            case 1089490340:
                if (methodName.equals("RevokeRefreshToken")) {
                    postResponseMsg(SteammessagesAuthSteamclient.CAuthentication_RefreshToken_Revoke_Response.class, packetMsg);
                    break;
                }
                break;
            case 1104185075:
                if (methodName.equals("RevokeToken")) {
                    postResponseMsg(SteammessagesAuthSteamclient.CAuthentication_Token_Revoke_Response.class, packetMsg);
                    break;
                }
                break;
            case 1138149185:
                if (methodName.equals("PollAuthSessionStatus")) {
                    postResponseMsg(SteammessagesAuthSteamclient.CAuthentication_PollAuthSessionStatus_Response.class, packetMsg);
                    break;
                }
                break;
            case 1239075544:
                if (methodName.equals("GenerateAccessTokenForApp")) {
                    postResponseMsg(SteammessagesAuthSteamclient.CAuthentication_AccessToken_GenerateForApp_Response.class, packetMsg);
                    break;
                }
                break;
            case 1477636967:
                if (methodName.equals("GetPasswordRSAPublicKey")) {
                    postResponseMsg(SteammessagesAuthSteamclient.CAuthentication_GetPasswordRSAPublicKey_Response.class, packetMsg);
                    break;
                }
                break;
            case 1769241843:
                if (methodName.equals("BeginAuthSessionViaCredentials")) {
                    postResponseMsg(SteammessagesAuthSteamclient.CAuthentication_BeginAuthSessionViaCredentials_Response.class, packetMsg);
                    break;
                }
                break;
            case 2041351469:
                if (methodName.equals("UpdateAuthSessionWithSteamGuardCode")) {
                    postResponseMsg(SteammessagesAuthSteamclient.CAuthentication_UpdateAuthSessionWithSteamGuardCode_Response.class, packetMsg);
                    break;
                }
                break;
        }
    }

    @Override // in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.UnifiedService
    public void handleNotificationMsg(String methodName, PacketClientMsgProtobuf packetMsg) {
        Intrinsics.checkNotNullParameter(methodName, "methodName");
        Intrinsics.checkNotNullParameter(packetMsg, "packetMsg");
        if (Intrinsics.areEqual(methodName, "NotifyRiskQuizResults")) {
            postNotificationMsg(SteammessagesAuthSteamclient.CAuthentication_NotifyRiskQuizResults_Notification.class, packetMsg);
        }
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesAuthSteamclient.CAuthentication_GetPasswordRSAPublicKey_Response.Builder>> getPasswordRSAPublicKey(SteammessagesAuthSteamclient.CAuthentication_GetPasswordRSAPublicKey_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesAuthSteamclient.CAuthentication_GetPasswordRSAPublicKey_Response.Builder.class, "Authentication.GetPasswordRSAPublicKey#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesAuthSteamclient.CAuthentication_BeginAuthSessionViaQR_Response.Builder>> beginAuthSessionViaQR(SteammessagesAuthSteamclient.CAuthentication_BeginAuthSessionViaQR_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesAuthSteamclient.CAuthentication_BeginAuthSessionViaQR_Response.Builder.class, "Authentication.BeginAuthSessionViaQR#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesAuthSteamclient.CAuthentication_BeginAuthSessionViaCredentials_Response.Builder>> beginAuthSessionViaCredentials(SteammessagesAuthSteamclient.CAuthentication_BeginAuthSessionViaCredentials_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesAuthSteamclient.CAuthentication_BeginAuthSessionViaCredentials_Response.Builder.class, "Authentication.BeginAuthSessionViaCredentials#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesAuthSteamclient.CAuthentication_PollAuthSessionStatus_Response.Builder>> pollAuthSessionStatus(SteammessagesAuthSteamclient.CAuthentication_PollAuthSessionStatus_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesAuthSteamclient.CAuthentication_PollAuthSessionStatus_Response.Builder.class, "Authentication.PollAuthSessionStatus#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesAuthSteamclient.CAuthentication_GetAuthSessionInfo_Response.Builder>> getAuthSessionInfo(SteammessagesAuthSteamclient.CAuthentication_GetAuthSessionInfo_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesAuthSteamclient.CAuthentication_GetAuthSessionInfo_Response.Builder.class, "Authentication.GetAuthSessionInfo#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesAuthSteamclient.CAuthentication_GetAuthSessionRiskInfo_Response.Builder>> getAuthSessionRiskInfo(SteammessagesAuthSteamclient.CAuthentication_GetAuthSessionRiskInfo_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesAuthSteamclient.CAuthentication_GetAuthSessionRiskInfo_Response.Builder.class, "Authentication.GetAuthSessionRiskInfo#1", request);
    }

    public final void notifyRiskQuizResults(SteammessagesAuthSteamclient.CAuthentication_NotifyRiskQuizResults_Notification request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        unifiedMessages.sendNotification("Authentication.NotifyRiskQuizResults#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesAuthSteamclient.CAuthentication_UpdateAuthSessionWithMobileConfirmation_Response.Builder>> updateAuthSessionWithMobileConfirmation(SteammessagesAuthSteamclient.CAuthentication_UpdateAuthSessionWithMobileConfirmation_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesAuthSteamclient.CAuthentication_UpdateAuthSessionWithMobileConfirmation_Response.Builder.class, "Authentication.UpdateAuthSessionWithMobileConfirmation#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesAuthSteamclient.CAuthentication_UpdateAuthSessionWithSteamGuardCode_Response.Builder>> updateAuthSessionWithSteamGuardCode(SteammessagesAuthSteamclient.CAuthentication_UpdateAuthSessionWithSteamGuardCode_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesAuthSteamclient.CAuthentication_UpdateAuthSessionWithSteamGuardCode_Response.Builder.class, "Authentication.UpdateAuthSessionWithSteamGuardCode#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesAuthSteamclient.CAuthentication_AccessToken_GenerateForApp_Response.Builder>> generateAccessTokenForApp(SteammessagesAuthSteamclient.CAuthentication_AccessToken_GenerateForApp_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesAuthSteamclient.CAuthentication_AccessToken_GenerateForApp_Response.Builder.class, "Authentication.GenerateAccessTokenForApp#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesAuthSteamclient.CAuthentication_RefreshToken_Enumerate_Response.Builder>> enumerateTokens(SteammessagesAuthSteamclient.CAuthentication_RefreshToken_Enumerate_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesAuthSteamclient.CAuthentication_RefreshToken_Enumerate_Response.Builder.class, "Authentication.EnumerateTokens#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesAuthSteamclient.CAuthentication_GetAuthSessionsForAccount_Response.Builder>> getAuthSessionsForAccount(SteammessagesAuthSteamclient.CAuthentication_GetAuthSessionsForAccount_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesAuthSteamclient.CAuthentication_GetAuthSessionsForAccount_Response.Builder.class, "Authentication.GetAuthSessionsForAccount#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesAuthSteamclient.CAuthentication_MigrateMobileSession_Response.Builder>> migrateMobileSession(SteammessagesAuthSteamclient.CAuthentication_MigrateMobileSession_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesAuthSteamclient.CAuthentication_MigrateMobileSession_Response.Builder.class, "Authentication.MigrateMobileSession#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesAuthSteamclient.CAuthentication_Token_Revoke_Response.Builder>> revokeToken(SteammessagesAuthSteamclient.CAuthentication_Token_Revoke_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesAuthSteamclient.CAuthentication_Token_Revoke_Response.Builder.class, "Authentication.RevokeToken#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesAuthSteamclient.CAuthentication_RefreshToken_Revoke_Response.Builder>> revokeRefreshToken(SteammessagesAuthSteamclient.CAuthentication_RefreshToken_Revoke_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesAuthSteamclient.CAuthentication_RefreshToken_Revoke_Response.Builder.class, "Authentication.RevokeRefreshToken#1", request);
    }
}
