package in.dragonbra.javasteam.steam.handlers.steamfriends.callback;

import in.dragonbra.javasteam.base.ClientMsg;
import in.dragonbra.javasteam.base.IPacketMsg;
import in.dragonbra.javasteam.enums.EChatInfoType;
import in.dragonbra.javasteam.enums.EChatMemberStateChange;
import in.dragonbra.javasteam.generated.MsgClientChatMemberInfo;
import in.dragonbra.javasteam.steam.handlers.steamfriends.ChatMemberInfo;
import in.dragonbra.javasteam.steam.steamclient.callbackmgr.CallbackMsg;
import in.dragonbra.javasteam.types.SteamID;
import in.dragonbra.javasteam.util.log.LogManager;
import in.dragonbra.javasteam.util.log.Logger;
import in.dragonbra.javasteam.util.stream.BinaryReader;
import in.dragonbra.javasteam.util.stream.MemoryStream;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.util.EnumSet;
import kotlin.Unit;
import kotlin.io.CloseableKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ChatMemberInfoCallback.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class ChatMemberInfoCallback extends CallbackMsg {
    public static final Companion Companion = new Companion(null);
    private static final Logger logger = LogManager.getLogger(ChatMemberInfoCallback.class);
    private final SteamID chatRoomID;
    private StateChangeDetails stateChangeInfo;
    private final EChatInfoType type;

    /* JADX INFO: compiled from: ChatMemberInfoCallback.kt */
    public static final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[EChatInfoType.values().length];
            try {
                iArr[EChatInfoType.StateChange.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public ChatMemberInfoCallback(IPacketMsg packetMsg) {
        Intrinsics.checkNotNullParameter(packetMsg, "packetMsg");
        ClientMsg clientMsg = new ClientMsg(MsgClientChatMemberInfo.class, packetMsg);
        MsgClientChatMemberInfo msgClientChatMemberInfo = (MsgClientChatMemberInfo) clientMsg.getBody();
        SteamID steamIdChat = msgClientChatMemberInfo.getSteamIdChat();
        Intrinsics.checkNotNullExpressionValue(steamIdChat, "getSteamIdChat(...)");
        this.chatRoomID = steamIdChat;
        EChatInfoType type = msgClientChatMemberInfo.getType();
        Intrinsics.checkNotNullExpressionValue(type, "getType(...)");
        this.type = type;
        if (WhenMappings.$EnumSwitchMapping$0[type.ordinal()] == 1) {
            this.stateChangeInfo = new StateChangeDetails(clientMsg.getPayload());
        }
    }

    /* JADX INFO: compiled from: ChatMemberInfoCallback.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    public final SteamID getChatRoomID() {
        return this.chatRoomID;
    }

    public final EChatInfoType getType() {
        return this.type;
    }

    public final StateChangeDetails getStateChangeInfo() {
        return this.stateChangeInfo;
    }

    public final void setStateChangeInfo(StateChangeDetails stateChangeDetails) {
        this.stateChangeInfo = stateChangeDetails;
    }

    /* JADX INFO: compiled from: ChatMemberInfoCallback.kt */
    public static final class StateChangeDetails {
        private SteamID chatterActedBy;
        private SteamID chatterActedOn;
        private ChatMemberInfo memberInfo;
        private EnumSet<EChatMemberStateChange> stateChange;

        public StateChangeDetails(MemoryStream ms) throws IllegalAccessException, InvocationTargetException {
            Intrinsics.checkNotNullParameter(ms, "ms");
            try {
                BinaryReader binaryReader = new BinaryReader(ms);
                try {
                    this.chatterActedOn = new SteamID(binaryReader.readLong());
                    this.stateChange = EChatMemberStateChange.from(binaryReader.readInt());
                    this.chatterActedBy = new SteamID(binaryReader.readLong());
                    EnumSet<EChatMemberStateChange> enumSet = this.stateChange;
                    Intrinsics.checkNotNull(enumSet);
                    if (enumSet.contains(EChatMemberStateChange.Entered)) {
                        ChatMemberInfo chatMemberInfo = new ChatMemberInfo();
                        this.memberInfo = chatMemberInfo;
                        Intrinsics.checkNotNull(chatMemberInfo);
                        chatMemberInfo.readFromStream(binaryReader);
                    }
                    Unit unit = Unit.INSTANCE;
                    CloseableKt.closeFinally(binaryReader, null);
                } finally {
                }
            } catch (IOException e) {
                ChatMemberInfoCallback.logger.error("Failed to read chat member info", e);
            }
        }

        public final SteamID getChatterActedOn() {
            return this.chatterActedOn;
        }

        public final void setChatterActedOn(SteamID steamID) {
            this.chatterActedOn = steamID;
        }

        public final EnumSet<EChatMemberStateChange> getStateChange() {
            return this.stateChange;
        }

        public final void setStateChange(EnumSet<EChatMemberStateChange> enumSet) {
            this.stateChange = enumSet;
        }

        public final SteamID getChatterActedBy() {
            return this.chatterActedBy;
        }

        public final void setChatterActedBy(SteamID steamID) {
            this.chatterActedBy = steamID;
        }

        public final ChatMemberInfo getMemberInfo() {
            return this.memberInfo;
        }

        public final void setMemberInfo(ChatMemberInfo chatMemberInfo) {
            this.memberInfo = chatMemberInfo;
        }
    }
}
