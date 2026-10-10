###### Class in.dragonbra.javasteam.steam.steamclient.AsyncJobManager (in.dragonbra.javasteam.steam.steamclient.AsyncJobManager)
.class public final Lin/dragonbra/javasteam/steam/steamclient/AsyncJobManager;
.super Ljava/lang/Object;
.source "AsyncJobManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lin/dragonbra/javasteam/steam/steamclient/AsyncJobManager$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAsyncJobManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AsyncJobManager.kt\nin/dragonbra/javasteam/steam/steamclient/AsyncJobManager\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,139:1\n1869#2,2:140\n1869#2,2:142\n*S KotlinDebug\n*F\n+ 1 AsyncJobManager.kt\nin/dragonbra/javasteam/steam/steamclient/AsyncJobManager\n*L\n85#1:140,2\n109#1:142,2\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lin/dragonbra/javasteam/steam/steamclient/AsyncJobManager$Companion;

.field private static final logger:Lin/dragonbra/javasteam/util/log/Logger;


# instance fields
.field private final asyncJobs:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Lin/dragonbra/javasteam/types/JobID;",
            "Lin/dragonbra/javasteam/types/AsyncJob;",
            ">;"
        }
    .end annotation
.end field

.field private final jobTimeoutFunc:Lin/dragonbra/javasteam/util/event/ScheduledFunction;


# direct methods
.method public static synthetic $r8$lambda$nxgoeDD919hAUlVNdfrjgzIDYck(Lin/dragonbra/javasteam/steam/steamclient/AsyncJobManager;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lin/dragonbra/javasteam/steam/steamclient/AsyncJobManager;->cancelTimedOutJobs()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lin/dragonbra/javasteam/steam/steamclient/AsyncJobManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lin/dragonbra/javasteam/steam/steamclient/AsyncJobManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lin/dragonbra/javasteam/steam/steamclient/AsyncJobManager;->Companion:Lin/dragonbra/javasteam/steam/steamclient/AsyncJobManager$Companion;

    .line 18
    const-class v0, Lin/dragonbra/javasteam/steam/steamclient/AsyncJobManager;

    invoke-static {v0}, Lin/dragonbra/javasteam/util/log/LogManager;->getLogger(Ljava/lang/Class;)Lin/dragonbra/javasteam/util/log/Logger;

    move-result-object v0

    sput-object v0, Lin/dragonbra/javasteam/steam/steamclient/AsyncJobManager;->logger:Lin/dragonbra/javasteam/util/log/Logger;

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lin/dragonbra/javasteam/steam/steamclient/AsyncJobManager;->asyncJobs:Ljava/util/concurrent/ConcurrentMap;

    .line 23
    new-instance v0, Lin/dragonbra/javasteam/util/event/ScheduledFunction;

    new-instance v1, Lin/dragonbra/javasteam/steam/steamclient/AsyncJobManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lin/dragonbra/javasteam/steam/steamclient/AsyncJobManager$$ExternalSyntheticLambda0;-><init>(Lin/dragonbra/javasteam/steam/steamclient/AsyncJobManager;)V

    const-wide/16 v2, 0x3e8

    invoke-direct {v0, v1, v2, v3}, Lin/dragonbra/javasteam/util/event/ScheduledFunction;-><init>(Ljava/lang/Runnable;J)V

    iput-object v0, p0, Lin/dragonbra/javasteam/steam/steamclient/AsyncJobManager;->jobTimeoutFunc:Lin/dragonbra/javasteam/util/event/ScheduledFunction;

    return-void
.end method

.method private final cancelTimedOutJobs()V
    .registers 4

    .line 109
    iget-object v0, p0, Lin/dragonbra/javasteam/steam/steamclient/AsyncJobManager;->asyncJobs:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    .line 1869
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lin/dragonbra/javasteam/types/AsyncJob;

    .line 110
    invoke-virtual {v1}, Lin/dragonbra/javasteam/types/AsyncJob;->isTimedOut()Z

    move-result v2

    if-eqz v2, :cond_a

    const/4 v2, 0x0

    .line 111
    invoke-virtual {v1, v2}, Lin/dragonbra/javasteam/types/AsyncJob;->setFailed(Z)V

    .line 112
    iget-object v2, p0, Lin/dragonbra/javasteam/steam/steamclient/AsyncJobManager;->asyncJobs:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v1}, Lin/dragonbra/javasteam/types/AsyncJob;->getJobID()Lin/dragonbra/javasteam/types/JobID;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    :cond_2a
    return-void
.end method

.method private final getJob(Lin/dragonbra/javasteam/types/JobID;Z)Lin/dragonbra/javasteam/types/AsyncJob;
    .registers 4

    if-eqz p2, :cond_15

    .line 129
    iget-object p2, p0, Lin/dragonbra/javasteam/steam/steamclient/AsyncJobManager;->asyncJobs:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lin/dragonbra/javasteam/types/AsyncJob;

    .line 130
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/steamclient/AsyncJobManager;->asyncJobs:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    goto :goto_23

    .line 132
    :cond_15
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/steamclient/AsyncJobManager;->asyncJobs:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object p2, p0

    check-cast p2, Lin/dragonbra/javasteam/types/AsyncJob;

    if-eqz p2, :cond_22

    const/4 p0, 0x1

    goto :goto_23

    :cond_22
    const/4 p0, 0x0

    :goto_23
    if-eqz p0, :cond_26

    goto :goto_27

    :cond_26
    const/4 p2, 0x0

    :goto_27
    return-object p2
.end method

.method public static synthetic getJob$default(Lin/dragonbra/javasteam/steam/steamclient/AsyncJobManager;Lin/dragonbra/javasteam/types/JobID;ZILjava/lang/Object;)Lin/dragonbra/javasteam/types/AsyncJob;
    .registers 5

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_5

    const/4 p2, 0x0

    .line 124
    :cond_5
    invoke-direct {p0, p1, p2}, Lin/dragonbra/javasteam/steam/steamclient/AsyncJobManager;->getJob(Lin/dragonbra/javasteam/types/JobID;Z)Lin/dragonbra/javasteam/types/AsyncJob;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final cancelPendingJobs()V
    .registers 4

    .line 85
    iget-object v0, p0, Lin/dragonbra/javasteam/steam/steamclient/AsyncJobManager;->asyncJobs:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    .line 1869
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lin/dragonbra/javasteam/types/AsyncJob;

    const/4 v2, 0x0

    .line 86
    invoke-virtual {v1, v2}, Lin/dragonbra/javasteam/types/AsyncJob;->setFailed(Z)V

    goto :goto_a

    .line 89
    :cond_1b
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/steamclient/AsyncJobManager;->asyncJobs:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public final failJob(Lin/dragonbra/javasteam/types/JobID;)V
    .registers 6

    const-string v0, "jobID"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    sget-object v0, Lin/dragonbra/javasteam/steam/steamclient/AsyncJobManager;->logger:Lin/dragonbra/javasteam/util/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failing job id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3, v2}, Lin/dragonbra/javasteam/util/log/Logger;->debug$default(Lin/dragonbra/javasteam/util/log/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    const/4 v0, 0x1

    .line 76
    invoke-direct {p0, p1, v0}, Lin/dragonbra/javasteam/steam/steamclient/AsyncJobManager;->getJob(Lin/dragonbra/javasteam/types/JobID;Z)Lin/dragonbra/javasteam/types/AsyncJob;

    move-result-object p0

    if-nez p0, :cond_25

    return-void

    .line 78
    :cond_25
    invoke-virtual {p0, v0}, Lin/dragonbra/javasteam/types/AsyncJob;->setFailed(Z)V

    return-void
.end method

.method public final getAsyncJobs()Ljava/util/concurrent/ConcurrentMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentMap<",
            "Lin/dragonbra/javasteam/types/JobID;",
            "Lin/dragonbra/javasteam/types/AsyncJob;",
            ">;"
        }
    .end annotation

    .line 21
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/steamclient/AsyncJobManager;->asyncJobs:Ljava/util/concurrent/ConcurrentMap;

    return-object p0
.end method

.method public final heartbeatJob(Lin/dragonbra/javasteam/types/JobID;)V
    .registers 5

    const-string v0, "jobID"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 62
    invoke-static {p0, p1, v2, v0, v1}, Lin/dragonbra/javasteam/steam/steamclient/AsyncJobManager;->getJob$default(Lin/dragonbra/javasteam/steam/steamclient/AsyncJobManager;Lin/dragonbra/javasteam/types/JobID;ZILjava/lang/Object;)Lin/dragonbra/javasteam/types/AsyncJob;

    move-result-object p0

    if-nez p0, :cond_f

    return-void

    .line 64
    :cond_f
    invoke-virtual {p0}, Lin/dragonbra/javasteam/types/AsyncJob;->heartbeat()V

    return-void
.end method

.method public final setTimeoutsEnabled(Z)V
    .registers 2

    if-eqz p1, :cond_8

    .line 99
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/steamclient/AsyncJobManager;->jobTimeoutFunc:Lin/dragonbra/javasteam/util/event/ScheduledFunction;

    invoke-virtual {p0}, Lin/dragonbra/javasteam/util/event/ScheduledFunction;->start()V

    goto :goto_d

    .line 101
    :cond_8
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/steamclient/AsyncJobManager;->jobTimeoutFunc:Lin/dragonbra/javasteam/util/event/ScheduledFunction;

    invoke-virtual {p0}, Lin/dragonbra/javasteam/util/event/ScheduledFunction;->stop()V

    :goto_d
    return-void
.end method

.method public final startJob(Lin/dragonbra/javasteam/types/AsyncJob;)V
    .registers 3

    const-string v0, "asyncJob"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/steamclient/AsyncJobManager;->asyncJobs:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p1}, Lin/dragonbra/javasteam/types/AsyncJob;->getJobID()Lin/dragonbra/javasteam/types/JobID;

    move-result-object v0

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final tryCompleteJob(Lin/dragonbra/javasteam/types/JobID;Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;)V
    .registers 6

    const-string v0, "jobID"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 43
    invoke-static {p0, p1, v2, v0, v1}, Lin/dragonbra/javasteam/steam/steamclient/AsyncJobManager;->getJob$default(Lin/dragonbra/javasteam/steam/steamclient/AsyncJobManager;Lin/dragonbra/javasteam/types/JobID;ZILjava/lang/Object;)Lin/dragonbra/javasteam/types/AsyncJob;

    move-result-object v0

    if-nez v0, :cond_14

    return-void

    .line 47
    :cond_14
    invoke-virtual {v0, p2}, Lin/dragonbra/javasteam/types/AsyncJob;->addResult(Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;)Z

    move-result p2

    if-eqz p2, :cond_1f

    .line 51
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/steamclient/AsyncJobManager;->asyncJobs:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1f
    return-void
.end method

###### Class in.dragonbra.javasteam.steam.steamclient.AsyncJobManager.Companion (in.dragonbra.javasteam.steam.steamclient.AsyncJobManager$Companion)
.class public final Lin/dragonbra/javasteam/steam/steamclient/AsyncJobManager$Companion;
.super Ljava/lang/Object;
.source "AsyncJobManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lin/dragonbra/javasteam/steam/steamclient/AsyncJobManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lin/dragonbra/javasteam/steam/steamclient/AsyncJobManager$Companion;-><init>()V

    return-void
.end method

###### Class in.dragonbra.javasteam.steam.steamclient.AsyncJobManager$$ExternalSyntheticLambda0 (in.dragonbra.javasteam.steam.steamclient.AsyncJobManager$$ExternalSyntheticLambda0)
.class public final synthetic Lin/dragonbra/javasteam/steam/steamclient/AsyncJobManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lin/dragonbra/javasteam/steam/steamclient/AsyncJobManager;


# direct methods
.method public synthetic constructor <init>(Lin/dragonbra/javasteam/steam/steamclient/AsyncJobManager;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lin/dragonbra/javasteam/steam/steamclient/AsyncJobManager$$ExternalSyntheticLambda0;->f$0:Lin/dragonbra/javasteam/steam/steamclient/AsyncJobManager;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    .line 0
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/steamclient/AsyncJobManager$$ExternalSyntheticLambda0;->f$0:Lin/dragonbra/javasteam/steam/steamclient/AsyncJobManager;

    invoke-static {p0}, Lin/dragonbra/javasteam/steam/steamclient/AsyncJobManager;->$r8$lambda$nxgoeDD919hAUlVNdfrjgzIDYck(Lin/dragonbra/javasteam/steam/steamclient/AsyncJobManager;)V

    return-void
.end method
