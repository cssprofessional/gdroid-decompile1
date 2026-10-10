###### Class io.ktor.network.tls.TLSClientHandshake$input$1 (io.ktor.network.tls.TLSClientHandshake$input$1)
.class public final Lio/ktor/network/tls/TLSClientHandshake$input$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "TLSClientHandshake.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/network/tls/TLSClientHandshake;-><init>(Lio/ktor/utils/io/ByteReadChannel;Lio/ktor/utils/io/ByteWriteChannel;Lio/ktor/network/tls/TLSConfig;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CompletableJob;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/ktor/network/tls/TLSClientHandshake$input$1$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/channels/ProducerScope<",
        "-",
        "Lio/ktor/network/tls/TLSRecord;",
        ">;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "io.ktor.network.tls.TLSClientHandshake$input$1"
    f = "TLSClientHandshake.kt"
    l = {
        0x3f,
        0x5d
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation


# instance fields
.field public final synthetic $rawInput:Lio/ktor/utils/io/ByteReadChannel;

.field public I$0:I

.field public synthetic L$0:Ljava/lang/Object;

.field public L$1:Ljava/lang/Object;

.field public L$2:Ljava/lang/Object;

.field public L$3:Ljava/lang/Object;

.field public label:I

.field public final synthetic this$0:Lio/ktor/network/tls/TLSClientHandshake;


# direct methods
.method public constructor <init>(Lio/ktor/utils/io/ByteReadChannel;Lio/ktor/network/tls/TLSClientHandshake;Lkotlin/coroutines/Continuation;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/ByteReadChannel;",
            "Lio/ktor/network/tls/TLSClientHandshake;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ktor/network/tls/TLSClientHandshake$input$1;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lio/ktor/network/tls/TLSClientHandshake$input$1;->$rawInput:Lio/ktor/utils/io/ByteReadChannel;

    iput-object p2, p0, Lio/ktor/network/tls/TLSClientHandshake$input$1;->this$0:Lio/ktor/network/tls/TLSClientHandshake;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 5
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
    new-instance v0, Lio/ktor/network/tls/TLSClientHandshake$input$1;

    iget-object v1, p0, Lio/ktor/network/tls/TLSClientHandshake$input$1;->$rawInput:Lio/ktor/utils/io/ByteReadChannel;

    iget-object p0, p0, Lio/ktor/network/tls/TLSClientHandshake$input$1;->this$0:Lio/ktor/network/tls/TLSClientHandshake;

    invoke-direct {v0, v1, p0, p2}, Lio/ktor/network/tls/TLSClientHandshake$input$1;-><init>(Lio/ktor/utils/io/ByteReadChannel;Lio/ktor/network/tls/TLSClientHandshake;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lio/ktor/network/tls/TLSClientHandshake$input$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lkotlinx/coroutines/channels/ProducerScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/ktor/network/tls/TLSClientHandshake$input$1;->invoke(Lkotlinx/coroutines/channels/ProducerScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lkotlinx/coroutines/channels/ProducerScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/channels/ProducerScope<",
            "-",
            "Lio/ktor/network/tls/TLSRecord;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 0
    invoke-virtual {p0, p1, p2}, Lio/ktor/network/tls/TLSClientHandshake$input$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lio/ktor/network/tls/TLSClientHandshake$input$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lio/ktor/network/tls/TLSClientHandshake$input$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 20

    move-object/from16 v1, p0

    iget-object v0, v1, Lio/ktor/network/tls/TLSClientHandshake$input$1;->L$0:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lkotlinx/coroutines/channels/ProducerScope;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 59
    iget v3, v1, Lio/ktor/network/tls/TLSClientHandshake$input$1;->label:I

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v3, :cond_40

    if-eq v3, v5, :cond_38

    if-ne v3, v4, :cond_30

    iget v3, v1, Lio/ktor/network/tls/TLSClientHandshake$input$1;->I$0:I

    iget-object v7, v1, Lio/ktor/network/tls/TLSClientHandshake$input$1;->L$3:Ljava/lang/Object;

    check-cast v7, Lkotlinx/io/Source;

    iget-object v7, v1, Lio/ktor/network/tls/TLSClientHandshake$input$1;->L$2:Ljava/lang/Object;

    check-cast v7, Lio/ktor/network/tls/TLSRecord;

    iget-object v7, v1, Lio/ktor/network/tls/TLSClientHandshake$input$1;->L$1:Ljava/lang/Object;

    check-cast v7, Lio/ktor/network/tls/TLSRecord;

    :try_start_24
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_27
    .catch Lkotlinx/coroutines/channels/ClosedReceiveChannelException; {:try_start_24 .. :try_end_27} :catch_2c
    .catchall {:try_start_24 .. :try_end_27} :catchall_29

    goto/16 :goto_b6

    :catchall_29
    move-exception v0

    goto/16 :goto_149

    :catch_2c
    move v3, v5

    move-object v4, v6

    goto/16 :goto_160

    :cond_30
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_38
    iget v3, v1, Lio/ktor/network/tls/TLSClientHandshake$input$1;->I$0:I

    :try_start_3a
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_3d
    .catch Lkotlinx/coroutines/channels/ClosedReceiveChannelException; {:try_start_3a .. :try_end_3d} :catch_2c
    .catchall {:try_start_3a .. :try_end_3d} :catchall_29

    move-object/from16 v7, p1

    goto :goto_59

    :cond_40
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    const/4 v3, 0x0

    .line 63
    :goto_44
    :try_start_44
    iget-object v7, v1, Lio/ktor/network/tls/TLSClientHandshake$input$1;->$rawInput:Lio/ktor/utils/io/ByteReadChannel;

    iput-object v2, v1, Lio/ktor/network/tls/TLSClientHandshake$input$1;->L$0:Ljava/lang/Object;

    iput-object v6, v1, Lio/ktor/network/tls/TLSClientHandshake$input$1;->L$1:Ljava/lang/Object;

    iput-object v6, v1, Lio/ktor/network/tls/TLSClientHandshake$input$1;->L$2:Ljava/lang/Object;

    iput-object v6, v1, Lio/ktor/network/tls/TLSClientHandshake$input$1;->L$3:Ljava/lang/Object;

    iput v3, v1, Lio/ktor/network/tls/TLSClientHandshake$input$1;->I$0:I

    iput v5, v1, Lio/ktor/network/tls/TLSClientHandshake$input$1;->label:I

    invoke-static {v7, v1}, Lio/ktor/network/tls/ParserKt;->readTLSRecord(Lio/ktor/utils/io/ByteReadChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v0, :cond_59

    return-object v0

    .line 59
    :cond_59
    :goto_59
    check-cast v7, Lio/ktor/network/tls/TLSRecord;

    if-eqz v3, :cond_68

    .line 64
    iget-object v8, v1, Lio/ktor/network/tls/TLSClientHandshake$input$1;->this$0:Lio/ktor/network/tls/TLSClientHandshake;

    invoke-static {v8}, Lio/ktor/network/tls/TLSClientHandshake;->access$getCipher(Lio/ktor/network/tls/TLSClientHandshake;)Lio/ktor/network/tls/cipher/TLSCipher;

    move-result-object v8

    invoke-interface {v8, v7}, Lio/ktor/network/tls/cipher/TLSCipher;->decrypt(Lio/ktor/network/tls/TLSRecord;)Lio/ktor/network/tls/TLSRecord;

    move-result-object v8

    goto :goto_69

    :cond_68
    move-object v8, v7

    .line 65
    :goto_69
    invoke-virtual {v8}, Lio/ktor/network/tls/TLSRecord;->getPacket()Lkotlinx/io/Source;

    move-result-object v15

    .line 67
    invoke-virtual {v8}, Lio/ktor/network/tls/TLSRecord;->getType()Lio/ktor/network/tls/TLSRecordType;

    move-result-object v9

    sget-object v10, Lio/ktor/network/tls/TLSClientHandshake$input$1$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aget v9, v10, v9

    if-eq v9, v5, :cond_f1

    if-eq v9, v4, :cond_bd

    .line 93
    invoke-interface {v2}, Lkotlinx/coroutines/channels/ProducerScope;->getChannel()Lkotlinx/coroutines/channels/SendChannel;

    move-result-object v14

    new-instance v13, Lio/ktor/network/tls/TLSRecord;

    invoke-virtual {v8}, Lio/ktor/network/tls/TLSRecord;->getType()Lio/ktor/network/tls/TLSRecordType;

    move-result-object v10
    :try_end_87
    .catch Lkotlinx/coroutines/channels/ClosedReceiveChannelException; {:try_start_44 .. :try_end_87} :catch_2c
    .catchall {:try_start_44 .. :try_end_87} :catchall_29

    const/16 v16, 0x2

    const/16 v17, 0x0

    const/4 v11, 0x0

    move-object v9, v13

    move-object v12, v15

    move-object v6, v13

    move/from16 v13, v16

    move-object v5, v14

    move-object/from16 v14, v17

    :try_start_94
    invoke-direct/range {v9 .. v14}, Lio/ktor/network/tls/TLSRecord;-><init>(Lio/ktor/network/tls/TLSRecordType;Lio/ktor/network/tls/TLSVersion;Lkotlinx/io/Source;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v2, v1, Lio/ktor/network/tls/TLSClientHandshake$input$1;->L$0:Ljava/lang/Object;

    invoke-static {v7}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    iput-object v7, v1, Lio/ktor/network/tls/TLSClientHandshake$input$1;->L$1:Ljava/lang/Object;

    invoke-static {v8}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    iput-object v7, v1, Lio/ktor/network/tls/TLSClientHandshake$input$1;->L$2:Ljava/lang/Object;

    invoke-static {v15}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    iput-object v7, v1, Lio/ktor/network/tls/TLSClientHandshake$input$1;->L$3:Ljava/lang/Object;

    iput v3, v1, Lio/ktor/network/tls/TLSClientHandshake$input$1;->I$0:I

    iput v4, v1, Lio/ktor/network/tls/TLSClientHandshake$input$1;->label:I

    invoke-interface {v5, v6, v1}, Lkotlinx/coroutines/channels/SendChannel;->send(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v0, :cond_b6

    return-object v0

    :cond_b6
    :goto_b6
    const/4 v5, 0x1

    const/4 v6, 0x0

    goto :goto_44

    :catch_b9
    const/4 v3, 0x1

    const/4 v4, 0x0

    goto/16 :goto_160

    :cond_bd
    if-nez v3, :cond_e9

    .line 81
    invoke-interface {v15}, Lkotlinx/io/Source;->readByte()B

    move-result v3

    const/4 v5, 0x1

    if-ne v3, v5, :cond_c8

    const/4 v3, 0x1

    goto :goto_b6

    .line 83
    :cond_c8
    new-instance v0, Lio/ktor/network/tls/TLSException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Expected flag: 1, received "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " in ChangeCipherSpec"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_e0
    .catch Lkotlinx/coroutines/channels/ClosedReceiveChannelException; {:try_start_94 .. :try_end_e0} :catch_b9
    .catchall {:try_start_94 .. :try_end_e0} :catchall_29

    const/4 v5, 0x0

    :try_start_e1
    invoke-direct {v0, v3, v5, v4, v5}, Lio/ktor/network/tls/TLSException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    :try_end_e4
    .catch Lkotlinx/coroutines/channels/ClosedReceiveChannelException; {:try_start_e1 .. :try_end_e4} :catch_e5
    .catchall {:try_start_e1 .. :try_end_e4} :catchall_29

    :try_start_e4
    throw v0

    :catch_e5
    move-object v4, v5

    :goto_e6
    const/4 v3, 0x1

    goto/16 :goto_160

    .line 80
    :cond_e9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v3, "Check failed."

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_f1
    sget-object v0, Lio/ktor/network/tls/TLSAlertLevel;->Companion:Lio/ktor/network/tls/TLSAlertLevel$Companion;

    invoke-interface {v15}, Lkotlinx/io/Source;->readByte()B

    move-result v3

    invoke-virtual {v0, v3}, Lio/ktor/network/tls/TLSAlertLevel$Companion;->byCode(I)Lio/ktor/network/tls/TLSAlertLevel;

    move-result-object v0

    .line 70
    sget-object v3, Lio/ktor/network/tls/TLSAlertType;->Companion:Lio/ktor/network/tls/TLSAlertType$Companion;

    invoke-interface {v15}, Lkotlinx/io/Source;->readByte()B

    move-result v5

    invoke-virtual {v3, v5}, Lio/ktor/network/tls/TLSAlertType$Companion;->byCode(I)Lio/ktor/network/tls/TLSAlertType;

    move-result-object v3

    .line 72
    sget-object v5, Lio/ktor/network/tls/TLSAlertType;->CloseNotify:Lio/ktor/network/tls/TLSAlertType;

    if-ne v3, v5, :cond_117

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_10b
    .catch Lkotlinx/coroutines/channels/ClosedReceiveChannelException; {:try_start_e4 .. :try_end_10b} :catch_b9
    .catchall {:try_start_e4 .. :try_end_10b} :catchall_29

    .line 101
    iget-object v1, v1, Lio/ktor/network/tls/TLSClientHandshake$input$1;->this$0:Lio/ktor/network/tls/TLSClientHandshake;

    invoke-virtual {v1}, Lio/ktor/network/tls/TLSClientHandshake;->getOutput()Lkotlinx/coroutines/channels/SendChannel;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    :goto_113
    invoke-static {v1, v3, v2, v3}, Lkotlinx/coroutines/channels/SendChannel$DefaultImpls;->close$default(Lkotlinx/coroutines/channels/SendChannel;Ljava/lang/Throwable;ILjava/lang/Object;)Z

    return-object v0

    .line 73
    :cond_117
    :try_start_117
    new-instance v5, Lio/ktor/network/tls/TLSException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Received alert during handshake. Level: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", code: "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_132
    .catch Lkotlinx/coroutines/channels/ClosedReceiveChannelException; {:try_start_117 .. :try_end_132} :catch_b9
    .catchall {:try_start_117 .. :try_end_132} :catchall_29

    const/4 v3, 0x0

    :try_start_133
    invoke-direct {v5, v0, v3, v4, v3}, Lio/ktor/network/tls/TLSException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 75
    invoke-interface {v2}, Lkotlinx/coroutines/channels/ProducerScope;->getChannel()Lkotlinx/coroutines/channels/SendChannel;

    move-result-object v0

    invoke-interface {v0, v5}, Lkotlinx/coroutines/channels/SendChannel;->close(Ljava/lang/Throwable;)Z

    .line 76
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_13f
    .catch Lkotlinx/coroutines/channels/ClosedReceiveChannelException; {:try_start_133 .. :try_end_13f} :catch_147
    .catchall {:try_start_133 .. :try_end_13f} :catchall_29

    .line 101
    iget-object v1, v1, Lio/ktor/network/tls/TLSClientHandshake$input$1;->this$0:Lio/ktor/network/tls/TLSClientHandshake;

    invoke-virtual {v1}, Lio/ktor/network/tls/TLSClientHandshake;->getOutput()Lkotlinx/coroutines/channels/SendChannel;

    move-result-object v1

    const/4 v2, 0x1

    goto :goto_113

    :catch_147
    move-object v4, v3

    goto :goto_e6

    .line 98
    :goto_149
    :try_start_149
    invoke-interface {v2}, Lkotlinx/coroutines/channels/ProducerScope;->getChannel()Lkotlinx/coroutines/channels/SendChannel;

    move-result-object v2

    invoke-interface {v2, v0}, Lkotlinx/coroutines/channels/SendChannel;->close(Ljava/lang/Throwable;)Z
    :try_end_150
    .catchall {:try_start_149 .. :try_end_150} :catchall_15c

    .line 101
    iget-object v0, v1, Lio/ktor/network/tls/TLSClientHandshake$input$1;->this$0:Lio/ktor/network/tls/TLSClientHandshake;

    invoke-virtual {v0}, Lio/ktor/network/tls/TLSClientHandshake;->getOutput()Lkotlinx/coroutines/channels/SendChannel;

    move-result-object v0

    const/4 v3, 0x1

    const/4 v4, 0x0

    :goto_158
    invoke-static {v0, v4, v3, v4}, Lkotlinx/coroutines/channels/SendChannel$DefaultImpls;->close$default(Lkotlinx/coroutines/channels/SendChannel;Ljava/lang/Throwable;ILjava/lang/Object;)Z

    goto :goto_16e

    :catchall_15c
    move-exception v0

    const/4 v3, 0x1

    const/4 v4, 0x0

    goto :goto_172

    .line 96
    :goto_160
    :try_start_160
    invoke-interface {v2}, Lkotlinx/coroutines/channels/ProducerScope;->getChannel()Lkotlinx/coroutines/channels/SendChannel;

    move-result-object v0

    invoke-static {v0, v4, v3, v4}, Lkotlinx/coroutines/channels/SendChannel$DefaultImpls;->close$default(Lkotlinx/coroutines/channels/SendChannel;Ljava/lang/Throwable;ILjava/lang/Object;)Z
    :try_end_167
    .catchall {:try_start_160 .. :try_end_167} :catchall_171

    .line 101
    iget-object v0, v1, Lio/ktor/network/tls/TLSClientHandshake$input$1;->this$0:Lio/ktor/network/tls/TLSClientHandshake;

    invoke-virtual {v0}, Lio/ktor/network/tls/TLSClientHandshake;->getOutput()Lkotlinx/coroutines/channels/SendChannel;

    move-result-object v0

    goto :goto_158

    .line 103
    :goto_16e
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :catchall_171
    move-exception v0

    .line 101
    :goto_172
    iget-object v1, v1, Lio/ktor/network/tls/TLSClientHandshake$input$1;->this$0:Lio/ktor/network/tls/TLSClientHandshake;

    invoke-virtual {v1}, Lio/ktor/network/tls/TLSClientHandshake;->getOutput()Lkotlinx/coroutines/channels/SendChannel;

    move-result-object v1

    invoke-static {v1, v4, v3, v4}, Lkotlinx/coroutines/channels/SendChannel$DefaultImpls;->close$default(Lkotlinx/coroutines/channels/SendChannel;Ljava/lang/Throwable;ILjava/lang/Object;)Z

    throw v0
.end method

###### Class io.ktor.network.tls.TLSClientHandshake$input$1.WhenMappings (io.ktor.network.tls.TLSClientHandshake$input$1$WhenMappings)
.class public final synthetic Lio/ktor/network/tls/TLSClientHandshake$input$1$WhenMappings;
.super Ljava/lang/Object;
.source "TLSClientHandshake.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/network/tls/TLSClientHandshake$input$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1019
    name = "WhenMappings"
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 0
    invoke-static {}, Lio/ktor/network/tls/TLSRecordType;->values()[Lio/ktor/network/tls/TLSRecordType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_7
    sget-object v1, Lio/ktor/network/tls/TLSRecordType;->Alert:Lio/ktor/network/tls/TLSRecordType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_10} :catch_10

    :catch_10
    :try_start_10
    sget-object v1, Lio/ktor/network/tls/TLSRecordType;->ChangeCipherSpec:Lio/ktor/network/tls/TLSRecordType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_19} :catch_19

    :catch_19
    sput-object v0, Lio/ktor/network/tls/TLSClientHandshake$input$1$WhenMappings;->$EnumSwitchMapping$0:[I

    return-void
.end method
