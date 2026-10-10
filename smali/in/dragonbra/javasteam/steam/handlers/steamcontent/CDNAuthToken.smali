###### Class in.dragonbra.javasteam.steam.handlers.steamcontent.CDNAuthToken (in.dragonbra.javasteam.steam.handlers.steamcontent.CDNAuthToken)
.class public final Lin/dragonbra/javasteam/steam/handlers/steamcontent/CDNAuthToken;
.super Ljava/lang/Object;
.source "CDNAuthToken.kt"


# instance fields
.field private final expiration:Ljava/util/Date;

.field private final result:Lin/dragonbra/javasteam/enums/EResult;

.field private final token:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/callback/ServiceMethodResponse;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/callback/ServiceMethodResponse<",
            "Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesContentsystemSteamclient$CContentServerDirectory_GetCDNAuthToken_Response$Builder;",
            ">;)V"
        }
    .end annotation

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-virtual {p1}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/callback/ServiceMethodResponse;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesContentsystemSteamclient$CContentServerDirectory_GetCDNAuthToken_Response$Builder;

    invoke-virtual {v0}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesContentsystemSteamclient$CContentServerDirectory_GetCDNAuthToken_Response$Builder;->build()Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesContentsystemSteamclient$CContentServerDirectory_GetCDNAuthToken_Response;

    move-result-object v0

    .line 30
    invoke-virtual {p1}, Lin/dragonbra/javasteam/steam/handlers/steamunifiedmessages/callback/ServiceMethodResponse;->getResult()Lin/dragonbra/javasteam/enums/EResult;

    move-result-object p1

    iput-object p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamcontent/CDNAuthToken;->result:Lin/dragonbra/javasteam/enums/EResult;

    .line 31
    invoke-virtual {v0}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesContentsystemSteamclient$CContentServerDirectory_GetCDNAuthToken_Response;->getToken()Ljava/lang/String;

    move-result-object p1

    const-string v1, "getToken(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamcontent/CDNAuthToken;->token:Ljava/lang/String;

    .line 32
    new-instance p1, Ljava/util/Date;

    invoke-virtual {v0}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesContentsystemSteamclient$CContentServerDirectory_GetCDNAuthToken_Response;->getExpirationTime()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    invoke-direct {p1, v0, v1}, Ljava/util/Date;-><init>(J)V

    iput-object p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamcontent/CDNAuthToken;->expiration:Ljava/util/Date;

    return-void
.end method


# virtual methods
.method public final getExpiration()Ljava/util/Date;
    .registers 1

    .line 26
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamcontent/CDNAuthToken;->expiration:Ljava/util/Date;

    return-object p0
.end method

.method public final getResult()Lin/dragonbra/javasteam/enums/EResult;
    .registers 1

    .line 16
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamcontent/CDNAuthToken;->result:Lin/dragonbra/javasteam/enums/EResult;

    return-object p0
.end method

.method public final getToken()Ljava/lang/String;
    .registers 1

    .line 21
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamcontent/CDNAuthToken;->token:Ljava/lang/String;

    return-object p0
.end method
