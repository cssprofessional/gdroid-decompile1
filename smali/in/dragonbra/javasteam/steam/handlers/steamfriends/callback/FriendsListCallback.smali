###### Class in.dragonbra.javasteam.steam.handlers.steamfriends.callback.FriendsListCallback (in.dragonbra.javasteam.steam.handlers.steamfriends.callback.FriendsListCallback)
.class public final Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/FriendsListCallback;
.super Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;
.source "FriendsListCallback.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFriendsListCallback.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FriendsListCallback.kt\nin/dragonbra/javasteam/steam/handlers/steamfriends/callback/FriendsListCallback\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,23:1\n1563#2:24\n1634#2,3:25\n*S KotlinDebug\n*F\n+ 1 FriendsListCallback.kt\nin/dragonbra/javasteam/steam/handlers/steamfriends/callback/FriendsListCallback\n*L\n21#1:24\n21#1:25,3\n*E\n"
.end annotation


# instance fields
.field private final friendList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lin/dragonbra/javasteam/steam/handlers/steamfriends/Friend;",
            ">;"
        }
    .end annotation
.end field

.field private final isIncremental:Z


# direct methods
.method public constructor <init>(Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientFriendsList$Builder;)V
    .registers 5

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;-><init>()V

    .line 16
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientFriendsList$Builder;->getBincremental()Z

    move-result v0

    iput-boolean v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/FriendsListCallback;->isIncremental:Z

    .line 21
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientFriendsList$Builder;->getFriendsList()Ljava/util/List;

    move-result-object p1

    const-string v0, "getFriendsList(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1563
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1634
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_26
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1635
    check-cast v1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientFriendsList$Friend;

    .line 21
    new-instance v2, Lin/dragonbra/javasteam/steam/handlers/steamfriends/Friend;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v2, v1}, Lin/dragonbra/javasteam/steam/handlers/steamfriends/Friend;-><init>(Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientFriendsList$Friend;)V

    .line 1635
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_26

    .line 21
    :cond_3e
    iput-object v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/FriendsListCallback;->friendList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final getFriendList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lin/dragonbra/javasteam/steam/handlers/steamfriends/Friend;",
            ">;"
        }
    .end annotation

    .line 21
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/FriendsListCallback;->friendList:Ljava/util/List;

    return-object p0
.end method

.method public final isIncremental()Z
    .registers 1

    .line 16
    iget-boolean p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/FriendsListCallback;->isIncremental:Z

    return p0
.end method
