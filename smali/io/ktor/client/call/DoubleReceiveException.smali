###### Class io.ktor.client.call.DoubleReceiveException (io.ktor.client.call.DoubleReceiveException)
.class public final Lio/ktor/client/call/DoubleReceiveException;
.super Ljava/lang/IllegalStateException;
.source "HttpClientCall.kt"


# instance fields
.field public final message:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lio/ktor/client/call/HttpClientCall;)V
    .registers 4

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 182
    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Response already received: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/ktor/client/call/DoubleReceiveException;->message:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .registers 1

    .line 183
    iget-object p0, p0, Lio/ktor/client/call/DoubleReceiveException;->message:Ljava/lang/String;

    return-object p0
.end method
