###### Class in.dragonbra.javasteam.util.NetHookNetworkListener (in.dragonbra.javasteam.util.NetHookNetworkListener)
.class public Lin/dragonbra/javasteam/util/NetHookNetworkListener;
.super Ljava/lang/Object;
.source "NetHookNetworkListener.java"

# interfaces
.implements Lin/dragonbra/javasteam/util/IDebugNetworkListener;


# static fields
.field private static final FORMAT:Ljava/text/SimpleDateFormat;

.field private static final logger:Lin/dragonbra/javasteam/util/log/Logger;


# instance fields
.field private final logDirectory:Ljava/io/File;

.field private final messageNumber:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 22
    const-class v0, Lin/dragonbra/javasteam/util/NetHookNetworkListener;

    invoke-static {v0}, Lin/dragonbra/javasteam/util/log/LogManager;->getLogger(Ljava/lang/Class;)Lin/dragonbra/javasteam/util/log/Logger;

    move-result-object v0

    sput-object v0, Lin/dragonbra/javasteam/util/NetHookNetworkListener;->logger:Lin/dragonbra/javasteam/util/log/Logger;

    .line 24
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy_MM_dd_H_m_s_S"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lin/dragonbra/javasteam/util/NetHookNetworkListener;->FORMAT:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 31
    const-string v0, "netlogs"

    invoke-direct {p0, v0}, Lin/dragonbra/javasteam/util/NetHookNetworkListener;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 5

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lin/dragonbra/javasteam/util/NetHookNetworkListener;->messageNumber:Ljava/util/concurrent/atomic/AtomicLong;

    .line 36
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 37
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 39
    new-instance p1, Ljava/io/File;

    sget-object v1, Lin/dragonbra/javasteam/util/NetHookNetworkListener;->FORMAT:Ljava/text/SimpleDateFormat;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lin/dragonbra/javasteam/util/NetHookNetworkListener;->logDirectory:Ljava/io/File;

    .line 40
    invoke-virtual {p1}, Ljava/io/File;->mkdir()Z

    return-void
.end method

.method private getFile(Ljava/lang/String;Lin/dragonbra/javasteam/enums/EMsg;)Ljava/lang/String;
    .registers 5

    .line 66
    iget-object p0, p0, Lin/dragonbra/javasteam/util/NetHookNetworkListener;->messageNumber:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p2}, Lin/dragonbra/javasteam/enums/EMsg;->code()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {p0, p1, v0, p2}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%d_%s_%d_k_EMsg%s.bin"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public onIncomingNetworkMessage(Lin/dragonbra/javasteam/enums/EMsg;[B)V
    .registers 6

    .line 45
    sget-object v0, Lin/dragonbra/javasteam/util/NetHookNetworkListener;->logger:Lin/dragonbra/javasteam/util/log/Logger;

    invoke-virtual {p1}, Lin/dragonbra/javasteam/enums/EMsg;->code()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {p1, v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "<- Recv\'d EMsg: %s (%d)"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lin/dragonbra/javasteam/util/log/Logger;->debug(Ljava/lang/String;)V

    .line 48
    :try_start_17
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lin/dragonbra/javasteam/util/NetHookNetworkListener;->logDirectory:Ljava/io/File;

    const-string v2, "in"

    invoke-direct {p0, v2, p1}, Lin/dragonbra/javasteam/util/NetHookNetworkListener;->getFile(Ljava/lang/String;Lin/dragonbra/javasteam/enums/EMsg;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    new-array v0, p1, [Ljava/lang/String;

    invoke-static {p0, v0}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p0

    new-array p1, p1, [Ljava/nio/file/OpenOption;

    invoke-static {p0, p2, p1}, Ljava/nio/file/Files;->write(Ljava/nio/file/Path;[B[Ljava/nio/file/OpenOption;)Ljava/nio/file/Path;
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_34} :catch_35

    goto :goto_3b

    :catch_35
    move-exception p0

    .line 50
    sget-object p1, Lin/dragonbra/javasteam/util/NetHookNetworkListener;->logger:Lin/dragonbra/javasteam/util/log/Logger;

    invoke-virtual {p1, p0}, Lin/dragonbra/javasteam/util/log/Logger;->debug(Ljava/lang/Throwable;)V

    :goto_3b
    return-void
.end method

.method public onOutgoingNetworkMessage(Lin/dragonbra/javasteam/enums/EMsg;[B)V
    .registers 6

    .line 56
    sget-object v0, Lin/dragonbra/javasteam/util/NetHookNetworkListener;->logger:Lin/dragonbra/javasteam/util/log/Logger;

    const-string v1, "Sent -> EMsg: %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lin/dragonbra/javasteam/util/log/Logger;->debug(Ljava/lang/String;)V

    .line 59
    :try_start_f
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lin/dragonbra/javasteam/util/NetHookNetworkListener;->logDirectory:Ljava/io/File;

    const-string v2, "out"

    invoke-direct {p0, v2, p1}, Lin/dragonbra/javasteam/util/NetHookNetworkListener;->getFile(Ljava/lang/String;Lin/dragonbra/javasteam/enums/EMsg;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    new-array v0, p1, [Ljava/lang/String;

    invoke-static {p0, v0}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p0

    new-array p1, p1, [Ljava/nio/file/OpenOption;

    invoke-static {p0, p2, p1}, Ljava/nio/file/Files;->write(Ljava/nio/file/Path;[B[Ljava/nio/file/OpenOption;)Ljava/nio/file/Path;
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_2c} :catch_2d

    goto :goto_33

    :catch_2d
    move-exception p0

    .line 61
    sget-object p1, Lin/dragonbra/javasteam/util/NetHookNetworkListener;->logger:Lin/dragonbra/javasteam/util/log/Logger;

    invoke-virtual {p1, p0}, Lin/dragonbra/javasteam/util/log/Logger;->debug(Ljava/lang/Throwable;)V

    :goto_33
    return-void
.end method
