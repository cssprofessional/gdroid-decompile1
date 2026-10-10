###### Class in.dragonbra.javasteam.steam.handlers.steamfriends.Event (in.dragonbra.javasteam.steam.handlers.steamfriends.Event)
.class public final Lin/dragonbra/javasteam/steam/handlers/steamfriends/Event;
.super Ljava/lang/Object;
.source "Event.kt"


# instance fields
.field private final eventTime:Ljava/util/Date;

.field private final gameID:Lin/dragonbra/javasteam/types/GameID;

.field private final headline:Ljava/lang/String;

.field private final id:Lin/dragonbra/javasteam/types/GlobalID;

.field private final isJustPosted:Z


# direct methods
.method public constructor <init>(Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientClanState$Event;)V
    .registers 7

    const-string v0, "clanEvent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Lin/dragonbra/javasteam/types/GlobalID;

    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientClanState$Event;->getGid()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lin/dragonbra/javasteam/types/GlobalID;-><init>(J)V

    iput-object v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/Event;->id:Lin/dragonbra/javasteam/types/GlobalID;

    .line 22
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientClanState$Event;->getEventTime()I

    move-result v1

    int-to-long v1, v1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/Event;->eventTime:Ljava/util/Date;

    .line 27
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientClanState$Event;->getHeadline()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getHeadline(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/Event;->headline:Ljava/lang/String;

    .line 32
    new-instance v0, Lin/dragonbra/javasteam/types/GameID;

    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientClanState$Event;->getGameId()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lin/dragonbra/javasteam/types/GameID;-><init>(J)V

    iput-object v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/Event;->gameID:Lin/dragonbra/javasteam/types/GameID;

    .line 39
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientClanState$Event;->getJustPosted()Z

    move-result p1

    iput-boolean p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/Event;->isJustPosted:Z

    return-void
.end method


# virtual methods
.method public final getEventTime()Ljava/util/Date;
    .registers 1

    .line 22
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/Event;->eventTime:Ljava/util/Date;

    return-object p0
.end method

.method public final getGameID()Lin/dragonbra/javasteam/types/GameID;
    .registers 1

    .line 32
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/Event;->gameID:Lin/dragonbra/javasteam/types/GameID;

    return-object p0
.end method

.method public final getHeadline()Ljava/lang/String;
    .registers 1

    .line 27
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/Event;->headline:Ljava/lang/String;

    return-object p0
.end method

.method public final getId()Lin/dragonbra/javasteam/types/GlobalID;
    .registers 1

    .line 17
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/Event;->id:Lin/dragonbra/javasteam/types/GlobalID;

    return-object p0
.end method

.method public final isJustPosted()Z
    .registers 1

    .line 39
    iget-boolean p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/Event;->isJustPosted:Z

    return p0
.end method
