package in.dragonbra.javasteam.steam.handlers.steamcloud;

import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesCloudSteamclient;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: FileUploadBlockDetails.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class FileUploadBlockDetails {
    private final int blockLength;
    private final long blockOffset;
    private final byte[] explicitBodyData;
    private final int httpMethod;
    private final boolean mayParallelize;
    private final List<HttpHeaders> requestHeaders;
    private final String urlHost;
    private final String urlPath;
    private final boolean useHttps;

    public FileUploadBlockDetails(SteammessagesCloudSteamclient.ClientCloudFileUploadBlockDetails blockDetails) {
        Intrinsics.checkNotNullParameter(blockDetails, "blockDetails");
        String urlHost = blockDetails.getUrlHost();
        Intrinsics.checkNotNullExpressionValue(urlHost, "getUrlHost(...)");
        this.urlHost = urlHost;
        String urlPath = blockDetails.getUrlPath();
        Intrinsics.checkNotNullExpressionValue(urlPath, "getUrlPath(...)");
        this.urlPath = urlPath;
        this.useHttps = blockDetails.getUseHttps();
        this.httpMethod = blockDetails.getHttpMethod();
        List<SteammessagesCloudSteamclient.ClientCloudFileUploadBlockDetails.HTTPHeaders> requestHeadersList = blockDetails.getRequestHeadersList();
        Intrinsics.checkNotNullExpressionValue(requestHeadersList, "getRequestHeadersList(...)");
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(requestHeadersList, 10));
        for (SteammessagesCloudSteamclient.ClientCloudFileUploadBlockDetails.HTTPHeaders hTTPHeaders : requestHeadersList) {
            String name = hTTPHeaders.getName();
            Intrinsics.checkNotNullExpressionValue(name, "getName(...)");
            String value = hTTPHeaders.getValue();
            Intrinsics.checkNotNullExpressionValue(value, "getValue(...)");
            arrayList.add(new HttpHeaders(name, value));
        }
        this.requestHeaders = arrayList;
        this.blockOffset = blockDetails.getBlockOffset();
        this.blockLength = blockDetails.getBlockLength();
        byte[] byteArray = blockDetails.getExplicitBodyData().toByteArray();
        Intrinsics.checkNotNullExpressionValue(byteArray, "toByteArray(...)");
        this.explicitBodyData = byteArray;
        this.mayParallelize = blockDetails.getMayParallelize();
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

    public final int getHttpMethod() {
        return this.httpMethod;
    }

    public final List<HttpHeaders> getRequestHeaders() {
        return this.requestHeaders;
    }

    public final long getBlockOffset() {
        return this.blockOffset;
    }

    public final int getBlockLength() {
        return this.blockLength;
    }

    public final byte[] getExplicitBodyData() {
        return this.explicitBodyData;
    }

    public final boolean getMayParallelize() {
        return this.mayParallelize;
    }
}
