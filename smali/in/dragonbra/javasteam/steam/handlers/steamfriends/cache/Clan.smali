###### Class in.dragonbra.javasteam.steam.handlers.steamfriends.cache.Clan (in.dragonbra.javasteam.steam.handlers.steamfriends.cache.Clan)
.class public final Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/Clan;
.super Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/Account;
.source "FriendCache.kt"


# instance fields
.field private relationship:Lin/dragonbra/javasteam/enums/EClanRelationship;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 0
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/Clan;-><init>(Lin/dragonbra/javasteam/enums/EClanRelationship;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lin/dragonbra/javasteam/enums/EClanRelationship;)V
    .registers 3

    const-string v0, "relationship"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-direct {p0}, Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/Account;-><init>()V

    .line 28
    iput-object p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/Clan;->relationship:Lin/dragonbra/javasteam/enums/EClanRelationship;

    return-void
.end method

.method public synthetic constructor <init>(Lin/dragonbra/javasteam/enums/EClanRelationship;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_6

    .line 28
    sget-object p1, Lin/dragonbra/javasteam/enums/EClanRelationship;->None:Lin/dragonbra/javasteam/enums/EClanRelationship;

    .line 27
    :cond_6
    invoke-direct {p0, p1}, Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/Clan;-><init>(Lin/dragonbra/javasteam/enums/EClanRelationship;)V

    return-void
.end method


# virtual methods
.method public final getRelationship()Lin/dragonbra/javasteam/enums/EClanRelationship;
    .registers 1

    .line 28
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/Clan;->relationship:Lin/dragonbra/javasteam/enums/EClanRelationship;

    return-object p0
.end method

.method public final setRelationship(Lin/dragonbra/javasteam/enums/EClanRelationship;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    iput-object p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/cache/Clan;->relationship:Lin/dragonbra/javasteam/enums/EClanRelationship;

    return-void
.end method
