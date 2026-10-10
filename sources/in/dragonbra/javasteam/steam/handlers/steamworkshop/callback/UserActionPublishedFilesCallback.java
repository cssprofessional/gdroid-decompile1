package in.dragonbra.javasteam.steam.handlers.steamworkshop.callback;

import com.google.protobuf.AbstractMessage;
import in.dragonbra.javasteam.base.ClientMsgProtobuf;
import in.dragonbra.javasteam.base.IPacketMsg;
import in.dragonbra.javasteam.enums.EResult;
import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverUcm;
import in.dragonbra.javasteam.steam.steamclient.callbackmgr.CallbackMsg;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: UserActionPublishedFilesCallback.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class UserActionPublishedFilesCallback extends CallbackMsg {
    private final List<File> files;
    private final EResult result;
    private final int totalResults;

    public UserActionPublishedFilesCallback(IPacketMsg packetMsg) {
        Intrinsics.checkNotNullParameter(packetMsg, "packetMsg");
        ClientMsgProtobuf clientMsgProtobuf = new ClientMsgProtobuf((Class<? extends AbstractMessage>) SteammessagesClientserverUcm.CMsgClientUCMEnumeratePublishedFilesByUserActionResponse.class, packetMsg);
        SteammessagesClientserverUcm.CMsgClientUCMEnumeratePublishedFilesByUserActionResponse.Builder builder = (SteammessagesClientserverUcm.CMsgClientUCMEnumeratePublishedFilesByUserActionResponse.Builder) clientMsgProtobuf.getBody();
        setJobID(clientMsgProtobuf.getTargetJobID());
        EResult eResultFrom = EResult.from(builder.getEresult());
        Intrinsics.checkNotNullExpressionValue(eResultFrom, "from(...)");
        this.result = eResultFrom;
        List<SteammessagesClientserverUcm.CMsgClientUCMEnumeratePublishedFilesByUserActionResponse.PublishedFileId> publishedFilesList = builder.getPublishedFilesList();
        Intrinsics.checkNotNullExpressionValue(publishedFilesList, "getPublishedFilesList(...)");
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(publishedFilesList, 10));
        for (SteammessagesClientserverUcm.CMsgClientUCMEnumeratePublishedFilesByUserActionResponse.PublishedFileId publishedFileId : publishedFilesList) {
            Intrinsics.checkNotNull(publishedFileId);
            arrayList.add(new File(publishedFileId));
        }
        this.files = arrayList;
        this.totalResults = builder.getTotalResults();
    }

    public final EResult getResult() {
        return this.result;
    }

    public final List<File> getFiles() {
        return this.files;
    }

    public final int getTotalResults() {
        return this.totalResults;
    }

    /* JADX INFO: compiled from: UserActionPublishedFilesCallback.kt */
    public static final class File {
        private final long fileID;
        private final Date timestamp;

        public File(SteammessagesClientserverUcm.CMsgClientUCMEnumeratePublishedFilesByUserActionResponse.PublishedFileId file) {
            Intrinsics.checkNotNullParameter(file, "file");
            this.fileID = file.getPublishedFileId();
            this.timestamp = new Date(((long) file.getRtimeTimeStamp()) * 1000);
        }

        public final long getFileID() {
            return this.fileID;
        }

        public final Date getTimestamp() {
            return this.timestamp;
        }
    }
}
