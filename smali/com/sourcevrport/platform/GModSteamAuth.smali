###### Class com.sourcevrport.platform.GModSteamAuth (com.sourcevrport.platform.GModSteamAuth)
.class public final Lcom/sourcevrport/platform/GModSteamAuth;
.super Ljava/lang/Object;
.source "GModSteamAuth.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sourcevrport/platform/GModSteamAuth$Job;
    }
.end annotation


# static fields
.field private static active:Lcom/sourcevrport/platform/GModSteamAuth$Job;

.field private static volatile identity:Lcom/sourcevrport/platform/GModServerDirectory$IdentityProvider;


# direct methods
.method public static bridge synthetic -$$Nest$sfgetidentity()Lcom/sourcevrport/platform/GModServerDirectory$IdentityProvider;
    .registers 1

    .line 0
    sget-object v0, Lcom/sourcevrport/platform/GModSteamAuth;->identity:Lcom/sourcevrport/platform/GModServerDirectory$IdentityProvider;

    return-object v0
.end method

.method private constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized cancel()V
    .registers 3

    const-class v0, Lcom/sourcevrport/platform/GModSteamAuth;

    monitor-enter v0

    .line 36
    :try_start_3
    sget-object v1, Lcom/sourcevrport/platform/GModSteamAuth;->active:Lcom/sourcevrport/platform/GModSteamAuth$Job;

    const/4 v2, 0x0

    sput-object v2, Lcom/sourcevrport/platform/GModSteamAuth;->active:Lcom/sourcevrport/platform/GModSteamAuth$Job;

    if-eqz v1, :cond_10

    .line 37
    invoke-virtual {v1}, Lcom/sourcevrport/platform/GModSteamAuth$Job;->close()V
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_e

    goto :goto_10

    :catchall_e
    move-exception v1

    goto :goto_12

    .line 38
    :cond_10
    :goto_10
    monitor-exit v0

    return-void

    :goto_12
    :try_start_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_e

    throw v1
.end method

.method public static connectionCookie(J[B)[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-eqz v0, :cond_2a

    if-eqz p2, :cond_2a

    .line 56
    array-length v0, p2

    if-eqz v0, :cond_2a

    array-length v0, p2

    const/16 v1, 0x7f8

    if-gt v0, v1, :cond_2a

    .line 58
    array-length v0, p2

    add-int/lit8 v0, v0, 0x8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 59
    invoke-virtual {v0, p0, p1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    return-object p0

    .line 57
    :cond_2a
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Steam returned an invalid game session ticket"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static declared-synchronized error()Ljava/lang/String;
    .registers 2

    const-class v0, Lcom/sourcevrport/platform/GModSteamAuth;

    monitor-enter v0

    .line 48
    :try_start_3
    sget-object v1, Lcom/sourcevrport/platform/GModSteamAuth;->active:Lcom/sourcevrport/platform/GModSteamAuth$Job;

    if-nez v1, :cond_c

    const-string v1, ""

    goto :goto_e

    :catchall_a
    move-exception v1

    goto :goto_10

    :cond_c
    iget-object v1, v1, Lcom/sourcevrport/platform/GModSteamAuth$Job;->failure:Ljava/lang/String;
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_a

    :goto_e
    monitor-exit v0

    return-object v1

    :goto_10
    :try_start_10
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_a

    throw v1
.end method

.method public static initialize(Lcom/sourcevrport/platform/GModServerDirectory$IdentityProvider;)V
    .registers 1

    .line 33
    sput-object p0, Lcom/sourcevrport/platform/GModSteamAuth;->identity:Lcom/sourcevrport/platform/GModServerDirectory$IdentityProvider;

    return-void
.end method

.method public static declared-synchronized request(Ljava/lang/String;IJZ)V
    .registers 7

    const-class v0, Lcom/sourcevrport/platform/GModSteamAuth;

    monitor-enter v0

    .line 40
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2, p3}, Ljava/lang/Long;->toUnsignedString(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 41
    sget-object p1, Lcom/sourcevrport/platform/GModSteamAuth;->active:Lcom/sourcevrport/platform/GModSteamAuth$Job;

    if-eqz p1, :cond_3b

    iget-object p1, p1, Lcom/sourcevrport/platform/GModSteamAuth$Job;->key:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_35
    .catchall {:try_start_3 .. :try_end_35} :catchall_39

    if-eqz p1, :cond_3b

    monitor-exit v0

    return-void

    :catchall_39
    move-exception p0

    goto :goto_4c

    .line 42
    :cond_3b
    :try_start_3b
    invoke-static {}, Lcom/sourcevrport/platform/GModSteamAuth;->cancel()V

    .line 43
    new-instance p1, Lcom/sourcevrport/platform/GModSteamAuth$Job;

    invoke-direct {p1, p0, p2, p3}, Lcom/sourcevrport/platform/GModSteamAuth$Job;-><init>(Ljava/lang/String;J)V

    sput-object p1, Lcom/sourcevrport/platform/GModSteamAuth;->active:Lcom/sourcevrport/platform/GModSteamAuth$Job;

    .line 44
    iget-object p0, p1, Lcom/sourcevrport/platform/GModSteamAuth$Job;->worker:Ljava/lang/Thread;

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V
    :try_end_4a
    .catchall {:try_start_3b .. :try_end_4a} :catchall_39

    .line 45
    monitor-exit v0

    return-void

    :goto_4c
    :try_start_4c
    monitor-exit v0
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_39

    throw p0
.end method

.method public static declared-synchronized shutdown()V
    .registers 2

    const-class v0, Lcom/sourcevrport/platform/GModSteamAuth;

    monitor-enter v0

    .line 34
    :try_start_3
    invoke-static {}, Lcom/sourcevrport/platform/GModSteamAuth;->cancel()V

    const/4 v1, 0x0

    sput-object v1, Lcom/sourcevrport/platform/GModSteamAuth;->identity:Lcom/sourcevrport/platform/GModServerDirectory$IdentityProvider;
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_b

    monitor-exit v0

    return-void

    :catchall_b
    move-exception v1

    :try_start_c
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw v1
.end method

.method public static declared-synchronized state()I
    .registers 2

    const-class v0, Lcom/sourcevrport/platform/GModSteamAuth;

    monitor-enter v0

    .line 47
    :try_start_3
    sget-object v1, Lcom/sourcevrport/platform/GModSteamAuth;->active:Lcom/sourcevrport/platform/GModSteamAuth$Job;

    if-nez v1, :cond_9

    const/4 v1, 0x0

    goto :goto_b

    :cond_9
    iget v1, v1, Lcom/sourcevrport/platform/GModSteamAuth$Job;->state:I
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_d

    :goto_b
    monitor-exit v0

    return v1

    :catchall_d
    move-exception v1

    :try_start_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_d

    throw v1
.end method

.method public static declared-synchronized steamID()J
    .registers 3

    const-class v0, Lcom/sourcevrport/platform/GModSteamAuth;

    monitor-enter v0

    .line 49
    :try_start_3
    sget-object v1, Lcom/sourcevrport/platform/GModSteamAuth;->active:Lcom/sourcevrport/platform/GModSteamAuth$Job;

    if-nez v1, :cond_a

    const-wide/16 v1, 0x0

    goto :goto_c

    :cond_a
    iget-wide v1, v1, Lcom/sourcevrport/platform/GModSteamAuth$Job;->userID:J
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_e

    :goto_c
    monitor-exit v0

    return-wide v1

    :catchall_e
    move-exception v1

    :try_start_f
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    throw v1
.end method

.method public static declared-synchronized ticket()[B
    .registers 3

    const-class v0, Lcom/sourcevrport/platform/GModSteamAuth;

    monitor-enter v0

    .line 52
    :try_start_3
    sget-object v1, Lcom/sourcevrport/platform/GModSteamAuth;->active:Lcom/sourcevrport/platform/GModSteamAuth$Job;

    if-eqz v1, :cond_21

    iget v1, v1, Lcom/sourcevrport/platform/GModSteamAuth$Job;->state:I

    const/4 v2, 0x2

    if-lt v1, v2, :cond_21

    sget-object v1, Lcom/sourcevrport/platform/GModSteamAuth;->active:Lcom/sourcevrport/platform/GModSteamAuth$Job;

    iget-object v1, v1, Lcom/sourcevrport/platform/GModSteamAuth$Job;->cookie:[B

    if-nez v1, :cond_13

    goto :goto_21

    .line 53
    :cond_13
    sget-object v1, Lcom/sourcevrport/platform/GModSteamAuth;->active:Lcom/sourcevrport/platform/GModSteamAuth$Job;

    iget-object v1, v1, Lcom/sourcevrport/platform/GModSteamAuth$Job;->cookie:[B

    invoke-virtual {v1}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1f

    monitor-exit v0

    return-object v1

    :catchall_1f
    move-exception v1

    goto :goto_24

    .line 52
    :cond_21
    :goto_21
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    :goto_24
    :try_start_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_1f

    throw v1
.end method

###### Class com.sourcevrport.platform.GModSteamAuth.Job (com.sourcevrport.platform.GModSteamAuth$Job)
.class final Lcom/sourcevrport/platform/GModSteamAuth$Job;
.super Ljava/lang/Object;
.source "GModSteamAuth.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sourcevrport/platform/GModSteamAuth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Job"
.end annotation


# instance fields
.field final callbacks:Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackManager;

.field final client:Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

.field volatile closed:Z

.field final connected:Ljava/util/concurrent/CompletableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field volatile cookie:[B

.field volatile failure:Ljava/lang/String;

.field final key:Ljava/lang/String;

.field final loggedOn:Ljava/util/concurrent/CompletableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CompletableFuture<",
            "Lin/dragonbra/javasteam/enums/EResult;",
            ">;"
        }
    .end annotation
.end field

.field final pump:Ljava/lang/Thread;

.field final serverID:J

.field volatile state:I

.field final subscriptions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/io/Closeable;",
            ">;"
        }
    .end annotation
.end field

.field volatile ticket:Lin/dragonbra/javasteam/steam/handlers/steamauthticket/TicketInfo;

.field volatile userID:J

.field final worker:Ljava/lang/Thread;


# direct methods
.method public static synthetic $r8$lambda$2JpCjetpcsivGu_BvGMa0yyHGXM(Lcom/sourcevrport/platform/GModSteamAuth$Job;Lin/dragonbra/javasteam/steam/steamclient/callbacks/DisconnectedCallback;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/sourcevrport/platform/GModSteamAuth$Job;->lambda$new$2(Lin/dragonbra/javasteam/steam/steamclient/callbacks/DisconnectedCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$GLKj6dh-pnQWeLWYX9zKtJvv52k(Lcom/sourcevrport/platform/GModSteamAuth$Job;Lin/dragonbra/javasteam/steam/steamclient/callbacks/ConnectedCallback;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/sourcevrport/platform/GModSteamAuth$Job;->lambda$new$0(Lin/dragonbra/javasteam/steam/steamclient/callbacks/ConnectedCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$PVq9ivGwlMIVgcMd5I_QvH8jiSU(Lcom/sourcevrport/platform/GModSteamAuth$Job;JLin/dragonbra/javasteam/steam/handlers/steamauthticket/callback/TicketAuthCompleteCallback;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/sourcevrport/platform/GModSteamAuth$Job;->lambda$new$4(JLin/dragonbra/javasteam/steam/handlers/steamauthticket/callback/TicketAuthCompleteCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$elFPqUvOLozNlirtc0NELxHy2Ac(Lcom/sourcevrport/platform/GModSteamAuth$Job;Lin/dragonbra/javasteam/steam/handlers/steamuser/callback/LoggedOnCallback;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/sourcevrport/platform/GModSteamAuth$Job;->lambda$new$1(Lin/dragonbra/javasteam/steam/handlers/steamuser/callback/LoggedOnCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$l5ha6X7vtJ8ggGtw4rK1fB796Mw(Lcom/sourcevrport/platform/GModSteamAuth$Job;Lin/dragonbra/javasteam/steam/handlers/steamuser/callback/LoggedOffCallback;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/sourcevrport/platform/GModSteamAuth$Job;->lambda$new$3(Lin/dragonbra/javasteam/steam/handlers/steamuser/callback/LoggedOffCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$x9K11mrQYIBLFSaQcKN__PCM33c(Lcom/sourcevrport/platform/GModSteamAuth$Job;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/sourcevrport/platform/GModSteamAuth$Job;->lambda$new$5()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .registers 9

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    invoke-direct {v0}, Lin/dragonbra/javasteam/steam/steamclient/SteamClient;-><init>()V

    iput-object v0, p0, Lcom/sourcevrport/platform/GModSteamAuth$Job;->client:Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    .line 65
    new-instance v1, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackManager;

    invoke-direct {v1, v0}, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackManager;-><init>(Lin/dragonbra/javasteam/steam/steamclient/SteamClient;)V

    iput-object v1, p0, Lcom/sourcevrport/platform/GModSteamAuth$Job;->callbacks:Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackManager;

    .line 66
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/sourcevrport/platform/GModSteamAuth$Job;->subscriptions:Ljava/util/ArrayList;

    .line 67
    new-instance v3, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v3}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    iput-object v3, p0, Lcom/sourcevrport/platform/GModSteamAuth$Job;->connected:Ljava/util/concurrent/CompletableFuture;

    .line 68
    new-instance v3, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v3}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    iput-object v3, p0, Lcom/sourcevrport/platform/GModSteamAuth$Job;->loggedOn:Ljava/util/concurrent/CompletableFuture;

    const/4 v3, 0x1

    .line 70
    iput v3, p0, Lcom/sourcevrport/platform/GModSteamAuth$Job;->state:I

    .line 71
    const-string v4, ""

    iput-object v4, p0, Lcom/sourcevrport/platform/GModSteamAuth$Job;->failure:Ljava/lang/String;

    .line 78
    iput-object p1, p0, Lcom/sourcevrport/platform/GModSteamAuth$Job;->key:Ljava/lang/String;

    iput-wide p2, p0, Lcom/sourcevrport/platform/GModSteamAuth$Job;->serverID:J

    .line 79
    const-class p1, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket;

    invoke-virtual {v0, p1}, Lin/dragonbra/javasteam/steam/steamclient/SteamClient;->getHandler(Ljava/lang/Class;)Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;

    move-result-object p1

    if-nez p1, :cond_41

    new-instance p1, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket;

    invoke-direct {p1}, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket;-><init>()V

    invoke-virtual {v0, p1}, Lin/dragonbra/javasteam/steam/steamclient/SteamClient;->addHandler(Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;)V

    .line 80
    :cond_41
    new-instance p1, Lcom/sourcevrport/platform/GModSteamAuth$Job$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/sourcevrport/platform/GModSteamAuth$Job$$ExternalSyntheticLambda0;-><init>(Lcom/sourcevrport/platform/GModSteamAuth$Job;)V

    const-class v0, Lin/dragonbra/javasteam/steam/steamclient/callbacks/ConnectedCallback;

    invoke-virtual {v1, v0, p1}, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackManager;->subscribe(Ljava/lang/Class;Lin/dragonbra/javasteam/util/compat/Consumer;)Ljava/io/Closeable;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    new-instance p1, Lcom/sourcevrport/platform/GModSteamAuth$Job$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/sourcevrport/platform/GModSteamAuth$Job$$ExternalSyntheticLambda1;-><init>(Lcom/sourcevrport/platform/GModSteamAuth$Job;)V

    const-class v0, Lin/dragonbra/javasteam/steam/handlers/steamuser/callback/LoggedOnCallback;

    invoke-virtual {v1, v0, p1}, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackManager;->subscribe(Ljava/lang/Class;Lin/dragonbra/javasteam/util/compat/Consumer;)Ljava/io/Closeable;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    new-instance p1, Lcom/sourcevrport/platform/GModSteamAuth$Job$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lcom/sourcevrport/platform/GModSteamAuth$Job$$ExternalSyntheticLambda2;-><init>(Lcom/sourcevrport/platform/GModSteamAuth$Job;)V

    const-class v0, Lin/dragonbra/javasteam/steam/steamclient/callbacks/DisconnectedCallback;

    invoke-virtual {v1, v0, p1}, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackManager;->subscribe(Ljava/lang/Class;Lin/dragonbra/javasteam/util/compat/Consumer;)Ljava/io/Closeable;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    new-instance p1, Lcom/sourcevrport/platform/GModSteamAuth$Job$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0}, Lcom/sourcevrport/platform/GModSteamAuth$Job$$ExternalSyntheticLambda3;-><init>(Lcom/sourcevrport/platform/GModSteamAuth$Job;)V

    const-class v0, Lin/dragonbra/javasteam/steam/handlers/steamuser/callback/LoggedOffCallback;

    invoke-virtual {v1, v0, p1}, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackManager;->subscribe(Ljava/lang/Class;Lin/dragonbra/javasteam/util/compat/Consumer;)Ljava/io/Closeable;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    new-instance p1, Lcom/sourcevrport/platform/GModSteamAuth$Job$$ExternalSyntheticLambda4;

    invoke-direct {p1, p0, p2, p3}, Lcom/sourcevrport/platform/GModSteamAuth$Job$$ExternalSyntheticLambda4;-><init>(Lcom/sourcevrport/platform/GModSteamAuth$Job;J)V

    const-class p2, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/callback/TicketAuthCompleteCallback;

    invoke-virtual {v1, p2, p1}, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackManager;->subscribe(Ljava/lang/Class;Lin/dragonbra/javasteam/util/compat/Consumer;)Ljava/io/Closeable;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    new-instance p1, Ljava/lang/Thread;

    new-instance p2, Lcom/sourcevrport/platform/GModSteamAuth$Job$$ExternalSyntheticLambda5;

    invoke-direct {p2, p0}, Lcom/sourcevrport/platform/GModSteamAuth$Job$$ExternalSyntheticLambda5;-><init>(Lcom/sourcevrport/platform/GModSteamAuth$Job;)V

    const-string p3, "GMod Steam authentication callbacks"

    invoke-direct {p1, p2, p3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sourcevrport/platform/GModSteamAuth$Job;->pump:Ljava/lang/Thread;

    .line 104
    new-instance p2, Ljava/lang/Thread;

    new-instance p3, Lcom/sourcevrport/platform/GModSteamAuth$Job$$ExternalSyntheticLambda6;

    invoke-direct {p3, p0}, Lcom/sourcevrport/platform/GModSteamAuth$Job$$ExternalSyntheticLambda6;-><init>(Lcom/sourcevrport/platform/GModSteamAuth$Job;)V

    const-string v0, "GMod Steam authentication"

    invoke-direct {p2, p3, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/sourcevrport/platform/GModSteamAuth$Job;->worker:Ljava/lang/Thread;

    .line 105
    invoke-virtual {p1, v3}, Ljava/lang/Thread;->setDaemon(Z)V

    invoke-virtual {p2, v3}, Ljava/lang/Thread;->setDaemon(Z)V

    return-void
.end method

.method private synthetic lambda$new$0(Lin/dragonbra/javasteam/steam/steamclient/callbacks/ConnectedCallback;)V
    .registers 2

    .line 80
    iget-object p0, p0, Lcom/sourcevrport/platform/GModSteamAuth$Job;->connected:Ljava/util/concurrent/CompletableFuture;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    return-void
.end method

.method private synthetic lambda$new$1(Lin/dragonbra/javasteam/steam/handlers/steamuser/callback/LoggedOnCallback;)V
    .registers 2

    .line 81
    iget-object p0, p0, Lcom/sourcevrport/platform/GModSteamAuth$Job;->loggedOn:Ljava/util/concurrent/CompletableFuture;

    invoke-virtual {p1}, Lin/dragonbra/javasteam/steam/handlers/steamuser/callback/LoggedOnCallback;->getResult()Lin/dragonbra/javasteam/enums/EResult;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    return-void
.end method

.method private synthetic lambda$new$2(Lin/dragonbra/javasteam/steam/steamclient/callbacks/DisconnectedCallback;)V
    .registers 2

    .line 83
    iget-boolean p1, p0, Lcom/sourcevrport/platform/GModSteamAuth$Job;->closed:Z

    if-nez p1, :cond_9

    const-string p1, "Steam connection lost. Reconnect to the server."

    invoke-virtual {p0, p1}, Lcom/sourcevrport/platform/GModSteamAuth$Job;->fail(Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method private synthetic lambda$new$3(Lin/dragonbra/javasteam/steam/handlers/steamuser/callback/LoggedOffCallback;)V
    .registers 2

    .line 86
    iget-boolean p1, p0, Lcom/sourcevrport/platform/GModSteamAuth$Job;->closed:Z

    if-nez p1, :cond_9

    const-string p1, "Steam signed out. Sign in again in the launcher."

    invoke-virtual {p0, p1}, Lcom/sourcevrport/platform/GModSteamAuth$Job;->fail(Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method private synthetic lambda$new$4(JLin/dragonbra/javasteam/steam/handlers/steamauthticket/callback/TicketAuthCompleteCallback;)V
    .registers 8

    .line 89
    iget-object v0, p0, Lcom/sourcevrport/platform/GModSteamAuth$Job;->ticket:Lin/dragonbra/javasteam/steam/handlers/steamauthticket/TicketInfo;

    .line 90
    iget-boolean v1, p0, Lcom/sourcevrport/platform/GModSteamAuth$Job;->closed:Z

    if-nez v1, :cond_4b

    if-eqz v0, :cond_4b

    invoke-virtual {p3}, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/callback/TicketAuthCompleteCallback;->getTicketCRC()I

    move-result v1

    invoke-virtual {v0}, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/TicketInfo;->getTicketCRC$javasteam()J

    move-result-wide v2

    long-to-int v0, v2

    if-eq v1, v0, :cond_14

    goto :goto_4b

    :cond_14
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_27

    .line 91
    invoke-virtual {p3}, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/callback/TicketAuthCompleteCallback;->getSteamID()Lin/dragonbra/javasteam/types/SteamID;

    move-result-object v0

    invoke-virtual {v0}, Lin/dragonbra/javasteam/types/SteamID;->convertToUInt64()J

    move-result-wide v0

    cmp-long p1, v0, p1

    if-eqz p1, :cond_27

    return-void

    .line 92
    :cond_27
    invoke-virtual {p3}, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/callback/TicketAuthCompleteCallback;->getAuthSessionResponse()Lin/dragonbra/javasteam/enums/EAuthSessionResponse;

    move-result-object p1

    sget-object p2, Lin/dragonbra/javasteam/enums/EAuthSessionResponse;->OK:Lin/dragonbra/javasteam/enums/EAuthSessionResponse;

    if-ne p1, p2, :cond_33

    const/4 p1, 0x3

    iput p1, p0, Lcom/sourcevrport/platform/GModSteamAuth$Job;->state:I

    goto :goto_4b

    .line 93
    :cond_33
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Steam game-server authentication failed: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/callback/TicketAuthCompleteCallback;->getAuthSessionResponse()Lin/dragonbra/javasteam/enums/EAuthSessionResponse;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sourcevrport/platform/GModSteamAuth$Job;->fail(Ljava/lang/String;)V

    :cond_4b
    :goto_4b
    return-void
.end method

.method private synthetic lambda$new$5()V
    .registers 4

    .line 96
    :goto_0
    iget-boolean v0, p0, Lcom/sourcevrport/platform/GModSteamAuth$Job;->closed:Z

    if-nez v0, :cond_20

    .line 97
    :try_start_4
    iget-object v0, p0, Lcom/sourcevrport/platform/GModSteamAuth$Job;->callbacks:Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackManager;

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackManager;->runWaitCallbacks(J)Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_b} :catch_c

    goto :goto_0

    .line 99
    :catch_c
    iget-boolean v0, p0, Lcom/sourcevrport/platform/GModSteamAuth$Job;->closed:Z

    if-nez v0, :cond_20

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-eqz v0, :cond_1b

    goto :goto_20

    .line 100
    :cond_1b
    const-string v0, "Could not process Steam authentication. Reconnect to the server."

    invoke-virtual {p0, v0}, Lcom/sourcevrport/platform/GModSteamAuth$Job;->fail(Ljava/lang/String;)V

    :cond_20
    :goto_20
    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .registers 4

    monitor-enter p0

    .line 145
    :try_start_1
    iget-boolean v0, p0, Lcom/sourcevrport/platform/GModSteamAuth$Job;->closed:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_18

    if-eqz v0, :cond_7

    monitor-exit p0

    return-void

    :cond_7
    const/4 v0, 0x1

    .line 146
    :try_start_8
    iput-boolean v0, p0, Lcom/sourcevrport/platform/GModSteamAuth$Job;->closed:Z

    .line 147
    iget-object v0, p0, Lcom/sourcevrport/platform/GModSteamAuth$Job;->cookie:[B

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/sourcevrport/platform/GModSteamAuth$Job;->cookie:[B

    const/4 v2, 0x0

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([BB)V

    iput-object v1, p0, Lcom/sourcevrport/platform/GModSteamAuth$Job;->cookie:[B

    goto :goto_1a

    :catchall_18
    move-exception v0

    goto :goto_52

    .line 148
    :cond_1a
    :goto_1a
    iget-object v0, p0, Lcom/sourcevrport/platform/GModSteamAuth$Job;->ticket:Lin/dragonbra/javasteam/steam/handlers/steamauthticket/TicketInfo;
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_18

    if-eqz v0, :cond_25

    :try_start_1e
    iget-object v0, p0, Lcom/sourcevrport/platform/GModSteamAuth$Job;->ticket:Lin/dragonbra/javasteam/steam/handlers/steamauthticket/TicketInfo;

    invoke-virtual {v0}, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/TicketInfo;->close()V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_23} :catch_23
    .catchall {:try_start_1e .. :try_end_23} :catchall_18

    :catch_23
    :try_start_23
    iput-object v1, p0, Lcom/sourcevrport/platform/GModSteamAuth$Job;->ticket:Lin/dragonbra/javasteam/steam/handlers/steamauthticket/TicketInfo;

    .line 149
    :cond_25
    iget-object v0, p0, Lcom/sourcevrport/platform/GModSteamAuth$Job;->client:Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    invoke-virtual {v0}, Lin/dragonbra/javasteam/steam/CMClient;->disconnect()V

    iget-object v0, p0, Lcom/sourcevrport/platform/GModSteamAuth$Job;->pump:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 150
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/sourcevrport/platform/GModSteamAuth$Job;->worker:Ljava/lang/Thread;

    if-eq v0, v1, :cond_3a

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 151
    :cond_3a
    iget-object v0, p0, Lcom/sourcevrport/platform/GModSteamAuth$Job;->subscriptions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catch_40
    :goto_40
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_50

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/Closeable;
    :try_end_4c
    .catchall {:try_start_23 .. :try_end_4c} :catchall_18

    :try_start_4c
    invoke-interface {v1}, Ljava/io/Closeable;->close()V
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_4f} :catch_40
    .catchall {:try_start_4c .. :try_end_4f} :catchall_18

    goto :goto_40

    .line 152
    :cond_50
    monitor-exit p0

    return-void

    :goto_52
    :try_start_52
    monitor-exit p0
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_18

    throw v0
.end method

.method public fail(Ljava/lang/String;)V
    .registers 3

    .line 140
    iput-object p1, p0, Lcom/sourcevrport/platform/GModSteamAuth$Job;->failure:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/sourcevrport/platform/GModSteamAuth$Job;->state:I

    .line 141
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 142
    iget-object p1, p0, Lcom/sourcevrport/platform/GModSteamAuth$Job;->connected:Ljava/util/concurrent/CompletableFuture;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/CompletableFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    iget-object p0, p0, Lcom/sourcevrport/platform/GModSteamAuth$Job;->loggedOn:Ljava/util/concurrent/CompletableFuture;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CompletableFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public prepare()V
    .registers 7

    .line 109
    :try_start_0
    invoke-static {}, Lcom/sourcevrport/platform/GModSteamAuth;->-$$Nest$sfgetidentity()Lcom/sourcevrport/platform/GModServerDirectory$IdentityProvider;

    move-result-object v0

    if-eqz v0, :cond_b6

    .line 111
    invoke-interface {v0}, Lcom/sourcevrport/platform/GModServerDirectory$IdentityProvider;->savedIdentity()Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;

    move-result-object v0

    if-eqz v0, :cond_ae

    .line 113
    iget-boolean v1, p0, Lcom/sourcevrport/platform/GModSteamAuth$Job;->closed:Z

    if-eqz v1, :cond_11

    return-void

    .line 114
    :cond_11
    iget-object v1, p0, Lcom/sourcevrport/platform/GModSteamAuth$Job;->pump:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    iget-object v1, p0, Lcom/sourcevrport/platform/GModSteamAuth$Job;->client:Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    invoke-virtual {v1}, Lin/dragonbra/javasteam/steam/CMClient;->connect()V

    iget-object v1, p0, Lcom/sourcevrport/platform/GModSteamAuth$Job;->connected:Ljava/util/concurrent/CompletableFuture;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x1e

    invoke-virtual {v1, v3, v4, v2}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 115
    iget-boolean v1, p0, Lcom/sourcevrport/platform/GModSteamAuth$Job;->closed:Z

    if-eqz v1, :cond_29

    return-void

    .line 116
    :cond_29
    iget-object v1, p0, Lcom/sourcevrport/platform/GModSteamAuth$Job;->client:Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    const-class v3, Lin/dragonbra/javasteam/steam/handlers/steamuser/SteamUser;

    invoke-virtual {v1, v3}, Lin/dragonbra/javasteam/steam/steamclient/SteamClient;->getHandler(Ljava/lang/Class;)Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;

    move-result-object v1

    check-cast v1, Lin/dragonbra/javasteam/steam/handlers/steamuser/SteamUser;

    invoke-virtual {v1, v0}, Lin/dragonbra/javasteam/steam/handlers/steamuser/SteamUser;->logOn(Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;)V

    .line 117
    iget-object v1, p0, Lcom/sourcevrport/platform/GModSteamAuth$Job;->loggedOn:Ljava/util/concurrent/CompletableFuture;

    const-wide/16 v3, 0x2d

    invoke-virtual {v1, v3, v4, v2}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lin/dragonbra/javasteam/enums/EResult;

    const/4 v5, 0x0

    .line 118
    invoke-virtual {v0, v5}, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;->setAccessToken(Ljava/lang/String;)V

    .line 119
    sget-object v0, Lin/dragonbra/javasteam/enums/EResult;->OK:Lin/dragonbra/javasteam/enums/EResult;

    if-ne v1, v0, :cond_92

    .line 120
    iget-boolean v0, p0, Lcom/sourcevrport/platform/GModSteamAuth$Job;->closed:Z

    if-eqz v0, :cond_4d

    return-void

    .line 121
    :cond_4d
    iget-object v0, p0, Lcom/sourcevrport/platform/GModSteamAuth$Job;->client:Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    invoke-virtual {v0}, Lin/dragonbra/javasteam/steam/CMClient;->getSteamID()Lin/dragonbra/javasteam/types/SteamID;

    move-result-object v0

    invoke-virtual {v0}, Lin/dragonbra/javasteam/types/SteamID;->convertToUInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sourcevrport/platform/GModSteamAuth$Job;->userID:J

    .line 122
    iget-object v0, p0, Lcom/sourcevrport/platform/GModSteamAuth$Job;->client:Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    const-class v1, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket;

    invoke-virtual {v0, v1}, Lin/dragonbra/javasteam/steam/steamclient/SteamClient;->getHandler(Ljava/lang/Class;)Lin/dragonbra/javasteam/steam/handlers/ClientMsgHandler;

    move-result-object v0

    check-cast v0, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket;

    const/16 v1, 0xfa0

    invoke-virtual {v0, v1}, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/SteamAuthTicket;->getAuthSessionTicket(I)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    invoke-virtual {v0, v3, v4, v2}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/TicketInfo;

    .line 123
    monitor-enter p0
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_70} :catch_90

    .line 124
    :try_start_70
    iget-boolean v1, p0, Lcom/sourcevrport/platform/GModSteamAuth$Job;->closed:Z

    if-eqz v1, :cond_7b

    invoke-virtual {v0}, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/TicketInfo;->close()V

    monitor-exit p0

    return-void

    :catchall_79
    move-exception v0

    goto :goto_8e

    .line 125
    :cond_7b
    iput-object v0, p0, Lcom/sourcevrport/platform/GModSteamAuth$Job;->ticket:Lin/dragonbra/javasteam/steam/handlers/steamauthticket/TicketInfo;

    .line 126
    iget-wide v1, p0, Lcom/sourcevrport/platform/GModSteamAuth$Job;->userID:J

    invoke-virtual {v0}, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/TicketInfo;->getTicket()[B

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/sourcevrport/platform/GModSteamAuth;->connectionCookie(J[B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/sourcevrport/platform/GModSteamAuth$Job;->cookie:[B

    const/4 v0, 0x2

    .line 127
    iput v0, p0, Lcom/sourcevrport/platform/GModSteamAuth$Job;->state:I

    .line 128
    monitor-exit p0

    goto :goto_d3

    :goto_8e
    monitor-exit p0
    :try_end_8f
    .catchall {:try_start_70 .. :try_end_8f} :catchall_79

    :try_start_8f
    throw v0

    :catch_90
    move-exception v0

    goto :goto_be

    .line 119
    :cond_92
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Steam sign-in failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ". Sign in again in the launcher."

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_ae
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Sign in to Steam in the launcher and remember the session to join Steam servers."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :cond_b6
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Steam sign-in is unavailable in this game session. Restart the app."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_be
    .catch Ljava/lang/Exception; {:try_start_8f .. :try_end_be} :catch_90

    .line 130
    :goto_be
    iget-boolean v1, p0, Lcom/sourcevrport/platform/GModSteamAuth$Job;->closed:Z

    if-nez v1, :cond_d3

    .line 133
    instance-of v1, v0, Ljava/io/IOException;

    if-eqz v1, :cond_cb

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_cd

    .line 134
    :cond_cb
    const-string v0, "Could not obtain a Steam game session ticket. Check that this account owns Garry\'s Mod and sign in again."

    .line 133
    :goto_cd
    invoke-virtual {p0, v0}, Lcom/sourcevrport/platform/GModSteamAuth$Job;->fail(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p0}, Lcom/sourcevrport/platform/GModSteamAuth$Job;->close()V

    :cond_d3
    :goto_d3
    return-void
.end method

###### Class com.sourcevrport.platform.GModSteamAuth$Job$$ExternalSyntheticLambda0 (com.sourcevrport.platform.GModSteamAuth$Job$$ExternalSyntheticLambda0)
.class public final synthetic Lcom/sourcevrport/platform/GModSteamAuth$Job$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lin/dragonbra/javasteam/util/compat/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/sourcevrport/platform/GModSteamAuth$Job;


# direct methods
.method public synthetic constructor <init>(Lcom/sourcevrport/platform/GModSteamAuth$Job;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sourcevrport/platform/GModSteamAuth$Job$$ExternalSyntheticLambda0;->f$0:Lcom/sourcevrport/platform/GModSteamAuth$Job;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/sourcevrport/platform/GModSteamAuth$Job$$ExternalSyntheticLambda0;->f$0:Lcom/sourcevrport/platform/GModSteamAuth$Job;

    check-cast p1, Lin/dragonbra/javasteam/steam/steamclient/callbacks/ConnectedCallback;

    invoke-static {p0, p1}, Lcom/sourcevrport/platform/GModSteamAuth$Job;->$r8$lambda$GLKj6dh-pnQWeLWYX9zKtJvv52k(Lcom/sourcevrport/platform/GModSteamAuth$Job;Lin/dragonbra/javasteam/steam/steamclient/callbacks/ConnectedCallback;)V

    return-void
.end method

###### Class com.sourcevrport.platform.GModSteamAuth$Job$$ExternalSyntheticLambda1 (com.sourcevrport.platform.GModSteamAuth$Job$$ExternalSyntheticLambda1)
.class public final synthetic Lcom/sourcevrport/platform/GModSteamAuth$Job$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lin/dragonbra/javasteam/util/compat/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/sourcevrport/platform/GModSteamAuth$Job;


# direct methods
.method public synthetic constructor <init>(Lcom/sourcevrport/platform/GModSteamAuth$Job;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sourcevrport/platform/GModSteamAuth$Job$$ExternalSyntheticLambda1;->f$0:Lcom/sourcevrport/platform/GModSteamAuth$Job;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/sourcevrport/platform/GModSteamAuth$Job$$ExternalSyntheticLambda1;->f$0:Lcom/sourcevrport/platform/GModSteamAuth$Job;

    check-cast p1, Lin/dragonbra/javasteam/steam/handlers/steamuser/callback/LoggedOnCallback;

    invoke-static {p0, p1}, Lcom/sourcevrport/platform/GModSteamAuth$Job;->$r8$lambda$elFPqUvOLozNlirtc0NELxHy2Ac(Lcom/sourcevrport/platform/GModSteamAuth$Job;Lin/dragonbra/javasteam/steam/handlers/steamuser/callback/LoggedOnCallback;)V

    return-void
.end method

###### Class com.sourcevrport.platform.GModSteamAuth$Job$$ExternalSyntheticLambda2 (com.sourcevrport.platform.GModSteamAuth$Job$$ExternalSyntheticLambda2)
.class public final synthetic Lcom/sourcevrport/platform/GModSteamAuth$Job$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lin/dragonbra/javasteam/util/compat/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/sourcevrport/platform/GModSteamAuth$Job;


# direct methods
.method public synthetic constructor <init>(Lcom/sourcevrport/platform/GModSteamAuth$Job;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sourcevrport/platform/GModSteamAuth$Job$$ExternalSyntheticLambda2;->f$0:Lcom/sourcevrport/platform/GModSteamAuth$Job;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/sourcevrport/platform/GModSteamAuth$Job$$ExternalSyntheticLambda2;->f$0:Lcom/sourcevrport/platform/GModSteamAuth$Job;

    check-cast p1, Lin/dragonbra/javasteam/steam/steamclient/callbacks/DisconnectedCallback;

    invoke-static {p0, p1}, Lcom/sourcevrport/platform/GModSteamAuth$Job;->$r8$lambda$2JpCjetpcsivGu_BvGMa0yyHGXM(Lcom/sourcevrport/platform/GModSteamAuth$Job;Lin/dragonbra/javasteam/steam/steamclient/callbacks/DisconnectedCallback;)V

    return-void
.end method

###### Class com.sourcevrport.platform.GModSteamAuth$Job$$ExternalSyntheticLambda3 (com.sourcevrport.platform.GModSteamAuth$Job$$ExternalSyntheticLambda3)
.class public final synthetic Lcom/sourcevrport/platform/GModSteamAuth$Job$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lin/dragonbra/javasteam/util/compat/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/sourcevrport/platform/GModSteamAuth$Job;


# direct methods
.method public synthetic constructor <init>(Lcom/sourcevrport/platform/GModSteamAuth$Job;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sourcevrport/platform/GModSteamAuth$Job$$ExternalSyntheticLambda3;->f$0:Lcom/sourcevrport/platform/GModSteamAuth$Job;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/sourcevrport/platform/GModSteamAuth$Job$$ExternalSyntheticLambda3;->f$0:Lcom/sourcevrport/platform/GModSteamAuth$Job;

    check-cast p1, Lin/dragonbra/javasteam/steam/handlers/steamuser/callback/LoggedOffCallback;

    invoke-static {p0, p1}, Lcom/sourcevrport/platform/GModSteamAuth$Job;->$r8$lambda$l5ha6X7vtJ8ggGtw4rK1fB796Mw(Lcom/sourcevrport/platform/GModSteamAuth$Job;Lin/dragonbra/javasteam/steam/handlers/steamuser/callback/LoggedOffCallback;)V

    return-void
.end method

###### Class com.sourcevrport.platform.GModSteamAuth$Job$$ExternalSyntheticLambda4 (com.sourcevrport.platform.GModSteamAuth$Job$$ExternalSyntheticLambda4)
.class public final synthetic Lcom/sourcevrport/platform/GModSteamAuth$Job$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lin/dragonbra/javasteam/util/compat/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/sourcevrport/platform/GModSteamAuth$Job;

.field public final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(Lcom/sourcevrport/platform/GModSteamAuth$Job;J)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sourcevrport/platform/GModSteamAuth$Job$$ExternalSyntheticLambda4;->f$0:Lcom/sourcevrport/platform/GModSteamAuth$Job;

    iput-wide p2, p0, Lcom/sourcevrport/platform/GModSteamAuth$Job$$ExternalSyntheticLambda4;->f$1:J

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 5

    .line 0
    iget-object v0, p0, Lcom/sourcevrport/platform/GModSteamAuth$Job$$ExternalSyntheticLambda4;->f$0:Lcom/sourcevrport/platform/GModSteamAuth$Job;

    iget-wide v1, p0, Lcom/sourcevrport/platform/GModSteamAuth$Job$$ExternalSyntheticLambda4;->f$1:J

    check-cast p1, Lin/dragonbra/javasteam/steam/handlers/steamauthticket/callback/TicketAuthCompleteCallback;

    invoke-static {v0, v1, v2, p1}, Lcom/sourcevrport/platform/GModSteamAuth$Job;->$r8$lambda$PVq9ivGwlMIVgcMd5I_QvH8jiSU(Lcom/sourcevrport/platform/GModSteamAuth$Job;JLin/dragonbra/javasteam/steam/handlers/steamauthticket/callback/TicketAuthCompleteCallback;)V

    return-void
.end method

###### Class com.sourcevrport.platform.GModSteamAuth$Job$$ExternalSyntheticLambda5 (com.sourcevrport.platform.GModSteamAuth$Job$$ExternalSyntheticLambda5)
.class public final synthetic Lcom/sourcevrport/platform/GModSteamAuth$Job$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/sourcevrport/platform/GModSteamAuth$Job;


# direct methods
.method public synthetic constructor <init>(Lcom/sourcevrport/platform/GModSteamAuth$Job;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sourcevrport/platform/GModSteamAuth$Job$$ExternalSyntheticLambda5;->f$0:Lcom/sourcevrport/platform/GModSteamAuth$Job;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/sourcevrport/platform/GModSteamAuth$Job$$ExternalSyntheticLambda5;->f$0:Lcom/sourcevrport/platform/GModSteamAuth$Job;

    invoke-static {p0}, Lcom/sourcevrport/platform/GModSteamAuth$Job;->$r8$lambda$x9K11mrQYIBLFSaQcKN__PCM33c(Lcom/sourcevrport/platform/GModSteamAuth$Job;)V

    return-void
.end method

###### Class com.sourcevrport.platform.GModSteamAuth$Job$$ExternalSyntheticLambda6 (com.sourcevrport.platform.GModSteamAuth$Job$$ExternalSyntheticLambda6)
.class public final synthetic Lcom/sourcevrport/platform/GModSteamAuth$Job$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/sourcevrport/platform/GModSteamAuth$Job;


# direct methods
.method public synthetic constructor <init>(Lcom/sourcevrport/platform/GModSteamAuth$Job;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sourcevrport/platform/GModSteamAuth$Job$$ExternalSyntheticLambda6;->f$0:Lcom/sourcevrport/platform/GModSteamAuth$Job;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/sourcevrport/platform/GModSteamAuth$Job$$ExternalSyntheticLambda6;->f$0:Lcom/sourcevrport/platform/GModSteamAuth$Job;

    invoke-virtual {p0}, Lcom/sourcevrport/platform/GModSteamAuth$Job;->prepare()V

    return-void
.end method
