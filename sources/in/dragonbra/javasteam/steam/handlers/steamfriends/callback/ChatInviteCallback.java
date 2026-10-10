package in.dragonbra.javasteam.steam.handlers.steamfriends.callback;

import com.google.protobuf.AbstractMessage;
import in.dragonbra.javasteam.base.ClientMsgProtobuf;
import in.dragonbra.javasteam.base.IPacketMsg;
import in.dragonbra.javasteam.enums.EChatRoomType;
import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver;
import in.dragonbra.javasteam.steam.steamclient.callbackmgr.CallbackMsg;
import in.dragonbra.javasteam.types.GameID;
import in.dragonbra.javasteam.types.SteamID;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ChatInviteCallback.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class ChatInviteCallback extends CallbackMsg {
    private final SteamID chatRoomID;
    private final String chatRoomName;
    private final EChatRoomType chatRoomType;
    private final SteamID friendChatID;
    private final GameID gameID;
    private final SteamID invitedID;
    private final SteamID patronID;

    public ChatInviteCallback(IPacketMsg packetMsg) {
        Intrinsics.checkNotNullParameter(packetMsg, "packetMsg");
        SteammessagesClientserver.CMsgClientChatInvite.Builder builder = (SteammessagesClientserver.CMsgClientChatInvite.Builder) new ClientMsgProtobuf((Class<? extends AbstractMessage>) SteammessagesClientserver.CMsgClientChatInvite.class, packetMsg).getBody();
        this.invitedID = new SteamID(builder.getSteamIdInvited());
        this.chatRoomID = new SteamID(builder.getSteamIdChat());
        this.patronID = new SteamID(builder.getSteamIdPatron());
        this.chatRoomType = EChatRoomType.from(builder.getChatroomType());
        this.friendChatID = new SteamID(builder.getSteamIdFriendChat());
        String chatName = builder.getChatName();
        Intrinsics.checkNotNullExpressionValue(chatName, "getChatName(...)");
        this.chatRoomName = chatName;
        this.gameID = new GameID(builder.getGameId());
    }

    public final SteamID getInvitedID() {
        return this.invitedID;
    }

    public final SteamID getChatRoomID() {
        return this.chatRoomID;
    }

    public final SteamID getPatronID() {
        return this.patronID;
    }

    public final EChatRoomType getChatRoomType() {
        return this.chatRoomType;
    }

    public final SteamID getFriendChatID() {
        return this.friendChatID;
    }

    public final String getChatRoomName() {
        return this.chatRoomName;
    }

    public final GameID getGameID() {
        return this.gameID;
    }
}
