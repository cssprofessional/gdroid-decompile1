###### Class in.dragonbra.javasteam.networking.steam3.UdpConnection (in.dragonbra.javasteam.networking.steam3.UdpConnection)
.class public Lin/dragonbra/javasteam/networking/steam3/UdpConnection;
.super Lin/dragonbra/javasteam/networking/steam3/Connection;
.source "UdpConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lin/dragonbra/javasteam/networking/steam3/UdpConnection$State;,
        Lin/dragonbra/javasteam/networking/steam3/UdpConnection$NetLoop;
    }
.end annotation


# static fields
.field private static final AHEAD_COUNT:I = 0x3

.field private static final RESEND_COUNT:I = 0x3

.field private static final RESEND_DELAY:J = 0xbb8L

.field private static SOURCE_CONN_ID:I = 0x0

.field private static final TIMEOUT_DELAY:J = 0xea60L

.field private static final logger:Lin/dragonbra/javasteam/util/log/Logger;


# instance fields
.field private currentEndPoint:Ljava/net/InetSocketAddress;

.field private inPackets:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lin/dragonbra/javasteam/networking/steam3/UdpPacket;",
            ">;"
        }
    .end annotation
.end field

.field private inSeq:I

.field private inSeqAcked:I

.field private inSeqHandled:I

.field private netLoop:Lin/dragonbra/javasteam/networking/steam3/UdpConnection$NetLoop;

.field private netThread:Ljava/lang/Thread;

.field private nextResend:J

.field private final outPackets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lin/dragonbra/javasteam/networking/steam3/UdpPacket;",
            ">;"
        }
    .end annotation
.end field

.field private outSeq:I

.field private outSeqAcked:I

.field private outSeqSent:I

.field private remoteConnId:I

.field private final sock:Ljava/net/DatagramSocket;

.field private volatile state:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lin/dragonbra/javasteam/networking/steam3/UdpConnection$State;",
            ">;"
        }
    .end annotation
.end field

.field private timeout:J


# direct methods
.method public static synthetic $r8$lambda$YiSVQjldVsS7Ipife5cYIDZeaGw(Lin/dragonbra/javasteam/networking/steam3/UdpConnection;Lin/dragonbra/javasteam/networking/steam3/UdpPacket;)Z
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lin/dragonbra/javasteam/networking/steam3/UdpConnection;->lambda$receivePacket$0(Lin/dragonbra/javasteam/networking/steam3/UdpPacket;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetcurrentEndPoint(Lin/dragonbra/javasteam/networking/steam3/UdpConnection;)Ljava/net/InetSocketAddress;
    .registers 1

    .line 0
    iget-object p0, p0, Lin/dragonbra/javasteam/networking/steam3/UdpConnection;->currentEndPoint:Ljava/net/InetSocketAddress;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetinSeq(Lin/dragonbra/javasteam/networking/steam3/UdpConnection;)I
    .registers 1

    .line 0
    iget p0, p0, Lin/dragonbra/javasteam/networking/steam3/UdpConnection;->inSeq:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetinSeqAcked(Lin/dragonbra/javasteam/networking/steam3/UdpConnection;)I
    .registers 1

    .line 0
    iget p0, p0, Lin/dragonbra/javasteam/networking/steam3/UdpConnection;->inSeqAcked:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetoutPackets(Lin/dragonbra/javasteam/networking/steam3/UdpConnection;)Ljava/util/List;
    .registers 1

    .line 0
    iget-object p0, p0, Lin/dragonbra/javasteam/networking/steam3/UdpConnection;->outPackets:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetsock(Lin/dragonbra/javasteam/networking/steam3/UdpConnection;)Ljava/net/DatagramSocket;
    .registers 1

    .line 0
    iget-object p0, p0, Lin/dragonbra/javasteam/networking/steam3/UdpConnection;->sock:Ljava/net/DatagramSocket;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetstate(Lin/dragonbra/javasteam/networking/steam3/UdpConnection;)Ljava/util/concurrent/atomic/AtomicReference;
    .registers 1

    .line 0
    iget-object p0, p0, Lin/dragonbra/javasteam/networking/steam3/UdpConnection;->state:Ljava/util/concurrent/atomic/AtomicReference;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgettimeout(Lin/dragonbra/javasteam/networking/steam3/UdpConnection;)J
    .registers 3

    .line 0
    iget-wide v0, p0, Lin/dragonbra/javasteam/networking/steam3/UdpConnection;->timeout:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fputcurrentEndPoint(Lin/dragonbra/javasteam/networking/steam3/UdpConnection;Ljava/net/InetSocketAddress;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lin/dragonbra/javasteam/networking/steam3/UdpConnection;->currentEndPoint:Ljava/net/InetSocketAddress;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputnextResend(Lin/dragonbra/javasteam/networking/steam3/UdpConnection;J)V
    .registers 3

    .line 0
    iput-wide p1, p0, Lin/dragonbra/javasteam/networking/steam3/UdpConnection;->nextResend:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputtimeout(Lin/dragonbra/javasteam/networking/steam3/UdpConnection;J)V
    .registers 3

    .line 0
    iput-wide p1, p0, Lin/dragonbra/javasteam/networking/steam3/UdpConnection;->timeout:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$mreceivePacket(Lin/dragonbra/javasteam/networking/steam3/UdpConnection;Lin/dragonbra/javasteam/networking/steam3/UdpPacket;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lin/dragonbra/javasteam/networking/steam3/UdpConnection;->receivePacket(Lin/dragonbra/javasteam/networking/steam3/UdpPacket;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msendAck(Lin/dragonbra/javasteam/networking/steam3/UdpConnection;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lin/dragonbra/javasteam/networking/steam3/UdpConnection;->sendAck()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msendPacket(Lin/dragonbra/javasteam/networking/steam3/UdpConnection;Lin/dragonbra/javasteam/networking/steam3/UdpPacket;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lin/dragonbra/javasteam/networking/steam3/UdpConnection;->sendPacket(Lin/dragonbra/javasteam/networking/steam3/UdpPacket;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msendPendingMessages(Lin/dragonbra/javasteam/networking/steam3/UdpConnection;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lin/dragonbra/javasteam/networking/steam3/UdpConnection;->sendPendingMessages()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetlogger()Lin/dragonbra/javasteam/util/log/Logger;
    .registers 1

    .line 0
    sget-object v0, Lin/dragonbra/javasteam/networking/steam3/UdpConnection;->logger:Lin/dragonbra/javasteam/util/log/Logger;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 24
    const-class v0, Lin/dragonbra/javasteam/networking/steam3/UdpConnection;

    invoke-static {v0}, Lin/dragonbra/javasteam/util/log/LogManager;->getLogger(Ljava/lang/Class;)Lin/dragonbra/javasteam/util/log/Logger;

    move-result-object v0

    sput-object v0, Lin/dragonbra/javasteam/networking/steam3/UdpConnection;->logger:Lin/dragonbra/javasteam/util/log/Logger;

    const/16 v0, 0x200

    .line 64
    sput v0, Lin/dragonbra/javasteam/networking/steam3/UdpConnection;->SOURCE_CONN_ID:I

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 100
    invoke-direct {p0}, Lin/dragonbra/javasteam/networking/steam3/Connection;-><init>()V

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lin/dragonbra/javasteam/networking/steam3/UdpConnection;->outPackets:Ljava/util/List;

    .line 102
    :try_start_a
    new-instance v0, Ljava/net/DatagramSocket;

    invoke-direct {v0}, Ljava/net/DatagramSocket;-><init>()V

    iput-object v0, p0, Lin/dragonbra/javasteam/networking/steam3/UdpConnection;->sock:Ljava/net/DatagramSocket;
    :try_end_11
    .catch Ljava/net/SocketException; {:try_start_a .. :try_end_11} :catch_1b

    .line 107
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lin/dragonbra/javasteam/networking/steam3/UdpConnection$State;->DISCONNECTED:Lin/dragonbra/javasteam/networking/steam3/UdpConnection$State;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lin/dragonbra/javasteam/networking/steam3/UdpConnection;->state:Ljava/util/concurrent/atomic/AtomicReference;

    return-void

    :catch_1b
    move-exception p0

    .line 104
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "couldn\'t create datagram socket"

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private dispatchMessage()Z
    .registers 7

    .line 338
    invoke-direct {p0}, Lin/dragonbra/javasteam/networking/steam3/UdpConnection;->readyMessageParts()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 344
    :cond_8
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :goto_d
    const/4 v3, 0x1

    if-ge v1, v0, :cond_3a

    .line 348
    iget-object v4, p0, Lin/dragonbra/javasteam/networking/steam3/UdpConnection;->inPackets:Ljava/util/Map;

    iget v5, p0, Lin/dragonbra/javasteam/networking/steam3/UdpConnection;->inSeqHandled:I

    add-int/2addr v5, v3

    iput v5, p0, Lin/dragonbra/javasteam/networking/steam3/UdpConnection;->inSeqHandled:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lin/dragonbra/javasteam/networking/steam3/UdpPacket;

    .line 349
    iget-object v4, p0, Lin/dragonbra/javasteam/networking/steam3/UdpConnection;->inPackets:Ljava/util/Map;

    iget v5, p0, Lin/dragonbra/javasteam/networking/steam3/UdpConnection;->inSeqHandled:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    :try_start_2c
    invoke-virtual {v3}, Lin/dragonbra/javasteam/networking/steam3/UdpPacket;->getPayload()Lin/dragonbra/javasteam/util/stream/MemoryStream;

    move-result-object v3

    invoke-virtual {v3}, Lin/dragonbra/javasteam/util/stream/MemoryStream;->toByteArray()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_37} :catch_37

    :catch_37
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 357
    :cond_3a
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 359
    sget-object v1, Lin/dragonbra/javasteam/networking/steam3/UdpConnection;->logger:Lin/dragonbra/javasteam/util/log/Logger;

    array-length v2, v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Dispatching message: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " bytes"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lin/dragonbra/javasteam/util/log/Logger;->debug(Ljava/lang/String;)V

    .line 361
    new-instance v1, Lin/dragonbra/javasteam/networking/steam3/NetMsgEventArgs;

    iget-object v2, p0, Lin/dragonbra/javasteam/networking/steam3/UdpConnection;->currentEndPoint:Ljava/net/InetSocketAddress;

    invoke-direct {v1, v0, v2}, Lin/dragonbra/javasteam/networking/steam3/NetMsgEventArgs;-><init>([BLjava/net/InetSocketAddress;)V

    invoke-virtual {p0, v1}, Lin/dragonbra/javasteam/networking/steam3/Connection;->onNetMsgReceived(Lin/dragonbra/javasteam/networking/steam3/NetMsgEventArgs;)V

    return v3
.end method

.method private synthetic lambda$receivePacket$0(Lin/dragonbra/javasteam/networking/steam3/UdpPacket;)Z
    .registers 2

    .line 402
    invoke-virtual {p1}, Lin/dragonbra/javasteam/networking/steam3/UdpPacket;->getHeader()Lin/dragonbra/javasteam/generated/UdpHeader;

    move-result-object p1

    invoke-virtual {p1}, Lin/dragonbra/javasteam/generated/UdpHeader;->getSeqThis()I

    move-result p1

    iget p0, p0, Lin/dragonbra/javasteam/networking/steam3/UdpConnection;->outSeqAcked:I

    if-gt p1, p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method private readyMessageParts()I
    .registers 7

    .line 317
    iget-object v0, p0, Lin/dragonbra/javasteam/networking/steam3/UdpConnection;->inPackets:Ljava/util/Map;

    iget v1, p0, Lin/dragonbra/javasteam/networking/steam3/UdpConnection;->inSeqHandled:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lin/dragonbra/javasteam/networking/steam3/UdpPacket;

    const/4 v1, 0x0

    if-nez v0, :cond_14

    return v1

    :cond_14
    move v3, v2

    .line 323
    :goto_15
    invoke-virtual {v0}, Lin/dragonbra/javasteam/networking/steam3/UdpPacket;->getHeader()Lin/dragonbra/javasteam/generated/UdpHeader;

    move-result-object v4

    invoke-virtual {v4}, Lin/dragonbra/javasteam/generated/UdpHeader;->getPacketsInMsg()I

    move-result v4

    if-ge v3, v4, :cond_33

    .line 324
    iget-object v4, p0, Lin/dragonbra/javasteam/networking/steam3/UdpConnection;->inPackets:Ljava/util/Map;

    iget v5, p0, Lin/dragonbra/javasteam/networking/steam3/UdpConnection;->inSeqHandled:I

    add-int/2addr v5, v2

    add-int/2addr v5, v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_30

    return v1

    :cond_30
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    .line 329
    :cond_33
    invoke-virtual {v0}, Lin/dragonbra/javasteam/networking/steam3/UdpPacket;->getHeader()Lin/dragonbra/javasteam/generated/UdpHeader;

    move-result-object p0

    invoke-virtual {p0}, Lin/dragonbra/javasteam/generated/UdpHeader;->getPacketsInMsg()I

    move-result p0

    return p0
.end method

.method private receiveAccept(Lin/dragonbra/javasteam/networking/steam3/UdpPacket;)V
    .registers 5

    .line 464
    iget-object v0, p0, Lin/dragonbra/javasteam/networking/steam3/UdpConnection;->state:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lin/dragonbra/javasteam/networking/steam3/UdpConnection$State;->CONNECT_SENT:Lin/dragonbra/javasteam/networking/steam3/UdpConnection$State;

    sget-object v2, Lin/dragonbra/javasteam/networking/steam3/UdpConnection$State;->CONNECTED:Lin/dragonbra/javasteam/networking/steam3/UdpConnection$State;

    invoke-static {v0, v1, v2}, Lin/dragonbra/javasteam/networking/steam3/UdpConnection$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    return-void

    .line 468
    :cond_d
    sget-object v0, Lin/dragonbra/javasteam/networking/steam3/UdpConnection;->logger:Lin/dragonbra/javasteam/util/log/Logger;

    const-string v1, "Connection established"

    invoke-virtual {v0, v1}, Lin/dragonbra/javasteam/util/log/Logger;->debug(Ljava/lang/String;)V

    .line 469
    invoke-virtual {p1}, Lin/dragonbra/javasteam/networking/steam3/UdpPacket;->getHeader()Lin/dragonbra/javasteam/generated/UdpHeader;

    move-result-object v0

    invoke-virtual {v0}, Lin/dragonbra/javasteam/generated/UdpHeader;->getSourceConnID()I

    move-result v0

    iput v0, p0, Lin/dragonbra/javasteam/networking/steam3/UdpConnection;->remoteConnId:I

    .line 470
    invoke-virtual {p1}, Lin/dragonbra/javasteam/networking/steam3/UdpPacket;->getHeader()Lin/dragonbra/javasteam/generated/UdpHeader;

    move-result-object p1

    invoke-virtual {p1}, Lin/dragonbra/javasteam/generated/UdpHeader;->getSeqThis()I

    move-result p1

    iput p1, p0, Lin/dragonbra/javasteam/networking/steam3/UdpConnection;->inSeqHandled:I

    .line 472
    invoke-virtual {p0}, Lin/dragonbra/javasteam/networking/steam3/Connection;->onConnected()V

    return-void
.end method

.method private receiveChallenge(Lin/dragonbra/javasteam/networking/steam3/UdpPacket;)V
    .registers 6

    .line 441
    iget-object v0, p0, Lin/dragonbra/javasteam/networking/steam3/UdpConnection;->state:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lin/dragonbra/javasteam/networking/steam3/UdpConnection$State;->CHALLENGE_REQ_SENT:Lin/dragonbra/javasteam/networking/steam3/UdpConnection$State;

    sget-object v2, Lin/dragonbra/javasteam/networking/steam3/UdpConnection$State;->CONNECT_SENT:Lin/dragonbra/javasteam/networking/steam3/UdpConnection$State;

    invoke-static {v0, v1, v2}, Lin/dragonbra/javasteam/networking/steam3/UdpConnection$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    return-void

    .line 445
    :cond_d
    :try_start_d
    new-instance v0, Lin/dragonbra/javasteam/generated/ChallengeData;

    invoke-direct {v0}, Lin/dragonbra/javasteam/generated/ChallengeData;-><init>()V

    .line 446
    invoke-virtual {p1}, Lin/dragonbra/javasteam/networking/steam3/UdpPacket;->getPayload()Lin/dragonbra/javasteam/util/stream/MemoryStream;

    move-result-object v1

    invoke-virtual {v0, v1}, Lin/dragonbra/javasteam/generated/ChallengeData;->deserialize(Ljava/io/InputStream;)V

    .line 448
    new-instance v1, Lin/dragonbra/javasteam/generated/ConnectData;

    invoke-direct {v1}, Lin/dragonbra/javasteam/generated/ConnectData;-><init>()V

    .line 449
    invoke-virtual {v0}, Lin/dragonbra/javasteam/generated/ChallengeData;->getChallengeValue()I

    move-result v0

    const v2, -0x5bd920d5

    xor-int/2addr v0, v2

    invoke-virtual {v1, v0}, Lin/dragonbra/javasteam/generated/ConnectData;->setChallengeValue(I)V

    .line 451
    new-instance v0, Lin/dragonbra/javasteam/util/stream/MemoryStream;

    invoke-direct {v0}, Lin/dragonbra/javasteam/util/stream/MemoryStream;-><init>()V

    .line 452
    invoke-virtual {v0}, Lin/dragonbra/javasteam/util/stream/MemoryStream;->asOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-virtual {v1, v2}, Lin/dragonbra/javasteam/generated/ConnectData;->serialize(Ljava/io/OutputStream;)V

    .line 453
    sget-object v1, Lin/dragonbra/javasteam/util/stream/SeekOrigin;->BEGIN:Lin/dragonbra/javasteam/util/stream/SeekOrigin;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3, v1}, Lin/dragonbra/javasteam/util/stream/MemoryStream;->seek(JLin/dragonbra/javasteam/util/stream/SeekOrigin;)J

    .line 455
    new-instance v1, Lin/dragonbra/javasteam/networking/steam3/UdpPacket;

    sget-object v2, Lin/dragonbra/javasteam/enums/EUdpPacketType;->Connect:Lin/dragonbra/javasteam/enums/EUdpPacketType;

    invoke-direct {v1, v2, v0}, Lin/dragonbra/javasteam/networking/steam3/UdpPacket;-><init>(Lin/dragonbra/javasteam/enums/EUdpPacketType;Lin/dragonbra/javasteam/util/stream/MemoryStream;)V

    invoke-direct {p0, v1}, Lin/dragonbra/javasteam/networking/steam3/UdpConnection;->sendSequenced(Lin/dragonbra/javasteam/networking/steam3/UdpPacket;)V

    .line 457
    invoke-virtual {p1}, Lin/dragonbra/javasteam/networking/steam3/UdpPacket;->getHeader()Lin/dragonbra/javasteam/generated/UdpHeader;

    move-result-object p1

    invoke-virtual {p1}, Lin/dragonbra/javasteam/generated/UdpHeader;->getSeqThis()I

    move-result p1

    iput p1, p0, Lin/dragonbra/javasteam/networking/steam3/UdpConnection;->inSeqHandled:I
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_50} :catch_51

    goto :goto_57

    :catch_51
    move-exception p0

    .line 459
    sget-object p1, Lin/dragonbra/javasteam/networking/steam3/UdpConnection;->logger:Lin/dragonbra/javasteam/util/log/Logger;

    invoke-virtual {p1, p0}, Lin/dragonbra/javasteam/util/log/Logger;->debug(Ljava/lang/Throwable;)V

    :goto_57
    return-void
.end method

.method private receiveData(Lin/dragonbra/javasteam/networking/steam3/UdpPacket;)V
    .registers 4

    .line 477
    iget-object v0, p0, Lin/dragonbra/javasteam/networking/steam3/UdpConnection;->state:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lin/dragonbra/javasteam/networking/steam3/UdpConnection$State;->CONNECTED:Lin/dragonbra/javasteam/networking/steam3/UdpConnection$State;

    if-eq v0, v1, :cond_15

    iget-object v0, p0, Lin/dragonbra/javasteam/networking/steam3/UdpConnection;->state:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lin/dragonbra/javasteam/networking/steam3/UdpConnection$State;->DISCONNECTING:Lin/dragonbra/javasteam/networking/steam3/UdpConnection$State;

    if-eq v0, v1, :cond_15

    return-void

    .line 483
    :cond_15
    invoke-virtual {p1}, Lin/dragonbra/javasteam/networking/steam3/UdpPacket;->getHeader()Lin/dragonbra/javasteam/generated/UdpHeader;

    move-result-object v0

    invoke-virtual {v0}, Lin/dragonbra/javasteam/generated/UdpHeader;->getSeqThis()I

    move-result v0

    iget v1, p0, Lin/dragonbra/javasteam/networking/steam3/UdpConnection;->inSeqHandled:I

    if-le v0, v1, :cond_4e

    iget-object v0, p0, Lin/dragonbra/javasteam/networking/steam3/UdpConnection;->inPackets:Ljava/util/Map;

    invoke-virtual {p1}, Lin/dragonbra/javasteam/networking/steam3/UdpPacket;->getHeader()Lin/dragonbra/javasteam/generated/UdpHeader;

    move-result-object v1

    invoke-virtual {v1}, Lin/dragonbra/javasteam/generated/UdpHeader;->getSeqThis()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    goto :goto_4e

    .line 487
    :cond_36
    iget-object v0, p0, Lin/dragonbra/javasteam/networking/steam3/UdpConnection;->inPackets:Ljava/util/Map;

    invoke-virtual {p1}, Lin/dragonbra/javasteam/networking/steam3/UdpPacket;->getHeader()Lin/dragonbra/javasteam/generated/UdpHeader;

    move-result-object v1

    invoke-virtual {v1}, Lin/dragonbra/javasteam/generated/UdpHeader;->getSeqThis()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 490
    :goto_47
    invoke-direct {p0}, Lin/dragonbra/javasteam/networking/steam3/UdpConnection;->dispatchMessage()Z

    move-result p1

    if-eqz p1, :cond_4e

    goto :goto_47

    :cond_4e
    :goto_4e
    return-void
.end method

.method private receivePacket(Lin/dragonbra/javasteam/networking/steam3/UdpPacket;)V
    .registers 10

    .line 373
    invoke-virtual {p1}, Lin/dragonbra/javasteam/networking/steam3/UdpPacket;->isValid()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 377
    :cond_7
    iget v0, p0, Lin/dragonbra/javasteam/networking/steam3/UdpConnection;->remoteConnId:I

    if-lez v0, :cond_18

    invoke-virtual {p1}, Lin/dragonbra/javasteam/networking/steam3/UdpPacket;->getHeader()Lin/dragonbra/javasteam/generated/UdpHeader;

    move-result-object v0

    invoke-virtual {v0}, Lin/dragonbra/javasteam/generated/UdpHeader;->getSourceConnID()I

    move-result v0

    iget v1, p0, Lin/dragonbra/javasteam/networking/steam3/UdpConnection;->remoteConnId:I

    if-eq v0, v1, :cond_18

    return-void

    .line 381
    :cond_18
    sget-object v0, Lin/dragonbra/javasteam/networking/steam3/UdpConnection;->logger:Lin/dragonbra/javasteam/util/log/Logger;

    .line 382
    invoke-virtual {p1}, Lin/dragonbra/javasteam/networking/steam3/UdpPacket;->getHeader()Lin/dragonbra/javasteam/generated/UdpHeader;

    move-result-object v1

    invoke-virtual {v1}, Lin/dragonbra/javasteam/generated/UdpHeader;->getPacketType()Lin/dragonbra/javasteam/enums/EUdpPacketType;

    move-result-object v2

    invoke-virtual {p1}, Lin/dragonbra/javasteam/networking/steam3/UdpPacket;->getHeader()Lin/dragonbra/javasteam/generated/UdpHeader;

    move-result-object v1

    invoke-virtual {v1}, Lin/dragonbra/javasteam/generated/UdpHeader;->getSeqThis()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1}, Lin/dragonbra/javasteam/networking/steam3/UdpPacket;->getHeader()Lin/dragonbra/javasteam/generated/UdpHeader;

    move-result-object v1

    invoke-virtual {v1}, Lin/dragonbra/javasteam/generated/UdpHeader;->getSeqAck()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 383
    invoke-virtual {p1}, Lin/dragonbra/javasteam/networking/steam3/UdpPacket;->getHeader()Lin/dragonbra/javasteam/generated/UdpHeader;

    move-result-object v1

    invoke-virtual {v1}, Lin/dragonbra/javasteam/generated/UdpHeader;->getPayloadSize()S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v5

    invoke-virtual {p1}, Lin/dragonbra/javasteam/networking/steam3/UdpPacket;->getHeader()Lin/dragonbra/javasteam/generated/UdpHeader;

    move-result-object v1

    invoke-virtual {v1}, Lin/dragonbra/javasteam/generated/UdpHeader;->getMsgSize()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p1}, Lin/dragonbra/javasteam/networking/steam3/UdpPacket;->getHeader()Lin/dragonbra/javasteam/generated/UdpHeader;

    move-result-object v1

    invoke-virtual {v1}, Lin/dragonbra/javasteam/generated/UdpHeader;->getPacketsInMsg()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array/range {v2 .. v7}, [Ljava/lang/Object;

    move-result-object v1

    .line 381
    const-string v2, "<- Recv\'d %s Seq %d Ack %d; %d bytes; Message: %d bytes %d packets"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lin/dragonbra/javasteam/util/log/Logger;->debug(Ljava/lang/String;)V

    .line 387
    invoke-virtual {p1}, Lin/dragonbra/javasteam/networking/steam3/UdpPacket;->getHeader()Lin/dragonbra/javasteam/generated/UdpHeader;

    move-result-object v0

    invoke-virtual {v0}, Lin/dragonbra/javasteam/generated/UdpHeader;->getPacketType()Lin/dragonbra/javasteam/enums/EUdpPacketType;

    move-result-object v0

    sget-object v1, Lin/dragonbra/javasteam/enums/EUdpPacketType;->Data:Lin/dragonbra/javasteam/enums/EUdpPacketType;

    if-ne v0, v1, :cond_87

    invoke-virtual {p1}, Lin/dragonbra/javasteam/networking/steam3/UdpPacket;->getHeader()Lin/dragonbra/javasteam/generated/UdpHeader;

    move-result-object v0

    invoke-virtual {v0}, Lin/dragonbra/javasteam/generated/UdpHeader;->getSeqThis()I

    move-result v0

    iget v1, p0, Lin/dragonbra/javasteam/networking/steam3/UdpConnection;->inSeq:I

    if-ge v0, v1, :cond_87

    .line 388
    invoke-direct {p0}, Lin/dragonbra/javasteam/networking/steam3/UdpConnection;->sendAck()V

    return-void

    .line 394
    :cond_87
    iget v0, p0, Lin/dragonbra/javasteam/networking/steam3/UdpConnection;->outSeqAcked:I

    invoke-virtual {p1}, Lin/dragonbra/javasteam/networking/steam3/UdpPacket;->getHeader()Lin/dragonbra/javasteam/generated/UdpHeader;

    move-result-object v1

    invoke-virtual {v1}, Lin/dragonbra/javasteam/generated/UdpHeader;->getSeqAck()I

    move-result v1

    if-ge v0, v1, :cond_b6

    .line 395
    invoke-virtual {p1}, Lin/dragonbra/javasteam/networking/steam3/UdpPacket;->getHeader()Lin/dragonbra/javasteam/generated/UdpHeader;

    move-result-object v0

    invoke-virtual {v0}, Lin/dragonbra/javasteam/generated/UdpHeader;->getSeqAck()I

    move-result v0

    iput v0, p0, Lin/dragonbra/javasteam/networking/steam3/UdpConnection;->outSeqAcked:I

    .line 398
    iget v1, p0, Lin/dragonbra/javasteam/networking/steam3/UdpConnection;->outSeqSent:I

    if-ge v1, v0, :cond_a3

    .line 399
    iput v0, p0, Lin/dragonbra/javasteam/networking/steam3/UdpConnection;->outSeqSent:I

    .line 402
    :cond_a3
    iget-object v0, p0, Lin/dragonbra/javasteam/networking/steam3/UdpConnection;->outPackets:Ljava/util/List;

    new-instance v1, Lin/dragonbra/javasteam/networking/steam3/UdpConnection$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lin/dragonbra/javasteam/networking/steam3/UdpConnection$$ExternalSyntheticLambda1;-><init>(Lin/dragonbra/javasteam/networking/steam3/UdpConnection;)V

    invoke-interface {v0, v1}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    .line 403
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0xbb8

    add-long/2addr v0, v2

    iput-wide v0, p0, Lin/dragonbra/javasteam/networking/steam3/UdpConnection;->nextResend:J

    .line 407
    :cond_b6
    invoke-virtual {p1}, Lin/dragonbra/javasteam/networking/steam3/UdpPacket;->getHeader()Lin/dragonbra/javasteam/generated/UdpHeader;

    move-result-object v0

    invoke-virtual {v0}, Lin/dragonbra/javasteam/generated/UdpHeader;->getSeqThis()I

    move-result v0

    iget v1, p0, Lin/dragonbra/javasteam/networking/steam3/UdpConnection;->inSeq:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    const/4 v3, 0x2

    if-ne v0, v1, :cond_d8

    .line 409
    :cond_c5
    iget v0, p0, Lin/dragonbra/javasteam/networking/steam3/UdpConnection;->inSeq:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lin/dragonbra/javasteam/networking/steam3/UdpConnection;->inSeq:I

    .line 410
    iget-object v1, p0, Lin/dragonbra/javasteam/networking/steam3/UdpConnection;->inPackets:Ljava/util/Map;

    add-int/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c5

    .line 413
    :cond_d8
    sget-object v0, Lin/dragonbra/javasteam/networking/steam3/UdpConnection$1;->$SwitchMap$in$dragonbra$javasteam$enums$EUdpPacketType:[I

    invoke-virtual {p1}, Lin/dragonbra/javasteam/networking/steam3/UdpPacket;->getHeader()Lin/dragonbra/javasteam/generated/UdpHeader;

    move-result-object v1

    invoke-virtual {v1}, Lin/dragonbra/javasteam/generated/UdpHeader;->getPacketType()Lin/dragonbra/javasteam/enums/EUdpPacketType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    if-eq v0, v2, :cond_12f

    if-eq v0, v3, :cond_12b

    const/4 v1, 0x3

    if-eq v0, v1, :cond_127

    const/4 v1, 0x4

    if-eq v0, v1, :cond_118

    const/4 p0, 0x5

    if-eq v0, p0, :cond_132

    .line 430
    sget-object p0, Lin/dragonbra/javasteam/networking/steam3/UdpConnection;->logger:Lin/dragonbra/javasteam/util/log/Logger;

    invoke-virtual {p1}, Lin/dragonbra/javasteam/networking/steam3/UdpPacket;->getHeader()Lin/dragonbra/javasteam/generated/UdpHeader;

    move-result-object p1

    invoke-virtual {p1}, Lin/dragonbra/javasteam/generated/UdpHeader;->getPacketType()Lin/dragonbra/javasteam/enums/EUdpPacketType;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received unexpected packet type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/util/log/Logger;->debug(Ljava/lang/String;)V

    goto :goto_132

    .line 424
    :cond_118
    sget-object p1, Lin/dragonbra/javasteam/networking/steam3/UdpConnection;->logger:Lin/dragonbra/javasteam/util/log/Logger;

    const-string v0, "Disconnected by server"

    invoke-virtual {p1, v0}, Lin/dragonbra/javasteam/util/log/Logger;->debug(Ljava/lang/String;)V

    .line 425
    iget-object p0, p0, Lin/dragonbra/javasteam/networking/steam3/UdpConnection;->state:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object p1, Lin/dragonbra/javasteam/networking/steam3/UdpConnection$State;->DISCONNECTED:Lin/dragonbra/javasteam/networking/steam3/UdpConnection$State;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void

    .line 421
    :cond_127
    invoke-direct {p0, p1}, Lin/dragonbra/javasteam/networking/steam3/UdpConnection;->receiveData(Lin/dragonbra/javasteam/networking/steam3/UdpPacket;)V

    goto :goto_132

    .line 418
    :cond_12b
    invoke-direct {p0, p1}, Lin/dragonbra/javasteam/networking/steam3/UdpConnection;->receiveAccept(Lin/dragonbra/javasteam/networking/steam3/UdpPacket;)V

    goto :goto_132

    .line 415
    :cond_12f
    invoke-direct {p0, p1}, Lin/dragonbra/javasteam/networking/steam3/UdpConnection;->receiveChallenge(Lin/dragonbra/javasteam/networking/steam3/UdpPacket;)V

    :cond_132
    :goto_132
    return-void
.end method

.method private sendAck()V
    .registers 3

    .line 275
    new-instance v0, Lin/dragonbra/javasteam/networking/steam3/UdpPacket;

    sget-object v1, Lin/dragonbra/javasteam/enums/EUdpPacketType;->Datagram:Lin/dragonbra/javasteam/enums/EUdpPacketType;

    invoke-direct {v0, v1}, Lin/dragonbra/javasteam/networking/steam3/UdpPacket;-><init>(Lin/dragonbra/javasteam/enums/EUdpPacketType;)V

    invoke-direct {p0, v0}, Lin/dragonbra/javasteam/networking/steam3/UdpConnection;->sendPacket(Lin/dragonbra/javasteam/networking/steam3/UdpPacket;)V

    return-void
.end method

.method private sendData(Lin/dragonbra/javasteam/util/stream/MemoryStream;)V
    .registers 11

    .line 184
    invoke-virtual {p1}, Lin/dragonbra/javasteam/util/stream/MemoryStream;->getLength()J

    move-result-wide v0

    const-wide/16 v2, 0x4dc

    div-long/2addr v0, v2

    const-wide/16 v4, 0x1

    add-long/2addr v0, v4

    long-to-int v0, v0

    new-array v1, v0, [Lin/dragonbra/javasteam/networking/steam3/UdpPacket;

    const/4 v4, 0x0

    :goto_e
    if-ge v4, v0, :cond_33

    int-to-long v5, v4

    mul-long/2addr v5, v2

    .line 188
    invoke-virtual {p1}, Lin/dragonbra/javasteam/util/stream/MemoryStream;->getLength()J

    move-result-wide v7

    sub-long/2addr v7, v5

    invoke-static {v2, v3, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    .line 190
    new-instance v7, Lin/dragonbra/javasteam/networking/steam3/UdpPacket;

    sget-object v8, Lin/dragonbra/javasteam/enums/EUdpPacketType;->Data:Lin/dragonbra/javasteam/enums/EUdpPacketType;

    invoke-direct {v7, v8, p1, v5, v6}, Lin/dragonbra/javasteam/networking/steam3/UdpPacket;-><init>(Lin/dragonbra/javasteam/enums/EUdpPacketType;Lin/dragonbra/javasteam/util/stream/MemoryStream;J)V

    aput-object v7, v1, v4

    .line 191
    invoke-virtual {v7}, Lin/dragonbra/javasteam/networking/steam3/UdpPacket;->getHeader()Lin/dragonbra/javasteam/generated/UdpHeader;

    move-result-object v5

    invoke-virtual {p1}, Lin/dragonbra/javasteam/util/stream/MemoryStream;->getLength()J

    move-result-wide v6

    long-to-int v6, v6

    invoke-virtual {v5, v6}, Lin/dragonbra/javasteam/generated/UdpHeader;->setMsgSize(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    .line 194
    :cond_33
    invoke-direct {p0, v1}, Lin/dragonbra/javasteam/networking/steam3/UdpConnection;->sendSequenced([Lin/dragonbra/javasteam/networking/steam3/UdpPacket;)V

    return-void
.end method

.method private sendPacket(Lin/dragonbra/javasteam/networking/steam3/UdpPacket;)V
    .registers 10

    .line 239
    invoke-virtual {p1}, Lin/dragonbra/javasteam/networking/steam3/UdpPacket;->getHeader()Lin/dragonbra/javasteam/generated/UdpHeader;

    move-result-object v0

    sget v1, Lin/dragonbra/javasteam/networking/steam3/UdpConnection;->SOURCE_CONN_ID:I

    invoke-virtual {v0, v1}, Lin/dragonbra/javasteam/generated/UdpHeader;->setSourceConnID(I)V

    .line 240
    invoke-virtual {p1}, Lin/dragonbra/javasteam/networking/steam3/UdpPacket;->getHeader()Lin/dragonbra/javasteam/generated/UdpHeader;

    move-result-object v0

    iget v1, p0, Lin/dragonbra/javasteam/networking/steam3/UdpConnection;->remoteConnId:I

    invoke-virtual {v0, v1}, Lin/dragonbra/javasteam/generated/UdpHeader;->setDestConnID(I)V

    .line 241
    iget v0, p0, Lin/dragonbra/javasteam/networking/steam3/UdpConnection;->inSeq:I

    iput v0, p0, Lin/dragonbra/javasteam/networking/steam3/UdpConnection;->inSeqAcked:I

    .line 242
    invoke-virtual {p1}, Lin/dragonbra/javasteam/networking/steam3/UdpPacket;->getHeader()Lin/dragonbra/javasteam/generated/UdpHeader;

    move-result-object v0

    iget v1, p0, Lin/dragonbra/javasteam/networking/steam3/UdpConnection;->inSeqAcked:I

    invoke-virtual {v0, v1}, Lin/dragonbra/javasteam/generated/UdpHeader;->setSeqAck(I)V

    .line 244
    sget-object v0, Lin/dragonbra/javasteam/networking/steam3/UdpConnection;->logger:Lin/dragonbra/javasteam/util/log/Logger;

    .line 245
    invoke-virtual {p1}, Lin/dragonbra/javasteam/networking/steam3/UdpPacket;->getHeader()Lin/dragonbra/javasteam/generated/UdpHeader;

    move-result-object v1

    invoke-virtual {v1}, Lin/dragonbra/javasteam/generated/UdpHeader;->getPacketType()Lin/dragonbra/javasteam/enums/EUdpPacketType;

    move-result-object v2

    invoke-virtual {p1}, Lin/dragonbra/javasteam/networking/steam3/UdpPacket;->getHeader()Lin/dragonbra/javasteam/generated/UdpHeader;

    move-result-object v1

    invoke-virtual {v1}, Lin/dragonbra/javasteam/generated/UdpHeader;->getSeqThis()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1}, Lin/dragonbra/javasteam/networking/steam3/UdpPacket;->getHeader()Lin/dragonbra/javasteam/generated/UdpHeader;

    move-result-object v1

    invoke-virtual {v1}, Lin/dragonbra/javasteam/generated/UdpHeader;->getSeqAck()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 246
    invoke-virtual {p1}, Lin/dragonbra/javasteam/networking/steam3/UdpPacket;->getHeader()Lin/dragonbra/javasteam/generated/UdpHeader;

    move-result-object v1

    invoke-virtual {v1}, Lin/dragonbra/javasteam/generated/UdpHeader;->getPayloadSize()S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v5

    invoke-virtual {p1}, Lin/dragonbra/javasteam/networking/steam3/UdpPacket;->getHeader()Lin/dragonbra/javasteam/generated/UdpHeader;

    move-result-object v1

    invoke-virtual {v1}, Lin/dragonbra/javasteam/generated/UdpHeader;->getMsgSize()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p1}, Lin/dragonbra/javasteam/networking/steam3/UdpPacket;->getHeader()Lin/dragonbra/javasteam/generated/UdpHeader;

    move-result-object v1

    invoke-virtual {v1}, Lin/dragonbra/javasteam/generated/UdpHeader;->getPacketsInMsg()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array/range {v2 .. v7}, [Ljava/lang/Object;

    move-result-object v1

    .line 244
    const-string v2, "Sent -> %s Seq %d Ack %d; %d bytes; Message: %d bytes %d packets"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lin/dragonbra/javasteam/util/log/Logger;->debug(Ljava/lang/String;)V

    .line 248
    invoke-virtual {p1}, Lin/dragonbra/javasteam/networking/steam3/UdpPacket;->getData()[B

    move-result-object v3

    .line 251
    :try_start_76
    iget-object v0, p0, Lin/dragonbra/javasteam/networking/steam3/UdpConnection;->sock:Ljava/net/DatagramSocket;

    new-instance v1, Ljava/net/DatagramPacket;

    array-length v5, v3

    iget-object v2, p0, Lin/dragonbra/javasteam/networking/steam3/UdpConnection;->currentEndPoint:Ljava/net/InetSocketAddress;

    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v6

    iget-object v2, p0, Lin/dragonbra/javasteam/networking/steam3/UdpConnection;->currentEndPoint:Ljava/net/InetSocketAddress;

    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v7

    const/4 v4, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Ljava/net/DatagramPacket;-><init>([BIILjava/net/InetAddress;I)V

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V
    :try_end_8f
    .catch Ljava/io/IOException; {:try_start_76 .. :try_end_8f} :catch_b3

    .line 260
    iget v0, p0, Lin/dragonbra/javasteam/networking/steam3/UdpConnection;->outSeqSent:I

    iget v1, p0, Lin/dragonbra/javasteam/networking/steam3/UdpConnection;->outSeqAcked:I

    if-ne v0, v1, :cond_9e

    .line 261
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0xbb8

    add-long/2addr v0, v2

    iput-wide v0, p0, Lin/dragonbra/javasteam/networking/steam3/UdpConnection;->nextResend:J

    .line 266
    :cond_9e
    invoke-virtual {p1}, Lin/dragonbra/javasteam/networking/steam3/UdpPacket;->getHeader()Lin/dragonbra/javasteam/generated/UdpHeader;

    move-result-object v0

    invoke-virtual {v0}, Lin/dragonbra/javasteam/generated/UdpHeader;->getSeqThis()I

    move-result v0

    if-lez v0, :cond_b2

    .line 267
    invoke-virtual {p1}, Lin/dragonbra/javasteam/networking/steam3/UdpPacket;->getHeader()Lin/dragonbra/javasteam/generated/UdpHeader;

    move-result-object p1

    invoke-virtual {p1}, Lin/dragonbra/javasteam/generated/UdpHeader;->getSeqThis()I

    move-result p1

    iput p1, p0, Lin/dragonbra/javasteam/networking/steam3/UdpConnection;->outSeqSent:I

    :cond_b2
    return-void

    :catch_b3
    move-exception p1

    .line 253
    sget-object v0, Lin/dragonbra/javasteam/networking/steam3/UdpConnection;->logger:Lin/dragonbra/javasteam/util/log/Logger;

    const-string v1, "Critical socket failure"

    invoke-virtual {v0, v1, p1}, Lin/dragonbra/javasteam/util/log/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 254
    iget-object p0, p0, Lin/dragonbra/javasteam/networking/steam3/UdpConnection;->state:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object p1, Lin/dragonbra/javasteam/networking/steam3/UdpConnection$State;->DISCONNECTING:Lin/dragonbra/javasteam/networking/steam3/UdpConnection$State;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method private sendPendingMessages()V
    .registers 6

    .line 283
    iget-object v0, p0, Lin/dragonbra/javasteam/networking/steam3/UdpConnection;->outPackets:Ljava/util/List;

    monitor-enter v0

    .line 284
    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lin/dragonbra/javasteam/networking/steam3/UdpConnection;->nextResend:J

    cmp-long v1, v1, v3

    const/4 v2, 0x3

    if-lez v1, :cond_50

    iget v1, p0, Lin/dragonbra/javasteam/networking/steam3/UdpConnection;->outSeqSent:I

    iget v3, p0, Lin/dragonbra/javasteam/networking/steam3/UdpConnection;->outSeqAcked:I

    if-le v1, v3, :cond_50

    .line 286
    iget-object v1, p0, Lin/dragonbra/javasteam/networking/steam3/UdpConnection;->state:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    sget-object v3, Lin/dragonbra/javasteam/networking/steam3/UdpConnection$State;->DISCONNECTING:Lin/dragonbra/javasteam/networking/steam3/UdpConnection$State;

    if-ne v1, v3, :cond_26

    .line 287
    iget-object v1, p0, Lin/dragonbra/javasteam/networking/steam3/UdpConnection;->outPackets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    goto :goto_26

    :catchall_24
    move-exception p0

    goto :goto_73

    .line 290
    :cond_26
    :goto_26
    sget-object v1, Lin/dragonbra/javasteam/networking/steam3/UdpConnection;->logger:Lin/dragonbra/javasteam/util/log/Logger;

    const-string v3, "Sequenced packet resend required"

    invoke-virtual {v1, v3}, Lin/dragonbra/javasteam/util/log/Logger;->debug(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_2e
    if-ge v1, v2, :cond_46

    .line 293
    iget-object v3, p0, Lin/dragonbra/javasteam/networking/steam3/UdpConnection;->outPackets:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_46

    .line 294
    iget-object v3, p0, Lin/dragonbra/javasteam/networking/steam3/UdpConnection;->outPackets:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lin/dragonbra/javasteam/networking/steam3/UdpPacket;

    invoke-direct {p0, v3}, Lin/dragonbra/javasteam/networking/steam3/UdpConnection;->sendPacket(Lin/dragonbra/javasteam/networking/steam3/UdpPacket;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2e

    .line 297
    :cond_46
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0xbb8

    add-long/2addr v1, v3

    iput-wide v1, p0, Lin/dragonbra/javasteam/networking/steam3/UdpConnection;->nextResend:J

    goto :goto_71

    .line 298
    :cond_50
    iget v1, p0, Lin/dragonbra/javasteam/networking/steam3/UdpConnection;->outSeqSent:I

    iget v3, p0, Lin/dragonbra/javasteam/networking/steam3/UdpConnection;->outSeqAcked:I

    add-int/lit8 v4, v3, 0x3

    if-ge v1, v4, :cond_71

    sub-int/2addr v1, v3

    :goto_59
    if-ge v1, v2, :cond_71

    .line 301
    iget-object v3, p0, Lin/dragonbra/javasteam/networking/steam3/UdpConnection;->outPackets:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_71

    .line 302
    iget-object v3, p0, Lin/dragonbra/javasteam/networking/steam3/UdpConnection;->outPackets:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lin/dragonbra/javasteam/networking/steam3/UdpPacket;

    invoke-direct {p0, v3}, Lin/dragonbra/javasteam/networking/steam3/UdpConnection;->sendPacket(Lin/dragonbra/javasteam/networking/steam3/UdpPacket;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_59

    .line 305
    :cond_71
    :goto_71
    monitor-exit v0

    return-void

    :goto_73
    monitor-exit v0
    :try_end_74
    .catchall {:try_start_3 .. :try_end_74} :catchall_24

    throw p0
.end method

.method private sendSequenced(Lin/dragonbra/javasteam/networking/steam3/UdpPacket;)V
    .registers 5

    .line 203
    iget-object v0, p0, Lin/dragonbra/javasteam/networking/steam3/UdpConnection;->outPackets:Ljava/util/List;

    monitor-enter v0

    .line 204
    :try_start_3
    invoke-virtual {p1}, Lin/dragonbra/javasteam/networking/steam3/UdpPacket;->getHeader()Lin/dragonbra/javasteam/generated/UdpHeader;

    move-result-object v1

    iget v2, p0, Lin/dragonbra/javasteam/networking/steam3/UdpConnection;->outSeq:I

    invoke-virtual {v1, v2}, Lin/dragonbra/javasteam/generated/UdpHeader;->setSeqThis(I)V

    .line 205
    invoke-virtual {p1}, Lin/dragonbra/javasteam/networking/steam3/UdpPacket;->getHeader()Lin/dragonbra/javasteam/generated/UdpHeader;

    move-result-object v1

    iget v2, p0, Lin/dragonbra/javasteam/networking/steam3/UdpConnection;->outSeq:I

    invoke-virtual {v1, v2}, Lin/dragonbra/javasteam/generated/UdpHeader;->setMsgStartSeq(I)V

    .line 206
    invoke-virtual {p1}, Lin/dragonbra/javasteam/networking/steam3/UdpPacket;->getHeader()Lin/dragonbra/javasteam/generated/UdpHeader;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lin/dragonbra/javasteam/generated/UdpHeader;->setPacketsInMsg(I)V

    .line 208
    iget-object v1, p0, Lin/dragonbra/javasteam/networking/steam3/UdpConnection;->outPackets:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    iget p1, p0, Lin/dragonbra/javasteam/networking/steam3/UdpConnection;->outSeq:I

    add-int/2addr p1, v2

    iput p1, p0, Lin/dragonbra/javasteam/networking/steam3/UdpConnection;->outSeq:I

    .line 211
    monitor-exit v0

    return-void

    :catchall_29
    move-exception p0

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_29

    throw p0
.end method

.method private sendSequenced([Lin/dragonbra/javasteam/networking/steam3/UdpPacket;)V
    .registers 9

    .line 220
    iget-object v0, p0, Lin/dragonbra/javasteam/networking/steam3/UdpConnection;->outPackets:Ljava/util/List;

    monitor-enter v0

    .line 221
    :try_start_3
    iget v1, p0, Lin/dragonbra/javasteam/networking/steam3/UdpConnection;->outSeq:I

    .line 223
    array-length v2, p1

    const/4 v3, 0x0

    :goto_7
    if-ge v3, v2, :cond_22

    aget-object v4, p1, v3

    .line 224
    invoke-direct {p0, v4}, Lin/dragonbra/javasteam/networking/steam3/UdpConnection;->sendSequenced(Lin/dragonbra/javasteam/networking/steam3/UdpPacket;)V

    .line 227
    invoke-virtual {v4}, Lin/dragonbra/javasteam/networking/steam3/UdpPacket;->getHeader()Lin/dragonbra/javasteam/generated/UdpHeader;

    move-result-object v5

    array-length v6, p1

    invoke-virtual {v5, v6}, Lin/dragonbra/javasteam/generated/UdpHeader;->setPacketsInMsg(I)V

    .line 228
    invoke-virtual {v4}, Lin/dragonbra/javasteam/networking/steam3/UdpPacket;->getHeader()Lin/dragonbra/javasteam/generated/UdpHeader;

    move-result-object v4

    invoke-virtual {v4, v1}, Lin/dragonbra/javasteam/generated/UdpHeader;->setMsgStartSeq(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :catchall_20
    move-exception p0

    goto :goto_24

    .line 230
    :cond_22
    monitor-exit v0

    return-void

    :goto_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_20

    throw p0
.end method


# virtual methods
.method public connect(Ljava/net/InetSocketAddress;I)V
    .registers 6

    .line 112
    iget-object p2, p0, Lin/dragonbra/javasteam/networking/steam3/UdpConnection;->outPackets:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 113
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lin/dragonbra/javasteam/networking/steam3/UdpConnection;->inPackets:Ljava/util/Map;

    const/4 p2, 0x0

    .line 115
    iput-object p2, p0, Lin/dragonbra/javasteam/networking/steam3/UdpConnection;->currentEndPoint:Ljava/net/InetSocketAddress;

    const/4 p2, 0x0

    .line 116
    iput p2, p0, Lin/dragonbra/javasteam/networking/steam3/UdpConnection;->remoteConnId:I

    const/4 v0, 0x1

    .line 118
    iput v0, p0, Lin/dragonbra/javasteam/networking/steam3/UdpConnection;->outSeq:I

    .line 119
    iput p2, p0, Lin/dragonbra/javasteam/networking/steam3/UdpConnection;->outSeqSent:I

    .line 120
    iput p2, p0, Lin/dragonbra/javasteam/networking/steam3/UdpConnection;->outSeqAcked:I

    .line 122
    iput p2, p0, Lin/dragonbra/javasteam/networking/steam3/UdpConnection;->inSeq:I

    .line 123
    iput p2, p0, Lin/dragonbra/javasteam/networking/steam3/UdpConnection;->inSeqAcked:I

    .line 124
    iput p2, p0, Lin/dragonbra/javasteam/networking/steam3/UdpConnection;->inSeqHandled:I

    .line 126
    sget-object p2, Lin/dragonbra/javasteam/networking/steam3/UdpConnection;->logger:Lin/dragonbra/javasteam/util/log/Logger;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connecting to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lin/dragonbra/javasteam/util/log/Logger;->debug(Ljava/lang/String;)V

    .line 127
    new-instance p2, Lin/dragonbra/javasteam/networking/steam3/UdpConnection$NetLoop;

    invoke-direct {p2, p0, p1}, Lin/dragonbra/javasteam/networking/steam3/UdpConnection$NetLoop;-><init>(Lin/dragonbra/javasteam/networking/steam3/UdpConnection;Ljava/net/InetSocketAddress;)V

    iput-object p2, p0, Lin/dragonbra/javasteam/networking/steam3/UdpConnection;->netLoop:Lin/dragonbra/javasteam/networking/steam3/UdpConnection$NetLoop;

    .line 128
    new-instance p1, Ljava/lang/Thread;

    iget-object p2, p0, Lin/dragonbra/javasteam/networking/steam3/UdpConnection;->netLoop:Lin/dragonbra/javasteam/networking/steam3/UdpConnection$NetLoop;

    const-string v0, "UdpConnection Thread"

    invoke-direct {p1, p2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object p1, p0, Lin/dragonbra/javasteam/networking/steam3/UdpConnection;->netThread:Ljava/lang/Thread;

    .line 129
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public disconnect(Z)V
    .registers 5

    .line 134
    iget-object v0, p0, Lin/dragonbra/javasteam/networking/steam3/UdpConnection;->netThread:Ljava/lang/Thread;

    if-nez v0, :cond_5

    return-void

    .line 139
    :cond_5
    iget-object v0, p0, Lin/dragonbra/javasteam/networking/steam3/UdpConnection;->state:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lin/dragonbra/javasteam/networking/steam3/UdpConnection$State;->DISCONNECTED:Lin/dragonbra/javasteam/networking/steam3/UdpConnection$State;

    if-eq v0, v1, :cond_1e

    iget-object v0, p0, Lin/dragonbra/javasteam/networking/steam3/UdpConnection;->state:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lin/dragonbra/javasteam/networking/steam3/UdpConnection$State;->DISCONNECTING:Lin/dragonbra/javasteam/networking/steam3/UdpConnection$State;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_1e

    .line 140
    iget-object v0, p0, Lin/dragonbra/javasteam/networking/steam3/UdpConnection;->state:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 144
    :cond_1e
    iget-object v0, p0, Lin/dragonbra/javasteam/networking/steam3/UdpConnection;->state:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lin/dragonbra/javasteam/networking/steam3/UdpConnection$State;->DISCONNECTING:Lin/dragonbra/javasteam/networking/steam3/UdpConnection$State;

    if-ne v0, v1, :cond_32

    .line 147
    new-instance v0, Lin/dragonbra/javasteam/networking/steam3/UdpPacket;

    sget-object v1, Lin/dragonbra/javasteam/enums/EUdpPacketType;->Disconnect:Lin/dragonbra/javasteam/enums/EUdpPacketType;

    invoke-direct {v0, v1}, Lin/dragonbra/javasteam/networking/steam3/UdpPacket;-><init>(Lin/dragonbra/javasteam/enums/EUdpPacketType;)V

    invoke-direct {p0, v0}, Lin/dragonbra/javasteam/networking/steam3/UdpConnection;->sendSequenced(Lin/dragonbra/javasteam/networking/steam3/UdpPacket;)V

    .line 151
    :cond_32
    sget v0, Lin/dragonbra/javasteam/networking/steam3/UdpConnection;->SOURCE_CONN_ID:I

    add-int/lit16 v0, v0, 0x100

    sput v0, Lin/dragonbra/javasteam/networking/steam3/UdpConnection;->SOURCE_CONN_ID:I

    .line 153
    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/networking/steam3/Connection;->onDisconnected(Z)V

    return-void
.end method

.method public getCurrentEndPoint()Ljava/net/InetSocketAddress;
    .registers 1

    .line 170
    iget-object p0, p0, Lin/dragonbra/javasteam/networking/steam3/UdpConnection;->currentEndPoint:Ljava/net/InetSocketAddress;

    return-object p0
.end method

.method public getLocalIP()Ljava/net/InetAddress;
    .registers 1

    .line 165
    iget-object p0, p0, Lin/dragonbra/javasteam/networking/steam3/UdpConnection;->sock:Ljava/net/DatagramSocket;

    invoke-static {p0}, Lin/dragonbra/javasteam/util/NetHelpers;->getLocalIP(Ljava/net/DatagramSocket;)Ljava/net/InetAddress;

    move-result-object p0

    return-object p0
.end method

.method public getProtocolTypes()Lin/dragonbra/javasteam/networking/steam3/ProtocolTypes;
    .registers 1

    .line 175
    sget-object p0, Lin/dragonbra/javasteam/networking/steam3/ProtocolTypes;->UDP:Lin/dragonbra/javasteam/networking/steam3/ProtocolTypes;

    return-object p0
.end method

.method public send([B)V
    .registers 4

    .line 158
    iget-object v0, p0, Lin/dragonbra/javasteam/networking/steam3/UdpConnection;->state:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lin/dragonbra/javasteam/networking/steam3/UdpConnection$State;->CONNECTED:Lin/dragonbra/javasteam/networking/steam3/UdpConnection$State;

    if-ne v0, v1, :cond_12

    .line 159
    new-instance v0, Lin/dragonbra/javasteam/util/stream/MemoryStream;

    invoke-direct {v0, p1}, Lin/dragonbra/javasteam/util/stream/MemoryStream;-><init>([B)V

    invoke-direct {p0, v0}, Lin/dragonbra/javasteam/networking/steam3/UdpConnection;->sendData(Lin/dragonbra/javasteam/util/stream/MemoryStream;)V

    :cond_12
    return-void
.end method

###### Class in.dragonbra.javasteam.networking.steam3.UdpConnection.AnonymousClass1 (in.dragonbra.javasteam.networking.steam3.UdpConnection$1)
.class synthetic Lin/dragonbra/javasteam/networking/steam3/UdpConnection$1;
.super Ljava/lang/Object;
.source "UdpConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lin/dragonbra/javasteam/networking/steam3/UdpConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$in$dragonbra$javasteam$enums$EUdpPacketType:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 413
    invoke-static {}, Lin/dragonbra/javasteam/enums/EUdpPacketType;->values()[Lin/dragonbra/javasteam/enums/EUdpPacketType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lin/dragonbra/javasteam/networking/steam3/UdpConnection$1;->$SwitchMap$in$dragonbra$javasteam$enums$EUdpPacketType:[I

    :try_start_9
    sget-object v1, Lin/dragonbra/javasteam/enums/EUdpPacketType;->Challenge:Lin/dragonbra/javasteam/enums/EUdpPacketType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lin/dragonbra/javasteam/networking/steam3/UdpConnection$1;->$SwitchMap$in$dragonbra$javasteam$enums$EUdpPacketType:[I

    sget-object v1, Lin/dragonbra/javasteam/enums/EUdpPacketType;->Accept:Lin/dragonbra/javasteam/enums/EUdpPacketType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Lin/dragonbra/javasteam/networking/steam3/UdpConnection$1;->$SwitchMap$in$dragonbra$javasteam$enums$EUdpPacketType:[I

    sget-object v1, Lin/dragonbra/javasteam/enums/EUdpPacketType;->Data:Lin/dragonbra/javasteam/enums/EUdpPacketType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    :try_start_28
    sget-object v0, Lin/dragonbra/javasteam/networking/steam3/UdpConnection$1;->$SwitchMap$in$dragonbra$javasteam$enums$EUdpPacketType:[I

    sget-object v1, Lin/dragonbra/javasteam/enums/EUdpPacketType;->Disconnect:Lin/dragonbra/javasteam/enums/EUdpPacketType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_33

    :catch_33
    :try_start_33
    sget-object v0, Lin/dragonbra/javasteam/networking/steam3/UdpConnection$1;->$SwitchMap$in$dragonbra$javasteam$enums$EUdpPacketType:[I

    sget-object v1, Lin/dragonbra/javasteam/enums/EUdpPacketType;->Datagram:Lin/dragonbra/javasteam/enums/EUdpPacketType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3e} :catch_3e

    :catch_3e
    return-void
.end method

###### Class in.dragonbra.javasteam.networking.steam3.UdpConnection.NetLoop (in.dragonbra.javasteam.networking.steam3.UdpConnection$NetLoop)
.class Lin/dragonbra/javasteam/networking/steam3/UdpConnection$NetLoop;
.super Ljava/lang/Object;
.source "UdpConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lin/dragonbra/javasteam/networking/steam3/UdpConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NetLoop"
.end annotation


# instance fields
.field final synthetic this$0:Lin/dragonbra/javasteam/networking/steam3/UdpConnection;


# direct methods
.method public constructor <init>(Lin/dragonbra/javasteam/networking/steam3/UdpConnection;Ljava/net/InetSocketAddress;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 498
    iput-object p1, p0, Lin/dragonbra/javasteam/networking/steam3/UdpConnection$NetLoop;->this$0:Lin/dragonbra/javasteam/networking/steam3/UdpConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 499
    invoke-static {p1, p2}, Lin/dragonbra/javasteam/networking/steam3/UdpConnection;->-$$Nest$fputcurrentEndPoint(Lin/dragonbra/javasteam/networking/steam3/UdpConnection;Ljava/net/InetSocketAddress;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 13

    const/16 v0, 0x800

    .line 507
    new-array v1, v0, [B

    .line 508
    new-instance v2, Ljava/net/DatagramPacket;

    invoke-direct {v2, v1, v0}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 512
    :try_start_9
    iget-object v0, p0, Lin/dragonbra/javasteam/networking/steam3/UdpConnection$NetLoop;->this$0:Lin/dragonbra/javasteam/networking/steam3/UdpConnection;

    invoke-static {v0}, Lin/dragonbra/javasteam/networking/steam3/UdpConnection;->-$$Nest$fgetsock(Lin/dragonbra/javasteam/networking/steam3/UdpConnection;)Ljava/net/DatagramSocket;

    move-result-object v0

    const/16 v1, 0x96

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->setSoTimeout(I)V
    :try_end_14
    .catch Ljava/net/SocketException; {:try_start_9 .. :try_end_14} :catch_15

    goto :goto_1d

    :catch_15
    move-exception v0

    .line 514
    invoke-static {}, Lin/dragonbra/javasteam/networking/steam3/UdpConnection;->-$$Nest$sfgetlogger()Lin/dragonbra/javasteam/util/log/Logger;

    move-result-object v1

    invoke-virtual {v1, v0}, Lin/dragonbra/javasteam/util/log/Logger;->debug(Ljava/lang/Throwable;)V

    .line 517
    :goto_1d
    iget-object v0, p0, Lin/dragonbra/javasteam/networking/steam3/UdpConnection$NetLoop;->this$0:Lin/dragonbra/javasteam/networking/steam3/UdpConnection;

    invoke-static {v0}, Lin/dragonbra/javasteam/networking/steam3/UdpConnection;->-$$Nest$fgetcurrentEndPoint(Lin/dragonbra/javasteam/networking/steam3/UdpConnection;)Ljava/net/InetSocketAddress;

    move-result-object v0

    const-wide/32 v3, 0xea60

    const/4 v1, 0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_6a

    .line 518
    iget-object v0, p0, Lin/dragonbra/javasteam/networking/steam3/UdpConnection$NetLoop;->this$0:Lin/dragonbra/javasteam/networking/steam3/UdpConnection;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    add-long/2addr v6, v3

    invoke-static {v0, v6, v7}, Lin/dragonbra/javasteam/networking/steam3/UdpConnection;->-$$Nest$fputtimeout(Lin/dragonbra/javasteam/networking/steam3/UdpConnection;J)V

    .line 519
    iget-object v0, p0, Lin/dragonbra/javasteam/networking/steam3/UdpConnection$NetLoop;->this$0:Lin/dragonbra/javasteam/networking/steam3/UdpConnection;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0xbb8

    add-long/2addr v6, v8

    invoke-static {v0, v6, v7}, Lin/dragonbra/javasteam/networking/steam3/UdpConnection;->-$$Nest$fputnextResend(Lin/dragonbra/javasteam/networking/steam3/UdpConnection;J)V

    .line 521
    iget-object v0, p0, Lin/dragonbra/javasteam/networking/steam3/UdpConnection$NetLoop;->this$0:Lin/dragonbra/javasteam/networking/steam3/UdpConnection;

    invoke-static {v0}, Lin/dragonbra/javasteam/networking/steam3/UdpConnection;->-$$Nest$fgetstate(Lin/dragonbra/javasteam/networking/steam3/UdpConnection;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    sget-object v6, Lin/dragonbra/javasteam/networking/steam3/UdpConnection$State;->DISCONNECTED:Lin/dragonbra/javasteam/networking/steam3/UdpConnection$State;

    sget-object v7, Lin/dragonbra/javasteam/networking/steam3/UdpConnection$State;->CHALLENGE_REQ_SENT:Lin/dragonbra/javasteam/networking/steam3/UdpConnection$State;

    invoke-static {v0, v6, v7}, Lin/dragonbra/javasteam/networking/steam3/UdpConnection$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5e

    .line 522
    iget-object v0, p0, Lin/dragonbra/javasteam/networking/steam3/UdpConnection$NetLoop;->this$0:Lin/dragonbra/javasteam/networking/steam3/UdpConnection;

    invoke-static {v0}, Lin/dragonbra/javasteam/networking/steam3/UdpConnection;->-$$Nest$fgetstate(Lin/dragonbra/javasteam/networking/steam3/UdpConnection;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    sget-object v6, Lin/dragonbra/javasteam/networking/steam3/UdpConnection$State;->DISCONNECTING:Lin/dragonbra/javasteam/networking/steam3/UdpConnection$State;

    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    move v0, v1

    move v6, v5

    goto :goto_6c

    .line 526
    :cond_5e
    iget-object v0, p0, Lin/dragonbra/javasteam/networking/steam3/UdpConnection$NetLoop;->this$0:Lin/dragonbra/javasteam/networking/steam3/UdpConnection;

    new-instance v6, Lin/dragonbra/javasteam/networking/steam3/UdpPacket;

    sget-object v7, Lin/dragonbra/javasteam/enums/EUdpPacketType;->ChallengeReq:Lin/dragonbra/javasteam/enums/EUdpPacketType;

    invoke-direct {v6, v7}, Lin/dragonbra/javasteam/networking/steam3/UdpPacket;-><init>(Lin/dragonbra/javasteam/enums/EUdpPacketType;)V

    invoke-static {v0, v6}, Lin/dragonbra/javasteam/networking/steam3/UdpConnection;->-$$Nest$msendPacket(Lin/dragonbra/javasteam/networking/steam3/UdpConnection;Lin/dragonbra/javasteam/networking/steam3/UdpPacket;)V

    :cond_6a
    move v0, v5

    move v6, v0

    .line 530
    :cond_6c
    :goto_6c
    iget-object v7, p0, Lin/dragonbra/javasteam/networking/steam3/UdpConnection$NetLoop;->this$0:Lin/dragonbra/javasteam/networking/steam3/UdpConnection;

    invoke-static {v7}, Lin/dragonbra/javasteam/networking/steam3/UdpConnection;->-$$Nest$fgetstate(Lin/dragonbra/javasteam/networking/steam3/UdpConnection;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v7

    sget-object v8, Lin/dragonbra/javasteam/networking/steam3/UdpConnection$State;->DISCONNECTED:Lin/dragonbra/javasteam/networking/steam3/UdpConnection$State;

    if-eq v7, v8, :cond_170

    .line 533
    :try_start_7a
    iget-object v7, p0, Lin/dragonbra/javasteam/networking/steam3/UdpConnection$NetLoop;->this$0:Lin/dragonbra/javasteam/networking/steam3/UdpConnection;

    invoke-static {v7}, Lin/dragonbra/javasteam/networking/steam3/UdpConnection;->-$$Nest$fgetsock(Lin/dragonbra/javasteam/networking/steam3/UdpConnection;)Ljava/net/DatagramSocket;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V
    :try_end_83
    .catch Ljava/net/SocketTimeoutException; {:try_start_7a .. :try_end_83} :catch_88
    .catch Ljava/io/IOException; {:try_start_7a .. :try_end_83} :catch_85

    move v6, v1

    goto :goto_ad

    :catch_85
    move-exception v1

    goto/16 :goto_15c

    :catch_88
    move-exception v7

    .line 536
    :try_start_89
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-object v10, p0, Lin/dragonbra/javasteam/networking/steam3/UdpConnection$NetLoop;->this$0:Lin/dragonbra/javasteam/networking/steam3/UdpConnection;

    invoke-static {v10}, Lin/dragonbra/javasteam/networking/steam3/UdpConnection;->-$$Nest$fgettimeout(Lin/dragonbra/javasteam/networking/steam3/UdpConnection;)J

    move-result-wide v10

    cmp-long v8, v8, v10

    if-lez v8, :cond_ad

    .line 537
    invoke-static {}, Lin/dragonbra/javasteam/networking/steam3/UdpConnection;->-$$Nest$sfgetlogger()Lin/dragonbra/javasteam/util/log/Logger;

    move-result-object v1

    const-string v2, "Connection timed out"

    invoke-virtual {v1, v2, v7}, Lin/dragonbra/javasteam/util/log/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 538
    iget-object v1, p0, Lin/dragonbra/javasteam/networking/steam3/UdpConnection$NetLoop;->this$0:Lin/dragonbra/javasteam/networking/steam3/UdpConnection;

    invoke-static {v1}, Lin/dragonbra/javasteam/networking/steam3/UdpConnection;->-$$Nest$fgetstate(Lin/dragonbra/javasteam/networking/steam3/UdpConnection;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v1

    sget-object v2, Lin/dragonbra/javasteam/networking/steam3/UdpConnection$State;->DISCONNECTED:Lin/dragonbra/javasteam/networking/steam3/UdpConnection$State;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    goto/16 :goto_170

    .line 547
    :cond_ad
    :goto_ad
    iget-object v7, p0, Lin/dragonbra/javasteam/networking/steam3/UdpConnection$NetLoop;->this$0:Lin/dragonbra/javasteam/networking/steam3/UdpConnection;

    invoke-static {v7}, Lin/dragonbra/javasteam/networking/steam3/UdpConnection;->-$$Nest$fgetsock(Lin/dragonbra/javasteam/networking/steam3/UdpConnection;)Ljava/net/DatagramSocket;

    move-result-object v7

    const/16 v8, 0xa

    invoke-virtual {v7, v8}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    :goto_b8
    if-eqz v6, :cond_109

    .line 551
    invoke-virtual {v2}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v7

    iget-object v8, p0, Lin/dragonbra/javasteam/networking/steam3/UdpConnection$NetLoop;->this$0:Lin/dragonbra/javasteam/networking/steam3/UdpConnection;

    invoke-static {v8}, Lin/dragonbra/javasteam/networking/steam3/UdpConnection;->-$$Nest$fgetcurrentEndPoint(Lin/dragonbra/javasteam/networking/steam3/UdpConnection;)Ljava/net/InetSocketAddress;

    move-result-object v8

    invoke-virtual {v8}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_df

    invoke-virtual {v2}, Ljava/net/DatagramPacket;->getPort()I

    move-result v7

    iget-object v8, p0, Lin/dragonbra/javasteam/networking/steam3/UdpConnection$NetLoop;->this$0:Lin/dragonbra/javasteam/networking/steam3/UdpConnection;

    invoke-static {v8}, Lin/dragonbra/javasteam/networking/steam3/UdpConnection;->-$$Nest$fgetcurrentEndPoint(Lin/dragonbra/javasteam/networking/steam3/UdpConnection;)Ljava/net/InetSocketAddress;

    move-result-object v8

    invoke-virtual {v8}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v8

    if-eq v7, v8, :cond_df

    goto :goto_b8

    .line 555
    :cond_df
    iget-object v6, p0, Lin/dragonbra/javasteam/networking/steam3/UdpConnection$NetLoop;->this$0:Lin/dragonbra/javasteam/networking/steam3/UdpConnection;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    add-long/2addr v7, v3

    invoke-static {v6, v7, v8}, Lin/dragonbra/javasteam/networking/steam3/UdpConnection;->-$$Nest$fputtimeout(Lin/dragonbra/javasteam/networking/steam3/UdpConnection;J)V

    .line 557
    new-instance v6, Lin/dragonbra/javasteam/util/stream/MemoryStream;

    invoke-virtual {v2}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v7

    invoke-direct {v6, v7}, Lin/dragonbra/javasteam/util/stream/MemoryStream;-><init>([B)V

    .line 558
    new-instance v7, Lin/dragonbra/javasteam/networking/steam3/UdpPacket;

    invoke-direct {v7, v6}, Lin/dragonbra/javasteam/networking/steam3/UdpPacket;-><init>(Lin/dragonbra/javasteam/util/stream/MemoryStream;)V

    .line 560
    iget-object v6, p0, Lin/dragonbra/javasteam/networking/steam3/UdpConnection$NetLoop;->this$0:Lin/dragonbra/javasteam/networking/steam3/UdpConnection;

    invoke-static {v6, v7}, Lin/dragonbra/javasteam/networking/steam3/UdpConnection;->-$$Nest$mreceivePacket(Lin/dragonbra/javasteam/networking/steam3/UdpConnection;Lin/dragonbra/javasteam/networking/steam3/UdpPacket;)V
    :try_end_fc
    .catch Ljava/io/IOException; {:try_start_89 .. :try_end_fc} :catch_85

    .line 562
    :try_start_fc
    iget-object v6, p0, Lin/dragonbra/javasteam/networking/steam3/UdpConnection$NetLoop;->this$0:Lin/dragonbra/javasteam/networking/steam3/UdpConnection;

    invoke-static {v6}, Lin/dragonbra/javasteam/networking/steam3/UdpConnection;->-$$Nest$fgetsock(Lin/dragonbra/javasteam/networking/steam3/UdpConnection;)Ljava/net/DatagramSocket;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V
    :try_end_105
    .catch Ljava/net/SocketTimeoutException; {:try_start_fc .. :try_end_105} :catch_107
    .catch Ljava/io/IOException; {:try_start_fc .. :try_end_105} :catch_85

    move v6, v1

    goto :goto_b8

    :catch_107
    move v6, v5

    goto :goto_b8

    .line 577
    :cond_109
    iget-object v7, p0, Lin/dragonbra/javasteam/networking/steam3/UdpConnection$NetLoop;->this$0:Lin/dragonbra/javasteam/networking/steam3/UdpConnection;

    invoke-static {v7}, Lin/dragonbra/javasteam/networking/steam3/UdpConnection;->-$$Nest$fgetstate(Lin/dragonbra/javasteam/networking/steam3/UdpConnection;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v7

    sget-object v8, Lin/dragonbra/javasteam/networking/steam3/UdpConnection$State;->DISCONNECTED:Lin/dragonbra/javasteam/networking/steam3/UdpConnection$State;

    if-eq v7, v8, :cond_11c

    .line 578
    iget-object v7, p0, Lin/dragonbra/javasteam/networking/steam3/UdpConnection$NetLoop;->this$0:Lin/dragonbra/javasteam/networking/steam3/UdpConnection;

    invoke-static {v7}, Lin/dragonbra/javasteam/networking/steam3/UdpConnection;->-$$Nest$msendPendingMessages(Lin/dragonbra/javasteam/networking/steam3/UdpConnection;)V

    .line 583
    :cond_11c
    iget-object v7, p0, Lin/dragonbra/javasteam/networking/steam3/UdpConnection$NetLoop;->this$0:Lin/dragonbra/javasteam/networking/steam3/UdpConnection;

    invoke-static {v7}, Lin/dragonbra/javasteam/networking/steam3/UdpConnection;->-$$Nest$fgetinSeq(Lin/dragonbra/javasteam/networking/steam3/UdpConnection;)I

    move-result v7

    iget-object v9, p0, Lin/dragonbra/javasteam/networking/steam3/UdpConnection$NetLoop;->this$0:Lin/dragonbra/javasteam/networking/steam3/UdpConnection;

    invoke-static {v9}, Lin/dragonbra/javasteam/networking/steam3/UdpConnection;->-$$Nest$fgetinSeqAcked(Lin/dragonbra/javasteam/networking/steam3/UdpConnection;)I

    move-result v9

    if-eq v7, v9, :cond_12f

    .line 584
    iget-object v7, p0, Lin/dragonbra/javasteam/networking/steam3/UdpConnection$NetLoop;->this$0:Lin/dragonbra/javasteam/networking/steam3/UdpConnection;

    invoke-static {v7}, Lin/dragonbra/javasteam/networking/steam3/UdpConnection;->-$$Nest$msendAck(Lin/dragonbra/javasteam/networking/steam3/UdpConnection;)V

    .line 589
    :cond_12f
    iget-object v7, p0, Lin/dragonbra/javasteam/networking/steam3/UdpConnection$NetLoop;->this$0:Lin/dragonbra/javasteam/networking/steam3/UdpConnection;

    invoke-static {v7}, Lin/dragonbra/javasteam/networking/steam3/UdpConnection;->-$$Nest$fgetstate(Lin/dragonbra/javasteam/networking/steam3/UdpConnection;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v7

    sget-object v9, Lin/dragonbra/javasteam/networking/steam3/UdpConnection$State;->DISCONNECTING:Lin/dragonbra/javasteam/networking/steam3/UdpConnection$State;

    if-ne v7, v9, :cond_6c

    iget-object v7, p0, Lin/dragonbra/javasteam/networking/steam3/UdpConnection$NetLoop;->this$0:Lin/dragonbra/javasteam/networking/steam3/UdpConnection;

    invoke-static {v7}, Lin/dragonbra/javasteam/networking/steam3/UdpConnection;->-$$Nest$fgetoutPackets(Lin/dragonbra/javasteam/networking/steam3/UdpConnection;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_6c

    .line 590
    invoke-static {}, Lin/dragonbra/javasteam/networking/steam3/UdpConnection;->-$$Nest$sfgetlogger()Lin/dragonbra/javasteam/util/log/Logger;

    move-result-object v0

    const-string v2, "Graceful disconnect completed"

    invoke-virtual {v0, v2}, Lin/dragonbra/javasteam/util/log/Logger;->debug(Ljava/lang/String;)V

    .line 591
    iget-object v0, p0, Lin/dragonbra/javasteam/networking/steam3/UdpConnection$NetLoop;->this$0:Lin/dragonbra/javasteam/networking/steam3/UdpConnection;

    invoke-static {v0}, Lin/dragonbra/javasteam/networking/steam3/UdpConnection;->-$$Nest$fgetstate(Lin/dragonbra/javasteam/networking/steam3/UdpConnection;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    goto :goto_171

    .line 570
    :goto_15c
    invoke-static {}, Lin/dragonbra/javasteam/networking/steam3/UdpConnection;->-$$Nest$sfgetlogger()Lin/dragonbra/javasteam/util/log/Logger;

    move-result-object v2

    const-string v3, "Exception while reading packer"

    invoke-virtual {v2, v3, v1}, Lin/dragonbra/javasteam/util/log/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 571
    iget-object v1, p0, Lin/dragonbra/javasteam/networking/steam3/UdpConnection$NetLoop;->this$0:Lin/dragonbra/javasteam/networking/steam3/UdpConnection;

    invoke-static {v1}, Lin/dragonbra/javasteam/networking/steam3/UdpConnection;->-$$Nest$fgetstate(Lin/dragonbra/javasteam/networking/steam3/UdpConnection;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v1

    sget-object v2, Lin/dragonbra/javasteam/networking/steam3/UdpConnection$State;->DISCONNECTED:Lin/dragonbra/javasteam/networking/steam3/UdpConnection$State;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :cond_170
    :goto_170
    move v1, v0

    .line 597
    :goto_171
    iget-object v0, p0, Lin/dragonbra/javasteam/networking/steam3/UdpConnection$NetLoop;->this$0:Lin/dragonbra/javasteam/networking/steam3/UdpConnection;

    invoke-static {v0}, Lin/dragonbra/javasteam/networking/steam3/UdpConnection;->-$$Nest$fgetsock(Lin/dragonbra/javasteam/networking/steam3/UdpConnection;)Ljava/net/DatagramSocket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    .line 599
    invoke-static {}, Lin/dragonbra/javasteam/networking/steam3/UdpConnection;->-$$Nest$sfgetlogger()Lin/dragonbra/javasteam/util/log/Logger;

    move-result-object v0

    const-string v2, "Calling onDisconnected"

    invoke-virtual {v0, v2}, Lin/dragonbra/javasteam/util/log/Logger;->debug(Ljava/lang/String;)V

    .line 600
    iget-object p0, p0, Lin/dragonbra/javasteam/networking/steam3/UdpConnection$NetLoop;->this$0:Lin/dragonbra/javasteam/networking/steam3/UdpConnection;

    invoke-virtual {p0, v1}, Lin/dragonbra/javasteam/networking/steam3/Connection;->onDisconnected(Z)V

    return-void
.end method

###### Class in.dragonbra.javasteam.networking.steam3.UdpConnection.State (in.dragonbra.javasteam.networking.steam3.UdpConnection$State)
.class final enum Lin/dragonbra/javasteam/networking/steam3/UdpConnection$State;
.super Ljava/lang/Enum;
.source "UdpConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lin/dragonbra/javasteam/networking/steam3/UdpConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lin/dragonbra/javasteam/networking/steam3/UdpConnection$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lin/dragonbra/javasteam/networking/steam3/UdpConnection$State;

.field public static final enum CHALLENGE_REQ_SENT:Lin/dragonbra/javasteam/networking/steam3/UdpConnection$State;

.field public static final enum CONNECTED:Lin/dragonbra/javasteam/networking/steam3/UdpConnection$State;

.field public static final enum CONNECT_SENT:Lin/dragonbra/javasteam/networking/steam3/UdpConnection$State;

.field public static final enum DISCONNECTED:Lin/dragonbra/javasteam/networking/steam3/UdpConnection$State;

.field public static final enum DISCONNECTING:Lin/dragonbra/javasteam/networking/steam3/UdpConnection$State;


# direct methods
.method private static synthetic $values()[Lin/dragonbra/javasteam/networking/steam3/UdpConnection$State;
    .registers 5

    .line 604
    sget-object v0, Lin/dragonbra/javasteam/networking/steam3/UdpConnection$State;->DISCONNECTED:Lin/dragonbra/javasteam/networking/steam3/UdpConnection$State;

    sget-object v1, Lin/dragonbra/javasteam/networking/steam3/UdpConnection$State;->CHALLENGE_REQ_SENT:Lin/dragonbra/javasteam/networking/steam3/UdpConnection$State;

    sget-object v2, Lin/dragonbra/javasteam/networking/steam3/UdpConnection$State;->CONNECT_SENT:Lin/dragonbra/javasteam/networking/steam3/UdpConnection$State;

    sget-object v3, Lin/dragonbra/javasteam/networking/steam3/UdpConnection$State;->CONNECTED:Lin/dragonbra/javasteam/networking/steam3/UdpConnection$State;

    sget-object v4, Lin/dragonbra/javasteam/networking/steam3/UdpConnection$State;->DISCONNECTING:Lin/dragonbra/javasteam/networking/steam3/UdpConnection$State;

    filled-new-array {v0, v1, v2, v3, v4}, [Lin/dragonbra/javasteam/networking/steam3/UdpConnection$State;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 605
    new-instance v0, Lin/dragonbra/javasteam/networking/steam3/UdpConnection$State;

    const-string v1, "DISCONNECTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lin/dragonbra/javasteam/networking/steam3/UdpConnection$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lin/dragonbra/javasteam/networking/steam3/UdpConnection$State;->DISCONNECTED:Lin/dragonbra/javasteam/networking/steam3/UdpConnection$State;

    .line 606
    new-instance v0, Lin/dragonbra/javasteam/networking/steam3/UdpConnection$State;

    const-string v1, "CHALLENGE_REQ_SENT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lin/dragonbra/javasteam/networking/steam3/UdpConnection$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lin/dragonbra/javasteam/networking/steam3/UdpConnection$State;->CHALLENGE_REQ_SENT:Lin/dragonbra/javasteam/networking/steam3/UdpConnection$State;

    .line 607
    new-instance v0, Lin/dragonbra/javasteam/networking/steam3/UdpConnection$State;

    const-string v1, "CONNECT_SENT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lin/dragonbra/javasteam/networking/steam3/UdpConnection$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lin/dragonbra/javasteam/networking/steam3/UdpConnection$State;->CONNECT_SENT:Lin/dragonbra/javasteam/networking/steam3/UdpConnection$State;

    .line 608
    new-instance v0, Lin/dragonbra/javasteam/networking/steam3/UdpConnection$State;

    const-string v1, "CONNECTED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lin/dragonbra/javasteam/networking/steam3/UdpConnection$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lin/dragonbra/javasteam/networking/steam3/UdpConnection$State;->CONNECTED:Lin/dragonbra/javasteam/networking/steam3/UdpConnection$State;

    .line 609
    new-instance v0, Lin/dragonbra/javasteam/networking/steam3/UdpConnection$State;

    const-string v1, "DISCONNECTING"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lin/dragonbra/javasteam/networking/steam3/UdpConnection$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lin/dragonbra/javasteam/networking/steam3/UdpConnection$State;->DISCONNECTING:Lin/dragonbra/javasteam/networking/steam3/UdpConnection$State;

    .line 604
    invoke-static {}, Lin/dragonbra/javasteam/networking/steam3/UdpConnection$State;->$values()[Lin/dragonbra/javasteam/networking/steam3/UdpConnection$State;

    move-result-object v0

    sput-object v0, Lin/dragonbra/javasteam/networking/steam3/UdpConnection$State;->$VALUES:[Lin/dragonbra/javasteam/networking/steam3/UdpConnection$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 604
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lin/dragonbra/javasteam/networking/steam3/UdpConnection$State;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 604
    const-class v0, Lin/dragonbra/javasteam/networking/steam3/UdpConnection$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lin/dragonbra/javasteam/networking/steam3/UdpConnection$State;

    return-object p0
.end method

.method public static values()[Lin/dragonbra/javasteam/networking/steam3/UdpConnection$State;
    .registers 1

    .line 604
    sget-object v0, Lin/dragonbra/javasteam/networking/steam3/UdpConnection$State;->$VALUES:[Lin/dragonbra/javasteam/networking/steam3/UdpConnection$State;

    invoke-virtual {v0}, [Lin/dragonbra/javasteam/networking/steam3/UdpConnection$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lin/dragonbra/javasteam/networking/steam3/UdpConnection$State;

    return-object v0
.end method

###### Class in.dragonbra.javasteam.networking.steam3.UdpConnection$$ExternalSyntheticLambda1 (in.dragonbra.javasteam.networking.steam3.UdpConnection$$ExternalSyntheticLambda1)
.class public final synthetic Lin/dragonbra/javasteam/networking/steam3/UdpConnection$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lin/dragonbra/javasteam/networking/steam3/UdpConnection;


# direct methods
.method public synthetic constructor <init>(Lin/dragonbra/javasteam/networking/steam3/UdpConnection;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lin/dragonbra/javasteam/networking/steam3/UdpConnection$$ExternalSyntheticLambda1;->f$0:Lin/dragonbra/javasteam/networking/steam3/UdpConnection;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 2

    .line 0
    iget-object p0, p0, Lin/dragonbra/javasteam/networking/steam3/UdpConnection$$ExternalSyntheticLambda1;->f$0:Lin/dragonbra/javasteam/networking/steam3/UdpConnection;

    check-cast p1, Lin/dragonbra/javasteam/networking/steam3/UdpPacket;

    invoke-static {p0, p1}, Lin/dragonbra/javasteam/networking/steam3/UdpConnection;->$r8$lambda$YiSVQjldVsS7Ipife5cYIDZeaGw(Lin/dragonbra/javasteam/networking/steam3/UdpConnection;Lin/dragonbra/javasteam/networking/steam3/UdpPacket;)Z

    move-result p0

    return p0
.end method
