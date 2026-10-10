package in.dragonbra.javasteam.steam.handlers.steamapps.callback;

import com.google.protobuf.AbstractMessage;
import in.dragonbra.javasteam.base.ClientMsgProtobuf;
import in.dragonbra.javasteam.base.IPacketMsg;
import in.dragonbra.javasteam.enums.EResult;
import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver;
import in.dragonbra.javasteam.steam.steamclient.callbackmgr.CallbackMsg;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: AppOwnershipTicketCallback.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class AppOwnershipTicketCallback extends CallbackMsg {
    private final int appID;
    private final EResult result;
    private final byte[] ticket;

    public AppOwnershipTicketCallback(IPacketMsg packetMsg) {
        Intrinsics.checkNotNullParameter(packetMsg, "packetMsg");
        ClientMsgProtobuf clientMsgProtobuf = new ClientMsgProtobuf((Class<? extends AbstractMessage>) SteammessagesClientserver.CMsgClientGetAppOwnershipTicketResponse.class, packetMsg);
        SteammessagesClientserver.CMsgClientGetAppOwnershipTicketResponse.Builder builder = (SteammessagesClientserver.CMsgClientGetAppOwnershipTicketResponse.Builder) clientMsgProtobuf.getBody();
        setJobID(clientMsgProtobuf.getTargetJobID());
        EResult eResultFrom = EResult.from(builder.getEresult());
        Intrinsics.checkNotNullExpressionValue(eResultFrom, "from(...)");
        this.result = eResultFrom;
        this.appID = builder.getAppId();
        byte[] byteArray = builder.getTicket().toByteArray();
        Intrinsics.checkNotNullExpressionValue(byteArray, "toByteArray(...)");
        this.ticket = byteArray;
    }

    public final EResult getResult() {
        return this.result;
    }

    public final int getAppID() {
        return this.appID;
    }

    public final byte[] getTicket() {
        return this.ticket;
    }
}
