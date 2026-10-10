package in.dragonbra.javasteam.rpc.service;

import in.dragonbra.javasteam.base.PacketClientMsgProtobuf;
import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesTwofactorSteamclient;
import in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.SteamUnifiedMessages;
import in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.UnifiedService;
import in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.callback.ServiceMethodResponse;
import in.dragonbra.javasteam.types.AsyncJobSingle;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: TwoFactor.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class TwoFactor extends UnifiedService {
    @Override // in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.UnifiedService
    public void handleNotificationMsg(String methodName, PacketClientMsgProtobuf packetMsg) {
        Intrinsics.checkNotNullParameter(methodName, "methodName");
        Intrinsics.checkNotNullParameter(packetMsg, "packetMsg");
    }

    @Override // in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.UnifiedService
    public String getServiceName() {
        return "TwoFactor";
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TwoFactor(SteamUnifiedMessages unifiedMessages) {
        super(unifiedMessages);
        Intrinsics.checkNotNullParameter(unifiedMessages, "unifiedMessages");
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    @Override // in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.UnifiedService
    public void handleResponseMsg(String methodName, PacketClientMsgProtobuf packetMsg) {
        Intrinsics.checkNotNullParameter(methodName, "methodName");
        Intrinsics.checkNotNullParameter(packetMsg, "packetMsg");
        switch (methodName.hashCode()) {
            case -1273855312:
                if (methodName.equals("FinalizeAddAuthenticator")) {
                    postResponseMsg(SteammessagesTwofactorSteamclient.CTwoFactor_FinalizeAddAuthenticator_Response.class, packetMsg);
                    break;
                }
                break;
            case -1205490897:
                if (methodName.equals("RemoveAuthenticator")) {
                    postResponseMsg(SteammessagesTwofactorSteamclient.CTwoFactor_RemoveAuthenticator_Response.class, packetMsg);
                    break;
                }
                break;
            case -1193066101:
                if (methodName.equals("RemoveAuthenticatorViaChallengeContinue")) {
                    postResponseMsg(SteammessagesTwofactorSteamclient.CTwoFactor_RemoveAuthenticatorViaChallengeContinue_Response.class, packetMsg);
                    break;
                }
                break;
            case -198908888:
                if (methodName.equals("UpdateTokenVersion")) {
                    postResponseMsg(SteammessagesTwofactorSteamclient.CTwoFactor_UpdateTokenVersion_Response.class, packetMsg);
                    break;
                }
                break;
            case 197090197:
                if (methodName.equals("QueryTime")) {
                    postResponseMsg(SteammessagesTwofactorSteamclient.CTwoFactor_Time_Response.class, packetMsg);
                    break;
                }
                break;
            case 283605502:
                if (methodName.equals("RemoveAuthenticatorViaChallengeStart")) {
                    postResponseMsg(SteammessagesTwofactorSteamclient.CTwoFactor_RemoveAuthenticatorViaChallengeStart_Response.class, packetMsg);
                    break;
                }
                break;
            case 406308538:
                if (methodName.equals("QueryStatus")) {
                    postResponseMsg(SteammessagesTwofactorSteamclient.CTwoFactor_Status_Response.class, packetMsg);
                    break;
                }
                break;
            case 909082226:
                if (methodName.equals("AddAuthenticator")) {
                    postResponseMsg(SteammessagesTwofactorSteamclient.CTwoFactor_AddAuthenticator_Response.class, packetMsg);
                    break;
                }
                break;
        }
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesTwofactorSteamclient.CTwoFactor_Time_Response.Builder>> queryTime(SteammessagesTwofactorSteamclient.CTwoFactor_Time_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesTwofactorSteamclient.CTwoFactor_Time_Response.Builder.class, "TwoFactor.QueryTime#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesTwofactorSteamclient.CTwoFactor_Status_Response.Builder>> queryStatus(SteammessagesTwofactorSteamclient.CTwoFactor_Status_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesTwofactorSteamclient.CTwoFactor_Status_Response.Builder.class, "TwoFactor.QueryStatus#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesTwofactorSteamclient.CTwoFactor_AddAuthenticator_Response.Builder>> addAuthenticator(SteammessagesTwofactorSteamclient.CTwoFactor_AddAuthenticator_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesTwofactorSteamclient.CTwoFactor_AddAuthenticator_Response.Builder.class, "TwoFactor.AddAuthenticator#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesTwofactorSteamclient.CTwoFactor_FinalizeAddAuthenticator_Response.Builder>> finalizeAddAuthenticator(SteammessagesTwofactorSteamclient.CTwoFactor_FinalizeAddAuthenticator_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesTwofactorSteamclient.CTwoFactor_FinalizeAddAuthenticator_Response.Builder.class, "TwoFactor.FinalizeAddAuthenticator#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesTwofactorSteamclient.CTwoFactor_UpdateTokenVersion_Response.Builder>> updateTokenVersion(SteammessagesTwofactorSteamclient.CTwoFactor_UpdateTokenVersion_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesTwofactorSteamclient.CTwoFactor_UpdateTokenVersion_Response.Builder.class, "TwoFactor.UpdateTokenVersion#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesTwofactorSteamclient.CTwoFactor_RemoveAuthenticator_Response.Builder>> removeAuthenticator(SteammessagesTwofactorSteamclient.CTwoFactor_RemoveAuthenticator_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesTwofactorSteamclient.CTwoFactor_RemoveAuthenticator_Response.Builder.class, "TwoFactor.RemoveAuthenticator#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesTwofactorSteamclient.CTwoFactor_RemoveAuthenticatorViaChallengeStart_Response.Builder>> removeAuthenticatorViaChallengeStart(SteammessagesTwofactorSteamclient.CTwoFactor_RemoveAuthenticatorViaChallengeStart_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesTwofactorSteamclient.CTwoFactor_RemoveAuthenticatorViaChallengeStart_Response.Builder.class, "TwoFactor.RemoveAuthenticatorViaChallengeStart#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesTwofactorSteamclient.CTwoFactor_RemoveAuthenticatorViaChallengeContinue_Response.Builder>> removeAuthenticatorViaChallengeContinue(SteammessagesTwofactorSteamclient.CTwoFactor_RemoveAuthenticatorViaChallengeContinue_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesTwofactorSteamclient.CTwoFactor_RemoveAuthenticatorViaChallengeContinue_Response.Builder.class, "TwoFactor.RemoveAuthenticatorViaChallengeContinue#1", request);
    }
}
