###### Class in.dragonbra.javasteam.steam.handlers.steamfriends.Friend (in.dragonbra.javasteam.steam.handlers.steamfriends.Friend)
.class public final Lin/dragonbra/javasteam/steam/handlers/steamfriends/Friend;
.super Ljava/lang/Object;
.source "Friend.kt"


# instance fields
.field private final relationship:Lin/dragonbra/javasteam/enums/EFriendRelationship;

.field private final steamID:Lin/dragonbra/javasteam/types/SteamID;


# direct methods
.method public constructor <init>(Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientFriendsList$Friend;)V
    .registers 5

    const-string v0, "friend"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Lin/dragonbra/javasteam/types/SteamID;

    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientFriendsList$Friend;->getUlfriendid()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lin/dragonbra/javasteam/types/SteamID;-><init>(J)V

    iput-object v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/Friend;->steamID:Lin/dragonbra/javasteam/types/SteamID;

    .line 20
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientFriendsList$Friend;->getEfriendrelationship()I

    move-result p1

    invoke-static {p1}, Lin/dragonbra/javasteam/enums/EFriendRelationship;->from(I)Lin/dragonbra/javasteam/enums/EFriendRelationship;

    move-result-object p1

    if-nez p1, :cond_1f

    sget-object p1, Lin/dragonbra/javasteam/enums/EFriendRelationship;->None:Lin/dragonbra/javasteam/enums/EFriendRelationship;

    :cond_1f
    iput-object p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/Friend;->relationship:Lin/dragonbra/javasteam/enums/EFriendRelationship;

    return-void
.end method


# virtual methods
.method public final getRelationship()Lin/dragonbra/javasteam/enums/EFriendRelationship;
    .registers 1

    .line 20
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/Friend;->relationship:Lin/dragonbra/javasteam/enums/EFriendRelationship;

    return-object p0
.end method

.method public final getSteamID()Lin/dragonbra/javasteam/types/SteamID;
    .registers 1

    .line 15
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/Friend;->steamID:Lin/dragonbra/javasteam/types/SteamID;

    return-object p0
.end method
