###### Class in.dragonbra.javasteam.steam.handlers.steamcloud.AppFileChangeList (in.dragonbra.javasteam.steam.handlers.steamcloud.AppFileChangeList)
.class public final Lin/dragonbra/javasteam/steam/handlers/steamcloud/AppFileChangeList;
.super Ljava/lang/Object;
.source "AppFileChangeList.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAppFileChangeList.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AppFileChangeList.kt\nin/dragonbra/javasteam/steam/handlers/steamcloud/AppFileChangeList\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,14:1\n1563#2:15\n1634#2,3:16\n*S KotlinDebug\n*F\n+ 1 AppFileChangeList.kt\nin/dragonbra/javasteam/steam/handlers/steamcloud/AppFileChangeList\n*L\n8#1:15\n8#1:16,3\n*E\n"
.end annotation


# instance fields
.field private final appBuildIDHwm:J

.field private final currentChangeNumber:J

.field private final files:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lin/dragonbra/javasteam/steam/handlers/steamcloud/AppFileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final isOnlyDelta:Z

.field private final machineNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final pathPrefixes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_GetAppFileChangelist_Response$Builder;)V
    .registers 6

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_GetAppFileChangelist_Response$Builder;->getCurrentChangeNumber()J

    move-result-wide v0

    iput-wide v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/AppFileChangeList;->currentChangeNumber:J

    .line 8
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_GetAppFileChangelist_Response$Builder;->getFilesList()Ljava/util/List;

    move-result-object v0

    const-string v1, "getFilesList(...)"

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

    :goto_26
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1635
    check-cast v2, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_AppFileInfo;

    .line 8
    new-instance v3, Lin/dragonbra/javasteam/steam/handlers/steamcloud/AppFileInfo;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v3, v2}, Lin/dragonbra/javasteam/steam/handlers/steamcloud/AppFileInfo;-><init>(Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_AppFileInfo;)V

    .line 1635
    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_26

    .line 8
    :cond_3e
    iput-object v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/AppFileChangeList;->files:Ljava/util/List;

    .line 9
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_GetAppFileChangelist_Response$Builder;->getIsOnlyDelta()Z

    move-result v0

    iput-boolean v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/AppFileChangeList;->isOnlyDelta:Z

    .line 10
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_GetAppFileChangelist_Response$Builder;->getPathPrefixesList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v0

    const-string v1, "getPathPrefixesList(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/AppFileChangeList;->pathPrefixes:Ljava/util/List;

    .line 11
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_GetAppFileChangelist_Response$Builder;->getMachineNamesList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v0

    const-string v1, "getMachineNamesList(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/AppFileChangeList;->machineNames:Ljava/util/List;

    .line 12
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesCloudSteamclient$CCloud_GetAppFileChangelist_Response$Builder;->getAppBuildidHwm()J

    move-result-wide v0

    iput-wide v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/AppFileChangeList;->appBuildIDHwm:J

    return-void
.end method


# virtual methods
.method public final getAppBuildIDHwm()J
    .registers 3

    .line 12
    iget-wide v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/AppFileChangeList;->appBuildIDHwm:J

    return-wide v0
.end method

.method public final getCurrentChangeNumber()J
    .registers 3

    .line 7
    iget-wide v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/AppFileChangeList;->currentChangeNumber:J

    return-wide v0
.end method

.method public final getFiles()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lin/dragonbra/javasteam/steam/handlers/steamcloud/AppFileInfo;",
            ">;"
        }
    .end annotation

    .line 8
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/AppFileChangeList;->files:Ljava/util/List;

    return-object p0
.end method

.method public final getMachineNames()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 11
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/AppFileChangeList;->machineNames:Ljava/util/List;

    return-object p0
.end method

.method public final getPathPrefixes()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 10
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/AppFileChangeList;->pathPrefixes:Ljava/util/List;

    return-object p0
.end method

.method public final isOnlyDelta()Z
    .registers 1

    .line 9
    iget-boolean p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamcloud/AppFileChangeList;->isOnlyDelta:Z

    return p0
.end method
