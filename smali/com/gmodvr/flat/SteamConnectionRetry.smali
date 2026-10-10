###### Class com.gmodvr.flat.SteamConnectionRetry (com.gmodvr.flat.SteamConnectionRetry)
.class final Lcom/gmodvr/flat/SteamConnectionRetry;
.super Ljava/lang/Object;
.source "SteamConnectionRetry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gmodvr/flat/SteamConnectionRetry$Attempt;,
        Lcom/gmodvr/flat/SteamConnectionRetry$Reconnect;
    }
.end annotation


# static fields
.field static final MAX_ATTEMPTS:I = 0x3


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static run(Lcom/gmodvr/flat/SteamConnectionRetry$Attempt;Lcom/gmodvr/flat/SteamConnectionRetry$Reconnect;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x1

    .line 13
    :goto_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v1

    if-nez v1, :cond_2a

    .line 15
    :try_start_b
    invoke-interface {p0}, Lcom/gmodvr/flat/SteamConnectionRetry$Attempt;->run()V
    :try_end_e
    .catch Lcom/gmodvr/flat/SteamSession$ConnectionLost; {:try_start_b .. :try_end_e} :catch_f
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_b .. :try_end_e} :catch_f

    return-void

    :catch_f
    move-exception v1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_29

    .line 19
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v1

    if-nez v1, :cond_23

    add-int/lit8 v0, v0, 0x1

    .line 20
    invoke-interface {p1, v0}, Lcom/gmodvr/flat/SteamConnectionRetry$Reconnect;->run(I)V

    goto :goto_1

    .line 19
    :cond_23
    new-instance p0, Ljava/lang/InterruptedException;

    invoke-direct {p0}, Ljava/lang/InterruptedException;-><init>()V

    throw p0

    .line 18
    :cond_29
    throw v1

    .line 13
    :cond_2a
    new-instance p0, Ljava/lang/InterruptedException;

    invoke-direct {p0}, Ljava/lang/InterruptedException;-><init>()V

    throw p0
.end method

###### Class com.gmodvr.flat.SteamConnectionRetry.Attempt (com.gmodvr.flat.SteamConnectionRetry$Attempt)
.class interface abstract Lcom/gmodvr/flat/SteamConnectionRetry$Attempt;
.super Ljava/lang/Object;
.source "SteamConnectionRetry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gmodvr/flat/SteamConnectionRetry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Attempt"
.end annotation


# virtual methods
.method public abstract run()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

###### Class com.gmodvr.flat.SteamConnectionRetry.Reconnect (com.gmodvr.flat.SteamConnectionRetry$Reconnect)
.class interface abstract Lcom/gmodvr/flat/SteamConnectionRetry$Reconnect;
.super Ljava/lang/Object;
.source "SteamConnectionRetry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gmodvr/flat/SteamConnectionRetry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Reconnect"
.end annotation


# virtual methods
.method public abstract run(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
