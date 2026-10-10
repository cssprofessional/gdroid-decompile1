###### Class okhttp3.internal.connection.ReusePlan (okhttp3.internal.connection.ReusePlan)
.class public final Lokhttp3/internal/connection/ReusePlan;
.super Ljava/lang/Object;
.source "ReusePlan.kt"

# interfaces
.implements Lokhttp3/internal/connection/RoutePlanner$Plan;


# instance fields
.field public final connection:Lokhttp3/internal/connection/RealConnection;

.field public final isReady:Z


# direct methods
.method public constructor <init>(Lokhttp3/internal/connection/RealConnection;)V
    .registers 3

    const-string v0, "connection"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lokhttp3/internal/connection/ReusePlan;->connection:Lokhttp3/internal/connection/RealConnection;

    const/4 p1, 0x1

    .line 22
    iput-boolean p1, p0, Lokhttp3/internal/connection/ReusePlan;->isReady:Z

    return-void
.end method


# virtual methods
.method public cancel()Ljava/lang/Void;
    .registers 2

    new-instance p0, Ljava/lang/IllegalStateException;

    .line 30
    const-string v0, "unexpected cancel"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public bridge synthetic cancel()V
    .registers 1

    .line 19
    invoke-virtual {p0}, Lokhttp3/internal/connection/ReusePlan;->cancel()Ljava/lang/Void;

    return-void
.end method

.method public connectTcp()Ljava/lang/Void;
    .registers 2

    new-instance p0, Ljava/lang/IllegalStateException;

    .line 24
    const-string v0, "already connected"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public bridge synthetic connectTcp()Lokhttp3/internal/connection/RoutePlanner$ConnectResult;
    .registers 1

    .line 19
    invoke-virtual {p0}, Lokhttp3/internal/connection/ReusePlan;->connectTcp()Ljava/lang/Void;

    move-result-object p0

    check-cast p0, Lokhttp3/internal/connection/RoutePlanner$ConnectResult;

    return-object p0
.end method

.method public connectTlsEtc()Ljava/lang/Void;
    .registers 2

    new-instance p0, Ljava/lang/IllegalStateException;

    .line 26
    const-string v0, "already connected"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public bridge synthetic connectTlsEtc()Lokhttp3/internal/connection/RoutePlanner$ConnectResult;
    .registers 1

    .line 19
    invoke-virtual {p0}, Lokhttp3/internal/connection/ReusePlan;->connectTlsEtc()Ljava/lang/Void;

    move-result-object p0

    check-cast p0, Lokhttp3/internal/connection/RoutePlanner$ConnectResult;

    return-object p0
.end method

.method public final getConnection()Lokhttp3/internal/connection/RealConnection;
    .registers 1

    .line 20
    iget-object p0, p0, Lokhttp3/internal/connection/ReusePlan;->connection:Lokhttp3/internal/connection/RealConnection;

    return-object p0
.end method

.method public handleSuccess()Lokhttp3/internal/connection/RealConnection;
    .registers 1

    .line 28
    iget-object p0, p0, Lokhttp3/internal/connection/ReusePlan;->connection:Lokhttp3/internal/connection/RealConnection;

    return-object p0
.end method

.method public isReady()Z
    .registers 1

    .line 22
    iget-boolean p0, p0, Lokhttp3/internal/connection/ReusePlan;->isReady:Z

    return p0
.end method

.method public retry()Ljava/lang/Void;
    .registers 2

    new-instance p0, Ljava/lang/IllegalStateException;

    .line 32
    const-string v0, "unexpected retry"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public bridge synthetic retry()Lokhttp3/internal/connection/RoutePlanner$Plan;
    .registers 1

    .line 19
    invoke-virtual {p0}, Lokhttp3/internal/connection/ReusePlan;->retry()Ljava/lang/Void;

    move-result-object p0

    check-cast p0, Lokhttp3/internal/connection/RoutePlanner$Plan;

    return-object p0
.end method
