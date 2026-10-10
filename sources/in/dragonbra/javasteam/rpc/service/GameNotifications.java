package in.dragonbra.javasteam.rpc.service;

import in.dragonbra.javasteam.base.PacketClientMsgProtobuf;
import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesGamenotificationsSteamclient;
import in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.SteamUnifiedMessages;
import in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.UnifiedService;
import in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.callback.ServiceMethodResponse;
import in.dragonbra.javasteam.types.AsyncJobSingle;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: GameNotifications.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class GameNotifications extends UnifiedService {
    @Override // in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.UnifiedService
    public void handleNotificationMsg(String methodName, PacketClientMsgProtobuf packetMsg) {
        Intrinsics.checkNotNullParameter(methodName, "methodName");
        Intrinsics.checkNotNullParameter(packetMsg, "packetMsg");
    }

    @Override // in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.UnifiedService
    public String getServiceName() {
        return "GameNotifications";
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GameNotifications(SteamUnifiedMessages unifiedMessages) {
        super(unifiedMessages);
        Intrinsics.checkNotNullParameter(unifiedMessages, "unifiedMessages");
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    @Override // in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.UnifiedService
    public void handleResponseMsg(String methodName, PacketClientMsgProtobuf packetMsg) {
        Intrinsics.checkNotNullParameter(methodName, "methodName");
        Intrinsics.checkNotNullParameter(packetMsg, "packetMsg");
        switch (methodName.hashCode()) {
            case -1613291614:
                if (methodName.equals("GetSessionDetails")) {
                    postResponseMsg(SteammessagesGamenotificationsSteamclient.CGameNotifications_GetSessionDetails_Response.class, packetMsg);
                    break;
                }
                break;
            case -1090702272:
                if (methodName.equals("UserDeleteSession")) {
                    postResponseMsg(SteammessagesGamenotificationsSteamclient.CGameNotifications_DeleteSession_Response.class, packetMsg);
                    break;
                }
                break;
            case -787916617:
                if (methodName.equals("UpdateNotificationSettings")) {
                    postResponseMsg(SteammessagesGamenotificationsSteamclient.CGameNotifications_UpdateNotificationSettings_Response.class, packetMsg);
                    break;
                }
                break;
            case 1360587727:
                if (methodName.equals("UserCreateSession")) {
                    postResponseMsg(SteammessagesGamenotificationsSteamclient.CGameNotifications_CreateSession_Response.class, packetMsg);
                    break;
                }
                break;
            case 1619183361:
                if (methodName.equals("EnumerateSessions")) {
                    postResponseMsg(SteammessagesGamenotificationsSteamclient.CGameNotifications_EnumerateSessions_Response.class, packetMsg);
                    break;
                }
                break;
            case 1913086818:
                if (methodName.equals("UserUpdateSession")) {
                    postResponseMsg(SteammessagesGamenotificationsSteamclient.CGameNotifications_UpdateSession_Response.class, packetMsg);
                    break;
                }
                break;
        }
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesGamenotificationsSteamclient.CGameNotifications_CreateSession_Response.Builder>> userCreateSession(SteammessagesGamenotificationsSteamclient.CGameNotifications_CreateSession_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesGamenotificationsSteamclient.CGameNotifications_CreateSession_Response.Builder.class, "GameNotifications.UserCreateSession#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesGamenotificationsSteamclient.CGameNotifications_DeleteSession_Response.Builder>> userDeleteSession(SteammessagesGamenotificationsSteamclient.CGameNotifications_DeleteSession_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesGamenotificationsSteamclient.CGameNotifications_DeleteSession_Response.Builder.class, "GameNotifications.UserDeleteSession#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesGamenotificationsSteamclient.CGameNotifications_UpdateSession_Response.Builder>> userUpdateSession(SteammessagesGamenotificationsSteamclient.CGameNotifications_UpdateSession_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesGamenotificationsSteamclient.CGameNotifications_UpdateSession_Response.Builder.class, "GameNotifications.UserUpdateSession#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesGamenotificationsSteamclient.CGameNotifications_EnumerateSessions_Response.Builder>> enumerateSessions(SteammessagesGamenotificationsSteamclient.CGameNotifications_EnumerateSessions_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesGamenotificationsSteamclient.CGameNotifications_EnumerateSessions_Response.Builder.class, "GameNotifications.EnumerateSessions#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesGamenotificationsSteamclient.CGameNotifications_GetSessionDetails_Response.Builder>> getSessionDetails(SteammessagesGamenotificationsSteamclient.CGameNotifications_GetSessionDetails_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesGamenotificationsSteamclient.CGameNotifications_GetSessionDetails_Response.Builder.class, "GameNotifications.GetSessionDetails#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesGamenotificationsSteamclient.CGameNotifications_UpdateNotificationSettings_Response.Builder>> updateNotificationSettings(SteammessagesGamenotificationsSteamclient.CGameNotifications_UpdateNotificationSettings_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesGamenotificationsSteamclient.CGameNotifications_UpdateNotificationSettings_Response.Builder.class, "GameNotifications.UpdateNotificationSettings#1", request);
    }
}
