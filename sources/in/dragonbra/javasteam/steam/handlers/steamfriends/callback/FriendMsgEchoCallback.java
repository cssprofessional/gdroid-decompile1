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

/* JADX INFO: compiled from: FriendMsgEchoCallback.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class FriendMsgEchoCallback extends CallbackMsg {
    private final EChatEntryType entryType;
    private final boolean fromLimitedAccount;
    private String message;
    private final int rTime32ServerTimestamp;
    private final SteamID recipient;

    public FriendMsgEchoCallback(IPacketMsg packetMsg) {
        Intrinsics.checkNotNullParameter(packetMsg, "packetMsg");
        SteammessagesClientserverFriends.CMsgClientFriendMsgIncoming.Builder builder = (SteammessagesClientserverFriends.CMsgClientFriendMsgIncoming.Builder) new ClientMsgProtobuf((Class<? extends AbstractMessage>) SteammessagesClientserverFriends.CMsgClientFriendMsgIncoming.class, packetMsg).getBody();
        this.recipient = new SteamID(builder.getSteamidFrom());
        this.entryType = EChatEntryType.from(builder.getChatEntryType());
        this.fromLimitedAccount = builder.getFromLimitedAccount();
        if (builder.hasMessage()) {
            String string = builder.getMessage().toString(StandardCharsets.UTF_8);
            this.message = string;
            Intrinsics.checkNotNull(string);
            this.message = new Regex("\u0000+$").replace(string, "");
        }
        this.rTime32ServerTimestamp = builder.getRtime32ServerTimestamp();
    }

    public final SteamID getRecipient() {
        return this.recipient;
    }

    public final EChatEntryType getEntryType() {
        return this.entryType;
    }

    public final boolean getFromLimitedAccount() {
        return this.fromLimitedAccount;
    }

    public final String getMessage() {
        return this.message;
    }

    public final int getRTime32ServerTimestamp() {
        return this.rTime32ServerTimestamp;
    }
}
