package in.dragonbra.javasteam.steam.handlers.steamuser.callback;

import com.google.protobuf.AbstractMessage;
import in.dragonbra.javasteam.base.ClientMsg;
import in.dragonbra.javasteam.base.ClientMsgProtobuf;
import in.dragonbra.javasteam.base.IPacketMsg;
import in.dragonbra.javasteam.enums.EResult;
import in.dragonbra.javasteam.generated.MsgClientLoggedOff;
import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin;
import in.dragonbra.javasteam.steam.steamclient.callbackmgr.CallbackMsg;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: LoggedOffCallback.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class LoggedOffCallback extends CallbackMsg {
    private final EResult result;

    public LoggedOffCallback(IPacketMsg packetMsg) {
        Intrinsics.checkNotNullParameter(packetMsg, "packetMsg");
        if (packetMsg.isProto()) {
            EResult eResultFrom = EResult.from(((SteammessagesClientserverLogin.CMsgClientLoggedOff.Builder) new ClientMsgProtobuf((Class<? extends AbstractMessage>) SteammessagesClientserverLogin.CMsgClientLoggedOff.class, packetMsg).getBody()).getEresult());
            Intrinsics.checkNotNullExpressionValue(eResultFrom, "from(...)");
            this.result = eResultFrom;
        } else {
            EResult result = ((MsgClientLoggedOff) new ClientMsg(MsgClientLoggedOff.class, packetMsg).getBody()).getResult();
            Intrinsics.checkNotNullExpressionValue(result, "getResult(...)");
            this.result = result;
        }
    }

    public final EResult getResult() {
        return this.result;
    }
}
