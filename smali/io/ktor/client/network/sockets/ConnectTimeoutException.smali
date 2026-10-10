###### Class io.ktor.client.network.sockets.ConnectTimeoutException (io.ktor.client.network.sockets.ConnectTimeoutException)
.class public final Lio/ktor/client/network/sockets/ConnectTimeoutException;
.super Ljava/net/ConnectException;
.source "TimeoutExceptions.kt"


# instance fields
.field public final cause:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0, p1}, Ljava/net/ConnectException;-><init>(Ljava/lang/String;)V

    .line 17
    iput-object p2, p0, Lio/ktor/client/network/sockets/ConnectTimeoutException;->cause:Ljava/lang/Throwable;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 5

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_5

    const/4 p2, 0x0

    .line 15
    :cond_5
    invoke-direct {p0, p1, p2}, Lio/ktor/client/network/sockets/ConnectTimeoutException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .registers 1

    .line 17
    iget-object p0, p0, Lio/ktor/client/network/sockets/ConnectTimeoutException;->cause:Ljava/lang/Throwable;

    return-object p0
.end method
