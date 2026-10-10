###### Class in.dragonbra.javasteam.steam.handlers.steamauthticket.SteamAuthTicket (in.dragonbra.javasteam.steam.handlers.steamauthticket.SteamAuthTicket)
.class public final Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket;
.super Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;
.source "SteamAuthTicket.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket$Companion;,
        Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket$TicketType;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSteamAuthTicket.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SteamAuthTicket.kt\nin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 SteamClient.kt\nin/dragonbra/javasteam/steam/steamclient/SteamClient\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,315:1\n1#2:316\n170#3:317\n1761#4,3:318\n1869#4,2:321\n*S KotlinDebug\n*F\n+ 1 SteamAuthTicket.kt\nin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket\n*L\n110#1:317\n138#1:318,3\n283#1:321,2\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket$Companion;

.field private static final WEB_API_TICKET_SIZE:I = 0xa00

.field private static final sequence:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private final dispatchMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lin/dragonbra/javasteam/enums/EMsg;",
            "Lkotlin/reflect/KFunction<",
            "Lkotlin/Unit;",
            ">;>;"
        }
    .end annotation
.end field

.field private final gameConnectTokens:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "[B>;"
        }
    .end annotation
.end field

.field private final ticketChangeLock:Ljava/lang/Object;

.field private final ticketsByGame:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesBase$CMsgAuthTicket;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$0SssxcHNF2Rqp99CXL_dUIar4pI(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/util/List;
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket;->verifyTicket$lambda$0$1(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$OqHx0gZmfzFFDID76gIRSYbWbUU(Lin/dragonbra/javasteam/steam/handlers/steamauthticket/TicketInfo;Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesBase$CMsgAuthTicket;)Z
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket;->cancelAuthTicket$lambda$0$0(Lin/dragonbra/javasteam/steam/handlers/steamauthticket/TicketInfo;Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesBase$CMsgAuthTicket;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$V2Kty5HAJqOT3PZOYumi10y2OMg(Ljava/lang/Integer;)Ljava/util/List;
    .registers 1

    .line 0
    invoke-static {p0}, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket;->verifyTicket$lambda$0$0(Ljava/lang/Integer;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket;->Companion:Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket$Companion;

    .line 42
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket;->sequence:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    .line 38
    invoke-direct {p0}, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;-><init>()V

    .line 65
    sget-object v0, Lin/dragonbra/javasteam/enums/EMsg;->ClientAuthListAck:Lin/dragonbra/javasteam/enums/EMsg;

    new-instance v1, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket$dispatchMap$1;

    invoke-direct {v1, p0}, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket$dispatchMap$1;-><init>(Ljava/lang/Object;)V

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    .line 66
    sget-object v1, Lin/dragonbra/javasteam/enums/EMsg;->ClientTicketAuthComplete:Lin/dragonbra/javasteam/enums/EMsg;

    new-instance v2, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket$dispatchMap$2;

    invoke-direct {v2, p0}, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket$dispatchMap$2;-><init>(Ljava/lang/Object;)V

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    .line 67
    sget-object v2, Lin/dragonbra/javasteam/enums/EMsg;->ClientGameConnectTokens:Lin/dragonbra/javasteam/enums/EMsg;

    new-instance v3, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket$dispatchMap$3;

    invoke-direct {v3, p0}, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket$dispatchMap$3;-><init>(Ljava/lang/Object;)V

    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    .line 68
    sget-object v3, Lin/dragonbra/javasteam/enums/EMsg;->ClientLogOff:Lin/dragonbra/javasteam/enums/EMsg;

    new-instance v4, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket$dispatchMap$4;

    invoke-direct {v4, p0}, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket$dispatchMap$4;-><init>(Ljava/lang/Object;)V

    invoke-static {v3, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Lkotlin/Pair;

    move-result-object v0

    .line 64
    invoke-static {v0}, Lkotlin/collections/MapsKt__MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket;->dispatchMap:Ljava/util/Map;

    .line 71
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket;->gameConnectTokens:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 73
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket;->ticketsByGame:Ljava/util/concurrent/ConcurrentHashMap;

    .line 75
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket;->ticketChangeLock:Ljava/lang/Object;

    return-void
.end method

.method public static final synthetic access$handleGameConnectTokens(Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket;Lin/dragonbra/javasteam/base/IPacketMsg;)V
    .registers 2

    .line 38
    invoke-direct {p0, p1}, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket;->handleGameConnectTokens(Lin/dragonbra/javasteam/base/IPacketMsg;)V

    return-void
.end method

.method public static final synthetic access$handleLogOffResponse(Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket;Lin/dragonbra/javasteam/base/IPacketMsg;)V
    .registers 2

    .line 38
    invoke-direct {p0, p1}, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket;->handleLogOffResponse(Lin/dragonbra/javasteam/base/IPacketMsg;)V

    return-void
.end method

.method public static final synthetic access$handleTicketAcknowledged(Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket;Lin/dragonbra/javasteam/base/IPacketMsg;)V
    .registers 2

    .line 38
    invoke-direct {p0, p1}, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket;->handleTicketAcknowledged(Lin/dragonbra/javasteam/base/IPacketMsg;)V

    return-void
.end method

.method public static final synthetic access$handleTicketAuthComplete(Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket;Lin/dragonbra/javasteam/base/IPacketMsg;)V
    .registers 2

    .line 38
    invoke-direct {p0, p1}, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket;->handleTicketAuthComplete(Lin/dragonbra/javasteam/base/IPacketMsg;)V

    return-void
.end method

.method private final buildAuthTicket([BLin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket$TicketType;)[B
    .registers 5

    .line 191
    new-instance p0, Lin/dragonbra/javasteam/util/stream/MemoryStream;

    array-length v0, p1

    add-int/lit8 v0, v0, 0x1c

    invoke-direct {p0, v0}, Lin/dragonbra/javasteam/util/stream/MemoryStream;-><init>(I)V

    .line 192
    :try_start_8
    new-instance v0, Lin/dragonbra/javasteam/util/stream/BinaryWriter;

    invoke-virtual {p0}, Lin/dragonbra/javasteam/util/stream/MemoryStream;->asOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Lin/dragonbra/javasteam/util/stream/BinaryWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_11
    .catchall {:try_start_8 .. :try_end_11} :catchall_5b

    .line 193
    :try_start_11
    array-length v1, p1

    invoke-virtual {v0, v1}, Lin/dragonbra/javasteam/util/stream/BinaryWriter;->writeInt(I)V

    .line 194
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    const/16 p1, 0x18

    .line 196
    invoke-virtual {v0, p1}, Lin/dragonbra/javasteam/util/stream/BinaryWriter;->writeInt(I)V

    const/4 p1, 0x1

    .line 197
    invoke-virtual {v0, p1}, Lin/dragonbra/javasteam/util/stream/BinaryWriter;->writeInt(I)V

    .line 198
    invoke-virtual {p2}, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket$TicketType;->getValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lin/dragonbra/javasteam/util/stream/BinaryWriter;->writeInt(I)V

    const/16 p1, 0x8

    .line 200
    new-array p1, p1, [B

    .line 201
    new-instance p2, Ljava/security/SecureRandom;

    invoke-direct {p2}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {p2, p1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 202
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 204
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p1

    long-to-int p1, p1

    invoke-virtual {v0, p1}, Lin/dragonbra/javasteam/util/stream/BinaryWriter;->writeInt(I)V

    .line 205
    sget-object p1, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket;->sequence:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p1

    invoke-virtual {v0, p1}, Lin/dragonbra/javasteam/util/stream/BinaryWriter;->writeInt(I)V

    .line 206
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_4a
    .catchall {:try_start_11 .. :try_end_4a} :catchall_5d

    const/4 p1, 0x0

    .line 192
    :try_start_4b
    invoke-static {v0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 208
    invoke-virtual {p0}, Lin/dragonbra/javasteam/util/stream/MemoryStream;->toByteArray()[B

    move-result-object p2

    const-string v0, "toByteArray(...)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_57
    .catchall {:try_start_4b .. :try_end_57} :catchall_5b

    .line 191
    invoke-static {p0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object p2

    :catchall_5b
    move-exception p1

    goto :goto_64

    :catchall_5d
    move-exception p1

    .line 192
    :try_start_5e
    throw p1
    :try_end_5f
    .catchall {:try_start_5e .. :try_end_5f} :catchall_5f

    :catchall_5f
    move-exception p2

    :try_start_60
    invoke-static {v0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p2
    :try_end_64
    .catchall {:try_start_60 .. :try_end_64} :catchall_5b

    .line 191
    :goto_64
    :try_start_64
    throw p1
    :try_end_65
    .catchall {:try_start_64 .. :try_end_65} :catchall_65

    :catchall_65
    move-exception p2

    invoke-static {p0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p2
.end method

.method private static final cancelAuthTicket$lambda$0$0(Lin/dragonbra/javasteam/steam/handlers/steamauthticket/TicketInfo;Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesBase$CMsgAuthTicket;)Z
    .registers 4

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 152
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesBase$CMsgAuthTicket;->getTicketCrc()I

    move-result p1

    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/TicketInfo;->getTicketCRC$javasteam()J

    move-result-wide v0

    long-to-int p0, v0

    if-ne p1, p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method private final combineTickets([B[BZ)[B
    .registers 11

    .line 158
    array-length p0, p2

    .line 160
    array-length v0, p1

    const/4 v1, 0x4

    add-int/2addr v0, v1

    array-length v2, p2

    add-int/2addr v0, v2

    if-eqz p3, :cond_f

    const/16 v2, 0xa00

    .line 161
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_10

    :cond_f
    move v2, v0

    .line 163
    :goto_10
    new-array v3, v2, [B

    .line 165
    array-length v4, p1

    const/4 v5, 0x0

    invoke-static {p1, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 166
    array-length v4, p1

    invoke-static {v3, v4, v1}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v4

    sget-object v6, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v4, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 167
    array-length p0, p1

    add-int/2addr p0, v1

    array-length p1, p2

    invoke-static {p2, v5, v3, p0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-eqz p3, :cond_4b

    if-ge v0, v2, :cond_4b

    .line 171
    new-instance p0, Ljava/security/SecureRandom;

    invoke-direct {p0}, Ljava/security/SecureRandom;-><init>()V

    .line 172
    invoke-static {v0, v2}, Lkotlin/ranges/RangesKt___RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object p1

    invoke-static {v3, p1}, Lkotlin/collections/ArraysKt___ArraysKt;->sliceArray([BLkotlin/ranges/IntRange;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 173
    invoke-static {v0, v2}, Lkotlin/ranges/RangesKt___RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object p0

    invoke-static {v3, p0}, Lkotlin/collections/ArraysKt___ArraysKt;->sliceArray([BLkotlin/ranges/IntRange;)[B

    move-result-object p0

    sub-int/2addr v2, v0

    invoke-static {p0, v5, v3, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4b
    return-object v3
.end method

.method private final handleGameConnectTokens(Lin/dragonbra/javasteam/base/IPacketMsg;)V
    .registers 5

    .line 277
    new-instance v0, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;

    .line 278
    const-class v1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientGameConnectTokens;

    .line 277
    invoke-direct {v0, v1, p1}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;-><init>(Ljava/lang/Class;Lin/dragonbra/javasteam/base/IPacketMsg;)V

    .line 280
    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object p1

    check-cast p1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientGameConnectTokens$Builder;

    .line 283
    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientGameConnectTokens$Builder;->getTokensList()Ljava/util/List;

    move-result-object v0

    const-string v1, "getTokensList(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1869
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/ByteString;

    .line 284
    iget-object v2, p0, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket;->gameConnectTokens:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    goto :goto_1a

    .line 288
    :cond_30
    :goto_30
    iget-object v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket;->gameConnectTokens:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v0

    invoke-virtual {p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientGameConnectTokens$Builder;->getMaxTokensToKeep()I

    move-result v1

    if-le v0, v1, :cond_42

    .line 289
    iget-object v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket;->gameConnectTokens:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    goto :goto_30

    :cond_42
    return-void
.end method

.method private final handleLogOffResponse(Lin/dragonbra/javasteam/base/IPacketMsg;)V
    .registers 2

    .line 273
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket;->gameConnectTokens:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {p0}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    return-void
.end method

.method private final handleTicketAcknowledged(Lin/dragonbra/javasteam/base/IPacketMsg;)V
    .registers 4

    .line 305
    new-instance v0, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;

    .line 306
    const-class v1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientAuthListAck;

    .line 305
    invoke-direct {v0, v1, p1}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;-><init>(Ljava/lang/Class;Lin/dragonbra/javasteam/base/IPacketMsg;)V

    .line 309
    new-instance p1, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/callback/TicketAcceptedCallback;

    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/AClientMsgProtobuf;->getTargetJobID()Lin/dragonbra/javasteam/types/JobID;

    move-result-object v1

    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientAuthListAck$Builder;

    invoke-direct {p1, v1, v0}, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/callback/TicketAcceptedCallback;-><init>(Lin/dragonbra/javasteam/types/JobID;Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientAuthListAck$Builder;)V

    .line 310
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;->getClient()Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    move-result-object p0

    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/steam/steamclient/SteamClient;->postCallback(Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;)V

    return-void
.end method

.method private final handleTicketAuthComplete(Lin/dragonbra/javasteam/base/IPacketMsg;)V
    .registers 4

    .line 295
    new-instance v0, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;

    .line 296
    const-class v1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientTicketAuthComplete;

    .line 295
    invoke-direct {v0, v1, p1}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;-><init>(Ljava/lang/Class;Lin/dragonbra/javasteam/base/IPacketMsg;)V

    .line 299
    new-instance p1, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/callback/TicketAuthCompleteCallback;

    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/AClientMsgProtobuf;->getTargetJobID()Lin/dragonbra/javasteam/types/JobID;

    move-result-object v1

    invoke-virtual {v0}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientTicketAuthComplete$Builder;

    invoke-direct {p1, v1, v0}, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/callback/TicketAuthCompleteCallback;-><init>(Lin/dragonbra/javasteam/types/JobID;Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientTicketAuthComplete$Builder;)V

    .line 300
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;->getClient()Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    move-result-object p0

    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/steam/steamclient/SteamClient;->postCallback(Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;)V

    return-void
.end method

.method private final sendTickets()Lin/dragonbra/javasteam/types/AsyncJobSingle;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lin/dragonbra/javasteam/types/AsyncJobSingle<",
            "Lin/dragonbra/javasteam/steam/handlers/steamauthticket/callback/TicketAcceptedCallback;",
            ">;"
        }
    .end annotation

    .line 243
    new-instance v6, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;

    .line 244
    const-class v1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientAuthList;

    .line 245
    sget-object v2, Lin/dragonbra/javasteam/enums/EMsg;->ClientAuthList:Lin/dragonbra/javasteam/enums/EMsg;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, v6

    .line 243
    invoke-direct/range {v0 .. v5}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;-><init>(Ljava/lang/Class;Lin/dragonbra/javasteam/enums/EMsg;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 247
    invoke-virtual {v6}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientAuthList$Builder;

    iget-object v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket;->gameConnectTokens:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientAuthList$Builder;->setTokensLeft(I)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientAuthList$Builder;

    .line 249
    iget-object v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket;->ticketChangeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 250
    :try_start_1f
    invoke-virtual {v6}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v1

    check-cast v1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientAuthList$Builder;

    iget-object v2, p0, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket;->ticketsByGame:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientAuthList$Builder;->addAllAppIds(Ljava/lang/Iterable;)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientAuthList$Builder;

    .line 252
    invoke-virtual {v6}, Lin/dragonbra/javasteam/base/ClientMsgProtobuf;->getBody()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v1

    check-cast v1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientAuthList$Builder;

    iget-object v2, p0, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket;->ticketsByGame:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    const-string v3, "<get-values>(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/collections/CollectionsKt__IterablesKt;->flatten(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientAuthList$Builder;->addAllTickets(Ljava/lang/Iterable;)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesClientserver$CMsgClientAuthList$Builder;
    :try_end_46
    .catchall {:try_start_1f .. :try_end_46} :catchall_67

    .line 249
    monitor-exit v0

    .line 255
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;->getClient()Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    move-result-object v0

    invoke-virtual {v0}, Lin/dragonbra/javasteam/steam/steamclient/SteamClient;->getNextJobID()Lin/dragonbra/javasteam/types/JobID;

    move-result-object v0

    invoke-virtual {v6, v0}, Lin/dragonbra/javasteam/base/AClientMsgProtobuf;->setSourceJobID(Lin/dragonbra/javasteam/types/JobID;)V

    .line 256
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;->getClient()Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    move-result-object v0

    invoke-virtual {v0, v6}, Lin/dragonbra/javasteam/steam/CMClient;->send(Lin/dragonbra/javasteam/base/IClientMsg;)V

    .line 258
    new-instance v0, Lin/dragonbra/javasteam/types/AsyncJobSingle;

    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;->getClient()Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    move-result-object p0

    invoke-virtual {v6}, Lin/dragonbra/javasteam/base/AClientMsgProtobuf;->getSourceJobID()Lin/dragonbra/javasteam/types/JobID;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lin/dragonbra/javasteam/types/AsyncJobSingle;-><init>(Lin/dragonbra/javasteam/steam/steamclient/SteamClient;Lin/dragonbra/javasteam/types/JobID;)V

    return-object v0

    :catchall_67
    move-exception p0

    .line 249
    monitor-exit v0

    throw p0
.end method

.method private final verifyTicket(I[B[B)Lkotlin/Pair;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[B[B)",
            "Lkotlin/Pair<",
            "Lin/dragonbra/javasteam/types/AsyncJobSingle<",
            "Lin/dragonbra/javasteam/steam/handlers/steamauthticket/callback/TicketAcceptedCallback;",
            ">;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 220
    invoke-static {p2}, Lin/dragonbra/javasteam/util/Utils;->crc32([B)J

    move-result-wide v0

    .line 222
    iget-object v2, p0, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket;->ticketChangeLock:Ljava/lang/Object;

    monitor-enter v2

    .line 223
    :try_start_7
    iget-object v3, p0, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket;->ticketsByGame:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket$$ExternalSyntheticLambda0;-><init>()V

    new-instance v6, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket$$ExternalSyntheticLambda1;

    invoke-direct {v6, v5}, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket$$ExternalSyntheticLambda1;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v3, v4, v6}, Ljava/util/concurrent/ConcurrentHashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "computeIfAbsent(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/util/List;

    .line 225
    invoke-static {}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesBase$CMsgAuthTicket;->newBuilder()Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesBase$CMsgAuthTicket$Builder;

    move-result-object v4

    int-to-long v5, p1

    .line 226
    invoke-virtual {v4, v5, v6}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesBase$CMsgAuthTicket$Builder;->setGameid(J)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesBase$CMsgAuthTicket$Builder;

    .line 227
    invoke-static {p2}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-virtual {v4, p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesBase$CMsgAuthTicket$Builder;->setTicket(Lcom/google/protobuf/ByteString;)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesBase$CMsgAuthTicket$Builder;

    long-to-int p1, v0

    .line 228
    invoke-virtual {v4, p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesBase$CMsgAuthTicket$Builder;->setTicketCrc(I)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesBase$CMsgAuthTicket$Builder;

    if-eqz p3, :cond_41

    .line 230
    invoke-static {p3}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-virtual {v4, p1}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesBase$CMsgAuthTicket$Builder;->setServerSecret(Lcom/google/protobuf/ByteString;)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesBase$CMsgAuthTicket$Builder;

    goto :goto_41

    :catchall_3f
    move-exception p0

    goto :goto_5b

    .line 232
    :cond_41
    :goto_41
    invoke-virtual {v4}, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesBase$CMsgAuthTicket$Builder;->build()Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesBase$CMsgAuthTicket;

    move-result-object p1

    const-string p2, "build(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 224
    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4d
    .catchall {:try_start_7 .. :try_end_4d} :catchall_3f

    .line 222
    monitor-exit v2

    .line 236
    invoke-direct {p0}, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket;->sendTickets()Lin/dragonbra/javasteam/types/AsyncJobSingle;

    move-result-object p0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    return-object p0

    .line 222
    :goto_5b
    monitor-exit v2

    throw p0
.end method

.method private static final verifyTicket$lambda$0$0(Ljava/lang/Integer;)Ljava/util/List;
    .registers 2

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 223
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method private static final verifyTicket$lambda$0$1(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/util/List;
    .registers 2

    .line 223
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public final cancelAuthTicket$javasteam(Lin/dragonbra/javasteam/steam/handlers/steamauthticket/TicketInfo;)V
    .registers 5

    const-string v0, "authTicket"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket;->ticketChangeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 152
    :try_start_8
    iget-object v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket;->ticketsByGame:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/TicketInfo;->getAppID$javasteam()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_25

    new-instance v2, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket$$ExternalSyntheticLambda2;

    invoke-direct {v2, p1}, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket$$ExternalSyntheticLambda2;-><init>(Lin/dragonbra/javasteam/steam/handlers/steamauthticket/TicketInfo;)V

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt__MutableCollectionsKt;->removeAll(Ljava/util/List;Lkotlin/jvm/functions/Function1;)Z
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_23

    goto :goto_25

    :catchall_23
    move-exception p0

    goto :goto_2a

    .line 151
    :cond_25
    :goto_25
    monitor-exit v0

    .line 154
    invoke-direct {p0}, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket;->sendTickets()Lin/dragonbra/javasteam/types/AsyncJobSingle;

    return-void

    .line 151
    :goto_2a
    monitor-exit v0

    throw p0
.end method

.method public final getAuthSessionTicket(I)Ljava/util/concurrent/CompletableFuture;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/concurrent/CompletableFuture<",
            "Lin/dragonbra/javasteam/steam/handlers/steamauthticket/TicketInfo;",
            ">;"
        }
    .end annotation

    .line 84
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;->getClient()Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    move-result-object v0

    invoke-virtual {v0}, Lin/dragonbra/javasteam/steam/steamclient/SteamClient;->getDefaultScope$javasteam()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v4, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket$getAuthSessionTicket$1;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, v0}, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket$getAuthSessionTicket$1;-><init>(Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket;ILkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/future/FutureKt;->future$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public final getAuthSessionTicketInternal$javasteam(ILin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket$TicketType;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket$TicketType;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lin/dragonbra/javasteam/steam/handlers/steamauthticket/TicketInfo;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p4

    instance-of v3, v2, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket$getAuthSessionTicketInternal$1;

    if-eqz v3, :cond_19

    move-object v3, v2

    check-cast v3, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket$getAuthSessionTicketInternal$1;

    iget v4, v3, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket$getAuthSessionTicketInternal$1;->label:I

    const/high16 v5, -0x80000000

    and-int v6, v4, v5

    if-eqz v6, :cond_19

    sub-int/2addr v4, v5

    iput v4, v3, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket$getAuthSessionTicketInternal$1;->label:I

    goto :goto_1e

    :cond_19
    new-instance v3, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket$getAuthSessionTicketInternal$1;

    invoke-direct {v3, v0, v2}, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket$getAuthSessionTicketInternal$1;-><init>(Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket;Lkotlin/coroutines/Continuation;)V

    :goto_1e
    iget-object v2, v3, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket$getAuthSessionTicketInternal$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v4

    .line 103
    iget v5, v3, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket$getAuthSessionTicketInternal$1;->label:I

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v5, :cond_74

    if-eq v5, v7, :cond_5f

    if-ne v5, v6, :cond_57

    iget-wide v4, v3, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket$getAuthSessionTicketInternal$1;->J$0:J

    iget v1, v3, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket$getAuthSessionTicketInternal$1;->I$0:I

    iget-object v6, v3, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket$getAuthSessionTicketInternal$1;->L$7:Ljava/lang/Object;

    check-cast v6, Lin/dragonbra/javasteam/types/AsyncJobSingle;

    iget-object v6, v3, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket$getAuthSessionTicketInternal$1;->L$6:Ljava/lang/Object;

    check-cast v6, [B

    iget-object v6, v3, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket$getAuthSessionTicketInternal$1;->L$5:Ljava/lang/Object;

    check-cast v6, [B

    iget-object v8, v3, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket$getAuthSessionTicketInternal$1;->L$4:Ljava/lang/Object;

    check-cast v8, [B

    iget-object v8, v3, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket$getAuthSessionTicketInternal$1;->L$3:Ljava/lang/Object;

    check-cast v8, Lin/dragonbra/javasteam/steam/handlers/steamapps/callback/AppOwnershipTicketCallback;

    iget-object v9, v3, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket$getAuthSessionTicketInternal$1;->L$2:Ljava/lang/Object;

    check-cast v9, Lin/dragonbra/javasteam/steam/handlers/steamapps/SteamApps;

    iget-object v9, v3, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket$getAuthSessionTicketInternal$1;->L$1:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    iget-object v3, v3, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket$getAuthSessionTicketInternal$1;->L$0:Ljava/lang/Object;

    check-cast v3, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket$TicketType;

    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_13d

    :cond_57
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5f
    iget v1, v3, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket$getAuthSessionTicketInternal$1;->I$0:I

    iget-object v5, v3, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket$getAuthSessionTicketInternal$1;->L$2:Ljava/lang/Object;

    check-cast v5, Lin/dragonbra/javasteam/steam/handlers/steamapps/SteamApps;

    iget-object v8, v3, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket$getAuthSessionTicketInternal$1;->L$1:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    iget-object v9, v3, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket$getAuthSessionTicketInternal$1;->L$0:Ljava/lang/Object;

    check-cast v9, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket$TicketType;

    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v15, v9

    move-object v9, v8

    move-object v8, v15

    goto :goto_ad

    :cond_74
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 108
    invoke-virtual/range {p0 .. p0}, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;->getClient()Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    move-result-object v2

    invoke-virtual {v2}, Lin/dragonbra/javasteam/steam/CMClient;->getCellID()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_1af

    .line 110
    invoke-virtual/range {p0 .. p0}, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;->getClient()Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    move-result-object v2

    .line 170
    const-class v5, Lin/dragonbra/javasteam/steam/handlers/steamapps/SteamApps;

    invoke-virtual {v2, v5}, Lin/dragonbra/javasteam/steam/steamclient/SteamClient;->getHandler(Ljava/lang/Class;)Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;

    move-result-object v2

    .line 110
    move-object v5, v2

    check-cast v5, Lin/dragonbra/javasteam/steam/handlers/steamapps/SteamApps;

    if-eqz v5, :cond_1a7

    .line 114
    invoke-virtual {v5, v1}, Lin/dragonbra/javasteam/steam/handlers/steamapps/SteamApps;->getAppOwnershipTicket(I)Lin/dragonbra/javasteam/types/AsyncJobSingle;

    move-result-object v2

    move-object/from16 v8, p2

    iput-object v8, v3, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket$getAuthSessionTicketInternal$1;->L$0:Ljava/lang/Object;

    move-object/from16 v9, p3

    iput-object v9, v3, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket$getAuthSessionTicketInternal$1;->L$1:Ljava/lang/Object;

    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    iput-object v10, v3, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket$getAuthSessionTicketInternal$1;->L$2:Ljava/lang/Object;

    iput v1, v3, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket$getAuthSessionTicketInternal$1;->I$0:I

    iput v7, v3, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket$getAuthSessionTicketInternal$1;->label:I

    invoke-virtual {v2, v3}, Lin/dragonbra/javasteam/types/AsyncJobSingle;->await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v4, :cond_ad

    return-object v4

    .line 103
    :cond_ad
    :goto_ad
    check-cast v2, Lin/dragonbra/javasteam/steam/handlers/steamapps/callback/AppOwnershipTicketCallback;

    .line 116
    invoke-virtual {v2}, Lin/dragonbra/javasteam/steam/handlers/steamapps/callback/AppOwnershipTicketCallback;->getResult()Lin/dragonbra/javasteam/enums/EResult;

    move-result-object v10

    sget-object v11, Lin/dragonbra/javasteam/enums/EResult;->OK:Lin/dragonbra/javasteam/enums/EResult;

    if-ne v10, v11, :cond_187

    .line 123
    iget-object v10, v0, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket;->gameConnectTokens:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v10}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [B

    if-eqz v10, :cond_17f

    .line 125
    invoke-direct {v0, v10, v8}, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket;->buildAuthTicket([BLin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket$TicketType;)[B

    move-result-object v11

    if-eqz v9, :cond_f0

    .line 128
    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v12

    if-nez v12, :cond_ce

    goto :goto_f0

    .line 131
    :cond_ce
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "str:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "\u0000"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    sget-object v13, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v12, v13}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v12

    const-string v13, "getBytes(...)"

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_f1

    :cond_f0
    :goto_f0
    const/4 v12, 0x0

    .line 134
    :goto_f1
    invoke-direct {v0, v1, v11, v12}, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket;->verifyTicket(I[B[B)Lkotlin/Pair;

    move-result-object v13

    invoke-virtual {v13}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lin/dragonbra/javasteam/types/AsyncJobSingle;

    invoke-virtual {v13}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Number;

    invoke-virtual {v13}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    .line 135
    iput-object v8, v3, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket$getAuthSessionTicketInternal$1;->L$0:Ljava/lang/Object;

    invoke-static {v9}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    iput-object v9, v3, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket$getAuthSessionTicketInternal$1;->L$1:Ljava/lang/Object;

    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v3, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket$getAuthSessionTicketInternal$1;->L$2:Ljava/lang/Object;

    iput-object v2, v3, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket$getAuthSessionTicketInternal$1;->L$3:Ljava/lang/Object;

    invoke-static {v10}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v3, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket$getAuthSessionTicketInternal$1;->L$4:Ljava/lang/Object;

    iput-object v11, v3, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket$getAuthSessionTicketInternal$1;->L$5:Ljava/lang/Object;

    invoke-static {v12}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v3, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket$getAuthSessionTicketInternal$1;->L$6:Ljava/lang/Object;

    invoke-static {v14}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v3, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket$getAuthSessionTicketInternal$1;->L$7:Ljava/lang/Object;

    iput v1, v3, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket$getAuthSessionTicketInternal$1;->I$0:I

    iput-wide v6, v3, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket$getAuthSessionTicketInternal$1;->J$0:J

    const/4 v5, 0x2

    iput v5, v3, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket$getAuthSessionTicketInternal$1;->label:I

    invoke-virtual {v14, v3}, Lin/dragonbra/javasteam/types/AsyncJobSingle;->await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v4, :cond_137

    return-object v4

    :cond_137
    move-wide v4, v6

    move-object v6, v11

    move-object v15, v8

    move-object v8, v2

    move-object v2, v3

    move-object v3, v15

    .line 103
    :goto_13d
    check-cast v2, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/callback/TicketAcceptedCallback;

    .line 138
    invoke-virtual {v2}, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/callback/TicketAcceptedCallback;->getActiveTicketsCRC()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_14b

    .line 1761
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_177

    .line 1762
    :cond_14b
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_14f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_177

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    long-to-int v9, v4

    if-ne v7, v9, :cond_14f

    .line 141
    invoke-virtual {v8}, Lin/dragonbra/javasteam/steam/handlers/steamapps/callback/AppOwnershipTicketCallback;->getTicket()[B

    move-result-object v2

    .line 142
    sget-object v4, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket$TicketType;->WebApiTicket:Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket$TicketType;

    if-ne v3, v4, :cond_16c

    const/4 v7, 0x1

    goto :goto_16d

    :cond_16c
    const/4 v7, 0x0

    .line 139
    :goto_16d
    invoke-direct {v0, v6, v2, v7}, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket;->combineTickets([B[BZ)[B

    move-result-object v2

    .line 144
    new-instance v3, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/TicketInfo;

    invoke-direct {v3, v0, v1, v2}, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/TicketInfo;-><init>(Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket;I[B)V

    return-object v3

    .line 146
    :cond_177
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Ticket verification failed."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
    :cond_17f
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "There\'s no available game connect tokens left."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 117
    :cond_187
    new-instance v0, Ljava/lang/Exception;

    .line 118
    invoke-virtual {v2}, Lin/dragonbra/javasteam/steam/handlers/steamapps/callback/AppOwnershipTicketCallback;->getResult()Lin/dragonbra/javasteam/enums/EResult;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to obtain app ownership ticket. Result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ". The user may not own the game or there was an error."

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 117
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_1a7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Steam Apps instance was null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 108
    :cond_1af
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "User not logged in."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getAuthTicketForWebApi(ILjava/lang/String;)Ljava/util/concurrent/CompletableFuture;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/concurrent/CompletableFuture<",
            "Lin/dragonbra/javasteam/steam/handlers/steamauthticket/TicketInfo;",
            ">;"
        }
    .end annotation

    const-string v0, "identity"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;->getClient()Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    move-result-object v0

    invoke-virtual {v0}, Lin/dragonbra/javasteam/steam/steamclient/SteamClient;->getDefaultScope$javasteam()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v4, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket$getAuthTicketForWebApi$1;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, p2, v0}, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket$getAuthTicketForWebApi$1;-><init>(Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket;ILjava/lang/String;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/future/FutureKt;->future$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public handleMsg(Lin/dragonbra/javasteam/base/IPacketMsg;)V
    .registers 3

    const-string v0, "packetMsg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 266
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket;->dispatchMap:Ljava/util/Map;

    invoke-interface {p1}, Lin/dragonbra/javasteam/base/IPacketMsg;->getMsgType()Lin/dragonbra/javasteam/enums/EMsg;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/reflect/KFunction;

    if-eqz p0, :cond_18

    check-cast p0, Lkotlin/jvm/functions/Function1;

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_18
    return-void
.end method

###### Class in.dragonbra.javasteam.steam.handlers.steamauthticket.SteamAuthTicket.Companion (in.dragonbra.javasteam.steam.handlers.steamauthticket.SteamAuthTicket$Companion)
.class public final Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket$Companion;
.super Ljava/lang/Object;
.source "SteamAuthTicket.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket$Companion;-><init>()V

    return-void
.end method

###### Class in.dragonbra.javasteam.steam.handlers.steamauthticket.SteamAuthTicket.TicketType (in.dragonbra.javasteam.steam.handlers.steamauthticket.SteamAuthTicket$TicketType)
.class public final enum Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket$TicketType;
.super Ljava/lang/Enum;
.source "SteamAuthTicket.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TicketType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket$TicketType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket$TicketType;

.field public static final enum AuthSession:Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket$TicketType;

.field public static final enum WebApiTicket:Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket$TicketType;


# instance fields
.field private final value:I


# direct methods
.method private static final synthetic $values()[Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket$TicketType;
    .registers 2

    .line 0
    sget-object v0, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket$TicketType;->AuthSession:Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket$TicketType;

    sget-object v1, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket$TicketType;->WebApiTicket:Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket$TicketType;

    filled-new-array {v0, v1}, [Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket$TicketType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 4

    .line 56
    new-instance v0, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket$TicketType;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const-string v3, "AuthSession"

    invoke-direct {v0, v3, v1, v2}, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket$TicketType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket$TicketType;->AuthSession:Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket$TicketType;

    .line 61
    new-instance v0, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket$TicketType;

    const/4 v1, 0x1

    const/4 v2, 0x5

    const-string v3, "WebApiTicket"

    invoke-direct {v0, v3, v1, v2}, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket$TicketType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket$TicketType;->WebApiTicket:Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket$TicketType;

    invoke-static {}, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket$TicketType;->$values()[Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket$TicketType;

    move-result-object v0

    sput-object v0, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket$TicketType;->$VALUES:[Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket$TicketType;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket$TicketType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 52
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket$TicketType;->value:I

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket$TicketType;",
            ">;"
        }
    .end annotation

    .line 0
    sget-object v0, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket$TicketType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket$TicketType;
    .registers 2

    .line 0
    const-class v0, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket$TicketType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket$TicketType;

    return-object p0
.end method

.method public static values()[Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket$TicketType;
    .registers 1

    .line 0
    sget-object v0, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket$TicketType;->$VALUES:[Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket$TicketType;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket$TicketType;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .registers 1

    .line 52
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket$TicketType;->value:I

    return p0
.end method

###### Class in.dragonbra.javasteam.steam.handlers.steamauthticket.SteamAuthTicket.AnonymousClass1 (in.dragonbra.javasteam.steam.handlers.steamauthticket.SteamAuthTicket$getAuthSessionTicket$1)
.class final Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket$getAuthSessionTicket$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SteamAuthTicket.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket;->getAuthSessionTicket(I)Ljava/util/concurrent/CompletableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lin/dragonbra/javasteam/steam/handlers/steamauthticket/TicketInfo;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "in.dragonbra.javasteam.steam.handlers.steamauthticket.SteamAuthTicket$getAuthSessionTicket$1"
    f = "SteamAuthTicket.kt"
    l = {
        0x55
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation


# instance fields
.field final synthetic $appid:I

.field label:I

.field final synthetic this$0:Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket;


# direct methods
.method public constructor <init>(Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket;ILkotlin/coroutines/Continuation;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket;",
            "I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket$getAuthSessionTicket$1;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket$getAuthSessionTicket$1;->this$0:Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket;

    iput p2, p0, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket$getAuthSessionTicket$1;->$appid:I

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 0
    new-instance p1, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket$getAuthSessionTicket$1;

    iget-object v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket$getAuthSessionTicket$1;->this$0:Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket;

    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket$getAuthSessionTicket$1;->$appid:I

    invoke-direct {p1, v0, p0, p2}, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket$getAuthSessionTicket$1;-><init>(Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket;ILkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket$getAuthSessionTicket$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lin/dragonbra/javasteam/steam/handlers/steamauthticket/TicketInfo;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 0
    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket$getAuthSessionTicket$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket$getAuthSessionTicket$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket$getAuthSessionTicket$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 84
    iget v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket$getAuthSessionTicket$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_17

    if-ne v1, v2, :cond_f

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2b

    :cond_f
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_17
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 85
    iget-object p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket$getAuthSessionTicket$1;->this$0:Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket;

    iget v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket$getAuthSessionTicket$1;->$appid:I

    sget-object v3, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket$TicketType;->AuthSession:Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket$TicketType;

    iput v2, p0, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket$getAuthSessionTicket$1;->label:I

    const-string v2, ""

    invoke-virtual {p1, v1, v3, v2, p0}, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket;->getAuthSessionTicketInternal$javasteam(ILin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket$TicketType;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2b

    return-object v0

    :cond_2b
    :goto_2b
    return-object p1
.end method

###### Class in.dragonbra.javasteam.steam.handlers.steamauthticket.SteamAuthTicket.C00121 (in.dragonbra.javasteam.steam.handlers.steamauthticket.SteamAuthTicket$getAuthTicketForWebApi$1)
.class final Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket$getAuthTicketForWebApi$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SteamAuthTicket.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket;->getAuthTicketForWebApi(ILjava/lang/String;)Ljava/util/concurrent/CompletableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lin/dragonbra/javasteam/steam/handlers/steamauthticket/TicketInfo;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "in.dragonbra.javasteam.steam.handlers.steamauthticket.SteamAuthTicket$getAuthTicketForWebApi$1"
    f = "SteamAuthTicket.kt"
    l = {
        0x64
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation


# instance fields
.field final synthetic $appid:I

.field final synthetic $identity:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket;


# direct methods
.method public constructor <init>(Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket;ILjava/lang/String;Lkotlin/coroutines/Continuation;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket;",
            "I",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket$getAuthTicketForWebApi$1;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket$getAuthTicketForWebApi$1;->this$0:Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket;

    iput p2, p0, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket$getAuthTicketForWebApi$1;->$appid:I

    iput-object p3, p0, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket$getAuthTicketForWebApi$1;->$identity:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 0
    new-instance p1, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket$getAuthTicketForWebApi$1;

    iget-object v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket$getAuthTicketForWebApi$1;->this$0:Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket;

    iget v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket$getAuthTicketForWebApi$1;->$appid:I

    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket$getAuthTicketForWebApi$1;->$identity:Ljava/lang/String;

    invoke-direct {p1, v0, v1, p0, p2}, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket$getAuthTicketForWebApi$1;-><init>(Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket;ILjava/lang/String;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket$getAuthTicketForWebApi$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lin/dragonbra/javasteam/steam/handlers/steamauthticket/TicketInfo;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 0
    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket$getAuthTicketForWebApi$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket$getAuthTicketForWebApi$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket$getAuthTicketForWebApi$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 99
    iget v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket$getAuthTicketForWebApi$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_17

    if-ne v1, v2, :cond_f

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2b

    :cond_f
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_17
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 100
    iget-object p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket$getAuthTicketForWebApi$1;->this$0:Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket;

    iget v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket$getAuthTicketForWebApi$1;->$appid:I

    sget-object v3, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket$TicketType;->WebApiTicket:Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket$TicketType;

    iget-object v4, p0, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket$getAuthTicketForWebApi$1;->$identity:Ljava/lang/String;

    iput v2, p0, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket$getAuthTicketForWebApi$1;->label:I

    invoke-virtual {p1, v1, v3, v4, p0}, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket;->getAuthSessionTicketInternal$javasteam(ILin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket$TicketType;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2b

    return-object v0

    :cond_2b
    :goto_2b
    return-object p1
.end method

###### Class in.dragonbra.javasteam.steam.handlers.steamauthticket.SteamAuthTicket$$ExternalSyntheticLambda0 (in.dragonbra.javasteam.steam.handlers.steamauthticket.SteamAuthTicket$$ExternalSyntheticLambda0)
.class public final synthetic Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket$$ExternalSyntheticLambda0;
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
    check-cast p1, Ljava/lang/Integer;

    invoke-static {p1}, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket;->$r8$lambda$V2Kty5HAJqOT3PZOYumi10y2OMg(Ljava/lang/Integer;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

###### Class in.dragonbra.javasteam.steam.handlers.steamauthticket.SteamAuthTicket$$ExternalSyntheticLambda1 (in.dragonbra.javasteam.steam.handlers.steamauthticket.SteamAuthTicket$$ExternalSyntheticLambda1)
.class public final synthetic Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket$$ExternalSyntheticLambda1;->f$0:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket$$ExternalSyntheticLambda1;->f$0:Lkotlin/jvm/functions/Function1;

    invoke-static {p0, p1}, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket;->$r8$lambda$0SssxcHNF2Rqp99CXL_dUIar4pI(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

###### Class in.dragonbra.javasteam.steam.handlers.steamauthticket.SteamAuthTicket$$ExternalSyntheticLambda2 (in.dragonbra.javasteam.steam.handlers.steamauthticket.SteamAuthTicket$$ExternalSyntheticLambda2)
.class public final synthetic Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lin/dragonbra/javasteam/steam/handlers/steamauthticket/TicketInfo;


# direct methods
.method public synthetic constructor <init>(Lin/dragonbra/javasteam/steam/handlers/steamauthticket/TicketInfo;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket$$ExternalSyntheticLambda2;->f$0:Lin/dragonbra/javasteam/steam/handlers/steamauthticket/TicketInfo;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket$$ExternalSyntheticLambda2;->f$0:Lin/dragonbra/javasteam/steam/handlers/steamauthticket/TicketInfo;

    check-cast p1, Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesBase$CMsgAuthTicket;

    invoke-static {p0, p1}, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket;->$r8$lambda$OqHx0gZmfzFFDID76gIRSYbWbUU(Lin/dragonbra/javasteam/steam/handlers/steamauthticket/TicketInfo;Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesBase$CMsgAuthTicket;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
