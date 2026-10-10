package in.dragonbra.javasteam.steam.handlers.steamfriends.callback;

import com.google.protobuf.AbstractMessage;
import in.dragonbra.javasteam.base.ClientMsgProtobuf;
import in.dragonbra.javasteam.base.IPacketMsg;
import in.dragonbra.javasteam.enums.EResult;
import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverFriends;
import in.dragonbra.javasteam.steam.steamclient.callbackmgr.CallbackMsg;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: NicknameCallback.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class NicknameCallback extends CallbackMsg {
    private final EResult result;

    public NicknameCallback(IPacketMsg packetMsg) {
        Intrinsics.checkNotNullParameter(packetMsg, "packetMsg");
        ClientMsgProtobuf clientMsgProtobuf = new ClientMsgProtobuf((Class<? extends AbstractMessage>) SteammessagesClientserverFriends.CMsgClientSetPlayerNicknameResponse.class, packetMsg);
        setJobID(clientMsgProtobuf.getTargetJobID());
        EResult eResultFrom = EResult.from(((SteammessagesClientserverFriends.CMsgClientSetPlayerNicknameResponse.Builder) clientMsgProtobuf.getBody()).getEresult());
        Intrinsics.checkNotNullExpressionValue(eResultFrom, "from(...)");
        this.result = eResultFrom;
    }

    public final EResult getResult() {
        return this.result;
    }
}
