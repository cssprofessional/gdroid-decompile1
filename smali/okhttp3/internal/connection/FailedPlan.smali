###### Class okhttp3.internal.connection.FailedPlan (okhttp3.internal.connection.FailedPlan)
.class public final Lokhttp3/internal/connection/FailedPlan;
.super Ljava/lang/Object;
.source "FailedPlan.kt"

# interfaces
.implements Lokhttp3/internal/connection/RoutePlanner$Plan;


# instance fields
.field public final isReady:Z

.field public final result:Lokhttp3/internal/connection/RoutePlanner$ConnectResult;


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;)V
    .registers 9

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Lokhttp3/internal/connection/RoutePlanner$ConnectResult;

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v1, v0

    move-object v2, p0

    move-object v4, p1

    invoke-direct/range {v1 .. v6}, Lokhttp3/internal/connection/RoutePlanner$ConnectResult;-><init>(Lokhttp3/internal/connection/RoutePlanner$Plan;Lokhttp3/internal/connection/RoutePlanner$Plan;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Lokhttp3/internal/connection/FailedPlan;->result:Lokhttp3/internal/connection/RoutePlanner$ConnectResult;

    return-void
.end method


# virtual methods
.method public cancel()Ljava/lang/Void;
    .registers 2

    new-instance p0, Ljava/lang/IllegalStateException;

    .line 42
    const-string v0, "unexpected cancel"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public bridge synthetic cancel()V
    .registers 1

    .line 29
    invoke-virtual {p0}, Lokhttp3/internal/connection/FailedPlan;->cancel()Ljava/lang/Void;

    return-void
.end method

.method public connectTcp()Lokhttp3/internal/connection/RoutePlanner$ConnectResult;
    .registers 1

    .line 36
    iget-object p0, p0, Lokhttp3/internal/connection/FailedPlan;->result:Lokhttp3/internal/connection/RoutePlanner$ConnectResult;

    return-object p0
.end method

.method public connectTlsEtc()Lokhttp3/internal/connection/RoutePlanner$ConnectResult;
    .registers 1

    .line 38
    iget-object p0, p0, Lokhttp3/internal/connection/FailedPlan;->result:Lokhttp3/internal/connection/RoutePlanner$ConnectResult;

    return-object p0
.end method

.method public final getResult()Lokhttp3/internal/connection/RoutePlanner$ConnectResult;
    .registers 1

    .line 32
    iget-object p0, p0, Lokhttp3/internal/connection/FailedPlan;->result:Lokhttp3/internal/connection/RoutePlanner$ConnectResult;

    return-object p0
.end method

.method public handleSuccess()Ljava/lang/Void;
    .registers 2

    new-instance p0, Ljava/lang/IllegalStateException;

    .line 40
    const-string v0, "unexpected call"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public bridge synthetic handleSuccess()Lokhttp3/internal/connection/RealConnection;
    .registers 1

    .line 29
    invoke-virtual {p0}, Lokhttp3/internal/connection/FailedPlan;->handleSuccess()Ljava/lang/Void;

    move-result-object p0

    check-cast p0, Lokhttp3/internal/connection/RealConnection;

    return-object p0
.end method

.method public isReady()Z
    .registers 1

    .line 34
    iget-boolean p0, p0, Lokhttp3/internal/connection/FailedPlan;->isReady:Z

    return p0
.end method

.method public retry()Ljava/lang/Void;
    .registers 2

    new-instance p0, Ljava/lang/IllegalStateException;

    .line 44
    const-string v0, "unexpected retry"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public bridge synthetic retry()Lokhttp3/internal/connection/RoutePlanner$Plan;
    .registers 1

    .line 29
    invoke-virtual {p0}, Lokhttp3/internal/connection/FailedPlan;->retry()Ljava/lang/Void;

    move-result-object p0

    check-cast p0, Lokhttp3/internal/connection/RoutePlanner$Plan;

    return-object p0
.end method
