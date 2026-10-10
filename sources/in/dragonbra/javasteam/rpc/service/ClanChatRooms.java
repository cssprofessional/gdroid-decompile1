package in.dragonbra.javasteam.rpc.service;

import in.dragonbra.javasteam.base.PacketClientMsgProtobuf;
import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesChatSteamclient;
import in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.SteamUnifiedMessages;
import in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.UnifiedService;
import in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.callback.ServiceMethodResponse;
import in.dragonbra.javasteam.types.AsyncJobSingle;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ClanChatRooms.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class ClanChatRooms extends UnifiedService {
    @Override // in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.UnifiedService
    public void handleNotificationMsg(String methodName, PacketClientMsgProtobuf packetMsg) {
        Intrinsics.checkNotNullParameter(methodName, "methodName");
        Intrinsics.checkNotNullParameter(packetMsg, "packetMsg");
    }

    @Override // in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.UnifiedService
    public String getServiceName() {
        return "ClanChatRooms";
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ClanChatRooms(SteamUnifiedMessages unifiedMessages) {
        super(unifiedMessages);
        Intrinsics.checkNotNullParameter(unifiedMessages, "unifiedMessages");
    }

    @Override // in.dragonbra.javasteam.steam.handlers.steamunifiedmessages.UnifiedService
    public void handleResponseMsg(String methodName, PacketClientMsgProtobuf packetMsg) {
        Intrinsics.checkNotNullParameter(methodName, "methodName");
        Intrinsics.checkNotNullParameter(packetMsg, "packetMsg");
        if (Intrinsics.areEqual(methodName, "GetClanChatRoomInfo")) {
            postResponseMsg(SteammessagesChatSteamclient.CClanChatRooms_GetClanChatRoomInfo_Response.class, packetMsg);
        } else if (Intrinsics.areEqual(methodName, "SetClanChatRoomPrivate")) {
            postResponseMsg(SteammessagesChatSteamclient.CClanChatRooms_SetClanChatRoomPrivate_Response.class, packetMsg);
        }
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesChatSteamclient.CClanChatRooms_GetClanChatRoomInfo_Response.Builder>> getClanChatRoomInfo(SteammessagesChatSteamclient.CClanChatRooms_GetClanChatRoomInfo_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesChatSteamclient.CClanChatRooms_GetClanChatRoomInfo_Response.Builder.class, "ClanChatRooms.GetClanChatRoomInfo#1", request);
    }

    public final AsyncJobSingle<ServiceMethodResponse<SteammessagesChatSteamclient.CClanChatRooms_SetClanChatRoomPrivate_Response.Builder>> setClanChatRoomPrivate(SteammessagesChatSteamclient.CClanChatRooms_SetClanChatRoomPrivate_Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        SteamUnifiedMessages unifiedMessages = getUnifiedMessages();
        Intrinsics.checkNotNull(unifiedMessages);
        return unifiedMessages.sendMessage(SteammessagesChatSteamclient.CClanChatRooms_SetClanChatRoomPrivate_Response.Builder.class, "ClanChatRooms.SetClanChatRoomPrivate#1", request);
    }
}
