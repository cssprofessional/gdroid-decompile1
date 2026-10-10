###### Class in.dragonbra.javasteam.types.AsyncJob (in.dragonbra.javasteam.types.AsyncJob)
.class public abstract Lin/dragonbra/javasteam/types/AsyncJob;
.super Ljava/lang/Object;
.source "AsyncJob.kt"


# instance fields
.field private final client:Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

.field private final jobID:Lin/dragonbra/javasteam/types/JobID;

.field private jobStart:Ljava/time/Instant;

.field private timeout:J


# direct methods
.method public constructor <init>(Lin/dragonbra/javasteam/steam/steamclient/SteamClient;Lin/dragonbra/javasteam/types/JobID;)V
    .registers 4

    const-string v0, "client"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "jobID"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lin/dragonbra/javasteam/types/AsyncJob;->client:Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    iput-object p2, p0, Lin/dragonbra/javasteam/types/AsyncJob;->jobID:Lin/dragonbra/javasteam/types/JobID;

    .line 16
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object p1

    iput-object p1, p0, Lin/dragonbra/javasteam/types/AsyncJob;->jobStart:Ljava/time/Instant;

    const-wide/16 p1, 0x2710

    .line 18
    iput-wide p1, p0, Lin/dragonbra/javasteam/types/AsyncJob;->timeout:J

    return-void
.end method


# virtual methods
.method public abstract addResult(Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;)Z
.end method

.method public final getClient()Lin/dragonbra/javasteam/steam/steamclient/SteamClient;
    .registers 1

    .line 14
    iget-object p0, p0, Lin/dragonbra/javasteam/types/AsyncJob;->client:Lin/dragonbra/javasteam/steam/steamclient/SteamClient;

    return-object p0
.end method

.method public final getJobID()Lin/dragonbra/javasteam/types/JobID;
    .registers 1

    .line 14
    iget-object p0, p0, Lin/dragonbra/javasteam/types/AsyncJob;->jobID:Lin/dragonbra/javasteam/types/JobID;

    return-object p0
.end method

.method public final getTimeout()J
    .registers 3

    .line 18
    iget-wide v0, p0, Lin/dragonbra/javasteam/types/AsyncJob;->timeout:J

    return-wide v0
.end method

.method public final heartbeat()V
    .registers 5

    .line 32
    iget-wide v0, p0, Lin/dragonbra/javasteam/types/AsyncJob;->timeout:J

    const/16 v2, 0x2710

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lin/dragonbra/javasteam/types/AsyncJob;->timeout:J

    return-void
.end method

.method public final isTimedOut()Z
    .registers 5

    .line 21
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v0

    iget-object v1, p0, Lin/dragonbra/javasteam/types/AsyncJob;->jobStart:Ljava/time/Instant;

    iget-wide v2, p0, Lin/dragonbra/javasteam/types/AsyncJob;->timeout:J

    invoke-virtual {v1, v2, v3}, Ljava/time/Instant;->plusMillis(J)Ljava/time/Instant;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/time/Instant;->compareTo(Ljava/time/Instant;)I

    move-result p0

    if-ltz p0, :cond_14

    const/4 p0, 0x1

    goto :goto_15

    :cond_14
    const/4 p0, 0x0

    :goto_15
    return p0
.end method

.method public final registerJob(Lin/dragonbra/javasteam/steam/steamclient/SteamClient;)V
    .registers 3

    const-string v0, "client"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-virtual {p1, p0}, Lin/dragonbra/javasteam/steam/steamclient/SteamClient;->startJob(Lin/dragonbra/javasteam/types/AsyncJob;)V

    return-void
.end method

.method public abstract setFailed(Z)V
.end method

.method public final setTimeout(J)V
    .registers 3

    .line 18
    iput-wide p1, p0, Lin/dragonbra/javasteam/types/AsyncJob;->timeout:J

    return-void
.end method
