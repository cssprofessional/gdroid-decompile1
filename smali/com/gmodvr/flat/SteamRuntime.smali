###### Class com.gmodvr.flat.SteamRuntime (com.gmodvr.flat.SteamRuntime)
.class final Lcom/gmodvr/flat/SteamRuntime;
.super Ljava/lang/Object;
.source "SteamRuntime.java"


# static fields
.field private static prepared:Z


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static crypto()V
    .registers 2

    .line 22
    const-string v0, "BC"

    invoke-static {v0}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v1

    instance-of v1, v1, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;

    if-eqz v1, :cond_b

    return-void

    .line 23
    :cond_b
    invoke-static {v0}, Ljava/security/Security;->removeProvider(Ljava/lang/String;)V

    .line 24
    new-instance v0, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;

    invoke-direct {v0}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;-><init>()V

    invoke-static {v0}, Ljava/security/Security;->addProvider(Ljava/security/Provider;)I

    return-void
.end method

.method public static declared-synchronized prepare(Landroid/content/Context;)V
    .registers 3

    const-class v0, Lcom/gmodvr/flat/SteamRuntime;

    monitor-enter v0

    .line 15
    :try_start_3
    sget-boolean v1, Lcom/gmodvr/flat/SteamRuntime;->prepared:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_1a

    if-eqz v1, :cond_9

    monitor-exit v0

    return-void

    .line 16
    :cond_9
    :try_start_9
    invoke-static {}, Lcom/gmodvr/flat/SteamRuntime;->crypto()V

    .line 17
    sget-object v1, Lokhttp3/OkHttp;->INSTANCE:Lokhttp3/OkHttp;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v1, p0}, Lokhttp3/OkHttp;->initialize(Landroid/content/Context;)V

    const/4 p0, 0x1

    .line 18
    sput-boolean p0, Lcom/gmodvr/flat/SteamRuntime;->prepared:Z
    :try_end_18
    .catchall {:try_start_9 .. :try_end_18} :catchall_1a

    .line 19
    monitor-exit v0

    return-void

    :catchall_1a
    move-exception p0

    :try_start_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw p0
.end method
