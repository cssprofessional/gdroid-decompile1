###### Class in.dragonbra.javasteam.steam.handlers.steamfriends.cache.Account (in.dragonbra.javasteam.steam.handlers.steamfriends.cache.Account)
.class public abstract Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/Account;
.super Ljava/lang/Object;
.source "FriendCache.kt"


# instance fields
.field private avatarHash:[B

.field private name:Ljava/lang/String;

.field private steamID:Lin/dragonbra/javasteam/types/SteamID;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Lin/dragonbra/javasteam/types/SteamID;

    invoke-direct {v0}, Lin/dragonbra/javasteam/types/SteamID;-><init>()V

    iput-object v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/Account;->steamID:Lin/dragonbra/javasteam/types/SteamID;

    return-void
.end method


# virtual methods
.method public final getAvatarHash()[B
    .registers 1

    .line 15
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/Account;->avatarHash:[B

    return-object p0
.end method

.method public final getName()Ljava/lang/String;
    .registers 1

    .line 14
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/Account;->name:Ljava/lang/String;

    return-object p0
.end method

.method public final getSteamID()Lin/dragonbra/javasteam/types/SteamID;
    .registers 1

    .line 13
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/Account;->steamID:Lin/dragonbra/javasteam/types/SteamID;

    return-object p0
.end method

.method public final setAvatarHash([B)V
    .registers 2

    .line 15
    iput-object p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/Account;->avatarHash:[B

    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .registers 2

    .line 14
    iput-object p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/Account;->name:Ljava/lang/String;

    return-void
.end method

.method public final setSteamID(Lin/dragonbra/javasteam/types/SteamID;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    iput-object p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/Account;->steamID:Lin/dragonbra/javasteam/types/SteamID;

    return-void
.end method
