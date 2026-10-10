###### Class in.dragonbra.javasteam.util.event.Event (in.dragonbra.javasteam.util.event.Event)
.class public Lin/dragonbra/javasteam/util/event/Event;
.super Ljava/lang/Object;
.source "Event.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lin/dragonbra/javasteam/util/event/EventArgs;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected final handlers:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lin/dragonbra/javasteam/util/event/EventHandler<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lin/dragonbra/javasteam/util/event/Event;->handlers:Ljava/util/HashSet;

    return-void
.end method


# virtual methods
.method public addEventHandler(Lin/dragonbra/javasteam/util/event/EventHandler;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lin/dragonbra/javasteam/util/event/EventHandler<",
            "TT;>;)V"
        }
    .end annotation

    .line 10
    iget-object v0, p0, Lin/dragonbra/javasteam/util/event/Event;->handlers:Ljava/util/HashSet;

    monitor-enter v0

    .line 11
    :try_start_3
    iget-object p0, p0, Lin/dragonbra/javasteam/util/event/Event;->handlers:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 12
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public handleEvent(Ljava/lang/Object;Lin/dragonbra/javasteam/util/event/EventArgs;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "TT;)V"
        }
    .end annotation

    .line 22
    iget-object v0, p0, Lin/dragonbra/javasteam/util/event/Event;->handlers:Ljava/util/HashSet;

    monitor-enter v0

    .line 23
    :try_start_3
    iget-object p0, p0, Lin/dragonbra/javasteam/util/event/Event;->handlers:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lin/dragonbra/javasteam/util/event/EventHandler;

    .line 24
    invoke-interface {v1, p1, p2}, Lin/dragonbra/javasteam/util/event/EventHandler;->handleEvent(Ljava/lang/Object;Lin/dragonbra/javasteam/util/event/EventArgs;)V

    goto :goto_9

    :catchall_19
    move-exception p0

    goto :goto_1d

    .line 26
    :cond_1b
    monitor-exit v0

    return-void

    :goto_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_19

    throw p0
.end method

.method public removeEventHandler(Lin/dragonbra/javasteam/util/event/EventHandler;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lin/dragonbra/javasteam/util/event/EventHandler<",
            "TT;>;)V"
        }
    .end annotation

    .line 16
    iget-object v0, p0, Lin/dragonbra/javasteam/util/event/Event;->handlers:Ljava/util/HashSet;

    monitor-enter v0

    .line 17
    :try_start_3
    iget-object p0, p0, Lin/dragonbra/javasteam/util/event/Event;->handlers:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 18
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method
