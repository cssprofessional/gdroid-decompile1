package in.dragonbra.javasteam.steam.handlers.steamcloud.callback;

import com.google.protobuf.AbstractMessage;
import in.dragonbra.javasteam.base.ClientMsgProtobuf;
import in.dragonbra.javasteam.base.IPacketMsg;
import in.dragonbra.javasteam.enums.EResult;
import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUfs;
import in.dragonbra.javasteam.steam.steamclient.callbackmgr.CallbackMsg;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ShareFileCallback.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class ShareFileCallback extends CallbackMsg {
    private final EResult result;
    private final long ugcId;

    public ShareFileCallback(IPacketMsg packetMsg) {
        Intrinsics.checkNotNullParameter(packetMsg, "packetMsg");
        ClientMsgProtobuf clientMsgProtobuf = new ClientMsgProtobuf((Class<? extends AbstractMessage>) SteammessagesClientserverUfs.CMsgClientUFSShareFileResponse.class, packetMsg);
        SteammessagesClientserverUfs.CMsgClientUFSShareFileResponse.Builder builder = (SteammessagesClientserverUfs.CMsgClientUFSShareFileResponse.Builder) clientMsgProtobuf.getBody();
        setJobID(clientMsgProtobuf.getTargetJobID());
        EResult eResultFrom = EResult.from(builder.getEresult());
        Intrinsics.checkNotNullExpressionValue(eResultFrom, "from(...)");
        this.result = eResultFrom;
        this.ugcId = builder.getHcontent();
    }

    public final EResult getResult() {
        return this.result;
    }

    public final long getUgcId() {
        return this.ugcId;
    }
}
