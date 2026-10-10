###### Class in.dragonbra.javasteam.steam.handlers.steamapps.PICSRequest (in.dragonbra.javasteam.steam.handlers.steamapps.PICSRequest)
.class public final Lin/dragonbra/javasteam/steam/handlers/steamapps/PICSRequest;
.super Ljava/lang/Object;
.source "PICSRequest.kt"


# instance fields
.field private accessToken:J

.field private id:I


# direct methods
.method public constructor <init>()V
    .registers 7

    .line 0
    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lin/dragonbra/javasteam/steam/handlers/steamapps/PICSRequest;-><init>(IJILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 8

    .line 0
    const/4 v4, 0x2

    const/4 v5, 0x0

    const-wide/16 v2, 0x0

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v5}, Lin/dragonbra/javasteam/steam/handlers/steamapps/PICSRequest;-><init>(IJILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(IJ)V
    .registers 4

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/PICSRequest;->id:I

    iput-wide p2, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/PICSRequest;->accessToken:J

    return-void
.end method

.method public synthetic constructor <init>(IJILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 6

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_5

    const/4 p1, 0x0

    :cond_5
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_b

    const-wide/16 p2, 0x0

    .line 13
    :cond_b
    invoke-direct {p0, p1, p2, p3}, Lin/dragonbra/javasteam/steam/handlers/steamapps/PICSRequest;-><init>(IJ)V

    return-void
.end method


# virtual methods
.method public final getAccessToken()J
    .registers 3

    .line 13
    iget-wide v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/PICSRequest;->accessToken:J

    return-wide v0
.end method

.method public final getId()I
    .registers 1

    .line 13
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/PICSRequest;->id:I

    return p0
.end method

.method public final setAccessToken(J)V
    .registers 3

    .line 13
    iput-wide p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/PICSRequest;->accessToken:J

    return-void
.end method

.method public final setId(I)V
    .registers 2

    .line 13
    iput p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/PICSRequest;->id:I

    return-void
.end method
