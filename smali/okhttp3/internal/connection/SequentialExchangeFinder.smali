###### Class okhttp3.internal.connection.SequentialExchangeFinder (okhttp3.internal.connection.SequentialExchangeFinder)
.class public final Lokhttp3/internal/connection/SequentialExchangeFinder;
.super Ljava/lang/Object;
.source "SequentialExchangeFinder.kt"

# interfaces
.implements Lokhttp3/internal/connection/ExchangeFinder;


# instance fields
.field public final routePlanner:Lokhttp3/internal/connection/RoutePlanner;


# direct methods
.method public constructor <init>(Lokhttp3/internal/connection/RoutePlanner;)V
    .registers 3

    const-string v0, "routePlanner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lokhttp3/internal/connection/SequentialExchangeFinder;->routePlanner:Lokhttp3/internal/connection/RoutePlanner;

    return-void
.end method


# virtual methods
.method public find()Lokhttp3/internal/connection/RealConnection;
    .registers 6

    const/4 v0, 0x0

    move-object v1, v0

    .line 27
    :goto_2
    invoke-virtual {p0}, Lokhttp3/internal/connection/SequentialExchangeFinder;->getRoutePlanner()Lokhttp3/internal/connection/RoutePlanner;

    move-result-object v2

    invoke-interface {v2}, Lokhttp3/internal/connection/RoutePlanner;->isCanceled()Z

    move-result v2

    if-nez v2, :cond_5d

    .line 30
    :try_start_c
    invoke-virtual {p0}, Lokhttp3/internal/connection/SequentialExchangeFinder;->getRoutePlanner()Lokhttp3/internal/connection/RoutePlanner;

    move-result-object v2

    invoke-interface {v2}, Lokhttp3/internal/connection/RoutePlanner;->plan()Lokhttp3/internal/connection/RoutePlanner$Plan;

    move-result-object v2

    .line 32
    invoke-interface {v2}, Lokhttp3/internal/connection/RoutePlanner$Plan;->isReady()Z

    move-result v3

    if-nez v3, :cond_44

    .line 33
    invoke-interface {v2}, Lokhttp3/internal/connection/RoutePlanner$Plan;->connectTcp()Lokhttp3/internal/connection/RoutePlanner$ConnectResult;

    move-result-object v3

    .line 36
    invoke-virtual {v3}, Lokhttp3/internal/connection/RoutePlanner$ConnectResult;->isSuccess()Z

    move-result v4

    if-eqz v4, :cond_2b

    invoke-interface {v2}, Lokhttp3/internal/connection/RoutePlanner$Plan;->connectTlsEtc()Lokhttp3/internal/connection/RoutePlanner$ConnectResult;

    move-result-object v3

    goto :goto_2b

    :catch_29
    move-exception v2

    goto :goto_49

    .line 40
    :cond_2b
    :goto_2b
    invoke-virtual {v3}, Lokhttp3/internal/connection/RoutePlanner$ConnectResult;->component2()Lokhttp3/internal/connection/RoutePlanner$Plan;

    move-result-object v4

    invoke-virtual {v3}, Lokhttp3/internal/connection/RoutePlanner$ConnectResult;->component3()Ljava/lang/Throwable;

    move-result-object v3

    if-nez v3, :cond_43

    if-eqz v4, :cond_44

    .line 44
    invoke-virtual {p0}, Lokhttp3/internal/connection/SequentialExchangeFinder;->getRoutePlanner()Lokhttp3/internal/connection/RoutePlanner;

    move-result-object v2

    invoke-interface {v2}, Lokhttp3/internal/connection/RoutePlanner;->getDeferredPlans()Lkotlin/collections/ArrayDeque;

    move-result-object v2

    invoke-virtual {v2, v4}, Lkotlin/collections/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    goto :goto_2

    .line 42
    :cond_43
    throw v3

    .line 48
    :cond_44
    invoke-interface {v2}, Lokhttp3/internal/connection/RoutePlanner$Plan;->handleSuccess()Lokhttp3/internal/connection/RealConnection;

    move-result-object p0
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_48} :catch_29

    return-object p0

    :goto_49
    if-nez v1, :cond_4d

    move-object v1, v2

    goto :goto_50

    .line 53
    :cond_4d
    invoke-static {v1, v2}, Lkotlin/ExceptionsKt__ExceptionsKt;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 55
    :goto_50
    invoke-virtual {p0}, Lokhttp3/internal/connection/SequentialExchangeFinder;->getRoutePlanner()Lokhttp3/internal/connection/RoutePlanner;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v0, v3, v0}, Lokhttp3/internal/connection/RoutePlanner;->hasNext$default(Lokhttp3/internal/connection/RoutePlanner;Lokhttp3/internal/connection/RealConnection;ILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5c

    goto :goto_2

    .line 56
    :cond_5c
    throw v1

    .line 27
    :cond_5d
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Canceled"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getRoutePlanner()Lokhttp3/internal/connection/RoutePlanner;
    .registers 1

    .line 22
    iget-object p0, p0, Lokhttp3/internal/connection/SequentialExchangeFinder;->routePlanner:Lokhttp3/internal/connection/RoutePlanner;

    return-object p0
.end method
