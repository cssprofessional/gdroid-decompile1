###### Class in.dragonbra.javasteam.steam.handlers.steammasterserver.SteamMasterServer (in.dragonbra.javasteam.steam.handlers.steammasterserver.SteamMasterServer)
.class public final Lin/dragonbra/javasteam/steam/handlers/steammasterserver/SteamMasterServer;
.super Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;
.source "SteamMasterServer.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lin/dragonbra/javasteam/steam/handlers/steammasterserver/SteamMasterServer$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lin/dragonbra/javasteam/steam/handlers/steammasterserver/SteamMasterServer$Companion;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 0
    new-instance v0, Lin/dragonbra/javasteam/steam/handlers/steammasterserver/SteamMasterServer$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lin/dragonbra/javasteam/steam/handlers/steammasterserver/SteamMasterServer$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lin/dragonbra/javasteam/steam/handlers/steammasterserver/SteamMasterServer;->Companion:Lin/dragonbra/javasteam/steam/handlers/steammasterserver/SteamMasterServer$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMsg(Lin/dragonbra/javasteam/base/IPacketMsg;)V
    .registers 3

    const-string v0, "packetMsg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    sget-object v0, Lin/dragonbra/javasteam/steam/handlers/steammasterserver/SteamMasterServer;->Companion:Lin/dragonbra/javasteam/steam/handlers/steammasterserver/SteamMasterServer$Companion;

    invoke-static {v0, p1}, Lin/dragonbra/javasteam/steam/handlers/steammasterserver/SteamMasterServer$Companion;->access$getCallback(Lin/dragonbra/javasteam/steam/handlers/steammasterserver/SteamMasterServer$Companion;Lin/dragonbra/javasteam/base/IPacketMsg;)Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;

    move-result-object p1

    if-nez p1, :cond_e

    return-void

    .line 57
    :cond_e
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;->getClient()Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    move-result-object p0

    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/steam/steamclient/SteamClient;->postCallback(Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;)V

    return-void
.end method

.method public final serverQuery(Lin/dragonbra/javasteam/steam/handlers/steammasterserver/QueryDetails;)Lin/dragonbra/javasteam/types/AsyncJobSingle;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lin/dragonbra/javasteam/steam/handlers/steammasterserver/QueryDetails;",
            ")",
            "Lin/dragonbra/javasteam/types/AsyncJobSingle<",
            "Lin/dragonbra/javasteam/steam/handlers/steammasterserver/callback/QueryCallback;",
            ">;"
        }
    .end annotation

    const-string v0, "details"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    new-instance v0, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;

    .line 28
    sget-object v3, Lin/dragonbra/javasteam/enums/EMsg;->ClientGMSServerQuery:Lin/dragonbra/javasteam/enums/EMsg;

    const/4 v5, 0x4

    const/4 v6, 0x0

    .line 26
    const-class v2, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverGameservers$CMsgClientGMSServerQuery;

    const/4 v4, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;-><init>(Ljava/lang/Class;Lin/dragonbra/javasteam/enums/EMsg;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 30
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;->getClient()Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    move-result-object v1

    invoke-virtual {v1}, Lin/dragonbra/javasteam/steam/steamclient/SteamClient;->getNextJobID()Lin/dragonbra/javasteam/types/JobID;

    move-result-object v1

    invoke-virtual {v0, v1}, Lin/dragonbra/javasteam/base/AClientMsgProtobuf;->setSourceJobID(Lin/dragonbra/javasteam/types/JobID;)V

    .line 32
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v1

    check-cast v1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverGameservers$CMsgClientGMSServerQuery$Builder;

    invoke-virtual {p1}, Lin/dragonbra/javasteam/steam/handlers/steammasterserver/QueryDetails;->getAppID()I

    move-result v2

    invoke-virtual {v1, v2}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverGameservers$CMsgClientGMSServerQuery$Builder;->setAppId(I)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverGameservers$CMsgClientGMSServerQuery$Builder;

    .line 34
    invoke-virtual {p1}, Lin/dragonbra/javasteam/steam/handlers/steammasterserver/QueryDetails;->getGeoLocatedIP()Ljava/net/InetAddress;

    move-result-object v1

    if-eqz v1, :cond_44

    .line 35
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v1

    check-cast v1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverGameservers$CMsgClientGMSServerQuery$Builder;

    invoke-virtual {p1}, Lin/dragonbra/javasteam/steam/handlers/steammasterserver/QueryDetails;->getGeoLocatedIP()Ljava/net/InetAddress;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v2}, Lin/dragonbra/javasteam/util/NetHelpers;->getIPAddress(Ljava/net/InetAddress;)I

    move-result v2

    invoke-virtual {v1, v2}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverGameservers$CMsgClientGMSServerQuery$Builder;->setGeoLocationIp(I)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverGameservers$CMsgClientGMSServerQuery$Builder;

    .line 38
    :cond_44
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v1

    check-cast v1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverGameservers$CMsgClientGMSServerQuery$Builder;

    invoke-virtual {p1}, Lin/dragonbra/javasteam/steam/handlers/steammasterserver/QueryDetails;->getFilter()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverGameservers$CMsgClientGMSServerQuery$Builder;->setFilterText(Ljava/lang/String;)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverGameservers$CMsgClientGMSServerQuery$Builder;

    .line 39
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v1

    check-cast v1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverGameservers$CMsgClientGMSServerQuery$Builder;

    invoke-virtual {p1}, Lin/dragonbra/javasteam/steam/handlers/steammasterserver/QueryDetails;->getRegion()Lin/dragonbra/javasteam/enums/ERegionCode;

    move-result-object v2

    invoke-virtual {v2}, Lin/dragonbra/javasteam/enums/ERegionCode;->code()B

    move-result v2

    invoke-virtual {v1, v2}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverGameservers$CMsgClientGMSServerQuery$Builder;->setRegionCode(I)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverGameservers$CMsgClientGMSServerQuery$Builder;

    .line 41
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v1

    check-cast v1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverGameservers$CMsgClientGMSServerQuery$Builder;

    invoke-virtual {p1}, Lin/dragonbra/javasteam/steam/handlers/steammasterserver/QueryDetails;->getMaxServers()I

    move-result p1

    invoke-virtual {v1, p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverGameservers$CMsgClientGMSServerQuery$Builder;->setMaxServers(I)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverGameservers$CMsgClientGMSServerQuery$Builder;

    .line 44
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;->getClient()Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    move-result-object p1

    invoke-virtual {p1, v0}, Lin/dragonbra/javasteam/steam/CMClient;->send(Lin/dragonbra/javasteam/base/IClientMsg;)V

    .line 46
    new-instance p1, Lin/dragonbra/javasteam/types/AsyncJobSingle;

    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;->getClient()Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    move-result-object p0

    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/AClientMsgProtobuf;->getSourceJobID()Lin/dragonbra/javasteam/types/JobID;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lin/dragonbra/javasteam/types/AsyncJobSingle;-><init>(Lin/dragonbra/javasteam/steam/steamclient/SteamClient;Lin/dragonbra/javasteam/types/JobID;)V

    return-object p1
.end method

###### Class in.dragonbra.javasteam.steam.handlers.steammasterserver.SteamMasterServer.Companion (in.dragonbra.javasteam.steam.handlers.steammasterserver.SteamMasterServer$Companion)
.class public final Lin/dragonbra/javasteam/steam/handlers/steammasterserver/SteamMasterServer$Companion;
.super Ljava/lang/Object;
.source "SteamMasterServer.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lin/dragonbra/javasteam/steam/handlers/steammasterserver/SteamMasterServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lin/dragonbra/javasteam/steam/handlers/steammasterserver/SteamMasterServer$Companion$WhenMappings;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lin/dragonbra/javasteam/steam/handlers/steammasterserver/SteamMasterServer$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$getCallback(Lin/dragonbra/javasteam/steam/handlers/steammasterserver/SteamMasterServer$Companion;Lin/dragonbra/javasteam/base/IPacketMsg;)Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;
    .registers 2

    .line 60
    invoke-direct {p0, p1}, Lin/dragonbra/javasteam/steam/handlers/steammasterserver/SteamMasterServer$Companion;->getCallback(Lin/dragonbra/javasteam/base/IPacketMsg;)Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;

    move-result-object p0

    return-object p0
.end method

.method private final getCallback(Lin/dragonbra/javasteam/base/IPacketMsg;)Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;
    .registers 3

    .line 61
    invoke-interface {p1}, Lin/dragonbra/javasteam/base/IPacketMsg;->getMsgType()Lin/dragonbra/javasteam/enums/EMsg;

    move-result-object p0

    sget-object v0, Lin/dragonbra/javasteam/steam/handlers/steammasterserver/SteamMasterServer$Companion$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_15

    .line 62
    new-instance p0, Lin/dragonbra/javasteam/steam/handlers/steammasterserver/callback/QueryCallback;

    invoke-direct {p0, p1}, Lin/dragonbra/javasteam/steam/handlers/steammasterserver/callback/QueryCallback;-><init>(Lin/dragonbra/javasteam/base/IPacketMsg;)V

    goto :goto_16

    :cond_15
    const/4 p0, 0x0

    :goto_16
    return-object p0
.end method

###### Class in.dragonbra.javasteam.steam.handlers.steammasterserver.SteamMasterServer.Companion.WhenMappings (in.dragonbra.javasteam.steam.handlers.steammasterserver.SteamMasterServer$Companion$WhenMappings)
.class public final synthetic Lin/dragonbra/javasteam/steam/handlers/steammasterserver/SteamMasterServer$Companion$WhenMappings;
.super Ljava/lang/Object;
.source "SteamMasterServer.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lin/dragonbra/javasteam/steam/handlers/steammasterserver/SteamMasterServer$Companion;
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
    sget-object v1, Lin/dragonbra/javasteam/enums/EMsg;->GMSClientServerQueryResponse:Lin/dragonbra/javasteam/enums/EMsg;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_10} :catch_10

    :catch_10
    sput-object v0, Lin/dragonbra/javasteam/steam/handlers/steammasterserver/SteamMasterServer$Companion$WhenMappings;->$EnumSwitchMapping$0:[I

    return-void
.end method
