###### Class in.dragonbra.javasteam.steam.handlers.steamfriends.cache.AccountCache (in.dragonbra.javasteam.steam.handlers.steamfriends.cache.AccountCache)
.class public final Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/AccountCache;
.super Ljava/lang/Object;
.source "FriendCache.kt"


# instance fields
.field private final clans:Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/AccountList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/AccountList<",
            "Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/Clan;",
            ">;"
        }
    .end annotation
.end field

.field private final localUser:Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/User;

.field private final users:Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/AccountList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/AccountList<",
            "Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/User;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 11

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v9, Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/User;

    const/16 v7, 0x3f

    const/4 v8, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/User;-><init>(Lin/dragonbra/javasteam/enums/EFriendRelationship;Lin/dragonbra/javasteam/enums/EPersonaState;Ljava/util/EnumSet;ILin/dragonbra/javasteam/types/GameID;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v9, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/AccountCache;->localUser:Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/User;

    .line 59
    new-instance v0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/AccountList;

    const-class v1, Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/User;

    invoke-direct {v0, v1}, Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/AccountList;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/AccountCache;->users:Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/AccountList;

    .line 61
    new-instance v0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/AccountList;

    const-class v1, Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/Clan;

    invoke-direct {v0, v1}, Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/AccountList;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/AccountCache;->clans:Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/AccountList;

    return-void
.end method


# virtual methods
.method public final getClans()Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/AccountList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/AccountList<",
            "Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/Clan;",
            ">;"
        }
    .end annotation

    .line 61
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/AccountCache;->clans:Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/AccountList;

    return-object p0
.end method

.method public final getLocalUser()Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/User;
    .registers 1

    .line 57
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/AccountCache;->localUser:Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/User;

    return-object p0
.end method

.method public final getUser(Lin/dragonbra/javasteam/types/SteamID;)Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/User;
    .registers 3

    const-string v0, "steamId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/AccountCache;->isLocalUser(Lin/dragonbra/javasteam/types/SteamID;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/AccountCache;->localUser:Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/User;

    goto :goto_16

    :cond_e
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/AccountCache;->users:Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/AccountList;

    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/AccountList;->getAccount(Lin/dragonbra/javasteam/types/SteamID;)Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/Account;

    move-result-object p0

    check-cast p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/User;

    :goto_16
    return-object p0
.end method

.method public final getUsers()Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/AccountList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/AccountList<",
            "Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/User;",
            ">;"
        }
    .end annotation

    .line 59
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/AccountCache;->users:Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/AccountList;

    return-object p0
.end method

.method public final isLocalUser(Lin/dragonbra/javasteam/types/SteamID;)Z
    .registers 2

    .line 65
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/AccountCache;->localUser:Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/User;

    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/Account;->getSteamID()Lin/dragonbra/javasteam/types/SteamID;

    move-result-object p0

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
