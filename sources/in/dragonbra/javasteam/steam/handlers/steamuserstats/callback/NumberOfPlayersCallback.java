package in.dragonbra.javasteam.steam.handlers.steamuserstats.callback;

import com.google.protobuf.AbstractMessage;
import in.dragonbra.javasteam.base.ClientMsgProtobuf;
import in.dragonbra.javasteam.base.IPacketMsg;
import in.dragonbra.javasteam.enums.EResult;
import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2;
import in.dragonbra.javasteam.steam.steamclient.callbackmgr.CallbackMsg;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: NumberOfPlayersCallback.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class NumberOfPlayersCallback extends CallbackMsg {
    private final int numPlayers;
    private final EResult result;

    public NumberOfPlayersCallback(IPacketMsg packetMsg) {
        Intrinsics.checkNotNullParameter(packetMsg, "packetMsg");
        ClientMsgProtobuf clientMsgProtobuf = new ClientMsgProtobuf((Class<? extends AbstractMessage>) SteammessagesClientserver2.CMsgDPGetNumberOfCurrentPlayersResponse.class, packetMsg);
        SteammessagesClientserver2.CMsgDPGetNumberOfCurrentPlayersResponse.Builder builder = (SteammessagesClientserver2.CMsgDPGetNumberOfCurrentPlayersResponse.Builder) clientMsgProtobuf.getBody();
        setJobID(clientMsgProtobuf.getTargetJobID());
        EResult eResultFrom = EResult.from(builder.getEresult());
        Intrinsics.checkNotNullExpressionValue(eResultFrom, "from(...)");
        this.result = eResultFrom;
        this.numPlayers = builder.getPlayerCount();
    }

    public final EResult getResult() {
        return this.result;
    }

    public final int getNumPlayers() {
        return this.numPlayers;
    }
}
