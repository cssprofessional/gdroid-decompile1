package in.dragonbra.javasteam.steam.handlers.steamapps.callback;

import com.google.protobuf.AbstractMessage;
import in.dragonbra.javasteam.base.ClientMsgProtobuf;
import in.dragonbra.javasteam.base.IPacketMsg;
import in.dragonbra.javasteam.enums.EResult;
import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2;
import in.dragonbra.javasteam.steam.steamclient.callbackmgr.CallbackMsg;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: RedeemGuestPassResponseCallback.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class RedeemGuestPassResponseCallback extends CallbackMsg {
    private final int mustOwnAppID;
    private final int packageID;
    private final EResult result;

    public RedeemGuestPassResponseCallback(IPacketMsg packetMsg) {
        Intrinsics.checkNotNullParameter(packetMsg, "packetMsg");
        ClientMsgProtobuf clientMsgProtobuf = new ClientMsgProtobuf((Class<? extends AbstractMessage>) SteammessagesClientserver2.CMsgClientRedeemGuestPassResponse.class, packetMsg);
        SteammessagesClientserver2.CMsgClientRedeemGuestPassResponse.Builder builder = (SteammessagesClientserver2.CMsgClientRedeemGuestPassResponse.Builder) clientMsgProtobuf.getBody();
        setJobID(clientMsgProtobuf.getTargetJobID());
        EResult eResultFrom = EResult.from(builder.getEresult());
        Intrinsics.checkNotNullExpressionValue(eResultFrom, "from(...)");
        this.result = eResultFrom;
        this.packageID = builder.getPackageId();
        this.mustOwnAppID = builder.getMustOwnAppid();
    }

    public final EResult getResult() {
        return this.result;
    }

    public final int getPackageID() {
        return this.packageID;
    }

    public final int getMustOwnAppID() {
        return this.mustOwnAppID;
    }
}
