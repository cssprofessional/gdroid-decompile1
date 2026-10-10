package in.dragonbra.javasteam.steam.handlers.steamfriends.callback;

import in.dragonbra.javasteam.base.ClientMsg;
import in.dragonbra.javasteam.base.IPacketMsg;
import in.dragonbra.javasteam.enums.EChatAction;
import in.dragonbra.javasteam.enums.EChatActionResult;
import in.dragonbra.javasteam.generated.MsgClientChatActionResult;
import in.dragonbra.javasteam.steam.steamclient.callbackmgr.CallbackMsg;
import in.dragonbra.javasteam.types.SteamID;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ChatActionResultCallback.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class ChatActionResultCallback extends CallbackMsg {
    private final EChatAction action;
    private final SteamID chatRoomID;
    private final SteamID chatterID;
    private final EChatActionResult result;

    public final SteamID getChatRoomID() {
        return this.chatRoomID;
    }

    public final SteamID getChatterID() {
        return this.chatterID;
    }

    public final EChatAction getAction() {
        return this.action;
    }

    public final EChatActionResult getResult() {
        return this.result;
    }

    public ChatActionResultCallback(IPacketMsg packetMsg) {
        Intrinsics.checkNotNullParameter(packetMsg, "packetMsg");
        MsgClientChatActionResult msgClientChatActionResult = (MsgClientChatActionResult) new ClientMsg(MsgClientChatActionResult.class, packetMsg).getBody();
        SteamID steamIdChat = msgClientChatActionResult.getSteamIdChat();
        Intrinsics.checkNotNullExpressionValue(steamIdChat, "getSteamIdChat(...)");
        this.chatRoomID = steamIdChat;
        SteamID steamIdUserActedOn = msgClientChatActionResult.getSteamIdUserActedOn();
        Intrinsics.checkNotNullExpressionValue(steamIdUserActedOn, "getSteamIdUserActedOn(...)");
        this.chatterID = steamIdUserActedOn;
        EChatAction chatAction = msgClientChatActionResult.getChatAction();
        Intrinsics.checkNotNullExpressionValue(chatAction, "getChatAction(...)");
        this.action = chatAction;
        EChatActionResult actionResult = msgClientChatActionResult.getActionResult();
        Intrinsics.checkNotNullExpressionValue(actionResult, "getActionResult(...)");
        this.result = actionResult;
    }

    public ChatActionResultCallback(SteamID chatRoomID, SteamID chatterID, EChatAction action, EChatActionResult result) {
        Intrinsics.checkNotNullParameter(chatRoomID, "chatRoomID");
        Intrinsics.checkNotNullParameter(chatterID, "chatterID");
        Intrinsics.checkNotNullParameter(action, "action");
        Intrinsics.checkNotNullParameter(result, "result");
        this.chatRoomID = chatRoomID;
        this.chatterID = chatterID;
        this.action = action;
        this.result = result;
    }
}
