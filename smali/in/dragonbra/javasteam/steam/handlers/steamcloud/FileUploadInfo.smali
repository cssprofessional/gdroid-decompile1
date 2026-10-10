###### Class in.dragonbra.javasteam.steam.handlers.steamcloud.FileUploadInfo (in.dragonbra.javasteam.steam.handlers.steamcloud.FileUploadInfo)
.class public final Lin/dragonbra/javasteam/steam/handlers/steamcloud/FileUploadInfo;
.super Ljava/lang/Object;
.source "FileUploadInfo.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFileUploadInfo.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FileUploadInfo.kt\nin/dragonbra/javasteam/steam/handlers/steamcloud/FileUploadInfo\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,9:1\n1563#2:10\n1634#2,3:11\n*S KotlinDebug\n*F\n+ 1 FileUploadInfo.kt\nin/dragonbra/javasteam/steam/handlers/steamcloud/FileUploadInfo\n*L\n7#1:10\n7#1:11,3\n*E\n"
.end annotation


# instance fields
.field private final blockRequests:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lin/dragonbra/javasteam/steam/handlers/steamcloud/FileUploadBlockDetails;",
            ">;"
        }
    .end annotation
.end field

.field private final encryptFile:Z


# direct methods
.method public constructor <init>(Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_ClientBeginFileUpload_Response$Builder;)V
    .registers 5

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_ClientBeginFileUpload_Response$Builder;->getEncryptFile()Z

    move-result v0

    iput-boolean v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/FileUploadInfo;->encryptFile:Z

    .line 7
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_ClientBeginFileUpload_Response$Builder;->getBlockRequestsList()Ljava/util/List;

    move-result-object p1

    const-string v0, "getBlockRequestsList(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1563
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1634
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_26
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1635
    check-cast v1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$ClientCloudFileUploadBlockDetails;

    .line 7
    new-instance v2, Lin/dragonbra/javasteam/steam/handlers/steamcloud/FileUploadBlockDetails;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v2, v1}, Lin/dragonbra/javasteam/steam/handlers/steamcloud/FileUploadBlockDetails;-><init>(Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$ClientCloudFileUploadBlockDetails;)V

    .line 1635
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_26

    .line 7
    :cond_3e
    iput-object v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/FileUploadInfo;->blockRequests:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final getBlockRequests()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lin/dragonbra/javasteam/steam/handlers/steamcloud/FileUploadBlockDetails;",
            ">;"
        }
    .end annotation

    .line 7
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/FileUploadInfo;->blockRequests:Ljava/util/List;

    return-object p0
.end method

.method public final getEncryptFile()Z
    .registers 1

    .line 6
    iget-boolean p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/FileUploadInfo;->encryptFile:Z

    return p0
.end method
