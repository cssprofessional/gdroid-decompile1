package in.dragonbra.javasteam.steam.handlers.steamgamecoordinator;

import com.google.protobuf.ByteString;
import in.dragonbra.javasteam.base.ClientMsgProtobuf;
import in.dragonbra.javasteam.base.IPacketMsg;
import in.dragonbra.javasteam.base.gc.IClientGCMsg;
import in.dragonbra.javasteam.enums.EMsg;
import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2;
import in.dragonbra.javasteam.steam.handlers.ClientMsgHandler;
import in.dragonbra.javasteam.steam.handlers.steamgamecoordinator.callback.MessageCallback;
import in.dragonbra.javasteam.util.MsgUtil;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: SteamGameCoordinator.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class SteamGameCoordinator extends ClientMsgHandler {
    public final void send(IClientGCMsg msg, int i) {
        Intrinsics.checkNotNullParameter(msg, "msg");
        ClientMsgProtobuf clientMsgProtobuf = new ClientMsgProtobuf(SteammessagesClientserver2.CMsgGCClient.class, EMsg.ClientToGC, 0, 4, null);
        clientMsgProtobuf.getProtoHeader().setRoutingAppid(i);
        ((SteammessagesClientserver2.CMsgGCClient.Builder) clientMsgProtobuf.getBody()).setMsgtype(MsgUtil.makeGCMsg(msg.getMsgType(), msg.isProto()));
        ((SteammessagesClientserver2.CMsgGCClient.Builder) clientMsgProtobuf.getBody()).setAppid(i);
        ((SteammessagesClientserver2.CMsgGCClient.Builder) clientMsgProtobuf.getBody()).setPayload(ByteString.copyFrom(msg.serialize()));
        getClient().send(clientMsgProtobuf);
    }

    @Override // in.dragonbra.javasteam.steam.handlers.ClientMsgHandler
    public void handleMsg(IPacketMsg packetMsg) {
        Intrinsics.checkNotNullParameter(packetMsg, "packetMsg");
        if (packetMsg.getMsgType() == EMsg.ClientFromGC) {
            getClient().postCallback(new MessageCallback(packetMsg));
        }
    }
}
