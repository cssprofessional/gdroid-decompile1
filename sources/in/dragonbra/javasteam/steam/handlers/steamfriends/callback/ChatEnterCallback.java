package in.dragonbra.javasteam.steam.handlers.steamfriends.callback;

import in.dragonbra.javasteam.base.ClientMsg;
import in.dragonbra.javasteam.base.IPacketMsg;
import in.dragonbra.javasteam.enums.EChatRoomEnterResponse;
import in.dragonbra.javasteam.enums.EChatRoomType;
import in.dragonbra.javasteam.generated.MsgClientChatEnter;
import in.dragonbra.javasteam.steam.handlers.steamfriends.ChatMemberInfo;
import in.dragonbra.javasteam.steam.steamclient.callbackmgr.CallbackMsg;
import in.dragonbra.javasteam.types.SteamID;
import in.dragonbra.javasteam.util.log.LogManager;
import in.dragonbra.javasteam.util.log.Logger;
import in.dragonbra.javasteam.util.stream.BinaryReader;
import java.util.ArrayList;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.io.CloseableKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ChatEnterCallback.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class ChatEnterCallback extends CallbackMsg {
    public static final Companion Companion = new Companion(null);
    private static final Logger logger = LogManager.getLogger(ChatEnterCallback.class);
    private final byte chatFlags;
    private final SteamID chatID;
    private List<ChatMemberInfo> chatMembers;
    private String chatRoomName;
    private final EChatRoomType chatRoomType;
    private final SteamID clanID;
    private final EChatRoomEnterResponse enterResponse;
    private final SteamID friendID;
    private final int numChatMembers;
    private final SteamID ownerID;

    public ChatEnterCallback(IPacketMsg packetMsg) {
        Intrinsics.checkNotNullParameter(packetMsg, "packetMsg");
        this.chatRoomName = "";
        this.chatMembers = CollectionsKt__CollectionsKt.emptyList();
        ClientMsg clientMsg = new ClientMsg(MsgClientChatEnter.class, packetMsg);
        MsgClientChatEnter msgClientChatEnter = (MsgClientChatEnter) clientMsg.getBody();
        SteamID steamIdChat = msgClientChatEnter.getSteamIdChat();
        Intrinsics.checkNotNullExpressionValue(steamIdChat, "getSteamIdChat(...)");
        this.chatID = steamIdChat;
        SteamID steamIdFriend = msgClientChatEnter.getSteamIdFriend();
        Intrinsics.checkNotNullExpressionValue(steamIdFriend, "getSteamIdFriend(...)");
        this.friendID = steamIdFriend;
        EChatRoomType chatRoomType = msgClientChatEnter.getChatRoomType();
        Intrinsics.checkNotNullExpressionValue(chatRoomType, "getChatRoomType(...)");
        this.chatRoomType = chatRoomType;
        SteamID steamIdOwner = msgClientChatEnter.getSteamIdOwner();
        Intrinsics.checkNotNullExpressionValue(steamIdOwner, "getSteamIdOwner(...)");
        this.ownerID = steamIdOwner;
        SteamID steamIdClan = msgClientChatEnter.getSteamIdClan();
        Intrinsics.checkNotNullExpressionValue(steamIdClan, "getSteamIdClan(...)");
        this.clanID = steamIdClan;
        this.chatFlags = msgClientChatEnter.getChatFlags();
        EChatRoomEnterResponse enterResponse = msgClientChatEnter.getEnterResponse();
        Intrinsics.checkNotNullExpressionValue(enterResponse, "getEnterResponse(...)");
        this.enterResponse = enterResponse;
        int numMembers = msgClientChatEnter.getNumMembers();
        this.numChatMembers = numMembers;
        try {
            BinaryReader binaryReader = new BinaryReader(clientMsg.getPayload());
            try {
                String nullTermString = binaryReader.readNullTermString();
                Intrinsics.checkNotNullExpressionValue(nullTermString, "readNullTermString(...)");
                this.chatRoomName = nullTermString;
                if (enterResponse == EChatRoomEnterResponse.Success) {
                    ArrayList arrayList = new ArrayList();
                    for (int i = 0; i < numMembers; i++) {
                        ChatMemberInfo chatMemberInfo = new ChatMemberInfo();
                        chatMemberInfo.readFromStream(binaryReader);
                        arrayList.add(chatMemberInfo);
                    }
                    this.chatMembers = CollectionsKt___CollectionsKt.toList(arrayList);
                }
                Unit unit = Unit.INSTANCE;
                CloseableKt.closeFinally(binaryReader, null);
            } finally {
            }
        } catch (Exception e) {
            logger.error("Failed to read chat enter info.", e);
        }
    }

    /* JADX INFO: compiled from: ChatEnterCallback.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    public final SteamID getChatID() {
        return this.chatID;
    }

    public final SteamID getFriendID() {
        return this.friendID;
    }

    public final EChatRoomType getChatRoomType() {
        return this.chatRoomType;
    }

    public final SteamID getOwnerID() {
        return this.ownerID;
    }

    public final SteamID getClanID() {
        return this.clanID;
    }

    public final byte getChatFlags() {
        return this.chatFlags;
    }

    public final EChatRoomEnterResponse getEnterResponse() {
        return this.enterResponse;
    }

    public final int getNumChatMembers() {
        return this.numChatMembers;
    }

    public final String getChatRoomName() {
        return this.chatRoomName;
    }

    public final List<ChatMemberInfo> getChatMembers() {
        return this.chatMembers;
    }
}
