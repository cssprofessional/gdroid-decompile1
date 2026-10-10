###### Class in.dragonbra.javasteam.steam.handlers.steamfriends.PlayerNickname (in.dragonbra.javasteam.steam.handlers.steamfriends.PlayerNickname)
.class public final Lin/dragonbra/javasteam/steam/handlers/steamfriends/PlayerNickname;
.super Ljava/lang/Object;
.source "PlayerNickname.kt"


# instance fields
.field private final nickname:Ljava/lang/String;

.field private final steamID:Lin/dragonbra/javasteam/types/SteamID;


# direct methods
.method public constructor <init>(Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientPlayerNicknameList$PlayerNickname;)V
    .registers 5

    const-string v0, "nickname"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Lin/dragonbra/javasteam/types/SteamID;

    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientPlayerNicknameList$PlayerNickname;->getSteamid()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lin/dragonbra/javasteam/types/SteamID;-><init>(J)V

    iput-object v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/PlayerNickname;->steamID:Lin/dragonbra/javasteam/types/SteamID;

    .line 19
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientPlayerNicknameList$PlayerNickname;->getNickname()Ljava/lang/String;

    move-result-object p1

    const-string v0, "getNickname(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/PlayerNickname;->nickname:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getNickname()Ljava/lang/String;
    .registers 1

    .line 19
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/PlayerNickname;->nickname:Ljava/lang/String;

    return-object p0
.end method

.method public final getSteamID()Lin/dragonbra/javasteam/types/SteamID;
    .registers 1

    .line 14
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/PlayerNickname;->steamID:Lin/dragonbra/javasteam/types/SteamID;

    return-object p0
.end method
