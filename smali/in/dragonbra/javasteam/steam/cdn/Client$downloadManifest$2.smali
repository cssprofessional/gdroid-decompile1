###### Class in.dragonbra.javasteam.steam.cdn.Client$downloadManifest$2 (in.dragonbra.javasteam.steam.cdn.Client$downloadManifest$2)
.class final Lin/dragonbra/javasteam/steam/cdn/Client$downloadManifest$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "Client.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lin/dragonbra/javasteam/steam/cdn/Client;->downloadManifest-vpSrzaI(IJJLin/dragonbra/javasteam/steam/cdn/Server;[BLin/dragonbra/javasteam/steam/cdn/Server;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "Lin/dragonbra/javasteam/types/DepotManifest;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "in.dragonbra.javasteam.steam.cdn.Client$downloadManifest$2"
    f = "Client.kt"
    l = {
        0x88
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation


# instance fields
.field final synthetic $$v$c$kotlin-ULong$-manifestRequestCode$0:J

.field final synthetic $cdnAuthToken:Ljava/lang/String;

.field final synthetic $depotId:I

.field final synthetic $depotKey:[B

.field final synthetic $manifestId:J

.field final synthetic $proxyServer:Lin/dragonbra/javasteam/steam/cdn/Server;

.field final synthetic $server:Lin/dragonbra/javasteam/steam/cdn/Server;

.field I$0:I

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lin/dragonbra/javasteam/steam/cdn/Client;


# direct methods
.method public constructor <init>(JIJLin/dragonbra/javasteam/steam/cdn/Server;Ljava/lang/String;Lin/dragonbra/javasteam/steam/cdn/Server;Lin/dragonbra/javasteam/steam/cdn/Client;[BLkotlin/coroutines/Continuation;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JIJ",
            "Lin/dragonbra/javasteam/steam/cdn/Server;",
            "Ljava/lang/String;",
            "Lin/dragonbra/javasteam/steam/cdn/Server;",
            "Lin/dragonbra/javasteam/steam/cdn/Client;",
            "[B",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lin/dragonbra/javasteam/steam/cdn/Client$downloadManifest$2;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-wide p1, p0, Lin/dragonbra/javasteam/steam/cdn/Client$downloadManifest$2;->$$v$c$kotlin-ULong$-manifestRequestCode$0:J

    iput p3, p0, Lin/dragonbra/javasteam/steam/cdn/Client$downloadManifest$2;->$depotId:I

    iput-wide p4, p0, Lin/dragonbra/javasteam/steam/cdn/Client$downloadManifest$2;->$manifestId:J

    iput-object p6, p0, Lin/dragonbra/javasteam/steam/cdn/Client$downloadManifest$2;->$server:Lin/dragonbra/javasteam/steam/cdn/Server;

    iput-object p7, p0, Lin/dragonbra/javasteam/steam/cdn/Client$downloadManifest$2;->$cdnAuthToken:Ljava/lang/String;

    iput-object p8, p0, Lin/dragonbra/javasteam/steam/cdn/Client$downloadManifest$2;->$proxyServer:Lin/dragonbra/javasteam/steam/cdn/Server;

    iput-object p9, p0, Lin/dragonbra/javasteam/steam/cdn/Client$downloadManifest$2;->this$0:Lin/dragonbra/javasteam/steam/cdn/Client;

    iput-object p10, p0, Lin/dragonbra/javasteam/steam/cdn/Client$downloadManifest$2;->$depotKey:[B

    const/4 p1, 0x2

    invoke-direct {p0, p1, p11}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 15
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
    new-instance p1, Lin/dragonbra/javasteam/steam/cdn/Client$downloadManifest$2;

    iget-wide v1, p0, Lin/dragonbra/javasteam/steam/cdn/Client$downloadManifest$2;->$$v$c$kotlin-ULong$-manifestRequestCode$0:J

    iget v3, p0, Lin/dragonbra/javasteam/steam/cdn/Client$downloadManifest$2;->$depotId:I

    iget-wide v4, p0, Lin/dragonbra/javasteam/steam/cdn/Client$downloadManifest$2;->$manifestId:J

    iget-object v6, p0, Lin/dragonbra/javasteam/steam/cdn/Client$downloadManifest$2;->$server:Lin/dragonbra/javasteam/steam/cdn/Server;

    iget-object v7, p0, Lin/dragonbra/javasteam/steam/cdn/Client$downloadManifest$2;->$cdnAuthToken:Ljava/lang/String;

    iget-object v8, p0, Lin/dragonbra/javasteam/steam/cdn/Client$downloadManifest$2;->$proxyServer:Lin/dragonbra/javasteam/steam/cdn/Server;

    iget-object v9, p0, Lin/dragonbra/javasteam/steam/cdn/Client$downloadManifest$2;->this$0:Lin/dragonbra/javasteam/steam/cdn/Client;

    iget-object v10, p0, Lin/dragonbra/javasteam/steam/cdn/Client$downloadManifest$2;->$depotKey:[B

    move-object v0, p1

    move-object v11, p2

    invoke-direct/range {v0 .. v11}, Lin/dragonbra/javasteam/steam/cdn/Client$downloadManifest$2;-><init>(JIJLin/dragonbra/javasteam/steam/cdn/Server;Ljava/lang/String;Lin/dragonbra/javasteam/steam/cdn/Server;Lin/dragonbra/javasteam/steam/cdn/Client;[BLkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/steam/cdn/Client$downloadManifest$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Lin/dragonbra/javasteam/types/DepotManifest;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 0
    invoke-virtual {p0, p1, p2}, Lin/dragonbra/javasteam/steam/cdn/Client$downloadManifest$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lin/dragonbra/javasteam/steam/cdn/Client$downloadManifest$2;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lin/dragonbra/javasteam/steam/cdn/Client$downloadManifest$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 13

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 120
    iget v1, p0, Lin/dragonbra/javasteam/steam/cdn/Client$downloadManifest$2;->label:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_24

    if-ne v1, v2, :cond_1c

    iget-object v0, p0, Lin/dragonbra/javasteam/steam/cdn/Client$downloadManifest$2;->L$1:Ljava/lang/Object;

    check-cast v0, Lokhttp3/Request;

    iget-object v1, p0, Lin/dragonbra/javasteam/steam/cdn/Client$downloadManifest$2;->L$0:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    :try_start_14
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_17} :catch_19

    goto/16 :goto_d7

    :catch_19
    move-exception p0

    goto/16 :goto_172

    :cond_1c
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_24
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 123
    iget-wide v4, p0, Lin/dragonbra/javasteam/steam/cdn/Client$downloadManifest$2;->$$v$c$kotlin-ULong$-manifestRequestCode$0:J

    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Long;->compareUnsigned(JJ)I

    move-result p1

    const-string v1, "/manifest/"

    const-string v4, "depot/"

    const-string v5, "/"

    const/4 v6, 0x5

    if-lez p1, :cond_68

    .line 124
    iget p1, p0, Lin/dragonbra/javasteam/steam/cdn/Client$downloadManifest$2;->$depotId:I

    iget-wide v7, p0, Lin/dragonbra/javasteam/steam/cdn/Client$downloadManifest$2;->$manifestId:J

    iget-wide v9, p0, Lin/dragonbra/javasteam/steam/cdn/Client$downloadManifest$2;->$$v$c$kotlin-ULong$-manifestRequestCode$0:J

    invoke-static {v9, v10}, Lkotlin/ULong;->toString-impl(J)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_87

    .line 126
    :cond_68
    iget p1, p0, Lin/dragonbra/javasteam/steam/cdn/Client$downloadManifest$2;->$depotId:I

    iget-wide v7, p0, Lin/dragonbra/javasteam/steam/cdn/Client$downloadManifest$2;->$manifestId:J

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 129
    :goto_87
    new-instance v1, Lokhttp3/Request$Builder;

    invoke-direct {v1}, Lokhttp3/Request$Builder;-><init>()V

    .line 130
    sget-object v4, Lin/dragonbra/javasteam/steam/cdn/Client;->Companion:Lin/dragonbra/javasteam/steam/cdn/Client$Companion;

    iget-object v5, p0, Lin/dragonbra/javasteam/steam/cdn/Client$downloadManifest$2;->$server:Lin/dragonbra/javasteam/steam/cdn/Server;

    iget-object v7, p0, Lin/dragonbra/javasteam/steam/cdn/Client$downloadManifest$2;->$cdnAuthToken:Ljava/lang/String;

    iget-object v8, p0, Lin/dragonbra/javasteam/steam/cdn/Client$downloadManifest$2;->$proxyServer:Lin/dragonbra/javasteam/steam/cdn/Server;

    invoke-static {v4, v5, p1, v7, v8}, Lin/dragonbra/javasteam/steam/cdn/Client$Companion;->access$buildCommand(Lin/dragonbra/javasteam/steam/cdn/Client$Companion;Lin/dragonbra/javasteam/steam/cdn/Server;Ljava/lang/String;Ljava/lang/String;Lin/dragonbra/javasteam/steam/cdn/Server;)Lokhttp3/HttpUrl;

    move-result-object v4

    invoke-virtual {v1, v4}, Lokhttp3/Request$Builder;->url(Lokhttp3/HttpUrl;)Lokhttp3/Request$Builder;

    move-result-object v1

    .line 131
    invoke-virtual {v1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v1

    .line 133
    invoke-static {}, Lin/dragonbra/javasteam/steam/cdn/Client;->access$getLogger$cp()Lin/dragonbra/javasteam/util/log/Logger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Request URL is: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x2

    invoke-static {v4, v5, v3, v7, v3}, Lin/dragonbra/javasteam/util/log/Logger;->debug$default(Lin/dragonbra/javasteam/util/log/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 136
    :try_start_b9
    iget-object v4, p0, Lin/dragonbra/javasteam/steam/cdn/Client$downloadManifest$2;->this$0:Lin/dragonbra/javasteam/steam/cdn/Client;

    invoke-static {v4}, Lin/dragonbra/javasteam/steam/cdn/Client;->access$getHttpClient$p(Lin/dragonbra/javasteam/steam/cdn/Client;)Lokhttp3/OkHttpClient;

    move-result-object v4

    invoke-virtual {v4, v1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v4

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lin/dragonbra/javasteam/steam/cdn/Client$downloadManifest$2;->L$0:Ljava/lang/Object;

    iput-object v1, p0, Lin/dragonbra/javasteam/steam/cdn/Client$downloadManifest$2;->L$1:Ljava/lang/Object;

    iput v6, p0, Lin/dragonbra/javasteam/steam/cdn/Client$downloadManifest$2;->I$0:I

    iput v2, p0, Lin/dragonbra/javasteam/steam/cdn/Client$downloadManifest$2;->label:I

    invoke-static {v4, p0}, Lokhttp3/coroutines/ExecuteAsyncKt;->executeAsync(Lokhttp3/Call;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_d3
    .catch Ljava/lang/Exception; {:try_start_b9 .. :try_end_d3} :catch_170

    if-ne p1, v0, :cond_d6

    return-object v0

    :cond_d6
    move-object v0, v1

    .line 120
    :goto_d7
    :try_start_d7
    check-cast p1, Lokhttp3/Response;

    .line 138
    invoke-virtual {p1}, Lokhttp3/Response;->isSuccessful()Z

    move-result v1

    if-eqz v1, :cond_144

    .line 145
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/cdn/Client$downloadManifest$2;->$depotKey:[B
    :try_end_e1
    .catch Ljava/lang/Exception; {:try_start_d7 .. :try_end_e1} :catch_19

    .line 146
    :try_start_e1
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v1

    if-eqz v1, :cond_136

    invoke-virtual {v1}, Lokhttp3/ResponseBody;->bytes()[B

    move-result-object v1

    if-eqz v1, :cond_136

    .line 149
    array-length v2, v1

    if-eqz v2, :cond_12e

    .line 154
    new-instance v2, Ljava/util/zip/ZipInputStream;

    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v2, v4}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_fa
    .catchall {:try_start_e1 .. :try_end_fa} :catchall_11e

    .line 155
    :try_start_fa
    invoke-virtual {v2}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v1

    if-eqz v1, :cond_120

    .line 158
    invoke-static {v2}, Lkotlin/io/ByteStreamsKt;->readBytes(Ljava/io/InputStream;)[B

    move-result-object v1

    .line 160
    sget-object v4, Lin/dragonbra/javasteam/types/DepotManifest;->Companion:Lin/dragonbra/javasteam/types/DepotManifest$Companion;

    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v4, v5}, Lin/dragonbra/javasteam/types/DepotManifest$Companion;->deserialize(Ljava/io/InputStream;)Lin/dragonbra/javasteam/types/DepotManifest;

    move-result-object v1

    if-eqz p0, :cond_117

    .line 163
    invoke-virtual {v1, p0}, Lin/dragonbra/javasteam/types/DepotManifest;->decryptFilenames([B)Z
    :try_end_114
    .catchall {:try_start_fa .. :try_end_114} :catchall_115

    goto :goto_117

    :catchall_115
    move-exception p0

    goto :goto_128

    .line 154
    :cond_117
    :goto_117
    :try_start_117
    invoke-static {v2, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_11a
    .catchall {:try_start_117 .. :try_end_11a} :catchall_11e

    .line 145
    :try_start_11a
    invoke-static {p1, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_11d
    .catch Ljava/lang/Exception; {:try_start_11a .. :try_end_11d} :catch_19

    return-object v1

    :catchall_11e
    move-exception p0

    goto :goto_13e

    .line 156
    :cond_120
    :try_start_120
    new-instance p0, Lin/dragonbra/javasteam/util/SteamKitWebRequestException;

    const-string v1, "Expected the zip to contain at least one file"

    invoke-direct {p0, v1}, Lin/dragonbra/javasteam/util/SteamKitWebRequestException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_128
    .catchall {:try_start_120 .. :try_end_128} :catchall_115

    .line 154
    :goto_128
    :try_start_128
    throw p0
    :try_end_129
    .catchall {:try_start_128 .. :try_end_129} :catchall_129

    :catchall_129
    move-exception v1

    :try_start_12a
    invoke-static {v2, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1

    .line 150
    :cond_12e
    new-instance p0, Lin/dragonbra/javasteam/util/SteamKitWebRequestException;

    const-string v1, "Response is empty"

    invoke-direct {p0, v1}, Lin/dragonbra/javasteam/util/SteamKitWebRequestException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 147
    :cond_136
    new-instance p0, Lin/dragonbra/javasteam/util/SteamKitWebRequestException;

    const-string v1, "Response body is null"

    invoke-direct {p0, v1}, Lin/dragonbra/javasteam/util/SteamKitWebRequestException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_13e
    .catchall {:try_start_12a .. :try_end_13e} :catchall_11e

    .line 145
    :goto_13e
    :try_start_13e
    throw p0
    :try_end_13f
    .catchall {:try_start_13e .. :try_end_13f} :catchall_13f

    :catchall_13f
    move-exception v1

    :try_start_140
    invoke-static {p1, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1

    .line 139
    :cond_144
    new-instance p0, Lin/dragonbra/javasteam/util/SteamKitWebRequestException;

    .line 140
    invoke-virtual {p1}, Lokhttp3/Response;->code()I

    move-result v1

    invoke-virtual {p1}, Lokhttp3/Response;->message()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Response status code does not indicate success: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 139
    invoke-direct {p0, v1, p1}, Lin/dragonbra/javasteam/util/SteamKitWebRequestException;-><init>(Ljava/lang/String;Lokhttp3/Response;)V

    throw p0
    :try_end_170
    .catch Ljava/lang/Exception; {:try_start_140 .. :try_end_170} :catch_19

    :catch_170
    move-exception p0

    move-object v0, v1

    .line 170
    :goto_172
    invoke-static {}, Lin/dragonbra/javasteam/steam/cdn/Client;->access$getLogger$cp()Lin/dragonbra/javasteam/util/log/Logger;

    move-result-object p1

    invoke-virtual {v0}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to download manifest "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p0}, Lin/dragonbra/javasteam/util/log/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 171
    throw p0
.end method
