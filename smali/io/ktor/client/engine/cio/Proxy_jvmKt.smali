###### Class io.ktor.client.engine.cio.Proxy_jvmKt (io.ktor.client.engine.cio.Proxy_jvmKt)
.class public final Lio/ktor/client/engine/cio/Proxy_jvmKt;
.super Ljava/lang/Object;
.source "Proxy.jvm.kt"


# direct methods
.method public static final lookupGlobalProxy(Lio/ktor/http/Url;)Ljava/net/Proxy;
    .registers 4

    const-string v0, "url"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 16
    :try_start_6
    invoke-static {p0}, Lio/ktor/http/URLUtilsJvmKt;->toURI(Lio/ktor/http/Url;)Ljava/net/URI;

    move-result-object p0
    :try_end_a
    .catch Ljava/net/URISyntaxException; {:try_start_6 .. :try_end_a} :catch_b

    goto :goto_c

    :catch_b
    move-object p0, v0

    :goto_c
    if-nez p0, :cond_f

    return-object v0

    .line 25
    :cond_f
    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/net/ProxySelector;->select(Ljava/net/URI;)Ljava/util/List;

    move-result-object p0

    .line 27
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_37

    .line 28
    invoke-static {p0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/Proxy;

    .line 31
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    const/4 v2, 0x1

    if-ne p0, v2, :cond_36

    invoke-virtual {v1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object p0

    sget-object v2, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-ne p0, v2, :cond_36

    goto :goto_37

    :cond_36
    move-object v0, v1

    :cond_37
    :goto_37
    return-object v0
.end method
