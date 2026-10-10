###### Class in.dragonbra.javasteam.steam.handlers.steamapps.SteamApps (in.dragonbra.javasteam.steam.handlers.steamapps.SteamApps)
.class public final Lin/dragonbra/javasteam/steam/handlers/steamapps/SteamApps;
.super Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;
.source "SteamApps.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lin/dragonbra/javasteam/steam/handlers/steamapps/SteamApps$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSteamApps.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SteamApps.kt\nin/dragonbra/javasteam/steam/handlers/steamapps/SteamApps\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,506:1\n1869#2,2:507\n1869#2,2:509\n1563#2:512\n1634#2,2:513\n1563#2:515\n1634#2,3:516\n1636#2:519\n1#3:511\n*S KotlinDebug\n*F\n+ 1 SteamApps.kt\nin/dragonbra/javasteam/steam/handlers/steamapps/SteamApps\n*L\n240#1:507,2\n250#1:509,2\n415#1:512\n415#1:513,2\n453#1:515\n453#1:516,3\n415#1:519\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lin/dragonbra/javasteam/steam/handlers/steamapps/SteamApps$Companion;


# direct methods
.method public static synthetic $r8$lambda$GuAziLqiIj1M5hsLq4cLp1omvKI(Lin/dragonbra/javasteam/steam/handlers/steamapps/callback/PICSProductInfoCallback;)Ljava/lang/Boolean;
    .registers 1

    .line 0
    invoke-static {p0}, Lin/dragonbra/javasteam/steam/handlers/steamapps/SteamApps;->picsGetProductInfo$lambda$1(Lin/dragonbra/javasteam/steam/handlers/steamapps/callback/PICSProductInfoCallback;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 0
    new-instance v0, Lin/dragonbra/javasteam/steam/handlers/steamapps/SteamApps$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lin/dragonbra/javasteam/steam/handlers/steamapps/SteamApps$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lin/dragonbra/javasteam/steam/handlers/steamapps/SteamApps;->Companion:Lin/dragonbra/javasteam/steam/handlers/steamapps/SteamApps$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 50
    invoke-direct {p0}, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;-><init>()V

    return-void
.end method

.method public static synthetic notifyGamesPlayed$default(Lin/dragonbra/javasteam/steam/handlers/steamapps/SteamApps;Ljava/util/List;Lin/dragonbra/javasteam/enums/EOSType;IZILjava/lang/Object;)V
    .registers 8

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_8

    .line 403
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    :cond_8
    and-int/lit8 p6, p5, 0x4

    const/4 v0, 0x0

    if-eqz p6, :cond_e

    move p3, v0

    :cond_e
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_13

    move p4, v0

    .line 402
    :cond_13
    invoke-virtual {p0, p1, p2, p3, p4}, Lin/dragonbra/javasteam/steam/handlers/steamapps/SteamApps;->notifyGamesPlayed(Ljava/util/List;Lin/dragonbra/javasteam/enums/EOSType;IZ)V

    return-void
.end method

.method public static synthetic picsGetAccessTokens$default(Lin/dragonbra/javasteam/steam/handlers/steamapps/SteamApps;Ljava/lang/Integer;Ljava/lang/Integer;ILjava/lang/Object;)Lin/dragonbra/javasteam/types/AsyncJobSingle;
    .registers 6

    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_6

    move-object p1, v0

    :cond_6
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_b

    move-object p2, v0

    .line 136
    :cond_b
    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/steam/handlers/steamapps/SteamApps;->picsGetAccessTokens(Ljava/lang/Integer;Ljava/lang/Integer;)Lin/dragonbra/javasteam/types/AsyncJobSingle;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic picsGetChangesSince$default(Lin/dragonbra/javasteam/steam/handlers/steamapps/SteamApps;IZZILjava/lang/Object;)Lin/dragonbra/javasteam/types/AsyncJobSingle;
    .registers 7

    and-int/lit8 p5, p4, 0x1

    const/4 v0, 0x0

    if-eqz p5, :cond_6

    move p1, v0

    :cond_6
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_b

    const/4 p2, 0x1

    :cond_b
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_10

    move p3, v0

    .line 177
    :cond_10
    invoke-virtual {p0, p1, p2, p3}, Lin/dragonbra/javasteam/steam/handlers/steamapps/SteamApps;->picsGetChangesSince(IZZ)Lin/dragonbra/javasteam/types/AsyncJobSingle;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic picsGetProductInfo$default(Lin/dragonbra/javasteam/steam/handlers/steamapps/SteamApps;Lin/dragonbra/javasteam/steam/handlers/steamapps/PICSRequest;Lin/dragonbra/javasteam/steam/handlers/steamapps/PICSRequest;ZILjava/lang/Object;)Lin/dragonbra/javasteam/types/AsyncJobMultiple;
    .registers 7

    and-int/lit8 p5, p4, 0x1

    const/4 v0, 0x0

    if-eqz p5, :cond_6

    move-object p1, v0

    :cond_6
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_b

    move-object p2, v0

    :cond_b
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_10

    const/4 p3, 0x0

    .line 208
    :cond_10
    invoke-virtual {p0, p1, p2, p3}, Lin/dragonbra/javasteam/steam/handlers/steamapps/SteamApps;->picsGetProductInfo(Lin/dragonbra/javasteam/steam/handlers/steamapps/PICSRequest;Lin/dragonbra/javasteam/steam/handlers/steamapps/PICSRequest;Z)Lin/dragonbra/javasteam/types/AsyncJobMultiple;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic picsGetProductInfo$default(Lin/dragonbra/javasteam/steam/handlers/steamapps/SteamApps;Ljava/lang/Iterable;Ljava/lang/Iterable;ZILjava/lang/Object;)Lin/dragonbra/javasteam/types/AsyncJobMultiple;
    .registers 6

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_5

    const/4 p3, 0x0

    .line 229
    :cond_5
    invoke-virtual {p0, p1, p2, p3}, Lin/dragonbra/javasteam/steam/handlers/steamapps/SteamApps;->picsGetProductInfo(Ljava/lang/Iterable;Ljava/lang/Iterable;Z)Lin/dragonbra/javasteam/types/AsyncJobMultiple;

    move-result-object p0

    return-object p0
.end method

.method private static final picsGetProductInfo$lambda$1(Lin/dragonbra/javasteam/steam/handlers/steamapps/callback/PICSProductInfoCallback;)Ljava/lang/Boolean;
    .registers 2

    const-string v0, "cb"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 264
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/steamapps/callback/PICSProductInfoCallback;->isResponsePending()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic requestEncryptedAppTicket$default(Lin/dragonbra/javasteam/steam/handlers/steamapps/SteamApps;I[BILjava/lang/Object;)Lin/dragonbra/javasteam/types/AsyncJobSingle;
    .registers 5

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_5

    const/4 p2, 0x0

    .line 109
    :cond_5
    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/steam/handlers/steamapps/SteamApps;->requestEncryptedAppTicket(I[B)Lin/dragonbra/javasteam/types/AsyncJobSingle;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final checkAppBetaPassword(ILjava/lang/String;)Lin/dragonbra/javasteam/types/AsyncJobSingle;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Lin/dragonbra/javasteam/types/AsyncJobSingle<",
            "Lin/dragonbra/javasteam/steam/handlers/steamapps/callback/CheckAppBetaPasswordCallback;",
            ">;"
        }
    .end annotation

    const-string v0, "password"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 307
    new-instance v0, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;

    .line 309
    sget-object v3, Lin/dragonbra/javasteam/enums/EMsg;->ClientCheckAppBetaPassword:Lin/dragonbra/javasteam/enums/EMsg;

    const/4 v5, 0x4

    const/4 v6, 0x0

    .line 307
    const-class v2, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver2$CMsgClientCheckAppBetaPassword;

    const/4 v4, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;-><init>(Ljava/lang/Class;Lin/dragonbra/javasteam/enums/EMsg;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 311
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;->getClient()Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    move-result-object v1

    invoke-virtual {v1}, Lin/dragonbra/javasteam/steam/steamclient/SteamClient;->getNextJobID()Lin/dragonbra/javasteam/types/JobID;

    move-result-object v1

    invoke-virtual {v0, v1}, Lin/dragonbra/javasteam/base/AClientMsgProtobuf;->setSourceJobID(Lin/dragonbra/javasteam/types/JobID;)V

    .line 313
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v1

    check-cast v1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver2$CMsgClientCheckAppBetaPassword$Builder;

    invoke-virtual {v1, p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver2$CMsgClientCheckAppBetaPassword$Builder;->setAppId(I)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver2$CMsgClientCheckAppBetaPassword$Builder;

    .line 314
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object p1

    check-cast p1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver2$CMsgClientCheckAppBetaPassword$Builder;

    invoke-virtual {p1, p2}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver2$CMsgClientCheckAppBetaPassword$Builder;->setBetapassword(Ljava/lang/String;)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver2$CMsgClientCheckAppBetaPassword$Builder;

    .line 317
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;->getClient()Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    move-result-object p1

    invoke-virtual {p1, v0}, Lin/dragonbra/javasteam/steam/CMClient;->send(Lin/dragonbra/javasteam/base/IClientMsg;)V

    .line 319
    new-instance p1, Lin/dragonbra/javasteam/types/AsyncJobSingle;

    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;->getClient()Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    move-result-object p0

    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/AClientMsgProtobuf;->getSourceJobID()Lin/dragonbra/javasteam/types/JobID;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lin/dragonbra/javasteam/types/AsyncJobSingle;-><init>(Lin/dragonbra/javasteam/steam/steamclient/SteamClient;Lin/dragonbra/javasteam/types/JobID;)V

    return-object p1
.end method

.method public final getAppOwnershipTicket(I)Lin/dragonbra/javasteam/types/AsyncJobSingle;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lin/dragonbra/javasteam/types/AsyncJobSingle<",
            "Lin/dragonbra/javasteam/steam/handlers/steamapps/callback/AppOwnershipTicketCallback;",
            ">;"
        }
    .end annotation

    .line 61
    new-instance v6, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;

    .line 63
    sget-object v2, Lin/dragonbra/javasteam/enums/EMsg;->ClientGetAppOwnershipTicket:Lin/dragonbra/javasteam/enums/EMsg;

    const/4 v4, 0x4

    const/4 v5, 0x0

    .line 61
    const-class v1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientGetAppOwnershipTicket;

    const/4 v3, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;-><init>(Ljava/lang/Class;Lin/dragonbra/javasteam/enums/EMsg;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 65
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;->getClient()Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    move-result-object v0

    invoke-virtual {v0}, Lin/dragonbra/javasteam/steam/steamclient/SteamClient;->getNextJobID()Lin/dragonbra/javasteam/types/JobID;

    move-result-object v0

    invoke-virtual {v6, v0}, Lin/dragonbra/javasteam/base/AClientMsgProtobuf;->setSourceJobID(Lin/dragonbra/javasteam/types/JobID;)V

    .line 67
    invoke-virtual {v6}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientGetAppOwnershipTicket$Builder;

    invoke-virtual {v0, p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientGetAppOwnershipTicket$Builder;->setAppId(I)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientGetAppOwnershipTicket$Builder;

    .line 70
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;->getClient()Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    move-result-object p1

    invoke-virtual {p1, v6}, Lin/dragonbra/javasteam/steam/CMClient;->send(Lin/dragonbra/javasteam/base/IClientMsg;)V

    .line 72
    new-instance p1, Lin/dragonbra/javasteam/types/AsyncJobSingle;

    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;->getClient()Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    move-result-object p0

    invoke-virtual {v6}, Lin/dragonbra/javasteam/base/AClientMsgProtobuf;->getSourceJobID()Lin/dragonbra/javasteam/types/JobID;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lin/dragonbra/javasteam/types/AsyncJobSingle;-><init>(Lin/dragonbra/javasteam/steam/steamclient/SteamClient;Lin/dragonbra/javasteam/types/JobID;)V

    return-object p1
.end method

.method public final getDepotDecryptionKey(II)Lin/dragonbra/javasteam/types/AsyncJobSingle;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lin/dragonbra/javasteam/types/AsyncJobSingle<",
            "Lin/dragonbra/javasteam/steam/handlers/steamapps/callback/DepotKeyCallback;",
            ">;"
        }
    .end annotation

    .line 84
    new-instance v6, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;

    .line 86
    sget-object v2, Lin/dragonbra/javasteam/enums/EMsg;->ClientGetDepotDecryptionKey:Lin/dragonbra/javasteam/enums/EMsg;

    const/4 v4, 0x4

    const/4 v5, 0x0

    .line 84
    const-class v1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver2$CMsgClientGetDepotDecryptionKey;

    const/4 v3, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;-><init>(Ljava/lang/Class;Lin/dragonbra/javasteam/enums/EMsg;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 88
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;->getClient()Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    move-result-object v0

    invoke-virtual {v0}, Lin/dragonbra/javasteam/steam/steamclient/SteamClient;->getNextJobID()Lin/dragonbra/javasteam/types/JobID;

    move-result-object v0

    invoke-virtual {v6, v0}, Lin/dragonbra/javasteam/base/AClientMsgProtobuf;->setSourceJobID(Lin/dragonbra/javasteam/types/JobID;)V

    .line 90
    invoke-virtual {v6}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver2$CMsgClientGetDepotDecryptionKey$Builder;

    invoke-virtual {v0, p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver2$CMsgClientGetDepotDecryptionKey$Builder;->setDepotId(I)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver2$CMsgClientGetDepotDecryptionKey$Builder;

    .line 91
    invoke-virtual {v6}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object p1

    check-cast p1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver2$CMsgClientGetDepotDecryptionKey$Builder;

    invoke-virtual {p1, p2}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver2$CMsgClientGetDepotDecryptionKey$Builder;->setAppId(I)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver2$CMsgClientGetDepotDecryptionKey$Builder;

    .line 94
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;->getClient()Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    move-result-object p1

    invoke-virtual {p1, v6}, Lin/dragonbra/javasteam/steam/CMClient;->send(Lin/dragonbra/javasteam/base/IClientMsg;)V

    .line 96
    new-instance p1, Lin/dragonbra/javasteam/types/AsyncJobSingle;

    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;->getClient()Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    move-result-object p0

    invoke-virtual {v6}, Lin/dragonbra/javasteam/base/AClientMsgProtobuf;->getSourceJobID()Lin/dragonbra/javasteam/types/JobID;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lin/dragonbra/javasteam/types/AsyncJobSingle;-><init>(Lin/dragonbra/javasteam/steam/steamclient/SteamClient;Lin/dragonbra/javasteam/types/JobID;)V

    return-object p1
.end method

.method public final getLegacyGameKey(I)Lin/dragonbra/javasteam/types/AsyncJobSingle;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lin/dragonbra/javasteam/types/AsyncJobSingle<",
            "Lin/dragonbra/javasteam/steam/handlers/steamapps/callback/LegacyGameKeyCallback;",
            ">;"
        }
    .end annotation

    .line 329
    new-instance v0, Lin/dragonbra/javasteam/base/ClientMsg;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const-class v3, Lin/dragonbra/javasteam/generated/MsgClientGetLegacyGameKey;

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lin/dragonbra/javasteam/base/ClientMsg;-><init>(Ljava/lang/Class;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 330
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;->getClient()Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    move-result-object v1

    invoke-virtual {v1}, Lin/dragonbra/javasteam/steam/steamclient/SteamClient;->getNextJobID()Lin/dragonbra/javasteam/types/JobID;

    move-result-object v1

    invoke-virtual {v0, v1}, Lin/dragonbra/javasteam/base/ClientMsg;->setSourceJobID(Lin/dragonbra/javasteam/types/JobID;)V

    .line 331
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/ClientMsg;->getBody()Lin/dragonbra/javasteam/base/ISteamSerializableMessage;

    move-result-object v1

    check-cast v1, Lin/dragonbra/javasteam/generated/MsgClientGetLegacyGameKey;

    invoke-virtual {v1, p1}, Lin/dragonbra/javasteam/generated/MsgClientGetLegacyGameKey;->setAppId(I)V

    .line 334
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;->getClient()Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    move-result-object p1

    invoke-virtual {p1, v0}, Lin/dragonbra/javasteam/steam/CMClient;->send(Lin/dragonbra/javasteam/base/IClientMsg;)V

    .line 336
    new-instance p1, Lin/dragonbra/javasteam/types/AsyncJobSingle;

    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;->getClient()Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    move-result-object p0

    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/ClientMsg;->getSourceJobID()Lin/dragonbra/javasteam/types/JobID;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lin/dragonbra/javasteam/types/AsyncJobSingle;-><init>(Lin/dragonbra/javasteam/steam/steamclient/SteamClient;Lin/dragonbra/javasteam/types/JobID;)V

    return-object p1
.end method

.method public handleMsg(Lin/dragonbra/javasteam/base/IPacketMsg;)V
    .registers 3

    const-string v0, "packetMsg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 479
    sget-object v0, Lin/dragonbra/javasteam/steam/handlers/steamapps/SteamApps;->Companion:Lin/dragonbra/javasteam/steam/handlers/steamapps/SteamApps$Companion;

    invoke-static {v0, p1}, Lin/dragonbra/javasteam/steam/handlers/steamapps/SteamApps$Companion;->access$getCallback(Lin/dragonbra/javasteam/steam/handlers/steamapps/SteamApps$Companion;Lin/dragonbra/javasteam/base/IPacketMsg;)Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;

    move-result-object p1

    if-nez p1, :cond_e

    return-void

    .line 481
    :cond_e
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;->getClient()Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    move-result-object p0

    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/steam/steamclient/SteamClient;->postCallback(Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;)V

    return-void
.end method

.method public final notifyGamesPlayed(Lin/dragonbra/javasteam/enums/EOSType;)V
    .registers 10

    .line 0
    const-string v0, "clientOsType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0xd

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v3, p1

    invoke-static/range {v1 .. v7}, Lin/dragonbra/javasteam/steam/handlers/steamapps/SteamApps;->notifyGamesPlayed$default(Lin/dragonbra/javasteam/steam/handlers/steamapps/SteamApps;Ljava/util/List;Lin/dragonbra/javasteam/enums/EOSType;IZILjava/lang/Object;)V

    return-void
.end method

.method public final notifyGamesPlayed(Ljava/util/List;Lin/dragonbra/javasteam/enums/EOSType;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;",
            ">;",
            "Lin/dragonbra/javasteam/enums/EOSType;",
            ")V"
        }
    .end annotation

    .line 0
    const-string v0, "gamesPlayed"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clientOsType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0xc

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v1 .. v7}, Lin/dragonbra/javasteam/steam/handlers/steamapps/SteamApps;->notifyGamesPlayed$default(Lin/dragonbra/javasteam/steam/handlers/steamapps/SteamApps;Ljava/util/List;Lin/dragonbra/javasteam/enums/EOSType;IZILjava/lang/Object;)V

    return-void
.end method

.method public final notifyGamesPlayed(Ljava/util/List;Lin/dragonbra/javasteam/enums/EOSType;I)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;",
            ">;",
            "Lin/dragonbra/javasteam/enums/EOSType;",
            "I)V"
        }
    .end annotation

    .line 0
    const-string v0, "gamesPlayed"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clientOsType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-static/range {v1 .. v7}, Lin/dragonbra/javasteam/steam/handlers/steamapps/SteamApps;->notifyGamesPlayed$default(Lin/dragonbra/javasteam/steam/handlers/steamapps/SteamApps;Ljava/util/List;Lin/dragonbra/javasteam/enums/EOSType;IZILjava/lang/Object;)V

    return-void
.end method

.method public final notifyGamesPlayed(Ljava/util/List;Lin/dragonbra/javasteam/enums/EOSType;IZ)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;",
            ">;",
            "Lin/dragonbra/javasteam/enums/EOSType;",
            "IZ)V"
        }
    .end annotation

    const-string v0, "gamesPlayed"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clientOsType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 408
    new-instance v0, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;

    .line 410
    sget-object v3, Lin/dragonbra/javasteam/enums/EMsg;->ClientGamesPlayedWithDataBlob:Lin/dragonbra/javasteam/enums/EMsg;

    const/4 v5, 0x4

    const/4 v6, 0x0

    .line 408
    const-class v2, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientGamesPlayed;

    const/4 v4, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;-><init>(Ljava/lang/Class;Lin/dragonbra/javasteam/enums/EMsg;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 412
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;->getClient()Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    move-result-object v1

    invoke-virtual {v1}, Lin/dragonbra/javasteam/steam/steamclient/SteamClient;->getNextJobID()Lin/dragonbra/javasteam/types/JobID;

    move-result-object v1

    invoke-virtual {v0, v1}, Lin/dragonbra/javasteam/base/AClientMsgProtobuf;->setSourceJobID(Lin/dragonbra/javasteam/types/JobID;)V

    .line 414
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v1

    check-cast v1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientGamesPlayed$Builder;

    .line 1563
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {p1, v3}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 1634
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_37
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_17a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 1635
    check-cast v4, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;

    .line 416
    invoke-static {}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientGamesPlayed$GamePlayed;->newBuilder()Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientGamesPlayed$GamePlayed$Builder;

    move-result-object v5

    .line 417
    invoke-virtual {v4}, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->getSteamIdGs()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientGamesPlayed$GamePlayed$Builder;->setSteamIdGs(J)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientGamesPlayed$GamePlayed$Builder;

    .line 418
    invoke-virtual {v4}, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->getGameId()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientGamesPlayed$GamePlayed$Builder;->setGameId(J)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientGamesPlayed$GamePlayed$Builder;

    .line 419
    invoke-virtual {v4}, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->getDeprecatedGameIpAddress()I

    move-result v6

    invoke-virtual {v5, v6}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientGamesPlayed$GamePlayed$Builder;->setDeprecatedGameIpAddress(I)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientGamesPlayed$GamePlayed$Builder;

    .line 420
    invoke-virtual {v4}, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->getGamePort()I

    move-result v6

    invoke-virtual {v5, v6}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientGamesPlayed$GamePlayed$Builder;->setGamePort(I)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientGamesPlayed$GamePlayed$Builder;

    .line 421
    invoke-virtual {v4}, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->isSecure()Z

    move-result v6

    invoke-virtual {v5, v6}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientGamesPlayed$GamePlayed$Builder;->setIsSecure(Z)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientGamesPlayed$GamePlayed$Builder;

    .line 422
    invoke-virtual {v4}, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->getToken()[B

    move-result-object v6

    invoke-static {v6}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v6

    invoke-virtual {v5, v6}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientGamesPlayed$GamePlayed$Builder;->setToken(Lcom/google/protobuf/ByteString;)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientGamesPlayed$GamePlayed$Builder;

    .line 423
    invoke-virtual {v4}, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->getGameExtraInfo()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientGamesPlayed$GamePlayed$Builder;->setGameExtraInfo(Ljava/lang/String;)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientGamesPlayed$GamePlayed$Builder;

    .line 424
    invoke-virtual {v4}, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->getGameDataBlob()[B

    move-result-object v6

    if-eqz v6, :cond_89

    .line 425
    invoke-static {v6}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v6

    invoke-virtual {v5, v6}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientGamesPlayed$GamePlayed$Builder;->setGameDataBlob(Lcom/google/protobuf/ByteString;)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientGamesPlayed$GamePlayed$Builder;

    .line 427
    :cond_89
    invoke-virtual {v4}, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->getProcessId()I

    move-result v6

    invoke-virtual {v5, v6}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientGamesPlayed$GamePlayed$Builder;->setProcessId(I)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientGamesPlayed$GamePlayed$Builder;

    .line 428
    invoke-virtual {v4}, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->getStreamingProviderId()I

    move-result v6

    invoke-virtual {v5, v6}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientGamesPlayed$GamePlayed$Builder;->setStreamingProviderId(I)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientGamesPlayed$GamePlayed$Builder;

    .line 429
    invoke-virtual {v4}, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->getGameFlags()I

    move-result v6

    invoke-virtual {v5, v6}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientGamesPlayed$GamePlayed$Builder;->setGameFlags(I)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientGamesPlayed$GamePlayed$Builder;

    .line 430
    invoke-virtual {v4}, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->getOwnerId()I

    move-result v6

    invoke-virtual {v5, v6}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientGamesPlayed$GamePlayed$Builder;->setOwnerId(I)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientGamesPlayed$GamePlayed$Builder;

    .line 431
    invoke-virtual {v4}, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->getVrHmdVendor()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientGamesPlayed$GamePlayed$Builder;->setVrHmdVendor(Ljava/lang/String;)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientGamesPlayed$GamePlayed$Builder;

    .line 432
    invoke-virtual {v4}, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->getVrHmdModel()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientGamesPlayed$GamePlayed$Builder;->setVrHmdModel(Ljava/lang/String;)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientGamesPlayed$GamePlayed$Builder;

    .line 433
    invoke-virtual {v4}, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->getLaunchOptionType()I

    move-result v6

    invoke-virtual {v5, v6}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientGamesPlayed$GamePlayed$Builder;->setLaunchOptionType(I)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientGamesPlayed$GamePlayed$Builder;

    .line 434
    invoke-virtual {v4}, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->getPrimaryControllerType()I

    move-result v6

    invoke-virtual {v5, v6}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientGamesPlayed$GamePlayed$Builder;->setPrimaryControllerType(I)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientGamesPlayed$GamePlayed$Builder;

    .line 435
    invoke-virtual {v4}, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->getPrimarySteamControllerSerial()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientGamesPlayed$GamePlayed$Builder;->setPrimarySteamControllerSerial(Ljava/lang/String;)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientGamesPlayed$GamePlayed$Builder;

    .line 436
    invoke-virtual {v4}, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->getTotalSteamControllerCount()I

    move-result v6

    invoke-virtual {v5, v6}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientGamesPlayed$GamePlayed$Builder;->setTotalSteamControllerCount(I)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientGamesPlayed$GamePlayed$Builder;

    .line 437
    invoke-virtual {v4}, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->getTotalNonSteamControllerCount()I

    move-result v6

    invoke-virtual {v5, v6}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientGamesPlayed$GamePlayed$Builder;->setTotalNonSteamControllerCount(I)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientGamesPlayed$GamePlayed$Builder;

    .line 438
    invoke-virtual {v4}, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->getControllerWorkshopFileId()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientGamesPlayed$GamePlayed$Builder;->setControllerWorkshopFileId(J)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientGamesPlayed$GamePlayed$Builder;

    .line 439
    invoke-virtual {v4}, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->getLaunchSource()I

    move-result v6

    invoke-virtual {v5, v6}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientGamesPlayed$GamePlayed$Builder;->setLaunchSource(I)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientGamesPlayed$GamePlayed$Builder;

    .line 440
    invoke-virtual {v4}, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->getVrHmdRuntime()I

    move-result v6

    invoke-virtual {v5, v6}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientGamesPlayed$GamePlayed$Builder;->setVrHmdRuntime(I)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientGamesPlayed$GamePlayed$Builder;

    .line 441
    invoke-virtual {v4}, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->getGameIpAddress()Ljava/net/InetAddress;

    move-result-object v6

    if-eqz v6, :cond_f8

    .line 442
    invoke-static {v6}, Lin/dragonbra/javasteam/util/NetHelpers;->getMsgIPAddress(Ljava/net/InetAddress;)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesBase$CMsgIPAddress;

    move-result-object v6

    invoke-virtual {v5, v6}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientGamesPlayed$GamePlayed$Builder;->setGameIpAddress(Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesBase$CMsgIPAddress;)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientGamesPlayed$GamePlayed$Builder;

    .line 444
    :cond_f8
    invoke-virtual {v4}, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->getControllerConnectionType()I

    move-result v6

    invoke-virtual {v5, v6}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientGamesPlayed$GamePlayed$Builder;->setControllerConnectionType(I)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientGamesPlayed$GamePlayed$Builder;

    .line 445
    invoke-virtual {v4}, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->getGameOsPlatform()I

    move-result v6

    invoke-virtual {v5, v6}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientGamesPlayed$GamePlayed$Builder;->setGameOsPlatform(I)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientGamesPlayed$GamePlayed$Builder;

    .line 446
    invoke-virtual {v4}, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->getGameBuildId()I

    move-result v6

    invoke-virtual {v5, v6}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientGamesPlayed$GamePlayed$Builder;->setGameBuildId(I)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientGamesPlayed$GamePlayed$Builder;

    .line 447
    invoke-virtual {v4}, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->getCompatToolId()I

    move-result v6

    invoke-virtual {v5, v6}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientGamesPlayed$GamePlayed$Builder;->setCompatToolId(I)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientGamesPlayed$GamePlayed$Builder;

    .line 448
    invoke-virtual {v4}, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->getCompatToolCmd()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientGamesPlayed$GamePlayed$Builder;->setCompatToolCmd(Ljava/lang/String;)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientGamesPlayed$GamePlayed$Builder;

    .line 449
    invoke-virtual {v4}, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->getCompatToolBuildId()I

    move-result v6

    invoke-virtual {v5, v6}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientGamesPlayed$GamePlayed$Builder;->setCompatToolBuildId(I)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientGamesPlayed$GamePlayed$Builder;

    .line 450
    invoke-virtual {v4}, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->getBetaName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientGamesPlayed$GamePlayed$Builder;->setBetaName(Ljava/lang/String;)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientGamesPlayed$GamePlayed$Builder;

    .line 451
    invoke-virtual {v4}, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->getDlcContext()I

    move-result v6

    invoke-virtual {v5, v6}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientGamesPlayed$GamePlayed$Builder;->setDlcContext(I)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientGamesPlayed$GamePlayed$Builder;

    .line 453
    invoke-virtual {v4}, Lin/dragonbra/javasteam/steam/handlers/steamapps/GamePlayedInfo;->getProcessIdList()Ljava/util/List;

    move-result-object v4

    .line 1563
    new-instance v6, Ljava/util/ArrayList;

    invoke-static {v4, v3}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 1634
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_141
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_16e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 1635
    check-cast v7, Lin/dragonbra/javasteam/steam/handlers/steamapps/AppProcessInfo;

    .line 454
    invoke-static {}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientGamesPlayed$ProcessInfo;->newBuilder()Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientGamesPlayed$ProcessInfo$Builder;

    move-result-object v8

    .line 455
    invoke-virtual {v7}, Lin/dragonbra/javasteam/steam/handlers/steamapps/AppProcessInfo;->getProcessId()I

    move-result v9

    invoke-virtual {v8, v9}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientGamesPlayed$ProcessInfo$Builder;->setProcessId(I)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientGamesPlayed$ProcessInfo$Builder;

    .line 456
    invoke-virtual {v7}, Lin/dragonbra/javasteam/steam/handlers/steamapps/AppProcessInfo;->getProcessIdParent()I

    move-result v9

    invoke-virtual {v8, v9}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientGamesPlayed$ProcessInfo$Builder;->setProcessIdParent(I)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientGamesPlayed$ProcessInfo$Builder;

    .line 457
    invoke-virtual {v7}, Lin/dragonbra/javasteam/steam/handlers/steamapps/AppProcessInfo;->getParentIsSteam()Z

    move-result v7

    invoke-virtual {v8, v7}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientGamesPlayed$ProcessInfo$Builder;->setParentIsSteam(Z)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientGamesPlayed$ProcessInfo$Builder;

    .line 458
    invoke-virtual {v8}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientGamesPlayed$ProcessInfo$Builder;->build()Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientGamesPlayed$ProcessInfo;

    move-result-object v7

    .line 1635
    invoke-interface {v6, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_141

    .line 452
    :cond_16e
    invoke-virtual {v5, v6}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientGamesPlayed$GamePlayed$Builder;->addAllProcessIdList(Ljava/lang/Iterable;)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientGamesPlayed$GamePlayed$Builder;

    .line 461
    invoke-virtual {v5}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientGamesPlayed$GamePlayed$Builder;->build()Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientGamesPlayed$GamePlayed;

    move-result-object v4

    .line 1635
    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_37

    .line 414
    :cond_17a
    invoke-virtual {v1, v2}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientGamesPlayed$Builder;->addAllGamesPlayed(Ljava/lang/Iterable;)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientGamesPlayed$Builder;

    .line 464
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object p1

    check-cast p1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientGamesPlayed$Builder;

    invoke-virtual {p2}, Lin/dragonbra/javasteam/enums/EOSType;->code()I

    move-result p2

    invoke-virtual {p1, p2}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientGamesPlayed$Builder;->setClientOsType(I)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientGamesPlayed$Builder;

    .line 465
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object p1

    check-cast p1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientGamesPlayed$Builder;

    invoke-virtual {p1, p3}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientGamesPlayed$Builder;->setCloudGamingPlatform(I)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientGamesPlayed$Builder;

    .line 466
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object p1

    check-cast p1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientGamesPlayed$Builder;

    invoke-virtual {p1, p4}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientGamesPlayed$Builder;->setRecentReauthentication(Z)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientGamesPlayed$Builder;

    .line 469
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;->getClient()Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    move-result-object p0

    invoke-virtual {p0, v0}, Lin/dragonbra/javasteam/steam/CMClient;->send(Lin/dragonbra/javasteam/base/IClientMsg;)V

    return-void
.end method

.method public final picsGetAccessTokens()Lin/dragonbra/javasteam/types/AsyncJobSingle;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lin/dragonbra/javasteam/types/AsyncJobSingle<",
            "Lin/dragonbra/javasteam/steam/handlers/steamapps/callback/PICSTokensCallback;",
            ">;"
        }
    .end annotation

    .line 0
    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-static {p0, v0, v0, v1, v0}, Lin/dragonbra/javasteam/steam/handlers/steamapps/SteamApps;->picsGetAccessTokens$default(Lin/dragonbra/javasteam/steam/handlers/steamapps/SteamApps;Ljava/lang/Integer;Ljava/lang/Integer;ILjava/lang/Object;)Lin/dragonbra/javasteam/types/AsyncJobSingle;

    move-result-object p0

    return-object p0
.end method

.method public final picsGetAccessTokens(Ljava/lang/Integer;)Lin/dragonbra/javasteam/types/AsyncJobSingle;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")",
            "Lin/dragonbra/javasteam/types/AsyncJobSingle<",
            "Lin/dragonbra/javasteam/steam/handlers/steamapps/callback/PICSTokensCallback;",
            ">;"
        }
    .end annotation

    .line 0
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1, v0}, Lin/dragonbra/javasteam/steam/handlers/steamapps/SteamApps;->picsGetAccessTokens$default(Lin/dragonbra/javasteam/steam/handlers/steamapps/SteamApps;Ljava/lang/Integer;Ljava/lang/Integer;ILjava/lang/Object;)Lin/dragonbra/javasteam/types/AsyncJobSingle;

    move-result-object p0

    return-object p0
.end method

.method public final picsGetAccessTokens(Ljava/lang/Integer;Ljava/lang/Integer;)Lin/dragonbra/javasteam/types/AsyncJobSingle;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ")",
            "Lin/dragonbra/javasteam/types/AsyncJobSingle<",
            "Lin/dragonbra/javasteam/steam/handlers/steamapps/callback/PICSTokensCallback;",
            ">;"
        }
    .end annotation

    .line 137
    invoke-static {p1}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOfNotNull(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 138
    invoke-static {p2}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOfNotNull(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    .line 140
    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/steam/handlers/steamapps/SteamApps;->picsGetAccessTokens(Ljava/lang/Iterable;Ljava/lang/Iterable;)Lin/dragonbra/javasteam/types/AsyncJobSingle;

    move-result-object p0

    return-object p0
.end method

.method public final picsGetAccessTokens(Ljava/lang/Iterable;Ljava/lang/Iterable;)Lin/dragonbra/javasteam/types/AsyncJobSingle;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Iterable<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lin/dragonbra/javasteam/types/AsyncJobSingle<",
            "Lin/dragonbra/javasteam/steam/handlers/steamapps/callback/PICSTokensCallback;",
            ">;"
        }
    .end annotation

    const-string v0, "appIds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "packageIds"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 152
    new-instance v0, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;

    .line 154
    sget-object v3, Lin/dragonbra/javasteam/enums/EMsg;->ClientPICSAccessTokenRequest:Lin/dragonbra/javasteam/enums/EMsg;

    const/4 v5, 0x4

    const/4 v6, 0x0

    .line 152
    const-class v2, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverAppinfo$CMsgClientPICSAccessTokenRequest;

    const/4 v4, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;-><init>(Ljava/lang/Class;Lin/dragonbra/javasteam/enums/EMsg;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 156
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;->getClient()Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    move-result-object v1

    invoke-virtual {v1}, Lin/dragonbra/javasteam/steam/steamclient/SteamClient;->getNextJobID()Lin/dragonbra/javasteam/types/JobID;

    move-result-object v1

    invoke-virtual {v0, v1}, Lin/dragonbra/javasteam/base/AClientMsgProtobuf;->setSourceJobID(Lin/dragonbra/javasteam/types/JobID;)V

    .line 158
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v1

    check-cast v1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverAppinfo$CMsgClientPICSAccessTokenRequest$Builder;

    invoke-virtual {v1, p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverAppinfo$CMsgClientPICSAccessTokenRequest$Builder;->addAllAppids(Ljava/lang/Iterable;)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverAppinfo$CMsgClientPICSAccessTokenRequest$Builder;

    .line 159
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object p1

    check-cast p1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverAppinfo$CMsgClientPICSAccessTokenRequest$Builder;

    invoke-virtual {p1, p2}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverAppinfo$CMsgClientPICSAccessTokenRequest$Builder;->addAllPackageids(Ljava/lang/Iterable;)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverAppinfo$CMsgClientPICSAccessTokenRequest$Builder;

    .line 162
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;->getClient()Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    move-result-object p1

    invoke-virtual {p1, v0}, Lin/dragonbra/javasteam/steam/CMClient;->send(Lin/dragonbra/javasteam/base/IClientMsg;)V

    .line 164
    new-instance p1, Lin/dragonbra/javasteam/types/AsyncJobSingle;

    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;->getClient()Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    move-result-object p0

    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/AClientMsgProtobuf;->getSourceJobID()Lin/dragonbra/javasteam/types/JobID;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lin/dragonbra/javasteam/types/AsyncJobSingle;-><init>(Lin/dragonbra/javasteam/steam/steamclient/SteamClient;Lin/dragonbra/javasteam/types/JobID;)V

    return-object p1
.end method

.method public final picsGetChangesSince()Lin/dragonbra/javasteam/types/AsyncJobSingle;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lin/dragonbra/javasteam/types/AsyncJobSingle<",
            "Lin/dragonbra/javasteam/steam/handlers/steamapps/callback/PICSChangesCallback;",
            ">;"
        }
    .end annotation

    .line 0
    const/4 v4, 0x7

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lin/dragonbra/javasteam/steam/handlers/steamapps/SteamApps;->picsGetChangesSince$default(Lin/dragonbra/javasteam/steam/handlers/steamapps/SteamApps;IZZILjava/lang/Object;)Lin/dragonbra/javasteam/types/AsyncJobSingle;

    move-result-object p0

    return-object p0
.end method

.method public final picsGetChangesSince(I)Lin/dragonbra/javasteam/types/AsyncJobSingle;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lin/dragonbra/javasteam/types/AsyncJobSingle<",
            "Lin/dragonbra/javasteam/steam/handlers/steamapps/callback/PICSChangesCallback;",
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

    invoke-static/range {v0 .. v5}, Lin/dragonbra/javasteam/steam/handlers/steamapps/SteamApps;->picsGetChangesSince$default(Lin/dragonbra/javasteam/steam/handlers/steamapps/SteamApps;IZZILjava/lang/Object;)Lin/dragonbra/javasteam/types/AsyncJobSingle;

    move-result-object p0

    return-object p0
.end method

.method public final picsGetChangesSince(IZ)Lin/dragonbra/javasteam/types/AsyncJobSingle;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Lin/dragonbra/javasteam/types/AsyncJobSingle<",
            "Lin/dragonbra/javasteam/steam/handlers/steamapps/callback/PICSChangesCallback;",
            ">;"
        }
    .end annotation

    .line 0
    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-static/range {v0 .. v5}, Lin/dragonbra/javasteam/steam/handlers/steamapps/SteamApps;->picsGetChangesSince$default(Lin/dragonbra/javasteam/steam/handlers/steamapps/SteamApps;IZZILjava/lang/Object;)Lin/dragonbra/javasteam/types/AsyncJobSingle;

    move-result-object p0

    return-object p0
.end method

.method public final picsGetChangesSince(IZZ)Lin/dragonbra/javasteam/types/AsyncJobSingle;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZZ)",
            "Lin/dragonbra/javasteam/types/AsyncJobSingle<",
            "Lin/dragonbra/javasteam/steam/handlers/steamapps/callback/PICSChangesCallback;",
            ">;"
        }
    .end annotation

    .line 182
    new-instance v6, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;

    .line 184
    sget-object v2, Lin/dragonbra/javasteam/enums/EMsg;->ClientPICSChangesSinceRequest:Lin/dragonbra/javasteam/enums/EMsg;

    const/4 v4, 0x4

    const/4 v5, 0x0

    .line 182
    const-class v1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverAppinfo$CMsgClientPICSChangesSinceRequest;

    const/4 v3, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;-><init>(Ljava/lang/Class;Lin/dragonbra/javasteam/enums/EMsg;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 186
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;->getClient()Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    move-result-object v0

    invoke-virtual {v0}, Lin/dragonbra/javasteam/steam/steamclient/SteamClient;->getNextJobID()Lin/dragonbra/javasteam/types/JobID;

    move-result-object v0

    invoke-virtual {v6, v0}, Lin/dragonbra/javasteam/base/AClientMsgProtobuf;->setSourceJobID(Lin/dragonbra/javasteam/types/JobID;)V

    .line 188
    invoke-virtual {v6}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverAppinfo$CMsgClientPICSChangesSinceRequest$Builder;

    invoke-virtual {v0, p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverAppinfo$CMsgClientPICSChangesSinceRequest$Builder;->setSinceChangeNumber(I)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverAppinfo$CMsgClientPICSChangesSinceRequest$Builder;

    .line 189
    invoke-virtual {v6}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object p1

    check-cast p1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverAppinfo$CMsgClientPICSChangesSinceRequest$Builder;

    invoke-virtual {p1, p2}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverAppinfo$CMsgClientPICSChangesSinceRequest$Builder;->setSendAppInfoChanges(Z)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverAppinfo$CMsgClientPICSChangesSinceRequest$Builder;

    .line 190
    invoke-virtual {v6}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object p1

    check-cast p1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverAppinfo$CMsgClientPICSChangesSinceRequest$Builder;

    invoke-virtual {p1, p3}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverAppinfo$CMsgClientPICSChangesSinceRequest$Builder;->setSendPackageInfoChanges(Z)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverAppinfo$CMsgClientPICSChangesSinceRequest$Builder;

    .line 193
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;->getClient()Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    move-result-object p1

    invoke-virtual {p1, v6}, Lin/dragonbra/javasteam/steam/CMClient;->send(Lin/dragonbra/javasteam/base/IClientMsg;)V

    .line 195
    new-instance p1, Lin/dragonbra/javasteam/types/AsyncJobSingle;

    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;->getClient()Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    move-result-object p0

    invoke-virtual {v6}, Lin/dragonbra/javasteam/base/AClientMsgProtobuf;->getSourceJobID()Lin/dragonbra/javasteam/types/JobID;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lin/dragonbra/javasteam/types/AsyncJobSingle;-><init>(Lin/dragonbra/javasteam/steam/steamclient/SteamClient;Lin/dragonbra/javasteam/types/JobID;)V

    return-object p1
.end method

.method public final picsGetPrivateBeta(IJLjava/lang/String;[B)Lin/dragonbra/javasteam/types/AsyncJobSingle;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Ljava/lang/String;",
            "[B)",
            "Lin/dragonbra/javasteam/types/AsyncJobSingle<",
            "Lin/dragonbra/javasteam/steam/handlers/steamapps/callback/PrivateBetaCallback;",
            ">;"
        }
    .end annotation

    const-string v0, "branch"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "branchPasswordHash"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 355
    new-instance v0, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;

    .line 357
    sget-object v3, Lin/dragonbra/javasteam/enums/EMsg;->ClientPICSPrivateBetaRequest:Lin/dragonbra/javasteam/enums/EMsg;

    const/4 v5, 0x4

    const/4 v6, 0x0

    .line 355
    const-class v2, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverAppinfo$CMsgClientPICSPrivateBetaRequest;

    const/4 v4, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;-><init>(Ljava/lang/Class;Lin/dragonbra/javasteam/enums/EMsg;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 359
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;->getClient()Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    move-result-object v1

    invoke-virtual {v1}, Lin/dragonbra/javasteam/steam/steamclient/SteamClient;->getNextJobID()Lin/dragonbra/javasteam/types/JobID;

    move-result-object v1

    invoke-virtual {v0, v1}, Lin/dragonbra/javasteam/base/AClientMsgProtobuf;->setSourceJobID(Lin/dragonbra/javasteam/types/JobID;)V

    .line 361
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v1

    check-cast v1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverAppinfo$CMsgClientPICSPrivateBetaRequest$Builder;

    invoke-virtual {v1, p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverAppinfo$CMsgClientPICSPrivateBetaRequest$Builder;->setAppid(I)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverAppinfo$CMsgClientPICSPrivateBetaRequest$Builder;

    .line 362
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object p1

    check-cast p1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverAppinfo$CMsgClientPICSPrivateBetaRequest$Builder;

    invoke-virtual {p1, p2, p3}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverAppinfo$CMsgClientPICSPrivateBetaRequest$Builder;->setAccessToken(J)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverAppinfo$CMsgClientPICSPrivateBetaRequest$Builder;

    .line 363
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object p1

    check-cast p1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverAppinfo$CMsgClientPICSPrivateBetaRequest$Builder;

    invoke-virtual {p1, p4}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverAppinfo$CMsgClientPICSPrivateBetaRequest$Builder;->setBetaName(Ljava/lang/String;)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverAppinfo$CMsgClientPICSPrivateBetaRequest$Builder;

    .line 364
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object p1

    check-cast p1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverAppinfo$CMsgClientPICSPrivateBetaRequest$Builder;

    invoke-static {p5}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object p2

    invoke-virtual {p1, p2}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverAppinfo$CMsgClientPICSPrivateBetaRequest$Builder;->setPasswordHash(Lcom/google/protobuf/ByteString;)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverAppinfo$CMsgClientPICSPrivateBetaRequest$Builder;

    .line 367
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;->getClient()Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    move-result-object p1

    invoke-virtual {p1, v0}, Lin/dragonbra/javasteam/steam/CMClient;->send(Lin/dragonbra/javasteam/base/IClientMsg;)V

    .line 369
    new-instance p1, Lin/dragonbra/javasteam/types/AsyncJobSingle;

    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;->getClient()Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    move-result-object p0

    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/AClientMsgProtobuf;->getSourceJobID()Lin/dragonbra/javasteam/types/JobID;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lin/dragonbra/javasteam/types/AsyncJobSingle;-><init>(Lin/dragonbra/javasteam/steam/steamclient/SteamClient;Lin/dragonbra/javasteam/types/JobID;)V

    return-object p1
.end method

.method public final picsGetProductInfo()Lin/dragonbra/javasteam/types/AsyncJobMultiple;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lin/dragonbra/javasteam/types/AsyncJobMultiple<",
            "Lin/dragonbra/javasteam/steam/handlers/steamapps/callback/PICSProductInfoCallback;",
            ">;"
        }
    .end annotation

    .line 0
    const/4 v4, 0x7

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lin/dragonbra/javasteam/steam/handlers/steamapps/SteamApps;->picsGetProductInfo$default(Lin/dragonbra/javasteam/steam/handlers/steamapps/SteamApps;Lin/dragonbra/javasteam/steam/handlers/steamapps/PICSRequest;Lin/dragonbra/javasteam/steam/handlers/steamapps/PICSRequest;ZILjava/lang/Object;)Lin/dragonbra/javasteam/types/AsyncJobMultiple;

    move-result-object p0

    return-object p0
.end method

.method public final picsGetProductInfo(Lin/dragonbra/javasteam/steam/handlers/steamapps/PICSRequest;)Lin/dragonbra/javasteam/types/AsyncJobMultiple;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lin/dragonbra/javasteam/steam/handlers/steamapps/PICSRequest;",
            ")",
            "Lin/dragonbra/javasteam/types/AsyncJobMultiple<",
            "Lin/dragonbra/javasteam/steam/handlers/steamapps/callback/PICSProductInfoCallback;",
            ">;"
        }
    .end annotation

    .line 0
    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lin/dragonbra/javasteam/steam/handlers/steamapps/SteamApps;->picsGetProductInfo$default(Lin/dragonbra/javasteam/steam/handlers/steamapps/SteamApps;Lin/dragonbra/javasteam/steam/handlers/steamapps/PICSRequest;Lin/dragonbra/javasteam/steam/handlers/steamapps/PICSRequest;ZILjava/lang/Object;)Lin/dragonbra/javasteam/types/AsyncJobMultiple;

    move-result-object p0

    return-object p0
.end method

.method public final picsGetProductInfo(Lin/dragonbra/javasteam/steam/handlers/steamapps/PICSRequest;Lin/dragonbra/javasteam/steam/handlers/steamapps/PICSRequest;)Lin/dragonbra/javasteam/types/AsyncJobMultiple;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lin/dragonbra/javasteam/steam/handlers/steamapps/PICSRequest;",
            "Lin/dragonbra/javasteam/steam/handlers/steamapps/PICSRequest;",
            ")",
            "Lin/dragonbra/javasteam/types/AsyncJobMultiple<",
            "Lin/dragonbra/javasteam/steam/handlers/steamapps/callback/PICSProductInfoCallback;",
            ">;"
        }
    .end annotation

    .line 0
    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lin/dragonbra/javasteam/steam/handlers/steamapps/SteamApps;->picsGetProductInfo$default(Lin/dragonbra/javasteam/steam/handlers/steamapps/SteamApps;Lin/dragonbra/javasteam/steam/handlers/steamapps/PICSRequest;Lin/dragonbra/javasteam/steam/handlers/steamapps/PICSRequest;ZILjava/lang/Object;)Lin/dragonbra/javasteam/types/AsyncJobMultiple;

    move-result-object p0

    return-object p0
.end method

.method public final picsGetProductInfo(Lin/dragonbra/javasteam/steam/handlers/steamapps/PICSRequest;Lin/dragonbra/javasteam/steam/handlers/steamapps/PICSRequest;Z)Lin/dragonbra/javasteam/types/AsyncJobMultiple;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lin/dragonbra/javasteam/steam/handlers/steamapps/PICSRequest;",
            "Lin/dragonbra/javasteam/steam/handlers/steamapps/PICSRequest;",
            "Z)",
            "Lin/dragonbra/javasteam/types/AsyncJobMultiple<",
            "Lin/dragonbra/javasteam/steam/handlers/steamapps/callback/PICSProductInfoCallback;",
            ">;"
        }
    .end annotation

    .line 213
    invoke-static {p1}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOfNotNull(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 214
    invoke-static {p2}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOfNotNull(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    .line 216
    invoke-virtual {p0, p1, p2, p3}, Lin/dragonbra/javasteam/steam/handlers/steamapps/SteamApps;->picsGetProductInfo(Ljava/lang/Iterable;Ljava/lang/Iterable;Z)Lin/dragonbra/javasteam/types/AsyncJobMultiple;

    move-result-object p0

    return-object p0
.end method

.method public final picsGetProductInfo(Ljava/lang/Iterable;Ljava/lang/Iterable;)Lin/dragonbra/javasteam/types/AsyncJobMultiple;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lin/dragonbra/javasteam/steam/handlers/steamapps/PICSRequest;",
            ">;",
            "Ljava/lang/Iterable<",
            "Lin/dragonbra/javasteam/steam/handlers/steamapps/PICSRequest;",
            ">;)",
            "Lin/dragonbra/javasteam/types/AsyncJobMultiple<",
            "Lin/dragonbra/javasteam/steam/handlers/steamapps/callback/PICSProductInfoCallback;",
            ">;"
        }
    .end annotation

    .line 0
    const-string v0, "apps"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "packages"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v1 .. v6}, Lin/dragonbra/javasteam/steam/handlers/steamapps/SteamApps;->picsGetProductInfo$default(Lin/dragonbra/javasteam/steam/handlers/steamapps/SteamApps;Ljava/lang/Iterable;Ljava/lang/Iterable;ZILjava/lang/Object;)Lin/dragonbra/javasteam/types/AsyncJobMultiple;

    move-result-object p0

    return-object p0
.end method

.method public final picsGetProductInfo(Ljava/lang/Iterable;Ljava/lang/Iterable;Z)Lin/dragonbra/javasteam/types/AsyncJobMultiple;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lin/dragonbra/javasteam/steam/handlers/steamapps/PICSRequest;",
            ">;",
            "Ljava/lang/Iterable<",
            "Lin/dragonbra/javasteam/steam/handlers/steamapps/PICSRequest;",
            ">;Z)",
            "Lin/dragonbra/javasteam/types/AsyncJobMultiple<",
            "Lin/dragonbra/javasteam/steam/handlers/steamapps/callback/PICSProductInfoCallback;",
            ">;"
        }
    .end annotation

    const-string v0, "apps"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "packages"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 234
    new-instance v0, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;

    .line 236
    sget-object v3, Lin/dragonbra/javasteam/enums/EMsg;->ClientPICSProductInfoRequest:Lin/dragonbra/javasteam/enums/EMsg;

    const/4 v5, 0x4

    const/4 v6, 0x0

    .line 234
    const-class v2, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverAppinfo$CMsgClientPICSProductInfoRequest;

    const/4 v4, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;-><init>(Ljava/lang/Class;Lin/dragonbra/javasteam/enums/EMsg;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 238
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;->getClient()Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    move-result-object v1

    invoke-virtual {v1}, Lin/dragonbra/javasteam/steam/steamclient/SteamClient;->getNextJobID()Lin/dragonbra/javasteam/types/JobID;

    move-result-object v1

    invoke-virtual {v0, v1}, Lin/dragonbra/javasteam/base/AClientMsgProtobuf;->setSourceJobID(Lin/dragonbra/javasteam/types/JobID;)V

    .line 1869
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_26
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_52

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lin/dragonbra/javasteam/steam/handlers/steamapps/PICSRequest;

    .line 241
    invoke-static {}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverAppinfo$CMsgClientPICSProductInfoRequest$AppInfo;->newBuilder()Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverAppinfo$CMsgClientPICSProductInfoRequest$AppInfo$Builder;

    move-result-object v2

    .line 242
    invoke-virtual {v1}, Lin/dragonbra/javasteam/steam/handlers/steamapps/PICSRequest;->getAccessToken()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverAppinfo$CMsgClientPICSProductInfoRequest$AppInfo$Builder;->setAccessToken(J)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverAppinfo$CMsgClientPICSProductInfoRequest$AppInfo$Builder;

    .line 243
    invoke-virtual {v1}, Lin/dragonbra/javasteam/steam/handlers/steamapps/PICSRequest;->getId()I

    move-result v1

    invoke-virtual {v2, v1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverAppinfo$CMsgClientPICSProductInfoRequest$AppInfo$Builder;->setAppid(I)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverAppinfo$CMsgClientPICSProductInfoRequest$AppInfo$Builder;

    const/4 v1, 0x0

    .line 244
    invoke-virtual {v2, v1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverAppinfo$CMsgClientPICSProductInfoRequest$AppInfo$Builder;->setOnlyPublicObsolete(Z)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverAppinfo$CMsgClientPICSProductInfoRequest$AppInfo$Builder;

    .line 247
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v1

    check-cast v1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverAppinfo$CMsgClientPICSProductInfoRequest$Builder;

    invoke-virtual {v1, v2}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverAppinfo$CMsgClientPICSProductInfoRequest$Builder;->addApps(Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverAppinfo$CMsgClientPICSProductInfoRequest$AppInfo$Builder;)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverAppinfo$CMsgClientPICSProductInfoRequest$Builder;

    goto :goto_26

    .line 1869
    :cond_52
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_56
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_7e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lin/dragonbra/javasteam/steam/handlers/steamapps/PICSRequest;

    .line 251
    invoke-static {}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverAppinfo$CMsgClientPICSProductInfoRequest$PackageInfo;->newBuilder()Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverAppinfo$CMsgClientPICSProductInfoRequest$PackageInfo$Builder;

    move-result-object v1

    .line 252
    invoke-virtual {p2}, Lin/dragonbra/javasteam/steam/handlers/steamapps/PICSRequest;->getAccessToken()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverAppinfo$CMsgClientPICSProductInfoRequest$PackageInfo$Builder;->setAccessToken(J)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverAppinfo$CMsgClientPICSProductInfoRequest$PackageInfo$Builder;

    .line 253
    invoke-virtual {p2}, Lin/dragonbra/javasteam/steam/handlers/steamapps/PICSRequest;->getId()I

    move-result p2

    invoke-virtual {v1, p2}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverAppinfo$CMsgClientPICSProductInfoRequest$PackageInfo$Builder;->setPackageid(I)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverAppinfo$CMsgClientPICSProductInfoRequest$PackageInfo$Builder;

    .line 256
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object p2

    check-cast p2, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverAppinfo$CMsgClientPICSProductInfoRequest$Builder;

    invoke-virtual {p2, v1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverAppinfo$CMsgClientPICSProductInfoRequest$Builder;->addPackages(Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverAppinfo$CMsgClientPICSProductInfoRequest$PackageInfo$Builder;)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverAppinfo$CMsgClientPICSProductInfoRequest$Builder;

    goto :goto_56

    .line 259
    :cond_7e
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object p1

    check-cast p1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverAppinfo$CMsgClientPICSProductInfoRequest$Builder;

    invoke-virtual {p1, p3}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverAppinfo$CMsgClientPICSProductInfoRequest$Builder;->setMetaDataOnly(Z)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserverAppinfo$CMsgClientPICSProductInfoRequest$Builder;

    .line 262
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;->getClient()Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    move-result-object p1

    invoke-virtual {p1, v0}, Lin/dragonbra/javasteam/steam/CMClient;->send(Lin/dragonbra/javasteam/base/IClientMsg;)V

    .line 264
    new-instance p1, Lin/dragonbra/javasteam/types/AsyncJobMultiple;

    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;->getClient()Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    move-result-object p0

    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/AClientMsgProtobuf;->getSourceJobID()Lin/dragonbra/javasteam/types/JobID;

    move-result-object p2

    new-instance p3, Lin/dragonbra/javasteam/steam/handlers/steamapps/SteamApps$$ExternalSyntheticLambda0;

    invoke-direct {p3}, Lin/dragonbra/javasteam/steam/handlers/steamapps/SteamApps$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {p1, p0, p2, p3}, Lin/dragonbra/javasteam/types/AsyncJobMultiple;-><init>(Lin/dragonbra/javasteam/steam/steamclient/SteamClient;Lin/dragonbra/javasteam/types/JobID;Lkotlin/jvm/functions/Function1;)V

    return-object p1
.end method

.method public final requestEncryptedAppTicket(I)Lin/dragonbra/javasteam/types/AsyncJobSingle;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lin/dragonbra/javasteam/types/AsyncJobSingle<",
            "Lin/dragonbra/javasteam/steam/handlers/steamapps/callback/EncryptedAppTicketCallback;",
            ">;"
        }
    .end annotation

    .line 0
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1, v0}, Lin/dragonbra/javasteam/steam/handlers/steamapps/SteamApps;->requestEncryptedAppTicket$default(Lin/dragonbra/javasteam/steam/handlers/steamapps/SteamApps;I[BILjava/lang/Object;)Lin/dragonbra/javasteam/types/AsyncJobSingle;

    move-result-object p0

    return-object p0
.end method

.method public final requestEncryptedAppTicket(I[B)Lin/dragonbra/javasteam/types/AsyncJobSingle;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[B)",
            "Lin/dragonbra/javasteam/types/AsyncJobSingle<",
            "Lin/dragonbra/javasteam/steam/handlers/steamapps/callback/EncryptedAppTicketCallback;",
            ">;"
        }
    .end annotation

    .line 110
    new-instance v6, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;

    .line 112
    sget-object v2, Lin/dragonbra/javasteam/enums/EMsg;->ClientRequestEncryptedAppTicket:Lin/dragonbra/javasteam/enums/EMsg;

    const/4 v4, 0x4

    const/4 v5, 0x0

    .line 110
    const-class v1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientRequestEncryptedAppTicket;

    const/4 v3, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;-><init>(Ljava/lang/Class;Lin/dragonbra/javasteam/enums/EMsg;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 114
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;->getClient()Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    move-result-object v0

    invoke-virtual {v0}, Lin/dragonbra/javasteam/steam/steamclient/SteamClient;->getNextJobID()Lin/dragonbra/javasteam/types/JobID;

    move-result-object v0

    invoke-virtual {v6, v0}, Lin/dragonbra/javasteam/base/AClientMsgProtobuf;->setSourceJobID(Lin/dragonbra/javasteam/types/JobID;)V

    .line 116
    invoke-virtual {v6}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientRequestEncryptedAppTicket$Builder;

    invoke-virtual {v0, p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientRequestEncryptedAppTicket$Builder;->setAppId(I)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientRequestEncryptedAppTicket$Builder;

    if-eqz p2, :cond_30

    .line 118
    invoke-virtual {v6}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object p1

    check-cast p1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientRequestEncryptedAppTicket$Builder;

    invoke-static {p2}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object p2

    invoke-virtual {p1, p2}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientRequestEncryptedAppTicket$Builder;->setUserdata(Lcom/google/protobuf/ByteString;)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientRequestEncryptedAppTicket$Builder;

    .line 122
    :cond_30
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;->getClient()Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    move-result-object p1

    invoke-virtual {p1, v6}, Lin/dragonbra/javasteam/steam/CMClient;->send(Lin/dragonbra/javasteam/base/IClientMsg;)V

    .line 124
    new-instance p1, Lin/dragonbra/javasteam/types/AsyncJobSingle;

    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;->getClient()Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    move-result-object p0

    invoke-virtual {v6}, Lin/dragonbra/javasteam/base/AClientMsgProtobuf;->getSourceJobID()Lin/dragonbra/javasteam/types/JobID;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lin/dragonbra/javasteam/types/AsyncJobSingle;-><init>(Lin/dragonbra/javasteam/steam/steamclient/SteamClient;Lin/dragonbra/javasteam/types/JobID;)V

    return-object p1
.end method

.method public final requestFreeLicense(I)Lin/dragonbra/javasteam/types/AsyncJobSingle;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lin/dragonbra/javasteam/types/AsyncJobSingle<",
            "Lin/dragonbra/javasteam/steam/handlers/steamapps/callback/FreeLicenseCallback;",
            ">;"
        }
    .end annotation

    .line 274
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/steam/handlers/steamapps/SteamApps;->requestFreeLicense(Ljava/lang/Iterable;)Lin/dragonbra/javasteam/types/AsyncJobSingle;

    move-result-object p0

    return-object p0
.end method

.method public final requestFreeLicense(Ljava/lang/Iterable;)Lin/dragonbra/javasteam/types/AsyncJobSingle;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lin/dragonbra/javasteam/types/AsyncJobSingle<",
            "Lin/dragonbra/javasteam/steam/handlers/steamapps/callback/FreeLicenseCallback;",
            ">;"
        }
    .end annotation

    const-string v0, "apps"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 284
    new-instance v0, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;

    .line 286
    sget-object v3, Lin/dragonbra/javasteam/enums/EMsg;->ClientRequestFreeLicense:Lin/dragonbra/javasteam/enums/EMsg;

    const/4 v5, 0x4

    const/4 v6, 0x0

    .line 284
    const-class v2, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver2$CMsgClientRequestFreeLicense;

    const/4 v4, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;-><init>(Ljava/lang/Class;Lin/dragonbra/javasteam/enums/EMsg;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 288
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;->getClient()Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    move-result-object v1

    invoke-virtual {v1}, Lin/dragonbra/javasteam/steam/steamclient/SteamClient;->getNextJobID()Lin/dragonbra/javasteam/types/JobID;

    move-result-object v1

    invoke-virtual {v0, v1}, Lin/dragonbra/javasteam/base/AClientMsgProtobuf;->setSourceJobID(Lin/dragonbra/javasteam/types/JobID;)V

    .line 290
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v1

    check-cast v1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver2$CMsgClientRequestFreeLicense$Builder;

    invoke-virtual {v1, p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver2$CMsgClientRequestFreeLicense$Builder;->addAllAppids(Ljava/lang/Iterable;)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver2$CMsgClientRequestFreeLicense$Builder;

    .line 293
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;->getClient()Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    move-result-object p1

    invoke-virtual {p1, v0}, Lin/dragonbra/javasteam/steam/CMClient;->send(Lin/dragonbra/javasteam/base/IClientMsg;)V

    .line 295
    new-instance p1, Lin/dragonbra/javasteam/types/AsyncJobSingle;

    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;->getClient()Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    move-result-object p0

    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/AClientMsgProtobuf;->getSourceJobID()Lin/dragonbra/javasteam/types/JobID;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lin/dragonbra/javasteam/types/AsyncJobSingle;-><init>(Lin/dragonbra/javasteam/steam/steamclient/SteamClient;Lin/dragonbra/javasteam/types/JobID;)V

    return-object p1
.end method

.method public final sendClientAppUsageEvent(Lin/dragonbra/javasteam/types/GameID;Lin/dragonbra/javasteam/enums/EAppUsageEvent;S)V
    .registers 9

    const-string v0, "gameId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "usageEvent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 385
    new-instance v0, Lin/dragonbra/javasteam/base/ClientMsg;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const-class v3, Lin/dragonbra/javasteam/generated/MsgClientAppUsageEvent;

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lin/dragonbra/javasteam/base/ClientMsg;-><init>(Ljava/lang/Class;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 386
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/ClientMsg;->getBody()Lin/dragonbra/javasteam/base/ISteamSerializableMessage;

    move-result-object v1

    check-cast v1, Lin/dragonbra/javasteam/generated/MsgClientAppUsageEvent;

    invoke-virtual {v1, p2}, Lin/dragonbra/javasteam/generated/MsgClientAppUsageEvent;->setAppUsageEvent(Lin/dragonbra/javasteam/enums/EAppUsageEvent;)V

    .line 387
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/ClientMsg;->getBody()Lin/dragonbra/javasteam/base/ISteamSerializableMessage;

    move-result-object p2

    check-cast p2, Lin/dragonbra/javasteam/generated/MsgClientAppUsageEvent;

    invoke-virtual {p2, p1}, Lin/dragonbra/javasteam/generated/MsgClientAppUsageEvent;->setGameID(Lin/dragonbra/javasteam/types/GameID;)V

    .line 388
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/ClientMsg;->getBody()Lin/dragonbra/javasteam/base/ISteamSerializableMessage;

    move-result-object p1

    check-cast p1, Lin/dragonbra/javasteam/generated/MsgClientAppUsageEvent;

    invoke-virtual {p1, p3}, Lin/dragonbra/javasteam/generated/MsgClientAppUsageEvent;->setOffline(S)V

    .line 389
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;->getClient()Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    move-result-object p0

    invoke-virtual {p0, v0}, Lin/dragonbra/javasteam/steam/CMClient;->send(Lin/dragonbra/javasteam/base/IClientMsg;)V

    return-void
.end method

###### Class in.dragonbra.javasteam.steam.handlers.steamapps.SteamApps.Companion (in.dragonbra.javasteam.steam.handlers.steamapps.SteamApps$Companion)
.class public final Lin/dragonbra/javasteam/steam/handlers/steamapps/SteamApps$Companion;
.super Ljava/lang/Object;
.source "SteamApps.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lin/dragonbra/javasteam/steam/handlers/steamapps/SteamApps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lin/dragonbra/javasteam/steam/handlers/steamapps/SteamApps$Companion$WhenMappings;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 484
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lin/dragonbra/javasteam/steam/handlers/steamapps/SteamApps$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$getCallback(Lin/dragonbra/javasteam/steam/handlers/steamapps/SteamApps$Companion;Lin/dragonbra/javasteam/base/IPacketMsg;)Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;
    .registers 2

    .line 484
    invoke-direct {p0, p1}, Lin/dragonbra/javasteam/steam/handlers/steamapps/SteamApps$Companion;->getCallback(Lin/dragonbra/javasteam/base/IPacketMsg;)Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;

    move-result-object p0

    return-object p0
.end method

.method private final getCallback(Lin/dragonbra/javasteam/base/IPacketMsg;)Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;
    .registers 3

    .line 485
    invoke-interface {p1}, Lin/dragonbra/javasteam/base/IPacketMsg;->getMsgType()Lin/dragonbra/javasteam/enums/EMsg;

    move-result-object p0

    sget-object v0, Lin/dragonbra/javasteam/steam/handlers/steamapps/SteamApps$Companion$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_72

    const/4 p0, 0x0

    goto/16 :goto_71

    .line 501
    :pswitch_12
    new-instance p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/callback/EncryptedAppTicketCallback;

    invoke-direct {p0, p1}, Lin/dragonbra/javasteam/steam/handlers/steamapps/callback/EncryptedAppTicketCallback;-><init>(Lin/dragonbra/javasteam/base/IPacketMsg;)V

    goto :goto_71

    .line 500
    :pswitch_18
    new-instance p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/callback/PrivateBetaCallback;

    invoke-direct {p0, p1}, Lin/dragonbra/javasteam/steam/handlers/steamapps/callback/PrivateBetaCallback;-><init>(Lin/dragonbra/javasteam/base/IPacketMsg;)V

    goto :goto_71

    .line 499
    :pswitch_1e
    new-instance p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/callback/CheckAppBetaPasswordCallback;

    invoke-direct {p0, p1}, Lin/dragonbra/javasteam/steam/handlers/steamapps/callback/CheckAppBetaPasswordCallback;-><init>(Lin/dragonbra/javasteam/base/IPacketMsg;)V

    goto :goto_71

    .line 498
    :pswitch_24
    new-instance p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/callback/GuestPassListCallback;

    invoke-direct {p0, p1}, Lin/dragonbra/javasteam/steam/handlers/steamapps/callback/GuestPassListCallback;-><init>(Lin/dragonbra/javasteam/base/IPacketMsg;)V

    goto :goto_71

    .line 497
    :pswitch_2a
    new-instance p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/callback/PICSProductInfoCallback;

    invoke-direct {p0, p1}, Lin/dragonbra/javasteam/steam/handlers/steamapps/callback/PICSProductInfoCallback;-><init>(Lin/dragonbra/javasteam/base/IPacketMsg;)V

    goto :goto_71

    .line 496
    :pswitch_30
    new-instance p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/callback/PICSChangesCallback;

    invoke-direct {p0, p1}, Lin/dragonbra/javasteam/steam/handlers/steamapps/callback/PICSChangesCallback;-><init>(Lin/dragonbra/javasteam/base/IPacketMsg;)V

    goto :goto_71

    .line 495
    :pswitch_36
    new-instance p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/callback/PICSTokensCallback;

    invoke-direct {p0, p1}, Lin/dragonbra/javasteam/steam/handlers/steamapps/callback/PICSTokensCallback;-><init>(Lin/dragonbra/javasteam/base/IPacketMsg;)V

    goto :goto_71

    .line 494
    :pswitch_3c
    new-instance p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/callback/LegacyGameKeyCallback;

    invoke-direct {p0, p1}, Lin/dragonbra/javasteam/steam/handlers/steamapps/callback/LegacyGameKeyCallback;-><init>(Lin/dragonbra/javasteam/base/IPacketMsg;)V

    goto :goto_71

    .line 493
    :pswitch_42
    new-instance p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/callback/DepotKeyCallback;

    invoke-direct {p0, p1}, Lin/dragonbra/javasteam/steam/handlers/steamapps/callback/DepotKeyCallback;-><init>(Lin/dragonbra/javasteam/base/IPacketMsg;)V

    goto :goto_71

    .line 492
    :pswitch_48
    new-instance p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/callback/AppOwnershipTicketCallback;

    invoke-direct {p0, p1}, Lin/dragonbra/javasteam/steam/handlers/steamapps/callback/AppOwnershipTicketCallback;-><init>(Lin/dragonbra/javasteam/base/IPacketMsg;)V

    goto :goto_71

    .line 491
    :pswitch_4e
    new-instance p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/callback/VACStatusCallback;

    invoke-direct {p0, p1}, Lin/dragonbra/javasteam/steam/handlers/steamapps/callback/VACStatusCallback;-><init>(Lin/dragonbra/javasteam/base/IPacketMsg;)V

    goto :goto_71

    .line 490
    :pswitch_54
    new-instance p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/callback/GameConnectTokensCallback;

    invoke-direct {p0, p1}, Lin/dragonbra/javasteam/steam/handlers/steamapps/callback/GameConnectTokensCallback;-><init>(Lin/dragonbra/javasteam/base/IPacketMsg;)V

    goto :goto_71

    .line 489
    :pswitch_5a
    new-instance p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/callback/RedeemGuestPassResponseCallback;

    invoke-direct {p0, p1}, Lin/dragonbra/javasteam/steam/handlers/steamapps/callback/RedeemGuestPassResponseCallback;-><init>(Lin/dragonbra/javasteam/base/IPacketMsg;)V

    goto :goto_71

    .line 488
    :pswitch_60
    new-instance p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/callback/PurchaseResponseCallback;

    invoke-direct {p0, p1}, Lin/dragonbra/javasteam/steam/handlers/steamapps/callback/PurchaseResponseCallback;-><init>(Lin/dragonbra/javasteam/base/IPacketMsg;)V

    goto :goto_71

    .line 487
    :pswitch_66
    new-instance p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/callback/FreeLicenseCallback;

    invoke-direct {p0, p1}, Lin/dragonbra/javasteam/steam/handlers/steamapps/callback/FreeLicenseCallback;-><init>(Lin/dragonbra/javasteam/base/IPacketMsg;)V

    goto :goto_71

    .line 486
    :pswitch_6c
    new-instance p0, Lin/dragonbra/javasteam/steam/handlers/steamapps/callback/LicenseListCallback;

    invoke-direct {p0, p1}, Lin/dragonbra/javasteam/steam/handlers/steamapps/callback/LicenseListCallback;-><init>(Lin/dragonbra/javasteam/base/IPacketMsg;)V

    :goto_71
    return-object p0

    :pswitch_data_72
    .packed-switch 0x1
        :pswitch_6c
        :pswitch_66
        :pswitch_60
        :pswitch_5a
        :pswitch_54
        :pswitch_4e
        :pswitch_48
        :pswitch_42
        :pswitch_3c
        :pswitch_36
        :pswitch_30
        :pswitch_2a
        :pswitch_24
        :pswitch_1e
        :pswitch_18
        :pswitch_12
    .end packed-switch
.end method

###### Class in.dragonbra.javasteam.steam.handlers.steamapps.SteamApps.Companion.WhenMappings (in.dragonbra.javasteam.steam.handlers.steamapps.SteamApps$Companion$WhenMappings)
.class public final synthetic Lin/dragonbra/javasteam/steam/handlers/steamapps/SteamApps$Companion$WhenMappings;
.super Ljava/lang/Object;
.source "SteamApps.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lin/dragonbra/javasteam/steam/handlers/steamapps/SteamApps$Companion;
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
    sget-object v1, Lin/dragonbra/javasteam/enums/EMsg;->ClientLicenseList:Lin/dragonbra/javasteam/enums/EMsg;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_10} :catch_10

    :catch_10
    :try_start_10
    sget-object v1, Lin/dragonbra/javasteam/enums/EMsg;->ClientRequestFreeLicenseResponse:Lin/dragonbra/javasteam/enums/EMsg;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_19} :catch_19

    :catch_19
    :try_start_19
    sget-object v1, Lin/dragonbra/javasteam/enums/EMsg;->ClientPurchaseResponse:Lin/dragonbra/javasteam/enums/EMsg;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_22} :catch_22

    :catch_22
    :try_start_22
    sget-object v1, Lin/dragonbra/javasteam/enums/EMsg;->ClientRedeemGuestPassResponse:Lin/dragonbra/javasteam/enums/EMsg;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_2b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_2b} :catch_2b

    :catch_2b
    :try_start_2b
    sget-object v1, Lin/dragonbra/javasteam/enums/EMsg;->ClientGameConnectTokens:Lin/dragonbra/javasteam/enums/EMsg;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_34
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2b .. :try_end_34} :catch_34

    :catch_34
    :try_start_34
    sget-object v1, Lin/dragonbra/javasteam/enums/EMsg;->ClientVACBanStatus:Lin/dragonbra/javasteam/enums/EMsg;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_3d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_34 .. :try_end_3d} :catch_3d

    :catch_3d
    :try_start_3d
    sget-object v1, Lin/dragonbra/javasteam/enums/EMsg;->ClientGetAppOwnershipTicketResponse:Lin/dragonbra/javasteam/enums/EMsg;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_46
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3d .. :try_end_46} :catch_46

    :catch_46
    :try_start_46
    sget-object v1, Lin/dragonbra/javasteam/enums/EMsg;->ClientGetDepotDecryptionKeyResponse:Lin/dragonbra/javasteam/enums/EMsg;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_50
    .catch Ljava/lang/NoSuchFieldError; {:try_start_46 .. :try_end_50} :catch_50

    :catch_50
    :try_start_50
    sget-object v1, Lin/dragonbra/javasteam/enums/EMsg;->ClientGetLegacyGameKeyResponse:Lin/dragonbra/javasteam/enums/EMsg;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_5a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_50 .. :try_end_5a} :catch_5a

    :catch_5a
    :try_start_5a
    sget-object v1, Lin/dragonbra/javasteam/enums/EMsg;->ClientPICSAccessTokenResponse:Lin/dragonbra/javasteam/enums/EMsg;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_64
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5a .. :try_end_64} :catch_64

    :catch_64
    :try_start_64
    sget-object v1, Lin/dragonbra/javasteam/enums/EMsg;->ClientPICSChangesSinceResponse:Lin/dragonbra/javasteam/enums/EMsg;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_6e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_64 .. :try_end_6e} :catch_6e

    :catch_6e
    :try_start_6e
    sget-object v1, Lin/dragonbra/javasteam/enums/EMsg;->ClientPICSProductInfoResponse:Lin/dragonbra/javasteam/enums/EMsg;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_78
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6e .. :try_end_78} :catch_78

    :catch_78
    :try_start_78
    sget-object v1, Lin/dragonbra/javasteam/enums/EMsg;->ClientUpdateGuestPassesList:Lin/dragonbra/javasteam/enums/EMsg;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_82
    .catch Ljava/lang/NoSuchFieldError; {:try_start_78 .. :try_end_82} :catch_82

    :catch_82
    :try_start_82
    sget-object v1, Lin/dragonbra/javasteam/enums/EMsg;->ClientCheckAppBetaPasswordResponse:Lin/dragonbra/javasteam/enums/EMsg;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_8c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_82 .. :try_end_8c} :catch_8c

    :catch_8c
    :try_start_8c
    sget-object v1, Lin/dragonbra/javasteam/enums/EMsg;->ClientPICSPrivateBetaResponse:Lin/dragonbra/javasteam/enums/EMsg;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_96
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8c .. :try_end_96} :catch_96

    :catch_96
    :try_start_96
    sget-object v1, Lin/dragonbra/javasteam/enums/EMsg;->ClientRequestEncryptedAppTicketResponse:Lin/dragonbra/javasteam/enums/EMsg;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_a0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_96 .. :try_end_a0} :catch_a0

    :catch_a0
    sput-object v0, Lin/dragonbra/javasteam/steam/handlers/steamapps/SteamApps$Companion$WhenMappings;->$EnumSwitchMapping$0:[I

    return-void
.end method

###### Class in.dragonbra.javasteam.steam.handlers.steamapps.SteamApps$$ExternalSyntheticLambda0 (in.dragonbra.javasteam.steam.handlers.steamapps.SteamApps$$ExternalSyntheticLambda0)
.class public final synthetic Lin/dragonbra/javasteam/steam/handlers/steamapps/SteamApps$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 0
    check-cast p1, Lin/dragonbra/javasteam/steam/handlers/steamapps/callback/PICSProductInfoCallback;

    invoke-static {p1}, Lin/dragonbra/javasteam/steam/handlers/steamapps/SteamApps;->$r8$lambda$GuAziLqiIj1M5hsLq4cLp1omvKI(Lin/dragonbra/javasteam/steam/handlers/steamapps/callback/PICSProductInfoCallback;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
