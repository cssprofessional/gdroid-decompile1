package in.dragonbra.javasteam.steam.handlers.steamgameserver.callback;

import com.google.protobuf.AbstractMessage;
import in.dragonbra.javasteam.base.ClientMsgProtobuf;
import in.dragonbra.javasteam.base.IPacketMsg;
import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers;
import in.dragonbra.javasteam.steam.steamclient.callbackmgr.CallbackMsg;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: StatusReplyCallback.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class StatusReplyCallback extends CallbackMsg {
    private final boolean isSecure;

    public StatusReplyCallback(IPacketMsg packetMsg) {
        Intrinsics.checkNotNullParameter(packetMsg, "packetMsg");
        this.isSecure = ((SteammessagesClientserverGameservers.CMsgGSStatusReply.Builder) new ClientMsgProtobuf((Class<? extends AbstractMessage>) SteammessagesClientserverGameservers.CMsgGSStatusReply.class, packetMsg).getBody()).getIsSecure();
    }

    public final boolean isSecure() {
        return this.isSecure;
    }
}
