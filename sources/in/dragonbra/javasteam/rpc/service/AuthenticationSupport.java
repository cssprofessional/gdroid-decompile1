package in.dragonbra.javasteam.rpc.service;

import in.dragonbra.javasteam.base.PacketClientMsgProtobuf;
import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesAuthSteamclient;
import in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.SteamUnifiedMessages;
import in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.UnifiedService;
import in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.callback.ServiceMethodResponse;
import in.dragonbra.javasteam.types.AsyncJobSingle;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: AuthenticationSupport.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class AuthenticationSupport extends UnifiedService {
    @Override // in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.UnifiedService
    public void handleNotificationMsg(String methodName, PacketClientMsgProtobuf packetMsg) {
        Intrinsics.checkNotNullParameter(methodName, "methodName");
        Intrinsics.checkNotNullParameter(packetMsg, "packetMsg");
    }

    @Override // in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.UnifiedService
    public String getServiceName() {
        return "AuthenticationSupport";
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AuthenticationSupport(SteamUnifiedMessages unifiedMessages) {
        super(unifiedMessages);
        Intrinsics.checkNotNullParameter(unifiedMessages, "unifiedMessages");
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    @Override // in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.UnifiedService
    public void handleResponseMsg(String methodName, PacketClientMsgProtobuf packetMsg) {
        Intrinsics.checkNotNullParameter(methodName, "methodName");
        Intrinsics.checkNotNullParameter(packetMsg, "packetMsg");
        switch (methodName.hashCode()) {
            case 135893681:
                if (methodName.equals("GetTokenHistory")) {
                    postResponseMsg(SteammessagesAuthSteamclient.CAuthenticationSupport_GetTokenHistory_Response.class, packetMsg);
                    break;
                }
                break;
            case 356005833:
                if (methodName.equals("QueryRefreshTokensByAccount")) {
                    postResponseMsg(SteammessagesAuthSteamclient.CAuthenticationSupport_QueryRefreshTokensByAccount_Response.class, packetMsg);
                    break;
                }
                break;
            case 962106744:
                if (methodName.equals("QueryRefreshTokenByID")) {
                    postResponseMsg(SteammessagesAuthSteamclient.CAuthenticationSupport_QueryRefreshTokenByID_Response.class, packetMsg);
                    break;
                }
                break;
            case 1104185075:
                if (methodName.equals("RevokeToken")) {
                    postResponseMsg(SteammessagesAuthSteamclient.CAuthenticationSupport_RevokeToken_Response.class, packetMsg);
                    break;
                }
                break;
            case 1818773630:
                if (methodName.equals("MarkTokenCompromised")) {
                    postResponseMsg(SteammessagesAuthSteamclient.CAuthenticationSupport_MarkTokenCompromised_Response.class, packetMsg);
                    break;
                }
                break;
        }
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesAuthSteamclient.CAuthenticationSupport_QueryRefreshTokensByAccount_Response.Builder>> queryRefreshTokensByAccount(SteammessagesAuthSteamclient.CAuthenticationSupport_QueryRefreshTokensByAccount_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesAuthSteamclient.CAuthenticationSupport_QueryRefreshTokensByAccount_Response.Builder.class, "AuthenticationSupport.QueryRefreshTokensByAccount#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesAuthSteamclient.CAuthenticationSupport_QueryRefreshTokenByID_Response.Builder>> queryRefreshTokenByID(SteammessagesAuthSteamclient.CAuthenticationSupport_QueryRefreshTokenByID_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesAuthSteamclient.CAuthenticationSupport_QueryRefreshTokenByID_Response.Builder.class, "AuthenticationSupport.QueryRefreshTokenByID#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesAuthSteamclient.CAuthenticationSupport_RevokeToken_Response.Builder>> revokeToken(SteammessagesAuthSteamclient.CAuthenticationSupport_RevokeToken_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesAuthSteamclient.CAuthenticationSupport_RevokeToken_Response.Builder.class, "AuthenticationSupport.RevokeToken#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesAuthSteamclient.CAuthenticationSupport_GetTokenHistory_Response.Builder>> getTokenHistory(SteammessagesAuthSteamclient.CAuthenticationSupport_GetTokenHistory_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesAuthSteamclient.CAuthenticationSupport_GetTokenHistory_Response.Builder.class, "AuthenticationSupport.GetTokenHistory#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesAuthSteamclient.CAuthenticationSupport_MarkTokenCompromised_Response.Builder>> markTokenCompromised(SteammessagesAuthSteamclient.CAuthenticationSupport_MarkTokenCompromised_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesAuthSteamclient.CAuthenticationSupport_MarkTokenCompromised_Response.Builder.class, "AuthenticationSupport.MarkTokenCompromised#1", request);
    }
}
