package in.dragonbra.javasteam.steam.handlers.steamuser.callback;

import com.google.protobuf.AbstractMessage;
import in.dragonbra.javasteam.base.ClientMsgProtobuf;
import in.dragonbra.javasteam.base.IPacketMsg;
import in.dragonbra.javasteam.enums.EResult;
import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin;
import in.dragonbra.javasteam.steam.steamclient.callbackmgr.CallbackMsg;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: WebAPIUserNonceCallback.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class WebAPIUserNonceCallback extends CallbackMsg {
    private final String nonce;
    private final EResult result;

    public WebAPIUserNonceCallback(IPacketMsg packetMsg) {
        Intrinsics.checkNotNullParameter(packetMsg, "packetMsg");
        ClientMsgProtobuf clientMsgProtobuf = new ClientMsgProtobuf((Class<? extends AbstractMessage>) SteammessagesClientserverLogin.CMsgClientRequestWebAPIAuthenticateUserNonceResponse.class, packetMsg);
        SteammessagesClientserverLogin.CMsgClientRequestWebAPIAuthenticateUserNonceResponse.Builder builder = (SteammessagesClientserverLogin.CMsgClientRequestWebAPIAuthenticateUserNonceResponse.Builder) clientMsgProtobuf.getBody();
        setJobID(clientMsgProtobuf.getTargetJobID());
        EResult eResultFrom = EResult.from(builder.getEresult());
        Intrinsics.checkNotNullExpressionValue(eResultFrom, "from(...)");
        this.result = eResultFrom;
        String webapiAuthenticateUserNonce = builder.getWebapiAuthenticateUserNonce();
        Intrinsics.checkNotNullExpressionValue(webapiAuthenticateUserNonce, "getWebapiAuthenticateUserNonce(...)");
        this.nonce = webapiAuthenticateUserNonce;
    }

    public final EResult getResult() {
        return this.result;
    }

    public final String getNonce() {
        return this.nonce;
    }
}
