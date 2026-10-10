###### Class in.dragonbra.javasteam.steam.handlers.steamuserstats.callback.LeaderboardEntriesCallback (in.dragonbra.javasteam.steam.handlers.steamuserstats.callback.LeaderboardEntriesCallback)
.class public final Lin/dragonbra/javasteam/steam/handlers/steamuserstats/callback/LeaderboardEntriesCallback;
.super Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;
.source "LeaderboardEntriesCallback.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLeaderboardEntriesCallback.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LeaderboardEntriesCallback.kt\nin/dragonbra/javasteam/steam/handlers/steamuserstats/callback/LeaderboardEntriesCallback\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,47:1\n1563#2:48\n1634#2,3:49\n*S KotlinDebug\n*F\n+ 1 LeaderboardEntriesCallback.kt\nin/dragonbra/javasteam/steam/handlers/steamuserstats/callback/LeaderboardEntriesCallback\n*L\n44#1:48\n44#1:49,3\n*E\n"
.end annotation


# instance fields
.field private final entries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lin/dragonbra/javasteam/steam/handlers/steamuserstats/LeaderboardEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final entryCount:I

.field private final result:Lin/dragonbra/javasteam/enums/EResult;


# direct methods
.method public constructor <init>(Lin/dragonbra/javasteam/base/IPacketMsg;)V
    .registers 5

    const-string v0, "packetMsg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;-><init>()V

    .line 33
    new-instance v0, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;

    .line 34
    const-class v1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverLbs$CMsgClientLBSGetLBEntriesResponse;

    .line 33
    invoke-direct {v0, v1, p1}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;-><init>(Ljava/lang/Class;Lin/dragonbra/javasteam/base/IPacketMsg;)V

    .line 37
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object p1

    check-cast p1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverLbs$CMsgClientLBSGetLBEntriesResponse$Builder;

    .line 39
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/AClientMsgProtobuf;->getTargetJobID()Lin/dragonbra/javasteam/types/JobID;

    move-result-object v0

    invoke-virtual {p0, v0}, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;->setJobID(Lin/dragonbra/javasteam/types/JobID;)V

    .line 41
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverLbs$CMsgClientLBSGetLBEntriesResponse$Builder;->getEresult()I

    move-result v0

    invoke-static {v0}, Lin/dragonbra/javasteam/enums/EResult;->from(I)Lin/dragonbra/javasteam/enums/EResult;

    move-result-object v0

    const-string v1, "from(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuserstats/callback/LeaderboardEntriesCallback;->result:Lin/dragonbra/javasteam/enums/EResult;

    .line 42
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverLbs$CMsgClientLBSGetLBEntriesResponse$Builder;->getLeaderboardEntryCount()I

    move-result v0

    iput v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuserstats/callback/LeaderboardEntriesCallback;->entryCount:I

    .line 44
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverLbs$CMsgClientLBSGetLBEntriesResponse$Builder;->getEntriesList()Ljava/util/List;

    move-result-object p1

    const-string v0, "getEntriesList(...)"

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

    :goto_49
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_61

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1635
    check-cast v1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverLbs$CMsgClientLBSGetLBEntriesResponse$Entry;

    .line 44
    new-instance v2, Lin/dragonbra/javasteam/steam/handlers/steamuserstats/LeaderboardEntry;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v2, v1}, Lin/dragonbra/javasteam/steam/handlers/steamuserstats/LeaderboardEntry;-><init>(Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverLbs$CMsgClientLBSGetLBEntriesResponse$Entry;)V

    .line 1635
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_49

    .line 44
    :cond_61
    iput-object v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuserstats/callback/LeaderboardEntriesCallback;->entries:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final getEntries()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lin/dragonbra/javasteam/steam/handlers/steamuserstats/LeaderboardEntry;",
            ">;"
        }
    .end annotation

    .line 30
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuserstats/callback/LeaderboardEntriesCallback;->entries:Ljava/util/List;

    return-object p0
.end method

.method public final getEntryCount()I
    .registers 1

    .line 25
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuserstats/callback/LeaderboardEntriesCallback;->entryCount:I

    return p0
.end method

.method public final getResult()Lin/dragonbra/javasteam/enums/EResult;
    .registers 1

    .line 20
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuserstats/callback/LeaderboardEntriesCallback;->result:Lin/dragonbra/javasteam/enums/EResult;

    return-object p0
.end method
