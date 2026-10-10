package in.dragonbra.javasteam.steam.handlers.steamfriends.callback;

import in.dragonbra.javasteam.base.ClientMsg;
import in.dragonbra.javasteam.base.IPacketMsg;
import in.dragonbra.javasteam.enums.EResult;
import in.dragonbra.javasteam.generated.MsgClientSetIgnoreFriendResponse;
import in.dragonbra.javasteam.steam.steamclient.callbackmgr.CallbackMsg;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: IgnoreFriendCallback.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class IgnoreFriendCallback extends CallbackMsg {
    private final EResult result;

    public IgnoreFriendCallback(IPacketMsg packetMsg) {
        Intrinsics.checkNotNullParameter(packetMsg, "packetMsg");
        ClientMsg clientMsg = new ClientMsg(MsgClientSetIgnoreFriendResponse.class, packetMsg);
        setJobID(clientMsg.getTargetJobID());
        EResult result = ((MsgClientSetIgnoreFriendResponse) clientMsg.getBody()).getResult();
        Intrinsics.checkNotNullExpressionValue(result, "getResult(...)");
        this.result = result;
    }

    public final EResult getResult() {
        return this.result;
    }
}
