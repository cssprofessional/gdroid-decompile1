package in.dragonbra.javasteam.steam.handlers.steamcloud.callback;

import com.google.protobuf.AbstractMessage;
import in.dragonbra.javasteam.base.ClientMsgProtobuf;
import in.dragonbra.javasteam.base.IPacketMsg;
import in.dragonbra.javasteam.enums.EResult;
import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUfs;
import in.dragonbra.javasteam.steam.steamclient.callbackmgr.CallbackMsg;
import java.util.Date;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: SingleFileInfoCallback.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class SingleFileInfoCallback extends CallbackMsg {
    private final int appID;
    private final String fileName;
    private final int fileSize;
    private final boolean isExplicitDelete;
    private final EResult result;
    private final byte[] shaHash;
    private final Date timestamp;

    public SingleFileInfoCallback(IPacketMsg packetMsg) {
        Intrinsics.checkNotNullParameter(packetMsg, "packetMsg");
        ClientMsgProtobuf clientMsgProtobuf = new ClientMsgProtobuf((Class<? extends AbstractMessage>) SteammessagesClientserverUfs.CMsgClientUFSGetSingleFileInfoResponse.class, packetMsg);
        SteammessagesClientserverUfs.CMsgClientUFSGetSingleFileInfoResponse.Builder builder = (SteammessagesClientserverUfs.CMsgClientUFSGetSingleFileInfoResponse.Builder) clientMsgProtobuf.getBody();
        setJobID(clientMsgProtobuf.getTargetJobID());
        EResult eResultFrom = EResult.from(builder.getEresult());
        Intrinsics.checkNotNullExpressionValue(eResultFrom, "from(...)");
        this.result = eResultFrom;
        this.appID = builder.getAppId();
        String fileName = builder.getFileName();
        Intrinsics.checkNotNullExpressionValue(fileName, "getFileName(...)");
        this.fileName = fileName;
        byte[] byteArray = builder.getShaFile().toByteArray();
        Intrinsics.checkNotNullExpressionValue(byteArray, "toByteArray(...)");
        this.shaHash = byteArray;
        this.timestamp = new Date(builder.getTimeStamp() * 1000);
        this.fileSize = builder.getRawFileSize();
        this.isExplicitDelete = builder.getIsExplicitDelete();
    }

    public final EResult getResult() {
        return this.result;
    }

    public final int getAppID() {
        return this.appID;
    }

    public final String getFileName() {
        return this.fileName;
    }

    public final byte[] getShaHash() {
        return this.shaHash;
    }

    public final Date getTimestamp() {
        return this.timestamp;
    }

    public final int getFileSize() {
        return this.fileSize;
    }

    public final boolean isExplicitDelete() {
        return this.isExplicitDelete;
    }
}
