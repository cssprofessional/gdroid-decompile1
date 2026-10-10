###### Class in.dragonbra.javasteam.steam.handlers.steammasterserver.callback.QueryCallback (in.dragonbra.javasteam.steam.handlers.steammasterserver.callback.QueryCallback)
.class public final Lin/dragonbra/javasteam/steam/handlers/steammasterserver/callback/QueryCallback;
.super Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;
.source "QueryCallback.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nQueryCallback.kt\nKotlin\n*S Kotlin\n*F\n+ 1 QueryCallback.kt\nin/dragonbra/javasteam/steam/handlers/steammasterserver/callback/QueryCallback\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,32:1\n1563#2:33\n1634#2,3:34\n*S KotlinDebug\n*F\n+ 1 QueryCallback.kt\nin/dragonbra/javasteam/steam/handlers/steammasterserver/callback/QueryCallback\n*L\n29#1:33\n29#1:34,3\n*E\n"
.end annotation


# instance fields
.field private final servers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lin/dragonbra/javasteam/steam/handlers/steammasterserver/Server;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lin/dragonbra/javasteam/base/IPacketMsg;)V
    .registers 5

    const-string v0, "packetMsg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;-><init>()V

    .line 21
    new-instance v0, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;

    .line 22
    const-class v1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverGameservers$CMsgGMSClientServerQueryResponse;

    .line 21
    invoke-direct {v0, v1, p1}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;-><init>(Ljava/lang/Class;Lin/dragonbra/javasteam/base/IPacketMsg;)V

    .line 25
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object p1

    check-cast p1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverGameservers$CMsgGMSClientServerQueryResponse$Builder;

    .line 27
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/AClientMsgProtobuf;->getTargetJobID()Lin/dragonbra/javasteam/types/JobID;

    move-result-object v0

    invoke-virtual {p0, v0}, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;->setJobID(Lin/dragonbra/javasteam/types/JobID;)V

    .line 29
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverGameservers$CMsgGMSClientServerQueryResponse$Builder;->getServersList()Ljava/util/List;

    move-result-object p1

    const-string v0, "getServersList(...)"

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

    :goto_34
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1635
    check-cast v1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverGameservers$CMsgGMSClientServerQueryResponse$Server;

    .line 29
    new-instance v2, Lin/dragonbra/javasteam/steam/handlers/steammasterserver/Server;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v2, v1}, Lin/dragonbra/javasteam/steam/handlers/steammasterserver/Server;-><init>(Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverGameservers$CMsgGMSClientServerQueryResponse$Server;)V

    .line 1635
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_34

    .line 29
    :cond_4c
    iput-object v0, p0, Lin/dragonbra/javasteam/steam/handlers/steammasterserver/callback/QueryCallback;->servers:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final getServers()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lin/dragonbra/javasteam/steam/handlers/steammasterserver/Server;",
            ">;"
        }
    .end annotation

    .line 18
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steammasterserver/callback/QueryCallback;->servers:Ljava/util/List;

    return-object p0
.end method
