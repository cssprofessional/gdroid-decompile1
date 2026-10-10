package in.dragonbra.javasteam.rpc.service;

import in.dragonbra.javasteam.base.PacketClientMsgProtobuf;
import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesParentalSteamclient;
import in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.SteamUnifiedMessages;
import in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.UnifiedService;
import in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.callback.ServiceMethodResponse;
import in.dragonbra.javasteam.types.AsyncJobSingle;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: Parental.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class Parental extends UnifiedService {
    @Override // in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.UnifiedService
    public void handleNotificationMsg(String methodName, PacketClientMsgProtobuf packetMsg) {
        Intrinsics.checkNotNullParameter(methodName, "methodName");
        Intrinsics.checkNotNullParameter(packetMsg, "packetMsg");
    }

    @Override // in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.UnifiedService
    public String getServiceName() {
        return "Parental";
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Parental(SteamUnifiedMessages unifiedMessages) {
        super(unifiedMessages);
        Intrinsics.checkNotNullParameter(unifiedMessages, "unifiedMessages");
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    @Override // in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.UnifiedService
    public void handleResponseMsg(String methodName, PacketClientMsgProtobuf packetMsg) {
        Intrinsics.checkNotNullParameter(methodName, "methodName");
        Intrinsics.checkNotNullParameter(packetMsg, "packetMsg");
        switch (methodName.hashCode()) {
            case -2079021490:
                if (methodName.equals("ApprovePlaytime")) {
                    postResponseMsg(SteammessagesParentalSteamclient.CParental_ApprovePlaytime_Response.class, packetMsg);
                    break;
                }
                break;
            case -1874807562:
                if (methodName.equals("LockClient")) {
                    postResponseMsg(SteammessagesParentalSteamclient.CParental_LockClient_Response.class, packetMsg);
                    break;
                }
                break;
            case -1845207126:
                if (methodName.equals("GetSignedParentalSettings")) {
                    postResponseMsg(SteammessagesParentalSteamclient.CParental_GetSignedParentalSettings_Response.class, packetMsg);
                    break;
                }
                break;
            case -1728332562:
                if (methodName.equals("GetParentalSettings")) {
                    postResponseMsg(SteammessagesParentalSteamclient.CParental_GetParentalSettings_Response.class, packetMsg);
                    break;
                }
                break;
            case -1619099855:
                if (methodName.equals("RequestRecoveryCode")) {
                    postResponseMsg(SteammessagesParentalSteamclient.CParental_RequestRecoveryCode_Response.class, packetMsg);
                    break;
                }
                break;
            case -1044090419:
                if (methodName.equals("ApproveFeatureAccess")) {
                    postResponseMsg(SteammessagesParentalSteamclient.CParental_ApproveFeatureAccess_Response.class, packetMsg);
                    break;
                }
                break;
            case -942455526:
                if (methodName.equals("GetRequests")) {
                    postResponseMsg(SteammessagesParentalSteamclient.CParental_GetRequests_Response.class, packetMsg);
                    break;
                }
                break;
            case -823250032:
                if (methodName.equals("RequestPlaytime")) {
                    postResponseMsg(SteammessagesParentalSteamclient.CParental_RequestPlaytime_Response.class, packetMsg);
                    break;
                }
                break;
            case -651557391:
                if (methodName.equals("ValidatePassword")) {
                    postResponseMsg(SteammessagesParentalSteamclient.CParental_ValidatePassword_Response.class, packetMsg);
                    break;
                }
                break;
            case -42197405:
                if (methodName.equals("ValidateToken")) {
                    postResponseMsg(SteammessagesParentalSteamclient.CParental_ValidateToken_Response.class, packetMsg);
                    break;
                }
                break;
            case 222906864:
                if (methodName.equals("DisableWithRecoveryCode")) {
                    postResponseMsg(SteammessagesParentalSteamclient.CParental_DisableWithRecoveryCode_Response.class, packetMsg);
                    break;
                }
                break;
            case 476069387:
                if (methodName.equals("ReportPlaytimeAndNotify")) {
                    postResponseMsg(SteammessagesParentalSteamclient.CParental_ReportPlaytimeAndNotify_Response.class, packetMsg);
                    break;
                }
                break;
            case 1022906874:
                if (methodName.equals("SetParentalSettings")) {
                    postResponseMsg(SteammessagesParentalSteamclient.CParental_SetParentalSettings_Response.class, packetMsg);
                    break;
                }
                break;
            case 1057750144:
                if (methodName.equals("DisableParentalSettings")) {
                    postResponseMsg(SteammessagesParentalSteamclient.CParental_DisableParentalSettings_Response.class, packetMsg);
                    break;
                }
                break;
            case 1611939163:
                if (methodName.equals("EnableParentalSettings")) {
                    postResponseMsg(SteammessagesParentalSteamclient.CParental_EnableParentalSettings_Response.class, packetMsg);
                    break;
                }
                break;
            case 1652219339:
                if (methodName.equals("RequestFeatureAccess")) {
                    postResponseMsg(SteammessagesParentalSteamclient.CParental_RequestFeatureAccess_Response.class, packetMsg);
                    break;
                }
                break;
        }
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesParentalSteamclient.CParental_EnableParentalSettings_Response.Builder>> enableParentalSettings(SteammessagesParentalSteamclient.CParental_EnableParentalSettings_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesParentalSteamclient.CParental_EnableParentalSettings_Response.Builder.class, "Parental.EnableParentalSettings#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesParentalSteamclient.CParental_DisableParentalSettings_Response.Builder>> disableParentalSettings(SteammessagesParentalSteamclient.CParental_DisableParentalSettings_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesParentalSteamclient.CParental_DisableParentalSettings_Response.Builder.class, "Parental.DisableParentalSettings#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesParentalSteamclient.CParental_GetParentalSettings_Response.Builder>> getParentalSettings(SteammessagesParentalSteamclient.CParental_GetParentalSettings_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesParentalSteamclient.CParental_GetParentalSettings_Response.Builder.class, "Parental.GetParentalSettings#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesParentalSteamclient.CParental_GetSignedParentalSettings_Response.Builder>> getSignedParentalSettings(SteammessagesParentalSteamclient.CParental_GetSignedParentalSettings_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesParentalSteamclient.CParental_GetSignedParentalSettings_Response.Builder.class, "Parental.GetSignedParentalSettings#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesParentalSteamclient.CParental_SetParentalSettings_Response.Builder>> setParentalSettings(SteammessagesParentalSteamclient.CParental_SetParentalSettings_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesParentalSteamclient.CParental_SetParentalSettings_Response.Builder.class, "Parental.SetParentalSettings#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesParentalSteamclient.CParental_ValidateToken_Response.Builder>> validateToken(SteammessagesParentalSteamclient.CParental_ValidateToken_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesParentalSteamclient.CParental_ValidateToken_Response.Builder.class, "Parental.ValidateToken#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesParentalSteamclient.CParental_ValidatePassword_Response.Builder>> validatePassword(SteammessagesParentalSteamclient.CParental_ValidatePassword_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesParentalSteamclient.CParental_ValidatePassword_Response.Builder.class, "Parental.ValidatePassword#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesParentalSteamclient.CParental_LockClient_Response.Builder>> lockClient(SteammessagesParentalSteamclient.CParental_LockClient_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesParentalSteamclient.CParental_LockClient_Response.Builder.class, "Parental.LockClient#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesParentalSteamclient.CParental_RequestRecoveryCode_Response.Builder>> requestRecoveryCode(SteammessagesParentalSteamclient.CParental_RequestRecoveryCode_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesParentalSteamclient.CParental_RequestRecoveryCode_Response.Builder.class, "Parental.RequestRecoveryCode#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesParentalSteamclient.CParental_DisableWithRecoveryCode_Response.Builder>> disableWithRecoveryCode(SteammessagesParentalSteamclient.CParental_DisableWithRecoveryCode_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesParentalSteamclient.CParental_DisableWithRecoveryCode_Response.Builder.class, "Parental.DisableWithRecoveryCode#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesParentalSteamclient.CParental_RequestFeatureAccess_Response.Builder>> requestFeatureAccess(SteammessagesParentalSteamclient.CParental_RequestFeatureAccess_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesParentalSteamclient.CParental_RequestFeatureAccess_Response.Builder.class, "Parental.RequestFeatureAccess#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesParentalSteamclient.CParental_ApproveFeatureAccess_Response.Builder>> approveFeatureAccess(SteammessagesParentalSteamclient.CParental_ApproveFeatureAccess_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesParentalSteamclient.CParental_ApproveFeatureAccess_Response.Builder.class, "Parental.ApproveFeatureAccess#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesParentalSteamclient.CParental_RequestPlaytime_Response.Builder>> requestPlaytime(SteammessagesParentalSteamclient.CParental_RequestPlaytime_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesParentalSteamclient.CParental_RequestPlaytime_Response.Builder.class, "Parental.RequestPlaytime#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesParentalSteamclient.CParental_ApprovePlaytime_Response.Builder>> approvePlaytime(SteammessagesParentalSteamclient.CParental_ApprovePlaytime_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesParentalSteamclient.CParental_ApprovePlaytime_Response.Builder.class, "Parental.ApprovePlaytime#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesParentalSteamclient.CParental_GetRequests_Response.Builder>> getRequests(SteammessagesParentalSteamclient.CParental_GetRequests_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesParentalSteamclient.CParental_GetRequests_Response.Builder.class, "Parental.GetRequests#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesParentalSteamclient.CParental_ReportPlaytimeAndNotify_Response.Builder>> reportPlaytimeAndNotify(SteammessagesParentalSteamclient.CParental_ReportPlaytimeAndNotify_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesParentalSteamclient.CParental_ReportPlaytimeAndNotify_Response.Builder.class, "Parental.ReportPlaytimeAndNotify#1", request);
    }
}
