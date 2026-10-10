###### Class in.dragonbra.javasteam.steam.handlers.steamuserstats.callback.UserStatsCallback (in.dragonbra.javasteam.steam.handlers.steamuserstats.callback.UserStatsCallback)
.class public final Lin/dragonbra/javasteam/steam/handlers/steamuserstats/callback/UserStatsCallback;
.super Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;
.source "UserStatsCallback.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUserStatsCallback.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UserStatsCallback.kt\nin/dragonbra/javasteam/steam/handlers/steamuserstats/callback/UserStatsCallback\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,171:1\n1563#2:172\n1634#2,3:173\n1563#2:176\n1634#2,3:177\n*S KotlinDebug\n*F\n+ 1 UserStatsCallback.kt\nin/dragonbra/javasteam/steam/handlers/steamuserstats/callback/UserStatsCallback\n*L\n70#1:172\n70#1:173,3\n88#1:176\n88#1:177,3\n*E\n"
.end annotation


# instance fields
.field private final achievementBlocks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lin/dragonbra/javasteam/steam/handlers/steamuserstats/AchievementBlocks;",
            ">;"
        }
    .end annotation
.end field

.field private final crcStats:I

.field private final gameId:J

.field private final result:Lin/dragonbra/javasteam/enums/EResult;

.field private final schema:Lcom/google/protobuf/ByteString;

.field private final schemaKeyValues:Lin/dragonbra/javasteam/types/KeyValue;

.field private final stats:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lin/dragonbra/javasteam/steam/handlers/steamuserstats/Stats;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lin/dragonbra/javasteam/base/IPacketMsg;)V
    .registers 14

    const-string v0, "packetMsg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0}, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;-><init>()V

    .line 55
    new-instance v0, Lin/dragonbra/javasteam/types/KeyValue;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1, v2}, Lin/dragonbra/javasteam/types/KeyValue;-><init>(Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuserstats/callback/UserStatsCallback;->schemaKeyValues:Lin/dragonbra/javasteam/types/KeyValue;

    .line 58
    new-instance v0, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;

    .line 59
    const-class v1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverUserstats$CMsgClientGetUserStatsResponse;

    .line 58
    invoke-direct {v0, v1, p1}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;-><init>(Ljava/lang/Class;Lin/dragonbra/javasteam/base/IPacketMsg;)V

    .line 62
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object p1

    check-cast p1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverUserstats$CMsgClientGetUserStatsResponse$Builder;

    .line 64
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/AClientMsgProtobuf;->getTargetJobID()Lin/dragonbra/javasteam/types/JobID;

    move-result-object v0

    invoke-virtual {p0, v0}, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;->setJobID(Lin/dragonbra/javasteam/types/JobID;)V

    .line 65
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverUserstats$CMsgClientGetUserStatsResponse$Builder;->getEresult()I

    move-result v0

    invoke-static {v0}, Lin/dragonbra/javasteam/enums/EResult;->from(I)Lin/dragonbra/javasteam/enums/EResult;

    move-result-object v0

    const-string v1, "from(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuserstats/callback/UserStatsCallback;->result:Lin/dragonbra/javasteam/enums/EResult;

    .line 67
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverUserstats$CMsgClientGetUserStatsResponse$Builder;->getGameId()J

    move-result-wide v0

    iput-wide v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuserstats/callback/UserStatsCallback;->gameId:J

    .line 68
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverUserstats$CMsgClientGetUserStatsResponse$Builder;->getCrcStats()I

    move-result v0

    iput v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuserstats/callback/UserStatsCallback;->crcStats:I

    .line 69
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverUserstats$CMsgClientGetUserStatsResponse$Builder;->getSchema()Lcom/google/protobuf/ByteString;

    move-result-object v0

    const-string v1, "getSchema(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuserstats/callback/UserStatsCallback;->schema:Lcom/google/protobuf/ByteString;

    .line 70
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverUserstats$CMsgClientGetUserStatsResponse$Builder;->getStatsList()Ljava/util/List;

    move-result-object v0

    const-string v1, "getStatsList(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1563
    new-instance v1, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 1634
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_63
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_80

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 1635
    check-cast v4, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverUserstats$CMsgClientGetUserStatsResponse$Stats;

    .line 71
    new-instance v5, Lin/dragonbra/javasteam/steam/handlers/steamuserstats/Stats;

    invoke-virtual {v4}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverUserstats$CMsgClientGetUserStatsResponse$Stats;->getStatId()I

    move-result v6

    invoke-virtual {v4}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverUserstats$CMsgClientGetUserStatsResponse$Stats;->getStatValue()I

    move-result v4

    invoke-direct {v5, v6, v4}, Lin/dragonbra/javasteam/steam/handlers/steamuserstats/Stats;-><init>(II)V

    .line 1635
    invoke-interface {v1, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_63

    .line 70
    :cond_80
    iput-object v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamuserstats/callback/UserStatsCallback;->stats:Ljava/util/List;

    .line 77
    :try_start_82
    iget-object v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuserstats/callback/UserStatsCallback;->schema:Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->size()I

    move-result v0

    if-lez v0, :cond_a5

    .line 78
    new-instance v0, Lin/dragonbra/javasteam/util/stream/MemoryStream;

    iget-object v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamuserstats/callback/UserStatsCallback;->schema:Lcom/google/protobuf/ByteString;

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lin/dragonbra/javasteam/util/stream/MemoryStream;-><init>([B)V
    :try_end_95
    .catch Ljava/lang/Exception; {:try_start_82 .. :try_end_95} :catch_a5

    .line 79
    :try_start_95
    iget-object v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamuserstats/callback/UserStatsCallback;->schemaKeyValues:Lin/dragonbra/javasteam/types/KeyValue;

    invoke-virtual {v1, v0}, Lin/dragonbra/javasteam/types/KeyValue;->tryReadAsBinary(Ljava/io/InputStream;)Z
    :try_end_9a
    .catchall {:try_start_95 .. :try_end_9a} :catchall_9e

    .line 78
    :try_start_9a
    invoke-static {v0, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_9d
    .catch Ljava/lang/Exception; {:try_start_9a .. :try_end_9d} :catch_a5

    goto :goto_a5

    :catchall_9e
    move-exception v1

    :try_start_9f
    throw v1
    :try_end_a0
    .catchall {:try_start_9f .. :try_end_a0} :catchall_a0

    :catchall_a0
    move-exception v2

    :try_start_a1
    invoke-static {v0, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2
    :try_end_a5
    .catch Ljava/lang/Exception; {:try_start_a1 .. :try_end_a5} :catch_a5

    .line 88
    :catch_a5
    :cond_a5
    :goto_a5
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverUserstats$CMsgClientGetUserStatsResponse$Builder;->getAchievementBlocksList()Ljava/util/List;

    move-result-object p1

    const-string v0, "getAchievementBlocksList(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1563
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1, v3}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1634
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_bb
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1635
    check-cast v1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverUserstats$CMsgClientGetUserStatsResponse$Achievement_Blocks;

    .line 89
    new-instance v11, Lin/dragonbra/javasteam/steam/handlers/steamuserstats/AchievementBlocks;

    .line 90
    invoke-virtual {v1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverUserstats$CMsgClientGetUserStatsResponse$Achievement_Blocks;->getAchievementId()I

    move-result v3

    .line 91
    invoke-virtual {v1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverUserstats$CMsgClientGetUserStatsResponse$Achievement_Blocks;->getUnlockTimeList()Ljava/util/List;

    move-result-object v4

    const-string v1, "getUnlockTimeList(...)"

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, v11

    .line 89
    invoke-direct/range {v2 .. v10}, Lin/dragonbra/javasteam/steam/handlers/steamuserstats/AchievementBlocks;-><init>(ILjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1635
    invoke-interface {v0, v11}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_bb

    .line 88
    :cond_e4
    iput-object v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuserstats/callback/UserStatsCallback;->achievementBlocks:Ljava/util/List;

    return-void
.end method

.method public static synthetic getExpandedAchievements$default(Lin/dragonbra/javasteam/steam/handlers/steamuserstats/callback/UserStatsCallback;Ljava/lang/String;ILjava/lang/Object;)Ljava/util/List;
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_6

    .line 109
    const-string p1, "english"

    :cond_6
    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/steam/handlers/steamuserstats/callback/UserStatsCallback;->getExpandedAchievements(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getAchievementBlocks()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lin/dragonbra/javasteam/steam/handlers/steamuserstats/AchievementBlocks;",
            ">;"
        }
    .end annotation

    .line 50
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuserstats/callback/UserStatsCallback;->achievementBlocks:Ljava/util/List;

    return-object p0
.end method

.method public final getCrcStats()I
    .registers 1

    .line 35
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuserstats/callback/UserStatsCallback;->crcStats:I

    return p0
.end method

.method public final getExpandedAchievements()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lin/dragonbra/javasteam/steam/handlers/steamuserstats/AchievementBlocks;",
            ">;"
        }
    .end annotation

    .line 0
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, v0}, Lin/dragonbra/javasteam/steam/handlers/steamuserstats/callback/UserStatsCallback;->getExpandedAchievements$default(Lin/dragonbra/javasteam/steam/handlers/steamuserstats/callback/UserStatsCallback;Ljava/lang/String;ILjava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getExpandedAchievements(Ljava/lang/String;)Ljava/util/List;
    .registers 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lin/dragonbra/javasteam/steam/handlers/steamuserstats/AchievementBlocks;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "name"

    const-string v3, "language"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 113
    :try_start_10
    iget-object v4, v0, Lin/dragonbra/javasteam/steam/handlers/steamuserstats/callback/UserStatsCallback;->schemaKeyValues:Lin/dragonbra/javasteam/types/KeyValue;

    const-string v5, "stats"

    invoke-virtual {v4, v5}, Lin/dragonbra/javasteam/types/KeyValue;->get(Ljava/lang/String;)Lin/dragonbra/javasteam/types/KeyValue;

    move-result-object v4

    .line 114
    sget-object v5, Lin/dragonbra/javasteam/types/KeyValue;->INVALID:Lin/dragonbra/javasteam/types/KeyValue;

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_23

    .line 115
    iget-object v0, v0, Lin/dragonbra/javasteam/steam/handlers/steamuserstats/callback/UserStatsCallback;->achievementBlocks:Ljava/util/List;

    return-object v0

    .line 119
    :cond_23
    iget-object v5, v0, Lin/dragonbra/javasteam/steam/handlers/steamuserstats/callback/UserStatsCallback;->achievementBlocks:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_29
    :goto_29
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_f4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lin/dragonbra/javasteam/steam/handlers/steamuserstats/AchievementBlocks;

    .line 120
    invoke-virtual {v6}, Lin/dragonbra/javasteam/steam/handlers/steamuserstats/AchievementBlocks;->getAchievementId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lin/dragonbra/javasteam/types/KeyValue;->get(Ljava/lang/String;)Lin/dragonbra/javasteam/types/KeyValue;

    move-result-object v7

    .line 121
    const-string v8, "bits"

    invoke-virtual {v7, v8}, Lin/dragonbra/javasteam/types/KeyValue;->get(Ljava/lang/String;)Lin/dragonbra/javasteam/types/KeyValue;

    move-result-object v7

    .line 123
    sget-object v8, Lin/dragonbra/javasteam/types/KeyValue;->INVALID:Lin/dragonbra/javasteam/types/KeyValue;

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_ef

    .line 125
    invoke-virtual {v7}, Lin/dragonbra/javasteam/types/KeyValue;->getChildren()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_57
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_29

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lin/dragonbra/javasteam/types/KeyValue;

    .line 126
    const-string v9, "bit"

    invoke-virtual {v8, v9}, Lin/dragonbra/javasteam/types/KeyValue;->get(Ljava/lang/String;)Lin/dragonbra/javasteam/types/KeyValue;

    move-result-object v9

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v9, v12, v10, v11}, Lin/dragonbra/javasteam/types/KeyValue;->asInteger$default(Lin/dragonbra/javasteam/types/KeyValue;IILjava/lang/Object;)I

    move-result v9

    .line 127
    const-string v10, "display"

    invoke-virtual {v8, v10}, Lin/dragonbra/javasteam/types/KeyValue;->get(Ljava/lang/String;)Lin/dragonbra/javasteam/types/KeyValue;

    move-result-object v10

    .line 130
    invoke-virtual {v8, v2}, Lin/dragonbra/javasteam/types/KeyValue;->get(Ljava/lang/String;)Lin/dragonbra/javasteam/types/KeyValue;

    move-result-object v8

    invoke-virtual {v8}, Lin/dragonbra/javasteam/types/KeyValue;->getValue()Ljava/lang/String;

    move-result-object v16

    .line 131
    invoke-virtual {v10, v2}, Lin/dragonbra/javasteam/types/KeyValue;->get(Ljava/lang/String;)Lin/dragonbra/javasteam/types/KeyValue;

    move-result-object v8

    invoke-virtual {v8, v1}, Lin/dragonbra/javasteam/types/KeyValue;->get(Ljava/lang/String;)Lin/dragonbra/javasteam/types/KeyValue;

    move-result-object v8

    invoke-virtual {v8}, Lin/dragonbra/javasteam/types/KeyValue;->getValue()Ljava/lang/String;

    move-result-object v17

    .line 132
    const-string v8, "desc"

    invoke-virtual {v10, v8}, Lin/dragonbra/javasteam/types/KeyValue;->get(Ljava/lang/String;)Lin/dragonbra/javasteam/types/KeyValue;

    move-result-object v8

    invoke-virtual {v8, v1}, Lin/dragonbra/javasteam/types/KeyValue;->get(Ljava/lang/String;)Lin/dragonbra/javasteam/types/KeyValue;

    move-result-object v8

    invoke-virtual {v8}, Lin/dragonbra/javasteam/types/KeyValue;->getValue()Ljava/lang/String;

    move-result-object v18

    .line 133
    const-string v8, "icon"

    invoke-virtual {v10, v8}, Lin/dragonbra/javasteam/types/KeyValue;->get(Ljava/lang/String;)Lin/dragonbra/javasteam/types/KeyValue;

    move-result-object v8

    invoke-virtual {v8}, Lin/dragonbra/javasteam/types/KeyValue;->getValue()Ljava/lang/String;

    move-result-object v19

    .line 134
    const-string v8, "icon_gray"

    invoke-virtual {v10, v8}, Lin/dragonbra/javasteam/types/KeyValue;->get(Ljava/lang/String;)Lin/dragonbra/javasteam/types/KeyValue;

    move-result-object v8

    invoke-virtual {v8}, Lin/dragonbra/javasteam/types/KeyValue;->getValue()Ljava/lang/String;

    move-result-object v20

    .line 135
    const-string v8, "hidden"

    invoke-virtual {v10, v8}, Lin/dragonbra/javasteam/types/KeyValue;->get(Ljava/lang/String;)Lin/dragonbra/javasteam/types/KeyValue;

    move-result-object v8

    invoke-virtual {v8}, Lin/dragonbra/javasteam/types/KeyValue;->getValue()Ljava/lang/String;

    move-result-object v8

    const-string v10, "1"

    invoke-static {v8, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v21

    .line 138
    invoke-virtual {v6}, Lin/dragonbra/javasteam/steam/handlers/steamuserstats/AchievementBlocks;->getUnlockTime()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v9, v8, :cond_d4

    .line 139
    invoke-virtual {v6}, Lin/dragonbra/javasteam/steam/handlers/steamuserstats/AchievementBlocks;->getUnlockTime()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v12

    .line 146
    :cond_d4
    new-instance v8, Lin/dragonbra/javasteam/steam/handlers/steamuserstats/AchievementBlocks;

    .line 147
    invoke-virtual {v6}, Lin/dragonbra/javasteam/steam/handlers/steamuserstats/AchievementBlocks;->getAchievementId()I

    move-result v10

    mul-int/lit8 v10, v10, 0x64

    add-int v14, v10, v9

    .line 148
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v9}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v15

    move-object v13, v8

    .line 146
    invoke-direct/range {v13 .. v21}, Lin/dragonbra/javasteam/steam/handlers/steamuserstats/AchievementBlocks;-><init>(ILjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 145
    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_57

    .line 160
    :cond_ef
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_f2
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_f2} :catch_f5

    goto/16 :goto_29

    :cond_f4
    return-object v3

    .line 165
    :catch_f5
    iget-object v0, v0, Lin/dragonbra/javasteam/steam/handlers/steamuserstats/callback/UserStatsCallback;->achievementBlocks:Ljava/util/List;

    return-object v0
.end method

.method public final getGameId()J
    .registers 3

    .line 30
    iget-wide v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuserstats/callback/UserStatsCallback;->gameId:J

    return-wide v0
.end method

.method public final getResult()Lin/dragonbra/javasteam/enums/EResult;
    .registers 1

    .line 25
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuserstats/callback/UserStatsCallback;->result:Lin/dragonbra/javasteam/enums/EResult;

    return-object p0
.end method

.method public final getSchema()Lcom/google/protobuf/ByteString;
    .registers 1

    .line 40
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuserstats/callback/UserStatsCallback;->schema:Lcom/google/protobuf/ByteString;

    return-object p0
.end method

.method public final getSchemaKeyValues()Lin/dragonbra/javasteam/types/KeyValue;
    .registers 1

    .line 55
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuserstats/callback/UserStatsCallback;->schemaKeyValues:Lin/dragonbra/javasteam/types/KeyValue;

    return-object p0
.end method

.method public final getStats()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lin/dragonbra/javasteam/steam/handlers/steamuserstats/Stats;",
            ">;"
        }
    .end annotation

    .line 45
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuserstats/callback/UserStatsCallback;->stats:Ljava/util/List;

    return-object p0
.end method
