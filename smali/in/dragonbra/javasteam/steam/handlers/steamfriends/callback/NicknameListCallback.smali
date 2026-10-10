###### Class in.dragonbra.javasteam.steam.handlers.steamfriends.callback.NicknameListCallback (in.dragonbra.javasteam.steam.handlers.steamfriends.callback.NicknameListCallback)
.class public final Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/NicknameListCallback;
.super Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;
.source "NicknameListCallback.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNicknameListCallback.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NicknameListCallback.kt\nin/dragonbra/javasteam/steam/handlers/steamfriends/callback/NicknameListCallback\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,28:1\n1563#2:29\n1634#2,3:30\n*S KotlinDebug\n*F\n+ 1 NicknameListCallback.kt\nin/dragonbra/javasteam/steam/handlers/steamfriends/callback/NicknameListCallback\n*L\n25#1:29\n25#1:30,3\n*E\n"
.end annotation


# instance fields
.field private final nicknames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lin/dragonbra/javasteam/steam/handlers/steamfriends/PlayerNickname;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lin/dragonbra/javasteam/base/IPacketMsg;)V
    .registers 5

    const-string v0, "packetMsg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;-><init>()V

    .line 20
    new-instance v0, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;

    .line 21
    const-class v1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientPlayerNicknameList;

    .line 20
    invoke-direct {v0, v1, p1}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;-><init>(Ljava/lang/Class;Lin/dragonbra/javasteam/base/IPacketMsg;)V

    .line 25
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object p1

    check-cast p1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientPlayerNicknameList$Builder;

    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientPlayerNicknameList$Builder;->getNicknamesList()Ljava/util/List;

    move-result-object p1

    const-string v0, "getNicknamesList(...)"

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

    :goto_2d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_45

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1635
    check-cast v1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientPlayerNicknameList$PlayerNickname;

    .line 25
    new-instance v2, Lin/dragonbra/javasteam/steam/handlers/steamfriends/PlayerNickname;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v2, v1}, Lin/dragonbra/javasteam/steam/handlers/steamfriends/PlayerNickname;-><init>(Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverFriends$CMsgClientPlayerNicknameList$PlayerNickname;)V

    .line 1635
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2d

    .line 25
    :cond_45
    iput-object v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/NicknameListCallback;->nicknames:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final getNicknames()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lin/dragonbra/javasteam/steam/handlers/steamfriends/PlayerNickname;",
            ">;"
        }
    .end annotation

    .line 17
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/callback/NicknameListCallback;->nicknames:Ljava/util/List;

    return-object p0
.end method
