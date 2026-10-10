###### Class io.ktor.client.request.HttpRequestData (io.ktor.client.request.HttpRequestData)
.class public final Lio/ktor/client/request/HttpRequestData;
.super Ljava/lang/Object;
.source "HttpRequest.kt"


# instance fields
.field public final attributes:Lio/ktor/util/Attributes;

.field public final body:Lio/ktor/http/content/OutgoingContent;

.field public final executionContext:Lkotlinx/coroutines/Job;

.field public final headers:Lio/ktor/http/Headers;

.field public final method:Lio/ktor/http/HttpMethod;

.field public final requiredCapabilities:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lio/ktor/client/engine/HttpClientEngineCapability<",
            "*>;>;"
        }
    .end annotation
.end field

.field public final url:Lio/ktor/http/Url;


# direct methods
.method public constructor <init>(Lio/ktor/http/Url;Lio/ktor/http/HttpMethod;Lio/ktor/http/Headers;Lio/ktor/http/content/OutgoingContent;Lkotlinx/coroutines/Job;Lio/ktor/util/Attributes;)V
    .registers 8

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "method"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "headers"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "body"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "executionContext"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attributes"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 226
    iput-object p1, p0, Lio/ktor/client/request/HttpRequestData;->url:Lio/ktor/http/Url;

    .line 227
    iput-object p2, p0, Lio/ktor/client/request/HttpRequestData;->method:Lio/ktor/http/HttpMethod;

    .line 228
    iput-object p3, p0, Lio/ktor/client/request/HttpRequestData;->headers:Lio/ktor/http/Headers;

    .line 229
    iput-object p4, p0, Lio/ktor/client/request/HttpRequestData;->body:Lio/ktor/http/content/OutgoingContent;

    .line 230
    iput-object p5, p0, Lio/ktor/client/request/HttpRequestData;->executionContext:Lkotlinx/coroutines/Job;

    .line 231
    iput-object p6, p0, Lio/ktor/client/request/HttpRequestData;->attributes:Lio/ktor/util/Attributes;

    .line 247
    invoke-static {}, Lio/ktor/client/engine/HttpClientEngineCapabilityKt;->getENGINE_CAPABILITIES_KEY()Lio/ktor/util/AttributeKey;

    move-result-object p1

    invoke-interface {p6, p1}, Lio/ktor/util/Attributes;->getOrNull(Lio/ktor/util/AttributeKey;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_3f

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    if-nez p1, :cond_43

    :cond_3f
    invoke-static {}, Lkotlin/collections/SetsKt__SetsKt;->emptySet()Ljava/util/Set;

    move-result-object p1

    :cond_43
    iput-object p1, p0, Lio/ktor/client/request/HttpRequestData;->requiredCapabilities:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final getAttributes()Lio/ktor/util/Attributes;
    .registers 1

    .line 231
    iget-object p0, p0, Lio/ktor/client/request/HttpRequestData;->attributes:Lio/ktor/util/Attributes;

    return-object p0
.end method

.method public final getBody()Lio/ktor/http/content/OutgoingContent;
    .registers 1

    .line 229
    iget-object p0, p0, Lio/ktor/client/request/HttpRequestData;->body:Lio/ktor/http/content/OutgoingContent;

    return-object p0
.end method

.method public final getCapabilityOrNull(Lio/ktor/client/engine/HttpClientEngineCapability;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/ktor/client/engine/HttpClientEngineCapability<",
            "TT;>;)TT;"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 240
    iget-object p0, p0, Lio/ktor/client/request/HttpRequestData;->attributes:Lio/ktor/util/Attributes;

    invoke-static {}, Lio/ktor/client/engine/HttpClientEngineCapabilityKt;->getENGINE_CAPABILITIES_KEY()Lio/ktor/util/AttributeKey;

    move-result-object v0

    invoke-interface {p0, v0}, Lio/ktor/util/Attributes;->getOrNull(Lio/ktor/util/AttributeKey;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    if-eqz p0, :cond_18

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_19

    :cond_18
    const/4 p0, 0x0

    :goto_19
    return-object p0
.end method

.method public final getExecutionContext()Lkotlinx/coroutines/Job;
    .registers 1

    .line 230
    iget-object p0, p0, Lio/ktor/client/request/HttpRequestData;->executionContext:Lkotlinx/coroutines/Job;

    return-object p0
.end method

.method public final getHeaders()Lio/ktor/http/Headers;
    .registers 1

    .line 228
    iget-object p0, p0, Lio/ktor/client/request/HttpRequestData;->headers:Lio/ktor/http/Headers;

    return-object p0
.end method

.method public final getMethod()Lio/ktor/http/HttpMethod;
    .registers 1

    .line 227
    iget-object p0, p0, Lio/ktor/client/request/HttpRequestData;->method:Lio/ktor/http/HttpMethod;

    return-object p0
.end method

.method public final getRequiredCapabilities$ktor_client_core()Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lio/ktor/client/engine/HttpClientEngineCapability<",
            "*>;>;"
        }
    .end annotation

    .line 246
    iget-object p0, p0, Lio/ktor/client/request/HttpRequestData;->requiredCapabilities:Ljava/util/Set;

    return-object p0
.end method

.method public final getUrl()Lio/ktor/http/Url;
    .registers 1

    .line 226
    iget-object p0, p0, Lio/ktor/client/request/HttpRequestData;->url:Lio/ktor/http/Url;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HttpRequestData(url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/ktor/client/request/HttpRequestData;->url:Lio/ktor/http/Url;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", method="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lio/ktor/client/request/HttpRequestData;->method:Lio/ktor/http/HttpMethod;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
