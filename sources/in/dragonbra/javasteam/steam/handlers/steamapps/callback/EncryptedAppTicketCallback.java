package in.dragonbra.javasteam.steam.handlers.steamapps.callback;

import com.google.protobuf.AbstractMessage;
import in.dragonbra.javasteam.base.ClientMsgProtobuf;
import in.dragonbra.javasteam.base.IPacketMsg;
import in.dragonbra.javasteam.enums.EResult;
import in.dragonbra.javasteam.protobufs.steamclient.EncryptedAppTicketOuterClass;
import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver;
import in.dragonbra.javasteam.steam.steamclient.callbackmgr.CallbackMsg;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: EncryptedAppTicketCallback.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class EncryptedAppTicketCallback extends CallbackMsg {
    private final int appID;
    private final EncryptedAppTicketOuterClass.EncryptedAppTicket encryptedAppTicket;
    private final EResult result;

    public EncryptedAppTicketCallback(IPacketMsg packetMsg) {
        Intrinsics.checkNotNullParameter(packetMsg, "packetMsg");
        ClientMsgProtobuf clientMsgProtobuf = new ClientMsgProtobuf((Class<? extends AbstractMessage>) SteammessagesClientserver.CMsgClientRequestEncryptedAppTicketResponse.class, packetMsg);
        SteammessagesClientserver.CMsgClientRequestEncryptedAppTicketResponse.Builder builder = (SteammessagesClientserver.CMsgClientRequestEncryptedAppTicketResponse.Builder) clientMsgProtobuf.getBody();
        setJobID(clientMsgProtobuf.getTargetJobID());
        EResult eResultFrom = EResult.from(builder.getEresult());
        Intrinsics.checkNotNullExpressionValue(eResultFrom, "from(...)");
        this.result = eResultFrom;
        this.appID = builder.getAppId();
        this.encryptedAppTicket = builder.hasEncryptedAppTicket() ? builder.getEncryptedAppTicket() : null;
    }

    public final EResult getResult() {
        return this.result;
    }

    public final int getAppID() {
        return this.appID;
    }

    public final EncryptedAppTicketOuterClass.EncryptedAppTicket getEncryptedAppTicket() {
        return this.encryptedAppTicket;
    }
}
