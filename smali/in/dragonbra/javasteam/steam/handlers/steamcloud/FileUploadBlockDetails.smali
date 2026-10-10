###### Class in.dragonbra.javasteam.steam.handlers.steamcloud.FileUploadBlockDetails (in.dragonbra.javasteam.steam.handlers.steamcloud.FileUploadBlockDetails)
.class public final Lin/dragonbra/javasteam/steam/handlers/steamcloud/FileUploadBlockDetails;
.super Ljava/lang/Object;
.source "FileUploadBlockDetails.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFileUploadBlockDetails.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FileUploadBlockDetails.kt\nin/dragonbra/javasteam/steam/handlers/steamcloud/FileUploadBlockDetails\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,16:1\n1563#2:17\n1634#2,3:18\n*S KotlinDebug\n*F\n+ 1 FileUploadBlockDetails.kt\nin/dragonbra/javasteam/steam/handlers/steamcloud/FileUploadBlockDetails\n*L\n10#1:17\n10#1:18,3\n*E\n"
.end annotation


# instance fields
.field private final blockLength:I

.field private final blockOffset:J

.field private final explicitBodyData:[B

.field private final httpMethod:I

.field private final mayParallelize:Z

.field private final requestHeaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lin/dragonbra/javasteam/steam/handlers/steamcloud/HttpHeaders;",
            ">;"
        }
    .end annotation
.end field

.field private final urlHost:Ljava/lang/String;

.field private final urlPath:Ljava/lang/String;

.field private final useHttps:Z


# direct methods
.method public constructor <init>(Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$ClientCloudFileUploadBlockDetails;)V
    .registers 8

    const-string v0, "blockDetails"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$ClientCloudFileUploadBlockDetails;->getUrlHost()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getUrlHost(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/FileUploadBlockDetails;->urlHost:Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$ClientCloudFileUploadBlockDetails;->getUrlPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getUrlPath(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/FileUploadBlockDetails;->urlPath:Ljava/lang/String;

    .line 8
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$ClientCloudFileUploadBlockDetails;->getUseHttps()Z

    move-result v0

    iput-boolean v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/FileUploadBlockDetails;->useHttps:Z

    .line 9
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$ClientCloudFileUploadBlockDetails;->getHttpMethod()I

    move-result v0

    iput v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/FileUploadBlockDetails;->httpMethod:I

    .line 10
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$ClientCloudFileUploadBlockDetails;->getRequestHeadersList()Ljava/util/List;

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

    :goto_42
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_69

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1635
    check-cast v2, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$ClientCloudFileUploadBlockDetails$HTTPHeaders;

    .line 10
    new-instance v3, Lin/dragonbra/javasteam/steam/handlers/steamcloud/HttpHeaders;

    invoke-virtual {v2}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$ClientCloudFileUploadBlockDetails$HTTPHeaders;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "getName(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$ClientCloudFileUploadBlockDetails$HTTPHeaders;->getValue()Ljava/lang/String;

    move-result-object v2

    const-string v5, "getValue(...)"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v3, v4, v2}, Lin/dragonbra/javasteam/steam/handlers/steamcloud/HttpHeaders;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1635
    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_42

    .line 10
    :cond_69
    iput-object v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/FileUploadBlockDetails;->requestHeaders:Ljava/util/List;

    .line 11
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$ClientCloudFileUploadBlockDetails;->getBlockOffset()J

    move-result-wide v0

    iput-wide v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/FileUploadBlockDetails;->blockOffset:J

    .line 12
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$ClientCloudFileUploadBlockDetails;->getBlockLength()I

    move-result v0

    iput v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/FileUploadBlockDetails;->blockLength:I

    .line 13
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$ClientCloudFileUploadBlockDetails;->getExplicitBodyData()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v0

    const-string v1, "toByteArray(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/FileUploadBlockDetails;->explicitBodyData:[B

    .line 14
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$ClientCloudFileUploadBlockDetails;->getMayParallelize()Z

    move-result p1

    iput-boolean p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/FileUploadBlockDetails;->mayParallelize:Z

    return-void
.end method


# virtual methods
.method public final getBlockLength()I
    .registers 1

    .line 12
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/FileUploadBlockDetails;->blockLength:I

    return p0
.end method

.method public final getBlockOffset()J
    .registers 3

    .line 11
    iget-wide v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/FileUploadBlockDetails;->blockOffset:J

    return-wide v0
.end method

.method public final getExplicitBodyData()[B
    .registers 1

    .line 13
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/FileUploadBlockDetails;->explicitBodyData:[B

    return-object p0
.end method

.method public final getHttpMethod()I
    .registers 1

    .line 9
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/FileUploadBlockDetails;->httpMethod:I

    return p0
.end method

.method public final getMayParallelize()Z
    .registers 1

    .line 14
    iget-boolean p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/FileUploadBlockDetails;->mayParallelize:Z

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

    .line 10
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/FileUploadBlockDetails;->requestHeaders:Ljava/util/List;

    return-object p0
.end method

.method public final getUrlHost()Ljava/lang/String;
    .registers 1

    .line 6
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/FileUploadBlockDetails;->urlHost:Ljava/lang/String;

    return-object p0
.end method

.method public final getUrlPath()Ljava/lang/String;
    .registers 1

    .line 7
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/FileUploadBlockDetails;->urlPath:Ljava/lang/String;

    return-object p0
.end method

.method public final getUseHttps()Z
    .registers 1

    .line 8
    iget-boolean p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/FileUploadBlockDetails;->useHttps:Z

    return p0
.end method
