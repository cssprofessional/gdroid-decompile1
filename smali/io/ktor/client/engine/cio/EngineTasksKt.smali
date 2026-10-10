###### Class io.ktor.client.engine.cio.EngineTasksKt (io.ktor.client.engine.cio.EngineTasksKt)
.class public final Lio/ktor/client/engine/cio/EngineTasksKt;
.super Ljava/lang/Object;
.source "EngineTasks.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEngineTasks.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EngineTasks.kt\nio/ktor/client/engine/cio/EngineTasksKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,39:1\n1761#2,3:40\n*S KotlinDebug\n*F\n+ 1 EngineTasks.kt\nio/ktor/client/engine/cio/EngineTasksKt\n*L\n23#1:40,3\n*E\n"
.end annotation


# direct methods
.method public static final containsCustomTimeouts(Lio/ktor/client/request/HttpRequestData;)Z
    .registers 3

    .line 36
    sget-object v0, Lio/ktor/client/plugins/HttpTimeoutCapability;->INSTANCE:Lio/ktor/client/plugins/HttpTimeoutCapability;

    invoke-virtual {p0, v0}, Lio/ktor/client/request/HttpRequestData;->getCapabilityOrNull(Lio/ktor/client/engine/HttpClientEngineCapability;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/ktor/client/plugins/HttpTimeoutConfig;

    const/4 v0, 0x0

    if-eqz p0, :cond_18

    .line 37
    invoke-virtual {p0}, Lio/ktor/client/plugins/HttpTimeoutConfig;->getConnectTimeoutMillis()Ljava/lang/Long;

    move-result-object v1

    if-nez v1, :cond_17

    invoke-virtual {p0}, Lio/ktor/client/plugins/HttpTimeoutConfig;->getSocketTimeoutMillis()Ljava/lang/Long;

    move-result-object p0

    if-eqz p0, :cond_18

    :cond_17
    const/4 v0, 0x1

    :cond_18
    return v0
.end method

.method public static final requiresDedicatedConnection(Lio/ktor/client/request/HttpRequestData;)Z
    .registers 8

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-virtual {p0}, Lio/ktor/client/request/HttpRequestData;->getHeaders()Lio/ktor/http/Headers;

    move-result-object v0

    invoke-virtual {p0}, Lio/ktor/client/request/HttpRequestData;->getBody()Lio/ktor/http/content/OutgoingContent;

    move-result-object v1

    invoke-virtual {v1}, Lio/ktor/http/content/OutgoingContent;->getHeaders()Lio/ktor/http/Headers;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Lio/ktor/http/Headers;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-static {v2}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_27

    .line 1761
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_27

    goto :goto_54

    .line 1762
    :cond_27
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_54

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/ktor/http/Headers;

    .line 23
    sget-object v4, Lio/ktor/http/HttpHeaders;->INSTANCE:Lio/ktor/http/HttpHeaders;

    invoke-virtual {v4}, Lio/ktor/http/HttpHeaders;->getConnection()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Lio/ktor/util/StringValues;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "close"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7c

    invoke-virtual {v4}, Lio/ktor/http/HttpHeaders;->getUpgrade()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lio/ktor/util/StringValues;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2b

    goto :goto_7c

    .line 24
    :cond_54
    :goto_54
    sget-object v1, Lio/ktor/http/HttpMethod;->Companion:Lio/ktor/http/HttpMethod$Companion;

    invoke-virtual {v1}, Lio/ktor/http/HttpMethod$Companion;->getGet()Lio/ktor/http/HttpMethod;

    move-result-object v2

    invoke-virtual {v1}, Lio/ktor/http/HttpMethod$Companion;->getHead()Lio/ktor/http/HttpMethod;

    move-result-object v1

    filled-new-array {v2, v1}, [Lio/ktor/http/HttpMethod;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lio/ktor/client/request/HttpRequestData;->getMethod()Lio/ktor/http/HttpMethod;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7c

    .line 25
    invoke-static {p0}, Lio/ktor/client/engine/cio/EngineTasksKt;->containsCustomTimeouts(Lio/ktor/client/request/HttpRequestData;)Z

    move-result v1

    if-nez v1, :cond_7c

    .line 26
    invoke-static {p0}, Lio/ktor/client/request/HttpRequestKt;->isSseRequest(Lio/ktor/client/request/HttpRequestData;)Z

    move-result p0

    if-eqz p0, :cond_7d

    :cond_7c
    :goto_7c
    move v3, v0

    :cond_7d
    return v3
.end method
