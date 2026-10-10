###### Class in.dragonbra.javasteam.steam.handlers.steamcontent.RequestPeerContentServer (in.dragonbra.javasteam.steam.handlers.steamcontent.RequestPeerContentServer)
.class public final Lin/dragonbra/javasteam/steam/handlers/steamcontent/RequestPeerContentServer;
.super Ljava/lang/Object;
.source "RequestPeerContentServer.kt"


# instance fields
.field private final accessToken:J

.field private final installedDepots:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final serverPort:I


# direct methods
.method public constructor <init>(ILjava/util/List;J)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;J)V"
        }
    .end annotation

    const-string v0, "installedDepots"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamcontent/RequestPeerContentServer;->serverPort:I

    .line 14
    iput-object p2, p0, Lin/dragonbra/javasteam/steam/handlers/steamcontent/RequestPeerContentServer;->installedDepots:Ljava/util/List;

    .line 15
    iput-wide p3, p0, Lin/dragonbra/javasteam/steam/handlers/steamcontent/RequestPeerContentServer;->accessToken:J

    return-void
.end method

.method public static synthetic copy$default(Lin/dragonbra/javasteam/steam/handlers/steamcontent/RequestPeerContentServer;ILjava/util/List;JILjava/lang/Object;)Lin/dragonbra/javasteam/steam/handlers/steamcontent/RequestPeerContentServer;
    .registers 7

    .line 0
    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_6

    iget p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamcontent/RequestPeerContentServer;->serverPort:I

    :cond_6
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_c

    iget-object p2, p0, Lin/dragonbra/javasteam/steam/handlers/steamcontent/RequestPeerContentServer;->installedDepots:Ljava/util/List;

    :cond_c
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_12

    iget-wide p3, p0, Lin/dragonbra/javasteam/steam/handlers/steamcontent/RequestPeerContentServer;->accessToken:J

    :cond_12
    invoke-virtual {p0, p1, p2, p3, p4}, Lin/dragonbra/javasteam/steam/handlers/steamcontent/RequestPeerContentServer;->copy(ILjava/util/List;J)Lin/dragonbra/javasteam/steam/handlers/steamcontent/RequestPeerContentServer;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .registers 1

    .line 0
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamcontent/RequestPeerContentServer;->serverPort:I

    return p0
.end method

.method public final component2()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 0
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamcontent/RequestPeerContentServer;->installedDepots:Ljava/util/List;

    return-object p0
.end method

.method public final component3()J
    .registers 3

    .line 0
    iget-wide v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamcontent/RequestPeerContentServer;->accessToken:J

    return-wide v0
.end method

.method public final copy(ILjava/util/List;J)Lin/dragonbra/javasteam/steam/handlers/steamcontent/RequestPeerContentServer;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;J)",
            "Lin/dragonbra/javasteam/steam/handlers/steamcontent/RequestPeerContentServer;"
        }
    .end annotation

    .line 0
    const-string p0, "installedDepots"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lin/dragonbra/javasteam/steam/handlers/steamcontent/RequestPeerContentServer;

    invoke-direct {p0, p1, p2, p3, p4}, Lin/dragonbra/javasteam/steam/handlers/steamcontent/RequestPeerContentServer;-><init>(ILjava/util/List;J)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lin/dragonbra/javasteam/steam/handlers/steamcontent/RequestPeerContentServer;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lin/dragonbra/javasteam/steam/handlers/steamcontent/RequestPeerContentServer;

    iget v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamcontent/RequestPeerContentServer;->serverPort:I

    iget v3, p1, Lin/dragonbra/javasteam/steam/handlers/steamcontent/RequestPeerContentServer;->serverPort:I

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget-object v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamcontent/RequestPeerContentServer;->installedDepots:Ljava/util/List;

    iget-object v3, p1, Lin/dragonbra/javasteam/steam/handlers/steamcontent/RequestPeerContentServer;->installedDepots:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    return v2

    :cond_1e
    iget-wide v3, p0, Lin/dragonbra/javasteam/steam/handlers/steamcontent/RequestPeerContentServer;->accessToken:J

    iget-wide p0, p1, Lin/dragonbra/javasteam/steam/handlers/steamcontent/RequestPeerContentServer;->accessToken:J

    cmp-long p0, v3, p0

    if-eqz p0, :cond_27

    return v2

    :cond_27
    return v0
.end method

.method public final getAccessToken()J
    .registers 3

    .line 15
    iget-wide v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamcontent/RequestPeerContentServer;->accessToken:J

    return-wide v0
.end method

.method public final getInstalledDepots()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 14
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamcontent/RequestPeerContentServer;->installedDepots:Ljava/util/List;

    return-object p0
.end method

.method public final getServerPort()I
    .registers 1

    .line 13
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamcontent/RequestPeerContentServer;->serverPort:I

    return p0
.end method

.method public hashCode()I
    .registers 4

    .line 0
    iget v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamcontent/RequestPeerContentServer;->serverPort:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamcontent/RequestPeerContentServer;->installedDepots:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamcontent/RequestPeerContentServer;->accessToken:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .line 19
    iget v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamcontent/RequestPeerContentServer;->serverPort:I

    .line 20
    iget-object v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamcontent/RequestPeerContentServer;->installedDepots:Ljava/util/List;

    .line 21
    iget-wide v2, p0, Lin/dragonbra/javasteam/steam/handlers/steamcontent/RequestPeerContentServer;->accessToken:J

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\n            RequestPeerContentServer(\n                serverPort="

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",\n                installedDepots="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ",\n                accessToken="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "\n            )\n    "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 23
    invoke-static {p0}, Lkotlin/text/StringsKt__IndentKt;->trimIndent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
