###### Class in.dragonbra.javasteam.steam.handlers.steamgameserver.StatusDetails (in.dragonbra.javasteam.steam.handlers.steamgameserver.StatusDetails)
.class public final Lin/dragonbra/javasteam/steam/handlers/steamgameserver/StatusDetails;
.super Ljava/lang/Object;
.source "StatusDetails.kt"


# instance fields
.field private address:Ljava/net/InetAddress;

.field private appID:I

.field private gameDirectory:Ljava/lang/String;

.field private port:I

.field private queryPort:I

.field private serverFlags:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lin/dragonbra/javasteam/enums/EServerFlags;",
            ">;"
        }
    .end annotation
.end field

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/util/EnumSet;Ljava/lang/String;Ljava/net/InetAddress;IILjava/lang/String;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/EnumSet<",
            "Lin/dragonbra/javasteam/enums/EServerFlags;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/net/InetAddress;",
            "II",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "serverFlags"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamgameserver/StatusDetails;->appID:I

    .line 20
    iput-object p2, p0, Lin/dragonbra/javasteam/steam/handlers/steamgameserver/StatusDetails;->serverFlags:Ljava/util/EnumSet;

    .line 21
    iput-object p3, p0, Lin/dragonbra/javasteam/steam/handlers/steamgameserver/StatusDetails;->gameDirectory:Ljava/lang/String;

    .line 22
    iput-object p4, p0, Lin/dragonbra/javasteam/steam/handlers/steamgameserver/StatusDetails;->address:Ljava/net/InetAddress;

    .line 23
    iput p5, p0, Lin/dragonbra/javasteam/steam/handlers/steamgameserver/StatusDetails;->port:I

    .line 24
    iput p6, p0, Lin/dragonbra/javasteam/steam/handlers/steamgameserver/StatusDetails;->queryPort:I

    .line 25
    iput-object p7, p0, Lin/dragonbra/javasteam/steam/handlers/steamgameserver/StatusDetails;->version:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getAddress()Ljava/net/InetAddress;
    .registers 1

    .line 22
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamgameserver/StatusDetails;->address:Ljava/net/InetAddress;

    return-object p0
.end method

.method public final getAppID()I
    .registers 1

    .line 19
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamgameserver/StatusDetails;->appID:I

    return p0
.end method

.method public final getGameDirectory()Ljava/lang/String;
    .registers 1

    .line 21
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamgameserver/StatusDetails;->gameDirectory:Ljava/lang/String;

    return-object p0
.end method

.method public final getPort()I
    .registers 1

    .line 23
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamgameserver/StatusDetails;->port:I

    return p0
.end method

.method public final getQueryPort()I
    .registers 1

    .line 24
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamgameserver/StatusDetails;->queryPort:I

    return p0
.end method

.method public final getServerFlags()Ljava/util/EnumSet;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet<",
            "Lin/dragonbra/javasteam/enums/EServerFlags;",
            ">;"
        }
    .end annotation

    .line 20
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamgameserver/StatusDetails;->serverFlags:Ljava/util/EnumSet;

    return-object p0
.end method

.method public final getVersion()Ljava/lang/String;
    .registers 1

    .line 25
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamgameserver/StatusDetails;->version:Ljava/lang/String;

    return-object p0
.end method

.method public final setAddress(Ljava/net/InetAddress;)V
    .registers 2

    .line 22
    iput-object p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamgameserver/StatusDetails;->address:Ljava/net/InetAddress;

    return-void
.end method

.method public final setAppID(I)V
    .registers 2

    .line 19
    iput p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamgameserver/StatusDetails;->appID:I

    return-void
.end method

.method public final setGameDirectory(Ljava/lang/String;)V
    .registers 2

    .line 21
    iput-object p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamgameserver/StatusDetails;->gameDirectory:Ljava/lang/String;

    return-void
.end method

.method public final setPort(I)V
    .registers 2

    .line 23
    iput p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamgameserver/StatusDetails;->port:I

    return-void
.end method

.method public final setQueryPort(I)V
    .registers 2

    .line 24
    iput p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamgameserver/StatusDetails;->queryPort:I

    return-void
.end method

.method public final setServerFlags(Ljava/util/EnumSet;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet<",
            "Lin/dragonbra/javasteam/enums/EServerFlags;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    iput-object p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamgameserver/StatusDetails;->serverFlags:Ljava/util/EnumSet;

    return-void
.end method

.method public final setVersion(Ljava/lang/String;)V
    .registers 2

    .line 25
    iput-object p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamgameserver/StatusDetails;->version:Ljava/lang/String;

    return-void
.end method
