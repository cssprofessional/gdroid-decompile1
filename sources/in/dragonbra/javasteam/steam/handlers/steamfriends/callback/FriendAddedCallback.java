package in.dragonbra.javasteam.steam.handlers.steamfriends.callback;

import com.google.protobuf.AbstractMessage;
import in.dragonbra.javasteam.base.ClientMsgProtobuf;
import in.dragonbra.javasteam.base.IPacketMsg;
import in.dragonbra.javasteam.enums.EResult;
import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends;
import in.dragonbra.javasteam.steam.steamclient.callbackmgr.CallbackMsg;
import in.dragonbra.javasteam.types.SteamID;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: FriendAddedCallback.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class FriendAddedCallback extends CallbackMsg {
    private final String personaName;
    private final EResult result;
    private final SteamID steamID;

    public FriendAddedCallback(IPacketMsg packetMsg) {
        Intrinsics.checkNotNullParameter(packetMsg, "packetMsg");
        SteammessagesClientserverFriends.CMsgClientAddFriendResponse.Builder builder = (SteammessagesClientserverFriends.CMsgClientAddFriendResponse.Builder) new ClientMsgProtobuf((Class<? extends AbstractMessage>) SteammessagesClientserverFriends.CMsgClientAddFriendResponse.class, packetMsg).getBody();
        EResult eResultFrom = EResult.from(builder.getEresult());
        Intrinsics.checkNotNullExpressionValue(eResultFrom, "from(...)");
        this.result = eResultFrom;
        this.steamID = new SteamID(builder.getSteamIdAdded());
        String personaNameAdded = builder.getPersonaNameAdded();
        Intrinsics.checkNotNullExpressionValue(personaNameAdded, "getPersonaNameAdded(...)");
        this.personaName = personaNameAdded;
    }

    public final EResult getResult() {
        return this.result;
    }

    public final SteamID getSteamID() {
        return this.steamID;
    }

    public final String getPersonaName() {
        return this.personaName;
    }
}
