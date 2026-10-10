###### Class in.dragonbra.javasteam.networking.steam3.TcpConnection (in.dragonbra.javasteam.networking.steam3.TcpConnection)
.class public Lin/dragonbra/javasteam/networking/steam3/TcpConnection;
.super Lin/dragonbra/javasteam/networking/steam3/Connection;
.source "TcpConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lin/dragonbra/javasteam/networking/steam3/TcpConnection$NetLoop;
    }
.end annotation


# static fields
.field private static final MAGIC:I = 0x31305456

.field private static final logger:Lin/dragonbra/javasteam/util/log/Logger;


# instance fields
.field private currentEndPoint:Ljava/net/InetSocketAddress;

.field private final netLock:Ljava/lang/Object;

.field private netLoop:Lin/dragonbra/javasteam/networking/steam3/TcpConnection$NetLoop;

.field private netReader:Lin/dragonbra/javasteam/util/stream/BinaryReader;

.field private netThread:Ljava/lang/Thread;

.field private netWriter:Lin/dragonbra/javasteam/util/stream/BinaryWriter;

.field private socket:Ljava/net/Socket;


# direct methods
.method public static bridge synthetic -$$Nest$fgetcurrentEndPoint(Lin/dragonbra/javasteam/networking/steam3/TcpConnection;)Ljava/net/InetSocketAddress;
    .registers 1

    .line 0
    iget-object p0, p0, Lin/dragonbra/javasteam/networking/steam3/TcpConnection;->currentEndPoint:Ljava/net/InetSocketAddress;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetnetReader(Lin/dragonbra/javasteam/networking/steam3/TcpConnection;)Lin/dragonbra/javasteam/util/stream/BinaryReader;
    .registers 1

    .line 0
    iget-object p0, p0, Lin/dragonbra/javasteam/networking/steam3/TcpConnection;->netReader:Lin/dragonbra/javasteam/util/stream/BinaryReader;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mreadPacket(Lin/dragonbra/javasteam/networking/steam3/TcpConnection;)[B
    .registers 1

    .line 0
    invoke-direct {p0}, Lin/dragonbra/javasteam/networking/steam3/TcpConnection;->readPacket()[B

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mrelease(Lin/dragonbra/javasteam/networking/steam3/TcpConnection;Z)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lin/dragonbra/javasteam/networking/steam3/TcpConnection;->release(Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mshutdown(Lin/dragonbra/javasteam/networking/steam3/TcpConnection;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lin/dragonbra/javasteam/networking/steam3/TcpConnection;->shutdown()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetlogger()Lin/dragonbra/javasteam/util/log/Logger;
    .registers 1

    .line 0
    sget-object v0, Lin/dragonbra/javasteam/networking/steam3/TcpConnection;->logger:Lin/dragonbra/javasteam/util/log/Logger;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 20
    const-class v0, Lin/dragonbra/javasteam/networking/steam3/TcpConnection;

    invoke-static {v0}, Lin/dragonbra/javasteam/util/log/LogManager;->getLogger(Ljava/lang/Class;)Lin/dragonbra/javasteam/util/log/Logger;

    move-result-object v0

    sput-object v0, Lin/dragonbra/javasteam/networking/steam3/TcpConnection;->logger:Lin/dragonbra/javasteam/util/log/Logger;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 18
    invoke-direct {p0}, Lin/dragonbra/javasteam/networking/steam3/Connection;-><init>()V

    .line 37
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lin/dragonbra/javasteam/networking/steam3/TcpConnection;->netLock:Ljava/lang/Object;

    return-void
.end method

.method private connectionCompleted(Z)V
    .registers 7

    const/4 v0, 0x0

    if-nez p1, :cond_23

    .line 52
    sget-object p1, Lin/dragonbra/javasteam/networking/steam3/TcpConnection;->logger:Lin/dragonbra/javasteam/util/log/Logger;

    iget-object v1, p0, Lin/dragonbra/javasteam/networking/steam3/TcpConnection;->currentEndPoint:Ljava/net/InetSocketAddress;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Timed out while connecting to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lin/dragonbra/javasteam/util/log/Logger;->debug(Ljava/lang/String;)V

    .line 53
    invoke-direct {p0, v0}, Lin/dragonbra/javasteam/networking/steam3/TcpConnection;->release(Z)V

    return-void

    .line 57
    :cond_23
    sget-object p1, Lin/dragonbra/javasteam/networking/steam3/TcpConnection;->logger:Lin/dragonbra/javasteam/util/log/Logger;

    iget-object v1, p0, Lin/dragonbra/javasteam/networking/steam3/TcpConnection;->currentEndPoint:Ljava/net/InetSocketAddress;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Connected to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lin/dragonbra/javasteam/util/log/Logger;->debug(Ljava/lang/String;)V

    .line 60
    :try_start_3f
    iget-object p1, p0, Lin/dragonbra/javasteam/networking/steam3/TcpConnection;->netLock:Ljava/lang/Object;

    monitor-enter p1
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_42} :catch_8c

    .line 61
    :try_start_42
    new-instance v1, Lin/dragonbra/javasteam/util/stream/BinaryReader;

    iget-object v2, p0, Lin/dragonbra/javasteam/networking/steam3/TcpConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Lin/dragonbra/javasteam/util/stream/BinaryReader;-><init>(Ljava/io/InputStream;)V

    iput-object v1, p0, Lin/dragonbra/javasteam/networking/steam3/TcpConnection;->netReader:Lin/dragonbra/javasteam/util/stream/BinaryReader;

    .line 62
    new-instance v1, Lin/dragonbra/javasteam/util/stream/BinaryWriter;

    iget-object v2, p0, Lin/dragonbra/javasteam/networking/steam3/TcpConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Lin/dragonbra/javasteam/util/stream/BinaryWriter;-><init>(Ljava/io/OutputStream;)V

    iput-object v1, p0, Lin/dragonbra/javasteam/networking/steam3/TcpConnection;->netWriter:Lin/dragonbra/javasteam/util/stream/BinaryWriter;

    .line 64
    new-instance v1, Lin/dragonbra/javasteam/networking/steam3/TcpConnection$NetLoop;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lin/dragonbra/javasteam/networking/steam3/TcpConnection$NetLoop;-><init>(Lin/dragonbra/javasteam/networking/steam3/TcpConnection;Lin/dragonbra/javasteam/networking/steam3/TcpConnection-IA;)V

    iput-object v1, p0, Lin/dragonbra/javasteam/networking/steam3/TcpConnection;->netLoop:Lin/dragonbra/javasteam/networking/steam3/TcpConnection$NetLoop;

    .line 65
    new-instance v1, Ljava/lang/Thread;

    iget-object v2, p0, Lin/dragonbra/javasteam/networking/steam3/TcpConnection;->netLoop:Lin/dragonbra/javasteam/networking/steam3/TcpConnection$NetLoop;

    const-string v3, "TcpConnection Thread"

    invoke-direct {v1, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v1, p0, Lin/dragonbra/javasteam/networking/steam3/TcpConnection;->netThread:Ljava/lang/Thread;

    .line 67
    new-instance v1, Ljava/net/InetSocketAddress;

    iget-object v2, p0, Lin/dragonbra/javasteam/networking/steam3/TcpConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v2

    iget-object v3, p0, Lin/dragonbra/javasteam/networking/steam3/TcpConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getPort()I

    move-result v3

    invoke-direct {v1, v2, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    iput-object v1, p0, Lin/dragonbra/javasteam/networking/steam3/TcpConnection;->currentEndPoint:Ljava/net/InetSocketAddress;

    .line 68
    monitor-exit p1
    :try_end_83
    .catchall {:try_start_42 .. :try_end_83} :catchall_8e

    .line 70
    :try_start_83
    iget-object p1, p0, Lin/dragonbra/javasteam/networking/steam3/TcpConnection;->netThread:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 72
    invoke-virtual {p0}, Lin/dragonbra/javasteam/networking/steam3/Connection;->onConnected()V
    :try_end_8b
    .catch Ljava/io/IOException; {:try_start_83 .. :try_end_8b} :catch_8c

    goto :goto_b0

    :catch_8c
    move-exception p1

    goto :goto_91

    :catchall_8e
    move-exception v1

    .line 68
    :try_start_8f
    monitor-exit p1
    :try_end_90
    .catchall {:try_start_8f .. :try_end_90} :catchall_8e

    :try_start_90
    throw v1
    :try_end_91
    .catch Ljava/io/IOException; {:try_start_90 .. :try_end_91} :catch_8c

    .line 74
    :goto_91
    sget-object v1, Lin/dragonbra/javasteam/networking/steam3/TcpConnection;->logger:Lin/dragonbra/javasteam/util/log/Logger;

    iget-object v2, p0, Lin/dragonbra/javasteam/networking/steam3/TcpConnection;->currentEndPoint:Ljava/net/InetSocketAddress;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception while setting up connection to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lin/dragonbra/javasteam/util/log/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 75
    invoke-direct {p0, v0}, Lin/dragonbra/javasteam/networking/steam3/TcpConnection;->release(Z)V

    :goto_b0
    return-void
.end method

.method private readPacket()[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 136
    iget-object v0, p0, Lin/dragonbra/javasteam/networking/steam3/TcpConnection;->netReader:Lin/dragonbra/javasteam/util/stream/BinaryReader;

    invoke-virtual {v0}, Lin/dragonbra/javasteam/util/stream/BinaryReader;->readInt()I

    move-result v0

    .line 137
    iget-object v1, p0, Lin/dragonbra/javasteam/networking/steam3/TcpConnection;->netReader:Lin/dragonbra/javasteam/util/stream/BinaryReader;

    invoke-virtual {v1}, Lin/dragonbra/javasteam/util/stream/BinaryReader;->readInt()I

    move-result v1

    const v2, 0x31305456

    if-ne v1, v2, :cond_18

    .line 143
    iget-object p0, p0, Lin/dragonbra/javasteam/networking/steam3/TcpConnection;->netReader:Lin/dragonbra/javasteam/util/stream/BinaryReader;

    invoke-virtual {p0, v0}, Lin/dragonbra/javasteam/util/stream/BinaryReader;->readBytes(I)[B

    move-result-object p0

    return-object p0

    .line 140
    :cond_18
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Got a packet with invalid magic!"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private release(Z)V
    .registers 5

    .line 80
    iget-object v0, p0, Lin/dragonbra/javasteam/networking/steam3/TcpConnection;->netLock:Ljava/lang/Object;

    monitor-enter v0

    .line 81
    :try_start_3
    iget-object v1, p0, Lin/dragonbra/javasteam/networking/steam3/TcpConnection;->netWriter:Lin/dragonbra/javasteam/util/stream/BinaryWriter;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_c

    const/4 v2, 0x0

    if-eqz v1, :cond_10

    .line 83
    :try_start_8
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_b} :catch_e
    .catchall {:try_start_8 .. :try_end_b} :catchall_c

    goto :goto_e

    :catchall_c
    move-exception p0

    goto :goto_27

    .line 86
    :catch_e
    :goto_e
    :try_start_e
    iput-object v2, p0, Lin/dragonbra/javasteam/networking/steam3/TcpConnection;->netWriter:Lin/dragonbra/javasteam/util/stream/BinaryWriter;

    .line 89
    :cond_10
    iget-object v1, p0, Lin/dragonbra/javasteam/networking/steam3/TcpConnection;->netReader:Lin/dragonbra/javasteam/util/stream/BinaryReader;
    :try_end_12
    .catchall {:try_start_e .. :try_end_12} :catchall_c

    if-eqz v1, :cond_19

    .line 91
    :try_start_14
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_17} :catch_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_c

    .line 94
    :catch_17
    :try_start_17
    iput-object v2, p0, Lin/dragonbra/javasteam/networking/steam3/TcpConnection;->netReader:Lin/dragonbra/javasteam/util/stream/BinaryReader;

    .line 97
    :cond_19
    iget-object v1, p0, Lin/dragonbra/javasteam/networking/steam3/TcpConnection;->socket:Ljava/net/Socket;
    :try_end_1b
    .catchall {:try_start_17 .. :try_end_1b} :catchall_c

    if-eqz v1, :cond_22

    .line 99
    :try_start_1d
    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_20} :catch_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_c

    .line 102
    :catch_20
    :try_start_20
    iput-object v2, p0, Lin/dragonbra/javasteam/networking/steam3/TcpConnection;->socket:Ljava/net/Socket;

    .line 104
    :cond_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_c

    .line 106
    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/networking/steam3/Connection;->onDisconnected(Z)V

    return-void

    .line 104
    :goto_27
    :try_start_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_c

    throw p0
.end method

.method private shutdown()V
    .registers 2

    .line 41
    :try_start_0
    iget-object v0, p0, Lin/dragonbra/javasteam/networking/steam3/TcpConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 42
    iget-object v0, p0, Lin/dragonbra/javasteam/networking/steam3/TcpConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->shutdownInput()V

    .line 43
    iget-object p0, p0, Lin/dragonbra/javasteam/networking/steam3/TcpConnection;->socket:Ljava/net/Socket;

    invoke-virtual {p0}, Ljava/net/Socket;->shutdownOutput()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_12} :catch_13

    goto :goto_19

    :catch_13
    move-exception p0

    .line 46
    sget-object v0, Lin/dragonbra/javasteam/networking/steam3/TcpConnection;->logger:Lin/dragonbra/javasteam/util/log/Logger;

    invoke-virtual {v0, p0}, Lin/dragonbra/javasteam/util/log/Logger;->debug(Ljava/lang/Throwable;)V

    :cond_19
    :goto_19
    return-void
.end method


# virtual methods
.method public connect(Ljava/net/InetSocketAddress;I)V
    .registers 8

    .line 111
    iget-object v0, p0, Lin/dragonbra/javasteam/networking/steam3/TcpConnection;->netLock:Ljava/lang/Object;

    monitor-enter v0

    .line 112
    :try_start_3
    iput-object p1, p0, Lin/dragonbra/javasteam/networking/steam3/TcpConnection;->currentEndPoint:Ljava/net/InetSocketAddress;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_33

    .line 114
    :try_start_5
    sget-object v1, Lin/dragonbra/javasteam/networking/steam3/TcpConnection;->logger:Lin/dragonbra/javasteam/util/log/Logger;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Connecting to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "..."

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lin/dragonbra/javasteam/util/log/Logger;->debug(Ljava/lang/String;)V

    .line 115
    new-instance v1, Ljava/net/Socket;

    invoke-direct {v1}, Ljava/net/Socket;-><init>()V

    iput-object v1, p0, Lin/dragonbra/javasteam/networking/steam3/TcpConnection;->socket:Ljava/net/Socket;

    .line 116
    invoke-virtual {v1, p1, p2}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    const/4 p1, 0x1

    .line 118
    invoke-direct {p0, p1}, Lin/dragonbra/javasteam/networking/steam3/TcpConnection;->connectionCompleted(Z)V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_32} :catch_35
    .catchall {:try_start_5 .. :try_end_32} :catchall_33

    goto :goto_56

    :catchall_33
    move-exception p0

    goto :goto_58

    :catch_35
    move-exception p1

    .line 120
    :try_start_36
    sget-object p2, Lin/dragonbra/javasteam/networking/steam3/TcpConnection;->logger:Lin/dragonbra/javasteam/util/log/Logger;

    iget-object v1, p0, Lin/dragonbra/javasteam/networking/steam3/TcpConnection;->currentEndPoint:Ljava/net/InetSocketAddress;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Socket exception while completing connection request to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1, p1}, Lin/dragonbra/javasteam/util/log/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    .line 121
    invoke-direct {p0, p1}, Lin/dragonbra/javasteam/networking/steam3/TcpConnection;->connectionCompleted(Z)V

    .line 123
    :goto_56
    monitor-exit v0

    return-void

    :goto_58
    monitor-exit v0
    :try_end_59
    .catchall {:try_start_36 .. :try_end_59} :catchall_33

    throw p0
.end method

.method public disconnect(Z)V
    .registers 3

    .line 128
    iget-object v0, p0, Lin/dragonbra/javasteam/networking/steam3/TcpConnection;->netLock:Ljava/lang/Object;

    monitor-enter v0

    .line 129
    :try_start_3
    iget-object p0, p0, Lin/dragonbra/javasteam/networking/steam3/TcpConnection;->netLoop:Lin/dragonbra/javasteam/networking/steam3/TcpConnection$NetLoop;

    if-eqz p0, :cond_d

    .line 130
    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/networking/steam3/TcpConnection$NetLoop;->stop(Z)V

    goto :goto_d

    :catchall_b
    move-exception p0

    goto :goto_f

    .line 132
    :cond_d
    :goto_d
    monitor-exit v0

    return-void

    :goto_f
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_b

    throw p0
.end method

.method public getCurrentEndPoint()Ljava/net/InetSocketAddress;
    .registers 1

    .line 188
    iget-object p0, p0, Lin/dragonbra/javasteam/networking/steam3/TcpConnection;->currentEndPoint:Ljava/net/InetSocketAddress;

    return-object p0
.end method

.method public getLocalIP()Ljava/net/InetAddress;
    .registers 5

    .line 172
    iget-object v0, p0, Lin/dragonbra/javasteam/networking/steam3/TcpConnection;->netLock:Ljava/lang/Object;

    monitor-enter v0

    .line 173
    :try_start_3
    iget-object p0, p0, Lin/dragonbra/javasteam/networking/steam3/TcpConnection;->socket:Ljava/net/Socket;

    const/4 v1, 0x0

    if-nez p0, :cond_c

    .line 174
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_a

    return-object v1

    :catchall_a
    move-exception p0

    goto :goto_1c

    .line 178
    :cond_c
    :try_start_c
    invoke-static {p0}, Lin/dragonbra/javasteam/util/NetHelpers;->getLocalIP(Ljava/net/Socket;)Ljava/net/InetAddress;

    move-result-object p0
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_10} :catch_12
    .catchall {:try_start_c .. :try_end_10} :catchall_a

    :try_start_10
    monitor-exit v0

    return-object p0

    :catch_12
    move-exception p0

    .line 180
    sget-object v2, Lin/dragonbra/javasteam/networking/steam3/TcpConnection;->logger:Lin/dragonbra/javasteam/util/log/Logger;

    const-string v3, "Socket exception trying to read bound IP: "

    invoke-virtual {v2, v3, p0}, Lin/dragonbra/javasteam/util/log/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 181
    monitor-exit v0

    return-object v1

    .line 183
    :goto_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_10 .. :try_end_1d} :catchall_a

    throw p0
.end method

.method public getProtocolTypes()Lin/dragonbra/javasteam/networking/steam3/ProtocolTypes;
    .registers 1

    .line 193
    sget-object p0, Lin/dragonbra/javasteam/networking/steam3/ProtocolTypes;->TCP:Lin/dragonbra/javasteam/networking/steam3/ProtocolTypes;

    return-object p0
.end method

.method public send([B)V
    .registers 5

    .line 148
    iget-object v0, p0, Lin/dragonbra/javasteam/networking/steam3/TcpConnection;->netLock:Ljava/lang/Object;

    monitor-enter v0

    .line 149
    :try_start_3
    iget-object v1, p0, Lin/dragonbra/javasteam/networking/steam3/TcpConnection;->socket:Ljava/net/Socket;

    if-nez v1, :cond_12

    .line 150
    sget-object p0, Lin/dragonbra/javasteam/networking/steam3/TcpConnection;->logger:Lin/dragonbra/javasteam/util/log/Logger;

    const-string p1, "Attempting to send client data when not connected."

    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/util/log/Logger;->debug(Ljava/lang/String;)V

    .line 151
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_10

    return-void

    :catchall_10
    move-exception p0

    goto :goto_38

    .line 155
    :cond_12
    :try_start_12
    iget-object v1, p0, Lin/dragonbra/javasteam/networking/steam3/TcpConnection;->netWriter:Lin/dragonbra/javasteam/util/stream/BinaryWriter;

    array-length v2, p1

    invoke-virtual {v1, v2}, Lin/dragonbra/javasteam/util/stream/BinaryWriter;->writeInt(I)V

    .line 156
    iget-object v1, p0, Lin/dragonbra/javasteam/networking/steam3/TcpConnection;->netWriter:Lin/dragonbra/javasteam/util/stream/BinaryWriter;

    const v2, 0x31305456

    invoke-virtual {v1, v2}, Lin/dragonbra/javasteam/util/stream/BinaryWriter;->writeInt(I)V

    .line 157
    iget-object v1, p0, Lin/dragonbra/javasteam/networking/steam3/TcpConnection;->netWriter:Lin/dragonbra/javasteam/util/stream/BinaryWriter;

    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_25} :catch_26
    .catchall {:try_start_12 .. :try_end_25} :catchall_10

    goto :goto_36

    :catch_26
    move-exception p1

    .line 159
    :try_start_27
    sget-object v1, Lin/dragonbra/javasteam/networking/steam3/TcpConnection;->logger:Lin/dragonbra/javasteam/util/log/Logger;

    const-string v2, "Socket exception while writing data."

    invoke-virtual {v1, v2, p1}, Lin/dragonbra/javasteam/util/log/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 163
    iget-object p0, p0, Lin/dragonbra/javasteam/networking/steam3/TcpConnection;->netLoop:Lin/dragonbra/javasteam/networking/steam3/TcpConnection$NetLoop;

    if-eqz p0, :cond_36

    const/4 p1, 0x0

    .line 164
    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/networking/steam3/TcpConnection$NetLoop;->stop(Z)V

    .line 167
    :cond_36
    :goto_36
    monitor-exit v0

    return-void

    :goto_38
    monitor-exit v0
    :try_end_39
    .catchall {:try_start_27 .. :try_end_39} :catchall_10

    throw p0
.end method

###### Class in.dragonbra.javasteam.networking.steam3.TcpConnection.NetLoop (in.dragonbra.javasteam.networking.steam3.TcpConnection$NetLoop)
.class Lin/dragonbra/javasteam/networking/steam3/TcpConnection$NetLoop;
.super Ljava/lang/Object;
.source "TcpConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lin/dragonbra/javasteam/networking/steam3/TcpConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NetLoop"
.end annotation


# static fields
.field private static final POLL_MS:I = 0x64


# instance fields
.field private volatile cancelRequested:Z

.field final synthetic this$0:Lin/dragonbra/javasteam/networking/steam3/TcpConnection;

.field private volatile userRequested:Z


# direct methods
.method private constructor <init>(Lin/dragonbra/javasteam/networking/steam3/TcpConnection;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 201
    iput-object p1, p0, Lin/dragonbra/javasteam/networking/steam3/TcpConnection$NetLoop;->this$0:Lin/dragonbra/javasteam/networking/steam3/TcpConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 204
    iput-boolean p1, p0, Lin/dragonbra/javasteam/networking/steam3/TcpConnection$NetLoop;->cancelRequested:Z

    .line 206
    iput-boolean p1, p0, Lin/dragonbra/javasteam/networking/steam3/TcpConnection$NetLoop;->userRequested:Z

    return-void
.end method

.method public synthetic constructor <init>(Lin/dragonbra/javasteam/networking/steam3/TcpConnection;Lin/dragonbra/javasteam/networking/steam3/TcpConnection-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lin/dragonbra/javasteam/networking/steam3/TcpConnection$NetLoop;-><init>(Lin/dragonbra/javasteam/networking/steam3/TcpConnection;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 215
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lin/dragonbra/javasteam/networking/steam3/TcpConnection$NetLoop;->cancelRequested:Z

    if-nez v0, :cond_51

    const-wide/16 v0, 0x64

    .line 217
    :try_start_6
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_9} :catch_a

    goto :goto_14

    :catch_a
    move-exception v0

    .line 219
    invoke-static {}, Lin/dragonbra/javasteam/networking/steam3/TcpConnection;->-$$Nest$sfgetlogger()Lin/dragonbra/javasteam/util/log/Logger;

    move-result-object v1

    const-string v2, "Thread interrupted"

    invoke-virtual {v1, v2, v0}, Lin/dragonbra/javasteam/util/log/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 222
    :goto_14
    iget-boolean v0, p0, Lin/dragonbra/javasteam/networking/steam3/TcpConnection$NetLoop;->cancelRequested:Z

    if-eqz v0, :cond_19

    goto :goto_51

    .line 229
    :cond_19
    :try_start_19
    iget-object v0, p0, Lin/dragonbra/javasteam/networking/steam3/TcpConnection$NetLoop;->this$0:Lin/dragonbra/javasteam/networking/steam3/TcpConnection;

    invoke-static {v0}, Lin/dragonbra/javasteam/networking/steam3/TcpConnection;->-$$Nest$fgetnetReader(Lin/dragonbra/javasteam/networking/steam3/TcpConnection;)Lin/dragonbra/javasteam/util/stream/BinaryReader;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_23} :catch_47

    if-lez v0, :cond_0

    .line 243
    :try_start_25
    iget-object v0, p0, Lin/dragonbra/javasteam/networking/steam3/TcpConnection$NetLoop;->this$0:Lin/dragonbra/javasteam/networking/steam3/TcpConnection;

    invoke-static {v0}, Lin/dragonbra/javasteam/networking/steam3/TcpConnection;->-$$Nest$mreadPacket(Lin/dragonbra/javasteam/networking/steam3/TcpConnection;)[B

    move-result-object v0

    .line 245
    iget-object v1, p0, Lin/dragonbra/javasteam/networking/steam3/TcpConnection$NetLoop;->this$0:Lin/dragonbra/javasteam/networking/steam3/TcpConnection;

    new-instance v2, Lin/dragonbra/javasteam/networking/steam3/NetMsgEventArgs;

    iget-object v3, p0, Lin/dragonbra/javasteam/networking/steam3/TcpConnection$NetLoop;->this$0:Lin/dragonbra/javasteam/networking/steam3/TcpConnection;

    invoke-static {v3}, Lin/dragonbra/javasteam/networking/steam3/TcpConnection;->-$$Nest$fgetcurrentEndPoint(Lin/dragonbra/javasteam/networking/steam3/TcpConnection;)Ljava/net/InetSocketAddress;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lin/dragonbra/javasteam/networking/steam3/NetMsgEventArgs;-><init>([BLjava/net/InetSocketAddress;)V

    invoke-virtual {v1, v2}, Lin/dragonbra/javasteam/networking/steam3/Connection;->onNetMsgReceived(Lin/dragonbra/javasteam/networking/steam3/NetMsgEventArgs;)V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_3b} :catch_3c

    goto :goto_0

    :catch_3c
    move-exception v0

    .line 247
    invoke-static {}, Lin/dragonbra/javasteam/networking/steam3/TcpConnection;->-$$Nest$sfgetlogger()Lin/dragonbra/javasteam/util/log/Logger;

    move-result-object v1

    const-string v2, "Socket exception occurred while reading packet"

    invoke-virtual {v1, v2, v0}, Lin/dragonbra/javasteam/util/log/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_51

    :catch_47
    move-exception v0

    .line 231
    invoke-static {}, Lin/dragonbra/javasteam/networking/steam3/TcpConnection;->-$$Nest$sfgetlogger()Lin/dragonbra/javasteam/util/log/Logger;

    move-result-object v1

    const-string v2, "Socket exception while polling"

    invoke-virtual {v1, v2, v0}, Lin/dragonbra/javasteam/util/log/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 252
    :cond_51
    :goto_51
    iget-boolean v0, p0, Lin/dragonbra/javasteam/networking/steam3/TcpConnection$NetLoop;->cancelRequested:Z

    if-eqz v0, :cond_5a

    .line 253
    iget-object v0, p0, Lin/dragonbra/javasteam/networking/steam3/TcpConnection$NetLoop;->this$0:Lin/dragonbra/javasteam/networking/steam3/TcpConnection;

    invoke-static {v0}, Lin/dragonbra/javasteam/networking/steam3/TcpConnection;->-$$Nest$mshutdown(Lin/dragonbra/javasteam/networking/steam3/TcpConnection;)V

    .line 255
    :cond_5a
    iget-object v0, p0, Lin/dragonbra/javasteam/networking/steam3/TcpConnection$NetLoop;->this$0:Lin/dragonbra/javasteam/networking/steam3/TcpConnection;

    iget-boolean v1, p0, Lin/dragonbra/javasteam/networking/steam3/TcpConnection$NetLoop;->cancelRequested:Z

    if-eqz v1, :cond_66

    iget-boolean p0, p0, Lin/dragonbra/javasteam/networking/steam3/TcpConnection$NetLoop;->userRequested:Z

    if-eqz p0, :cond_66

    const/4 p0, 0x1

    goto :goto_67

    :cond_66
    const/4 p0, 0x0

    :goto_67
    invoke-static {v0, p0}, Lin/dragonbra/javasteam/networking/steam3/TcpConnection;->-$$Nest$mrelease(Lin/dragonbra/javasteam/networking/steam3/TcpConnection;Z)V

    return-void
.end method

.method public stop(Z)V
    .registers 2

    .line 209
    iput-boolean p1, p0, Lin/dragonbra/javasteam/networking/steam3/TcpConnection$NetLoop;->userRequested:Z

    const/4 p1, 0x1

    .line 210
    iput-boolean p1, p0, Lin/dragonbra/javasteam/networking/steam3/TcpConnection$NetLoop;->cancelRequested:Z

    return-void
.end method
