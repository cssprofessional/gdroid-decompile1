package in.dragonbra.javasteam.steam.handlers.steamfriends.callback;

import com.google.protobuf.AbstractMessage;
import in.dragonbra.javasteam.base.ClientMsgProtobuf;
import in.dragonbra.javasteam.base.IPacketMsg;
import in.dragonbra.javasteam.enums.EChatEntryType;
import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends;
import in.dragonbra.javasteam.steam.steamclient.callbackmgr.CallbackMsg;
import in.dragonbra.javasteam.types.SteamID;
import java.nio.charset.StandardCharsets;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex;

/* JADX INFO: compiled from: FriendMsgCallback.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class FriendMsgCallback extends CallbackMsg {
    private final EChatEntryType entryType;
    private final boolean isFromLimitedAccount;
    private String message;
    private final SteamID sender;

    public FriendMsgCallback(IPacketMsg packetMsg) {
        Intrinsics.checkNotNullParameter(packetMsg, "packetMsg");
        SteammessagesClientserverFriends.CMsgClientFriendMsgIncoming.Builder builder = (SteammessagesClientserverFriends.CMsgClientFriendMsgIncoming.Builder) new ClientMsgProtobuf((Class<? extends AbstractMessage>) SteammessagesClientserverFriends.CMsgClientFriendMsgIncoming.class, packetMsg).getBody();
        this.sender = new SteamID(builder.getSteamidFrom());
        this.entryType = EChatEntryType.from(builder.getChatEntryType());
        this.isFromLimitedAccount = builder.getFromLimitedAccount();
        if (builder.hasMessage()) {
            String string = builder.getMessage().toString(StandardCharsets.UTF_8);
            this.message = string;
            Intrinsics.checkNotNull(string);
            this.message = new Regex("\u0000+$").replace(string, "");
        }
    }

    public final SteamID getSender() {
        return this.sender;
    }

    public final EChatEntryType getEntryType() {
        return this.entryType;
    }

    public final boolean isFromLimitedAccount() {
        return this.isFromLimitedAccount;
    }

    public final String getMessage() {
        return this.message;
    }
}
