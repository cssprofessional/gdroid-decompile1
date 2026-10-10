package in.dragonbra.javasteam.steam.handlers.steamfriends.callback;

import in.dragonbra.javasteam.base.ClientMsg;
import in.dragonbra.javasteam.base.IPacketMsg;
import in.dragonbra.javasteam.enums.EChatInfoType;
import in.dragonbra.javasteam.generated.MsgClientChatRoomInfo;
import in.dragonbra.javasteam.steam.steamclient.callbackmgr.CallbackMsg;
import in.dragonbra.javasteam.types.SteamID;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ChatRoomInfoCallback.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class ChatRoomInfoCallback extends CallbackMsg {
    private final SteamID chatRoomID;
    private final EChatInfoType type;

    public ChatRoomInfoCallback(IPacketMsg packetMsg) {
        Intrinsics.checkNotNullParameter(packetMsg, "packetMsg");
        MsgClientChatRoomInfo msgClientChatRoomInfo = (MsgClientChatRoomInfo) new ClientMsg(MsgClientChatRoomInfo.class, packetMsg).getBody();
        SteamID steamIdChat = msgClientChatRoomInfo.getSteamIdChat();
        Intrinsics.checkNotNullExpressionValue(steamIdChat, "getSteamIdChat(...)");
        this.chatRoomID = steamIdChat;
        EChatInfoType type = msgClientChatRoomInfo.getType();
        Intrinsics.checkNotNullExpressionValue(type, "getType(...)");
        this.type = type;
    }

    public final SteamID getChatRoomID() {
        return this.chatRoomID;
    }

    public final EChatInfoType getType() {
        return this.type;
    }
}
