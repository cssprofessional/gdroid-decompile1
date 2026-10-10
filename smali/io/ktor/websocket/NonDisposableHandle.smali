###### Class io.ktor.websocket.NonDisposableHandle (io.ktor.websocket.NonDisposableHandle)
.class public final Lio/ktor/websocket/NonDisposableHandle;
.super Ljava/lang/Object;
.source "FrameCommon.kt"

# interfaces
.implements Lkotlinx/coroutines/DisposableHandle;


# static fields
.field public static final INSTANCE:Lio/ktor/websocket/NonDisposableHandle;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lio/ktor/websocket/NonDisposableHandle;

    invoke-direct {v0}, Lio/ktor/websocket/NonDisposableHandle;-><init>()V

    sput-object v0, Lio/ktor/websocket/NonDisposableHandle;->INSTANCE:Lio/ktor/websocket/NonDisposableHandle;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dispose()V
    .registers 1

    .line 0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of p0, p1, Lio/ktor/websocket/NonDisposableHandle;

    if-nez p0, :cond_a

    const/4 p0, 0x0

    return p0

    :cond_a
    return v0
.end method

.method public hashCode()I
    .registers 1

    .line 0
    const p0, 0xc65a834

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 1

    .line 0
    const-string p0, "NonDisposableHandle"

    return-object p0
.end method
