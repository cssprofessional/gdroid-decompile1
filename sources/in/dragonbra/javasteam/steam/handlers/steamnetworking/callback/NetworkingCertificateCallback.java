package in.dragonbra.javasteam.steam.handlers.steamnetworking.callback;

import com.google.protobuf.AbstractMessage;
import in.dragonbra.javasteam.base.ClientMsgProtobuf;
import in.dragonbra.javasteam.base.IPacketMsg;
import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver;
import in.dragonbra.javasteam.steam.steamclient.callbackmgr.CallbackMsg;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: NetworkingCertificateCallback.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class NetworkingCertificateCallback extends CallbackMsg {
    private final long caKeyID;
    private final byte[] caSignature;
    private final byte[] certificate;

    public NetworkingCertificateCallback(IPacketMsg packetMsg) {
        Intrinsics.checkNotNullParameter(packetMsg, "packetMsg");
        ClientMsgProtobuf clientMsgProtobuf = new ClientMsgProtobuf((Class<? extends AbstractMessage>) SteammessagesClientserver.CMsgClientNetworkingCertReply.class, packetMsg);
        SteammessagesClientserver.CMsgClientNetworkingCertReply.Builder builder = (SteammessagesClientserver.CMsgClientNetworkingCertReply.Builder) clientMsgProtobuf.getBody();
        setJobID(clientMsgProtobuf.getTargetJobID());
        byte[] byteArray = builder.getCert().toByteArray();
        Intrinsics.checkNotNullExpressionValue(byteArray, "toByteArray(...)");
        this.certificate = byteArray;
        this.caKeyID = builder.getCaKeyId();
        byte[] byteArray2 = builder.getCaSignature().toByteArray();
        Intrinsics.checkNotNullExpressionValue(byteArray2, "toByteArray(...)");
        this.caSignature = byteArray2;
    }

    public final byte[] getCertificate() {
        return this.certificate;
    }

    public final long getCaKeyID() {
        return this.caKeyID;
    }

    public final byte[] getCaSignature() {
        return this.caSignature;
    }
}
