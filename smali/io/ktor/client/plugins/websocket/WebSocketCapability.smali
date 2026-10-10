###### Class io.ktor.client.plugins.websocket.WebSocketCapability (io.ktor.client.plugins.websocket.WebSocketCapability)
.class public final Lio/ktor/client/plugins/websocket/WebSocketCapability;
.super Ljava/lang/Object;
.source "WebSockets.kt"

# interfaces
.implements Lio/ktor/client/engine/HttpClientEngineCapability;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/ktor/client/engine/HttpClientEngineCapability<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lio/ktor/client/plugins/websocket/WebSocketCapability;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lio/ktor/client/plugins/websocket/WebSocketCapability;

    invoke-direct {v0}, Lio/ktor/client/plugins/websocket/WebSocketCapability;-><init>()V

    sput-object v0, Lio/ktor/client/plugins/websocket/WebSocketCapability;->INSTANCE:Lio/ktor/client/plugins/websocket/WebSocketCapability;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of p0, p1, Lio/ktor/client/plugins/websocket/WebSocketCapability;

    if-nez p0, :cond_a

    const/4 p0, 0x0

    return p0

    :cond_a
    return v0
.end method

.method public hashCode()I
    .registers 1

    .line 0
    const p0, -0x44572b3f

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 1

    .line 0
    const-string p0, "WebSocketCapability"

    return-object p0
.end method
