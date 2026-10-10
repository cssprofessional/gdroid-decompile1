###### Class com.gmodvr.flat.SteamDownloadService (com.gmodvr.flat.SteamDownloadService)
.class public final Lcom/gmodvr/flat/SteamDownloadService;
.super Landroid/app/Service;
.source "SteamDownloadService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gmodvr/flat/SteamDownloadService$Credentials;
    }
.end annotation


# static fields
.field private static final CHANNEL:Ljava/lang/String; = "steam_downloads"

.field private static final NOTIFICATION:I = 0x106a

.field static final PREFS:Ljava/lang/String; = "steam_download_v1"

.field private static final REVIEW_WAIT_MINUTES:J = 0xfL

.field static final STAGING_DIR:Ljava/lang/String; = ".steam-downloads"

.field private static volatile accountMessage:Ljava/lang/String; = ""

.field private static credentials:Lcom/gmodvr/flat/SteamDownloadService$Credentials;

.field private static volatile discarding:Z

.field private static volatile instance:Lcom/gmodvr/flat/SteamDownloadService;

.field private static volatile starting:Z


# instance fields
.field private accountOnly:Z

.field private volatile challenge:Ljava/lang/String;

.field private volatile completed:J

.field private volatile currentItem:Lcom/gmodvr/flat/WorkshopQueue$Entry;

.field private volatile guard:Ljava/util/concurrent/CompletableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private volatile installing:Z

.field private volatile itemCount:I

.field private volatile itemDone:J

.field private volatile itemIndex:I

.field private volatile itemInstalling:Z

.field private volatile itemTotal:J

.field private lastNotification:J

.field private volatile liveQueue:Lcom/gmodvr/flat/WorkshopQueue;

.field private volatile message:Ljava/lang/String;

.field private volatile pauseRequested:Z

.field private volatile selection:Ljava/util/concurrent/CompletableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private volatile session:Lcom/gmodvr/flat/SteamSession;

.field private volatile total:J

.field private wakeLock:Landroid/os/PowerManager$WakeLock;

.field private volatile worker:Ljava/lang/Thread;


# direct methods
.method public static synthetic $r8$lambda$2dEU8VHxNVeZDzrRuQo-bcGXdNM(Lcom/gmodvr/flat/SteamDownloadService;[JLjava/lang/String;JJ)V
    .registers 7

    .line 0
    invoke-direct/range {p0 .. p6}, Lcom/gmodvr/flat/SteamDownloadService;->lambda$workshop$4([JLjava/lang/String;JJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$NM9Pz8b19_zR1X--F23b1DvtoHw(Lcom/gmodvr/flat/SteamDownloadService;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gmodvr/flat/SteamDownloadService;->lambda$workshop$5(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$TSMs0BtSP2-11ifYGrvGkxlzXfA(Lcom/gmodvr/flat/SteamDownloadService;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gmodvr/flat/SteamDownloadService;->lambda$authenticate$3(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UNvMrh5sxtjaM4pAOnwZ0em8vhE(Lcom/gmodvr/flat/SteamDownloadService;Lcom/gmodvr/flat/SteamDownloadService$Credentials;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gmodvr/flat/SteamDownloadService;->lambda$onStartCommand$2(Lcom/gmodvr/flat/SteamDownloadService$Credentials;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_-ayEPkMVl-HE1R7WXXpWqxaO5c(Ljava/util/function/Consumer;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/gmodvr/flat/SteamDownloadService;->lambda$discard$0(Ljava/util/function/Consumer;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cNG6oziEg06jSR6PQ9aGntDqlOo(Lcom/gmodvr/flat/SteamDownloadService;Ljava/lang/String;JJ)V
    .registers 6

    .line 0
    invoke-direct/range {p0 .. p5}, Lcom/gmodvr/flat/SteamDownloadService;->update(Ljava/lang/String;JJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$lVuFqKUAVaRiCsAclDBhkQkPcyg(Ljava/lang/String;Landroid/content/Context;Ljava/util/function/Consumer;)V
    .registers 3

    .line 0
    invoke-static {p0, p1, p2}, Lcom/gmodvr/flat/SteamDownloadService;->lambda$discard$1(Ljava/lang/String;Landroid/content/Context;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetpauseRequested(Lcom/gmodvr/flat/SteamDownloadService;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/gmodvr/flat/SteamDownloadService;->pauseRequested:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputcurrentItem(Lcom/gmodvr/flat/SteamDownloadService;Lcom/gmodvr/flat/WorkshopQueue$Entry;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/gmodvr/flat/SteamDownloadService;->currentItem:Lcom/gmodvr/flat/WorkshopQueue$Entry;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputitemCount(Lcom/gmodvr/flat/SteamDownloadService;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/gmodvr/flat/SteamDownloadService;->itemCount:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputitemDone(Lcom/gmodvr/flat/SteamDownloadService;J)V
    .registers 3

    .line 0
    iput-wide p1, p0, Lcom/gmodvr/flat/SteamDownloadService;->itemDone:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputitemIndex(Lcom/gmodvr/flat/SteamDownloadService;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/gmodvr/flat/SteamDownloadService;->itemIndex:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputitemInstalling(Lcom/gmodvr/flat/SteamDownloadService;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/gmodvr/flat/SteamDownloadService;->itemInstalling:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputitemTotal(Lcom/gmodvr/flat/SteamDownloadService;J)V
    .registers 3

    .line 0
    iput-wide p1, p0, Lcom/gmodvr/flat/SteamDownloadService;->itemTotal:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcode(Lcom/gmodvr/flat/SteamDownloadService;Ljava/lang/String;)Ljava/util/concurrent/CompletableFuture;
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gmodvr/flat/SteamDownloadService;->code(Ljava/lang/String;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mupdate(Lcom/gmodvr/flat/SteamDownloadService;Ljava/lang/String;JJ)V
    .registers 6

    .line 0
    invoke-direct/range {p0 .. p5}, Lcom/gmodvr/flat/SteamDownloadService;->update(Ljava/lang/String;JJ)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 12
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/gmodvr/flat/SteamDownloadService;->challenge:Ljava/lang/String;

    .line 31
    const-string v0, "Starting Steam download\u2026"

    iput-object v0, p0, Lcom/gmodvr/flat/SteamDownloadService;->message:Ljava/lang/String;

    return-void
.end method

.method public static activationPending(Landroid/content/Context;)Z
    .registers 1

    .line 197
    invoke-static {p0}, Lcom/gmodvr/flat/SteamInstallBridge;->pending(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static active()Z
    .registers 1

    .line 132
    sget-boolean v0, Lcom/gmodvr/flat/SteamDownloadService;->starting:Z

    if-nez v0, :cond_b

    sget-object v0, Lcom/gmodvr/flat/SteamDownloadService;->instance:Lcom/gmodvr/flat/SteamDownloadService;

    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method public static anonymousWorkshop(Lcom/gmodvr/flat/GameContentProfile;Ljava/lang/String;)Z
    .registers 3

    .line 59
    sget-object v0, Lcom/gmodvr/flat/GameContentProfile;->GARRYSMOD:Lcom/gmodvr/flat/GameContentProfile;

    if-ne p0, v0, :cond_c

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method private authenticate(Lcom/gmodvr/flat/SteamSession;Lcom/gmodvr/flat/SteamDownloadService$Credentials;)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 307
    const-string v0, ""

    new-instance v1, Lcom/gmodvr/flat/SteamCredentialStore;

    invoke-direct {v1, p0}, Lcom/gmodvr/flat/SteamCredentialStore;-><init>(Landroid/content/Context;)V

    .line 308
    iget-object v2, p2, Lcom/gmodvr/flat/SteamDownloadService$Credentials;->password:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_17

    iget-object v2, p2, Lcom/gmodvr/flat/SteamDownloadService$Credentials;->username:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/gmodvr/flat/SteamCredentialStore;->token(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_15
    move-object v6, v2

    goto :goto_19

    :cond_17
    const/4 v2, 0x0

    goto :goto_15

    :goto_19
    if-eqz v6, :cond_21

    .line 309
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_29

    :cond_21
    iget-object v2, p2, Lcom/gmodvr/flat/SteamDownloadService$Credentials;->password:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5c

    .line 311
    :cond_29
    new-instance v8, Lcom/gmodvr/flat/SteamDownloadService$1;

    invoke-direct {v8, p0}, Lcom/gmodvr/flat/SteamDownloadService$1;-><init>(Lcom/gmodvr/flat/SteamDownloadService;)V

    .line 324
    :try_start_2e
    iget-object v4, p2, Lcom/gmodvr/flat/SteamDownloadService$Credentials;->username:Ljava/lang/String;

    iget-object v5, p2, Lcom/gmodvr/flat/SteamDownloadService$Credentials;->password:Ljava/lang/String;

    iget-boolean v7, p2, Lcom/gmodvr/flat/SteamDownloadService$Credentials;->remember:Z

    new-instance v9, Lcom/gmodvr/flat/SteamDownloadService$$ExternalSyntheticLambda3;

    invoke-direct {v9, p0}, Lcom/gmodvr/flat/SteamDownloadService$$ExternalSyntheticLambda3;-><init>(Lcom/gmodvr/flat/SteamDownloadService;)V

    move-object v3, p1

    invoke-virtual/range {v3 .. v9}, Lcom/gmodvr/flat/SteamSession;->login(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLin/dragonbra/javasteam/steam/authentication/IAuthenticator;Lcom/gmodvr/flat/SteamSession$Status;)Lin/dragonbra/javasteam/steam/authentication/AuthPollResult;

    move-result-object p0
    :try_end_3e
    .catchall {:try_start_2e .. :try_end_3e} :catchall_58

    .line 325
    iput-object v0, p2, Lcom/gmodvr/flat/SteamDownloadService$Credentials;->password:Ljava/lang/String;

    .line 326
    iget-boolean p1, p2, Lcom/gmodvr/flat/SteamDownloadService$Credentials;->remember:Z

    if-eqz p1, :cond_52

    if-eqz p0, :cond_52

    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/authentication/AuthPollResult;->getAccountName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/authentication/AuthPollResult;->getRefreshToken()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p1, p0}, Lcom/gmodvr/flat/SteamCredentialStore;->save(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_57

    :cond_52
    if-nez p1, :cond_57

    .line 327
    invoke-virtual {v1}, Lcom/gmodvr/flat/SteamCredentialStore;->clear()V

    :cond_57
    :goto_57
    return-void

    :catchall_58
    move-exception p0

    .line 325
    iput-object v0, p2, Lcom/gmodvr/flat/SteamDownloadService$Credentials;->password:Ljava/lang/String;

    throw p0

    .line 310
    :cond_5c
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Enter your Steam password to sign in"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static awaitingSelection()Z
    .registers 2

    .line 99
    sget-object v0, Lcom/gmodvr/flat/SteamDownloadService;->instance:Lcom/gmodvr/flat/SteamDownloadService;

    if-eqz v0, :cond_12

    .line 100
    iget-object v1, v0, Lcom/gmodvr/flat/SteamDownloadService;->selection:Ljava/util/concurrent/CompletableFuture;

    if-eqz v1, :cond_12

    iget-object v0, v0, Lcom/gmodvr/flat/SteamDownloadService;->selection:Ljava/util/concurrent/CompletableFuture;

    invoke-virtual {v0}, Ljava/util/concurrent/CompletableFuture;->isDone()Z

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method private beginInstall(Ljava/lang/String;)V
    .registers 9

    const/4 v0, 0x1

    .line 559
    iput-boolean v0, p0, Lcom/gmodvr/flat/SteamDownloadService;->installing:Z

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    .line 560
    invoke-direct/range {v1 .. v6}, Lcom/gmodvr/flat/SteamDownloadService;->update(Ljava/lang/String;JJ)V

    .line 561
    const-string v0, "installing"

    invoke-direct {p0, v0, p1}, Lcom/gmodvr/flat/SteamDownloadService;->persist(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static canPause()Z
    .registers 1

    .line 199
    invoke-static {}, Lcom/gmodvr/flat/SteamDownloadService;->active()Z

    move-result v0

    if-eqz v0, :cond_12

    sget-object v0, Lcom/gmodvr/flat/SteamDownloadService;->instance:Lcom/gmodvr/flat/SteamDownloadService;

    if-eqz v0, :cond_12

    sget-object v0, Lcom/gmodvr/flat/SteamDownloadService;->instance:Lcom/gmodvr/flat/SteamDownloadService;

    iget-boolean v0, v0, Lcom/gmodvr/flat/SteamDownloadService;->installing:Z

    if-nez v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method public static challenge()Ljava/lang/String;
    .registers 1

    .line 198
    sget-object v0, Lcom/gmodvr/flat/SteamDownloadService;->instance:Lcom/gmodvr/flat/SteamDownloadService;

    if-nez v0, :cond_7

    const-string v0, ""

    goto :goto_b

    :cond_7
    sget-object v0, Lcom/gmodvr/flat/SteamDownloadService;->instance:Lcom/gmodvr/flat/SteamDownloadService;

    iget-object v0, v0, Lcom/gmodvr/flat/SteamDownloadService;->challenge:Ljava/lang/String;

    :goto_b
    return-object v0
.end method

.method public static choose(Z)Z
    .registers 2

    .line 105
    sget-object v0, Lcom/gmodvr/flat/SteamDownloadService;->instance:Lcom/gmodvr/flat/SteamDownloadService;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_8

    .line 106
    :cond_6
    iget-object v0, v0, Lcom/gmodvr/flat/SteamDownloadService;->selection:Ljava/util/concurrent/CompletableFuture;

    :goto_8
    if-eqz v0, :cond_16

    .line 107
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_16

    const/4 p0, 0x1

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    :goto_17
    return p0
.end method

.method public static clearSignInMessage()V
    .registers 1

    .line 139
    const-string v0, ""

    sput-object v0, Lcom/gmodvr/flat/SteamDownloadService;->accountMessage:Ljava/lang/String;

    return-void
.end method

.method private code(Ljava/lang/String;)Ljava/util/concurrent/CompletableFuture;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 553
    iput-object p1, p0, Lcom/gmodvr/flat/SteamDownloadService;->challenge:Ljava/lang/String;

    .line 554
    new-instance p1, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {p1}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/SteamDownloadService;->guard:Ljava/util/concurrent/CompletableFuture;

    .line 555
    iget-object p0, p0, Lcom/gmodvr/flat/SteamDownloadService;->guard:Ljava/util/concurrent/CompletableFuture;

    return-object p0
.end method

.method public static completed(Landroid/content/Context;)J
    .registers 4

    .line 217
    invoke-static {}, Lcom/gmodvr/flat/SteamDownloadService;->active()Z

    move-result v0

    if-eqz v0, :cond_f

    sget-object v0, Lcom/gmodvr/flat/SteamDownloadService;->instance:Lcom/gmodvr/flat/SteamDownloadService;

    if-eqz v0, :cond_f

    sget-object p0, Lcom/gmodvr/flat/SteamDownloadService;->instance:Lcom/gmodvr/flat/SteamDownloadService;

    iget-wide v0, p0, Lcom/gmodvr/flat/SteamDownloadService;->completed:J

    goto :goto_1b

    :cond_f
    invoke-static {p0}, Lcom/gmodvr/flat/SteamDownloadService;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "completed"

    const-wide/16 v1, 0x0

    invoke-interface {p0, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    :goto_1b
    return-wide v0
.end method

.method public static currentItem()Lcom/gmodvr/flat/WorkshopQueue$Entry;
    .registers 1

    .line 118
    sget-object v0, Lcom/gmodvr/flat/SteamDownloadService;->instance:Lcom/gmodvr/flat/SteamDownloadService;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_8

    .line 119
    :cond_6
    iget-object v0, v0, Lcom/gmodvr/flat/SteamDownloadService;->currentItem:Lcom/gmodvr/flat/WorkshopQueue$Entry;

    :goto_8
    return-object v0
.end method

.method public static discard(Landroid/content/Context;Ljava/util/function/Consumer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 170
    const-class v0, Lcom/gmodvr/flat/SteamDownloadService;

    monitor-enter v0

    .line 171
    :try_start_3
    invoke-static {}, Lcom/gmodvr/flat/SteamDownloadService;->active()Z

    move-result v1

    if-nez v1, :cond_34

    sget-boolean v1, Lcom/gmodvr/flat/SteamDownloadService;->discarding:Z

    if-eqz v1, :cond_e

    goto :goto_34

    :cond_e
    const/4 v1, 0x1

    .line 172
    sput-boolean v1, Lcom/gmodvr/flat/SteamDownloadService;->discarding:Z

    .line 173
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_32

    .line 174
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 175
    invoke-static {p0}, Lcom/gmodvr/flat/SteamDownloadService;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "token"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 176
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/gmodvr/flat/SteamDownloadService$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0, p0, p1}, Lcom/gmodvr/flat/SteamDownloadService$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Landroid/content/Context;Ljava/util/function/Consumer;)V

    const-string p0, "Steam staging cleanup"

    invoke-direct {v1, v2, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 194
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void

    :catchall_32
    move-exception p0

    goto :goto_36

    .line 171
    :cond_34
    :goto_34
    :try_start_34
    monitor-exit v0

    return-void

    .line 173
    :goto_36
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_32

    throw p0
.end method

.method public static discarding()Z
    .registers 1

    .line 133
    sget-boolean v0, Lcom/gmodvr/flat/SteamDownloadService;->discarding:Z

    return v0
.end method

.method public static hasQueue(Landroid/content/Context;)Z
    .registers 4

    .line 93
    invoke-static {}, Lcom/gmodvr/flat/SteamDownloadService;->liveQueue()Lcom/gmodvr/flat/WorkshopQueue;

    move-result-object v0

    if-nez v0, :cond_35

    invoke-static {p0}, Lcom/gmodvr/flat/SteamDownloadService;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "token"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_33

    .line 94
    invoke-static {p0}, Lcom/gmodvr/flat/SteamDownloadService;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "workshop"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_33

    invoke-static {p0}, Lcom/gmodvr/flat/SteamDownloadService;->queueFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result p0

    if-eqz p0, :cond_33

    goto :goto_35

    :cond_33
    const/4 p0, 0x0

    goto :goto_36

    :cond_35
    :goto_35
    const/4 p0, 0x1

    :goto_36
    return p0
.end method

.method public static itemProgress()[J
    .registers 10

    .line 112
    sget-object v0, Lcom/gmodvr/flat/SteamDownloadService;->instance:Lcom/gmodvr/flat/SteamDownloadService;

    if-eqz v0, :cond_23

    .line 113
    iget-object v1, v0, Lcom/gmodvr/flat/SteamDownloadService;->currentItem:Lcom/gmodvr/flat/WorkshopQueue$Entry;

    if-nez v1, :cond_9

    goto :goto_23

    .line 114
    :cond_9
    iget v1, v0, Lcom/gmodvr/flat/SteamDownloadService;->itemIndex:I

    int-to-long v1, v1

    iget v3, v0, Lcom/gmodvr/flat/SteamDownloadService;->itemCount:I

    int-to-long v3, v3

    iget-wide v5, v0, Lcom/gmodvr/flat/SteamDownloadService;->itemDone:J

    iget-wide v7, v0, Lcom/gmodvr/flat/SteamDownloadService;->itemTotal:J

    const/4 v0, 0x4

    new-array v0, v0, [J

    const/4 v9, 0x0

    aput-wide v1, v0, v9

    const/4 v1, 0x1

    aput-wide v3, v0, v1

    const/4 v1, 0x2

    aput-wide v5, v0, v1

    const/4 v1, 0x3

    aput-wide v7, v0, v1

    return-object v0

    :cond_23
    :goto_23
    const/4 v0, 0x0

    return-object v0
.end method

.method private synthetic lambda$authenticate$3(Ljava/lang/String;)V
    .registers 8

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 324
    invoke-direct/range {v0 .. v5}, Lcom/gmodvr/flat/SteamDownloadService;->update(Ljava/lang/String;JJ)V

    return-void
.end method

.method private static synthetic lambda$discard$0(Ljava/util/function/Consumer;Ljava/lang/String;)V
    .registers 2

    .line 193
    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic lambda$discard$1(Ljava/lang/String;Landroid/content/Context;Ljava/util/function/Consumer;)V
    .registers 5

    const/4 v0, 0x0

    .line 179
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1a

    .line 180
    invoke-static {p1, p0}, Lcom/gmodvr/flat/SteamDownloadService;->staging(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    .line 181
    const-string v1, "payload"

    invoke-static {p0, v1}, Lcom/gmodvr/flat/SteamFiles;->inside(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/gmodvr/flat/SteamInstallBridge;->abandon(Landroid/content/Context;Ljava/io/File;)V

    .line 182
    invoke-static {p0}, Lcom/gmodvr/flat/SteamFiles;->deleteTree(Ljava/io/File;)V

    goto :goto_1a

    :catchall_18
    move-exception p0

    goto :goto_44

    .line 184
    :cond_1a
    :goto_1a
    const-string p0, ""

    invoke-static {p1, p0}, Lcom/gmodvr/flat/SteamDownloadService;->removeAbandonedStaging(Landroid/content/Context;Ljava/lang/String;)V

    .line 185
    invoke-static {p1}, Lcom/gmodvr/flat/SteamDownloadService;->queueFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lcom/gmodvr/flat/WorkshopQueue;->delete(Ljava/io/File;)V

    .line 186
    invoke-static {p1}, Lcom/gmodvr/flat/SteamDownloadService;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p0
    :try_end_36
    .catchall {:try_start_1 .. :try_end_36} :catchall_18

    if-eqz p0, :cond_3c

    .line 190
    sput-boolean v0, Lcom/gmodvr/flat/SteamDownloadService;->discarding:Z

    const/4 p0, 0x0

    goto :goto_55

    .line 186
    :cond_3c
    :try_start_3c
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Could not clear saved download request"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_44
    .catchall {:try_start_3c .. :try_end_44} :catchall_18

    .line 188
    :goto_44
    :try_start_44
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_51

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    goto :goto_53

    :catchall_4f
    move-exception p0

    goto :goto_67

    :cond_51
    const-string p0, "Could not remove download staging."
    :try_end_53
    .catchall {:try_start_44 .. :try_end_53} :catchall_4f

    .line 190
    :goto_53
    sput-boolean v0, Lcom/gmodvr/flat/SteamDownloadService;->discarding:Z

    .line 193
    :goto_55
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/gmodvr/flat/SteamDownloadService$$ExternalSyntheticLambda2;

    invoke-direct {v0, p2, p0}, Lcom/gmodvr/flat/SteamDownloadService$$ExternalSyntheticLambda2;-><init>(Ljava/util/function/Consumer;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 190
    :goto_67
    sput-boolean v0, Lcom/gmodvr/flat/SteamDownloadService;->discarding:Z

    .line 191
    throw p0
.end method

.method private synthetic lambda$onStartCommand$2(Lcom/gmodvr/flat/SteamDownloadService$Credentials;)V
    .registers 3

    .line 297
    iget-boolean v0, p0, Lcom/gmodvr/flat/SteamDownloadService;->accountOnly:Z

    if-eqz v0, :cond_8

    invoke-direct {p0, p1}, Lcom/gmodvr/flat/SteamDownloadService;->runSignIn(Lcom/gmodvr/flat/SteamDownloadService$Credentials;)V

    goto :goto_b

    :cond_8
    invoke-direct {p0, p1}, Lcom/gmodvr/flat/SteamDownloadService;->runDownload(Lcom/gmodvr/flat/SteamDownloadService$Credentials;)V

    :goto_b
    return-void
.end method

.method private synthetic lambda$workshop$4([JLjava/lang/String;JJ)V
    .registers 16

    .line 449
    iget-object v0, p0, Lcom/gmodvr/flat/SteamDownloadService;->currentItem:Lcom/gmodvr/flat/WorkshopQueue$Entry;

    .line 450
    iput-wide p3, p0, Lcom/gmodvr/flat/SteamDownloadService;->itemDone:J

    const-wide/16 v1, 0x0

    cmp-long v3, p5, v1

    if-lez v3, :cond_c

    move-wide v4, p5

    goto :goto_12

    :cond_c
    if-nez v0, :cond_10

    move-wide v4, v1

    goto :goto_12

    .line 451
    :cond_10
    iget-wide v4, v0, Lcom/gmodvr/flat/WorkshopQueue$Entry;->size:J

    :goto_12
    iput-wide v4, p0, Lcom/gmodvr/flat/SteamDownloadService;->itemTotal:J

    if-eqz v0, :cond_27

    if-gtz v3, :cond_19

    goto :goto_27

    .line 452
    :cond_19
    iget-wide v1, v0, Lcom/gmodvr/flat/WorkshopQueue$Entry;->size:J

    long-to-double v1, v1

    long-to-double p3, p3

    long-to-double p5, p5

    div-double/2addr p3, p5

    const-wide/high16 p5, 0x3ff0000000000000L    # 1.0

    invoke-static {p5, p6, p3, p4}, Ljava/lang/Math;->min(DD)D

    move-result-wide p3

    mul-double/2addr v1, p3

    double-to-long v1, v1

    :cond_27
    :goto_27
    if-nez v0, :cond_2b

    :goto_29
    move-object v4, p2

    goto :goto_51

    .line 453
    :cond_2b
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Workshop "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p4, p0, Lcom/gmodvr/flat/SteamDownloadService;->itemIndex:I

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, "/"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p4, p0, Lcom/gmodvr/flat/SteamDownloadService;->itemCount:I

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, ": "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_29

    :goto_51
    const/4 p2, 0x0

    aget-wide p2, p1, p2

    add-long v5, p2, v1

    const/4 p2, 0x1

    aget-wide v7, p1, p2

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/gmodvr/flat/SteamDownloadService;->update(Ljava/lang/String;JJ)V

    return-void
.end method

.method private synthetic lambda$workshop$5(I)V
    .registers 9

    .line 458
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Reading Workshop collection: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " items\u2026"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/gmodvr/flat/SteamDownloadService;->update(Ljava/lang/String;JJ)V

    return-void
.end method

.method public static liveQueue()Lcom/gmodvr/flat/WorkshopQueue;
    .registers 1

    .line 81
    sget-object v0, Lcom/gmodvr/flat/SteamDownloadService;->instance:Lcom/gmodvr/flat/SteamDownloadService;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_8

    .line 82
    :cond_6
    iget-object v0, v0, Lcom/gmodvr/flat/SteamDownloadService;->liveQueue:Lcom/gmodvr/flat/WorkshopQueue;

    :goto_8
    return-object v0
.end method

.method private notification()Landroid/app/Notification;
    .registers 13

    .line 583
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/gmodvr/flat/SteamDownloadService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "pause"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x2

    const/high16 v2, 0x4000000

    .line 584
    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 585
    iget-object v1, p0, Lcom/gmodvr/flat/SteamDownloadService;->liveQueue:Lcom/gmodvr/flat/WorkshopQueue;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_21

    iget-object v1, p0, Lcom/gmodvr/flat/SteamDownloadService;->selection:Ljava/util/concurrent/CompletableFuture;

    if-eqz v1, :cond_1f

    goto :goto_21

    :cond_1f
    move v1, v3

    goto :goto_22

    :cond_21
    :goto_21
    move v1, v2

    .line 586
    :goto_22
    new-instance v4, Landroid/content/Intent;

    if-eqz v1, :cond_29

    .line 587
    const-class v1, Lcom/gmodvr/flat/WorkshopQueueActivity;

    goto :goto_2b

    :cond_29
    const-class v1, Lcom/gmodvr/flat/SteamDownloadActivity;

    :goto_2b
    invoke-direct {v4, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0xc000000

    .line 586
    invoke-static {p0, v3, v4, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 589
    new-instance v4, Landroid/app/Notification$Builder;

    const-string v5, "steam_downloads"

    invoke-direct {v4, p0, v5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v5, 0x1080081

    .line 590
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 591
    iget-boolean v5, p0, Lcom/gmodvr/flat/SteamDownloadService;->accountOnly:Z

    if-eqz v5, :cond_49

    const-string v5, "Steam sign-in"

    goto :goto_4b

    :cond_49
    const-string v5, "Steam Download"

    :goto_4b
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/gmodvr/flat/SteamDownloadService;->message:Ljava/lang/String;

    .line 592
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 593
    invoke-virtual {v4, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 594
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 595
    iget-wide v4, p0, Lcom/gmodvr/flat/SteamDownloadService;->total:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    const/16 v5, 0x3e8

    if-lez v4, :cond_78

    .line 596
    iget-wide v6, p0, Lcom/gmodvr/flat/SteamDownloadService;->completed:J

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    iget-wide v10, p0, Lcom/gmodvr/flat/SteamDownloadService;->total:J

    div-long/2addr v6, v10

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    long-to-int v2, v6

    invoke-virtual {v1, v5, v2, v3}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    goto :goto_7b

    .line 598
    :cond_78
    invoke-virtual {v1, v5, v3, v2}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    .line 600
    :goto_7b
    invoke-static {}, Lcom/gmodvr/flat/SteamDownloadService;->canPause()Z

    move-result v2

    if-eqz v2, :cond_97

    .line 601
    new-instance v2, Landroid/app/Notification$Action$Builder;

    iget-boolean p0, p0, Lcom/gmodvr/flat/SteamDownloadService;->accountOnly:Z

    if-eqz p0, :cond_8a

    const-string p0, "Cancel sign-in"

    goto :goto_8c

    :cond_8a
    const-string p0, "Pause"

    :goto_8c
    const/4 v3, 0x0

    invoke-direct {v2, v3, p0, v0}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v2}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    .line 603
    :cond_97
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p0

    return-object p0
.end method

.method public static pause()V
    .registers 3

    .line 255
    sget-object v0, Lcom/gmodvr/flat/SteamDownloadService;->instance:Lcom/gmodvr/flat/SteamDownloadService;

    if-nez v0, :cond_5

    return-void

    .line 257
    :cond_5
    monitor-enter v0

    .line 258
    :try_start_6
    iget-boolean v1, v0, Lcom/gmodvr/flat/SteamDownloadService;->installing:Z

    if-eqz v1, :cond_e

    monitor-exit v0

    return-void

    :catchall_c
    move-exception v1

    goto :goto_3f

    :cond_e
    const/4 v1, 0x1

    .line 259
    iput-boolean v1, v0, Lcom/gmodvr/flat/SteamDownloadService;->pauseRequested:Z

    .line 261
    iget-boolean v2, v0, Lcom/gmodvr/flat/SteamDownloadService;->itemInstalling:Z

    if-eqz v2, :cond_17

    monitor-exit v0

    return-void

    .line 262
    :cond_17
    iget-object v2, v0, Lcom/gmodvr/flat/SteamDownloadService;->worker:Ljava/lang/Thread;

    if-eqz v2, :cond_1e

    .line 263
    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 264
    :cond_1e
    iget-object v2, v0, Lcom/gmodvr/flat/SteamDownloadService;->guard:Ljava/util/concurrent/CompletableFuture;

    if-eqz v2, :cond_27

    iget-object v2, v0, Lcom/gmodvr/flat/SteamDownloadService;->guard:Ljava/util/concurrent/CompletableFuture;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CompletableFuture;->cancel(Z)Z

    .line 265
    :cond_27
    iget-object v2, v0, Lcom/gmodvr/flat/SteamDownloadService;->selection:Ljava/util/concurrent/CompletableFuture;

    if-eqz v2, :cond_30

    iget-object v2, v0, Lcom/gmodvr/flat/SteamDownloadService;->selection:Ljava/util/concurrent/CompletableFuture;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CompletableFuture;->cancel(Z)Z

    .line 266
    :cond_30
    iget-object v1, v0, Lcom/gmodvr/flat/SteamDownloadService;->session:Lcom/gmodvr/flat/SteamSession;

    if-eqz v1, :cond_3d

    .line 267
    iget-object v1, v1, Lcom/gmodvr/flat/SteamSession;->http:Lokhttp3/OkHttpClient;

    invoke-virtual {v1}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Dispatcher;->cancelAll()V

    .line 268
    :cond_3d
    monitor-exit v0

    return-void

    :goto_3f
    monitor-exit v0
    :try_end_40
    .catchall {:try_start_6 .. :try_end_40} :catchall_c

    throw v1
.end method

.method private persist(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 578
    invoke-static {p0}, Lcom/gmodvr/flat/SteamDownloadService;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "state"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "message"

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p2, "completed"

    iget-wide v0, p0, Lcom/gmodvr/flat/SteamDownloadService;->completed:J

    .line 579
    invoke-interface {p1, p2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p2, "total"

    iget-wide v0, p0, Lcom/gmodvr/flat/SteamDownloadService;->total:J

    invoke-interface {p1, p2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .registers 3

    .line 123
    const-string v0, "steam_download_v1"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method public static queueFile(Landroid/content/Context;)Ljava/io/File;
    .registers 3

    .line 76
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    const-string v1, "workshop-queue.json"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private static removeAbandonedStaging(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6

    .line 157
    invoke-static {p0}, Lcom/gmodvr/flat/Storage;->usesSharedContent(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {}, Lcom/gmodvr/flat/Storage;->sharedRoot()Ljava/io/File;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    if-nez v0, :cond_12

    .line 159
    :try_start_e
    invoke-static {p0}, Lcom/gmodvr/flat/Storage;->root(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 160
    :cond_12
    new-instance p0, Ljava/io/File;

    const-string v1, ".steam-downloads"

    invoke-direct {p0, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_20

    return-void

    .line 162
    :cond_20
    array-length v0, p0

    const/4 v1, 0x0

    :goto_22
    if-ge v1, v0, :cond_37

    aget-object v2, p0, v1

    .line 163
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_2e} :catch_37

    if-eqz v3, :cond_31

    goto :goto_34

    .line 164
    :cond_31
    :try_start_31
    invoke-static {v2}, Lcom/gmodvr/flat/SteamFiles;->deleteTree(Ljava/io/File;)V
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_34} :catch_34

    :catch_34
    :goto_34
    add-int/lit8 v1, v1, 0x1

    goto :goto_22

    :catch_37
    :cond_37
    return-void
.end method

.method private runDownload(Lcom/gmodvr/flat/SteamDownloadService$Credentials;)V
    .registers 25

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    .line 355
    const-string v11, ""

    invoke-static/range {p0 .. p0}, Lcom/gmodvr/flat/SteamDownloadService;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v12, 0x1

    .line 357
    :try_start_b
    const-string v1, "profile"

    invoke-interface {v0, v1, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 358
    invoke-static {v7}, Lcom/gmodvr/flat/GameContentProfile;->require(Ljava/lang/String;)Lcom/gmodvr/flat/GameContentProfile;

    move-result-object v8

    .line 359
    const-string v1, "token"

    invoke-interface {v0, v1, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 360
    const-string v1, "[a-f0-9-]{36}"

    invoke-virtual {v14, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1e2

    .line 361
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v15

    .line 363
    invoke-static/range {p0 .. p0}, Lcom/gmodvr/flat/Storage;->lock(Landroid/content/Context;)Lcom/gmodvr/flat/Storage$Lease;

    move-result-object v16
    :try_end_2b
    .catchall {:try_start_b .. :try_end_2b} :catchall_12a

    .line 364
    :try_start_2b
    const-class v1, Landroid/os/PowerManager;

    invoke-virtual {v9, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    const-string v2, "GDroid:SteamDownload"

    invoke-virtual {v1, v12, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, v9, Lcom/gmodvr/flat/SteamDownloadService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v2, 0x1499700

    .line 365
    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 366
    invoke-static {v9, v14}, Lcom/gmodvr/flat/SteamDownloadService;->staging(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    .line 367
    invoke-static {v5}, Lcom/gmodvr/flat/GameMedia;->hide(Ljava/io/File;)V

    .line 368
    const-string v1, "payload"

    invoke-static {v5, v1}, Lcom/gmodvr/flat/SteamFiles;->inside(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    .line 369
    invoke-static/range {p0 .. p0}, Lcom/gmodvr/flat/SteamInstallBridge;->pending(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_65

    .line 370
    const-string v0, "Recovering Steam installation\u2026"

    invoke-direct {v9, v0}, Lcom/gmodvr/flat/SteamDownloadService;->beginInstall(Ljava/lang/String;)V

    .line 371
    invoke-static {v9, v6, v7, v14}, Lcom/gmodvr/flat/SteamInstallBridge;->install(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v18, v5

    const/4 v0, 0x0

    goto/16 :goto_158

    :catchall_61
    move-exception v0

    move-object v1, v0

    goto/16 :goto_1d6

    .line 373
    :cond_65
    invoke-static {v9, v14}, Lcom/gmodvr/flat/SteamDownloadService;->removeAbandonedStaging(Landroid/content/Context;Ljava/lang/String;)V

    .line 374
    const-string v1, "running"

    const-string v2, "Connecting to Steam\u2026"

    invoke-direct {v9, v1, v2}, Lcom/gmodvr/flat/SteamDownloadService;->persist(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    invoke-static/range {p0 .. p0}, Lcom/gmodvr/flat/SteamRuntime;->prepare(Landroid/content/Context;)V
    :try_end_72
    .catchall {:try_start_2b .. :try_end_72} :catchall_61

    .line 376
    :try_start_72
    new-instance v3, Lcom/gmodvr/flat/SteamSession;

    invoke-direct {v3}, Lcom/gmodvr/flat/SteamSession;-><init>()V
    :try_end_77
    .catchall {:try_start_72 .. :try_end_77} :catchall_14f

    .line 377
    :try_start_77
    iput-object v3, v9, Lcom/gmodvr/flat/SteamDownloadService;->session:Lcom/gmodvr/flat/SteamSession;

    .line 378
    invoke-virtual/range {p1 .. p1}, Lcom/gmodvr/flat/SteamDownloadService$Credentials;->anonymous()Z

    move-result v1
    :try_end_7d
    .catchall {:try_start_77 .. :try_end_7d} :catchall_1c6

    const-string v4, "workshop"

    if-eqz v1, :cond_93

    :try_start_81
    invoke-interface {v0, v4, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Lcom/gmodvr/flat/SteamDownloadService;->anonymousWorkshop(Lcom/gmodvr/flat/GameContentProfile;Ljava/lang/String;)Z

    move-result v1
    :try_end_89
    .catchall {:try_start_81 .. :try_end_89} :catchall_8e

    if-eqz v1, :cond_93

    move/from16 v17, v12

    goto :goto_96

    :catchall_8e
    move-exception v0

    move-object v1, v0

    move-object v12, v3

    goto/16 :goto_1c9

    :cond_93
    const/4 v1, 0x0

    move/from16 v17, v1

    :goto_96
    if-eqz v17, :cond_bd

    .line 381
    :try_start_98
    const-string v2, "Connecting to Steam\u2026"
    :try_end_9a
    .catchall {:try_start_98 .. :try_end_9a} :catchall_b9

    const-wide/16 v18, 0x0

    const-wide/16 v20, 0x0

    move-object/from16 v1, p0

    move-object/from16 v22, v3

    move-object v12, v4

    move-wide/from16 v3, v18

    move-object/from16 v18, v5

    move-object v13, v6

    move-wide/from16 v5, v20

    :try_start_aa
    invoke-direct/range {v1 .. v6}, Lcom/gmodvr/flat/SteamDownloadService;->update(Ljava/lang/String;JJ)V

    .line 382
    invoke-virtual/range {v22 .. v22}, Lcom/gmodvr/flat/SteamSession;->anonymous()V
    :try_end_b0
    .catchall {:try_start_aa .. :try_end_b0} :catchall_b3

    move-object/from16 v5, v22

    goto :goto_c5

    :catchall_b3
    move-exception v0

    :goto_b4
    move-object v1, v0

    move-object/from16 v12, v22

    goto/16 :goto_1c9

    :catchall_b9
    move-exception v0

    move-object/from16 v22, v3

    goto :goto_b4

    :cond_bd
    move-object v12, v4

    move-object/from16 v18, v5

    move-object v13, v6

    move-object v5, v3

    .line 384
    :try_start_c2
    invoke-direct {v9, v5, v10}, Lcom/gmodvr/flat/SteamDownloadService;->authenticate(Lcom/gmodvr/flat/SteamSession;Lcom/gmodvr/flat/SteamDownloadService$Credentials;)V

    .line 387
    :goto_c5
    new-instance v1, Lcom/gmodvr/flat/SteamDownloads;

    new-instance v2, Lcom/gmodvr/flat/SteamDownloadService$$ExternalSyntheticLambda1;

    invoke-direct {v2, v9}, Lcom/gmodvr/flat/SteamDownloadService$$ExternalSyntheticLambda1;-><init>(Lcom/gmodvr/flat/SteamDownloadService;)V

    invoke-direct {v1, v5, v2}, Lcom/gmodvr/flat/SteamDownloads;-><init>(Lcom/gmodvr/flat/SteamSession;Lcom/gmodvr/flat/SteamDownloads$Progress;)V

    .line 388
    invoke-interface {v0, v12, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 389
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3
    :try_end_d7
    .catchall {:try_start_c2 .. :try_end_d7} :catchall_1c3

    if-eqz v3, :cond_109

    .line 390
    :try_start_d9
    invoke-static {}, Lcom/gmodvr/flat/Storage;->sharedCommonRoot()Ljava/io/File;

    move-result-object v2

    .line 394
    sget-object v3, Lcom/gmodvr/flat/GameContentProfile;->GARRYSMOD:Lcom/gmodvr/flat/GameContentProfile;

    if-ne v8, v3, :cond_f1

    invoke-static/range {p0 .. p0}, Lcom/gmodvr/flat/Storage;->usesSharedContent(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_f1

    .line 395
    invoke-static {}, Lcom/gmodvr/flat/Storage;->sharedRoot()Ljava/io/File;

    move-result-object v2

    goto :goto_f1

    :catchall_ec
    move-exception v0

    move-object v1, v0

    move-object v12, v5

    goto/16 :goto_1c9

    .line 396
    :cond_f1
    :goto_f1
    const-string v3, "language"

    const-string v4, "english"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v8, v0, v13, v2}, Lcom/gmodvr/flat/SteamDownloads;->game(Lcom/gmodvr/flat/GameContentProfile;Ljava/lang/String;Ljava/io/File;Ljava/io/File;)Ljava/util/List;

    move-result-object v15

    .line 397
    const-string v0, "Installing verified Steam content\u2026"

    invoke-direct {v9, v0}, Lcom/gmodvr/flat/SteamDownloadService;->beginInstall(Ljava/lang/String;)V

    .line 398
    invoke-static {v9, v13, v7, v14}, Lcom/gmodvr/flat/SteamInstallBridge;->install(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_105
    .catchall {:try_start_d9 .. :try_end_105} :catchall_ec

    move-object v12, v5

    const/4 v0, 0x0

    :cond_107
    const/4 v1, 0x0

    goto :goto_153

    .line 400
    :cond_109
    :try_start_109
    invoke-static {v2}, Lcom/gmodvr/flat/SteamFiles;->workshopId(Ljava/lang/String;)J

    move-result-wide v6
    :try_end_10d
    .catchall {:try_start_109 .. :try_end_10d} :catchall_1c3

    move-object/from16 v1, p0

    move-object v2, v5

    move-object v3, v8

    move-object v4, v14

    move-object v12, v5

    move-wide v5, v6

    move-object/from16 v7, v18

    move/from16 v8, v17

    :try_start_118
    invoke-direct/range {v1 .. v8}, Lcom/gmodvr/flat/SteamDownloadService;->workshop(Lcom/gmodvr/flat/SteamSession;Lcom/gmodvr/flat/GameContentProfile;Ljava/lang/String;JLjava/io/File;Z)Ljava/lang/String;

    move-result-object v0
    :try_end_11c
    .catchall {:try_start_118 .. :try_end_11c} :catchall_1c0

    if-nez v0, :cond_107

    .line 404
    :try_start_11e
    invoke-virtual {v12}, Lcom/gmodvr/flat/SteamSession;->close()V
    :try_end_121
    .catchall {:try_start_11e .. :try_end_121} :catchall_14f

    const/4 v1, 0x0

    .line 405
    :try_start_122
    iput-object v1, v9, Lcom/gmodvr/flat/SteamDownloadService;->session:Lcom/gmodvr/flat/SteamSession;
    :try_end_124
    .catchall {:try_start_122 .. :try_end_124} :catchall_61

    if-eqz v16, :cond_12d

    .line 411
    :try_start_126
    invoke-virtual/range {v16 .. v16}, Lcom/gmodvr/flat/Storage$Lease;->close()V
    :try_end_129
    .catchall {:try_start_126 .. :try_end_129} :catchall_12a

    goto :goto_12d

    :catchall_12a
    move-exception v0

    goto/16 :goto_1ea

    .line 422
    :cond_12d
    :goto_12d
    iput-object v11, v10, Lcom/gmodvr/flat/SteamDownloadService$Credentials;->password:Ljava/lang/String;

    .line 423
    iget-object v0, v9, Lcom/gmodvr/flat/SteamDownloadService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_13e

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_13e

    iget-object v0, v9, Lcom/gmodvr/flat/SteamDownloadService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_13e
    const/4 v1, 0x0

    .line 424
    iput-object v1, v9, Lcom/gmodvr/flat/SteamDownloadService;->selection:Ljava/util/concurrent/CompletableFuture;

    .line 425
    iput-object v1, v9, Lcom/gmodvr/flat/SteamDownloadService;->currentItem:Lcom/gmodvr/flat/WorkshopQueue$Entry;

    .line 426
    iput-object v1, v9, Lcom/gmodvr/flat/SteamDownloadService;->liveQueue:Lcom/gmodvr/flat/WorkshopQueue;

    const/4 v2, 0x1

    .line 427
    invoke-virtual {v9, v2}, Landroid/app/Service;->stopForeground(I)V

    .line 428
    invoke-virtual/range {p0 .. p0}, Landroid/app/Service;->stopSelf()V

    .line 429
    sput-object v1, Lcom/gmodvr/flat/SteamDownloadService;->instance:Lcom/gmodvr/flat/SteamDownloadService;

    return-void

    :catchall_14f
    move-exception v0

    const/4 v1, 0x0

    goto/16 :goto_1d3

    .line 404
    :goto_153
    :try_start_153
    invoke-virtual {v12}, Lcom/gmodvr/flat/SteamSession;->close()V
    :try_end_156
    .catchall {:try_start_153 .. :try_end_156} :catchall_14f

    .line 405
    :try_start_156
    iput-object v1, v9, Lcom/gmodvr/flat/SteamDownloadService;->session:Lcom/gmodvr/flat/SteamSession;

    .line 408
    :goto_158
    const-string v1, "complete"

    if-eqz v0, :cond_15d

    goto :goto_192

    .line 409
    :cond_15d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Download installed. Return to the launcher to play, or open Mods to manage Workshop content."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_16f

    move-object v2, v11

    goto :goto_18b

    :cond_16f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " Kept existing: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-static {v3, v15}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_18b
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 408
    :goto_192
    invoke-direct {v9, v1, v0}, Lcom/gmodvr/flat/SteamDownloadService;->persist(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_195
    .catchall {:try_start_156 .. :try_end_195} :catchall_61

    .line 410
    :try_start_195
    invoke-static/range {v18 .. v18}, Lcom/gmodvr/flat/SteamFiles;->deleteTree(Ljava/io/File;)V
    :try_end_198
    .catch Ljava/io/IOException; {:try_start_195 .. :try_end_198} :catch_198
    .catchall {:try_start_195 .. :try_end_198} :catchall_61

    :catch_198
    if-eqz v16, :cond_19d

    .line 411
    :try_start_19a
    invoke-virtual/range {v16 .. v16}, Lcom/gmodvr/flat/Storage$Lease;->close()V
    :try_end_19d
    .catchall {:try_start_19a .. :try_end_19d} :catchall_12a

    .line 422
    :cond_19d
    iput-object v11, v10, Lcom/gmodvr/flat/SteamDownloadService$Credentials;->password:Ljava/lang/String;

    .line 423
    iget-object v0, v9, Lcom/gmodvr/flat/SteamDownloadService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_1ae

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1ae

    iget-object v0, v9, Lcom/gmodvr/flat/SteamDownloadService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_1ae
    :goto_1ae
    const/4 v1, 0x0

    .line 424
    iput-object v1, v9, Lcom/gmodvr/flat/SteamDownloadService;->selection:Ljava/util/concurrent/CompletableFuture;

    .line 425
    iput-object v1, v9, Lcom/gmodvr/flat/SteamDownloadService;->currentItem:Lcom/gmodvr/flat/WorkshopQueue$Entry;

    .line 426
    iput-object v1, v9, Lcom/gmodvr/flat/SteamDownloadService;->liveQueue:Lcom/gmodvr/flat/WorkshopQueue;

    const/4 v2, 0x1

    .line 427
    invoke-virtual {v9, v2}, Landroid/app/Service;->stopForeground(I)V

    .line 428
    invoke-virtual/range {p0 .. p0}, Landroid/app/Service;->stopSelf()V

    .line 429
    sput-object v1, Lcom/gmodvr/flat/SteamDownloadService;->instance:Lcom/gmodvr/flat/SteamDownloadService;

    goto/16 :goto_226

    :catchall_1c0
    move-exception v0

    :goto_1c1
    move-object v1, v0

    goto :goto_1c9

    :catchall_1c3
    move-exception v0

    move-object v12, v5

    goto :goto_1c1

    :catchall_1c6
    move-exception v0

    move-object v12, v3

    goto :goto_1c1

    .line 376
    :goto_1c9
    :try_start_1c9
    invoke-virtual {v12}, Lcom/gmodvr/flat/SteamSession;->close()V
    :try_end_1cc
    .catchall {:try_start_1c9 .. :try_end_1cc} :catchall_1cd

    goto :goto_1d2

    :catchall_1cd
    move-exception v0

    move-object v2, v0

    :try_start_1cf
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1d2
    throw v1
    :try_end_1d3
    .catchall {:try_start_1cf .. :try_end_1d3} :catchall_14f

    .line 405
    :goto_1d3
    :try_start_1d3
    iput-object v1, v9, Lcom/gmodvr/flat/SteamDownloadService;->session:Lcom/gmodvr/flat/SteamSession;

    .line 406
    throw v0
    :try_end_1d6
    .catchall {:try_start_1d3 .. :try_end_1d6} :catchall_61

    :goto_1d6
    if-eqz v16, :cond_1e1

    .line 363
    :try_start_1d8
    invoke-virtual/range {v16 .. v16}, Lcom/gmodvr/flat/Storage$Lease;->close()V
    :try_end_1db
    .catchall {:try_start_1d8 .. :try_end_1db} :catchall_1dc

    goto :goto_1e1

    :catchall_1dc
    move-exception v0

    move-object v2, v0

    :try_start_1de
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1e1
    :goto_1e1
    throw v1

    .line 360
    :cond_1e2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid saved download request"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1ea
    .catchall {:try_start_1de .. :try_end_1ea} :catchall_12a

    .line 415
    :goto_1ea
    :try_start_1ea
    iget-boolean v1, v9, Lcom/gmodvr/flat/SteamDownloadService;->pauseRequested:Z

    .line 416
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    if-eqz v1, :cond_1f6

    .line 417
    const-string v0, "Download paused. Select Resume to continue."

    goto :goto_20a

    :catchall_1f4
    move-exception v0

    goto :goto_227

    .line 418
    :cond_1f6
    instance-of v2, v0, Ljava/util/concurrent/CancellationException;

    if-eqz v2, :cond_1fd

    const-string v0, "Steam stopped responding or disconnected. Resume to retry."

    goto :goto_20a

    .line 419
    :cond_1fd
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_208

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_20a

    :cond_208
    const-string v0, "Download error"

    :goto_20a
    if-eqz v1, :cond_20f

    .line 420
    const-string v1, "paused"

    goto :goto_211

    :cond_20f
    const-string v1, "error"

    :goto_211
    invoke-direct {v9, v1, v0}, Lcom/gmodvr/flat/SteamDownloadService;->persist(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_214
    .catchall {:try_start_1ea .. :try_end_214} :catchall_1f4

    .line 422
    iput-object v11, v10, Lcom/gmodvr/flat/SteamDownloadService$Credentials;->password:Ljava/lang/String;

    .line 423
    iget-object v0, v9, Lcom/gmodvr/flat/SteamDownloadService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_1ae

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1ae

    iget-object v0, v9, Lcom/gmodvr/flat/SteamDownloadService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_1ae

    :goto_226
    return-void

    .line 422
    :goto_227
    iput-object v11, v10, Lcom/gmodvr/flat/SteamDownloadService$Credentials;->password:Ljava/lang/String;

    .line 423
    iget-object v1, v9, Lcom/gmodvr/flat/SteamDownloadService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_238

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_238

    iget-object v1, v9, Lcom/gmodvr/flat/SteamDownloadService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_238
    const/4 v1, 0x0

    .line 424
    iput-object v1, v9, Lcom/gmodvr/flat/SteamDownloadService;->selection:Ljava/util/concurrent/CompletableFuture;

    .line 425
    iput-object v1, v9, Lcom/gmodvr/flat/SteamDownloadService;->currentItem:Lcom/gmodvr/flat/WorkshopQueue$Entry;

    .line 426
    iput-object v1, v9, Lcom/gmodvr/flat/SteamDownloadService;->liveQueue:Lcom/gmodvr/flat/WorkshopQueue;

    const/4 v2, 0x1

    .line 427
    invoke-virtual {v9, v2}, Landroid/app/Service;->stopForeground(I)V

    .line 428
    invoke-virtual/range {p0 .. p0}, Landroid/app/Service;->stopSelf()V

    .line 429
    sput-object v1, Lcom/gmodvr/flat/SteamDownloadService;->instance:Lcom/gmodvr/flat/SteamDownloadService;

    .line 430
    throw v0
.end method

.method private runSignIn(Lcom/gmodvr/flat/SteamDownloadService$Credentials;)V
    .registers 8

    .line 332
    const-string v0, ""

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_4
    const-class v3, Landroid/os/PowerManager;

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    const-string v4, "GDroid:SteamSignIn"

    invoke-virtual {v3, v1, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, p0, Lcom/gmodvr/flat/SteamDownloadService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v4, 0x493e0

    .line 333
    invoke-virtual {v3, v4, v5}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 334
    invoke-static {p0}, Lcom/gmodvr/flat/SteamRuntime;->prepare(Landroid/content/Context;)V

    .line 335
    new-instance v3, Lcom/gmodvr/flat/SteamSession;

    invoke-direct {v3}, Lcom/gmodvr/flat/SteamSession;-><init>()V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_22} :catch_4e
    .catchall {:try_start_4 .. :try_end_22} :catchall_4c

    .line 336
    :try_start_22
    iput-object v3, p0, Lcom/gmodvr/flat/SteamDownloadService;->session:Lcom/gmodvr/flat/SteamSession;

    .line 337
    invoke-direct {p0, v3, p1}, Lcom/gmodvr/flat/SteamDownloadService;->authenticate(Lcom/gmodvr/flat/SteamSession;Lcom/gmodvr/flat/SteamDownloadService$Credentials;)V
    :try_end_27
    .catchall {:try_start_22 .. :try_end_27} :catchall_50

    .line 338
    :try_start_27
    invoke-virtual {v3}, Lcom/gmodvr/flat/SteamSession;->close()V

    .line 339
    const-string v3, "Steam sign-in saved. You can now join servers."

    sput-object v3, Lcom/gmodvr/flat/SteamDownloadService;->accountMessage:Ljava/lang/String;
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_2e} :catch_4e
    .catchall {:try_start_27 .. :try_end_2e} :catchall_4c

    .line 344
    iput-object v0, p1, Lcom/gmodvr/flat/SteamDownloadService$Credentials;->password:Ljava/lang/String;

    .line 345
    iput-object v0, p0, Lcom/gmodvr/flat/SteamDownloadService;->challenge:Ljava/lang/String;

    .line 346
    iput-object v2, p0, Lcom/gmodvr/flat/SteamDownloadService;->session:Lcom/gmodvr/flat/SteamSession;

    .line 347
    iget-object p1, p0, Lcom/gmodvr/flat/SteamDownloadService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz p1, :cond_43

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result p1

    if-eqz p1, :cond_43

    :goto_3e
    iget-object p1, p0, Lcom/gmodvr/flat/SteamDownloadService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 348
    :cond_43
    invoke-virtual {p0, v1}, Landroid/app/Service;->stopForeground(I)V

    .line 349
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    .line 350
    sput-object v2, Lcom/gmodvr/flat/SteamDownloadService;->instance:Lcom/gmodvr/flat/SteamDownloadService;

    goto :goto_7f

    :catchall_4c
    move-exception v3

    goto :goto_80

    :catch_4e
    move-exception v3

    goto :goto_5a

    :catchall_50
    move-exception v4

    .line 335
    :try_start_51
    invoke-virtual {v3}, Lcom/gmodvr/flat/SteamSession;->close()V
    :try_end_54
    .catchall {:try_start_51 .. :try_end_54} :catchall_55

    goto :goto_59

    :catchall_55
    move-exception v3

    :try_start_56
    invoke-virtual {v4, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_59
    throw v4
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_5a} :catch_4e
    .catchall {:try_start_56 .. :try_end_5a} :catchall_4c

    .line 341
    :goto_5a
    :try_start_5a
    iget-boolean v4, p0, Lcom/gmodvr/flat/SteamDownloadService;->pauseRequested:Z

    if-eqz v4, :cond_61

    const-string v3, "Steam sign-in cancelled."

    goto :goto_6c

    .line 342
    :cond_61
    instance-of v4, v3, Ljava/io/IOException;

    if-eqz v4, :cond_6a

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    goto :goto_6c

    :cond_6a
    const-string v3, "Steam sign-in failed. Check your account and try again."

    :goto_6c
    sput-object v3, Lcom/gmodvr/flat/SteamDownloadService;->accountMessage:Ljava/lang/String;
    :try_end_6e
    .catchall {:try_start_5a .. :try_end_6e} :catchall_4c

    .line 344
    iput-object v0, p1, Lcom/gmodvr/flat/SteamDownloadService$Credentials;->password:Ljava/lang/String;

    .line 345
    iput-object v0, p0, Lcom/gmodvr/flat/SteamDownloadService;->challenge:Ljava/lang/String;

    .line 346
    iput-object v2, p0, Lcom/gmodvr/flat/SteamDownloadService;->session:Lcom/gmodvr/flat/SteamSession;

    .line 347
    iget-object p1, p0, Lcom/gmodvr/flat/SteamDownloadService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz p1, :cond_43

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result p1

    if-eqz p1, :cond_43

    goto :goto_3e

    :goto_7f
    return-void

    .line 344
    :goto_80
    iput-object v0, p1, Lcom/gmodvr/flat/SteamDownloadService$Credentials;->password:Ljava/lang/String;

    .line 345
    iput-object v0, p0, Lcom/gmodvr/flat/SteamDownloadService;->challenge:Ljava/lang/String;

    .line 346
    iput-object v2, p0, Lcom/gmodvr/flat/SteamDownloadService;->session:Lcom/gmodvr/flat/SteamSession;

    .line 347
    iget-object p1, p0, Lcom/gmodvr/flat/SteamDownloadService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz p1, :cond_95

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result p1

    if-eqz p1, :cond_95

    iget-object p1, p0, Lcom/gmodvr/flat/SteamDownloadService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 348
    :cond_95
    invoke-virtual {p0, v1}, Landroid/app/Service;->stopForeground(I)V

    .line 349
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    .line 350
    sput-object v2, Lcom/gmodvr/flat/SteamDownloadService;->instance:Lcom/gmodvr/flat/SteamDownloadService;

    .line 351
    throw v3
.end method

.method public static savedOrAnonymous(Landroid/content/Context;)Lcom/gmodvr/flat/SteamDownloadService$Credentials;
    .registers 4

    .line 65
    const-string v0, ""

    :try_start_2
    invoke-static {p0}, Lcom/gmodvr/flat/SteamIdentityProvider;->savedIdentity(Landroid/content/Context;)Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;

    move-result-object p0

    if-eqz p0, :cond_17

    const/4 v1, 0x0

    .line 67
    invoke-virtual {p0, v1}, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;->setAccessToken(Ljava/lang/String;)V

    .line 68
    new-instance v1, Lcom/gmodvr/flat/SteamDownloadService$Credentials;

    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/handlers/steamuser/LogOnDetails;->getUsername()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x1

    invoke-direct {v1, p0, v0, v2}, Lcom/gmodvr/flat/SteamDownloadService$Credentials;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_16} :catch_17

    return-object v1

    .line 71
    :catch_17
    :cond_17
    new-instance p0, Lcom/gmodvr/flat/SteamDownloadService$Credentials;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v0, v1}, Lcom/gmodvr/flat/SteamDownloadService$Credentials;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    return-object p0
.end method

.method public static savedQueue(Landroid/content/Context;)Lcom/gmodvr/flat/WorkshopQueue;
    .registers 5

    .line 87
    invoke-static {p0}, Lcom/gmodvr/flat/SteamDownloadService;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "token"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 88
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2c

    invoke-static {p0}, Lcom/gmodvr/flat/SteamDownloadService;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v3, "workshop"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_23

    goto :goto_2c

    :cond_23
    invoke-static {p0}, Lcom/gmodvr/flat/SteamDownloadService;->queueFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/gmodvr/flat/WorkshopQueue;->load(Ljava/io/File;Ljava/lang/String;)Lcom/gmodvr/flat/WorkshopQueue;

    move-result-object p0

    goto :goto_2d

    :cond_2c
    :goto_2c
    const/4 p0, 0x0

    :goto_2d
    return-object p0
.end method

.method public static declared-synchronized signIn(Landroid/content/Context;Lcom/gmodvr/flat/SteamDownloadService$Credentials;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-class v0, Lcom/gmodvr/flat/SteamDownloadService;

    monitor-enter v0

    .line 143
    :try_start_3
    invoke-static {}, Lcom/gmodvr/flat/SteamDownloadService;->active()Z

    move-result v1

    if-nez v1, :cond_7a

    .line 144
    invoke-static {}, Lcom/gmodvr/flat/SteamDownloadService;->discarding()Z

    move-result v1

    if-nez v1, :cond_72

    .line 145
    iget-object v1, p1, Lcom/gmodvr/flat/SteamDownloadService$Credentials;->username:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6a

    .line 146
    iget-boolean v1, p1, Lcom/gmodvr/flat/SteamDownloadService$Credentials;->remember:Z

    if-eqz v1, :cond_62

    .line 147
    iget-object v1, p1, Lcom/gmodvr/flat/SteamDownloadService$Credentials;->password:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3b

    new-instance v1, Lcom/gmodvr/flat/SteamCredentialStore;

    invoke-direct {v1, p0}, Lcom/gmodvr/flat/SteamCredentialStore;-><init>(Landroid/content/Context;)V

    iget-object v2, p1, Lcom/gmodvr/flat/SteamDownloadService$Credentials;->username:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/gmodvr/flat/SteamCredentialStore;->token(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_31

    goto :goto_3b

    .line 148
    :cond_31
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Enter your Steam password to sign in"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_39
    move-exception p0

    goto :goto_82

    .line 149
    :cond_3b
    :goto_3b
    sput-object p1, Lcom/gmodvr/flat/SteamDownloadService;->credentials:Lcom/gmodvr/flat/SteamDownloadService$Credentials;

    const/4 p1, 0x1

    .line 150
    sput-boolean p1, Lcom/gmodvr/flat/SteamDownloadService;->starting:Z

    .line 151
    const-string p1, "Connecting to Steam\u2026"

    sput-object p1, Lcom/gmodvr/flat/SteamDownloadService;->accountMessage:Ljava/lang/String;
    :try_end_44
    .catchall {:try_start_3 .. :try_end_44} :catchall_39

    .line 152
    :try_start_44
    new-instance p1, Landroid/content/Intent;

    const-class v1, Lcom/gmodvr/flat/SteamDownloadService;

    invoke-direct {p1, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "sign_in"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_54
    .catch Ljava/lang/RuntimeException; {:try_start_44 .. :try_end_54} :catch_56
    .catchall {:try_start_44 .. :try_end_54} :catchall_39

    .line 154
    monitor-exit v0

    return-void

    :catch_56
    move-exception p0

    const/4 p1, 0x0

    .line 153
    :try_start_58
    sput-boolean p1, Lcom/gmodvr/flat/SteamDownloadService;->starting:Z

    const/4 p1, 0x0

    sput-object p1, Lcom/gmodvr/flat/SteamDownloadService;->credentials:Lcom/gmodvr/flat/SteamDownloadService$Credentials;

    const-string p1, ""

    sput-object p1, Lcom/gmodvr/flat/SteamDownloadService;->accountMessage:Ljava/lang/String;

    throw p0

    .line 146
    :cond_62
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Enable Remember Steam sign-in on this device to join servers."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 145
    :cond_6a
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Enter your Steam account name"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 144
    :cond_72
    new-instance p0, Ljava/io/IOException;

    const-string p1, "The previous download is still being removed"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 143
    :cond_7a
    new-instance p0, Ljava/io/IOException;

    const-string p1, "A Steam request is already running"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 153
    :goto_82
    monitor-exit v0
    :try_end_83
    .catchall {:try_start_58 .. :try_end_83} :catchall_39

    throw p0
.end method

.method public static signInMessage()Ljava/lang/String;
    .registers 2

    .line 136
    sget-object v0, Lcom/gmodvr/flat/SteamDownloadService;->instance:Lcom/gmodvr/flat/SteamDownloadService;

    if-eqz v0, :cond_b

    .line 137
    iget-boolean v1, v0, Lcom/gmodvr/flat/SteamDownloadService;->accountOnly:Z

    if-eqz v1, :cond_b

    iget-object v0, v0, Lcom/gmodvr/flat/SteamDownloadService;->message:Ljava/lang/String;

    goto :goto_d

    :cond_b
    sget-object v0, Lcom/gmodvr/flat/SteamDownloadService;->accountMessage:Ljava/lang/String;

    :goto_d
    return-object v0
.end method

.method public static signingIn()Z
    .registers 1

    .line 134
    sget-object v0, Lcom/gmodvr/flat/SteamDownloadService;->instance:Lcom/gmodvr/flat/SteamDownloadService;

    if-eqz v0, :cond_c

    sget-object v0, Lcom/gmodvr/flat/SteamDownloadService;->instance:Lcom/gmodvr/flat/SteamDownloadService;

    iget-boolean v0, v0, Lcom/gmodvr/flat/SteamDownloadService;->accountOnly:Z

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public static staging(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 127
    const-string v0, "[a-f0-9-]{36}"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 128
    invoke-static {p0}, Lcom/gmodvr/flat/Storage;->usesSharedContent(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-static {}, Lcom/gmodvr/flat/Storage;->sharedRoot()Ljava/io/File;

    move-result-object p0

    goto :goto_17

    :cond_13
    invoke-static {p0}, Lcom/gmodvr/flat/Storage;->root(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    .line 129
    :goto_17
    new-instance v0, Ljava/io/File;

    const-string v1, ".steam-downloads"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcom/gmodvr/flat/SteamFiles;->inside(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0

    .line 127
    :cond_23
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Invalid saved download request"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static declared-synchronized start(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gmodvr/flat/SteamDownloadService$Credentials;Z)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-class v0, Lcom/gmodvr/flat/SteamDownloadService;

    monitor-enter v0

    .line 222
    :try_start_3
    invoke-static {}, Lcom/gmodvr/flat/SteamDownloadService;->active()Z

    move-result v1

    if-nez v1, :cond_119

    .line 223
    sget-boolean v1, Lcom/gmodvr/flat/SteamDownloadService;->discarding:Z

    if-nez v1, :cond_111

    .line 224
    invoke-static {p0}, Lcom/gmodvr/flat/LocalFolder;->hasAccess(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_109

    .line 225
    invoke-static {p1}, Lcom/gmodvr/flat/GameContentProfile;->forId(Ljava/lang/String;)Lcom/gmodvr/flat/GameContentProfile;

    move-result-object v1

    if-eqz v1, :cond_101

    if-nez p5, :cond_2d

    .line 226
    invoke-static {p0}, Lcom/gmodvr/flat/SteamDownloadService;->activationPending(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_22

    goto :goto_2d

    :cond_22
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Resume the previous Steam activation first"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_2a
    move-exception p0

    goto/16 :goto_121

    .line 228
    :cond_2d
    :goto_2d
    invoke-static {p0}, Lcom/gmodvr/flat/SteamDownloadService;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    if-eqz p5, :cond_4a

    .line 229
    const-string v2, "token"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_42

    goto :goto_4a

    :cond_42
    new-instance p0, Ljava/io/IOException;

    const-string p1, "There is no download to resume"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4a
    :goto_4a
    if-nez p5, :cond_e4

    .line 231
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p5

    if-nez p5, :cond_55

    .line 232
    invoke-static {p2}, Lcom/gmodvr/flat/SteamFiles;->workshopId(Ljava/lang/String;)J

    .line 234
    :cond_55
    const-string p5, "token"

    const-string v2, ""

    invoke-interface {v1, p5, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/String;->isEmpty()Z

    move-result p5

    if-nez p5, :cond_9e

    const-string p5, "complete"

    const-string v2, "state"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-nez p5, :cond_9e

    const-string p5, "profile"

    const-string v2, ""

    .line 235
    invoke-interface {v1, p5, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p1, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_9e

    const-string p5, "workshop"

    const-string v2, ""

    invoke-interface {v1, p5, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p2, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_9e

    const-string p5, "language"

    const-string v2, ""

    .line 236
    invoke-interface {v1, p5, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p3, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_9e

    goto :goto_e4

    .line 239
    :cond_9e
    invoke-static {p0}, Lcom/gmodvr/flat/SteamDownloadService;->queueFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object p5

    invoke-static {p5}, Lcom/gmodvr/flat/WorkshopQueue;->delete(Ljava/io/File;)V

    .line 240
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p5

    invoke-interface {p5}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object p5

    const-string v1, "profile"

    invoke-interface {p5, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p5, "workshop"

    invoke-interface {p1, p5, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p2, "language"

    .line 241
    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p2, "token"

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p2, "state"

    const-string p3, "paused"

    .line 242
    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p1

    if-eqz p1, :cond_dc

    goto :goto_e4

    .line 243
    :cond_dc
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Could not save Steam download request"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 247
    :cond_e4
    :goto_e4
    sput-object p4, Lcom/gmodvr/flat/SteamDownloadService;->credentials:Lcom/gmodvr/flat/SteamDownloadService$Credentials;

    const/4 p1, 0x1

    .line 248
    sput-boolean p1, Lcom/gmodvr/flat/SteamDownloadService;->starting:Z

    .line 249
    const-string p1, ""

    sput-object p1, Lcom/gmodvr/flat/SteamDownloadService;->accountMessage:Ljava/lang/String;
    :try_end_ed
    .catchall {:try_start_3 .. :try_end_ed} :catchall_2a

    .line 250
    :try_start_ed
    new-instance p1, Landroid/content/Intent;

    const-class p2, Lcom/gmodvr/flat/SteamDownloadService;

    invoke-direct {p1, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_f7
    .catch Ljava/lang/RuntimeException; {:try_start_ed .. :try_end_f7} :catch_f9
    .catchall {:try_start_ed .. :try_end_f7} :catchall_2a

    .line 252
    monitor-exit v0

    return-void

    :catch_f9
    move-exception p0

    const/4 p1, 0x0

    .line 251
    :try_start_fb
    sput-boolean p1, Lcom/gmodvr/flat/SteamDownloadService;->starting:Z

    const/4 p1, 0x0

    sput-object p1, Lcom/gmodvr/flat/SteamDownloadService;->credentials:Lcom/gmodvr/flat/SteamDownloadService$Credentials;

    throw p0

    .line 225
    :cond_101
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Unknown game profile"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 224
    :cond_109
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Grant storage access before downloading"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 223
    :cond_111
    new-instance p0, Ljava/io/IOException;

    const-string p1, "The previous download is still being removed"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 222
    :cond_119
    new-instance p0, Ljava/io/IOException;

    const-string p1, "A Steam download is already running"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 251
    :goto_121
    monitor-exit v0
    :try_end_122
    .catchall {:try_start_fb .. :try_end_122} :catchall_2a

    throw p0
.end method

.method public static status(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .line 210
    sget-object v0, Lcom/gmodvr/flat/SteamDownloadService;->instance:Lcom/gmodvr/flat/SteamDownloadService;

    if-eqz v0, :cond_f

    invoke-static {}, Lcom/gmodvr/flat/SteamDownloadService;->active()Z

    move-result v0

    if-eqz v0, :cond_f

    sget-object p0, Lcom/gmodvr/flat/SteamDownloadService;->instance:Lcom/gmodvr/flat/SteamDownloadService;

    iget-object p0, p0, Lcom/gmodvr/flat/SteamDownloadService;->message:Ljava/lang/String;

    return-object p0

    .line 211
    :cond_f
    invoke-static {p0}, Lcom/gmodvr/flat/SteamDownloadService;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "state"

    const-string v2, "idle"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 212
    const-string v1, "running"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_44

    const-string v1, "installing"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    goto :goto_44

    .line 213
    :cond_2c
    const-string v1, "review"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    const-string p0, "Workshop collection ready to review. Open the review screen to choose what to download."

    return-object p0

    .line 214
    :cond_37
    invoke-static {p0}, Lcom/gmodvr/flat/SteamDownloadService;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "message"

    const-string v1, "Sign in with the Steam account that owns the game."

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 212
    :cond_44
    :goto_44
    const-string p0, "Download interrupted. Resume to continue."

    return-object p0
.end method

.method public static submitCode(Ljava/lang/String;)V
    .registers 4

    .line 202
    sget-object v0, Lcom/gmodvr/flat/SteamDownloadService;->instance:Lcom/gmodvr/flat/SteamDownloadService;

    if-eqz v0, :cond_25

    .line 203
    iget-object v1, v0, Lcom/gmodvr/flat/SteamDownloadService;->guard:Ljava/util/concurrent/CompletableFuture;

    if-eqz v1, :cond_25

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_25

    .line 204
    iget-object v1, v0, Lcom/gmodvr/flat/SteamDownloadService;->guard:Ljava/util/concurrent/CompletableFuture;

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    .line 205
    const-string p0, ""

    iput-object p0, v0, Lcom/gmodvr/flat/SteamDownloadService;->challenge:Ljava/lang/String;

    :cond_25
    return-void
.end method

.method public static total(Landroid/content/Context;)J
    .registers 4

    .line 218
    invoke-static {}, Lcom/gmodvr/flat/SteamDownloadService;->active()Z

    move-result v0

    if-eqz v0, :cond_f

    sget-object v0, Lcom/gmodvr/flat/SteamDownloadService;->instance:Lcom/gmodvr/flat/SteamDownloadService;

    if-eqz v0, :cond_f

    sget-object p0, Lcom/gmodvr/flat/SteamDownloadService;->instance:Lcom/gmodvr/flat/SteamDownloadService;

    iget-wide v0, p0, Lcom/gmodvr/flat/SteamDownloadService;->total:J

    goto :goto_1b

    :cond_f
    invoke-static {p0}, Lcom/gmodvr/flat/SteamDownloadService;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "total"

    const-wide/16 v1, 0x0

    invoke-interface {p0, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    :goto_1b
    return-wide v0
.end method

.method private update(Ljava/lang/String;JJ)V
    .registers 10

    .line 565
    iput-object p1, p0, Lcom/gmodvr/flat/SteamDownloadService;->message:Ljava/lang/String;

    .line 566
    iput-wide p2, p0, Lcom/gmodvr/flat/SteamDownloadService;->completed:J

    .line 567
    iput-wide p4, p0, Lcom/gmodvr/flat/SteamDownloadService;->total:J

    .line 568
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, p4, v2

    if-lez p1, :cond_1f

    cmp-long p1, p2, p4

    if-gez p1, :cond_1f

    .line 571
    iget-wide p1, p0, Lcom/gmodvr/flat/SteamDownloadService;->lastNotification:J

    sub-long p1, v0, p1

    const-wide/16 p3, 0x1f4

    cmp-long p1, p1, p3

    if-gez p1, :cond_1f

    return-void

    .line 572
    :cond_1f
    iput-wide v0, p0, Lcom/gmodvr/flat/SteamDownloadService;->lastNotification:J

    .line 573
    const-class p1, Landroid/app/NotificationManager;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    if-eqz p1, :cond_34

    const/16 p2, 0x106a

    .line 574
    invoke-direct {p0}, Lcom/gmodvr/flat/SteamDownloadService;->notification()Landroid/app/Notification;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :cond_34
    return-void
.end method

.method private workshop(Lcom/gmodvr/flat/SteamSession;Lcom/gmodvr/flat/GameContentProfile;Ljava/lang/String;JLjava/io/File;Z)Ljava/lang/String;
    .registers 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v14, p0

    move-object/from16 v0, p2

    move-object/from16 v7, p3

    .line 442
    invoke-static/range {p0 .. p0}, Lcom/gmodvr/flat/SteamDownloadService;->queueFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v15

    .line 443
    invoke-static {v14, v0}, Lcom/gmodvr/flat/Storage;->content(Landroid/content/Context;Lcom/gmodvr/flat/GameContentProfile;)Ljava/io/File;

    move-result-object v8

    .line 444
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/gmodvr/flat/GameContentProfile;->gameDir:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/custom"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Lcom/gmodvr/flat/SteamFiles;->inside(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v9

    .line 445
    sget-object v1, Lcom/gmodvr/flat/GameContentProfile;->GARRYSMOD:Lcom/gmodvr/flat/GameContentProfile;

    const/4 v10, 0x1

    if-ne v0, v1, :cond_2c

    move v11, v10

    goto :goto_2e

    :cond_2c
    const/4 v1, 0x0

    move v11, v1

    :goto_2e
    const/4 v1, 0x2

    .line 447
    new-array v12, v1, [J

    .line 448
    new-instance v13, Lcom/gmodvr/flat/SteamDownloads;

    new-instance v1, Lcom/gmodvr/flat/SteamDownloadService$$ExternalSyntheticLambda4;

    invoke-direct {v1, v14, v12}, Lcom/gmodvr/flat/SteamDownloadService$$ExternalSyntheticLambda4;-><init>(Lcom/gmodvr/flat/SteamDownloadService;[J)V

    move-object/from16 v5, p1

    invoke-direct {v13, v5, v1}, Lcom/gmodvr/flat/SteamDownloads;-><init>(Lcom/gmodvr/flat/SteamSession;Lcom/gmodvr/flat/SteamDownloads$Progress;)V

    .line 455
    invoke-static {v15, v7}, Lcom/gmodvr/flat/WorkshopQueue;->load(Ljava/io/File;Ljava/lang/String;)Lcom/gmodvr/flat/WorkshopQueue;

    move-result-object v1

    if-nez v1, :cond_9b

    const-wide/16 v3, 0x0

    const-wide/16 v16, 0x0

    .line 457
    const-string v2, "Reading Workshop details\u2026"

    move-object/from16 v1, p0

    move-wide/from16 v5, v16

    invoke-direct/range {v1 .. v6}, Lcom/gmodvr/flat/SteamDownloadService;->update(Ljava/lang/String;JJ)V

    .line 458
    new-instance v6, Lcom/gmodvr/flat/SteamDownloadService$$ExternalSyntheticLambda5;

    invoke-direct {v6, v14}, Lcom/gmodvr/flat/SteamDownloadService$$ExternalSyntheticLambda5;-><init>(Lcom/gmodvr/flat/SteamDownloadService;)V

    move-object v1, v13

    move-object/from16 v2, p2

    move-wide/from16 v3, p4

    move-object/from16 v5, p3

    invoke-virtual/range {v1 .. v6}, Lcom/gmodvr/flat/SteamDownloads;->resolve(Lcom/gmodvr/flat/GameContentProfile;JLjava/lang/String;Lcom/gmodvr/flat/WorkshopCollection$Progress;)Lcom/gmodvr/flat/WorkshopQueue;

    move-result-object v1

    if-eqz v11, :cond_67

    .line 459
    invoke-static {v8}, Lcom/gmodvr/flat/GmodAddons;->installed(Ljava/io/File;)Ljava/util/Map;

    move-result-object v2

    goto :goto_6b

    :cond_67
    invoke-static {v9}, Lcom/gmodvr/flat/SteamWorkshopInstall;->installed(Ljava/io/File;)Ljava/util/Map;

    move-result-object v2

    :goto_6b
    invoke-virtual {v1, v2}, Lcom/gmodvr/flat/WorkshopQueue;->annotate(Ljava/util/Map;)V

    .line 460
    sget-object v2, Lcom/gmodvr/flat/WorkshopQueue$Mode;->MISSING:Lcom/gmodvr/flat/WorkshopQueue$Mode;

    invoke-virtual {v1, v2}, Lcom/gmodvr/flat/WorkshopQueue;->select(Lcom/gmodvr/flat/WorkshopQueue$Mode;)V

    .line 461
    invoke-virtual {v1}, Lcom/gmodvr/flat/WorkshopQueue;->summary()Lcom/gmodvr/flat/WorkshopQueue$Summary;

    move-result-object v3

    .line 463
    iget v4, v3, Lcom/gmodvr/flat/WorkshopQueue$Summary;->addons:I

    if-nez v4, :cond_85

    iget v3, v3, Lcom/gmodvr/flat/WorkshopQueue$Summary;->linkedAddons:I

    if-lez v3, :cond_85

    invoke-virtual {v1, v10}, Lcom/gmodvr/flat/WorkshopQueue;->setIncludeLinked(Z)V

    invoke-virtual {v1, v2}, Lcom/gmodvr/flat/WorkshopQueue;->select(Lcom/gmodvr/flat/WorkshopQueue$Mode;)V

    .line 464
    :cond_85
    iget-boolean v2, v1, Lcom/gmodvr/flat/WorkshopQueue;->collection:Z

    if-nez v2, :cond_98

    move-wide/from16 v2, p4

    .line 466
    invoke-virtual {v1, v2, v3}, Lcom/gmodvr/flat/WorkshopQueue;->get(J)Lcom/gmodvr/flat/WorkshopQueue$Entry;

    move-result-object v2

    if-eqz v2, :cond_94

    .line 467
    invoke-virtual {v1, v2, v10}, Lcom/gmodvr/flat/WorkshopQueue;->setSelected(Lcom/gmodvr/flat/WorkshopQueue$Entry;Z)V

    .line 468
    :cond_94
    sget-object v2, Lcom/gmodvr/flat/WorkshopQueue$Phase;->DOWNLOADING:Lcom/gmodvr/flat/WorkshopQueue$Phase;

    iput-object v2, v1, Lcom/gmodvr/flat/WorkshopQueue;->phase:Lcom/gmodvr/flat/WorkshopQueue$Phase;

    .line 470
    :cond_98
    invoke-virtual {v1, v15}, Lcom/gmodvr/flat/WorkshopQueue;->save(Ljava/io/File;)V

    .line 472
    :cond_9b
    iput-object v1, v14, Lcom/gmodvr/flat/SteamDownloadService;->liveQueue:Lcom/gmodvr/flat/WorkshopQueue;

    .line 473
    iget-object v2, v1, Lcom/gmodvr/flat/WorkshopQueue;->phase:Lcom/gmodvr/flat/WorkshopQueue$Phase;

    sget-object v10, Lcom/gmodvr/flat/WorkshopQueue$Phase;->REVIEW:Lcom/gmodvr/flat/WorkshopQueue$Phase;

    const/4 v5, 0x0

    if-ne v2, v10, :cond_149

    .line 474
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Review "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/gmodvr/flat/WorkshopQueue;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " and choose what to download."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v6, "review"

    invoke-direct {v14, v6, v2}, Lcom/gmodvr/flat/SteamDownloadService;->persist(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/gmodvr/flat/WorkshopQueue;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, 0x0

    const-wide/16 v16, 0x0

    move-object/from16 v1, p0

    move-object/from16 v19, v6

    move-object/from16 v18, v13

    move-object v13, v5

    move-wide/from16 v5, v16

    invoke-direct/range {v1 .. v6}, Lcom/gmodvr/flat/SteamDownloadService;->update(Ljava/lang/String;JJ)V

    .line 476
    iput-object v13, v14, Lcom/gmodvr/flat/SteamDownloadService;->liveQueue:Lcom/gmodvr/flat/WorkshopQueue;

    .line 477
    new-instance v1, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v1}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 478
    iput-object v1, v14, Lcom/gmodvr/flat/SteamDownloadService;->selection:Ljava/util/concurrent/CompletableFuture;

    .line 480
    :try_start_f2
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0xf

    invoke-virtual {v1, v3, v4, v2}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;
    :try_end_fc
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_f2 .. :try_end_fc} :catch_13c
    .catch Ljava/util/concurrent/CancellationException; {:try_start_f2 .. :try_end_fc} :catch_136
    .catchall {:try_start_f2 .. :try_end_fc} :catchall_134

    .line 486
    iput-object v13, v14, Lcom/gmodvr/flat/SteamDownloadService;->selection:Ljava/util/concurrent/CompletableFuture;

    .line 487
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_11e

    .line 488
    invoke-static {v15}, Lcom/gmodvr/flat/WorkshopQueue;->delete(Ljava/io/File;)V

    .line 489
    :try_start_107
    invoke-static/range {p6 .. p6}, Lcom/gmodvr/flat/SteamFiles;->deleteTree(Ljava/io/File;)V
    :try_end_10a
    .catch Ljava/io/IOException; {:try_start_107 .. :try_end_10a} :catch_10a

    .line 490
    :catch_10a
    invoke-static/range {p0 .. p0}, Lcom/gmodvr/flat/SteamDownloadService;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 491
    const-string v0, "Workshop download cancelled."

    iput-object v0, v14, Lcom/gmodvr/flat/SteamDownloadService;->message:Ljava/lang/String;

    return-object v13

    .line 494
    :cond_11e
    invoke-static {v15, v7}, Lcom/gmodvr/flat/WorkshopQueue;->load(Ljava/io/File;Ljava/lang/String;)Lcom/gmodvr/flat/WorkshopQueue;

    move-result-object v1

    if-eqz v1, :cond_12c

    .line 495
    iget-object v2, v1, Lcom/gmodvr/flat/WorkshopQueue;->phase:Lcom/gmodvr/flat/WorkshopQueue$Phase;

    if-eq v2, v10, :cond_12c

    .line 496
    iput-object v1, v14, Lcom/gmodvr/flat/SteamDownloadService;->liveQueue:Lcom/gmodvr/flat/WorkshopQueue;

    :goto_12a
    move-object v10, v1

    goto :goto_14d

    .line 495
    :cond_12c
    new-instance v0, Ljava/io/IOException;

    const-string v1, "The Workshop selection was not saved. Open the review screen again."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_134
    move-exception v0

    goto :goto_146

    .line 485
    :catch_136
    :try_start_136
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 482
    :catch_13c
    const-string v0, "Workshop collection ready to review. Open the review screen to choose what to download."

    move-object/from16 v1, v19

    invoke-direct {v14, v1, v0}, Lcom/gmodvr/flat/SteamDownloadService;->persist(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_143
    .catchall {:try_start_136 .. :try_end_143} :catchall_134

    .line 486
    iput-object v13, v14, Lcom/gmodvr/flat/SteamDownloadService;->selection:Ljava/util/concurrent/CompletableFuture;

    return-object v13

    :goto_146
    iput-object v13, v14, Lcom/gmodvr/flat/SteamDownloadService;->selection:Ljava/util/concurrent/CompletableFuture;

    throw v0

    :cond_149
    move-object/from16 v18, v13

    move-object v13, v5

    goto :goto_12a

    .line 498
    :goto_14d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Downloading "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Lcom/gmodvr/flat/WorkshopQueue;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\u2026"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "running"

    invoke-direct {v14, v2, v1}, Lcom/gmodvr/flat/SteamDownloadService;->persist(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    invoke-static/range {p2 .. p2}, Lcom/gmodvr/flat/SteamCatalog;->appId(Lcom/gmodvr/flat/GameContentProfile;)I

    move-result v16

    .line 501
    new-instance v7, Lcom/gmodvr/flat/SteamDownloadService$2;

    move-object v1, v7

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move v4, v11

    move-object v5, v8

    move-object v6, v9

    move-object v11, v7

    move-object/from16 v7, p6

    move-object v8, v10

    move-object v9, v12

    move-object v12, v10

    move/from16 v10, v16

    move-object v0, v11

    move-object/from16 v11, v18

    move-object v14, v12

    move-object/from16 v12, p2

    move/from16 v13, p7

    invoke-direct/range {v1 .. v13}, Lcom/gmodvr/flat/SteamDownloadService$2;-><init>(Lcom/gmodvr/flat/SteamDownloadService;Lcom/gmodvr/flat/SteamSession;ZLjava/io/File;Ljava/io/File;Ljava/io/File;Lcom/gmodvr/flat/WorkshopQueue;[JILcom/gmodvr/flat/SteamDownloads;Lcom/gmodvr/flat/GameContentProfile;Z)V

    invoke-virtual {v14, v15, v0}, Lcom/gmodvr/flat/WorkshopQueue;->run(Ljava/io/File;Lcom/gmodvr/flat/WorkshopQueue$Steps;)V

    const/4 v2, 0x0

    move-object/from16 v1, p0

    move-object v0, v14

    .line 545
    iput-object v2, v1, Lcom/gmodvr/flat/SteamDownloadService;->currentItem:Lcom/gmodvr/flat/WorkshopQueue$Entry;

    .line 546
    invoke-virtual {v0}, Lcom/gmodvr/flat/WorkshopQueue;->summary()Lcom/gmodvr/flat/WorkshopQueue$Summary;

    move-result-object v0

    .line 547
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Workshop: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/gmodvr/flat/WorkshopQueue$Summary;->done:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " installed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/gmodvr/flat/WorkshopQueue$Summary;->skipped:I

    const-string v3, ""

    const-string v4, ", "

    if-lez v2, :cond_1cd

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/gmodvr/flat/WorkshopQueue$Summary;->skipped:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " already up to date"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1ce

    :cond_1cd
    move-object v2, v3

    :goto_1ce
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 548
    iget v2, v0, Lcom/gmodvr/flat/WorkshopQueue$Summary;->failed:I

    if-lez v2, :cond_1eb

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/gmodvr/flat/WorkshopQueue$Summary;->failed:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " failed (open the collection screen to see why and retry)"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_1eb
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 549
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " Return to the launcher to play, or open Mods to manage addons."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 2

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public onCreate()V
    .registers 5

    .line 272
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 273
    sput-object p0, Lcom/gmodvr/flat/SteamDownloadService;->instance:Lcom/gmodvr/flat/SteamDownloadService;

    .line 274
    const-class v0, Landroid/app/NotificationManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    .line 275
    new-instance v0, Landroid/app/NotificationChannel;

    const-string v1, "Steam downloads"

    const/4 v2, 0x2

    const-string v3, "steam_downloads"

    invoke-direct {v0, v3, v1, v2}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-virtual {p0, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 7

    const/4 p2, 0x2

    if-eqz p1, :cond_1b

    .line 279
    const-string p3, "pause"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1b

    .line 280
    iget-object p1, p0, Lcom/gmodvr/flat/SteamDownloadService;->worker:Ljava/lang/Thread;

    if-nez p1, :cond_17

    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    goto :goto_1a

    :cond_17
    invoke-static {}, Lcom/gmodvr/flat/SteamDownloadService;->pause()V

    :goto_1a
    return p2

    :cond_1b
    const/16 p3, 0x106a

    .line 283
    invoke-direct {p0}, Lcom/gmodvr/flat/SteamDownloadService;->notification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {p0, p3, v0}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    .line 284
    iget-object p3, p0, Lcom/gmodvr/flat/SteamDownloadService;->worker:Ljava/lang/Thread;

    if-eqz p3, :cond_29

    return p2

    .line 286
    :cond_29
    const-class p3, Lcom/gmodvr/flat/SteamDownloadService;

    monitor-enter p3

    :try_start_2c
    sget-object v0, Lcom/gmodvr/flat/SteamDownloadService;->credentials:Lcom/gmodvr/flat/SteamDownloadService$Credentials;

    const/4 v1, 0x0

    sput-object v1, Lcom/gmodvr/flat/SteamDownloadService;->credentials:Lcom/gmodvr/flat/SteamDownloadService$Credentials;

    monitor-exit p3
    :try_end_32
    .catchall {:try_start_2c .. :try_end_32} :catchall_76

    const/4 p3, 0x1

    const/4 v1, 0x0

    if-nez v0, :cond_3f

    .line 288
    sput-boolean v1, Lcom/gmodvr/flat/SteamDownloadService;->starting:Z

    .line 289
    invoke-virtual {p0, p3}, Landroid/app/Service;->stopForeground(I)V

    .line 290
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    return p2

    .line 293
    :cond_3f
    iput-boolean v1, p0, Lcom/gmodvr/flat/SteamDownloadService;->pauseRequested:Z

    if-eqz p1, :cond_50

    .line 294
    const-string v2, "sign_in"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_50

    goto :goto_51

    :cond_50
    move p3, v1

    :goto_51
    iput-boolean p3, p0, Lcom/gmodvr/flat/SteamDownloadService;->accountOnly:Z

    if-eqz p3, :cond_59

    .line 295
    const-string p1, "Connecting to Steam\u2026"

    iput-object p1, p0, Lcom/gmodvr/flat/SteamDownloadService;->message:Ljava/lang/String;

    .line 296
    :cond_59
    new-instance p1, Ljava/lang/Thread;

    new-instance p3, Lcom/gmodvr/flat/SteamDownloadService$$ExternalSyntheticLambda6;

    invoke-direct {p3, p0, v0}, Lcom/gmodvr/flat/SteamDownloadService$$ExternalSyntheticLambda6;-><init>(Lcom/gmodvr/flat/SteamDownloadService;Lcom/gmodvr/flat/SteamDownloadService$Credentials;)V

    .line 298
    iget-boolean v0, p0, Lcom/gmodvr/flat/SteamDownloadService;->accountOnly:Z

    if-eqz v0, :cond_67

    const-string v0, "Steam sign-in"

    goto :goto_69

    :cond_67
    const-string v0, "Steam download"

    :goto_69
    invoke-direct {p1, p3, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/gmodvr/flat/SteamDownloadService;->worker:Ljava/lang/Thread;

    .line 299
    sput-boolean v1, Lcom/gmodvr/flat/SteamDownloadService;->starting:Z

    .line 300
    iget-object p0, p0, Lcom/gmodvr/flat/SteamDownloadService;->worker:Ljava/lang/Thread;

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    return p2

    :catchall_76
    move-exception p0

    .line 286
    :try_start_77
    monitor-exit p3
    :try_end_78
    .catchall {:try_start_77 .. :try_end_78} :catchall_76

    throw p0
.end method

###### Class com.gmodvr.flat.SteamDownloadService.AnonymousClass1 (com.gmodvr.flat.SteamDownloadService$1)
.class Lcom/gmodvr/flat/SteamDownloadService$1;
.super Ljava/lang/Object;
.source "SteamDownloadService.java"

# interfaces
.implements Lin/dragonbra/javasteam/steam/authentication/IAuthenticator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gmodvr/flat/SteamDownloadService;->authenticate(Lcom/gmodvr/flat/SteamSession;Lcom/gmodvr/flat/SteamDownloadService$Credentials;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gmodvr/flat/SteamDownloadService;


# direct methods
.method public constructor <init>(Lcom/gmodvr/flat/SteamDownloadService;)V
    .registers 2

    .line 311
    iput-object p1, p0, Lcom/gmodvr/flat/SteamDownloadService$1;->this$0:Lcom/gmodvr/flat/SteamDownloadService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public acceptDeviceConfirmation()Ljava/util/concurrent/CompletableFuture;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 319
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0}, Ljava/util/concurrent/CompletableFuture;->completedFuture(Ljava/lang/Object;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public getDeviceCode(Z)Ljava/util/concurrent/CompletableFuture;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 313
    iget-object p0, p0, Lcom/gmodvr/flat/SteamDownloadService$1;->this$0:Lcom/gmodvr/flat/SteamDownloadService;

    if-eqz p1, :cond_7

    const-string p1, "Incorrect code. Enter a new Steam Guard code."

    goto :goto_9

    :cond_7
    const-string p1, "Approve in the Steam mobile app, or enter its Steam Guard code here."

    :goto_9
    invoke-static {p0, p1}, Lcom/gmodvr/flat/SteamDownloadService;->-$$Nest$mcode(Lcom/gmodvr/flat/SteamDownloadService;Ljava/lang/String;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public getEmailCode(Ljava/lang/String;Z)Ljava/util/concurrent/CompletableFuture;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 316
    iget-object p0, p0, Lcom/gmodvr/flat/SteamDownloadService$1;->this$0:Lcom/gmodvr/flat/SteamDownloadService;

    if-eqz p2, :cond_7

    const-string p1, "Incorrect code. Enter the latest emailed Steam Guard code."

    goto :goto_9

    :cond_7
    const-string p1, "Enter the Steam Guard code sent to your email."

    :goto_9
    invoke-static {p0, p1}, Lcom/gmodvr/flat/SteamDownloadService;->-$$Nest$mcode(Lcom/gmodvr/flat/SteamDownloadService;Ljava/lang/String;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

###### Class com.gmodvr.flat.SteamDownloadService.AnonymousClass2 (com.gmodvr.flat.SteamDownloadService$2)
.class Lcom/gmodvr/flat/SteamDownloadService$2;
.super Ljava/lang/Object;
.source "SteamDownloadService.java"

# interfaces
.implements Lcom/gmodvr/flat/WorkshopQueue$Steps;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gmodvr/flat/SteamDownloadService;->workshop(Lcom/gmodvr/flat/SteamSession;Lcom/gmodvr/flat/GameContentProfile;Ljava/lang/String;JLjava/io/File;Z)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gmodvr/flat/SteamDownloadService;

.field final synthetic val$anonymous:Z

.field final synthetic val$app:I

.field final synthetic val$base:[J

.field final synthetic val$content:Ljava/io/File;

.field final synthetic val$custom:Ljava/io/File;

.field final synthetic val$downloads:Lcom/gmodvr/flat/SteamDownloads;

.field final synthetic val$gmod:Z

.field final synthetic val$profile:Lcom/gmodvr/flat/GameContentProfile;

.field final synthetic val$root:Ljava/io/File;

.field final synthetic val$run:Lcom/gmodvr/flat/WorkshopQueue;

.field final synthetic val$steam:Lcom/gmodvr/flat/SteamSession;


# direct methods
.method public constructor <init>(Lcom/gmodvr/flat/SteamDownloadService;Lcom/gmodvr/flat/SteamSession;ZLjava/io/File;Ljava/io/File;Ljava/io/File;Lcom/gmodvr/flat/WorkshopQueue;[JILcom/gmodvr/flat/SteamDownloads;Lcom/gmodvr/flat/GameContentProfile;Z)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 501
    iput-object p1, p0, Lcom/gmodvr/flat/SteamDownloadService$2;->this$0:Lcom/gmodvr/flat/SteamDownloadService;

    iput-object p2, p0, Lcom/gmodvr/flat/SteamDownloadService$2;->val$steam:Lcom/gmodvr/flat/SteamSession;

    iput-boolean p3, p0, Lcom/gmodvr/flat/SteamDownloadService$2;->val$gmod:Z

    iput-object p4, p0, Lcom/gmodvr/flat/SteamDownloadService$2;->val$content:Ljava/io/File;

    iput-object p5, p0, Lcom/gmodvr/flat/SteamDownloadService$2;->val$custom:Ljava/io/File;

    iput-object p6, p0, Lcom/gmodvr/flat/SteamDownloadService$2;->val$root:Ljava/io/File;

    iput-object p7, p0, Lcom/gmodvr/flat/SteamDownloadService$2;->val$run:Lcom/gmodvr/flat/WorkshopQueue;

    iput-object p8, p0, Lcom/gmodvr/flat/SteamDownloadService$2;->val$base:[J

    iput p9, p0, Lcom/gmodvr/flat/SteamDownloadService$2;->val$app:I

    iput-object p10, p0, Lcom/gmodvr/flat/SteamDownloadService$2;->val$downloads:Lcom/gmodvr/flat/SteamDownloads;

    iput-object p11, p0, Lcom/gmodvr/flat/SteamDownloadService$2;->val$profile:Lcom/gmodvr/flat/GameContentProfile;

    iput-boolean p12, p0, Lcom/gmodvr/flat/SteamDownloadService$2;->val$anonymous:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public check()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 503
    iget-object v0, p0, Lcom/gmodvr/flat/SteamDownloadService$2;->this$0:Lcom/gmodvr/flat/SteamDownloadService;

    invoke-static {v0}, Lcom/gmodvr/flat/SteamDownloadService;->-$$Nest$fgetpauseRequested(Lcom/gmodvr/flat/SteamDownloadService;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 504
    iget-object p0, p0, Lcom/gmodvr/flat/SteamDownloadService$2;->val$steam:Lcom/gmodvr/flat/SteamSession;

    invoke-virtual {p0}, Lcom/gmodvr/flat/SteamSession;->check()V

    return-void

    .line 503
    :cond_e
    new-instance p0, Ljava/lang/InterruptedException;

    invoke-direct {p0}, Ljava/lang/InterruptedException;-><init>()V

    throw p0
.end method

.method public cleanup(Lcom/gmodvr/flat/WorkshopQueue$Entry;)V
    .registers 4

    .line 542
    :try_start_0
    iget-object p0, p0, Lcom/gmodvr/flat/SteamDownloadService$2;->val$root:Ljava/io/File;

    iget-wide v0, p1, Lcom/gmodvr/flat/WorkshopQueue$Entry;->id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toUnsignedString(J)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/gmodvr/flat/SteamFiles;->inside(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lcom/gmodvr/flat/SteamFiles;->deleteTree(Ljava/io/File;)V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_f} :catch_f

    :catch_f
    return-void
.end method

.method public install(Lcom/gmodvr/flat/WorkshopQueue$Entry;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 522
    :try_start_0
    iget-object v0, p0, Lcom/gmodvr/flat/SteamDownloadService$2;->val$steam:Lcom/gmodvr/flat/SteamSession;

    iget v1, p0, Lcom/gmodvr/flat/SteamDownloadService$2;->val$app:I

    iget-wide v2, p1, Lcom/gmodvr/flat/WorkshopQueue$Entry;->id:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/gmodvr/flat/SteamSession;->workshop(IJ)Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$PublishedFileDetails;

    move-result-object v0

    .line 523
    iget-object v1, p0, Lcom/gmodvr/flat/SteamDownloadService$2;->val$downloads:Lcom/gmodvr/flat/SteamDownloads;

    iget-object v2, p0, Lcom/gmodvr/flat/SteamDownloadService$2;->val$profile:Lcom/gmodvr/flat/GameContentProfile;

    iget-object v3, p0, Lcom/gmodvr/flat/SteamDownloadService$2;->val$root:Ljava/io/File;

    iget-object v4, p0, Lcom/gmodvr/flat/SteamDownloadService$2;->val$run:Lcom/gmodvr/flat/WorkshopQueue;

    invoke-virtual {v4, p1}, Lcom/gmodvr/flat/WorkshopQueue;->collectionsJson(Lcom/gmodvr/flat/WorkshopQueue$Entry;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-virtual {v1, v2, v0, v3, p1}, Lcom/gmodvr/flat/SteamDownloads;->item(Lcom/gmodvr/flat/GameContentProfile;Lin/dragonbra/javasteam/protobufs/steamclient/SteammessagesPublishedfileSteamclient$PublishedFileDetails;Ljava/io/File;Lorg/json/JSONArray;)Lcom/gmodvr/flat/SteamDownloads$WorkshopItem;

    move-result-object p1

    .line 524
    iget-object v0, p0, Lcom/gmodvr/flat/SteamDownloadService$2;->this$0:Lcom/gmodvr/flat/SteamDownloadService;

    monitor-enter v0
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_1d} :catch_44

    .line 525
    :try_start_1d
    iget-object v1, p0, Lcom/gmodvr/flat/SteamDownloadService$2;->this$0:Lcom/gmodvr/flat/SteamDownloadService;

    invoke-static {v1}, Lcom/gmodvr/flat/SteamDownloadService;->-$$Nest$fgetpauseRequested(Lcom/gmodvr/flat/SteamDownloadService;)Z

    move-result v1

    if-nez v1, :cond_4e

    .line 526
    iget-object v1, p0, Lcom/gmodvr/flat/SteamDownloadService$2;->this$0:Lcom/gmodvr/flat/SteamDownloadService;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/gmodvr/flat/SteamDownloadService;->-$$Nest$fputitemInstalling(Lcom/gmodvr/flat/SteamDownloadService;Z)V

    .line 527
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_1d .. :try_end_2c} :catchall_4c

    const/4 v0, 0x0

    .line 529
    :try_start_2d
    iget-boolean v1, p0, Lcom/gmodvr/flat/SteamDownloadService$2;->val$gmod:Z

    if-eqz v1, :cond_39

    iget-object v1, p0, Lcom/gmodvr/flat/SteamDownloadService$2;->val$content:Ljava/io/File;

    invoke-static {v1, p1}, Lcom/gmodvr/flat/GmodAddons;->install(Ljava/io/File;Lcom/gmodvr/flat/SteamDownloads$WorkshopItem;)V

    goto :goto_3e

    :catchall_37
    move-exception p1

    goto :goto_46

    .line 530
    :cond_39
    iget-object v1, p0, Lcom/gmodvr/flat/SteamDownloadService$2;->val$custom:Ljava/io/File;

    invoke-static {v1, p1}, Lcom/gmodvr/flat/SteamWorkshopInstall;->install(Ljava/io/File;Lcom/gmodvr/flat/SteamDownloads$WorkshopItem;)V
    :try_end_3e
    .catchall {:try_start_2d .. :try_end_3e} :catchall_37

    .line 531
    :goto_3e
    :try_start_3e
    iget-object p1, p0, Lcom/gmodvr/flat/SteamDownloadService$2;->this$0:Lcom/gmodvr/flat/SteamDownloadService;

    invoke-static {p1, v0}, Lcom/gmodvr/flat/SteamDownloadService;->-$$Nest$fputitemInstalling(Lcom/gmodvr/flat/SteamDownloadService;Z)V

    return-void

    :catch_44
    move-exception p1

    goto :goto_56

    :goto_46
    iget-object v1, p0, Lcom/gmodvr/flat/SteamDownloadService$2;->this$0:Lcom/gmodvr/flat/SteamDownloadService;

    invoke-static {v1, v0}, Lcom/gmodvr/flat/SteamDownloadService;->-$$Nest$fputitemInstalling(Lcom/gmodvr/flat/SteamDownloadService;Z)V

    throw p1
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_4c} :catch_44

    :catchall_4c
    move-exception p1

    goto :goto_54

    .line 525
    :cond_4e
    :try_start_4e
    new-instance p1, Ljava/lang/InterruptedException;

    invoke-direct {p1}, Ljava/lang/InterruptedException;-><init>()V

    throw p1

    .line 527
    :goto_54
    monitor-exit v0
    :try_end_55
    .catchall {:try_start_4e .. :try_end_55} :catchall_4c

    :try_start_55
    throw p1
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_56} :catch_44

    .line 533
    :goto_56
    iget-boolean p0, p0, Lcom/gmodvr/flat/SteamDownloadService$2;->val$anonymous:Z

    if-eqz p0, :cond_74

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_74

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string v0, "denied"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_74

    .line 534
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Needs a signed-in Steam account: sign in on the Steam screen, then retry failed items"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 535
    :cond_74
    throw p1
.end method

.method public installed()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "[J>;"
        }
    .end annotation

    .line 507
    iget-boolean v0, p0, Lcom/gmodvr/flat/SteamDownloadService$2;->val$gmod:Z

    if-eqz v0, :cond_b

    iget-object p0, p0, Lcom/gmodvr/flat/SteamDownloadService$2;->val$content:Ljava/io/File;

    invoke-static {p0}, Lcom/gmodvr/flat/GmodAddons;->installed(Ljava/io/File;)Ljava/util/Map;

    move-result-object p0

    goto :goto_11

    :cond_b
    iget-object p0, p0, Lcom/gmodvr/flat/SteamDownloadService$2;->val$custom:Ljava/io/File;

    invoke-static {p0}, Lcom/gmodvr/flat/SteamWorkshopInstall;->installed(Ljava/io/File;)Ljava/util/Map;

    move-result-object p0

    :goto_11
    return-object p0
.end method

.method public keep(Lcom/gmodvr/flat/WorkshopQueue$Entry;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 539
    iget-boolean v0, p0, Lcom/gmodvr/flat/SteamDownloadService$2;->val$gmod:Z

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/gmodvr/flat/SteamDownloadService$2;->val$content:Ljava/io/File;

    iget-wide v1, p1, Lcom/gmodvr/flat/WorkshopQueue$Entry;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toUnsignedString(J)Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/gmodvr/flat/SteamDownloadService$2;->val$run:Lcom/gmodvr/flat/WorkshopQueue;

    invoke-virtual {p0, p1}, Lcom/gmodvr/flat/WorkshopQueue;->collectionsJson(Lcom/gmodvr/flat/WorkshopQueue$Entry;)Lorg/json/JSONArray;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lcom/gmodvr/flat/GmodAddons;->addCollections(Ljava/io/File;Ljava/lang/String;Lorg/json/JSONArray;)Z

    :cond_15
    return-void
.end method

.method public starting(Lcom/gmodvr/flat/WorkshopQueue$Entry;II)V
    .registers 14

    .line 514
    iget-object v0, p0, Lcom/gmodvr/flat/SteamDownloadService$2;->val$run:Lcom/gmodvr/flat/WorkshopQueue;

    invoke-virtual {v0}, Lcom/gmodvr/flat/WorkshopQueue;->progressBytes()[J

    move-result-object v0

    .line 515
    iget-object v1, p0, Lcom/gmodvr/flat/SteamDownloadService$2;->val$base:[J

    const/4 v2, 0x0

    aget-wide v3, v0, v2

    aput-wide v3, v1, v2

    const/4 v3, 0x1

    aget-wide v4, v0, v3

    aput-wide v4, v1, v3

    .line 516
    iget-object v0, p0, Lcom/gmodvr/flat/SteamDownloadService$2;->this$0:Lcom/gmodvr/flat/SteamDownloadService;

    invoke-static {v0, p2}, Lcom/gmodvr/flat/SteamDownloadService;->-$$Nest$fputitemIndex(Lcom/gmodvr/flat/SteamDownloadService;I)V

    iget-object v0, p0, Lcom/gmodvr/flat/SteamDownloadService$2;->this$0:Lcom/gmodvr/flat/SteamDownloadService;

    invoke-static {v0, p3}, Lcom/gmodvr/flat/SteamDownloadService;->-$$Nest$fputitemCount(Lcom/gmodvr/flat/SteamDownloadService;I)V

    iget-object v0, p0, Lcom/gmodvr/flat/SteamDownloadService$2;->this$0:Lcom/gmodvr/flat/SteamDownloadService;

    const-wide/16 v4, 0x0

    invoke-static {v0, v4, v5}, Lcom/gmodvr/flat/SteamDownloadService;->-$$Nest$fputitemDone(Lcom/gmodvr/flat/SteamDownloadService;J)V

    iget-object v0, p0, Lcom/gmodvr/flat/SteamDownloadService$2;->this$0:Lcom/gmodvr/flat/SteamDownloadService;

    iget-wide v4, p1, Lcom/gmodvr/flat/WorkshopQueue$Entry;->size:J

    invoke-static {v0, v4, v5}, Lcom/gmodvr/flat/SteamDownloadService;->-$$Nest$fputitemTotal(Lcom/gmodvr/flat/SteamDownloadService;J)V

    .line 517
    iget-object v0, p0, Lcom/gmodvr/flat/SteamDownloadService$2;->this$0:Lcom/gmodvr/flat/SteamDownloadService;

    invoke-static {v0, p1}, Lcom/gmodvr/flat/SteamDownloadService;->-$$Nest$fputcurrentItem(Lcom/gmodvr/flat/SteamDownloadService;Lcom/gmodvr/flat/WorkshopQueue$Entry;)V

    .line 518
    iget-object v4, p0, Lcom/gmodvr/flat/SteamDownloadService$2;->this$0:Lcom/gmodvr/flat/SteamDownloadService;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Workshop "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "/"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ": "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/gmodvr/flat/WorkshopQueue$Entry;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object p0, p0, Lcom/gmodvr/flat/SteamDownloadService$2;->val$base:[J

    aget-wide v6, p0, v2

    aget-wide v8, p0, v3

    invoke-static/range {v4 .. v9}, Lcom/gmodvr/flat/SteamDownloadService;->-$$Nest$mupdate(Lcom/gmodvr/flat/SteamDownloadService;Ljava/lang/String;JJ)V

    return-void
.end method

.method public usableSpace()J
    .registers 5

    .line 510
    iget-object v0, p0, Lcom/gmodvr/flat/SteamDownloadService$2;->val$content:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v0

    .line 511
    iget-object v2, p0, Lcom/gmodvr/flat/SteamDownloadService$2;->val$root:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_28

    iget-object v2, p0, Lcom/gmodvr/flat/SteamDownloadService$2;->val$root:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_28

    iget-object p0, p0, Lcom/gmodvr/flat/SteamDownloadService$2;->val$root:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    :cond_28
    return-wide v0
.end method

###### Class com.gmodvr.flat.SteamDownloadService.Credentials (com.gmodvr.flat.SteamDownloadService$Credentials)
.class final Lcom/gmodvr/flat/SteamDownloadService$Credentials;
.super Ljava/lang/Object;
.source "SteamDownloadService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gmodvr/flat/SteamDownloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Credentials"
.end annotation


# instance fields
.field password:Ljava/lang/String;

.field final remember:Z

.field username:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 4

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/gmodvr/flat/SteamDownloadService$Credentials;->username:Ljava/lang/String;

    .line 50
    iput-object p2, p0, Lcom/gmodvr/flat/SteamDownloadService$Credentials;->password:Ljava/lang/String;

    .line 51
    iput-boolean p3, p0, Lcom/gmodvr/flat/SteamDownloadService$Credentials;->remember:Z

    return-void
.end method


# virtual methods
.method public anonymous()Z
    .registers 2

    .line 54
    iget-object v0, p0, Lcom/gmodvr/flat/SteamDownloadService$Credentials;->username:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object p0, p0, Lcom/gmodvr/flat/SteamDownloadService$Credentials;->password:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

###### Class com.gmodvr.flat.SteamDownloadService$$ExternalSyntheticLambda0 (com.gmodvr.flat.SteamDownloadService$$ExternalSyntheticLambda0)
.class public final synthetic Lcom/gmodvr/flat/SteamDownloadService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Landroid/content/Context;

.field public final synthetic f$2:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Landroid/content/Context;Ljava/util/function/Consumer;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/SteamDownloadService$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/gmodvr/flat/SteamDownloadService$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    iput-object p3, p0, Lcom/gmodvr/flat/SteamDownloadService$$ExternalSyntheticLambda0;->f$2:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/gmodvr/flat/SteamDownloadService$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lcom/gmodvr/flat/SteamDownloadService$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    iget-object p0, p0, Lcom/gmodvr/flat/SteamDownloadService$$ExternalSyntheticLambda0;->f$2:Ljava/util/function/Consumer;

    invoke-static {v0, v1, p0}, Lcom/gmodvr/flat/SteamDownloadService;->$r8$lambda$lVuFqKUAVaRiCsAclDBhkQkPcyg(Ljava/lang/String;Landroid/content/Context;Ljava/util/function/Consumer;)V

    return-void
.end method

###### Class com.gmodvr.flat.SteamDownloadService$$ExternalSyntheticLambda1 (com.gmodvr.flat.SteamDownloadService$$ExternalSyntheticLambda1)
.class public final synthetic Lcom/gmodvr/flat/SteamDownloadService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/gmodvr/flat/SteamDownloads$Progress;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/SteamDownloadService;


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/SteamDownloadService;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/SteamDownloadService$$ExternalSyntheticLambda1;->f$0:Lcom/gmodvr/flat/SteamDownloadService;

    return-void
.end method


# virtual methods
.method public final update(Ljava/lang/String;JJ)V
    .registers 12

    .line 0
    iget-object v0, p0, Lcom/gmodvr/flat/SteamDownloadService$$ExternalSyntheticLambda1;->f$0:Lcom/gmodvr/flat/SteamDownloadService;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-static/range {v0 .. v5}, Lcom/gmodvr/flat/SteamDownloadService;->$r8$lambda$cNG6oziEg06jSR6PQ9aGntDqlOo(Lcom/gmodvr/flat/SteamDownloadService;Ljava/lang/String;JJ)V

    return-void
.end method

###### Class com.gmodvr.flat.SteamDownloadService$$ExternalSyntheticLambda2 (com.gmodvr.flat.SteamDownloadService$$ExternalSyntheticLambda2)
.class public final synthetic Lcom/gmodvr/flat/SteamDownloadService$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/util/function/Consumer;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Consumer;Ljava/lang/String;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/SteamDownloadService$$ExternalSyntheticLambda2;->f$0:Ljava/util/function/Consumer;

    iput-object p2, p0, Lcom/gmodvr/flat/SteamDownloadService$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/gmodvr/flat/SteamDownloadService$$ExternalSyntheticLambda2;->f$0:Ljava/util/function/Consumer;

    iget-object p0, p0, Lcom/gmodvr/flat/SteamDownloadService$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/gmodvr/flat/SteamDownloadService;->$r8$lambda$_-ayEPkMVl-HE1R7WXXpWqxaO5c(Ljava/util/function/Consumer;Ljava/lang/String;)V

    return-void
.end method

###### Class com.gmodvr.flat.SteamDownloadService$$ExternalSyntheticLambda3 (com.gmodvr.flat.SteamDownloadService$$ExternalSyntheticLambda3)
.class public final synthetic Lcom/gmodvr/flat/SteamDownloadService$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/gmodvr/flat/SteamSession$Status;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/SteamDownloadService;


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/SteamDownloadService;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/SteamDownloadService$$ExternalSyntheticLambda3;->f$0:Lcom/gmodvr/flat/SteamDownloadService;

    return-void
.end method


# virtual methods
.method public final show(Ljava/lang/String;)V
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/gmodvr/flat/SteamDownloadService$$ExternalSyntheticLambda3;->f$0:Lcom/gmodvr/flat/SteamDownloadService;

    invoke-static {p0, p1}, Lcom/gmodvr/flat/SteamDownloadService;->$r8$lambda$TSMs0BtSP2-11ifYGrvGkxlzXfA(Lcom/gmodvr/flat/SteamDownloadService;Ljava/lang/String;)V

    return-void
.end method

###### Class com.gmodvr.flat.SteamDownloadService$$ExternalSyntheticLambda4 (com.gmodvr.flat.SteamDownloadService$$ExternalSyntheticLambda4)
.class public final synthetic Lcom/gmodvr/flat/SteamDownloadService$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/gmodvr/flat/SteamDownloads$Progress;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/SteamDownloadService;

.field public final synthetic f$1:[J


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/SteamDownloadService;[J)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/SteamDownloadService$$ExternalSyntheticLambda4;->f$0:Lcom/gmodvr/flat/SteamDownloadService;

    iput-object p2, p0, Lcom/gmodvr/flat/SteamDownloadService$$ExternalSyntheticLambda4;->f$1:[J

    return-void
.end method


# virtual methods
.method public final update(Ljava/lang/String;JJ)V
    .registers 13

    .line 0
    iget-object v0, p0, Lcom/gmodvr/flat/SteamDownloadService$$ExternalSyntheticLambda4;->f$0:Lcom/gmodvr/flat/SteamDownloadService;

    iget-object v1, p0, Lcom/gmodvr/flat/SteamDownloadService$$ExternalSyntheticLambda4;->f$1:[J

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-static/range {v0 .. v6}, Lcom/gmodvr/flat/SteamDownloadService;->$r8$lambda$2dEU8VHxNVeZDzrRuQo-bcGXdNM(Lcom/gmodvr/flat/SteamDownloadService;[JLjava/lang/String;JJ)V

    return-void
.end method

###### Class com.gmodvr.flat.SteamDownloadService$$ExternalSyntheticLambda5 (com.gmodvr.flat.SteamDownloadService$$ExternalSyntheticLambda5)
.class public final synthetic Lcom/gmodvr/flat/SteamDownloadService$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/gmodvr/flat/WorkshopCollection$Progress;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/SteamDownloadService;


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/SteamDownloadService;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/SteamDownloadService$$ExternalSyntheticLambda5;->f$0:Lcom/gmodvr/flat/SteamDownloadService;

    return-void
.end method


# virtual methods
.method public final resolved(I)V
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/gmodvr/flat/SteamDownloadService$$ExternalSyntheticLambda5;->f$0:Lcom/gmodvr/flat/SteamDownloadService;

    invoke-static {p0, p1}, Lcom/gmodvr/flat/SteamDownloadService;->$r8$lambda$NM9Pz8b19_zR1X--F23b1DvtoHw(Lcom/gmodvr/flat/SteamDownloadService;I)V

    return-void
.end method

###### Class com.gmodvr.flat.SteamDownloadService$$ExternalSyntheticLambda6 (com.gmodvr.flat.SteamDownloadService$$ExternalSyntheticLambda6)
.class public final synthetic Lcom/gmodvr/flat/SteamDownloadService$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/SteamDownloadService;

.field public final synthetic f$1:Lcom/gmodvr/flat/SteamDownloadService$Credentials;


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/SteamDownloadService;Lcom/gmodvr/flat/SteamDownloadService$Credentials;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/SteamDownloadService$$ExternalSyntheticLambda6;->f$0:Lcom/gmodvr/flat/SteamDownloadService;

    iput-object p2, p0, Lcom/gmodvr/flat/SteamDownloadService$$ExternalSyntheticLambda6;->f$1:Lcom/gmodvr/flat/SteamDownloadService$Credentials;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/gmodvr/flat/SteamDownloadService$$ExternalSyntheticLambda6;->f$0:Lcom/gmodvr/flat/SteamDownloadService;

    iget-object p0, p0, Lcom/gmodvr/flat/SteamDownloadService$$ExternalSyntheticLambda6;->f$1:Lcom/gmodvr/flat/SteamDownloadService$Credentials;

    invoke-static {v0, p0}, Lcom/gmodvr/flat/SteamDownloadService;->$r8$lambda$UNvMrh5sxtjaM4pAOnwZ0em8vhE(Lcom/gmodvr/flat/SteamDownloadService;Lcom/gmodvr/flat/SteamDownloadService$Credentials;)V

    return-void
.end method
