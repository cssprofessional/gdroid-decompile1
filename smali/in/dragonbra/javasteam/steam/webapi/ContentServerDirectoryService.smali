###### Class in.dragonbra.javasteam.steam.webapi.ContentServerDirectoryService (in.dragonbra.javasteam.steam.webapi.ContentServerDirectoryService)
.class public final Lin/dragonbra/javasteam/steam/webapi/ContentServerDirectoryService;
.super Ljava/lang/Object;
.source "ContentServerDirectoryService.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nContentServerDirectoryService.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ContentServerDirectoryService.kt\nin/dragonbra/javasteam/steam/webapi/ContentServerDirectoryService\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,40:1\n1563#2:41\n1634#2,3:42\n*S KotlinDebug\n*F\n+ 1 ContentServerDirectoryService.kt\nin/dragonbra/javasteam/steam/webapi/ContentServerDirectoryService\n*L\n14#1:41\n14#1:42,3\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lin/dragonbra/javasteam/steam/webapi/ContentServerDirectoryService;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lin/dragonbra/javasteam/steam/webapi/ContentServerDirectoryService;

    invoke-direct {v0}, Lin/dragonbra/javasteam/steam/webapi/ContentServerDirectoryService;-><init>()V

    sput-object v0, Lin/dragonbra/javasteam/steam/webapi/ContentServerDirectoryService;->INSTANCE:Lin/dragonbra/javasteam/steam/webapi/ContentServerDirectoryService;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final convertServerList$javasteam(Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesContentsystemSteamclient$CContentServerDirectory_GetServersForSteamPipe_Response;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesContentsystemSteamclient$CContentServerDirectory_GetServersForSteamPipe_Response;",
            ")",
            "Ljava/util/List<",
            "Lin/dragonbra/javasteam/steam/cdn/Server;",
            ">;"
        }
    .end annotation

    const-string v0, "response"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-virtual {p0}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesContentsystemSteamclient$CContentServerDirectory_GetServersForSteamPipe_Response;->getServersList()Ljava/util/List;

    move-result-object p0

    const-string v0, "getServersList(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1563
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p0, v1}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1634
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1635
    check-cast v1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesContentsystemSteamclient$CContentServerDirectory_ServerInfo;

    .line 15
    invoke-virtual {v1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesContentsystemSteamclient$CContentServerDirectory_ServerInfo;->getHttpsSupport()Ljava/lang/String;

    move-result-object v2

    .line 16
    const-string v3, "mandatory"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 17
    sget-object v2, Lin/dragonbra/javasteam/steam/cdn/Server$ConnectionProtocol;->HTTPS:Lin/dragonbra/javasteam/steam/cdn/Server$ConnectionProtocol;

    goto :goto_3a

    .line 19
    :cond_38
    sget-object v2, Lin/dragonbra/javasteam/steam/cdn/Server$ConnectionProtocol;->HTTP:Lin/dragonbra/javasteam/steam/cdn/Server$ConnectionProtocol;

    .line 22
    :goto_3a
    new-instance v3, Lin/dragonbra/javasteam/steam/cdn/Server;

    invoke-direct {v3}, Lin/dragonbra/javasteam/steam/cdn/Server;-><init>()V

    .line 23
    invoke-virtual {v3, v2}, Lin/dragonbra/javasteam/steam/cdn/Server;->setProtocol$javasteam(Lin/dragonbra/javasteam/steam/cdn/Server$ConnectionProtocol;)V

    .line 24
    invoke-virtual {v1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesContentsystemSteamclient$CContentServerDirectory_ServerInfo;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lin/dragonbra/javasteam/steam/cdn/Server;->setHost$javasteam(Ljava/lang/String;)V

    .line 25
    invoke-virtual {v1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesContentsystemSteamclient$CContentServerDirectory_ServerInfo;->getVhost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lin/dragonbra/javasteam/steam/cdn/Server;->setVHost$javasteam(Ljava/lang/String;)V

    .line 26
    sget-object v4, Lin/dragonbra/javasteam/steam/cdn/Server$ConnectionProtocol;->HTTPS:Lin/dragonbra/javasteam/steam/cdn/Server$ConnectionProtocol;

    if-ne v2, v4, :cond_57

    const/16 v2, 0x1bb

    goto :goto_59

    :cond_57
    const/16 v2, 0x50

    :goto_59
    invoke-virtual {v3, v2}, Lin/dragonbra/javasteam/steam/cdn/Server;->setPort$javasteam(I)V

    .line 27
    invoke-virtual {v1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesContentsystemSteamclient$CContentServerDirectory_ServerInfo;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lin/dragonbra/javasteam/steam/cdn/Server;->setType$javasteam(Ljava/lang/String;)V

    .line 28
    invoke-virtual {v1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesContentsystemSteamclient$CContentServerDirectory_ServerInfo;->getSourceId()I

    move-result v2

    invoke-virtual {v3, v2}, Lin/dragonbra/javasteam/steam/cdn/Server;->setSourceId$javasteam(I)V

    .line 29
    invoke-virtual {v1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesContentsystemSteamclient$CContentServerDirectory_ServerInfo;->getCellId()I

    move-result v2

    invoke-virtual {v3, v2}, Lin/dragonbra/javasteam/steam/cdn/Server;->setCellId$javasteam(I)V

    .line 30
    invoke-virtual {v1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesContentsystemSteamclient$CContentServerDirectory_ServerInfo;->getLoad()I

    move-result v2

    invoke-virtual {v3, v2}, Lin/dragonbra/javasteam/steam/cdn/Server;->setLoad$javasteam(I)V

    .line 31
    invoke-virtual {v1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesContentsystemSteamclient$CContentServerDirectory_ServerInfo;->getWeightedLoad()F

    move-result v2

    invoke-virtual {v3, v2}, Lin/dragonbra/javasteam/steam/cdn/Server;->setWeightedLoad$javasteam(F)V

    .line 32
    invoke-virtual {v1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesContentsystemSteamclient$CContentServerDirectory_ServerInfo;->getNumEntriesInClientList()I

    move-result v2

    invoke-virtual {v3, v2}, Lin/dragonbra/javasteam/steam/cdn/Server;->setNumEntries$javasteam(I)V

    .line 33
    invoke-virtual {v1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesContentsystemSteamclient$CContentServerDirectory_ServerInfo;->getSteamChinaOnly()Z

    move-result v2

    invoke-virtual {v3, v2}, Lin/dragonbra/javasteam/steam/cdn/Server;->setSteamChinaOnly$javasteam(Z)V

    .line 34
    invoke-virtual {v1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesContentsystemSteamclient$CContentServerDirectory_ServerInfo;->getUseAsProxy()Z

    move-result v2

    invoke-virtual {v3, v2}, Lin/dragonbra/javasteam/steam/cdn/Server;->setUseAsProxy$javasteam(Z)V

    .line 35
    invoke-virtual {v1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesContentsystemSteamclient$CContentServerDirectory_ServerInfo;->getProxyRequestPathTemplate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lin/dragonbra/javasteam/steam/cdn/Server;->setProxyRequestPathTemplate$javasteam(Ljava/lang/String;)V

    .line 36
    invoke-virtual {v1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesContentsystemSteamclient$CContentServerDirectory_ServerInfo;->getAllowedAppIdsList()Ljava/util/List;

    move-result-object v1

    const-string v2, "getAllowedAppIdsList(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toIntArray(Ljava/util/Collection;)[I

    move-result-object v1

    invoke-virtual {v3, v1}, Lin/dragonbra/javasteam/steam/cdn/Server;->setAllowedAppIds$javasteam([I)V

    .line 1635
    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1d

    :cond_b0
    return-object v0
.end method
