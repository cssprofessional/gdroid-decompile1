package in.dragonbra.javasteam.steam.handlers.steamapps.callback;

import com.google.protobuf.AbstractMessage;
import in.dragonbra.javasteam.base.ClientMsgProtobuf;
import in.dragonbra.javasteam.base.IPacketMsg;
import in.dragonbra.javasteam.enums.EResult;
import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserver2;
import in.dragonbra.javasteam.steam.steamclient.callbackmgr.CallbackMsg;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: DepotKeyCallback.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class DepotKeyCallback extends CallbackMsg {
    private final int depotID;
    private final byte[] depotKey;
    private final EResult result;

    public DepotKeyCallback(IPacketMsg packetMsg) {
        Intrinsics.checkNotNullParameter(packetMsg, "packetMsg");
        ClientMsgProtobuf clientMsgProtobuf = new ClientMsgProtobuf((Class<? extends AbstractMessage>) SteammessagesClientserver2.CMsgClientGetDepotDecryptionKeyResponse.class, packetMsg);
        SteammessagesClientserver2.CMsgClientGetDepotDecryptionKeyResponse.Builder builder = (SteammessagesClientserver2.CMsgClientGetDepotDecryptionKeyResponse.Builder) clientMsgProtobuf.getBody();
        setJobID(clientMsgProtobuf.getTargetJobID());
        EResult eResultFrom = EResult.from(builder.getEresult());
        Intrinsics.checkNotNullExpressionValue(eResultFrom, "from(...)");
        this.result = eResultFrom;
        this.depotID = builder.getDepotId();
        byte[] byteArray = builder.getDepotEncryptionKey().toByteArray();
        Intrinsics.checkNotNullExpressionValue(byteArray, "toByteArray(...)");
        this.depotKey = byteArray;
    }

    public final EResult getResult() {
        return this.result;
    }

    public final int getDepotID() {
        return this.depotID;
    }

    public final byte[] getDepotKey() {
        return this.depotKey;
    }
}
