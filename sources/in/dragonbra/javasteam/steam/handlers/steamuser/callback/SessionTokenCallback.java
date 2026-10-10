package in.dragonbra.javasteam.steam.handlers.steamuser.callback;

import com.google.protobuf.AbstractMessage;
import in.dragonbra.javasteam.base.ClientMsgProtobuf;
import in.dragonbra.javasteam.base.IPacketMsg;
import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver;
import in.dragonbra.javasteam.steam.steamclient.callbackmgr.CallbackMsg;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: SessionTokenCallback.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class SessionTokenCallback extends CallbackMsg {
    private final long sessionToken;

    public SessionTokenCallback(IPacketMsg packetMsg) {
        Intrinsics.checkNotNullParameter(packetMsg, "packetMsg");
        this.sessionToken = ((SteammessagesClientserver.CMsgClientSessionToken.Builder) new ClientMsgProtobuf((Class<? extends AbstractMessage>) SteammessagesClientserver.CMsgClientSessionToken.class, packetMsg).getBody()).getToken();
    }

    public final long getSessionToken() {
        return this.sessionToken;
    }
}
