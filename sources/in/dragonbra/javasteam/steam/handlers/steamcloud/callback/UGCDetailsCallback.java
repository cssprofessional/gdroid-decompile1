package in.dragonbra.javasteam.steam.handlers.steamcloud.callback;

import com.google.protobuf.AbstractMessage;
import in.dragonbra.javasteam.base.ClientMsgProtobuf;
import in.dragonbra.javasteam.base.IPacketMsg;
import in.dragonbra.javasteam.enums.EResult;
import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUfs;
import in.dragonbra.javasteam.steam.steamclient.callbackmgr.CallbackMsg;
import in.dragonbra.javasteam.types.SteamID;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: UGCDetailsCallback.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class UGCDetailsCallback extends CallbackMsg {
    private final int appID;
    private final SteamID creator;
    private final String fileName;
    private final int fileSize;
    private final EResult result;
    private final String url;

    public UGCDetailsCallback(IPacketMsg packetMsg) {
        Intrinsics.checkNotNullParameter(packetMsg, "packetMsg");
        ClientMsgProtobuf clientMsgProtobuf = new ClientMsgProtobuf((Class<? extends AbstractMessage>) SteammessagesClientserverUfs.CMsgClientUFSGetUGCDetailsResponse.class, packetMsg);
        SteammessagesClientserverUfs.CMsgClientUFSGetUGCDetailsResponse.Builder builder = (SteammessagesClientserverUfs.CMsgClientUFSGetUGCDetailsResponse.Builder) clientMsgProtobuf.getBody();
        setJobID(clientMsgProtobuf.getTargetJobID());
        EResult eResultFrom = EResult.from(builder.getEresult());
        Intrinsics.checkNotNullExpressionValue(eResultFrom, "from(...)");
        this.result = eResultFrom;
        this.appID = builder.getAppId();
        this.creator = new SteamID(builder.getSteamidCreator());
        String url = builder.getUrl();
        Intrinsics.checkNotNullExpressionValue(url, "getUrl(...)");
        this.url = url;
        String filename = builder.getFilename();
        Intrinsics.checkNotNullExpressionValue(filename, "getFilename(...)");
        this.fileName = filename;
        this.fileSize = builder.getFileSize();
    }

    public final EResult getResult() {
        return this.result;
    }

    public final int getAppID() {
        return this.appID;
    }

    public final SteamID getCreator() {
        return this.creator;
    }

    public final String getUrl() {
        return this.url;
    }

    public final String getFileName() {
        return this.fileName;
    }

    public final int getFileSize() {
        return this.fileSize;
    }
}
