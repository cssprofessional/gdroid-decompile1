package in.dragonbra.javasteam.steam.handlers.steamuser.callback;

import com.google.protobuf.AbstractMessage;
import in.dragonbra.javasteam.base.ClientMsgProtobuf;
import in.dragonbra.javasteam.base.IPacketMsg;
import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2;
import in.dragonbra.javasteam.steam.steamclient.callbackmgr.CallbackMsg;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: VanityURLChangedCallback.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class VanityURLChangedCallback extends CallbackMsg {
    private final String vanityUrl;

    public VanityURLChangedCallback(IPacketMsg packetMsg) {
        Intrinsics.checkNotNullParameter(packetMsg, "packetMsg");
        ClientMsgProtobuf clientMsgProtobuf = new ClientMsgProtobuf((Class<? extends AbstractMessage>) SteammessagesClientserver2.CMsgClientVanityURLChangedNotification.class, packetMsg);
        setJobID(clientMsgProtobuf.getTargetJobID());
        String vanityUrl = ((SteammessagesClientserver2.CMsgClientVanityURLChangedNotification.Builder) clientMsgProtobuf.getBody()).getVanityUrl();
        Intrinsics.checkNotNullExpressionValue(vanityUrl, "getVanityUrl(...)");
        this.vanityUrl = vanityUrl;
    }

    public final String getVanityUrl() {
        return this.vanityUrl;
    }
}
