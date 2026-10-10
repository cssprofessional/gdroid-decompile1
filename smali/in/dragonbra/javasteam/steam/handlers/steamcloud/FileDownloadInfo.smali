###### Class in.dragonbra.javasteam.steam.handlers.steamcloud.FileDownloadInfo (in.dragonbra.javasteam.steam.handlers.steamcloud.FileDownloadInfo)
.class public final Lin/dragonbra/javasteam/steam/handlers/steamcloud/FileDownloadInfo;
.super Ljava/lang/Object;
.source "FileDownloadInfo.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFileDownloadInfo.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FileDownloadInfo.kt\nin/dragonbra/javasteam/steam/handlers/steamcloud/FileDownloadInfo\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,19:1\n1563#2:20\n1634#2,3:21\n*S KotlinDebug\n*F\n+ 1 FileDownloadInfo.kt\nin/dragonbra/javasteam/steam/handlers/steamcloud/FileDownloadInfo\n*L\n16#1:20\n16#1:21,3\n*E\n"
.end annotation


# instance fields
.field private final appID:I

.field private final encrypted:Z

.field private final fileSize:I

.field private final isExplicitDelete:Z

.field private final rawFileSize:I

.field private final requestHeaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lin/dragonbra/javasteam/steam/handlers/steamcloud/HttpHeaders;",
            ">;"
        }
    .end annotation
.end field

.field private final shaFile:[B

.field private final timestamp:Ljava/util/Date;

.field private final urlHost:Ljava/lang/String;

.field private final urlPath:Ljava/lang/String;

.field private final useHttps:Z


# direct methods
.method public constructor <init>(Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_ClientFileDownload_Response$Builder;)V
    .registers 8

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_ClientFileDownload_Response$Builder;->getAppid()I

    move-result v0

    iput v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/FileDownloadInfo;->appID:I

    .line 8
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_ClientFileDownload_Response$Builder;->getFileSize()I

    move-result v0

    iput v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/FileDownloadInfo;->fileSize:I

    .line 9
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_ClientFileDownload_Response$Builder;->getRawFileSize()I

    move-result v0

    iput v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/FileDownloadInfo;->rawFileSize:I

    .line 10
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_ClientFileDownload_Response$Builder;->getShaFile()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v0

    const-string v1, "toByteArray(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/FileDownloadInfo;->shaFile:[B

    .line 11
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_ClientFileDownload_Response$Builder;->getTimeStamp()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/FileDownloadInfo;->timestamp:Ljava/util/Date;

    .line 12
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_ClientFileDownload_Response$Builder;->getIsExplicitDelete()Z

    move-result v0

    iput-boolean v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/FileDownloadInfo;->isExplicitDelete:Z

    .line 13
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_ClientFileDownload_Response$Builder;->getUrlHost()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getUrlHost(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/FileDownloadInfo;->urlHost:Ljava/lang/String;

    .line 14
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_ClientFileDownload_Response$Builder;->getUrlPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getUrlPath(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/FileDownloadInfo;->urlPath:Ljava/lang/String;

    .line 15
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_ClientFileDownload_Response$Builder;->getUseHttps()Z

    move-result v0

    iput-boolean v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/FileDownloadInfo;->useHttps:Z

    .line 16
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_ClientFileDownload_Response$Builder;->getRequestHeadersList()Ljava/util/List;

    move-result-object v0

    const-string v1, "getRequestHeadersList(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1563
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1634
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_71
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_98

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1635
    check-cast v2, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_ClientFileDownload_Response$HTTPHeaders;

    .line 16
    new-instance v3, Lin/dragonbra/javasteam/steam/handlers/steamcloud/HttpHeaders;

    invoke-virtual {v2}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_ClientFileDownload_Response$HTTPHeaders;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "getName(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_ClientFileDownload_Response$HTTPHeaders;->getValue()Ljava/lang/String;

    move-result-object v2

    const-string v5, "getValue(...)"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v3, v4, v2}, Lin/dragonbra/javasteam/steam/handlers/steamcloud/HttpHeaders;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1635
    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_71

    .line 16
    :cond_98
    iput-object v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/FileDownloadInfo;->requestHeaders:Ljava/util/List;

    .line 17
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_ClientFileDownload_Response$Builder;->getEncrypted()Z

    move-result p1

    iput-boolean p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/FileDownloadInfo;->encrypted:Z

    return-void
.end method


# virtual methods
.method public final getAppID()I
    .registers 1

    .line 7
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/FileDownloadInfo;->appID:I

    return p0
.end method

.method public final getEncrypted()Z
    .registers 1

    .line 17
    iget-boolean p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/FileDownloadInfo;->encrypted:Z

    return p0
.end method

.method public final getFileSize()I
    .registers 1

    .line 8
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/FileDownloadInfo;->fileSize:I

    return p0
.end method

.method public final getRawFileSize()I
    .registers 1

    .line 9
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/FileDownloadInfo;->rawFileSize:I

    return p0
.end method

.method public final getRequestHeaders()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lin/dragonbra/javasteam/steam/handlers/steamcloud/HttpHeaders;",
            ">;"
        }
    .end annotation

    .line 16
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/FileDownloadInfo;->requestHeaders:Ljava/util/List;

    return-object p0
.end method

.method public final getShaFile()[B
    .registers 1

    .line 10
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/FileDownloadInfo;->shaFile:[B

    return-object p0
.end method

.method public final getTimestamp()Ljava/util/Date;
    .registers 1

    .line 11
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/FileDownloadInfo;->timestamp:Ljava/util/Date;

    return-object p0
.end method

.method public final getUrlHost()Ljava/lang/String;
    .registers 1

    .line 13
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/FileDownloadInfo;->urlHost:Ljava/lang/String;

    return-object p0
.end method

.method public final getUrlPath()Ljava/lang/String;
    .registers 1

    .line 14
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/FileDownloadInfo;->urlPath:Ljava/lang/String;

    return-object p0
.end method

.method public final getUseHttps()Z
    .registers 1

    .line 15
    iget-boolean p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/FileDownloadInfo;->useHttps:Z

    return p0
.end method

.method public final isExplicitDelete()Z
    .registers 1

    .line 12
    iget-boolean p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/FileDownloadInfo;->isExplicitDelete:Z

    return p0
.end method
