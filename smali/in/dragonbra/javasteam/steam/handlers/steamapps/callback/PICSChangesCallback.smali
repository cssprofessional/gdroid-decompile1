###### Class in.dragonbra.javasteam.steam.handlers.steamapps.callback.PICSChangesCallback (in.dragonbra.javasteam.steam.handlers.steamapps.callback.PICSChangesCallback)
.class public final Lin/dragonbra/javasteam/steam/handlers/steamapps/callback/PICSChangesCallback;
.super Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;
.source "PICSChangesCallback.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPICSChangesCallback.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PICSChangesCallback.kt\nin/dragonbra/javasteam/steam/handlers/steamapps/callback/PICSChangesCallback\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,67:1\n1193#2,2:68\n1267#2,4:70\n1193#2,2:74\n1267#2,4:76\n*S KotlinDebug\n*F\n+ 1 PICSChangesCallback.kt\nin/dragonbra/javasteam/steam/handlers/steamapps/callback/PICSChangesCallback\n*L\n63#1:68,2\n63#1:70,4\n64#1:74,2\n64#1:76,4\n*E\n"
.end annotation


# instance fields
.field private final appChanges:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lin/dragonbra/javasteam/steam/handlers/steamapps/PICSChangeData;",
            ">;"
        }
    .end annotation
.end field

.field private final currentChangeNumber:I

.field private final isRequiresFullAppUpdate:Z

.field private final isRequiresFullPackageUpdate:Z

.field private final isRequiresFullUpdate:Z

.field private final lastChangeNumber:I

.field private final packageChanges:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lin/dragonbra/javasteam/steam/handlers/steamapps/PICSChangeData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lin/dragonbra/javasteam/base/IPacketMsg;)V
    .registers 9

    const-string v0, "packetMsg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;-><init>()V

    .line 50
    new-instance v0, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;

    .line 51
    const-class v1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverAppinfo$CMsgClientPICSChangesSinceResponse;

    .line 50
    invoke-direct {v0, v1, p1}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;-><init>(Ljava/lang/Class;Lin/dragonbra/javasteam/base/IPacketMsg;)V

    .line 54
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object p1

    check-cast p1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverAppinfo$CMsgClientPICSChangesSinceResponse$Builder;

    .line 56
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/AClientMsgProtobuf;->getTargetJobID()Lin/dragonbra/javasteam/types/JobID;

    move-result-object v0

    invoke-virtual {p0, v0}, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;->setJobID(Lin/dragonbra/javasteam/types/JobID;)V

    .line 58
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverAppinfo$CMsgClientPICSChangesSinceResponse$Builder;->getSinceChangeNumber()I

    move-result v0

    iput v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/callback/PICSChangesCallback;->lastChangeNumber:I

    .line 59
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverAppinfo$CMsgClientPICSChangesSinceResponse$Builder;->getCurrentChangeNumber()I

    move-result v0

    iput v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/callback/PICSChangesCallback;->currentChangeNumber:I

    .line 60
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverAppinfo$CMsgClientPICSChangesSinceResponse$Builder;->getForceFullAppUpdate()Z

    move-result v0

    iput-boolean v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/callback/PICSChangesCallback;->isRequiresFullAppUpdate:Z

    .line 61
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverAppinfo$CMsgClientPICSChangesSinceResponse$Builder;->getForceFullPackageUpdate()Z

    move-result v0

    iput-boolean v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/callback/PICSChangesCallback;->isRequiresFullPackageUpdate:Z

    .line 62
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverAppinfo$CMsgClientPICSChangesSinceResponse$Builder;->getForceFullUpdate()Z

    move-result v0

    iput-boolean v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/callback/PICSChangesCallback;->isRequiresFullUpdate:Z

    .line 63
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverAppinfo$CMsgClientPICSChangesSinceResponse$Builder;->getPackageChangesList()Ljava/util/List;

    move-result-object v0

    const-string v1, "getPackageChangesList(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0xa

    .line 1193
    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-static {v2}, Lkotlin/collections/MapsKt__MapsJVMKt;->mapCapacity(I)I

    move-result v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Lkotlin/ranges/RangesKt___RangesKt;->coerceAtLeast(II)I

    move-result v2

    .line 1194
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 1267
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_88

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1268
    check-cast v2, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverAppinfo$CMsgClientPICSChangesSinceResponse$PackageChange;

    .line 63
    invoke-virtual {v2}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverAppinfo$CMsgClientPICSChangesSinceResponse$PackageChange;->getPackageid()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lin/dragonbra/javasteam/steam/handlers/steamapps/PICSChangeData;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v6, v2}, Lin/dragonbra/javasteam/steam/handlers/steamapps/PICSChangeData;-><init>(Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverAppinfo$CMsgClientPICSChangesSinceResponse$PackageChange;)V

    invoke-static {v5, v6}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    .line 1268
    invoke-virtual {v2}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5c

    .line 63
    :cond_88
    iput-object v4, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/callback/PICSChangesCallback;->packageChanges:Ljava/util/Map;

    .line 64
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverAppinfo$CMsgClientPICSChangesSinceResponse$Builder;->getAppChangesList()Ljava/util/List;

    move-result-object p1

    const-string v0, "getAppChangesList(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1193
    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-static {v0}, Lkotlin/collections/MapsKt__MapsJVMKt;->mapCapacity(I)I

    move-result v0

    invoke-static {v0, v3}, Lkotlin/ranges/RangesKt___RangesKt;->coerceAtLeast(II)I

    move-result v0

    .line 1194
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1, v0}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 1267
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_a8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 1268
    check-cast v0, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverAppinfo$CMsgClientPICSChangesSinceResponse$AppChange;

    .line 64
    invoke-virtual {v0}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverAppinfo$CMsgClientPICSChangesSinceResponse$AppChange;->getAppid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lin/dragonbra/javasteam/steam/handlers/steamapps/PICSChangeData;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v3, v0}, Lin/dragonbra/javasteam/steam/handlers/steamapps/PICSChangeData;-><init>(Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverAppinfo$CMsgClientPICSChangesSinceResponse$AppChange;)V

    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    .line 1268
    invoke-virtual {v0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a8

    .line 64
    :cond_d4
    iput-object v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/callback/PICSChangesCallback;->appChanges:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final getAppChanges()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lin/dragonbra/javasteam/steam/handlers/steamapps/PICSChangeData;",
            ">;"
        }
    .end annotation

    .line 47
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/callback/PICSChangesCallback;->appChanges:Ljava/util/Map;

    return-object p0
.end method

.method public final getCurrentChangeNumber()I
    .registers 1

    .line 22
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/callback/PICSChangesCallback;->currentChangeNumber:I

    return p0
.end method

.method public final getLastChangeNumber()I
    .registers 1

    .line 17
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/callback/PICSChangesCallback;->lastChangeNumber:I

    return p0
.end method

.method public final getPackageChanges()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lin/dragonbra/javasteam/steam/handlers/steamapps/PICSChangeData;",
            ">;"
        }
    .end annotation

    .line 42
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/callback/PICSChangesCallback;->packageChanges:Ljava/util/Map;

    return-object p0
.end method

.method public final isRequiresFullAppUpdate()Z
    .registers 1

    .line 32
    iget-boolean p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/callback/PICSChangesCallback;->isRequiresFullAppUpdate:Z

    return p0
.end method

.method public final isRequiresFullPackageUpdate()Z
    .registers 1

    .line 37
    iget-boolean p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/callback/PICSChangesCallback;->isRequiresFullPackageUpdate:Z

    return p0
.end method

.method public final isRequiresFullUpdate()Z
    .registers 1

    .line 27
    iget-boolean p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/callback/PICSChangesCallback;->isRequiresFullUpdate:Z

    return p0
.end method
