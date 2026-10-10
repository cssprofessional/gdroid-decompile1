###### Class in.dragonbra.javasteam.steam.handlers.steamfriends.FriendMessage (in.dragonbra.javasteam.steam.handlers.steamfriends.FriendMessage)
.class public final Lin/dragonbra/javasteam/steam/handlers/steamfriends/FriendMessage;
.super Ljava/lang/Object;
.source "FriendMessage.kt"


# instance fields
.field private final message:Ljava/lang/String;

.field private final steamID:Lin/dragonbra/javasteam/types/SteamID;

.field private final timestamp:Ljava/util/Date;

.field private final unread:Z


# direct methods
.method public constructor <init>(Lin/dragonbra/javasteam/types/SteamID;ZLjava/lang/String;Ljava/util/Date;)V
    .registers 6

    const-string v0, "steamID"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "timestamp"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/FriendMessage;->steamID:Lin/dragonbra/javasteam/types/SteamID;

    .line 16
    iput-boolean p2, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/FriendMessage;->unread:Z

    .line 17
    iput-object p3, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/FriendMessage;->message:Ljava/lang/String;

    .line 18
    iput-object p4, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/FriendMessage;->timestamp:Ljava/util/Date;

    return-void
.end method


# virtual methods
.method public final getMessage()Ljava/lang/String;
    .registers 1

    .line 17
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/FriendMessage;->message:Ljava/lang/String;

    return-object p0
.end method

.method public final getSteamID()Lin/dragonbra/javasteam/types/SteamID;
    .registers 1

    .line 15
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/FriendMessage;->steamID:Lin/dragonbra/javasteam/types/SteamID;

    return-object p0
.end method

.method public final getTimestamp()Ljava/util/Date;
    .registers 1

    .line 18
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/FriendMessage;->timestamp:Ljava/util/Date;

    return-object p0
.end method

.method public final getUnread()Z
    .registers 1

    .line 16
    iget-boolean p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/FriendMessage;->unread:Z

    return p0
.end method
