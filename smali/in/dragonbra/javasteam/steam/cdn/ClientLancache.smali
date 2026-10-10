###### Class in.dragonbra.javasteam.steam.cdn.ClientLancache (in.dragonbra.javasteam.steam.cdn.ClientLancache)
.class public final Lin/dragonbra/javasteam/steam/cdn/ClientLancache;
.super Ljava/lang/Object;
.source "ClientLancache.kt"


# static fields
.field public static final INSTANCE:Lin/dragonbra/javasteam/steam/cdn/ClientLancache;

.field private static final TRIGGER_DOMAIN:Ljava/lang/String; = "lancache.steamcontent.com"

.field private static useLanCacheServer:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lin/dragonbra/javasteam/steam/cdn/ClientLancache;

    invoke-direct {v0}, Lin/dragonbra/javasteam/steam/cdn/ClientLancache;-><init>()V

    sput-object v0, Lin/dragonbra/javasteam/steam/cdn/ClientLancache;->INSTANCE:Lin/dragonbra/javasteam/steam/cdn/ClientLancache;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$setUseLanCacheServer$p(Z)V
    .registers 1

    .line 15
    sput-boolean p0, Lin/dragonbra/javasteam/steam/cdn/ClientLancache;->useLanCacheServer:Z

    return-void
.end method

.method public static synthetic buildLancacheRequest$default(Lin/dragonbra/javasteam/steam/cdn/ClientLancache;Lin/dragonbra/javasteam/steam/cdn/Server;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lokhttp3/Request;
    .registers 6

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_5

    const/4 p3, 0x0

    .line 102
    :cond_5
    invoke-virtual {p0, p1, p2, p3}, Lin/dragonbra/javasteam/steam/cdn/ClientLancache;->buildLancacheRequest(Lin/dragonbra/javasteam/steam/cdn/Server;Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request;

    move-result-object p0

    return-object p0
.end method

.method public static final isPrivateAddress(Ljava/net/InetAddress;)Z
    .registers 5

    const-string v0, "toTest"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_d

    return v1

    .line 60
    :cond_d
    invoke-virtual {p0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 63
    instance-of v2, p0, Ljava/net/Inet4Address;

    const/4 v3, 0x0

    if-eqz v2, :cond_3e

    .line 65
    aget-byte p0, v0, v3

    and-int/lit16 p0, p0, 0xff

    const/16 v2, 0xa

    if-eq p0, v2, :cond_3d

    const/16 v2, 0xac

    if-eq p0, v2, :cond_31

    const/16 v2, 0xc0

    if-eq p0, v2, :cond_28

    :cond_26
    move v1, v3

    goto :goto_3d

    .line 76
    :cond_28
    aget-byte p0, v0, v1

    and-int/lit16 p0, p0, 0xff

    const/16 v0, 0xa8

    if-ne p0, v0, :cond_26

    goto :goto_3d

    .line 71
    :cond_31
    aget-byte p0, v0, v1

    and-int/lit16 p0, p0, 0xff

    const/16 v0, 0x10

    if-gt v0, p0, :cond_26

    const/16 v0, 0x20

    if-ge p0, v0, :cond_26

    :cond_3d
    :goto_3d
    return v1

    .line 85
    :cond_3e
    instance-of v2, p0, Ljava/net/Inet6Address;

    if-eqz v2, :cond_55

    .line 87
    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xfe

    const/16 v2, 0xfc

    if-eq v0, v2, :cond_54

    .line 88
    check-cast p0, Ljava/net/Inet6Address;

    invoke-virtual {p0}, Ljava/net/Inet6Address;->isLinkLocalAddress()Z

    move-result p0

    if-eqz p0, :cond_53

    goto :goto_54

    :cond_53
    move v1, v3

    :cond_54
    :goto_54
    return v1

    :cond_55
    return v3
.end method


# virtual methods
.method public final buildLancacheRequest(Lin/dragonbra/javasteam/steam/cdn/Server;Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request;
    .registers 14

    const-string p0, "server"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "command"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    sget-object p0, Lokhttp3/HttpUrl;->Companion:Lokhttp3/HttpUrl$Companion;

    const-string v0, "http://lancache.steamcontent.com:80"

    invoke-virtual {p0, v0}, Lokhttp3/HttpUrl$Companion;->get(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/HttpUrl;->newBuilder()Lokhttp3/HttpUrl$Builder;

    move-result-object p0

    const/4 v0, 0x1

    .line 104
    new-array v1, v0, [C

    const/16 v2, 0x2f

    const/4 v3, 0x0

    aput-char v2, v1, v3

    invoke-static {p2, v1}, Lkotlin/text/StringsKt__StringsKt;->trimStart(Ljava/lang/String;[C)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lokhttp3/HttpUrl$Builder;->addPathSegments(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object p0

    .line 106
    const-string p2, ""

    if-eqz p3, :cond_91

    .line 107
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_91

    .line 108
    const-string v1, "&"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x6

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v4, p3

    invoke-static/range {v4 .. v9}, Lkotlin/text/StringsKt__StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object p3

    .line 109
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_43
    :goto_43
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_91

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Ljava/lang/String;

    .line 110
    const-string v1, "="

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x2

    invoke-static/range {v4 .. v9}, Lkotlin/text/StringsKt__StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 111
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_75

    .line 112
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v2, v1}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    goto :goto_43

    .line 113
    :cond_75
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v0, :cond_43

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_43

    .line 114
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1, p2}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    goto :goto_43

    .line 120
    :cond_91
    new-instance p3, Lokhttp3/Request$Builder;

    invoke-direct {p3}, Lokhttp3/Request$Builder;-><init>()V

    .line 121
    invoke-virtual {p0}, Lokhttp3/HttpUrl$Builder;->build()Lokhttp3/HttpUrl;

    move-result-object p0

    invoke-virtual {p3, p0}, Lokhttp3/Request$Builder;->url(Lokhttp3/HttpUrl;)Lokhttp3/Request$Builder;

    move-result-object p0

    .line 122
    invoke-virtual {p1}, Lin/dragonbra/javasteam/steam/cdn/Server;->getHost()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_a5

    goto :goto_a6

    :cond_a5
    move-object p2, p1

    :goto_a6
    const-string p1, "Host"

    invoke-virtual {p0, p1, p2}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p0

    .line 124
    const-string p1, "User-Agent"

    const-string p2, "Valve/Steam HTTP Client 1.0"

    invoke-virtual {p0, p1, p2}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p0

    .line 125
    invoke-virtual {p0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p0

    return-object p0
.end method

.method public final detectLancacheServer(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 34
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p0

    new-instance v0, Lin/dragonbra/javasteam/steam/cdn/ClientLancache$detectLancacheServer$2;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lin/dragonbra/javasteam/steam/cdn/ClientLancache$detectLancacheServer$2;-><init>(Lkotlin/coroutines/Continuation;)V

    invoke-static {p0, v0, p1}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_15

    return-object p0

    :cond_15
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final getUseLanCacheServer()Z
    .registers 1

    .line 20
    sget-boolean p0, Lin/dragonbra/javasteam/steam/cdn/ClientLancache;->useLanCacheServer:Z

    return p0
.end method

###### Class in.dragonbra.javasteam.steam.cdn.ClientLancache.AnonymousClass2 (in.dragonbra.javasteam.steam.cdn.ClientLancache$detectLancacheServer$2)
.class final Lin/dragonbra/javasteam/steam/cdn/ClientLancache$detectLancacheServer$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ClientLancache.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lin/dragonbra/javasteam/steam/cdn/ClientLancache;->detectLancacheServer(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nClientLancache.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ClientLancache.kt\nin/dragonbra/javasteam/steam/cdn/ClientLancache$detectLancacheServer$2\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,128:1\n3919#2:129\n4434#2,2:130\n1761#3,3:132\n*S KotlinDebug\n*F\n+ 1 ClientLancache.kt\nin/dragonbra/javasteam/steam/cdn/ClientLancache$detectLancacheServer$2\n*L\n37#1:129\n37#1:130,2\n41#1:132,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "in.dragonbra.javasteam.steam.cdn.ClientLancache$detectLancacheServer$2"
    f = "ClientLancache.kt"
    l = {}
    m = "invokeSuspend"
    v = 0x1
.end annotation


# instance fields
.field label:I


# direct methods
.method public constructor <init>(Lkotlin/coroutines/Continuation;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lin/dragonbra/javasteam/steam/cdn/ClientLancache$detectLancacheServer$2;",
            ">;)V"
        }
    .end annotation

    .line 0
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 0
    new-instance p0, Lin/dragonbra/javasteam/steam/cdn/ClientLancache$detectLancacheServer$2;

    invoke-direct {p0, p2}, Lin/dragonbra/javasteam/steam/cdn/ClientLancache$detectLancacheServer$2;-><init>(Lkotlin/coroutines/Continuation;)V

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/steam/cdn/ClientLancache$detectLancacheServer$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 0
    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/steam/cdn/ClientLancache$detectLancacheServer$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lin/dragonbra/javasteam/steam/cdn/ClientLancache$detectLancacheServer$2;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/steam/cdn/ClientLancache$detectLancacheServer$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    const/4 v0, 0x1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 34
    iget p0, p0, Lin/dragonbra/javasteam/steam/cdn/ClientLancache$detectLancacheServer$2;->label:I

    if-nez p0, :cond_5a

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    const/4 p0, 0x0

    .line 36
    :try_start_c
    const-string p1, "lancache.steamcontent.com"

    invoke-static {p1}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object p1

    .line 37
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 3919
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4434
    array-length v2, p1

    move v3, p0

    :goto_1c
    if-ge v3, v2, :cond_2d

    aget-object v4, p1, v3

    .line 38
    instance-of v5, v4, Ljava/net/Inet4Address;

    if-nez v5, :cond_28

    instance-of v5, v4, Ljava/net/Inet6Address;

    if-eqz v5, :cond_2b

    .line 4434
    :cond_28
    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_2b
    add-int/2addr v3, v0

    goto :goto_1c

    .line 41
    :cond_2d
    sget-object p1, Lin/dragonbra/javasteam/steam/cdn/ClientLancache;->INSTANCE:Lin/dragonbra/javasteam/steam/cdn/ClientLancache;

    .line 1761
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_37

    :cond_35
    move v0, p0

    goto :goto_50

    .line 1762
    :cond_37
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_35

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetAddress;

    .line 41
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v1}, Lin/dragonbra/javasteam/steam/cdn/ClientLancache;->isPrivateAddress(Ljava/net/InetAddress;)Z

    move-result v1

    if-eqz v1, :cond_3b

    :goto_50
    invoke-static {v0}, Lin/dragonbra/javasteam/steam/cdn/ClientLancache;->access$setUseLanCacheServer$p(Z)V
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_53} :catch_54

    goto :goto_57

    .line 43
    :catch_54
    invoke-static {p0}, Lin/dragonbra/javasteam/steam/cdn/ClientLancache;->access$setUseLanCacheServer$p(Z)V

    .line 45
    :goto_57
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 34
    :cond_5a
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
