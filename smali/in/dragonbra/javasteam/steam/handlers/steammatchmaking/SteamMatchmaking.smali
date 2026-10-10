###### Class in.dragonbra.javasteam.steam.handlers.steammatchmaking.SteamMatchmaking (in.dragonbra.javasteam.steam.handlers.steammatchmaking.SteamMatchmaking)
.class public final Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/SteamMatchmaking;
.super Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;
.source "SteamMatchmaking.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/SteamMatchmaking$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSteamMatchmaking.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SteamMatchmaking.kt\nin/dragonbra/javasteam/steam/handlers/steammatchmaking/SteamMatchmaking\n+ 2 SteamClient.kt\nin/dragonbra/javasteam/steam/steamclient/SteamClient\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,725:1\n170#2:726\n170#2:729\n1869#3,2:727\n1563#3:731\n1634#3,3:732\n1563#3:735\n1634#3,3:736\n1869#3,2:739\n1563#3:741\n1634#3,3:742\n1563#3:745\n1634#3,3:746\n1#4:730\n*S KotlinDebug\n*F\n+ 1 SteamMatchmaking.kt\nin/dragonbra/javasteam/steam/handlers/steammatchmaking/SteamMatchmaking\n*L\n93#1:726\n276#1:729\n257#1:727,2\n475#1:731\n475#1:732,3\n530#1:735\n530#1:736,3\n547#1:739,2\n569#1:741\n569#1:742,3\n633#1:745\n633#1:746,3\n*E\n"
.end annotation


# instance fields
.field private final lobbyCache:Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/LobbyCache;

.field private final lobbyManipulationRequests:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lin/dragonbra/javasteam/types/JobID;",
            "Lcom/google/protobuf/GeneratedMessage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$ylGsEjEtvqKEE55MjOnZ_suS0Lw(Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/SteamMatchmaking;Lin/dragonbra/javasteam/types/AsyncJobSingle;Ljava/lang/Throwable;)Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;
    .registers 3

    .line 0
    invoke-static {p0, p1, p2}, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/SteamMatchmaking;->attachIncompleteManipulationHandler$lambda$0(Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/SteamMatchmaking;Lin/dragonbra/javasteam/types/AsyncJobSingle;Ljava/lang/Throwable;)Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .registers 2

    .line 52
    invoke-direct {p0}, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;-><init>()V

    .line 68
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/SteamMatchmaking;->lobbyManipulationRequests:Ljava/util/concurrent/ConcurrentHashMap;

    .line 70
    new-instance v0, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/LobbyCache;

    invoke-direct {v0}, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/LobbyCache;-><init>()V

    iput-object v0, p0, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/SteamMatchmaking;->lobbyCache:Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/LobbyCache;

    return-void
.end method

.method public static final synthetic access$handleCreateLobbyResponse(Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/SteamMatchmaking;Lin/dragonbra/javasteam/base/IPacketMsg;)V
    .registers 2

    .line 52
    invoke-direct {p0, p1}, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/SteamMatchmaking;->handleCreateLobbyResponse(Lin/dragonbra/javasteam/base/IPacketMsg;)V

    return-void
.end method

.method private final attachIncompleteManipulationHandler(Lin/dragonbra/javasteam/types/AsyncJobSingle;)Lin/dragonbra/javasteam/types/AsyncJobSingle;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;",
            ">(",
            "Lin/dragonbra/javasteam/types/AsyncJobSingle<",
            "TT;>;)",
            "Lin/dragonbra/javasteam/types/AsyncJobSingle<",
            "TT;>;"
        }
    .end annotation

    .line 394
    invoke-virtual {p1}, Lin/dragonbra/javasteam/types/AsyncJobSingle;->toFuture()Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    new-instance v1, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/SteamMatchmaking$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/SteamMatchmaking$$ExternalSyntheticLambda0;-><init>(Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/SteamMatchmaking;Lin/dragonbra/javasteam/types/AsyncJobSingle;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CompletableFuture;->exceptionally(Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;

    return-object p1
.end method

.method private static final attachIncompleteManipulationHandler$lambda$0(Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/SteamMatchmaking;Lin/dragonbra/javasteam/types/AsyncJobSingle;Ljava/lang/Throwable;)Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;
    .registers 3

    .line 395
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/SteamMatchmaking;->lobbyManipulationRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lin/dragonbra/javasteam/types/AsyncJob;->getJobID()Lin/dragonbra/javasteam/types/JobID;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic createLobby$default(Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/SteamMatchmaking;ILin/dragonbra/javasteam/enums/ELobbyType;IILjava/util/Map;ILjava/lang/Object;)Lin/dragonbra/javasteam/types/AsyncJobSingle;
    .registers 14

    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_5

    const/4 p4, 0x0

    :cond_5
    move v4, p4

    and-int/lit8 p4, p6, 0x10

    if-eqz p4, :cond_b

    const/4 p5, 0x0

    :cond_b
    move-object v5, p5

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    .line 82
    invoke-virtual/range {v0 .. v5}, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/SteamMatchmaking;->createLobby(ILin/dragonbra/javasteam/enums/ELobbyType;IILjava/util/Map;)Lin/dragonbra/javasteam/types/AsyncJobSingle;

    move-result-object p0

    return-object p0
.end method

.method private final getHandler(Lin/dragonbra/javasteam/base/IPacketMsg;)Lkotlin/jvm/functions/Function1;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lin/dragonbra/javasteam/base/IPacketMsg;",
            ")",
            "Lkotlin/jvm/functions/Function1<",
            "Lin/dragonbra/javasteam/base/IPacketMsg;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 55
    invoke-interface {p1}, Lin/dragonbra/javasteam/base/IPacketMsg;->getMsgType()Lin/dragonbra/javasteam/enums/EMsg;

    move-result-object p1

    sget-object v0, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/SteamMatchmaking$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_4a

    const/4 p0, 0x0

    goto :goto_48

    .line 64
    :pswitch_11
    new-instance p1, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/SteamMatchmaking$getHandler$9;

    invoke-direct {p1, p0}, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/SteamMatchmaking$getHandler$9;-><init>(Ljava/lang/Object;)V

    :goto_16
    move-object p0, p1

    goto :goto_48

    .line 63
    :pswitch_18
    new-instance p1, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/SteamMatchmaking$getHandler$8;

    invoke-direct {p1, p0}, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/SteamMatchmaking$getHandler$8;-><init>(Ljava/lang/Object;)V

    goto :goto_16

    .line 62
    :pswitch_1e
    new-instance p1, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/SteamMatchmaking$getHandler$7;

    invoke-direct {p1, p0}, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/SteamMatchmaking$getHandler$7;-><init>(Ljava/lang/Object;)V

    goto :goto_16

    .line 61
    :pswitch_24
    new-instance p1, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/SteamMatchmaking$getHandler$6;

    invoke-direct {p1, p0}, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/SteamMatchmaking$getHandler$6;-><init>(Ljava/lang/Object;)V

    goto :goto_16

    .line 60
    :pswitch_2a
    new-instance p1, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/SteamMatchmaking$getHandler$5;

    invoke-direct {p1, p0}, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/SteamMatchmaking$getHandler$5;-><init>(Ljava/lang/Object;)V

    goto :goto_16

    .line 59
    :pswitch_30
    new-instance p1, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/SteamMatchmaking$getHandler$4;

    invoke-direct {p1, p0}, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/SteamMatchmaking$getHandler$4;-><init>(Ljava/lang/Object;)V

    goto :goto_16

    .line 58
    :pswitch_36
    new-instance p1, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/SteamMatchmaking$getHandler$3;

    invoke-direct {p1, p0}, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/SteamMatchmaking$getHandler$3;-><init>(Ljava/lang/Object;)V

    goto :goto_16

    .line 57
    :pswitch_3c
    new-instance p1, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/SteamMatchmaking$getHandler$2;

    invoke-direct {p1, p0}, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/SteamMatchmaking$getHandler$2;-><init>(Ljava/lang/Object;)V

    goto :goto_16

    .line 56
    :pswitch_42
    new-instance p1, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/SteamMatchmaking$getHandler$1;

    invoke-direct {p1, p0}, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/SteamMatchmaking$getHandler$1;-><init>(Ljava/lang/Object;)V

    goto :goto_16

    :goto_48
    return-object p0

    nop

    :pswitch_data_4a
    .packed-switch 0x1
        :pswitch_42
        :pswitch_3c
        :pswitch_36
        :pswitch_30
        :pswitch_2a
        :pswitch_24
        :pswitch_1e
        :pswitch_18
        :pswitch_11
    .end packed-switch
.end method

.method public static synthetic getLobbyList$default(Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/SteamMatchmaking;ILjava/util/List;IILjava/lang/Object;)Lin/dragonbra/javasteam/types/AsyncJobSingle;
    .registers 6

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_5

    const/4 p2, 0x0

    :cond_5
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_a

    const/4 p3, -0x1

    .line 236
    :cond_a
    invoke-virtual {p0, p1, p2, p3}, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/SteamMatchmaking;->getLobbyList(ILjava/util/List;I)Lin/dragonbra/javasteam/types/AsyncJobSingle;

    move-result-object p0

    return-object p0
.end method

.method private final handleCreateLobbyResponse(Lin/dragonbra/javasteam/base/IPacketMsg;)V
    .registers 22

    move-object/from16 v0, p0

    .line 404
    new-instance v1, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;

    .line 405
    const-class v2, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSCreateLobbyResponse;

    move-object/from16 v3, p1

    .line 404
    invoke-direct {v1, v2, v3}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;-><init>(Ljava/lang/Class;Lin/dragonbra/javasteam/base/IPacketMsg;)V

    .line 408
    invoke-virtual {v1}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v2

    check-cast v2, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSCreateLobbyResponse$Builder;

    .line 410
    iget-object v3, v0, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/SteamMatchmaking;->lobbyManipulationRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Lin/dragonbra/javasteam/base/AClientMsgProtobuf;->getTargetJobID()Lin/dragonbra/javasteam/types/JobID;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/GeneratedMessage;

    const-string v4, "from(...)"

    if-eqz v3, :cond_a5

    .line 411
    invoke-virtual {v2}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSCreateLobbyResponse$Builder;->getEresult()I

    move-result v5

    sget-object v6, Lin/dragonbra/javasteam/enums/EResult;->OK:Lin/dragonbra/javasteam/enums/EResult;

    invoke-virtual {v6}, Lin/dragonbra/javasteam/enums/EResult;->code()I

    move-result v6

    if-ne v5, v6, :cond_a5

    .line 412
    check-cast v3, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSCreateLobby;

    .line 413
    new-instance v13, Ljava/util/ArrayList;

    const/4 v5, 0x1

    invoke-direct {v13, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 414
    new-instance v5, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Member;

    invoke-virtual/range {p0 .. p0}, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;->getClient()Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    move-result-object v6

    invoke-virtual {v6}, Lin/dragonbra/javasteam/steam/CMClient;->getSteamID()Lin/dragonbra/javasteam/types/SteamID;

    move-result-object v7

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSCreateLobby;->getPersonaNameOwner()Ljava/lang/String;

    move-result-object v8

    const-string v6, "getPersonaNameOwner(...)"

    invoke-static {v8, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v10, 0x4

    const/4 v11, 0x0

    const/4 v9, 0x0

    move-object v6, v5

    invoke-direct/range {v6 .. v11}, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Member;-><init>(Lin/dragonbra/javasteam/types/SteamID;Ljava/lang/String;Ljava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 413
    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 417
    iget-object v15, v0, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/SteamMatchmaking;->lobbyCache:Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/LobbyCache;

    .line 418
    invoke-virtual {v3}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSCreateLobby;->getAppId()I

    move-result v14

    .line 419
    new-instance v12, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Lobby;

    .line 420
    new-instance v6, Lin/dragonbra/javasteam/types/SteamID;

    invoke-virtual {v2}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSCreateLobbyResponse$Builder;->getSteamIdLobby()J

    move-result-wide v7

    invoke-direct {v6, v7, v8}, Lin/dragonbra/javasteam/types/SteamID;-><init>(J)V

    .line 421
    invoke-virtual {v3}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSCreateLobby;->getLobbyType()I

    move-result v5

    invoke-static {v5}, Lin/dragonbra/javasteam/enums/ELobbyType;->from(I)Lin/dragonbra/javasteam/enums/ELobbyType;

    move-result-object v7

    invoke-static {v7, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 422
    invoke-virtual {v3}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSCreateLobby;->getLobbyFlags()I

    move-result v8

    .line 423
    invoke-virtual/range {p0 .. p0}, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;->getClient()Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    move-result-object v5

    invoke-virtual {v5}, Lin/dragonbra/javasteam/steam/CMClient;->getSteamID()Lin/dragonbra/javasteam/types/SteamID;

    move-result-object v9

    .line 424
    sget-object v5, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Lobby;->Companion:Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Lobby$Companion;

    invoke-virtual {v3}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSCreateLobby;->getMetadata()Lcom/google/protobuf/ByteString;

    move-result-object v10

    invoke-virtual {v5, v10}, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Lobby$Companion;->decodeMetadata$javasteam(Lcom/google/protobuf/ByteString;)Ljava/util/Map;

    move-result-object v10

    .line 425
    invoke-virtual {v3}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSCreateLobby;->getMaxMembers()I

    move-result v11

    const/4 v3, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x1

    move-object v5, v12

    move-object/from16 v18, v12

    move/from16 v12, v17

    move/from16 v19, v14

    move-object v14, v3

    move-object v3, v15

    move-object/from16 v15, v16

    .line 419
    invoke-direct/range {v5 .. v15}, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Lobby;-><init>(Lin/dragonbra/javasteam/types/SteamID;Lin/dragonbra/javasteam/enums/ELobbyType;ILin/dragonbra/javasteam/types/SteamID;Ljava/util/Map;IILjava/util/List;Ljava/lang/Float;Ljava/lang/Long;)V

    move-object/from16 v6, v18

    move/from16 v5, v19

    .line 417
    invoke-virtual {v3, v5, v6}, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/LobbyCache;->cacheLobby(ILin/dragonbra/javasteam/steam/handlers/steammatchmaking/Lobby;)V

    .line 435
    :cond_a5
    new-instance v3, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/callback/CreateLobbyCallback;

    .line 436
    invoke-virtual {v1}, Lin/dragonbra/javasteam/base/AClientMsgProtobuf;->getTargetJobID()Lin/dragonbra/javasteam/types/JobID;

    move-result-object v1

    .line 437
    invoke-virtual {v2}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSCreateLobbyResponse$Builder;->getAppId()I

    move-result v5

    .line 438
    invoke-virtual {v2}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSCreateLobbyResponse$Builder;->getEresult()I

    move-result v6

    invoke-static {v6}, Lin/dragonbra/javasteam/enums/EResult;->from(I)Lin/dragonbra/javasteam/enums/EResult;

    move-result-object v6

    invoke-static {v6, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 439
    new-instance v4, Lin/dragonbra/javasteam/types/SteamID;

    invoke-virtual {v2}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSCreateLobbyResponse$Builder;->getSteamIdLobby()J

    move-result-wide v7

    invoke-direct {v4, v7, v8}, Lin/dragonbra/javasteam/types/SteamID;-><init>(J)V

    .line 435
    invoke-direct {v3, v1, v5, v6, v4}, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/callback/CreateLobbyCallback;-><init>(Lin/dragonbra/javasteam/types/JobID;ILin/dragonbra/javasteam/enums/EResult;Lin/dragonbra/javasteam/types/SteamID;)V

    .line 440
    invoke-virtual/range {p0 .. p0}, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;->getClient()Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    move-result-object v0

    invoke-virtual {v0, v3}, Lin/dragonbra/javasteam/steam/steamclient/SteamClient;->postCallback(Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;)V

    return-void
.end method

.method public static synthetic setLobbyData$default(Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/SteamMatchmaking;ILin/dragonbra/javasteam/types/SteamID;Lin/dragonbra/javasteam/enums/ELobbyType;IILjava/util/Map;ILjava/lang/Object;)Lin/dragonbra/javasteam/types/AsyncJobSingle;
    .registers 16

    and-int/lit8 p8, p7, 0x10

    if-eqz p8, :cond_5

    const/4 p5, 0x0

    :cond_5
    move v5, p5

    and-int/lit8 p5, p7, 0x20

    if-eqz p5, :cond_b

    const/4 p6, 0x0

    :cond_b
    move-object v6, p6

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .line 130
    invoke-virtual/range {v0 .. v6}, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/SteamMatchmaking;->setLobbyData(ILin/dragonbra/javasteam/types/SteamID;Lin/dragonbra/javasteam/enums/ELobbyType;IILjava/util/Map;)Lin/dragonbra/javasteam/types/AsyncJobSingle;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final clearLobbyCache$javasteam()V
    .registers 1

    .line 386
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/SteamMatchmaking;->lobbyCache:Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/LobbyCache;

    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/LobbyCache;->clear()V

    return-void
.end method

.method public final createLobby(ILin/dragonbra/javasteam/enums/ELobbyType;I)Lin/dragonbra/javasteam/types/AsyncJobSingle;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lin/dragonbra/javasteam/enums/ELobbyType;",
            "I)",
            "Lin/dragonbra/javasteam/types/AsyncJobSingle<",
            "Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/callback/CreateLobbyCallback;",
            ">;"
        }
    .end annotation

    .line 0
    const-string v0, "lobbyType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v7, 0x18

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    invoke-static/range {v1 .. v8}, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/SteamMatchmaking;->createLobby$default(Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/SteamMatchmaking;ILin/dragonbra/javasteam/enums/ELobbyType;IILjava/util/Map;ILjava/lang/Object;)Lin/dragonbra/javasteam/types/AsyncJobSingle;

    move-result-object p0

    return-object p0
.end method

.method public final createLobby(ILin/dragonbra/javasteam/enums/ELobbyType;II)Lin/dragonbra/javasteam/types/AsyncJobSingle;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lin/dragonbra/javasteam/enums/ELobbyType;",
            "II)",
            "Lin/dragonbra/javasteam/types/AsyncJobSingle<",
            "Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/callback/CreateLobbyCallback;",
            ">;"
        }
    .end annotation

    .line 0
    const-string v0, "lobbyType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v7, 0x10

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v1 .. v8}, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/SteamMatchmaking;->createLobby$default(Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/SteamMatchmaking;ILin/dragonbra/javasteam/enums/ELobbyType;IILjava/util/Map;ILjava/lang/Object;)Lin/dragonbra/javasteam/types/AsyncJobSingle;

    move-result-object p0

    return-object p0
.end method

.method public final createLobby(ILin/dragonbra/javasteam/enums/ELobbyType;IILjava/util/Map;)Lin/dragonbra/javasteam/types/AsyncJobSingle;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lin/dragonbra/javasteam/enums/ELobbyType;",
            "II",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lin/dragonbra/javasteam/types/AsyncJobSingle<",
            "Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/callback/CreateLobbyCallback;",
            ">;"
        }
    .end annotation

    const-string v0, "lobbyType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;->getClient()Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    move-result-object v0

    invoke-virtual {v0}, Lin/dragonbra/javasteam/steam/CMClient;->getCellID()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_11

    const/4 p0, 0x0

    return-object p0

    .line 93
    :cond_11
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;->getClient()Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    move-result-object v0

    .line 170
    const-class v1, Lin/dragonbra/javasteam/steam/handlers/steamfriends/SteamFriends;

    invoke-virtual {v0, v1}, Lin/dragonbra/javasteam/steam/steamclient/SteamClient;->getHandler(Ljava/lang/Class;)Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/SteamFriends;

    .line 93
    invoke-virtual {v0}, Lin/dragonbra/javasteam/steam/handlers/steamfriends/SteamFriends;->getPersonaName()Ljava/lang/String;

    move-result-object v0

    .line 95
    new-instance v7, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;

    .line 97
    sget-object v3, Lin/dragonbra/javasteam/enums/EMsg;->ClientMMSCreateLobby:Lin/dragonbra/javasteam/enums/EMsg;

    const/4 v5, 0x4

    const/4 v6, 0x0

    .line 95
    const-class v2, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSCreateLobby;

    const/4 v4, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;-><init>(Ljava/lang/Class;Lin/dragonbra/javasteam/enums/EMsg;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 99
    invoke-virtual {v7}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v1

    check-cast v1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSCreateLobby$Builder;

    invoke-virtual {v1, p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSCreateLobby$Builder;->setAppId(I)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSCreateLobby$Builder;

    .line 100
    invoke-virtual {v7}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v1

    check-cast v1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSCreateLobby$Builder;

    invoke-virtual {p2}, Lin/dragonbra/javasteam/enums/ELobbyType;->code()I

    move-result p2

    invoke-virtual {v1, p2}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSCreateLobby$Builder;->setLobbyType(I)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSCreateLobby$Builder;

    .line 101
    invoke-virtual {v7}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object p2

    check-cast p2, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSCreateLobby$Builder;

    invoke-virtual {p2, p3}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSCreateLobby$Builder;->setMaxMembers(I)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSCreateLobby$Builder;

    .line 102
    invoke-virtual {v7}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object p2

    check-cast p2, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSCreateLobby$Builder;

    invoke-virtual {p2, p4}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSCreateLobby$Builder;->setLobbyFlags(I)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSCreateLobby$Builder;

    .line 103
    invoke-virtual {v7}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object p2

    check-cast p2, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSCreateLobby$Builder;

    sget-object p3, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Lobby;->Companion:Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Lobby$Companion;

    invoke-virtual {p3, p5}, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Lobby$Companion;->encodeMetadata$javasteam(Ljava/util/Map;)[B

    move-result-object p4

    invoke-virtual {p3, p4}, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Lobby$Companion;->toByteString$javasteam([B)Lcom/google/protobuf/ByteString;

    move-result-object p3

    invoke-virtual {p2, p3}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSCreateLobby$Builder;->setMetadata(Lcom/google/protobuf/ByteString;)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSCreateLobby$Builder;

    .line 104
    invoke-virtual {v7}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object p2

    check-cast p2, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSCreateLobby$Builder;

    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;->getClient()Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    move-result-object p3

    invoke-virtual {p3}, Lin/dragonbra/javasteam/steam/CMClient;->getCellID()Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p2, p3}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSCreateLobby$Builder;->setCellId(I)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSCreateLobby$Builder;

    .line 105
    invoke-virtual {v7}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object p2

    check-cast p2, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSCreateLobby$Builder;

    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;->getClient()Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    move-result-object p3

    invoke-virtual {p3}, Lin/dragonbra/javasteam/steam/CMClient;->getPublicIP()Ljava/net/InetAddress;

    move-result-object p3

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p3}, Lin/dragonbra/javasteam/util/NetHelpers;->getMsgIPAddress(Ljava/net/InetAddress;)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesBase$CMsgIPAddress;

    move-result-object p3

    invoke-virtual {p2, p3}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSCreateLobby$Builder;->setPublicIp(Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesBase$CMsgIPAddress;)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSCreateLobby$Builder;

    .line 106
    invoke-virtual {v7}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object p2

    check-cast p2, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSCreateLobby$Builder;

    invoke-virtual {p2, v0}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSCreateLobby$Builder;->setPersonaNameOwner(Ljava/lang/String;)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSCreateLobby$Builder;

    .line 108
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;->getClient()Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    move-result-object p2

    invoke-virtual {p2}, Lin/dragonbra/javasteam/steam/steamclient/SteamClient;->getNextJobID()Lin/dragonbra/javasteam/types/JobID;

    move-result-object p2

    invoke-virtual {v7, p2}, Lin/dragonbra/javasteam/base/AClientMsgProtobuf;->setSourceJobID(Lin/dragonbra/javasteam/types/JobID;)V

    .line 111
    invoke-virtual {p0, v7, p1}, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/SteamMatchmaking;->send(Lin/dragonbra/javasteam/base/ClientMsgProtobuf;I)V

    .line 113
    iget-object p1, p0, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/SteamMatchmaking;->lobbyManipulationRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v7}, Lin/dragonbra/javasteam/base/AClientMsgProtobuf;->getSourceJobID()Lin/dragonbra/javasteam/types/JobID;

    move-result-object p2

    invoke-virtual {v7}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object p3

    check-cast p3, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSCreateLobby$Builder;

    invoke-virtual {p3}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSCreateLobby$Builder;->build()Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSCreateLobby;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    new-instance p1, Lin/dragonbra/javasteam/types/AsyncJobSingle;

    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;->getClient()Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    move-result-object p2

    invoke-virtual {v7}, Lin/dragonbra/javasteam/base/AClientMsgProtobuf;->getSourceJobID()Lin/dragonbra/javasteam/types/JobID;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Lin/dragonbra/javasteam/types/AsyncJobSingle;-><init>(Lin/dragonbra/javasteam/steam/steamclient/SteamClient;Lin/dragonbra/javasteam/types/JobID;)V

    .line 114
    invoke-direct {p0, p1}, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/SteamMatchmaking;->attachIncompleteManipulationHandler(Lin/dragonbra/javasteam/types/AsyncJobSingle;)Lin/dragonbra/javasteam/types/AsyncJobSingle;

    move-result-object p0

    return-object p0
.end method

.method public final getLobby(ILin/dragonbra/javasteam/types/SteamID;)Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Lobby;
    .registers 4

    const-string v0, "lobbySteamId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 365
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/SteamMatchmaking;->lobbyCache:Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/LobbyCache;

    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/LobbyCache;->getLobby(ILin/dragonbra/javasteam/types/SteamID;)Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Lobby;

    move-result-object p0

    return-object p0
.end method

.method public final getLobbyData(ILin/dragonbra/javasteam/types/SteamID;)Lin/dragonbra/javasteam/types/AsyncJobSingle;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lin/dragonbra/javasteam/types/SteamID;",
            ")",
            "Lin/dragonbra/javasteam/types/AsyncJobSingle<",
            "Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/callback/LobbyDataCallback;",
            ">;"
        }
    .end annotation

    const-string v0, "lobbySteamId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 323
    new-instance v0, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;

    .line 325
    sget-object v3, Lin/dragonbra/javasteam/enums/EMsg;->ClientMMSGetLobbyData:Lin/dragonbra/javasteam/enums/EMsg;

    const/4 v5, 0x4

    const/4 v6, 0x0

    .line 323
    const-class v2, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSGetLobbyData;

    const/4 v4, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;-><init>(Ljava/lang/Class;Lin/dragonbra/javasteam/enums/EMsg;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 327
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v1

    check-cast v1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSGetLobbyData$Builder;

    invoke-virtual {v1, p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSGetLobbyData$Builder;->setAppId(I)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSGetLobbyData$Builder;

    .line 328
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v1

    check-cast v1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSGetLobbyData$Builder;

    invoke-virtual {p2}, Lin/dragonbra/javasteam/types/SteamID;->convertToUInt64()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSGetLobbyData$Builder;->setSteamIdLobby(J)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSGetLobbyData$Builder;

    .line 330
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;->getClient()Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    move-result-object p2

    invoke-virtual {p2}, Lin/dragonbra/javasteam/steam/steamclient/SteamClient;->getNextJobID()Lin/dragonbra/javasteam/types/JobID;

    move-result-object p2

    invoke-virtual {v0, p2}, Lin/dragonbra/javasteam/base/AClientMsgProtobuf;->setSourceJobID(Lin/dragonbra/javasteam/types/JobID;)V

    .line 333
    invoke-virtual {p0, v0, p1}, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/SteamMatchmaking;->send(Lin/dragonbra/javasteam/base/ClientMsgProtobuf;I)V

    .line 335
    new-instance p1, Lin/dragonbra/javasteam/types/AsyncJobSingle;

    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;->getClient()Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    move-result-object p0

    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/AClientMsgProtobuf;->getSourceJobID()Lin/dragonbra/javasteam/types/JobID;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lin/dragonbra/javasteam/types/AsyncJobSingle;-><init>(Lin/dragonbra/javasteam/steam/steamclient/SteamClient;Lin/dragonbra/javasteam/types/JobID;)V

    return-object p1
.end method

.method public final getLobbyList(I)Lin/dragonbra/javasteam/types/AsyncJobSingle;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lin/dragonbra/javasteam/types/AsyncJobSingle<",
            "Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/callback/GetLobbyListCallback;",
            ">;"
        }
    .end annotation

    .line 0
    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    invoke-static/range {v0 .. v5}, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/SteamMatchmaking;->getLobbyList$default(Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/SteamMatchmaking;ILjava/util/List;IILjava/lang/Object;)Lin/dragonbra/javasteam/types/AsyncJobSingle;

    move-result-object p0

    return-object p0
.end method

.method public final getLobbyList(ILjava/util/List;)Lin/dragonbra/javasteam/types/AsyncJobSingle;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "+",
            "Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Filter;",
            ">;)",
            "Lin/dragonbra/javasteam/types/AsyncJobSingle<",
            "Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/callback/GetLobbyListCallback;",
            ">;"
        }
    .end annotation

    .line 0
    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/SteamMatchmaking;->getLobbyList$default(Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/SteamMatchmaking;ILjava/util/List;IILjava/lang/Object;)Lin/dragonbra/javasteam/types/AsyncJobSingle;

    move-result-object p0

    return-object p0
.end method

.method public final getLobbyList(ILjava/util/List;I)Lin/dragonbra/javasteam/types/AsyncJobSingle;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "+",
            "Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Filter;",
            ">;I)",
            "Lin/dragonbra/javasteam/types/AsyncJobSingle<",
            "Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/callback/GetLobbyListCallback;",
            ">;"
        }
    .end annotation

    .line 241
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;->getClient()Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    move-result-object v0

    invoke-virtual {v0}, Lin/dragonbra/javasteam/steam/CMClient;->getCellID()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_c

    const/4 p0, 0x0

    return-object p0

    .line 245
    :cond_c
    new-instance v6, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;

    .line 247
    sget-object v2, Lin/dragonbra/javasteam/enums/EMsg;->ClientMMSGetLobbyList:Lin/dragonbra/javasteam/enums/EMsg;

    const/4 v4, 0x4

    const/4 v5, 0x0

    .line 245
    const-class v1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSGetLobbyList;

    const/4 v3, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;-><init>(Ljava/lang/Class;Lin/dragonbra/javasteam/enums/EMsg;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 249
    invoke-virtual {v6}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSGetLobbyList$Builder;

    invoke-virtual {v0, p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSGetLobbyList$Builder;->setAppId(I)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSGetLobbyList$Builder;

    .line 250
    invoke-virtual {v6}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSGetLobbyList$Builder;

    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;->getClient()Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    move-result-object v1

    invoke-virtual {v1}, Lin/dragonbra/javasteam/steam/CMClient;->getCellID()Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSGetLobbyList$Builder;->setCellId(I)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSGetLobbyList$Builder;

    .line 251
    invoke-virtual {v6}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSGetLobbyList$Builder;

    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;->getClient()Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    move-result-object v1

    invoke-virtual {v1}, Lin/dragonbra/javasteam/steam/CMClient;->getPublicIP()Ljava/net/InetAddress;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v1}, Lin/dragonbra/javasteam/util/NetHelpers;->getMsgIPAddress(Ljava/net/InetAddress;)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesBase$CMsgIPAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSGetLobbyList$Builder;->setPublicIp(Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesBase$CMsgIPAddress;)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSGetLobbyList$Builder;

    .line 252
    invoke-virtual {v6}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSGetLobbyList$Builder;

    invoke-virtual {v0, p3}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSGetLobbyList$Builder;->setNumLobbiesRequested(I)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSGetLobbyList$Builder;

    .line 254
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;->getClient()Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    move-result-object p3

    invoke-virtual {p3}, Lin/dragonbra/javasteam/steam/steamclient/SteamClient;->getNextJobID()Lin/dragonbra/javasteam/types/JobID;

    move-result-object p3

    invoke-virtual {v6, p3}, Lin/dragonbra/javasteam/base/AClientMsgProtobuf;->setSourceJobID(Lin/dragonbra/javasteam/types/JobID;)V

    if-eqz p2, :cond_8a

    .line 1869
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_6c
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_8a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Filter;

    .line 258
    invoke-virtual {v6}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSGetLobbyList$Builder;

    invoke-virtual {p3}, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Filter;->serialize()Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSGetLobbyList$Filter$Builder;

    move-result-object p3

    invoke-virtual {p3}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSGetLobbyList$Filter$Builder;->build()Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSGetLobbyList$Filter;

    move-result-object p3

    invoke-virtual {v0, p3}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSGetLobbyList$Builder;->addFilters(Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSGetLobbyList$Filter;)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSGetLobbyList$Builder;

    goto :goto_6c

    .line 261
    :cond_8a
    invoke-virtual {p0, v6, p1}, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/SteamMatchmaking;->send(Lin/dragonbra/javasteam/base/ClientMsgProtobuf;I)V

    .line 263
    new-instance p1, Lin/dragonbra/javasteam/types/AsyncJobSingle;

    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;->getClient()Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    move-result-object p0

    invoke-virtual {v6}, Lin/dragonbra/javasteam/base/AClientMsgProtobuf;->getSourceJobID()Lin/dragonbra/javasteam/types/JobID;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lin/dragonbra/javasteam/types/AsyncJobSingle;-><init>(Lin/dragonbra/javasteam/steam/steamclient/SteamClient;Lin/dragonbra/javasteam/types/JobID;)V

    return-object p1
.end method

.method public final handleGetLobbyListResponse(Lin/dragonbra/javasteam/base/IPacketMsg;)V
    .registers 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "packetMsg"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 524
    new-instance v2, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;

    .line 525
    const-class v3, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSGetLobbyListResponse;

    .line 524
    invoke-direct {v2, v3, v1}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;-><init>(Ljava/lang/Class;Lin/dragonbra/javasteam/base/IPacketMsg;)V

    .line 528
    invoke-virtual {v2}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v1

    check-cast v1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSGetLobbyListResponse$Builder;

    .line 530
    invoke-virtual {v1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSGetLobbyListResponse$Builder;->getLobbiesList()Ljava/util/List;

    move-result-object v3

    const-string v4, "getLobbiesList(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1563
    new-instance v4, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v3, v5}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 1634
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const-string v6, "from(...)"

    if-eqz v5, :cond_a8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 1635
    check-cast v5, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSGetLobbyListResponse$Lobby;

    .line 531
    iget-object v7, v0, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/SteamMatchmaking;->lobbyCache:Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/LobbyCache;

    invoke-virtual {v1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSGetLobbyListResponse$Builder;->getAppId()I

    move-result v8

    invoke-virtual {v5}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSGetLobbyListResponse$Lobby;->getSteamId()J

    move-result-wide v9

    invoke-virtual {v7, v8, v9, v10}, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/LobbyCache;->getLobby(IJ)Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Lobby;

    move-result-object v7

    const/4 v8, 0x0

    if-eqz v7, :cond_52

    .line 532
    invoke-virtual {v7}, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Lobby;->getMembers()Ljava/util/List;

    move-result-object v9

    goto :goto_53

    :cond_52
    move-object v9, v8

    .line 533
    :goto_53
    new-instance v15, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Lobby;

    .line 534
    new-instance v11, Lin/dragonbra/javasteam/types/SteamID;

    invoke-virtual {v5}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSGetLobbyListResponse$Lobby;->getSteamId()J

    move-result-wide v12

    invoke-direct {v11, v12, v13}, Lin/dragonbra/javasteam/types/SteamID;-><init>(J)V

    .line 535
    invoke-virtual {v5}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSGetLobbyListResponse$Lobby;->getLobbyType()I

    move-result v10

    invoke-static {v10}, Lin/dragonbra/javasteam/enums/ELobbyType;->from(I)Lin/dragonbra/javasteam/enums/ELobbyType;

    move-result-object v12

    invoke-static {v12, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 536
    invoke-virtual {v5}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSGetLobbyListResponse$Lobby;->getLobbyFlags()I

    move-result v13

    if-eqz v7, :cond_73

    .line 537
    invoke-virtual {v7}, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Lobby;->getOwnerSteamID()Lin/dragonbra/javasteam/types/SteamID;

    move-result-object v8

    :cond_73
    move-object v14, v8

    .line 538
    sget-object v6, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Lobby;->Companion:Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Lobby$Companion;

    invoke-virtual {v5}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSGetLobbyListResponse$Lobby;->getMetadata()Lcom/google/protobuf/ByteString;

    move-result-object v7

    invoke-virtual {v6, v7}, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Lobby$Companion;->decodeMetadata$javasteam(Lcom/google/protobuf/ByteString;)Ljava/util/Map;

    move-result-object v6

    .line 539
    invoke-virtual {v5}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSGetLobbyListResponse$Lobby;->getMaxMembers()I

    move-result v16

    .line 540
    invoke-virtual {v5}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSGetLobbyListResponse$Lobby;->getNumMembers()I

    move-result v17

    if-nez v9, :cond_8c

    .line 541
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v9

    :cond_8c
    move-object/from16 v18, v9

    .line 542
    invoke-virtual {v5}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSGetLobbyListResponse$Lobby;->getDistance()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v19

    .line 543
    invoke-virtual {v5}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSGetLobbyListResponse$Lobby;->getWeight()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    move-object v10, v15

    move-object v5, v15

    move-object v15, v6

    .line 533
    invoke-direct/range {v10 .. v20}, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Lobby;-><init>(Lin/dragonbra/javasteam/types/SteamID;Lin/dragonbra/javasteam/enums/ELobbyType;ILin/dragonbra/javasteam/types/SteamID;Ljava/util/Map;IILjava/util/List;Ljava/lang/Float;Ljava/lang/Long;)V

    .line 1635
    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2e

    .line 1869
    :cond_a8
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_ac
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Lobby;

    .line 548
    iget-object v7, v0, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/SteamMatchmaking;->lobbyCache:Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/LobbyCache;

    invoke-virtual {v1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSGetLobbyListResponse$Builder;->getAppId()I

    move-result v8

    invoke-virtual {v7, v8, v5}, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/LobbyCache;->cacheLobby(ILin/dragonbra/javasteam/steam/handlers/steammatchmaking/Lobby;)V

    goto :goto_ac

    .line 551
    :cond_c2
    new-instance v3, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/callback/GetLobbyListCallback;

    .line 552
    invoke-virtual {v2}, Lin/dragonbra/javasteam/base/AClientMsgProtobuf;->getTargetJobID()Lin/dragonbra/javasteam/types/JobID;

    move-result-object v2

    .line 553
    invoke-virtual {v1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSGetLobbyListResponse$Builder;->getAppId()I

    move-result v5

    .line 554
    invoke-virtual {v1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSGetLobbyListResponse$Builder;->getEresult()I

    move-result v1

    invoke-static {v1}, Lin/dragonbra/javasteam/enums/EResult;->from(I)Lin/dragonbra/javasteam/enums/EResult;

    move-result-object v1

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 551
    invoke-direct {v3, v2, v5, v1, v4}, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/callback/GetLobbyListCallback;-><init>(Lin/dragonbra/javasteam/types/JobID;ILin/dragonbra/javasteam/enums/EResult;Ljava/util/List;)V

    .line 556
    invoke-virtual/range {p0 .. p0}, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;->getClient()Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    move-result-object v0

    invoke-virtual {v0, v3}, Lin/dragonbra/javasteam/steam/steamclient/SteamClient;->postCallback(Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;)V

    return-void
.end method

.method public final handleJoinLobbyResponse(Lin/dragonbra/javasteam/base/IPacketMsg;)V
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "packetMsg"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 560
    new-instance v2, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;

    .line 561
    const-class v3, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSJoinLobbyResponse;

    .line 560
    invoke-direct {v2, v3, v1}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;-><init>(Ljava/lang/Class;Lin/dragonbra/javasteam/base/IPacketMsg;)V

    .line 564
    invoke-virtual {v2}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v1

    check-cast v1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSJoinLobbyResponse$Builder;

    .line 568
    invoke-virtual {v1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSJoinLobbyResponse$Builder;->hasSteamIdLobby()Z

    move-result v3

    const-string v4, "from(...)"

    const/4 v5, 0x0

    if-eqz v3, :cond_cc

    .line 569
    invoke-virtual {v1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSJoinLobbyResponse$Builder;->getMembersList()Ljava/util/List;

    move-result-object v3

    const-string v6, "getMembersList(...)"

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1563
    new-instance v15, Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-static {v3, v6}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v15, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 1634
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_37
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_68

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 1635
    check-cast v6, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSJoinLobbyResponse$Member;

    .line 570
    new-instance v7, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Member;

    .line 571
    new-instance v8, Lin/dragonbra/javasteam/types/SteamID;

    invoke-virtual {v6}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSJoinLobbyResponse$Member;->getSteamId()J

    move-result-wide v9

    invoke-direct {v8, v9, v10}, Lin/dragonbra/javasteam/types/SteamID;-><init>(J)V

    .line 572
    invoke-virtual {v6}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSJoinLobbyResponse$Member;->getPersonaName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "getPersonaName(...)"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 573
    sget-object v10, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Lobby;->Companion:Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Lobby$Companion;

    invoke-virtual {v6}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSJoinLobbyResponse$Member;->getMetadata()Lcom/google/protobuf/ByteString;

    move-result-object v6

    invoke-virtual {v10, v6}, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Lobby$Companion;->decodeMetadata$javasteam(Lcom/google/protobuf/ByteString;)Ljava/util/Map;

    move-result-object v6

    .line 570
    invoke-direct {v7, v8, v9, v6}, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Member;-><init>(Lin/dragonbra/javasteam/types/SteamID;Ljava/lang/String;Ljava/util/Map;)V

    .line 1635
    invoke-interface {v15, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_37

    .line 577
    :cond_68
    iget-object v3, v0, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/SteamMatchmaking;->lobbyCache:Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/LobbyCache;

    invoke-virtual {v1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSJoinLobbyResponse$Builder;->getAppId()I

    move-result v6

    invoke-virtual {v1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSJoinLobbyResponse$Builder;->getSteamIdLobby()J

    move-result-wide v7

    invoke-virtual {v3, v6, v7, v8}, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/LobbyCache;->getLobby(IJ)Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Lobby;

    move-result-object v3

    .line 579
    new-instance v6, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Lobby;

    .line 580
    new-instance v8, Lin/dragonbra/javasteam/types/SteamID;

    invoke-virtual {v1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSJoinLobbyResponse$Builder;->getSteamIdLobby()J

    move-result-wide v9

    invoke-direct {v8, v9, v10}, Lin/dragonbra/javasteam/types/SteamID;-><init>(J)V

    .line 581
    invoke-virtual {v1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSJoinLobbyResponse$Builder;->getLobbyType()I

    move-result v7

    invoke-static {v7}, Lin/dragonbra/javasteam/enums/ELobbyType;->from(I)Lin/dragonbra/javasteam/enums/ELobbyType;

    move-result-object v9

    invoke-static {v9, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 582
    invoke-virtual {v1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSJoinLobbyResponse$Builder;->getLobbyFlags()I

    move-result v10

    .line 583
    new-instance v11, Lin/dragonbra/javasteam/types/SteamID;

    invoke-virtual {v1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSJoinLobbyResponse$Builder;->getSteamIdOwner()J

    move-result-wide v12

    invoke-direct {v11, v12, v13}, Lin/dragonbra/javasteam/types/SteamID;-><init>(J)V

    .line 584
    sget-object v7, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Lobby;->Companion:Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Lobby$Companion;

    invoke-virtual {v1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSJoinLobbyResponse$Builder;->getMetadata()Lcom/google/protobuf/ByteString;

    move-result-object v12

    invoke-virtual {v7, v12}, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Lobby$Companion;->decodeMetadata$javasteam(Lcom/google/protobuf/ByteString;)Ljava/util/Map;

    move-result-object v12

    .line 585
    invoke-virtual {v1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSJoinLobbyResponse$Builder;->getMaxMembers()I

    move-result v13

    .line 586
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v14

    if-eqz v3, :cond_b4

    .line 588
    invoke-virtual {v3}, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Lobby;->getDistance()Ljava/lang/Float;

    move-result-object v7

    move-object/from16 v16, v7

    goto :goto_b6

    :cond_b4
    move-object/from16 v16, v5

    :goto_b6
    if-eqz v3, :cond_bc

    .line 589
    invoke-virtual {v3}, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Lobby;->getWeight()Ljava/lang/Long;

    move-result-object v5

    :cond_bc
    move-object/from16 v17, v5

    move-object v7, v6

    .line 579
    invoke-direct/range {v7 .. v17}, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Lobby;-><init>(Lin/dragonbra/javasteam/types/SteamID;Lin/dragonbra/javasteam/enums/ELobbyType;ILin/dragonbra/javasteam/types/SteamID;Ljava/util/Map;IILjava/util/List;Ljava/lang/Float;Ljava/lang/Long;)V

    .line 592
    iget-object v3, v0, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/SteamMatchmaking;->lobbyCache:Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/LobbyCache;

    invoke-virtual {v1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSJoinLobbyResponse$Builder;->getAppId()I

    move-result v5

    invoke-virtual {v3, v5, v6}, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/LobbyCache;->cacheLobby(ILin/dragonbra/javasteam/steam/handlers/steammatchmaking/Lobby;)V

    move-object v5, v6

    .line 595
    :cond_cc
    new-instance v3, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/callback/JoinLobbyCallback;

    .line 596
    invoke-virtual {v2}, Lin/dragonbra/javasteam/base/AClientMsgProtobuf;->getTargetJobID()Lin/dragonbra/javasteam/types/JobID;

    move-result-object v2

    .line 597
    invoke-virtual {v1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSJoinLobbyResponse$Builder;->getAppId()I

    move-result v6

    .line 598
    invoke-virtual {v1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSJoinLobbyResponse$Builder;->getChatRoomEnterResponse()I

    move-result v1

    invoke-static {v1}, Lin/dragonbra/javasteam/enums/EChatRoomEnterResponse;->from(I)Lin/dragonbra/javasteam/enums/EChatRoomEnterResponse;

    move-result-object v1

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 595
    invoke-direct {v3, v2, v6, v1, v5}, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/callback/JoinLobbyCallback;-><init>(Lin/dragonbra/javasteam/types/JobID;ILin/dragonbra/javasteam/enums/EChatRoomEnterResponse;Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Lobby;)V

    .line 600
    invoke-virtual/range {p0 .. p0}, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;->getClient()Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    move-result-object v0

    invoke-virtual {v0, v3}, Lin/dragonbra/javasteam/steam/steamclient/SteamClient;->postCallback(Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;)V

    return-void
.end method

.method public final handleLeaveLobbyResponse(Lin/dragonbra/javasteam/base/IPacketMsg;)V
    .registers 9

    const-string v0, "packetMsg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 604
    new-instance v0, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;

    .line 605
    const-class v1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSLeaveLobbyResponse;

    .line 604
    invoke-direct {v0, v1, p1}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;-><init>(Ljava/lang/Class;Lin/dragonbra/javasteam/base/IPacketMsg;)V

    .line 608
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object p1

    check-cast p1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSLeaveLobbyResponse$Builder;

    .line 610
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSLeaveLobbyResponse$Builder;->getEresult()I

    move-result v1

    sget-object v2, Lin/dragonbra/javasteam/enums/EResult;->OK:Lin/dragonbra/javasteam/enums/EResult;

    invoke-virtual {v2}, Lin/dragonbra/javasteam/enums/EResult;->code()I

    move-result v2

    if-ne v1, v2, :cond_2b

    .line 611
    iget-object v1, p0, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/SteamMatchmaking;->lobbyCache:Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/LobbyCache;

    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSLeaveLobbyResponse$Builder;->getAppId()I

    move-result v2

    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSLeaveLobbyResponse$Builder;->getSteamIdLobby()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/LobbyCache;->clearLobbyMembers(IJ)V

    .line 614
    :cond_2b
    new-instance v1, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/callback/LeaveLobbyCallback;

    .line 615
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/AClientMsgProtobuf;->getTargetJobID()Lin/dragonbra/javasteam/types/JobID;

    move-result-object v0

    .line 616
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSLeaveLobbyResponse$Builder;->getAppId()I

    move-result v2

    .line 617
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSLeaveLobbyResponse$Builder;->getEresult()I

    move-result v3

    invoke-static {v3}, Lin/dragonbra/javasteam/enums/EResult;->from(I)Lin/dragonbra/javasteam/enums/EResult;

    move-result-object v3

    const-string v4, "from(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 618
    new-instance v4, Lin/dragonbra/javasteam/types/SteamID;

    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSLeaveLobbyResponse$Builder;->getSteamIdLobby()J

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Lin/dragonbra/javasteam/types/SteamID;-><init>(J)V

    .line 614
    invoke-direct {v1, v0, v2, v3, v4}, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/callback/LeaveLobbyCallback;-><init>(Lin/dragonbra/javasteam/types/JobID;ILin/dragonbra/javasteam/enums/EResult;Lin/dragonbra/javasteam/types/SteamID;)V

    .line 619
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;->getClient()Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    move-result-object p0

    invoke-virtual {p0, v1}, Lin/dragonbra/javasteam/steam/steamclient/SteamClient;->postCallback(Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;)V

    return-void
.end method

.method public final handleLobbyData(Lin/dragonbra/javasteam/base/IPacketMsg;)V
    .registers 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "packetMsg"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 623
    new-instance v2, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;

    .line 624
    const-class v3, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSLobbyData;

    .line 623
    invoke-direct {v2, v3, v1}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;-><init>(Ljava/lang/Class;Lin/dragonbra/javasteam/base/IPacketMsg;)V

    .line 627
    invoke-virtual {v2}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v1

    check-cast v1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSLobbyData$Builder;

    .line 629
    iget-object v3, v0, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/SteamMatchmaking;->lobbyCache:Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/LobbyCache;

    invoke-virtual {v1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSLobbyData$Builder;->getAppId()I

    move-result v4

    invoke-virtual {v1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSLobbyData$Builder;->getSteamIdLobby()J

    move-result-wide v5

    invoke-virtual {v3, v4, v5, v6}, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/LobbyCache;->getLobby(IJ)Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Lobby;

    move-result-object v3

    .line 630
    invoke-virtual {v1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSLobbyData$Builder;->getMembersList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_38

    if-eqz v3, :cond_36

    .line 631
    invoke-virtual {v3}, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Lobby;->getMembers()Ljava/util/List;

    move-result-object v4

    goto :goto_82

    :cond_36
    move-object v4, v5

    goto :goto_82

    .line 633
    :cond_38
    invoke-virtual {v1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSLobbyData$Builder;->getMembersList()Ljava/util/List;

    move-result-object v4

    const-string v6, "getMembersList(...)"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1563
    new-instance v6, Ljava/util/ArrayList;

    const/16 v7, 0xa

    invoke-static {v4, v7}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 1634
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_50
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_81

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 1635
    check-cast v7, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSLobbyData$Member;

    .line 634
    new-instance v8, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Member;

    .line 635
    new-instance v9, Lin/dragonbra/javasteam/types/SteamID;

    invoke-virtual {v7}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSLobbyData$Member;->getSteamId()J

    move-result-wide v10

    invoke-direct {v9, v10, v11}, Lin/dragonbra/javasteam/types/SteamID;-><init>(J)V

    .line 636
    invoke-virtual {v7}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSLobbyData$Member;->getPersonaName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "getPersonaName(...)"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 637
    sget-object v11, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Lobby;->Companion:Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Lobby$Companion;

    invoke-virtual {v7}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSLobbyData$Member;->getMetadata()Lcom/google/protobuf/ByteString;

    move-result-object v7

    invoke-virtual {v11, v7}, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Lobby$Companion;->decodeMetadata$javasteam(Lcom/google/protobuf/ByteString;)Ljava/util/Map;

    move-result-object v7

    .line 634
    invoke-direct {v8, v9, v10, v7}, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Member;-><init>(Lin/dragonbra/javasteam/types/SteamID;Ljava/lang/String;Ljava/util/Map;)V

    .line 1635
    invoke-interface {v6, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_50

    :cond_81
    move-object v4, v6

    .line 642
    :goto_82
    new-instance v15, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Lobby;

    .line 643
    new-instance v7, Lin/dragonbra/javasteam/types/SteamID;

    invoke-virtual {v1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSLobbyData$Builder;->getSteamIdLobby()J

    move-result-wide v8

    invoke-direct {v7, v8, v9}, Lin/dragonbra/javasteam/types/SteamID;-><init>(J)V

    .line 644
    invoke-virtual {v1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSLobbyData$Builder;->getLobbyType()I

    move-result v6

    invoke-static {v6}, Lin/dragonbra/javasteam/enums/ELobbyType;->from(I)Lin/dragonbra/javasteam/enums/ELobbyType;

    move-result-object v8

    const-string v6, "from(...)"

    invoke-static {v8, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 645
    invoke-virtual {v1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSLobbyData$Builder;->getLobbyFlags()I

    move-result v9

    .line 646
    new-instance v10, Lin/dragonbra/javasteam/types/SteamID;

    invoke-virtual {v1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSLobbyData$Builder;->getSteamIdOwner()J

    move-result-wide v11

    invoke-direct {v10, v11, v12}, Lin/dragonbra/javasteam/types/SteamID;-><init>(J)V

    .line 647
    sget-object v6, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Lobby;->Companion:Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Lobby$Companion;

    invoke-virtual {v1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSLobbyData$Builder;->getMetadata()Lcom/google/protobuf/ByteString;

    move-result-object v11

    invoke-virtual {v6, v11}, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Lobby$Companion;->decodeMetadata$javasteam(Lcom/google/protobuf/ByteString;)Ljava/util/Map;

    move-result-object v11

    .line 648
    invoke-virtual {v1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSLobbyData$Builder;->getMaxMembers()I

    move-result v12

    .line 649
    invoke-virtual {v1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSLobbyData$Builder;->getNumMembers()I

    move-result v13

    if-nez v4, :cond_bf

    .line 650
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v4

    :cond_bf
    move-object v14, v4

    if-eqz v3, :cond_c7

    .line 651
    invoke-virtual {v3}, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Lobby;->getDistance()Ljava/lang/Float;

    move-result-object v4

    goto :goto_c8

    :cond_c7
    move-object v4, v5

    :goto_c8
    if-eqz v3, :cond_ce

    .line 652
    invoke-virtual {v3}, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Lobby;->getWeight()Ljava/lang/Long;

    move-result-object v5

    :cond_ce
    move-object/from16 v16, v5

    move-object v6, v15

    move-object v3, v15

    move-object v15, v4

    .line 642
    invoke-direct/range {v6 .. v16}, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Lobby;-><init>(Lin/dragonbra/javasteam/types/SteamID;Lin/dragonbra/javasteam/enums/ELobbyType;ILin/dragonbra/javasteam/types/SteamID;Ljava/util/Map;IILjava/util/List;Ljava/lang/Float;Ljava/lang/Long;)V

    .line 655
    iget-object v4, v0, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/SteamMatchmaking;->lobbyCache:Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/LobbyCache;

    invoke-virtual {v1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSLobbyData$Builder;->getAppId()I

    move-result v5

    invoke-virtual {v4, v5, v3}, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/LobbyCache;->cacheLobby(ILin/dragonbra/javasteam/steam/handlers/steammatchmaking/Lobby;)V

    .line 657
    new-instance v4, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/callback/LobbyDataCallback;

    .line 658
    invoke-virtual {v2}, Lin/dragonbra/javasteam/base/AClientMsgProtobuf;->getTargetJobID()Lin/dragonbra/javasteam/types/JobID;

    move-result-object v2

    .line 659
    invoke-virtual {v1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSLobbyData$Builder;->getAppId()I

    move-result v1

    .line 657
    invoke-direct {v4, v2, v1, v3}, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/callback/LobbyDataCallback;-><init>(Lin/dragonbra/javasteam/types/JobID;ILin/dragonbra/javasteam/steam/handlers/steammatchmaking/Lobby;)V

    .line 661
    invoke-virtual/range {p0 .. p0}, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;->getClient()Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    move-result-object v0

    invoke-virtual {v0, v4}, Lin/dragonbra/javasteam/steam/steamclient/SteamClient;->postCallback(Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;)V

    return-void
.end method

.method public handleMsg(Lin/dragonbra/javasteam/base/IPacketMsg;)V
    .registers 3

    const-string v0, "packetMsg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 382
    invoke-direct {p0, p1}, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/SteamMatchmaking;->getHandler(Lin/dragonbra/javasteam/base/IPacketMsg;)Lkotlin/jvm/functions/Function1;

    move-result-object p0

    if-eqz p0, :cond_e

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e
    return-void
.end method

.method public final handleSetLobbyDataResponse(Lin/dragonbra/javasteam/base/IPacketMsg;)V
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "packetMsg"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 444
    new-instance v2, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;

    .line 445
    const-class v3, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSSetLobbyDataResponse;

    .line 444
    invoke-direct {v2, v3, v1}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;-><init>(Ljava/lang/Class;Lin/dragonbra/javasteam/base/IPacketMsg;)V

    .line 448
    invoke-virtual {v2}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v1

    check-cast v1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSSetLobbyDataResponse$Builder;

    .line 450
    iget-object v3, v0, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/SteamMatchmaking;->lobbyManipulationRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Lin/dragonbra/javasteam/base/AClientMsgProtobuf;->getTargetJobID()Lin/dragonbra/javasteam/types/JobID;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/GeneratedMessage;

    const-string v4, "from(...)"

    if-eqz v3, :cond_df

    .line 451
    invoke-virtual {v1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSSetLobbyDataResponse$Builder;->getEresult()I

    move-result v5

    sget-object v6, Lin/dragonbra/javasteam/enums/EResult;->OK:Lin/dragonbra/javasteam/enums/EResult;

    invoke-virtual {v6}, Lin/dragonbra/javasteam/enums/EResult;->code()I

    move-result v6

    if-ne v5, v6, :cond_df

    .line 452
    check-cast v3, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSSetLobbyData;

    .line 453
    iget-object v5, v0, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/SteamMatchmaking;->lobbyCache:Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/LobbyCache;

    invoke-virtual {v3}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSSetLobbyData;->getAppId()I

    move-result v6

    invoke-virtual {v3}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSSetLobbyData;->getSteamIdLobby()J

    move-result-wide v7

    invoke-virtual {v5, v6, v7, v8}, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/LobbyCache;->getLobby(IJ)Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Lobby;

    move-result-object v5

    if-eqz v5, :cond_df

    .line 456
    sget-object v6, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Lobby;->Companion:Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Lobby$Companion;

    invoke-virtual {v3}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSSetLobbyData;->getMetadata()Lcom/google/protobuf/ByteString;

    move-result-object v7

    invoke-virtual {v6, v7}, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Lobby$Companion;->decodeMetadata$javasteam(Lcom/google/protobuf/ByteString;)Ljava/util/Map;

    move-result-object v13

    .line 458
    invoke-virtual {v3}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSSetLobbyData;->getSteamIdMember()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_95

    .line 459
    iget-object v6, v0, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/SteamMatchmaking;->lobbyCache:Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/LobbyCache;

    .line 460
    invoke-virtual {v3}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSSetLobbyData;->getAppId()I

    move-result v7

    .line 461
    new-instance v15, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Lobby;

    .line 462
    invoke-virtual {v5}, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Lobby;->getSteamID()Lin/dragonbra/javasteam/types/SteamID;

    move-result-object v9

    .line 463
    invoke-virtual {v3}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSSetLobbyData;->getLobbyType()I

    move-result v8

    invoke-static {v8}, Lin/dragonbra/javasteam/enums/ELobbyType;->from(I)Lin/dragonbra/javasteam/enums/ELobbyType;

    move-result-object v10

    invoke-static {v10, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 464
    invoke-virtual {v3}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSSetLobbyData;->getLobbyFlags()I

    move-result v11

    .line 465
    invoke-virtual {v5}, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Lobby;->getOwnerSteamID()Lin/dragonbra/javasteam/types/SteamID;

    move-result-object v12

    .line 467
    invoke-virtual {v3}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSSetLobbyData;->getMaxMembers()I

    move-result v14

    .line 468
    invoke-virtual {v5}, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Lobby;->getNumMembers()I

    move-result v3

    .line 469
    invoke-virtual {v5}, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Lobby;->getMembers()Ljava/util/List;

    move-result-object v16

    .line 470
    invoke-virtual {v5}, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Lobby;->getDistance()Ljava/lang/Float;

    move-result-object v17

    .line 471
    invoke-virtual {v5}, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Lobby;->getWeight()Ljava/lang/Long;

    move-result-object v18

    move-object v8, v15

    move-object v5, v15

    move v15, v3

    .line 461
    invoke-direct/range {v8 .. v18}, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Lobby;-><init>(Lin/dragonbra/javasteam/types/SteamID;Lin/dragonbra/javasteam/enums/ELobbyType;ILin/dragonbra/javasteam/types/SteamID;Ljava/util/Map;IILjava/util/List;Ljava/lang/Float;Ljava/lang/Long;)V

    .line 459
    invoke-virtual {v6, v7, v5}, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/LobbyCache;->cacheLobby(ILin/dragonbra/javasteam/steam/handlers/steammatchmaking/Lobby;)V

    goto :goto_df

    .line 475
    :cond_95
    invoke-virtual {v5}, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Lobby;->getMembers()Ljava/util/List;

    move-result-object v6

    .line 1563
    new-instance v7, Ljava/util/ArrayList;

    const/16 v8, 0xa

    invoke-static {v6, v8}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 1634
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_a8
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_d6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 1635
    check-cast v8, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Member;

    .line 476
    invoke-virtual {v8}, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Member;->getSteamID()Lin/dragonbra/javasteam/types/SteamID;

    move-result-object v9

    invoke-virtual {v9}, Lin/dragonbra/javasteam/types/SteamID;->convertToUInt64()J

    move-result-wide v9

    invoke-virtual {v3}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSSetLobbyData;->getSteamIdMember()J

    move-result-wide v11

    cmp-long v9, v9, v11

    if-nez v9, :cond_d2

    .line 477
    new-instance v9, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Member;

    invoke-virtual {v8}, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Member;->getSteamID()Lin/dragonbra/javasteam/types/SteamID;

    move-result-object v10

    invoke-virtual {v8}, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Member;->getPersonaName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v9, v10, v8, v13}, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Member;-><init>(Lin/dragonbra/javasteam/types/SteamID;Ljava/lang/String;Ljava/util/Map;)V

    move-object v8, v9

    .line 1635
    :cond_d2
    invoke-interface {v7, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_a8

    .line 483
    :cond_d6
    iget-object v6, v0, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/SteamMatchmaking;->lobbyCache:Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/LobbyCache;

    invoke-virtual {v3}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSSetLobbyData;->getAppId()I

    move-result v3

    invoke-virtual {v6, v3, v5, v7}, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/LobbyCache;->updateLobbyMembers(ILin/dragonbra/javasteam/steam/handlers/steammatchmaking/Lobby;Ljava/util/List;)V

    .line 489
    :cond_df
    :goto_df
    new-instance v3, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/callback/SetLobbyDataCallback;

    .line 490
    invoke-virtual {v2}, Lin/dragonbra/javasteam/base/AClientMsgProtobuf;->getTargetJobID()Lin/dragonbra/javasteam/types/JobID;

    move-result-object v2

    .line 491
    invoke-virtual {v1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSSetLobbyDataResponse$Builder;->getAppId()I

    move-result v5

    .line 492
    invoke-virtual {v1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSSetLobbyDataResponse$Builder;->getEresult()I

    move-result v6

    invoke-static {v6}, Lin/dragonbra/javasteam/enums/EResult;->from(I)Lin/dragonbra/javasteam/enums/EResult;

    move-result-object v6

    invoke-static {v6, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 493
    new-instance v4, Lin/dragonbra/javasteam/types/SteamID;

    invoke-virtual {v1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSSetLobbyDataResponse$Builder;->getSteamIdLobby()J

    move-result-wide v7

    invoke-direct {v4, v7, v8}, Lin/dragonbra/javasteam/types/SteamID;-><init>(J)V

    .line 489
    invoke-direct {v3, v2, v5, v6, v4}, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/callback/SetLobbyDataCallback;-><init>(Lin/dragonbra/javasteam/types/JobID;ILin/dragonbra/javasteam/enums/EResult;Lin/dragonbra/javasteam/types/SteamID;)V

    .line 494
    invoke-virtual/range {p0 .. p0}, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;->getClient()Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    move-result-object v0

    invoke-virtual {v0, v3}, Lin/dragonbra/javasteam/steam/steamclient/SteamClient;->postCallback(Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;)V

    return-void
.end method

.method public final handleSetLobbyOwnerResponse(Lin/dragonbra/javasteam/base/IPacketMsg;)V
    .registers 10

    const-string v0, "packetMsg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 498
    new-instance v0, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;

    .line 499
    const-class v1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSSetLobbyOwnerResponse;

    .line 498
    invoke-direct {v0, v1, p1}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;-><init>(Ljava/lang/Class;Lin/dragonbra/javasteam/base/IPacketMsg;)V

    .line 502
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object p1

    check-cast p1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSSetLobbyOwnerResponse$Builder;

    .line 504
    iget-object v1, p0, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/SteamMatchmaking;->lobbyManipulationRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/AClientMsgProtobuf;->getTargetJobID()Lin/dragonbra/javasteam/types/JobID;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/GeneratedMessage;

    if-eqz v1, :cond_3f

    .line 505
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSSetLobbyOwnerResponse$Builder;->getEresult()I

    move-result v2

    sget-object v3, Lin/dragonbra/javasteam/enums/EResult;->OK:Lin/dragonbra/javasteam/enums/EResult;

    invoke-virtual {v3}, Lin/dragonbra/javasteam/enums/EResult;->code()I

    move-result v3

    if-ne v2, v3, :cond_3f

    .line 506
    check-cast v1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSSetLobbyOwner;

    .line 507
    iget-object v2, p0, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/SteamMatchmaking;->lobbyCache:Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/LobbyCache;

    .line 508
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSSetLobbyOwnerResponse$Builder;->getAppId()I

    move-result v3

    .line 509
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSSetLobbyOwnerResponse$Builder;->getSteamIdLobby()J

    move-result-wide v4

    .line 510
    invoke-virtual {v1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSSetLobbyOwner;->getSteamIdNewOwner()J

    move-result-wide v6

    .line 507
    invoke-virtual/range {v2 .. v7}, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/LobbyCache;->updateLobbyOwner(IJJ)V

    .line 515
    :cond_3f
    new-instance v1, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/callback/SetLobbyOwnerCallback;

    .line 516
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/AClientMsgProtobuf;->getTargetJobID()Lin/dragonbra/javasteam/types/JobID;

    move-result-object v0

    .line 517
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSSetLobbyOwnerResponse$Builder;->getAppId()I

    move-result v2

    .line 518
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSSetLobbyOwnerResponse$Builder;->getEresult()I

    move-result v3

    invoke-static {v3}, Lin/dragonbra/javasteam/enums/EResult;->from(I)Lin/dragonbra/javasteam/enums/EResult;

    move-result-object v3

    const-string v4, "from(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 519
    new-instance v4, Lin/dragonbra/javasteam/types/SteamID;

    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSSetLobbyOwnerResponse$Builder;->getSteamIdLobby()J

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Lin/dragonbra/javasteam/types/SteamID;-><init>(J)V

    .line 515
    invoke-direct {v1, v0, v2, v3, v4}, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/callback/SetLobbyOwnerCallback;-><init>(Lin/dragonbra/javasteam/types/JobID;ILin/dragonbra/javasteam/enums/EResult;Lin/dragonbra/javasteam/types/SteamID;)V

    .line 520
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;->getClient()Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    move-result-object p0

    invoke-virtual {p0, v1}, Lin/dragonbra/javasteam/steam/steamclient/SteamClient;->postCallback(Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;)V

    return-void
.end method

.method public final handleUserJoinedLobby(Lin/dragonbra/javasteam/base/IPacketMsg;)V
    .registers 12

    const-string v0, "packetMsg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 665
    new-instance v0, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;

    .line 666
    const-class v1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSUserJoinedLobby;

    .line 665
    invoke-direct {v0, v1, p1}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;-><init>(Ljava/lang/Class;Lin/dragonbra/javasteam/base/IPacketMsg;)V

    .line 669
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object p1

    check-cast p1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSUserJoinedLobby$Builder;

    .line 671
    iget-object v0, p0, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/SteamMatchmaking;->lobbyCache:Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/LobbyCache;

    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSUserJoinedLobby$Builder;->getAppId()I

    move-result v1

    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSUserJoinedLobby$Builder;->getSteamIdLobby()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/LobbyCache;->getLobby(IJ)Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Lobby;

    move-result-object v6

    if-eqz v6, :cond_5e

    .line 673
    invoke-virtual {v6}, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Lobby;->getMembers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5e

    .line 674
    iget-object v4, p0, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/SteamMatchmaking;->lobbyCache:Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/LobbyCache;

    .line 675
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSUserJoinedLobby$Builder;->getAppId()I

    move-result v5

    .line 677
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSUserJoinedLobby$Builder;->getSteamIdUser()J

    move-result-wide v7

    .line 678
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSUserJoinedLobby$Builder;->getPersonaName()Ljava/lang/String;

    move-result-object v9

    const-string v0, "getPersonaName(...)"

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 674
    invoke-virtual/range {v4 .. v9}, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/LobbyCache;->addLobbyMember(ILin/dragonbra/javasteam/steam/handlers/steammatchmaking/Lobby;JLjava/lang/String;)Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Member;

    move-result-object v0

    if-eqz v0, :cond_5e

    .line 682
    new-instance v1, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/callback/UserJoinedLobbyCallback;

    .line 683
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSUserJoinedLobby$Builder;->getAppId()I

    move-result v2

    .line 684
    new-instance v3, Lin/dragonbra/javasteam/types/SteamID;

    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSUserJoinedLobby$Builder;->getSteamIdLobby()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Lin/dragonbra/javasteam/types/SteamID;-><init>(J)V

    .line 682
    invoke-direct {v1, v2, v3, v0}, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/callback/UserJoinedLobbyCallback;-><init>(ILin/dragonbra/javasteam/types/SteamID;Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Member;)V

    .line 686
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;->getClient()Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    move-result-object p0

    invoke-virtual {p0, v1}, Lin/dragonbra/javasteam/steam/steamclient/SteamClient;->postCallback(Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;)V

    :cond_5e
    return-void
.end method

.method public final handleUserLeftLobby(Lin/dragonbra/javasteam/base/IPacketMsg;)V
    .registers 8

    const-string v0, "packetMsg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 692
    new-instance v0, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;

    .line 693
    const-class v1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSUserLeftLobby;

    .line 692
    invoke-direct {v0, v1, p1}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;-><init>(Ljava/lang/Class;Lin/dragonbra/javasteam/base/IPacketMsg;)V

    .line 696
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object p1

    check-cast p1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSUserLeftLobby$Builder;

    .line 698
    iget-object v0, p0, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/SteamMatchmaking;->lobbyCache:Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/LobbyCache;

    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSUserLeftLobby$Builder;->getAppId()I

    move-result v1

    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSUserLeftLobby$Builder;->getSteamIdLobby()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/LobbyCache;->getLobby(IJ)Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Lobby;

    move-result-object v0

    if-eqz v0, :cond_75

    .line 700
    invoke-virtual {v0}, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Lobby;->getMembers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_75

    .line 701
    iget-object v1, p0, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/SteamMatchmaking;->lobbyCache:Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/LobbyCache;

    .line 702
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSUserLeftLobby$Builder;->getAppId()I

    move-result v2

    .line 704
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSUserLeftLobby$Builder;->getSteamIdUser()J

    move-result-wide v3

    .line 701
    invoke-virtual {v1, v2, v0, v3, v4}, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/LobbyCache;->removeLobbyMember(ILin/dragonbra/javasteam/steam/handlers/steammatchmaking/Lobby;J)Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Member;

    move-result-object v0

    if-nez v0, :cond_3d

    return-void

    .line 711
    :cond_3d
    invoke-virtual {v0}, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Member;->getSteamID()Lin/dragonbra/javasteam/types/SteamID;

    move-result-object v1

    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;->getClient()Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    move-result-object v2

    invoke-virtual {v2}, Lin/dragonbra/javasteam/steam/CMClient;->getSteamID()Lin/dragonbra/javasteam/types/SteamID;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 712
    iget-object v1, p0, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/SteamMatchmaking;->lobbyCache:Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/LobbyCache;

    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSUserLeftLobby$Builder;->getAppId()I

    move-result v2

    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSUserLeftLobby$Builder;->getSteamIdLobby()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/LobbyCache;->clearLobbyMembers(IJ)V

    .line 715
    :cond_5c
    new-instance v1, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/callback/UserLeftLobbyCallback;

    .line 716
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSUserLeftLobby$Builder;->getAppId()I

    move-result v2

    .line 717
    new-instance v3, Lin/dragonbra/javasteam/types/SteamID;

    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSUserLeftLobby$Builder;->getSteamIdLobby()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Lin/dragonbra/javasteam/types/SteamID;-><init>(J)V

    .line 715
    invoke-direct {v1, v2, v3, v0}, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/callback/UserLeftLobbyCallback;-><init>(ILin/dragonbra/javasteam/types/SteamID;Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Member;)V

    .line 719
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;->getClient()Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    move-result-object p0

    invoke-virtual {p0, v1}, Lin/dragonbra/javasteam/steam/steamclient/SteamClient;->postCallback(Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;)V

    :cond_75
    return-void
.end method

.method public final inviteToLobby(ILin/dragonbra/javasteam/types/SteamID;Lin/dragonbra/javasteam/types/SteamID;)V
    .registers 11

    const-string v0, "lobbySteamId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userSteamId"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 346
    new-instance v0, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;

    .line 348
    sget-object v3, Lin/dragonbra/javasteam/enums/EMsg;->ClientMMSInviteToLobby:Lin/dragonbra/javasteam/enums/EMsg;

    const/4 v5, 0x4

    const/4 v6, 0x0

    .line 346
    const-class v2, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSInviteToLobby;

    const/4 v4, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;-><init>(Ljava/lang/Class;Lin/dragonbra/javasteam/enums/EMsg;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 350
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v1

    check-cast v1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSInviteToLobby$Builder;

    invoke-virtual {v1, p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSInviteToLobby$Builder;->setAppId(I)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSInviteToLobby$Builder;

    .line 351
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v1

    check-cast v1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSInviteToLobby$Builder;

    invoke-virtual {p2}, Lin/dragonbra/javasteam/types/SteamID;->convertToUInt64()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSInviteToLobby$Builder;->setSteamIdLobby(J)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSInviteToLobby$Builder;

    .line 352
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object p2

    check-cast p2, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSInviteToLobby$Builder;

    invoke-virtual {p3}, Lin/dragonbra/javasteam/types/SteamID;->convertToUInt64()J

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSInviteToLobby$Builder;->setSteamIdUserInvited(J)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSInviteToLobby$Builder;

    .line 355
    invoke-virtual {p0, v0, p1}, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/SteamMatchmaking;->send(Lin/dragonbra/javasteam/base/ClientMsgProtobuf;I)V

    return-void
.end method

.method public final joinLobby(ILin/dragonbra/javasteam/types/SteamID;)Lin/dragonbra/javasteam/types/AsyncJobSingle;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lin/dragonbra/javasteam/types/SteamID;",
            ")",
            "Lin/dragonbra/javasteam/types/AsyncJobSingle<",
            "Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/callback/JoinLobbyCallback;",
            ">;"
        }
    .end annotation

    const-string v0, "lobbySteamId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 276
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;->getClient()Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    move-result-object v0

    .line 170
    const-class v1, Lin/dragonbra/javasteam/steam/handlers/steamfriends/SteamFriends;

    invoke-virtual {v0, v1}, Lin/dragonbra/javasteam/steam/steamclient/SteamClient;->getHandler(Ljava/lang/Class;)Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;

    move-result-object v0

    .line 276
    check-cast v0, Lin/dragonbra/javasteam/steam/handlers/steamfriends/SteamFriends;

    if-eqz v0, :cond_62

    invoke-virtual {v0}, Lin/dragonbra/javasteam/steam/handlers/steamfriends/SteamFriends;->getPersonaName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1a

    goto :goto_62

    .line 278
    :cond_1a
    new-instance v7, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;

    .line 280
    sget-object v3, Lin/dragonbra/javasteam/enums/EMsg;->ClientMMSJoinLobby:Lin/dragonbra/javasteam/enums/EMsg;

    const/4 v5, 0x4

    const/4 v6, 0x0

    .line 278
    const-class v2, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSJoinLobby;

    const/4 v4, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;-><init>(Ljava/lang/Class;Lin/dragonbra/javasteam/enums/EMsg;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 282
    invoke-virtual {v7}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v1

    check-cast v1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSJoinLobby$Builder;

    invoke-virtual {v1, p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSJoinLobby$Builder;->setAppId(I)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSJoinLobby$Builder;

    .line 283
    invoke-virtual {v7}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v1

    check-cast v1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSJoinLobby$Builder;

    invoke-virtual {v1, v0}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSJoinLobby$Builder;->setPersonaName(Ljava/lang/String;)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSJoinLobby$Builder;

    .line 284
    invoke-virtual {v7}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSJoinLobby$Builder;

    invoke-virtual {p2}, Lin/dragonbra/javasteam/types/SteamID;->convertToUInt64()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSJoinLobby$Builder;->setSteamIdLobby(J)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSJoinLobby$Builder;

    .line 286
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;->getClient()Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    move-result-object p2

    invoke-virtual {p2}, Lin/dragonbra/javasteam/steam/steamclient/SteamClient;->getNextJobID()Lin/dragonbra/javasteam/types/JobID;

    move-result-object p2

    invoke-virtual {v7, p2}, Lin/dragonbra/javasteam/base/AClientMsgProtobuf;->setSourceJobID(Lin/dragonbra/javasteam/types/JobID;)V

    .line 289
    invoke-virtual {p0, v7, p1}, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/SteamMatchmaking;->send(Lin/dragonbra/javasteam/base/ClientMsgProtobuf;I)V

    .line 291
    new-instance p1, Lin/dragonbra/javasteam/types/AsyncJobSingle;

    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;->getClient()Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    move-result-object p0

    invoke-virtual {v7}, Lin/dragonbra/javasteam/base/AClientMsgProtobuf;->getSourceJobID()Lin/dragonbra/javasteam/types/JobID;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lin/dragonbra/javasteam/types/AsyncJobSingle;-><init>(Lin/dragonbra/javasteam/steam/steamclient/SteamClient;Lin/dragonbra/javasteam/types/JobID;)V

    return-object p1

    :cond_62
    :goto_62
    const/4 p0, 0x0

    return-object p0
.end method

.method public final leaveLobby(ILin/dragonbra/javasteam/types/SteamID;)Lin/dragonbra/javasteam/types/AsyncJobSingle;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lin/dragonbra/javasteam/types/SteamID;",
            ")",
            "Lin/dragonbra/javasteam/types/AsyncJobSingle<",
            "Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/callback/LeaveLobbyCallback;",
            ">;"
        }
    .end annotation

    const-string v0, "lobbySteamId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 301
    new-instance v0, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;

    .line 303
    sget-object v3, Lin/dragonbra/javasteam/enums/EMsg;->ClientMMSLeaveLobby:Lin/dragonbra/javasteam/enums/EMsg;

    const/4 v5, 0x4

    const/4 v6, 0x0

    .line 301
    const-class v2, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSLeaveLobby;

    const/4 v4, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;-><init>(Ljava/lang/Class;Lin/dragonbra/javasteam/enums/EMsg;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 305
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v1

    check-cast v1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSLeaveLobby$Builder;

    invoke-virtual {v1, p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSLeaveLobby$Builder;->setAppId(I)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSLeaveLobby$Builder;

    .line 306
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v1

    check-cast v1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSLeaveLobby$Builder;

    invoke-virtual {p2}, Lin/dragonbra/javasteam/types/SteamID;->convertToUInt64()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSLeaveLobby$Builder;->setSteamIdLobby(J)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSLeaveLobby$Builder;

    .line 308
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;->getClient()Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    move-result-object p2

    invoke-virtual {p2}, Lin/dragonbra/javasteam/steam/steamclient/SteamClient;->getNextJobID()Lin/dragonbra/javasteam/types/JobID;

    move-result-object p2

    invoke-virtual {v0, p2}, Lin/dragonbra/javasteam/base/AClientMsgProtobuf;->setSourceJobID(Lin/dragonbra/javasteam/types/JobID;)V

    .line 311
    invoke-virtual {p0, v0, p1}, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/SteamMatchmaking;->send(Lin/dragonbra/javasteam/base/ClientMsgProtobuf;I)V

    .line 313
    new-instance p1, Lin/dragonbra/javasteam/types/AsyncJobSingle;

    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;->getClient()Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    move-result-object p0

    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/AClientMsgProtobuf;->getSourceJobID()Lin/dragonbra/javasteam/types/JobID;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lin/dragonbra/javasteam/types/AsyncJobSingle;-><init>(Lin/dragonbra/javasteam/steam/steamclient/SteamClient;Lin/dragonbra/javasteam/types/JobID;)V

    return-object p1
.end method

.method public final send(Lin/dragonbra/javasteam/base/ClientMsgProtobuf;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/protobuf/GeneratedMessage$Builder<",
            "TT;>;>(",
            "Lin/dragonbra/javasteam/base/ClientMsgProtobuf<",
            "TT;>;I)V"
        }
    .end annotation

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 373
    invoke-virtual {p1}, Lin/dragonbra/javasteam/base/AClientMsgProtobuf;->getProtoHeader()Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesBase$CMsgProtoBufHeader$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesBase$CMsgProtoBufHeader$Builder;->setRoutingAppid(I)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesBase$CMsgProtoBufHeader$Builder;

    .line 374
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;->getClient()Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    move-result-object p0

    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/steam/CMClient;->send(Lin/dragonbra/javasteam/base/IClientMsg;)V

    return-void
.end method

.method public final setLobbyData(ILin/dragonbra/javasteam/types/SteamID;Lin/dragonbra/javasteam/enums/ELobbyType;I)Lin/dragonbra/javasteam/types/AsyncJobSingle;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lin/dragonbra/javasteam/types/SteamID;",
            "Lin/dragonbra/javasteam/enums/ELobbyType;",
            "I)",
            "Lin/dragonbra/javasteam/types/AsyncJobSingle<",
            "Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/callback/SetLobbyDataCallback;",
            ">;"
        }
    .end annotation

    .line 0
    const-string v0, "lobbySteamId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lobbyType"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v8, 0x30

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-static/range {v1 .. v9}, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/SteamMatchmaking;->setLobbyData$default(Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/SteamMatchmaking;ILin/dragonbra/javasteam/types/SteamID;Lin/dragonbra/javasteam/enums/ELobbyType;IILjava/util/Map;ILjava/lang/Object;)Lin/dragonbra/javasteam/types/AsyncJobSingle;

    move-result-object p0

    return-object p0
.end method

.method public final setLobbyData(ILin/dragonbra/javasteam/types/SteamID;Lin/dragonbra/javasteam/enums/ELobbyType;II)Lin/dragonbra/javasteam/types/AsyncJobSingle;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lin/dragonbra/javasteam/types/SteamID;",
            "Lin/dragonbra/javasteam/enums/ELobbyType;",
            "II)",
            "Lin/dragonbra/javasteam/types/AsyncJobSingle<",
            "Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/callback/SetLobbyDataCallback;",
            ">;"
        }
    .end annotation

    .line 0
    const-string v0, "lobbySteamId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lobbyType"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v8, 0x20

    const/4 v9, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-static/range {v1 .. v9}, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/SteamMatchmaking;->setLobbyData$default(Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/SteamMatchmaking;ILin/dragonbra/javasteam/types/SteamID;Lin/dragonbra/javasteam/enums/ELobbyType;IILjava/util/Map;ILjava/lang/Object;)Lin/dragonbra/javasteam/types/AsyncJobSingle;

    move-result-object p0

    return-object p0
.end method

.method public final setLobbyData(ILin/dragonbra/javasteam/types/SteamID;Lin/dragonbra/javasteam/enums/ELobbyType;IILjava/util/Map;)Lin/dragonbra/javasteam/types/AsyncJobSingle;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lin/dragonbra/javasteam/types/SteamID;",
            "Lin/dragonbra/javasteam/enums/ELobbyType;",
            "II",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lin/dragonbra/javasteam/types/AsyncJobSingle<",
            "Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/callback/SetLobbyDataCallback;",
            ">;"
        }
    .end annotation

    const-string v0, "lobbySteamId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lobbyType"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 138
    new-instance v0, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;

    .line 140
    sget-object v3, Lin/dragonbra/javasteam/enums/EMsg;->ClientMMSSetLobbyData:Lin/dragonbra/javasteam/enums/EMsg;

    const/4 v5, 0x4

    const/4 v6, 0x0

    .line 138
    const-class v2, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSSetLobbyData;

    const/4 v4, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;-><init>(Ljava/lang/Class;Lin/dragonbra/javasteam/enums/EMsg;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 142
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v1

    check-cast v1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSSetLobbyData$Builder;

    invoke-virtual {v1, p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSSetLobbyData$Builder;->setAppId(I)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSSetLobbyData$Builder;

    .line 143
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v1

    check-cast v1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSSetLobbyData$Builder;

    invoke-virtual {p2}, Lin/dragonbra/javasteam/types/SteamID;->convertToUInt64()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSSetLobbyData$Builder;->setSteamIdLobby(J)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSSetLobbyData$Builder;

    .line 144
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object p2

    check-cast p2, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSSetLobbyData$Builder;

    const-wide/16 v1, 0x0

    invoke-virtual {p2, v1, v2}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSSetLobbyData$Builder;->setSteamIdMember(J)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSSetLobbyData$Builder;

    .line 145
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object p2

    check-cast p2, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSSetLobbyData$Builder;

    invoke-virtual {p3}, Lin/dragonbra/javasteam/enums/ELobbyType;->code()I

    move-result p3

    invoke-virtual {p2, p3}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSSetLobbyData$Builder;->setLobbyType(I)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSSetLobbyData$Builder;

    .line 146
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object p2

    check-cast p2, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSSetLobbyData$Builder;

    invoke-virtual {p2, p4}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSSetLobbyData$Builder;->setMaxMembers(I)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSSetLobbyData$Builder;

    .line 147
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object p2

    check-cast p2, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSSetLobbyData$Builder;

    invoke-virtual {p2, p5}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSSetLobbyData$Builder;->setLobbyFlags(I)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSSetLobbyData$Builder;

    .line 148
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object p2

    check-cast p2, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSSetLobbyData$Builder;

    sget-object p3, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Lobby;->Companion:Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Lobby$Companion;

    invoke-virtual {p3, p6}, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Lobby$Companion;->encodeMetadata$javasteam(Ljava/util/Map;)[B

    move-result-object p4

    invoke-virtual {p3, p4}, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Lobby$Companion;->toByteString$javasteam([B)Lcom/google/protobuf/ByteString;

    move-result-object p3

    invoke-virtual {p2, p3}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSSetLobbyData$Builder;->setMetadata(Lcom/google/protobuf/ByteString;)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSSetLobbyData$Builder;

    .line 150
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;->getClient()Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    move-result-object p2

    invoke-virtual {p2}, Lin/dragonbra/javasteam/steam/steamclient/SteamClient;->getNextJobID()Lin/dragonbra/javasteam/types/JobID;

    move-result-object p2

    invoke-virtual {v0, p2}, Lin/dragonbra/javasteam/base/AClientMsgProtobuf;->setSourceJobID(Lin/dragonbra/javasteam/types/JobID;)V

    .line 153
    invoke-virtual {p0, v0, p1}, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/SteamMatchmaking;->send(Lin/dragonbra/javasteam/base/ClientMsgProtobuf;I)V

    .line 155
    iget-object p1, p0, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/SteamMatchmaking;->lobbyManipulationRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/AClientMsgProtobuf;->getSourceJobID()Lin/dragonbra/javasteam/types/JobID;

    move-result-object p2

    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object p3

    check-cast p3, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSSetLobbyData$Builder;

    invoke-virtual {p3}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSSetLobbyData$Builder;->build()Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSSetLobbyData;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    new-instance p1, Lin/dragonbra/javasteam/types/AsyncJobSingle;

    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;->getClient()Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    move-result-object p2

    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/AClientMsgProtobuf;->getSourceJobID()Lin/dragonbra/javasteam/types/JobID;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Lin/dragonbra/javasteam/types/AsyncJobSingle;-><init>(Lin/dragonbra/javasteam/steam/steamclient/SteamClient;Lin/dragonbra/javasteam/types/JobID;)V

    .line 156
    invoke-direct {p0, p1}, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/SteamMatchmaking;->attachIncompleteManipulationHandler(Lin/dragonbra/javasteam/types/AsyncJobSingle;)Lin/dragonbra/javasteam/types/AsyncJobSingle;

    move-result-object p0

    return-object p0
.end method

.method public final setLobbyMemberData(ILin/dragonbra/javasteam/types/SteamID;Ljava/util/Map;)Lin/dragonbra/javasteam/types/AsyncJobSingle;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lin/dragonbra/javasteam/types/SteamID;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lin/dragonbra/javasteam/types/AsyncJobSingle<",
            "Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/callback/SetLobbyDataCallback;",
            ">;"
        }
    .end annotation

    const-string v0, "lobbySteamId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "metadata"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 173
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;->getClient()Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    move-result-object v0

    invoke-virtual {v0}, Lin/dragonbra/javasteam/steam/CMClient;->getSteamID()Lin/dragonbra/javasteam/types/SteamID;

    move-result-object v0

    if-nez v0, :cond_16

    const/4 p0, 0x0

    return-object p0

    .line 177
    :cond_16
    new-instance v6, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;

    .line 179
    sget-object v2, Lin/dragonbra/javasteam/enums/EMsg;->ClientMMSSetLobbyData:Lin/dragonbra/javasteam/enums/EMsg;

    const/4 v4, 0x4

    const/4 v5, 0x0

    .line 177
    const-class v1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSSetLobbyData;

    const/4 v3, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;-><init>(Ljava/lang/Class;Lin/dragonbra/javasteam/enums/EMsg;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 181
    invoke-virtual {v6}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSSetLobbyData$Builder;

    invoke-virtual {v0, p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSSetLobbyData$Builder;->setAppId(I)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSSetLobbyData$Builder;

    .line 182
    invoke-virtual {v6}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSSetLobbyData$Builder;

    invoke-virtual {p2}, Lin/dragonbra/javasteam/types/SteamID;->convertToUInt64()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSSetLobbyData$Builder;->setSteamIdLobby(J)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSSetLobbyData$Builder;

    .line 183
    invoke-virtual {v6}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object p2

    check-cast p2, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSSetLobbyData$Builder;

    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;->getClient()Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    move-result-object v0

    invoke-virtual {v0}, Lin/dragonbra/javasteam/steam/CMClient;->getSteamID()Lin/dragonbra/javasteam/types/SteamID;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lin/dragonbra/javasteam/types/SteamID;->convertToUInt64()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSSetLobbyData$Builder;->setSteamIdMember(J)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSSetLobbyData$Builder;

    .line 184
    invoke-virtual {v6}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object p2

    check-cast p2, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSSetLobbyData$Builder;

    sget-object v0, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Lobby;->Companion:Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Lobby$Companion;

    invoke-virtual {v0, p3}, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Lobby$Companion;->encodeMetadata$javasteam(Ljava/util/Map;)[B

    move-result-object p3

    invoke-virtual {v0, p3}, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/Lobby$Companion;->toByteString$javasteam([B)Lcom/google/protobuf/ByteString;

    move-result-object p3

    invoke-virtual {p2, p3}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSSetLobbyData$Builder;->setMetadata(Lcom/google/protobuf/ByteString;)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSSetLobbyData$Builder;

    .line 186
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;->getClient()Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    move-result-object p2

    invoke-virtual {p2}, Lin/dragonbra/javasteam/steam/steamclient/SteamClient;->getNextJobID()Lin/dragonbra/javasteam/types/JobID;

    move-result-object p2

    invoke-virtual {v6, p2}, Lin/dragonbra/javasteam/base/AClientMsgProtobuf;->setSourceJobID(Lin/dragonbra/javasteam/types/JobID;)V

    .line 189
    invoke-virtual {p0, v6, p1}, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/SteamMatchmaking;->send(Lin/dragonbra/javasteam/base/ClientMsgProtobuf;I)V

    .line 191
    iget-object p1, p0, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/SteamMatchmaking;->lobbyManipulationRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6}, Lin/dragonbra/javasteam/base/AClientMsgProtobuf;->getSourceJobID()Lin/dragonbra/javasteam/types/JobID;

    move-result-object p2

    invoke-virtual {v6}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object p3

    check-cast p3, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSSetLobbyData$Builder;

    invoke-virtual {p3}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSSetLobbyData$Builder;->build()Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSSetLobbyData;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    new-instance p1, Lin/dragonbra/javasteam/types/AsyncJobSingle;

    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;->getClient()Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    move-result-object p2

    invoke-virtual {v6}, Lin/dragonbra/javasteam/base/AClientMsgProtobuf;->getSourceJobID()Lin/dragonbra/javasteam/types/JobID;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Lin/dragonbra/javasteam/types/AsyncJobSingle;-><init>(Lin/dragonbra/javasteam/steam/steamclient/SteamClient;Lin/dragonbra/javasteam/types/JobID;)V

    .line 192
    invoke-direct {p0, p1}, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/SteamMatchmaking;->attachIncompleteManipulationHandler(Lin/dragonbra/javasteam/types/AsyncJobSingle;)Lin/dragonbra/javasteam/types/AsyncJobSingle;

    move-result-object p0

    return-object p0
.end method

.method public final setLobbyOwner(ILin/dragonbra/javasteam/types/SteamID;Lin/dragonbra/javasteam/types/SteamID;)Lin/dragonbra/javasteam/types/AsyncJobSingle;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lin/dragonbra/javasteam/types/SteamID;",
            "Lin/dragonbra/javasteam/types/SteamID;",
            ")",
            "Lin/dragonbra/javasteam/types/AsyncJobSingle<",
            "Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/callback/SetLobbyOwnerCallback;",
            ">;"
        }
    .end annotation

    const-string v0, "lobbySteamId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newOwner"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 209
    new-instance v0, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;

    .line 211
    sget-object v3, Lin/dragonbra/javasteam/enums/EMsg;->ClientMMSSetLobbyOwner:Lin/dragonbra/javasteam/enums/EMsg;

    const/4 v5, 0x4

    const/4 v6, 0x0

    .line 209
    const-class v2, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSSetLobbyOwner;

    const/4 v4, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;-><init>(Ljava/lang/Class;Lin/dragonbra/javasteam/enums/EMsg;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 213
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v1

    check-cast v1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSSetLobbyOwner$Builder;

    invoke-virtual {v1, p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSSetLobbyOwner$Builder;->setAppId(I)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSSetLobbyOwner$Builder;

    .line 214
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v1

    check-cast v1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSSetLobbyOwner$Builder;

    invoke-virtual {p2}, Lin/dragonbra/javasteam/types/SteamID;->convertToUInt64()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSSetLobbyOwner$Builder;->setSteamIdLobby(J)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSSetLobbyOwner$Builder;

    .line 215
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object p2

    check-cast p2, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSSetLobbyOwner$Builder;

    invoke-virtual {p3}, Lin/dragonbra/javasteam/types/SteamID;->convertToUInt64()J

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSSetLobbyOwner$Builder;->setSteamIdNewOwner(J)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSSetLobbyOwner$Builder;

    .line 217
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;->getClient()Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    move-result-object p2

    invoke-virtual {p2}, Lin/dragonbra/javasteam/steam/steamclient/SteamClient;->getNextJobID()Lin/dragonbra/javasteam/types/JobID;

    move-result-object p2

    invoke-virtual {v0, p2}, Lin/dragonbra/javasteam/base/AClientMsgProtobuf;->setSourceJobID(Lin/dragonbra/javasteam/types/JobID;)V

    .line 220
    invoke-virtual {p0, v0, p1}, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/SteamMatchmaking;->send(Lin/dragonbra/javasteam/base/ClientMsgProtobuf;I)V

    .line 222
    iget-object p1, p0, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/SteamMatchmaking;->lobbyManipulationRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/AClientMsgProtobuf;->getSourceJobID()Lin/dragonbra/javasteam/types/JobID;

    move-result-object p2

    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object p3

    check-cast p3, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSSetLobbyOwner$Builder;

    invoke-virtual {p3}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSSetLobbyOwner$Builder;->build()Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverMms$CMsgClientMMSSetLobbyOwner;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    new-instance p1, Lin/dragonbra/javasteam/types/AsyncJobSingle;

    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;->getClient()Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    move-result-object p2

    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/AClientMsgProtobuf;->getSourceJobID()Lin/dragonbra/javasteam/types/JobID;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Lin/dragonbra/javasteam/types/AsyncJobSingle;-><init>(Lin/dragonbra/javasteam/steam/steamclient/SteamClient;Lin/dragonbra/javasteam/types/JobID;)V

    .line 223
    invoke-direct {p0, p1}, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/SteamMatchmaking;->attachIncompleteManipulationHandler(Lin/dragonbra/javasteam/types/AsyncJobSingle;)Lin/dragonbra/javasteam/types/AsyncJobSingle;

    move-result-object p0

    return-object p0
.end method

###### Class in.dragonbra.javasteam.steam.handlers.steammatchmaking.SteamMatchmaking.WhenMappings (in.dragonbra.javasteam.steam.handlers.steammatchmaking.SteamMatchmaking$WhenMappings)
.class public final synthetic Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/SteamMatchmaking$WhenMappings;
.super Ljava/lang/Object;
.source "SteamMatchmaking.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/SteamMatchmaking;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1019
    name = "WhenMappings"
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 0
    invoke-static {}, Lin/dragonbra/javasteam/enums/EMsg;->values()[Lin/dragonbra/javasteam/enums/EMsg;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_7
    sget-object v1, Lin/dragonbra/javasteam/enums/EMsg;->ClientMMSCreateLobbyResponse:Lin/dragonbra/javasteam/enums/EMsg;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_10} :catch_10

    :catch_10
    :try_start_10
    sget-object v1, Lin/dragonbra/javasteam/enums/EMsg;->ClientMMSSetLobbyDataResponse:Lin/dragonbra/javasteam/enums/EMsg;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_19} :catch_19

    :catch_19
    :try_start_19
    sget-object v1, Lin/dragonbra/javasteam/enums/EMsg;->ClientMMSSetLobbyOwnerResponse:Lin/dragonbra/javasteam/enums/EMsg;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_22} :catch_22

    :catch_22
    :try_start_22
    sget-object v1, Lin/dragonbra/javasteam/enums/EMsg;->ClientMMSLobbyData:Lin/dragonbra/javasteam/enums/EMsg;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_2b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_2b} :catch_2b

    :catch_2b
    :try_start_2b
    sget-object v1, Lin/dragonbra/javasteam/enums/EMsg;->ClientMMSGetLobbyListResponse:Lin/dragonbra/javasteam/enums/EMsg;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_34
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2b .. :try_end_34} :catch_34

    :catch_34
    :try_start_34
    sget-object v1, Lin/dragonbra/javasteam/enums/EMsg;->ClientMMSJoinLobbyResponse:Lin/dragonbra/javasteam/enums/EMsg;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_3d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_34 .. :try_end_3d} :catch_3d

    :catch_3d
    :try_start_3d
    sget-object v1, Lin/dragonbra/javasteam/enums/EMsg;->ClientMMSLeaveLobbyResponse:Lin/dragonbra/javasteam/enums/EMsg;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_46
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3d .. :try_end_46} :catch_46

    :catch_46
    :try_start_46
    sget-object v1, Lin/dragonbra/javasteam/enums/EMsg;->ClientMMSUserJoinedLobby:Lin/dragonbra/javasteam/enums/EMsg;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_50
    .catch Ljava/lang/NoSuchFieldError; {:try_start_46 .. :try_end_50} :catch_50

    :catch_50
    :try_start_50
    sget-object v1, Lin/dragonbra/javasteam/enums/EMsg;->ClientMMSUserLeftLobby:Lin/dragonbra/javasteam/enums/EMsg;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_5a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_50 .. :try_end_5a} :catch_5a

    :catch_5a
    sput-object v0, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/SteamMatchmaking$WhenMappings;->$EnumSwitchMapping$0:[I

    return-void
.end method

###### Class in.dragonbra.javasteam.steam.handlers.steammatchmaking.SteamMatchmaking.AnonymousClass1 (in.dragonbra.javasteam.steam.handlers.steammatchmaking.SteamMatchmaking$getHandler$1)
.class final synthetic Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/SteamMatchmaking$getHandler$1;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "SteamMatchmaking.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/SteamMatchmaking;->getHandler(Lin/dragonbra/javasteam/base/IPacketMsg;)Lkotlin/jvm/functions/Function1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1019
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function1<",
        "Lin/dragonbra/javasteam/base/IPacketMsg;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .registers 9

    .line 0
    const-string v5, "handleCreateLobbyResponse(Lin/dragonbra/javasteam/base/IPacketMsg;)V"

    const/4 v6, 0x0

    const/4 v1, 0x1

    const-class v3, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/SteamMatchmaking;

    const-string v4, "handleCreateLobbyResponse"

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 56
    check-cast p1, Lin/dragonbra/javasteam/base/IPacketMsg;

    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/SteamMatchmaking$getHandler$1;->invoke(Lin/dragonbra/javasteam/base/IPacketMsg;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Lin/dragonbra/javasteam/base/IPacketMsg;)V
    .registers 3

    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    iget-object p0, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    check-cast p0, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/SteamMatchmaking;

    invoke-static {p0, p1}, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/SteamMatchmaking;->access$handleCreateLobbyResponse(Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/SteamMatchmaking;Lin/dragonbra/javasteam/base/IPacketMsg;)V

    return-void
.end method

###### Class in.dragonbra.javasteam.steam.handlers.steammatchmaking.SteamMatchmaking.AnonymousClass2 (in.dragonbra.javasteam.steam.handlers.steammatchmaking.SteamMatchmaking$getHandler$2)
.class final synthetic Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/SteamMatchmaking$getHandler$2;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "SteamMatchmaking.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/SteamMatchmaking;->getHandler(Lin/dragonbra/javasteam/base/IPacketMsg;)Lkotlin/jvm/functions/Function1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1019
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function1<",
        "Lin/dragonbra/javasteam/base/IPacketMsg;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .registers 9

    .line 0
    const-string v5, "handleSetLobbyDataResponse(Lin/dragonbra/javasteam/base/IPacketMsg;)V"

    const/4 v6, 0x0

    const/4 v1, 0x1

    const-class v3, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/SteamMatchmaking;

    const-string v4, "handleSetLobbyDataResponse"

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 57
    check-cast p1, Lin/dragonbra/javasteam/base/IPacketMsg;

    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/SteamMatchmaking$getHandler$2;->invoke(Lin/dragonbra/javasteam/base/IPacketMsg;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Lin/dragonbra/javasteam/base/IPacketMsg;)V
    .registers 3

    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    iget-object p0, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    check-cast p0, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/SteamMatchmaking;

    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/SteamMatchmaking;->handleSetLobbyDataResponse(Lin/dragonbra/javasteam/base/IPacketMsg;)V

    return-void
.end method

###### Class in.dragonbra.javasteam.steam.handlers.steammatchmaking.SteamMatchmaking.AnonymousClass3 (in.dragonbra.javasteam.steam.handlers.steammatchmaking.SteamMatchmaking$getHandler$3)
.class final synthetic Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/SteamMatchmaking$getHandler$3;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "SteamMatchmaking.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/SteamMatchmaking;->getHandler(Lin/dragonbra/javasteam/base/IPacketMsg;)Lkotlin/jvm/functions/Function1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1019
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function1<",
        "Lin/dragonbra/javasteam/base/IPacketMsg;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .registers 9

    .line 0
    const-string v5, "handleSetLobbyOwnerResponse(Lin/dragonbra/javasteam/base/IPacketMsg;)V"

    const/4 v6, 0x0

    const/4 v1, 0x1

    const-class v3, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/SteamMatchmaking;

    const-string v4, "handleSetLobbyOwnerResponse"

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 58
    check-cast p1, Lin/dragonbra/javasteam/base/IPacketMsg;

    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/SteamMatchmaking$getHandler$3;->invoke(Lin/dragonbra/javasteam/base/IPacketMsg;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Lin/dragonbra/javasteam/base/IPacketMsg;)V
    .registers 3

    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    iget-object p0, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    check-cast p0, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/SteamMatchmaking;

    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/SteamMatchmaking;->handleSetLobbyOwnerResponse(Lin/dragonbra/javasteam/base/IPacketMsg;)V

    return-void
.end method

###### Class in.dragonbra.javasteam.steam.handlers.steammatchmaking.SteamMatchmaking.AnonymousClass4 (in.dragonbra.javasteam.steam.handlers.steammatchmaking.SteamMatchmaking$getHandler$4)
.class final synthetic Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/SteamMatchmaking$getHandler$4;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "SteamMatchmaking.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/SteamMatchmaking;->getHandler(Lin/dragonbra/javasteam/base/IPacketMsg;)Lkotlin/jvm/functions/Function1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1019
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function1<",
        "Lin/dragonbra/javasteam/base/IPacketMsg;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .registers 9

    .line 0
    const-string v5, "handleLobbyData(Lin/dragonbra/javasteam/base/IPacketMsg;)V"

    const/4 v6, 0x0

    const/4 v1, 0x1

    const-class v3, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/SteamMatchmaking;

    const-string v4, "handleLobbyData"

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 59
    check-cast p1, Lin/dragonbra/javasteam/base/IPacketMsg;

    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/SteamMatchmaking$getHandler$4;->invoke(Lin/dragonbra/javasteam/base/IPacketMsg;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Lin/dragonbra/javasteam/base/IPacketMsg;)V
    .registers 3

    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    iget-object p0, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    check-cast p0, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/SteamMatchmaking;

    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/SteamMatchmaking;->handleLobbyData(Lin/dragonbra/javasteam/base/IPacketMsg;)V

    return-void
.end method

###### Class in.dragonbra.javasteam.steam.handlers.steammatchmaking.SteamMatchmaking.AnonymousClass5 (in.dragonbra.javasteam.steam.handlers.steammatchmaking.SteamMatchmaking$getHandler$5)
.class final synthetic Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/SteamMatchmaking$getHandler$5;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "SteamMatchmaking.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/SteamMatchmaking;->getHandler(Lin/dragonbra/javasteam/base/IPacketMsg;)Lkotlin/jvm/functions/Function1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1019
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function1<",
        "Lin/dragonbra/javasteam/base/IPacketMsg;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .registers 9

    .line 0
    const-string v5, "handleGetLobbyListResponse(Lin/dragonbra/javasteam/base/IPacketMsg;)V"

    const/4 v6, 0x0

    const/4 v1, 0x1

    const-class v3, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/SteamMatchmaking;

    const-string v4, "handleGetLobbyListResponse"

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 60
    check-cast p1, Lin/dragonbra/javasteam/base/IPacketMsg;

    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/SteamMatchmaking$getHandler$5;->invoke(Lin/dragonbra/javasteam/base/IPacketMsg;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Lin/dragonbra/javasteam/base/IPacketMsg;)V
    .registers 3

    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    iget-object p0, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    check-cast p0, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/SteamMatchmaking;

    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/SteamMatchmaking;->handleGetLobbyListResponse(Lin/dragonbra/javasteam/base/IPacketMsg;)V

    return-void
.end method

###### Class in.dragonbra.javasteam.steam.handlers.steammatchmaking.SteamMatchmaking.AnonymousClass6 (in.dragonbra.javasteam.steam.handlers.steammatchmaking.SteamMatchmaking$getHandler$6)
.class final synthetic Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/SteamMatchmaking$getHandler$6;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "SteamMatchmaking.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/SteamMatchmaking;->getHandler(Lin/dragonbra/javasteam/base/IPacketMsg;)Lkotlin/jvm/functions/Function1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1019
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function1<",
        "Lin/dragonbra/javasteam/base/IPacketMsg;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .registers 9

    .line 0
    const-string v5, "handleJoinLobbyResponse(Lin/dragonbra/javasteam/base/IPacketMsg;)V"

    const/4 v6, 0x0

    const/4 v1, 0x1

    const-class v3, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/SteamMatchmaking;

    const-string v4, "handleJoinLobbyResponse"

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 61
    check-cast p1, Lin/dragonbra/javasteam/base/IPacketMsg;

    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/SteamMatchmaking$getHandler$6;->invoke(Lin/dragonbra/javasteam/base/IPacketMsg;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Lin/dragonbra/javasteam/base/IPacketMsg;)V
    .registers 3

    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    iget-object p0, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    check-cast p0, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/SteamMatchmaking;

    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/SteamMatchmaking;->handleJoinLobbyResponse(Lin/dragonbra/javasteam/base/IPacketMsg;)V

    return-void
.end method

###### Class in.dragonbra.javasteam.steam.handlers.steammatchmaking.SteamMatchmaking.AnonymousClass7 (in.dragonbra.javasteam.steam.handlers.steammatchmaking.SteamMatchmaking$getHandler$7)
.class final synthetic Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/SteamMatchmaking$getHandler$7;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "SteamMatchmaking.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/SteamMatchmaking;->getHandler(Lin/dragonbra/javasteam/base/IPacketMsg;)Lkotlin/jvm/functions/Function1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1019
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function1<",
        "Lin/dragonbra/javasteam/base/IPacketMsg;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .registers 9

    .line 0
    const-string v5, "handleLeaveLobbyResponse(Lin/dragonbra/javasteam/base/IPacketMsg;)V"

    const/4 v6, 0x0

    const/4 v1, 0x1

    const-class v3, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/SteamMatchmaking;

    const-string v4, "handleLeaveLobbyResponse"

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 62
    check-cast p1, Lin/dragonbra/javasteam/base/IPacketMsg;

    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/SteamMatchmaking$getHandler$7;->invoke(Lin/dragonbra/javasteam/base/IPacketMsg;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Lin/dragonbra/javasteam/base/IPacketMsg;)V
    .registers 3

    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    iget-object p0, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    check-cast p0, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/SteamMatchmaking;

    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/SteamMatchmaking;->handleLeaveLobbyResponse(Lin/dragonbra/javasteam/base/IPacketMsg;)V

    return-void
.end method

###### Class in.dragonbra.javasteam.steam.handlers.steammatchmaking.SteamMatchmaking.AnonymousClass8 (in.dragonbra.javasteam.steam.handlers.steammatchmaking.SteamMatchmaking$getHandler$8)
.class final synthetic Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/SteamMatchmaking$getHandler$8;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "SteamMatchmaking.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/SteamMatchmaking;->getHandler(Lin/dragonbra/javasteam/base/IPacketMsg;)Lkotlin/jvm/functions/Function1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1019
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function1<",
        "Lin/dragonbra/javasteam/base/IPacketMsg;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .registers 9

    .line 0
    const-string v5, "handleUserJoinedLobby(Lin/dragonbra/javasteam/base/IPacketMsg;)V"

    const/4 v6, 0x0

    const/4 v1, 0x1

    const-class v3, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/SteamMatchmaking;

    const-string v4, "handleUserJoinedLobby"

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 63
    check-cast p1, Lin/dragonbra/javasteam/base/IPacketMsg;

    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/SteamMatchmaking$getHandler$8;->invoke(Lin/dragonbra/javasteam/base/IPacketMsg;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Lin/dragonbra/javasteam/base/IPacketMsg;)V
    .registers 3

    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    iget-object p0, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    check-cast p0, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/SteamMatchmaking;

    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/SteamMatchmaking;->handleUserJoinedLobby(Lin/dragonbra/javasteam/base/IPacketMsg;)V

    return-void
.end method

###### Class in.dragonbra.javasteam.steam.handlers.steammatchmaking.SteamMatchmaking.AnonymousClass9 (in.dragonbra.javasteam.steam.handlers.steammatchmaking.SteamMatchmaking$getHandler$9)
.class final synthetic Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/SteamMatchmaking$getHandler$9;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "SteamMatchmaking.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/SteamMatchmaking;->getHandler(Lin/dragonbra/javasteam/base/IPacketMsg;)Lkotlin/jvm/functions/Function1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1019
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function1<",
        "Lin/dragonbra/javasteam/base/IPacketMsg;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .registers 9

    .line 0
    const-string v5, "handleUserLeftLobby(Lin/dragonbra/javasteam/base/IPacketMsg;)V"

    const/4 v6, 0x0

    const/4 v1, 0x1

    const-class v3, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/SteamMatchmaking;

    const-string v4, "handleUserLeftLobby"

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 64
    check-cast p1, Lin/dragonbra/javasteam/base/IPacketMsg;

    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/SteamMatchmaking$getHandler$9;->invoke(Lin/dragonbra/javasteam/base/IPacketMsg;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Lin/dragonbra/javasteam/base/IPacketMsg;)V
    .registers 3

    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    iget-object p0, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    check-cast p0, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/SteamMatchmaking;

    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/SteamMatchmaking;->handleUserLeftLobby(Lin/dragonbra/javasteam/base/IPacketMsg;)V

    return-void
.end method

###### Class in.dragonbra.javasteam.steam.handlers.steammatchmaking.SteamMatchmaking$$ExternalSyntheticLambda0 (in.dragonbra.javasteam.steam.handlers.steammatchmaking.SteamMatchmaking$$ExternalSyntheticLambda0)
.class public final synthetic Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/SteamMatchmaking$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/SteamMatchmaking;

.field public final synthetic f$1:Lin/dragonbra/javasteam/types/AsyncJobSingle;


# direct methods
.method public synthetic constructor <init>(Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/SteamMatchmaking;Lin/dragonbra/javasteam/types/AsyncJobSingle;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/SteamMatchmaking$$ExternalSyntheticLambda0;->f$0:Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/SteamMatchmaking;

    iput-object p2, p0, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/SteamMatchmaking$$ExternalSyntheticLambda0;->f$1:Lin/dragonbra/javasteam/types/AsyncJobSingle;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/SteamMatchmaking$$ExternalSyntheticLambda0;->f$0:Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/SteamMatchmaking;

    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/SteamMatchmaking$$ExternalSyntheticLambda0;->f$1:Lin/dragonbra/javasteam/types/AsyncJobSingle;

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {v0, p0, p1}, Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/SteamMatchmaking;->$r8$lambda$ylGsEjEtvqKEE55MjOnZ_suS0Lw(Lin/dragonbra/javasteam/steam/handlers/steammatchmaking/SteamMatchmaking;Lin/dragonbra/javasteam/types/AsyncJobSingle;Ljava/lang/Throwable;)Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;

    move-result-object p0

    return-object p0
.end method
