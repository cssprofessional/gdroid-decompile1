###### Class in.dragonbra.javasteam.steam.handlers.steamapps.PICSChangeData (in.dragonbra.javasteam.steam.handlers.steamapps.PICSChangeData)
.class public final Lin/dragonbra/javasteam/steam/handlers/steamapps/PICSChangeData;
.super Ljava/lang/Object;
.source "PICSChangeData.kt"


# instance fields
.field private final changeNumber:I

.field private final id:I

.field private final isNeedsToken:Z


# direct methods
.method public constructor <init>(Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverAppinfo$CMsgClientPICSChangesSinceResponse$AppChange;)V
    .registers 3

    const-string v0, "change"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverAppinfo$CMsgClientPICSChangesSinceResponse$AppChange;->getAppid()I

    move-result v0

    iput v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/PICSChangeData;->id:I

    .line 28
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverAppinfo$CMsgClientPICSChangesSinceResponse$AppChange;->getChangeNumber()I

    move-result v0

    iput v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/PICSChangeData;->changeNumber:I

    .line 29
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverAppinfo$CMsgClientPICSChangesSinceResponse$AppChange;->getNeedsToken()Z

    move-result p1

    iput-boolean p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/PICSChangeData;->isNeedsToken:Z

    return-void
.end method

.method public constructor <init>(Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverAppinfo$CMsgClientPICSChangesSinceResponse$PackageChange;)V
    .registers 3

    const-string v0, "change"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverAppinfo$CMsgClientPICSChangesSinceResponse$PackageChange;->getPackageid()I

    move-result v0

    iput v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/PICSChangeData;->id:I

    .line 34
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverAppinfo$CMsgClientPICSChangesSinceResponse$PackageChange;->getChangeNumber()I

    move-result v0

    iput v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/PICSChangeData;->changeNumber:I

    .line 35
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverAppinfo$CMsgClientPICSChangesSinceResponse$PackageChange;->getNeedsToken()Z

    move-result p1

    iput-boolean p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/PICSChangeData;->isNeedsToken:Z

    return-void
.end method


# virtual methods
.method public final getChangeNumber()I
    .registers 1

    .line 19
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/PICSChangeData;->changeNumber:I

    return p0
.end method

.method public final getId()I
    .registers 1

    .line 14
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/PICSChangeData;->id:I

    return p0
.end method

.method public final isNeedsToken()Z
    .registers 1

    .line 24
    iget-boolean p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/PICSChangeData;->isNeedsToken:Z

    return p0
.end method
