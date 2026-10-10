###### Class io.ktor.websocket.DefaultWebSocketSessionKt (io.ktor.websocket.DefaultWebSocketSessionKt)
.class public final Lio/ktor/websocket/DefaultWebSocketSessionKt;
.super Ljava/lang/Object;
.source "DefaultWebSocketSession.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDefaultWebSocketSession.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DefaultWebSocketSession.kt\nio/ktor/websocket/DefaultWebSocketSessionKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,401:1\n1#2:402\n*E\n"
.end annotation


# static fields
.field public static final IncomingProcessorCoroutineName:Lkotlinx/coroutines/CoroutineName;

.field public static final LOGGER:Lorg/slf4j/Logger;

.field public static final NORMAL_CLOSE:Lio/ktor/websocket/CloseReason;

.field public static final OutgoingProcessorCoroutineName:Lkotlinx/coroutines/CoroutineName;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 20
    const-string v0, "io.ktor.websocket.WebSocket"

    invoke-static {v0}, Lio/ktor/util/logging/KtorSimpleLoggerJvmKt;->KtorSimpleLogger(Ljava/lang/String;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lio/ktor/websocket/DefaultWebSocketSessionKt;->LOGGER:Lorg/slf4j/Logger;

    .line 88
    new-instance v0, Lkotlinx/coroutines/CoroutineName;

    const-string v1, "ws-incoming-processor"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/CoroutineName;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/ktor/websocket/DefaultWebSocketSessionKt;->IncomingProcessorCoroutineName:Lkotlinx/coroutines/CoroutineName;

    .line 89
    new-instance v0, Lkotlinx/coroutines/CoroutineName;

    const-string v1, "ws-outgoing-processor"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/CoroutineName;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/ktor/websocket/DefaultWebSocketSessionKt;->OutgoingProcessorCoroutineName:Lkotlinx/coroutines/CoroutineName;

    .line 91
    new-instance v0, Lio/ktor/websocket/CloseReason;

    sget-object v1, Lio/ktor/websocket/CloseReason$Codes;->NORMAL:Lio/ktor/websocket/CloseReason$Codes;

    const-string v2, "OK"

    invoke-direct {v0, v1, v2}, Lio/ktor/websocket/CloseReason;-><init>(Lio/ktor/websocket/CloseReason$Codes;Ljava/lang/String;)V

    sput-object v0, Lio/ktor/websocket/DefaultWebSocketSessionKt;->NORMAL_CLOSE:Lio/ktor/websocket/CloseReason;

    return-void
.end method

.method public static final DefaultWebSocketSession(Lio/ktor/websocket/WebSocketSession;JJ)Lio/ktor/websocket/DefaultWebSocketSession;
    .registers 12

    const-string v0, "session"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    instance-of v0, p0, Lio/ktor/websocket/DefaultWebSocketSession;

    if-nez v0, :cond_13

    .line 85
    new-instance v0, Lio/ktor/websocket/DefaultWebSocketSessionImpl;

    move-object v1, v0

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Lio/ktor/websocket/DefaultWebSocketSessionImpl;-><init>(Lio/ktor/websocket/WebSocketSession;JJ)V

    return-object v0

    .line 84
    :cond_13
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Cannot wrap other DefaultWebSocketSession"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final synthetic access$getIncomingProcessorCoroutineName$p()Lkotlinx/coroutines/CoroutineName;
    .registers 1

    .line 1
    sget-object v0, Lio/ktor/websocket/DefaultWebSocketSessionKt;->IncomingProcessorCoroutineName:Lkotlinx/coroutines/CoroutineName;

    return-object v0
.end method

.method public static final synthetic access$getNORMAL_CLOSE$p()Lio/ktor/websocket/CloseReason;
    .registers 1

    .line 1
    sget-object v0, Lio/ktor/websocket/DefaultWebSocketSessionKt;->NORMAL_CLOSE:Lio/ktor/websocket/CloseReason;

    return-object v0
.end method

.method public static final synthetic access$getOutgoingProcessorCoroutineName$p()Lkotlinx/coroutines/CoroutineName;
    .registers 1

    .line 1
    sget-object v0, Lio/ktor/websocket/DefaultWebSocketSessionKt;->OutgoingProcessorCoroutineName:Lkotlinx/coroutines/CoroutineName;

    return-object v0
.end method

.method public static final getLOGGER()Lorg/slf4j/Logger;
    .registers 1

    .line 20
    sget-object v0, Lio/ktor/websocket/DefaultWebSocketSessionKt;->LOGGER:Lorg/slf4j/Logger;

    return-object v0
.end method
