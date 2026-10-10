package in.dragonbra.javasteam.steam.handlers.steamfriends.callback;

import in.dragonbra.javasteam.base.ClientMsg;
import in.dragonbra.javasteam.base.IPacketMsg;
import in.dragonbra.javasteam.enums.EChatEntryType;
import in.dragonbra.javasteam.generated.MsgClientChatMsg;
import in.dragonbra.javasteam.steam.steamclient.callbackmgr.CallbackMsg;
import in.dragonbra.javasteam.types.SteamID;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex;

/* JADX INFO: compiled from: ChatMsgCallback.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class ChatMsgCallback extends CallbackMsg {
    private final EChatEntryType chatMsgType;
    private final SteamID chatRoomID;
    private final SteamID chatterID;
    private final String message;

    public ChatMsgCallback(IPacketMsg packetMsg) {
        Intrinsics.checkNotNullParameter(packetMsg, "packetMsg");
        ClientMsg clientMsg = new ClientMsg(MsgClientChatMsg.class, packetMsg);
        MsgClientChatMsg msgClientChatMsg = (MsgClientChatMsg) clientMsg.getBody();
        SteamID steamIdChatter = msgClientChatMsg.getSteamIdChatter();
        Intrinsics.checkNotNullExpressionValue(steamIdChatter, "getSteamIdChatter(...)");
        this.chatterID = steamIdChatter;
        SteamID steamIdChatRoom = msgClientChatMsg.getSteamIdChatRoom();
        Intrinsics.checkNotNullExpressionValue(steamIdChatRoom, "getSteamIdChatRoom(...)");
        this.chatRoomID = steamIdChatRoom;
        EChatEntryType chatMsgType = msgClientChatMsg.getChatMsgType();
        Intrinsics.checkNotNullExpressionValue(chatMsgType, "getChatMsgType(...)");
        this.chatMsgType = chatMsgType;
        byte[] byteArray = clientMsg.getPayload().toByteArray();
        Intrinsics.checkNotNullExpressionValue(byteArray, "toByteArray(...)");
        Charset UTF_8 = StandardCharsets.UTF_8;
        Intrinsics.checkNotNullExpressionValue(UTF_8, "UTF_8");
        this.message = new Regex("\u0000+$").replace(new String(byteArray, UTF_8), "");
    }

    public final SteamID getChatterID() {
        return this.chatterID;
    }

    public final SteamID getChatRoomID() {
        return this.chatRoomID;
    }

    public final EChatEntryType getChatMsgType() {
        return this.chatMsgType;
    }

    public final String getMessage() {
        return this.message;
    }
}
