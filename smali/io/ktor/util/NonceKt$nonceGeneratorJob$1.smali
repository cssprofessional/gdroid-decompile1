###### Class io.ktor.util.NonceKt$nonceGeneratorJob$1 (io.ktor.util.NonceKt$nonceGeneratorJob$1)
.class public final Lio/ktor/util/NonceKt$nonceGeneratorJob$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "Nonce.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/util/NonceKt;
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

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "io.ktor.util.NonceKt$nonceGeneratorJob$1"
    f = "Nonce.kt"
    l = {
        0x4c
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation


# instance fields
.field public I$0:I

.field public I$1:I

.field public J$0:J

.field public J$1:J

.field public L$0:Ljava/lang/Object;

.field public L$1:Ljava/lang/Object;

.field public L$2:Ljava/lang/Object;

.field public L$3:Ljava/lang/Object;

.field public L$4:Ljava/lang/Object;

.field public L$5:Ljava/lang/Object;

.field public L$6:Ljava/lang/Object;

.field public label:I


# direct methods
.method public constructor <init>(Lkotlin/coroutines/Continuation;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ktor/util/NonceKt$nonceGeneratorJob$1;",
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
    new-instance p0, Lio/ktor/util/NonceKt$nonceGeneratorJob$1;

    invoke-direct {p0, p2}, Lio/ktor/util/NonceKt$nonceGeneratorJob$1;-><init>(Lkotlin/coroutines/Continuation;)V

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/ktor/util/NonceKt$nonceGeneratorJob$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lio/ktor/util/NonceKt$nonceGeneratorJob$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lio/ktor/util/NonceKt$nonceGeneratorJob$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lio/ktor/util/NonceKt$nonceGeneratorJob$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 26

    move-object/from16 v0, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 34
    iget v2, v0, Lio/ktor/util/NonceKt$nonceGeneratorJob$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_51

    if-ne v2, v3, :cond_49

    iget v2, v0, Lio/ktor/util/NonceKt$nonceGeneratorJob$1;->I$1:I

    iget v4, v0, Lio/ktor/util/NonceKt$nonceGeneratorJob$1;->I$0:I

    iget-wide v5, v0, Lio/ktor/util/NonceKt$nonceGeneratorJob$1;->J$1:J

    iget-wide v7, v0, Lio/ktor/util/NonceKt$nonceGeneratorJob$1;->J$0:J

    iget-object v9, v0, Lio/ktor/util/NonceKt$nonceGeneratorJob$1;->L$6:Ljava/lang/Object;

    check-cast v9, Ljava/util/List;

    iget-object v10, v0, Lio/ktor/util/NonceKt$nonceGeneratorJob$1;->L$5:Ljava/lang/Object;

    check-cast v10, [B

    iget-object v11, v0, Lio/ktor/util/NonceKt$nonceGeneratorJob$1;->L$4:Ljava/lang/Object;

    check-cast v11, [B

    iget-object v12, v0, Lio/ktor/util/NonceKt$nonceGeneratorJob$1;->L$3:Ljava/lang/Object;

    check-cast v12, Ljava/security/SecureRandom;

    iget-object v13, v0, Lio/ktor/util/NonceKt$nonceGeneratorJob$1;->L$2:Ljava/lang/Object;

    check-cast v13, Ljava/security/SecureRandom;

    iget-object v14, v0, Lio/ktor/util/NonceKt$nonceGeneratorJob$1;->L$1:Ljava/lang/Object;

    check-cast v14, Ljava/util/ArrayList;

    iget-object v15, v0, Lio/ktor/util/NonceKt$nonceGeneratorJob$1;->L$0:Ljava/lang/Object;

    check-cast v15, Lkotlinx/coroutines/channels/Channel;

    :try_start_31
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_46

    move/from16 v17, v2

    move v2, v3

    move-wide/from16 v20, v7

    move-object v8, v11

    move-object v7, v12

    move-object v11, v15

    move-wide/from16 v22, v5

    move-object v6, v13

    move-wide/from16 v12, v22

    move-object v5, v14

    move-wide/from16 v14, v20

    goto/16 :goto_ff

    :catchall_46
    move-exception v0

    goto/16 :goto_12c

    :cond_49
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_51
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 35
    invoke-static {}, Lio/ktor/util/NonceKt;->getSeedChannel()Lkotlinx/coroutines/channels/Channel;

    move-result-object v2

    .line 37
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 38
    invoke-static {}, Lio/ktor/util/NonceKt;->access$lookupSecureRandom()Ljava/security/SecureRandom;

    move-result-object v5

    .line 39
    const-string v6, "SHA1PRNG"

    invoke-static {v6}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v6

    const/16 v7, 0x80

    .line 41
    new-array v8, v7, [B

    const/16 v9, 0x200

    .line 42
    new-array v9, v9, [B

    .line 44
    invoke-virtual {v5, v7}, Ljava/security/SecureRandom;->generateSeed(I)[B

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/security/SecureRandom;->setSeed([B)V

    const-wide/16 v10, 0x0

    move-object v15, v2

    .line 49
    :goto_79
    :try_start_79
    invoke-virtual {v5, v8}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 50
    invoke-virtual {v6, v9}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 53
    array-length v2, v8

    const/4 v7, 0x0

    move v12, v7

    :goto_82
    if-ge v12, v2, :cond_8d

    mul-int/lit8 v13, v12, 0x4

    .line 54
    aget-byte v14, v8, v12

    aput-byte v14, v9, v13

    add-int/lit8 v12, v12, 0x1

    goto :goto_82

    .line 60
    :cond_8d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long v16, v12, v10

    const-wide/16 v18, 0x7530

    cmp-long v2, v16, v18

    if-lez v2, :cond_a7

    sub-long/2addr v10, v12

    .line 63
    invoke-virtual {v6, v10, v11}, Ljava/security/SecureRandom;->setSeed(J)V

    .line 64
    array-length v2, v8

    invoke-virtual {v5, v2}, Ljava/security/SecureRandom;->generateSeed(I)[B

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/security/SecureRandom;->setSeed([B)V

    move-wide v10, v12

    goto :goto_aa

    .line 67
    :cond_a7
    invoke-virtual {v6, v8}, Ljava/security/SecureRandom;->setSeed([B)V

    .line 72
    :goto_aa
    invoke-static {v9}, Lio/ktor/util/CryptoKt;->hex([B)Ljava/lang/String;

    move-result-object v2

    const/16 v14, 0x10

    invoke-static {v2, v14}, Lkotlin/text/StringsKt___StringsKt;->chunked(Ljava/lang/CharSequence;I)Ljava/util/List;

    move-result-object v2

    invoke-static {v2, v4}, Lkotlin/collections/CollectionsKt___CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v2

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v2, v6}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->shuffled(Ljava/lang/Iterable;Ljava/util/Random;)Ljava/util/List;

    move-result-object v2

    .line 75
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v14

    div-int/lit8 v14, v14, 0x2
    :try_end_c5
    .catchall {:try_start_79 .. :try_end_c5} :catchall_46

    move-object/from16 v20, v9

    move-object v9, v2

    move v2, v14

    move-object/from16 v21, v5

    move-object v5, v4

    move v4, v7

    move-object v7, v6

    move-object/from16 v6, v21

    move-wide/from16 v22, v10

    move-object/from16 v10, v20

    move-object v11, v15

    move-wide/from16 v14, v22

    :goto_d7
    if-ge v4, v2, :cond_107

    .line 76
    :try_start_d9
    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    iput-object v11, v0, Lio/ktor/util/NonceKt$nonceGeneratorJob$1;->L$0:Ljava/lang/Object;

    iput-object v5, v0, Lio/ktor/util/NonceKt$nonceGeneratorJob$1;->L$1:Ljava/lang/Object;

    iput-object v6, v0, Lio/ktor/util/NonceKt$nonceGeneratorJob$1;->L$2:Ljava/lang/Object;

    iput-object v7, v0, Lio/ktor/util/NonceKt$nonceGeneratorJob$1;->L$3:Ljava/lang/Object;

    iput-object v8, v0, Lio/ktor/util/NonceKt$nonceGeneratorJob$1;->L$4:Ljava/lang/Object;

    iput-object v10, v0, Lio/ktor/util/NonceKt$nonceGeneratorJob$1;->L$5:Ljava/lang/Object;

    iput-object v9, v0, Lio/ktor/util/NonceKt$nonceGeneratorJob$1;->L$6:Ljava/lang/Object;

    iput-wide v14, v0, Lio/ktor/util/NonceKt$nonceGeneratorJob$1;->J$0:J

    iput-wide v12, v0, Lio/ktor/util/NonceKt$nonceGeneratorJob$1;->J$1:J

    iput v4, v0, Lio/ktor/util/NonceKt$nonceGeneratorJob$1;->I$0:I

    iput v2, v0, Lio/ktor/util/NonceKt$nonceGeneratorJob$1;->I$1:I

    move/from16 v17, v2

    const/4 v2, 0x1

    iput v2, v0, Lio/ktor/util/NonceKt$nonceGeneratorJob$1;->label:I

    invoke-interface {v11, v3, v0}, Lkotlinx/coroutines/channels/SendChannel;->send(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v1, :cond_ff

    return-object v1

    :cond_ff
    :goto_ff
    add-int/2addr v4, v2

    move v3, v2

    move/from16 v2, v17

    goto :goto_d7

    :catchall_104
    move-exception v0

    move-object v15, v11

    goto :goto_12c

    .line 80
    :cond_107
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 81
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v3

    :goto_114
    if-ge v2, v3, :cond_120

    .line 82
    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_11d
    .catchall {:try_start_d9 .. :try_end_11d} :catchall_104

    add-int/lit8 v2, v2, 0x1

    goto :goto_114

    :cond_120
    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v9, v10

    const/4 v3, 0x1

    move-wide/from16 v20, v14

    move-object v15, v11

    move-wide/from16 v10, v20

    goto/16 :goto_79

    :goto_12c
    const/4 v1, 0x0

    .line 86
    :try_start_12d
    invoke-interface {v15, v0}, Lkotlinx/coroutines/channels/SendChannel;->close(Ljava/lang/Throwable;)Z
    :try_end_130
    .catchall {:try_start_12d .. :try_end_130} :catchall_137

    const/4 v2, 0x1

    .line 88
    invoke-static {v15, v1, v2, v1}, Lkotlinx/coroutines/channels/SendChannel$DefaultImpls;->close$default(Lkotlinx/coroutines/channels/SendChannel;Ljava/lang/Throwable;ILjava/lang/Object;)Z

    .line 90
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :catchall_137
    move-exception v0

    const/4 v2, 0x1

    move-object v3, v0

    .line 88
    invoke-static {v15, v1, v2, v1}, Lkotlinx/coroutines/channels/SendChannel$DefaultImpls;->close$default(Lkotlinx/coroutines/channels/SendChannel;Ljava/lang/Throwable;ILjava/lang/Object;)Z

    throw v3
.end method
