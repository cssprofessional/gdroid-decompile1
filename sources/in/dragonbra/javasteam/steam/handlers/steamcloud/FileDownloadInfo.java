package in.dragonbra.javasteam.steam.handlers.steamcloud;

import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesCloudSteamclient;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: FileDownloadInfo.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class FileDownloadInfo {
    private final int appID;
    private final boolean encrypted;
    private final int fileSize;
    private final boolean isExplicitDelete;
    private final int rawFileSize;
    private final List<HttpHeaders> requestHeaders;
    private final byte[] shaFile;
    private final Date timestamp;
    private final String urlHost;
    private final String urlPath;
    private final boolean useHttps;

    public FileDownloadInfo(SteammessagesCloudSteamclient.CCloud_ClientFileDownload_Response.Builder response) {
        Intrinsics.checkNotNullParameter(response, "response");
        this.appID = response.getAppid();
        this.fileSize = response.getFileSize();
        this.rawFileSize = response.getRawFileSize();
        byte[] byteArray = response.getShaFile().toByteArray();
        Intrinsics.checkNotNullExpressionValue(byteArray, "toByteArray(...)");
        this.shaFile = byteArray;
        this.timestamp = new Date(response.getTimeStamp() * 1000);
        this.isExplicitDelete = response.getIsExplicitDelete();
        String urlHost = response.getUrlHost();
        Intrinsics.checkNotNullExpressionValue(urlHost, "getUrlHost(...)");
        this.urlHost = urlHost;
        String urlPath = response.getUrlPath();
        Intrinsics.checkNotNullExpressionValue(urlPath, "getUrlPath(...)");
        this.urlPath = urlPath;
        this.useHttps = response.getUseHttps();
        List<SteammessagesCloudSteamclient.CCloud_ClientFileDownload_Response.HTTPHeaders> requestHeadersList = response.getRequestHeadersList();
        Intrinsics.checkNotNullExpressionValue(requestHeadersList, "getRequestHeadersList(...)");
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(requestHeadersList, 10));
        for (SteammessagesCloudSteamclient.CCloud_ClientFileDownload_Response.HTTPHeaders hTTPHeaders : requestHeadersList) {
            String name = hTTPHeaders.getName();
            Intrinsics.checkNotNullExpressionValue(name, "getName(...)");
            String value = hTTPHeaders.getValue();
            Intrinsics.checkNotNullExpressionValue(value, "getValue(...)");
            arrayList.add(new HttpHeaders(name, value));
        }
        this.requestHeaders = arrayList;
        this.encrypted = response.getEncrypted();
    }

    public final int getAppID() {
        return this.appID;
    }

    public final int getFileSize() {
        return this.fileSize;
    }

    public final int getRawFileSize() {
        return this.rawFileSize;
    }

    public final byte[] getShaFile() {
        return this.shaFile;
    }

    public final Date getTimestamp() {
        return this.timestamp;
    }

    public final boolean isExplicitDelete() {
        return this.isExplicitDelete;
    }

    public final String getUrlHost() {
        return this.urlHost;
    }

    public final String getUrlPath() {
        return this.urlPath;
    }

    public final boolean getUseHttps() {
        return this.useHttps;
    }

    public final List<HttpHeaders> getRequestHeaders() {
        return this.requestHeaders;
    }

    public final boolean getEncrypted() {
        return this.encrypted;
    }
}
