###### Class in.dragonbra.javasteam.steam.handlers.steamuserstats.LeaderboardEntry (in.dragonbra.javasteam.steam.handlers.steamuserstats.LeaderboardEntry)
.class public final Lin/dragonbra/javasteam/steam/handlers/steamuserstats/LeaderboardEntry;
.super Ljava/lang/Object;
.source "LeaderboardEntry.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lin/dragonbra/javasteam/steam/handlers/steamuserstats/LeaderboardEntry$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLeaderboardEntry.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LeaderboardEntry.kt\nin/dragonbra/javasteam/steam/handlers/steamuserstats/LeaderboardEntry\n+ 2 LogManager.kt\nin/dragonbra/javasteam/util/log/LogManager\n*L\n1#1,65:1\n53#2:66\n*S KotlinDebug\n*F\n+ 1 LeaderboardEntry.kt\nin/dragonbra/javasteam/steam/handlers/steamuserstats/LeaderboardEntry\n*L\n18#1:66\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lin/dragonbra/javasteam/steam/handlers/steamuserstats/LeaderboardEntry$Companion;

.field private static final logger:Lin/dragonbra/javasteam/util/log/Logger;


# instance fields
.field private final details:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final globalRank:I

.field private final score:I

.field private final steamID:Lin/dragonbra/javasteam/types/SteamID;

.field private final ugcId:Lin/dragonbra/javasteam/types/UGCHandle;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lin/dragonbra/javasteam/steam/handlers/steamuserstats/LeaderboardEntry$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lin/dragonbra/javasteam/steam/handlers/steamuserstats/LeaderboardEntry$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lin/dragonbra/javasteam/steam/handlers/steamuserstats/LeaderboardEntry;->Companion:Lin/dragonbra/javasteam/steam/handlers/steamuserstats/LeaderboardEntry$Companion;

    .line 53
    const-class v0, Lin/dragonbra/javasteam/steam/handlers/steamuserstats/LeaderboardEntry;

    invoke-static {v0}, Lin/dragonbra/javasteam/util/log/LogManager;->getLogger(Ljava/lang/Class;)Lin/dragonbra/javasteam/util/log/Logger;

    move-result-object v0

    .line 18
    sput-object v0, Lin/dragonbra/javasteam/steam/handlers/steamuserstats/LeaderboardEntry;->logger:Lin/dragonbra/javasteam/util/log/Logger;

    return-void
.end method

.method public constructor <init>(Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverLbs$CMsgClientLBSGetLBEntriesResponse$Entry;)V
    .registers 8

    const-string v0, "entry"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Lin/dragonbra/javasteam/types/SteamID;

    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverLbs$CMsgClientLBSGetLBEntriesResponse$Entry;->getSteamIdUser()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lin/dragonbra/javasteam/types/SteamID;-><init>(J)V

    iput-object v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuserstats/LeaderboardEntry;->steamID:Lin/dragonbra/javasteam/types/SteamID;

    .line 29
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverLbs$CMsgClientLBSGetLBEntriesResponse$Entry;->getGlobalRank()I

    move-result v0

    iput v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuserstats/LeaderboardEntry;->globalRank:I

    .line 34
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverLbs$CMsgClientLBSGetLBEntriesResponse$Entry;->getScore()I

    move-result v0

    iput v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuserstats/LeaderboardEntry;->score:I

    .line 39
    new-instance v0, Lin/dragonbra/javasteam/types/UGCHandle;

    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverLbs$CMsgClientLBSGetLBEntriesResponse$Entry;->getUgcId()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lin/dragonbra/javasteam/types/UGCHandle;-><init>(J)V

    iput-object v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuserstats/LeaderboardEntry;->ugcId:Lin/dragonbra/javasteam/types/UGCHandle;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 49
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverLbs$CMsgClientLBSGetLBEntriesResponse$Entry;->getDetails()Lcom/google/protobuf/ByteString;

    move-result-object v1

    if-eqz v1, :cond_6a

    .line 50
    new-instance v1, Lin/dragonbra/javasteam/util/stream/MemoryStream;

    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverLbs$CMsgClientLBSGetLBEntriesResponse$Entry;->getDetails()Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object p1

    invoke-direct {v1, p1}, Lin/dragonbra/javasteam/util/stream/MemoryStream;-><init>([B)V

    .line 51
    new-instance p1, Lin/dragonbra/javasteam/util/stream/BinaryReader;

    invoke-direct {p1, v1}, Lin/dragonbra/javasteam/util/stream/BinaryReader;-><init>(Ljava/io/InputStream;)V

    .line 54
    :goto_47
    :try_start_47
    invoke-virtual {v1}, Lin/dragonbra/javasteam/util/stream/MemoryStream;->getLength()J

    move-result-wide v2

    invoke-virtual {v1}, Lin/dragonbra/javasteam/util/stream/MemoryStream;->getPosition()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x4

    cmp-long v2, v2, v4

    if-lez v2, :cond_6a

    .line 55
    invoke-virtual {p1}, Lin/dragonbra/javasteam/util/stream/BinaryReader;->readInt()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_61
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_61} :catch_62

    goto :goto_47

    :catch_62
    move-exception p1

    .line 58
    sget-object v1, Lin/dragonbra/javasteam/steam/handlers/steamuserstats/LeaderboardEntry;->logger:Lin/dragonbra/javasteam/util/log/Logger;

    const-string v2, "failed to read details"

    invoke-virtual {v1, v2, p1}, Lin/dragonbra/javasteam/util/log/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 62
    :cond_6a
    invoke-static {v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamuserstats/LeaderboardEntry;->details:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final getDetails()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 44
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuserstats/LeaderboardEntry;->details:Ljava/util/List;

    return-object p0
.end method

.method public final getGlobalRank()I
    .registers 1

    .line 29
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuserstats/LeaderboardEntry;->globalRank:I

    return p0
.end method

.method public final getScore()I
    .registers 1

    .line 34
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuserstats/LeaderboardEntry;->score:I

    return p0
.end method

.method public final getSteamID()Lin/dragonbra/javasteam/types/SteamID;
    .registers 1

    .line 24
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuserstats/LeaderboardEntry;->steamID:Lin/dragonbra/javasteam/types/SteamID;

    return-object p0
.end method

.method public final getUgcId()Lin/dragonbra/javasteam/types/UGCHandle;
    .registers 1

    .line 39
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamuserstats/LeaderboardEntry;->ugcId:Lin/dragonbra/javasteam/types/UGCHandle;

    return-object p0
.end method

###### Class in.dragonbra.javasteam.steam.handlers.steamuserstats.LeaderboardEntry.Companion (in.dragonbra.javasteam.steam.handlers.steamuserstats.LeaderboardEntry$Companion)
.class public final Lin/dragonbra/javasteam/steam/handlers/steamuserstats/LeaderboardEntry$Companion;
.super Ljava/lang/Object;
.source "LeaderboardEntry.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lin/dragonbra/javasteam/steam/handlers/steamuserstats/LeaderboardEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lin/dragonbra/javasteam/steam/handlers/steamuserstats/LeaderboardEntry$Companion;-><init>()V

    return-void
.end method
