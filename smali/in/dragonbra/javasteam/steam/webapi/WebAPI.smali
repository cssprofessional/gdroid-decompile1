###### Class in.dragonbra.javasteam.steam.webapi.WebAPI (in.dragonbra.javasteam.steam.webapi.WebAPI)
.class public Lin/dragonbra/javasteam/steam/webapi/WebAPI;
.super Ljava/lang/Object;
.source "WebAPI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lin/dragonbra/javasteam/steam/webapi/WebAPI$WebAPIRequestException;
    }
.end annotation


# static fields
.field public static final DEFAULT_BASE_ADDRESS:Ljava/lang/String; = "https://api.steampowered.com/"


# instance fields
.field private final _interface:Ljava/lang/String;

.field private final baseAddress:Lokhttp3/HttpUrl;

.field private final client:Lokhttp3/OkHttpClient;

.field private final webAPIKey:Ljava/lang/String;


# direct methods
.method public static bridge synthetic -$$Nest$mparseResponse(Lin/dragonbra/javasteam/steam/webapi/WebAPI;Lokhttp3/Response;)Lin/dragonbra/javasteam/types/KeyValue;
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lin/dragonbra/javasteam/steam/webapi/WebAPI;->parseResponse(Lokhttp3/Response;)Lin/dragonbra/javasteam/types/KeyValue;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lokhttp3/OkHttpClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-static {p2}, Lokhttp3/HttpUrl;->parse(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object p2

    iput-object p2, p0, Lin/dragonbra/javasteam/steam/webapi/WebAPI;->baseAddress:Lokhttp3/HttpUrl;

    if-eqz p2, :cond_12

    .line 36
    iput-object p3, p0, Lin/dragonbra/javasteam/steam/webapi/WebAPI;->_interface:Ljava/lang/String;

    .line 37
    iput-object p4, p0, Lin/dragonbra/javasteam/steam/webapi/WebAPI;->webAPIKey:Ljava/lang/String;

    .line 38
    iput-object p1, p0, Lin/dragonbra/javasteam/steam/webapi/WebAPI;->client:Lokhttp3/OkHttpClient;

    return-void

    .line 33
    :cond_12
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method private buildRequest(Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;)Lokhttp3/Request;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lokhttp3/Request;"
        }
    .end annotation

    if-eqz p1, :cond_f3

    .line 281
    const-string v0, "GET"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1b

    const-string v1, "POST"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    goto :goto_1b

    .line 282
    :cond_13
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "only GET and POST is supported right now"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1b
    :goto_1b
    if-eqz p2, :cond_eb

    if-nez p4, :cond_24

    .line 288
    new-instance p4, Ljava/util/HashMap;

    invoke-direct {p4}, Ljava/util/HashMap;-><init>()V

    .line 291
    :cond_24
    const-string v1, "format"

    const-string v2, "vdf"

    invoke-interface {p4, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    iget-object v1, p0, Lin/dragonbra/javasteam/steam/webapi/WebAPI;->webAPIKey:Ljava/lang/String;

    if-eqz v1, :cond_34

    .line 294
    const-string v2, "key"

    invoke-interface {p4, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    :cond_34
    new-instance v1, Lokhttp3/Request$Builder;

    invoke-direct {v1}, Lokhttp3/Request$Builder;-><init>()V

    .line 298
    invoke-static {}, Lin/dragonbra/javasteam/util/Versions;->getVersion()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "JavaSteam-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "User-Agent"

    invoke-virtual {v1, v3, v2}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 300
    iget-object v2, p0, Lin/dragonbra/javasteam/steam/webapi/WebAPI;->baseAddress:Lokhttp3/HttpUrl;

    invoke-virtual {v2}, Lokhttp3/HttpUrl;->newBuilder()Lokhttp3/HttpUrl$Builder;

    move-result-object v2

    iget-object p0, p0, Lin/dragonbra/javasteam/steam/webapi/WebAPI;->_interface:Ljava/lang/String;

    .line 301
    invoke-virtual {v2, p0}, Lokhttp3/HttpUrl$Builder;->addPathSegment(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object p0

    .line 302
    invoke-virtual {p0, p2}, Lokhttp3/HttpUrl$Builder;->addPathSegment(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "v"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 303
    invoke-virtual {p0, p2}, Lokhttp3/HttpUrl$Builder;->addPathSegment(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object p0

    .line 305
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_aa

    .line 306
    invoke-interface {p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_86
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_a6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 307
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-static {p3}, Lin/dragonbra/javasteam/util/WebHelpers;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p3, p2}, Lokhttp3/HttpUrl$Builder;->addEncodedQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    goto :goto_86

    .line 309
    :cond_a6
    invoke-virtual {v1}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    goto :goto_de

    .line 311
    :cond_aa
    new-instance p1, Lokhttp3/FormBody$Builder;

    invoke-direct {p1}, Lokhttp3/FormBody$Builder;-><init>()V

    .line 312
    invoke-interface {p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_b7
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_d7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    .line 313
    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    invoke-static {p4}, Lin/dragonbra/javasteam/util/WebHelpers;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p1, p4, p3}, Lokhttp3/FormBody$Builder;->addEncoded(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    goto :goto_b7

    .line 315
    :cond_d7
    invoke-virtual {p1}, Lokhttp3/FormBody$Builder;->build()Lokhttp3/FormBody;

    move-result-object p1

    invoke-virtual {v1, p1}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    .line 319
    :goto_de
    invoke-virtual {p0}, Lokhttp3/HttpUrl$Builder;->build()Lokhttp3/HttpUrl;

    move-result-object p0

    .line 321
    invoke-virtual {v1, p0}, Lokhttp3/Request$Builder;->url(Lokhttp3/HttpUrl;)Lokhttp3/Request$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p0

    return-object p0

    .line 285
    :cond_eb
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "function is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 279
    :cond_f3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "httpMethod is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private parseResponse(Lokhttp3/Response;)Lin/dragonbra/javasteam/types/KeyValue;
    .registers 3

    .line 266
    new-instance p0, Lin/dragonbra/javasteam/types/KeyValue;

    invoke-direct {p0}, Lin/dragonbra/javasteam/types/KeyValue;-><init>()V

    .line 268
    :try_start_5
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object p1
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_d} :catch_16

    .line 269
    :try_start_d
    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/types/KeyValue;->readAsText(Ljava/io/InputStream;)Z
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_19

    if-eqz p1, :cond_18

    .line 270
    :try_start_12
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_15} :catch_16

    goto :goto_18

    :catch_16
    move-exception p0

    goto :goto_25

    :cond_18
    :goto_18
    return-object p0

    :catchall_19
    move-exception p0

    if-eqz p1, :cond_24

    .line 268
    :try_start_1c
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_20

    goto :goto_24

    :catchall_20
    move-exception p1

    :try_start_21
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_24
    :goto_24
    throw p0
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_25} :catch_16

    .line 271
    :goto_25
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "An internal error occurred when attempting to parse the response from the WebAPI server. This can indicate a change in the VDF format."

    invoke-direct {p1, v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method


# virtual methods
.method public call(Ljava/lang/String;)Lin/dragonbra/javasteam/types/KeyValue;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 147
    const-string v2, "GET"

    invoke-virtual {p0, v2, p1, v0, v1}, Lin/dragonbra/javasteam/steam/webapi/WebAPI;->call(Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;)Lin/dragonbra/javasteam/types/KeyValue;

    move-result-object p0

    return-object p0
.end method

.method public call(Ljava/lang/String;I)Lin/dragonbra/javasteam/types/KeyValue;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 124
    const-string v0, "GET"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, p2, v1}, Lin/dragonbra/javasteam/steam/webapi/WebAPI;->call(Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;)Lin/dragonbra/javasteam/types/KeyValue;

    move-result-object p0

    return-object p0
.end method

.method public call(Ljava/lang/String;ILjava/util/Map;)Lin/dragonbra/javasteam/types/KeyValue;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lin/dragonbra/javasteam/types/KeyValue;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    const-string v0, "GET"

    invoke-virtual {p0, v0, p1, p2, p3}, Lin/dragonbra/javasteam/steam/webapi/WebAPI;->call(Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;)Lin/dragonbra/javasteam/types/KeyValue;

    move-result-object p0

    return-object p0
.end method

.method public call(Ljava/lang/String;Ljava/lang/String;)Lin/dragonbra/javasteam/types/KeyValue;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 136
    invoke-virtual {p0, p1, p2, v0, v1}, Lin/dragonbra/javasteam/steam/webapi/WebAPI;->call(Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;)Lin/dragonbra/javasteam/types/KeyValue;

    move-result-object p0

    return-object p0
.end method

.method public call(Ljava/lang/String;Ljava/lang/String;I)Lin/dragonbra/javasteam/types/KeyValue;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 112
    invoke-virtual {p0, p1, p2, p3, v0}, Lin/dragonbra/javasteam/steam/webapi/WebAPI;->call(Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;)Lin/dragonbra/javasteam/types/KeyValue;

    move-result-object p0

    return-object p0
.end method

.method public call(Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;)Lin/dragonbra/javasteam/types/KeyValue;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lin/dragonbra/javasteam/types/KeyValue;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lin/dragonbra/javasteam/steam/webapi/WebAPI$WebAPIRequestException;
        }
    .end annotation

    .line 54
    invoke-direct {p0, p1, p2, p3, p4}, Lin/dragonbra/javasteam/steam/webapi/WebAPI;->buildRequest(Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;)Lokhttp3/Request;

    move-result-object p1

    .line 55
    iget-object p2, p0, Lin/dragonbra/javasteam/steam/webapi/WebAPI;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {p2, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    invoke-interface {p1}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object p1

    .line 57
    invoke-virtual {p1}, Lokhttp3/Response;->isSuccessful()Z

    move-result p2

    if-eqz p2, :cond_19

    .line 61
    invoke-direct {p0, p1}, Lin/dragonbra/javasteam/steam/webapi/WebAPI;->parseResponse(Lokhttp3/Response;)Lin/dragonbra/javasteam/types/KeyValue;

    move-result-object p0

    return-object p0

    .line 58
    :cond_19
    new-instance p0, Lin/dragonbra/javasteam/steam/webapi/WebAPI$WebAPIRequestException;

    invoke-direct {p0, p1}, Lin/dragonbra/javasteam/steam/webapi/WebAPI$WebAPIRequestException;-><init>(Lokhttp3/Response;)V

    throw p0
.end method

.method public call(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lin/dragonbra/javasteam/types/KeyValue;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lin/dragonbra/javasteam/types/KeyValue;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 87
    invoke-virtual {p0, p1, p2, v0, p3}, Lin/dragonbra/javasteam/steam/webapi/WebAPI;->call(Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;)Lin/dragonbra/javasteam/types/KeyValue;

    move-result-object p0

    return-object p0
.end method

.method public call(Ljava/lang/String;Ljava/util/Map;)Lin/dragonbra/javasteam/types/KeyValue;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lin/dragonbra/javasteam/types/KeyValue;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 99
    const-string v0, "GET"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1, p2}, Lin/dragonbra/javasteam/steam/webapi/WebAPI;->call(Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;)Lin/dragonbra/javasteam/types/KeyValue;

    move-result-object p0

    return-object p0
.end method

.method public call(Ljava/lang/String;ILin/dragonbra/javasteam/util/compat/Consumer;Lin/dragonbra/javasteam/util/compat/Consumer;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lin/dragonbra/javasteam/util/compat/Consumer<",
            "Lin/dragonbra/javasteam/types/KeyValue;",
            ">;",
            "Lin/dragonbra/javasteam/util/compat/Consumer<",
            "Lin/dragonbra/javasteam/steam/webapi/WebAPI$WebAPIRequestException;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 235
    const-string v1, "GET"

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lin/dragonbra/javasteam/steam/webapi/WebAPI;->call(Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;Lin/dragonbra/javasteam/util/compat/Consumer;Lin/dragonbra/javasteam/util/compat/Consumer;)V

    return-void
.end method

.method public call(Ljava/lang/String;Lin/dragonbra/javasteam/util/compat/Consumer;Lin/dragonbra/javasteam/util/compat/Consumer;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lin/dragonbra/javasteam/util/compat/Consumer<",
            "Lin/dragonbra/javasteam/types/KeyValue;",
            ">;",
            "Lin/dragonbra/javasteam/util/compat/Consumer<",
            "Lin/dragonbra/javasteam/steam/webapi/WebAPI$WebAPIRequestException;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 262
    const-string v1, "GET"

    move-object v0, p0

    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lin/dragonbra/javasteam/steam/webapi/WebAPI;->call(Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;Lin/dragonbra/javasteam/util/compat/Consumer;Lin/dragonbra/javasteam/util/compat/Consumer;)V

    return-void
.end method

.method public call(Ljava/lang/String;Ljava/lang/String;ILin/dragonbra/javasteam/util/compat/Consumer;Lin/dragonbra/javasteam/util/compat/Consumer;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Lin/dragonbra/javasteam/util/compat/Consumer<",
            "Lin/dragonbra/javasteam/types/KeyValue;",
            ">;",
            "Lin/dragonbra/javasteam/util/compat/Consumer<",
            "Lin/dragonbra/javasteam/steam/webapi/WebAPI$WebAPIRequestException;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    move-object v6, p5

    .line 192
    invoke-virtual/range {v0 .. v6}, Lin/dragonbra/javasteam/steam/webapi/WebAPI;->call(Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;Lin/dragonbra/javasteam/util/compat/Consumer;Lin/dragonbra/javasteam/util/compat/Consumer;)V

    return-void
.end method

.method public call(Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;Lin/dragonbra/javasteam/util/compat/Consumer;Lin/dragonbra/javasteam/util/compat/Consumer;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lin/dragonbra/javasteam/util/compat/Consumer<",
            "Lin/dragonbra/javasteam/types/KeyValue;",
            ">;",
            "Lin/dragonbra/javasteam/util/compat/Consumer<",
            "Lin/dragonbra/javasteam/steam/webapi/WebAPI$WebAPIRequestException;",
            ">;)V"
        }
    .end annotation

    .line 162
    invoke-direct {p0, p1, p2, p3, p4}, Lin/dragonbra/javasteam/steam/webapi/WebAPI;->buildRequest(Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;)Lokhttp3/Request;

    move-result-object p1

    .line 163
    iget-object p2, p0, Lin/dragonbra/javasteam/steam/webapi/WebAPI;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {p2, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    new-instance p2, Lin/dragonbra/javasteam/steam/webapi/WebAPI$1;

    invoke-direct {p2, p0, p6, p5}, Lin/dragonbra/javasteam/steam/webapi/WebAPI$1;-><init>(Lin/dragonbra/javasteam/steam/webapi/WebAPI;Lin/dragonbra/javasteam/util/compat/Consumer;Lin/dragonbra/javasteam/util/compat/Consumer;)V

    invoke-interface {p1, p2}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    return-void
.end method

.method public call(Ljava/lang/String;Ljava/lang/String;Lin/dragonbra/javasteam/util/compat/Consumer;Lin/dragonbra/javasteam/util/compat/Consumer;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lin/dragonbra/javasteam/util/compat/Consumer<",
            "Lin/dragonbra/javasteam/types/KeyValue;",
            ">;",
            "Lin/dragonbra/javasteam/util/compat/Consumer<",
            "Lin/dragonbra/javasteam/steam/webapi/WebAPI$WebAPIRequestException;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    move-object v6, p4

    .line 221
    invoke-virtual/range {v0 .. v6}, Lin/dragonbra/javasteam/steam/webapi/WebAPI;->call(Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;Lin/dragonbra/javasteam/util/compat/Consumer;Lin/dragonbra/javasteam/util/compat/Consumer;)V

    return-void
.end method

.method public call(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lin/dragonbra/javasteam/util/compat/Consumer;Lin/dragonbra/javasteam/util/compat/Consumer;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lin/dragonbra/javasteam/util/compat/Consumer<",
            "Lin/dragonbra/javasteam/types/KeyValue;",
            ">;",
            "Lin/dragonbra/javasteam/util/compat/Consumer<",
            "Lin/dragonbra/javasteam/steam/webapi/WebAPI$WebAPIRequestException;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 207
    invoke-virtual/range {v0 .. v6}, Lin/dragonbra/javasteam/steam/webapi/WebAPI;->call(Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;Lin/dragonbra/javasteam/util/compat/Consumer;Lin/dragonbra/javasteam/util/compat/Consumer;)V

    return-void
.end method

.method public call(Ljava/lang/String;Ljava/util/Map;Lin/dragonbra/javasteam/util/compat/Consumer;Lin/dragonbra/javasteam/util/compat/Consumer;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lin/dragonbra/javasteam/util/compat/Consumer<",
            "Lin/dragonbra/javasteam/types/KeyValue;",
            ">;",
            "Lin/dragonbra/javasteam/util/compat/Consumer<",
            "Lin/dragonbra/javasteam/steam/webapi/WebAPI$WebAPIRequestException;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 249
    const-string v1, "GET"

    const/4 v3, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lin/dragonbra/javasteam/steam/webapi/WebAPI;->call(Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;Lin/dragonbra/javasteam/util/compat/Consumer;Lin/dragonbra/javasteam/util/compat/Consumer;)V

    return-void
.end method

.method public getBaseAddress()Lokhttp3/HttpUrl;
    .registers 1

    .line 325
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/webapi/WebAPI;->baseAddress:Lokhttp3/HttpUrl;

    return-object p0
.end method

.method public getInterface()Ljava/lang/String;
    .registers 1

    .line 329
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/webapi/WebAPI;->_interface:Ljava/lang/String;

    return-object p0
.end method

.method public getWebAPIKey()Ljava/lang/String;
    .registers 1

    .line 333
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/webapi/WebAPI;->webAPIKey:Ljava/lang/String;

    return-object p0
.end method

###### Class in.dragonbra.javasteam.steam.webapi.WebAPI.AnonymousClass1 (in.dragonbra.javasteam.steam.webapi.WebAPI$1)
.class Lin/dragonbra/javasteam/steam/webapi/WebAPI$1;
.super Ljava/lang/Object;
.source "WebAPI.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lin/dragonbra/javasteam/steam/webapi/WebAPI;->call(Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;Lin/dragonbra/javasteam/util/compat/Consumer;Lin/dragonbra/javasteam/util/compat/Consumer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lin/dragonbra/javasteam/steam/webapi/WebAPI;

.field final synthetic val$callback:Lin/dragonbra/javasteam/util/compat/Consumer;

.field final synthetic val$error:Lin/dragonbra/javasteam/util/compat/Consumer;


# direct methods
.method public constructor <init>(Lin/dragonbra/javasteam/steam/webapi/WebAPI;Lin/dragonbra/javasteam/util/compat/Consumer;Lin/dragonbra/javasteam/util/compat/Consumer;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 163
    iput-object p1, p0, Lin/dragonbra/javasteam/steam/webapi/WebAPI$1;->this$0:Lin/dragonbra/javasteam/steam/webapi/WebAPI;

    iput-object p2, p0, Lin/dragonbra/javasteam/steam/webapi/WebAPI$1;->val$error:Lin/dragonbra/javasteam/util/compat/Consumer;

    iput-object p3, p0, Lin/dragonbra/javasteam/steam/webapi/WebAPI$1;->val$callback:Lin/dragonbra/javasteam/util/compat/Consumer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .registers 3

    .line 166
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "request unsuccessful"

    invoke-direct {p0, p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .registers 3

    .line 171
    invoke-virtual {p2}, Lokhttp3/Response;->isSuccessful()Z

    move-result p1

    if-nez p1, :cond_11

    .line 172
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/webapi/WebAPI$1;->val$error:Lin/dragonbra/javasteam/util/compat/Consumer;

    new-instance p1, Lin/dragonbra/javasteam/steam/webapi/WebAPI$WebAPIRequestException;

    invoke-direct {p1, p2}, Lin/dragonbra/javasteam/steam/webapi/WebAPI$WebAPIRequestException;-><init>(Lokhttp3/Response;)V

    invoke-interface {p0, p1}, Lin/dragonbra/javasteam/util/compat/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_1c

    .line 174
    :cond_11
    iget-object p1, p0, Lin/dragonbra/javasteam/steam/webapi/WebAPI$1;->val$callback:Lin/dragonbra/javasteam/util/compat/Consumer;

    iget-object p0, p0, Lin/dragonbra/javasteam/steam/webapi/WebAPI$1;->this$0:Lin/dragonbra/javasteam/steam/webapi/WebAPI;

    invoke-static {p0, p2}, Lin/dragonbra/javasteam/steam/webapi/WebAPI;->-$$Nest$mparseResponse(Lin/dragonbra/javasteam/steam/webapi/WebAPI;Lokhttp3/Response;)Lin/dragonbra/javasteam/types/KeyValue;

    move-result-object p0

    invoke-interface {p1, p0}, Lin/dragonbra/javasteam/util/compat/Consumer;->accept(Ljava/lang/Object;)V

    :goto_1c
    return-void
.end method

###### Class in.dragonbra.javasteam.steam.webapi.WebAPI.WebAPIRequestException (in.dragonbra.javasteam.steam.webapi.WebAPI$WebAPIRequestException)
.class public Lin/dragonbra/javasteam/steam/webapi/WebAPI$WebAPIRequestException;
.super Ljava/io/IOException;
.source "WebAPI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lin/dragonbra/javasteam/steam/webapi/WebAPI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WebAPIRequestException"
.end annotation


# instance fields
.field private final headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final statusCode:I


# direct methods
.method public constructor <init>(Lokhttp3/Response;)V
    .registers 3

    .line 351
    invoke-virtual {p1}, Lokhttp3/Response;->message()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 352
    invoke-virtual {p1}, Lokhttp3/Response;->code()I

    move-result v0

    iput v0, p0, Lin/dragonbra/javasteam/steam/webapi/WebAPI$WebAPIRequestException;->statusCode:I

    .line 353
    invoke-virtual {p1}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Headers;->toMultimap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lin/dragonbra/javasteam/steam/webapi/WebAPI$WebAPIRequestException;->headers:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getHeaders()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 367
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/webapi/WebAPI$WebAPIRequestException;->headers:Ljava/util/Map;

    return-object p0
.end method

.method public getStatusCode()I
    .registers 1

    .line 360
    iget p0, p0, Lin/dragonbra/javasteam/steam/webapi/WebAPI$WebAPIRequestException;->statusCode:I

    return p0
.end method
