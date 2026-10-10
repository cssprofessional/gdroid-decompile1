###### Class io.ktor.client.plugins.websocket.WebSocketContent (io.ktor.client.plugins.websocket.WebSocketContent)
.class public final Lio/ktor/client/plugins/websocket/WebSocketContent;
.super Lio/ktor/client/request/ClientUpgradeContent;
.source "WebSocketContent.kt"


# instance fields
.field public final headers:Lio/ktor/http/Headers;

.field public final nonce:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 6

    .line 16
    invoke-direct {p0}, Lio/ktor/client/request/ClientUpgradeContent;-><init>()V

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x10

    .line 19
    invoke-static {v1}, Lio/ktor/util/CryptoKt;->generateNonce(I)[B

    move-result-object v1

    .line 20
    invoke-static {v1}, Lio/ktor/util/Base64Kt;->encodeBase64([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/ktor/client/plugins/websocket/WebSocketContent;->nonce:Ljava/lang/String;

    .line 23
    new-instance v1, Lio/ktor/http/HeadersBuilder;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v1, v4, v2, v3}, Lio/ktor/http/HeadersBuilder;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 24
    sget-object v2, Lio/ktor/http/HttpHeaders;->INSTANCE:Lio/ktor/http/HttpHeaders;

    invoke-virtual {v2}, Lio/ktor/http/HttpHeaders;->getUpgrade()Ljava/lang/String;

    move-result-object v3

    const-string v4, "websocket"

    invoke-virtual {v1, v3, v4}, Lio/ktor/util/StringValuesBuilderImpl;->append(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    invoke-virtual {v2}, Lio/ktor/http/HttpHeaders;->getConnection()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Upgrade"

    invoke-virtual {v1, v3, v4}, Lio/ktor/util/StringValuesBuilderImpl;->append(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    invoke-virtual {v2}, Lio/ktor/http/HttpHeaders;->getSecWebSocketKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Lio/ktor/util/StringValuesBuilderImpl;->append(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    invoke-virtual {v2}, Lio/ktor/http/HttpHeaders;->getSecWebSocketVersion()Ljava/lang/String;

    move-result-object v0

    const-string v2, "13"

    invoke-virtual {v1, v0, v2}, Lio/ktor/util/StringValuesBuilderImpl;->append(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    invoke-virtual {v1}, Lio/ktor/http/HeadersBuilder;->build()Lio/ktor/http/Headers;

    move-result-object v0

    iput-object v0, p0, Lio/ktor/client/plugins/websocket/WebSocketContent;->headers:Lio/ktor/http/Headers;

    return-void
.end method


# virtual methods
.method public getHeaders()Lio/ktor/http/Headers;
    .registers 1

    .line 23
    iget-object p0, p0, Lio/ktor/client/plugins/websocket/WebSocketContent;->headers:Lio/ktor/http/Headers;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 1

    .line 41
    const-string p0, "WebSocketContent"

    return-object p0
.end method
