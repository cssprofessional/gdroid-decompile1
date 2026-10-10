package in.dragonbra.javasteam.steam.handlers.steamgamecoordinator.callback;

import com.google.protobuf.AbstractMessage;
import in.dragonbra.javasteam.base.ClientMsgProtobuf;
import in.dragonbra.javasteam.base.IPacketMsg;
import in.dragonbra.javasteam.base.gc.IPacketGCMsg;
import in.dragonbra.javasteam.base.gc.PacketClientGCMsg;
import in.dragonbra.javasteam.base.gc.PacketClientGCMsgProtobuf;
import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2;
import in.dragonbra.javasteam.steam.steamclient.callbackmgr.CallbackMsg;
import in.dragonbra.javasteam.util.MsgUtil;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: MessageCallback.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class MessageCallback extends CallbackMsg {
    public static final Companion Companion = new Companion(null);
    private final int _eMsg;
    private final int appID;
    private final IPacketGCMsg message;

    public MessageCallback(IPacketMsg packetMsg) {
        Intrinsics.checkNotNullParameter(packetMsg, "packetMsg");
        SteammessagesClientserver2.CMsgGCClient.Builder builder = (SteammessagesClientserver2.CMsgGCClient.Builder) new ClientMsgProtobuf((Class<? extends AbstractMessage>) SteammessagesClientserver2.CMsgGCClient.class, packetMsg).getBody();
        this._eMsg = builder.getMsgtype();
        this.appID = builder.getAppid();
        Companion companion = Companion;
        int msgtype = builder.getMsgtype();
        byte[] byteArray = builder.getPayload().toByteArray();
        Intrinsics.checkNotNullExpressionValue(byteArray, "toByteArray(...)");
        IPacketGCMsg packetGCMsg = companion.getPacketGCMsg(msgtype, byteArray);
        this.message = packetGCMsg;
        setJobID(packetGCMsg.getTargetJobID());
    }

    public final int getEMsg() {
        return MsgUtil.getGCMsg(this._eMsg);
    }

    public final int getAppID() {
        return this.appID;
    }

    public final boolean isProto() {
        return MsgUtil.isProtoBuf(this._eMsg);
    }

    public final IPacketGCMsg getMessage() {
        return this.message;
    }

    /* JADX INFO: compiled from: MessageCallback.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final IPacketGCMsg getPacketGCMsg(int i, byte[] bArr) {
            int gCMsg = MsgUtil.getGCMsg(i);
            if (MsgUtil.isProtoBuf(i)) {
                return new PacketClientGCMsgProtobuf(gCMsg, bArr);
            }
            return new PacketClientGCMsg(gCMsg, bArr);
        }
    }
}
