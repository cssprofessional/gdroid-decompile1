package in.dragonbra.javasteam.steam.handlers.steamuser.callback;

import com.google.protobuf.AbstractMessage;
import in.dragonbra.javasteam.base.ClientMsgProtobuf;
import in.dragonbra.javasteam.base.IPacketMsg;
import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2;
import in.dragonbra.javasteam.steam.steamclient.callbackmgr.CallbackMsg;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: PlayingSessionStateCallback.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class PlayingSessionStateCallback extends CallbackMsg {
    private final boolean isPlayingBlocked;
    private final int playingAppID;

    public PlayingSessionStateCallback(IPacketMsg packetMsg) {
        Intrinsics.checkNotNullParameter(packetMsg, "packetMsg");
        ClientMsgProtobuf clientMsgProtobuf = new ClientMsgProtobuf((Class<? extends AbstractMessage>) SteammessagesClientserver2.CMsgClientPlayingSessionState.class, packetMsg);
        SteammessagesClientserver2.CMsgClientPlayingSessionState.Builder builder = (SteammessagesClientserver2.CMsgClientPlayingSessionState.Builder) clientMsgProtobuf.getBody();
        setJobID(clientMsgProtobuf.getTargetJobID());
        this.isPlayingBlocked = builder.getPlayingBlocked();
        this.playingAppID = builder.getPlayingApp();
    }

    public final boolean isPlayingBlocked() {
        return this.isPlayingBlocked;
    }

    public final int getPlayingAppID() {
        return this.playingAppID;
    }
}
