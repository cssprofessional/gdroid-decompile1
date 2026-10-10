###### Class io.ktor.network.tls.TLSSocket (io.ktor.network.tls.TLSSocket)
.class public final Lio/ktor/network/tls/TLSSocket;
.super Ljava/lang/Object;
.source "TLSClientSessionJvm.kt"

# interfaces
.implements Lkotlinx/coroutines/CoroutineScope;
.implements Lio/ktor/network/sockets/Socket;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/ktor/network/tls/TLSSocket$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTLSClientSessionJvm.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TLSClientSessionJvm.kt\nio/ktor/network/tls/TLSSocket\n+ 2 Channels.common.kt\nkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt\n+ 3 Pool.kt\nio/ktor/utils/io/pool/PoolKt\n+ 4 Builder.kt\nio/ktor/utils/io/core/BuilderKt\n*L\n1#1,114:1\n160#2:115\n94#2,3:116\n161#2,2:119\n101#2:121\n97#2,3:122\n182#3,3:125\n186#3:131\n21#4,3:128\n*S KotlinDebug\n*F\n+ 1 TLSClientSessionJvm.kt\nio/ktor/network/tls/TLSSocket\n*L\n65#1:115\n65#1:116,3\n65#1:119,2\n65#1:121\n65#1:122,3\n84#1:125,3\n84#1:131\n92#1:128,3\n*E\n"
.end annotation


# instance fields
.field public final base:Lio/ktor/network/tls/TLSClientHandshake;

.field public final coroutineContext:Lkotlin/coroutines/CoroutineContext;

.field public final socket:Lio/ktor/network/sockets/Socket;


# direct methods
.method public static synthetic $r8$lambda$srMQH-lNzIBa_8FStd8PUGjCTF4(Lio/ktor/network/tls/TLSSocket;Ljava/lang/Throwable;)Lkotlin/Unit;
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lio/ktor/network/tls/TLSSocket;->close$lambda$0(Lio/ktor/network/tls/TLSSocket;Ljava/lang/Throwable;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lio/ktor/network/tls/TLSClientHandshake;Lio/ktor/network/sockets/Socket;Lkotlin/coroutines/CoroutineContext;)V
    .registers 5

    const-string v0, "base"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "socket"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coroutineContext"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lio/ktor/network/tls/TLSSocket;->base:Lio/ktor/network/tls/TLSClientHandshake;

    .line 49
    iput-object p2, p0, Lio/ktor/network/tls/TLSSocket;->socket:Lio/ktor/network/sockets/Socket;

    .line 50
    iput-object p3, p0, Lio/ktor/network/tls/TLSSocket;->coroutineContext:Lkotlin/coroutines/CoroutineContext;

    return-void
.end method

.method public static final synthetic access$appDataInputLoop(Lio/ktor/network/tls/TLSSocket;Lio/ktor/utils/io/ByteWriteChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3

    .line 47
    invoke-virtual {p0, p1, p2}, Lio/ktor/network/tls/TLSSocket;->appDataInputLoop(Lio/ktor/utils/io/ByteWriteChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$appDataOutputLoop(Lio/ktor/network/tls/TLSSocket;Lio/ktor/utils/io/ByteReadChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3

    .line 47
    invoke-virtual {p0, p1, p2}, Lio/ktor/network/tls/TLSSocket;->appDataOutputLoop(Lio/ktor/utils/io/ByteReadChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final close$lambda$0(Lio/ktor/network/tls/TLSSocket;Ljava/lang/Throwable;)Lkotlin/Unit;
    .registers 2

    .line 110
    iget-object p0, p0, Lio/ktor/network/tls/TLSSocket;->socket:Lio/ktor/network/sockets/Socket;

    invoke-interface {p0}, Ljava/io/Closeable;->close()V

    .line 111
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public final appDataInputLoop(Lio/ktor/utils/io/ByteWriteChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/ByteWriteChannel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    instance-of v2, v1, Lio/ktor/network/tls/TLSSocket$appDataInputLoop$1;

    if-eqz v2, :cond_17

    move-object v2, v1

    check-cast v2, Lio/ktor/network/tls/TLSSocket$appDataInputLoop$1;

    iget v3, v2, Lio/ktor/network/tls/TLSSocket$appDataInputLoop$1;->label:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_17

    sub-int/2addr v3, v4

    iput v3, v2, Lio/ktor/network/tls/TLSSocket$appDataInputLoop$1;->label:I

    goto :goto_1c

    :cond_17
    new-instance v2, Lio/ktor/network/tls/TLSSocket$appDataInputLoop$1;

    invoke-direct {v2, v0, v1}, Lio/ktor/network/tls/TLSSocket$appDataInputLoop$1;-><init>(Lio/ktor/network/tls/TLSSocket;Lkotlin/coroutines/Continuation;)V

    :goto_1c
    iget-object v1, v2, Lio/ktor/network/tls/TLSSocket$appDataInputLoop$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 63
    iget v4, v2, Lio/ktor/network/tls/TLSSocket$appDataInputLoop$1;->label:I

    packed-switch v4, :pswitch_data_264

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_2f
    iget-object v0, v2, Lio/ktor/network/tls/TLSSocket$appDataInputLoop$1;->L$1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Throwable;

    iget-object v2, v2, Lio/ktor/network/tls/TLSSocket$appDataInputLoop$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lio/ktor/utils/io/ByteWriteChannel;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 80
    throw v0

    .line 63
    :pswitch_3b
    iget-object v0, v2, Lio/ktor/network/tls/TLSSocket$appDataInputLoop$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lio/ktor/utils/io/ByteWriteChannel;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_260

    :pswitch_44
    iget v0, v2, Lio/ktor/network/tls/TLSSocket$appDataInputLoop$1;->I$2:I

    iget v4, v2, Lio/ktor/network/tls/TLSSocket$appDataInputLoop$1;->I$1:I

    iget v8, v2, Lio/ktor/network/tls/TLSSocket$appDataInputLoop$1;->I$0:I

    iget-object v9, v2, Lio/ktor/network/tls/TLSSocket$appDataInputLoop$1;->L$7:Ljava/lang/Object;

    check-cast v9, Lkotlinx/io/Source;

    iget-object v9, v2, Lio/ktor/network/tls/TLSSocket$appDataInputLoop$1;->L$6:Ljava/lang/Object;

    check-cast v9, Lio/ktor/network/tls/TLSRecord;

    iget-object v9, v2, Lio/ktor/network/tls/TLSSocket$appDataInputLoop$1;->L$4:Ljava/lang/Object;

    check-cast v9, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v10, v2, Lio/ktor/network/tls/TLSSocket$appDataInputLoop$1;->L$3:Ljava/lang/Object;

    check-cast v10, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v11, v2, Lio/ktor/network/tls/TLSSocket$appDataInputLoop$1;->L$2:Ljava/lang/Object;

    check-cast v11, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v12, v2, Lio/ktor/network/tls/TLSSocket$appDataInputLoop$1;->L$1:Ljava/lang/Object;

    check-cast v12, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v13, v2, Lio/ktor/network/tls/TLSSocket$appDataInputLoop$1;->L$0:Ljava/lang/Object;

    check-cast v13, Lio/ktor/utils/io/ByteWriteChannel;

    :try_start_66
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_69
    .catchall {:try_start_66 .. :try_end_69} :catchall_6f

    move-object v5, v3

    move-object v6, v9

    move-object v7, v10

    move-object v1, v13

    goto/16 :goto_1cd

    :catchall_6f
    move-exception v0

    move-object v5, v3

    move-object v1, v13

    :goto_72
    move-object v3, v0

    goto/16 :goto_237

    :pswitch_75
    iget-wide v8, v2, Lio/ktor/network/tls/TLSSocket$appDataInputLoop$1;->J$0:J

    iget v0, v2, Lio/ktor/network/tls/TLSSocket$appDataInputLoop$1;->I$3:I

    iget v4, v2, Lio/ktor/network/tls/TLSSocket$appDataInputLoop$1;->I$2:I

    iget v10, v2, Lio/ktor/network/tls/TLSSocket$appDataInputLoop$1;->I$1:I

    iget v11, v2, Lio/ktor/network/tls/TLSSocket$appDataInputLoop$1;->I$0:I

    iget-object v12, v2, Lio/ktor/network/tls/TLSSocket$appDataInputLoop$1;->L$7:Ljava/lang/Object;

    check-cast v12, Lkotlinx/io/Source;

    iget-object v13, v2, Lio/ktor/network/tls/TLSSocket$appDataInputLoop$1;->L$6:Ljava/lang/Object;

    check-cast v13, Lio/ktor/network/tls/TLSRecord;

    iget-object v14, v2, Lio/ktor/network/tls/TLSSocket$appDataInputLoop$1;->L$5:Ljava/lang/Object;

    iget-object v15, v2, Lio/ktor/network/tls/TLSSocket$appDataInputLoop$1;->L$4:Ljava/lang/Object;

    check-cast v15, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v6, v2, Lio/ktor/network/tls/TLSSocket$appDataInputLoop$1;->L$3:Ljava/lang/Object;

    check-cast v6, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v5, v2, Lio/ktor/network/tls/TLSSocket$appDataInputLoop$1;->L$2:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v7, v2, Lio/ktor/network/tls/TLSSocket$appDataInputLoop$1;->L$1:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/channels/ReceiveChannel;

    move/from16 p0, v0

    iget-object v0, v2, Lio/ktor/network/tls/TLSSocket$appDataInputLoop$1;->L$0:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Lio/ktor/utils/io/ByteWriteChannel;

    :try_start_a1
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_a4
    .catchall {:try_start_a1 .. :try_end_a4} :catchall_b5

    move v0, v4

    move v4, v10

    move-object/from16 v1, v16

    move-wide v9, v8

    move v8, v11

    move-object v11, v5

    move-object v5, v12

    move-object v12, v7

    move-object v7, v6

    move-object v6, v15

    move-object v15, v3

    move-object v3, v2

    move/from16 v2, p0

    goto/16 :goto_190

    :catchall_b5
    move-exception v0

    move-object v11, v5

    move-object/from16 v1, v16

    :goto_b9
    move-object v5, v3

    goto :goto_72

    :pswitch_bb
    iget v0, v2, Lio/ktor/network/tls/TLSSocket$appDataInputLoop$1;->I$2:I

    iget v4, v2, Lio/ktor/network/tls/TLSSocket$appDataInputLoop$1;->I$1:I

    iget v5, v2, Lio/ktor/network/tls/TLSSocket$appDataInputLoop$1;->I$0:I

    iget-object v6, v2, Lio/ktor/network/tls/TLSSocket$appDataInputLoop$1;->L$4:Ljava/lang/Object;

    check-cast v6, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v7, v2, Lio/ktor/network/tls/TLSSocket$appDataInputLoop$1;->L$3:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v8, v2, Lio/ktor/network/tls/TLSSocket$appDataInputLoop$1;->L$2:Ljava/lang/Object;

    move-object v11, v8

    check-cast v11, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v8, v2, Lio/ktor/network/tls/TLSSocket$appDataInputLoop$1;->L$1:Ljava/lang/Object;

    check-cast v8, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v9, v2, Lio/ktor/network/tls/TLSSocket$appDataInputLoop$1;->L$0:Ljava/lang/Object;

    check-cast v9, Lio/ktor/utils/io/ByteWriteChannel;

    :try_start_d6
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_d9
    .catchall {:try_start_d6 .. :try_end_d9} :catchall_df

    move-object/from16 v17, v9

    move-object v9, v1

    move-object/from16 v1, v17

    goto :goto_121

    :catchall_df
    move-exception v0

    move-object v5, v3

    move-object v1, v9

    goto :goto_72

    :pswitch_e3
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 65
    :try_start_e6
    iget-object v0, v0, Lio/ktor/network/tls/TLSSocket;->base:Lio/ktor/network/tls/TLSClientHandshake;

    invoke-virtual {v0}, Lio/ktor/network/tls/TLSClientHandshake;->getInput()Lkotlinx/coroutines/channels/ReceiveChannel;

    move-result-object v11
    :try_end_ec
    .catchall {:try_start_e6 .. :try_end_ec} :catchall_23e

    .line 161
    :try_start_ec
    invoke-interface {v11}, Lkotlinx/coroutines/channels/ReceiveChannel;->iterator()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object v0
    :try_end_f0
    .catchall {:try_start_ec .. :try_end_f0} :catchall_231

    move-object/from16 v1, p1

    move-object v6, v0

    move-object v7, v11

    move-object v8, v7

    const/4 v0, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_f8
    :try_start_f8
    iput-object v1, v2, Lio/ktor/network/tls/TLSSocket$appDataInputLoop$1;->L$0:Ljava/lang/Object;

    invoke-static {v8}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    iput-object v9, v2, Lio/ktor/network/tls/TLSSocket$appDataInputLoop$1;->L$1:Ljava/lang/Object;

    iput-object v11, v2, Lio/ktor/network/tls/TLSSocket$appDataInputLoop$1;->L$2:Ljava/lang/Object;

    invoke-static {v7}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    iput-object v9, v2, Lio/ktor/network/tls/TLSSocket$appDataInputLoop$1;->L$3:Ljava/lang/Object;

    iput-object v6, v2, Lio/ktor/network/tls/TLSSocket$appDataInputLoop$1;->L$4:Ljava/lang/Object;

    const/4 v9, 0x0

    iput-object v9, v2, Lio/ktor/network/tls/TLSSocket$appDataInputLoop$1;->L$5:Ljava/lang/Object;

    iput-object v9, v2, Lio/ktor/network/tls/TLSSocket$appDataInputLoop$1;->L$6:Ljava/lang/Object;

    iput-object v9, v2, Lio/ktor/network/tls/TLSSocket$appDataInputLoop$1;->L$7:Ljava/lang/Object;

    iput v5, v2, Lio/ktor/network/tls/TLSSocket$appDataInputLoop$1;->I$0:I

    iput v4, v2, Lio/ktor/network/tls/TLSSocket$appDataInputLoop$1;->I$1:I

    iput v0, v2, Lio/ktor/network/tls/TLSSocket$appDataInputLoop$1;->I$2:I

    const/4 v9, 0x1

    iput v9, v2, Lio/ktor/network/tls/TLSSocket$appDataInputLoop$1;->label:I

    invoke-interface {v6, v2}, Lkotlinx/coroutines/channels/ChannelIterator;->hasNext(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v3, :cond_121

    return-object v3

    :cond_121
    :goto_121
    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_212

    invoke-interface {v6}, Lkotlinx/coroutines/channels/ChannelIterator;->next()Ljava/lang/Object;

    move-result-object v14

    move-object v13, v14

    check-cast v13, Lio/ktor/network/tls/TLSRecord;

    .line 66
    invoke-virtual {v13}, Lio/ktor/network/tls/TLSRecord;->getPacket()Lkotlinx/io/Source;

    move-result-object v12

    .line 67
    invoke-static {v12}, Lio/ktor/utils/io/core/ByteReadPacketKt;->getRemaining(Lkotlinx/io/Source;)J

    move-result-wide v9

    .line 68
    invoke-virtual {v13}, Lio/ktor/network/tls/TLSRecord;->getType()Lio/ktor/network/tls/TLSRecordType;

    move-result-object v15

    sget-object v16, Lio/ktor/network/tls/TLSSocket$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v15}, Ljava/lang/Enum;->ordinal()I

    move-result v15

    aget v15, v16, v15
    :try_end_144
    .catchall {:try_start_f8 .. :try_end_144} :catchall_20f

    move-object/from16 v16, v3

    const/4 v3, 0x1

    if-ne v15, v3, :cond_1e0

    .line 70
    :try_start_149
    invoke-virtual {v13}, Lio/ktor/network/tls/TLSRecord;->getPacket()Lkotlinx/io/Source;

    move-result-object v15

    iput-object v1, v2, Lio/ktor/network/tls/TLSSocket$appDataInputLoop$1;->L$0:Ljava/lang/Object;

    invoke-static {v8}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v2, Lio/ktor/network/tls/TLSSocket$appDataInputLoop$1;->L$1:Ljava/lang/Object;

    iput-object v11, v2, Lio/ktor/network/tls/TLSSocket$appDataInputLoop$1;->L$2:Ljava/lang/Object;

    invoke-static {v7}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v2, Lio/ktor/network/tls/TLSSocket$appDataInputLoop$1;->L$3:Ljava/lang/Object;

    iput-object v6, v2, Lio/ktor/network/tls/TLSSocket$appDataInputLoop$1;->L$4:Ljava/lang/Object;

    invoke-static {v14}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v2, Lio/ktor/network/tls/TLSSocket$appDataInputLoop$1;->L$5:Ljava/lang/Object;

    invoke-static {v13}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v2, Lio/ktor/network/tls/TLSSocket$appDataInputLoop$1;->L$6:Ljava/lang/Object;

    invoke-static {v12}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v2, Lio/ktor/network/tls/TLSSocket$appDataInputLoop$1;->L$7:Ljava/lang/Object;

    iput v5, v2, Lio/ktor/network/tls/TLSSocket$appDataInputLoop$1;->I$0:I

    iput v4, v2, Lio/ktor/network/tls/TLSSocket$appDataInputLoop$1;->I$1:I

    iput v0, v2, Lio/ktor/network/tls/TLSSocket$appDataInputLoop$1;->I$2:I

    const/4 v3, 0x0

    iput v3, v2, Lio/ktor/network/tls/TLSSocket$appDataInputLoop$1;->I$3:I

    iput-wide v9, v2, Lio/ktor/network/tls/TLSSocket$appDataInputLoop$1;->J$0:J

    const/4 v3, 0x2

    iput v3, v2, Lio/ktor/network/tls/TLSSocket$appDataInputLoop$1;->label:I

    invoke-static {v1, v15, v2}, Lio/ktor/utils/io/ByteWriteChannelOperationsKt;->writePacket(Lio/ktor/utils/io/ByteWriteChannel;Lkotlinx/io/Source;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3
    :try_end_183
    .catchall {:try_start_149 .. :try_end_183} :catchall_1db

    move-object/from16 v15, v16

    if-ne v3, v15, :cond_188

    return-object v15

    :cond_188
    move-object v3, v2

    const/4 v2, 0x0

    move-object/from16 v17, v8

    move v8, v5

    move-object v5, v12

    move-object/from16 v12, v17

    .line 71
    :goto_190
    :try_start_190
    iput-object v1, v3, Lio/ktor/network/tls/TLSSocket$appDataInputLoop$1;->L$0:Ljava/lang/Object;
    :try_end_192
    .catchall {:try_start_190 .. :try_end_192} :catchall_1d8

    move-object/from16 v16, v15

    :try_start_194
    invoke-static {v12}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    iput-object v15, v3, Lio/ktor/network/tls/TLSSocket$appDataInputLoop$1;->L$1:Ljava/lang/Object;

    iput-object v11, v3, Lio/ktor/network/tls/TLSSocket$appDataInputLoop$1;->L$2:Ljava/lang/Object;

    invoke-static {v7}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    iput-object v15, v3, Lio/ktor/network/tls/TLSSocket$appDataInputLoop$1;->L$3:Ljava/lang/Object;

    iput-object v6, v3, Lio/ktor/network/tls/TLSSocket$appDataInputLoop$1;->L$4:Ljava/lang/Object;

    invoke-static {v14}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    iput-object v14, v3, Lio/ktor/network/tls/TLSSocket$appDataInputLoop$1;->L$5:Ljava/lang/Object;

    invoke-static {v13}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    iput-object v13, v3, Lio/ktor/network/tls/TLSSocket$appDataInputLoop$1;->L$6:Ljava/lang/Object;

    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v3, Lio/ktor/network/tls/TLSSocket$appDataInputLoop$1;->L$7:Ljava/lang/Object;

    iput v8, v3, Lio/ktor/network/tls/TLSSocket$appDataInputLoop$1;->I$0:I

    iput v4, v3, Lio/ktor/network/tls/TLSSocket$appDataInputLoop$1;->I$1:I

    iput v0, v3, Lio/ktor/network/tls/TLSSocket$appDataInputLoop$1;->I$2:I

    iput v2, v3, Lio/ktor/network/tls/TLSSocket$appDataInputLoop$1;->I$3:I

    iput-wide v9, v3, Lio/ktor/network/tls/TLSSocket$appDataInputLoop$1;->J$0:J

    const/4 v2, 0x3

    iput v2, v3, Lio/ktor/network/tls/TLSSocket$appDataInputLoop$1;->label:I

    invoke-interface {v1, v3}, Lio/ktor/utils/io/ByteWriteChannel;->flush(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2
    :try_end_1c7
    .catchall {:try_start_194 .. :try_end_1c7} :catchall_1d2

    move-object/from16 v5, v16

    if-ne v2, v5, :cond_1cc

    return-object v5

    :cond_1cc
    move-object v2, v3

    :goto_1cd
    move-object v3, v5

    move v5, v8

    move-object v8, v12

    goto/16 :goto_f8

    :catchall_1d2
    move-exception v0

    move-object/from16 v5, v16

    :goto_1d5
    move-object v2, v3

    goto/16 :goto_72

    :catchall_1d8
    move-exception v0

    move-object v5, v15

    goto :goto_1d5

    :catchall_1db
    move-exception v0

    move-object/from16 v5, v16

    goto/16 :goto_72

    :cond_1e0
    move-object/from16 v5, v16

    .line 73
    :try_start_1e2
    new-instance v0, Lio/ktor/network/tls/TLSException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected record "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Lio/ktor/network/tls/TLSRecord;->getType()Lio/ktor/network/tls/TLSRecordType;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " bytes)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v6, 0x2

    invoke-direct {v0, v3, v4, v6, v4}, Lio/ktor/network/tls/TLSException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v0

    :catchall_20c
    move-exception v0

    goto/16 :goto_72

    :catchall_20f
    move-exception v0

    goto/16 :goto_b9

    :cond_212
    move-object v5, v3

    .line 162
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_215
    .catchall {:try_start_1e2 .. :try_end_215} :catchall_20c

    const/4 v3, 0x0

    .line 101
    :try_start_216
    invoke-static {v11, v3}, Lkotlinx/coroutines/channels/ChannelsKt;->cancelConsumed(Lkotlinx/coroutines/channels/ReceiveChannel;Ljava/lang/Throwable;)V
    :try_end_219
    .catchall {:try_start_216 .. :try_end_219} :catchall_241

    .line 78
    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v2, Lio/ktor/network/tls/TLSSocket$appDataInputLoop$1;->L$0:Ljava/lang/Object;

    iput-object v3, v2, Lio/ktor/network/tls/TLSSocket$appDataInputLoop$1;->L$1:Ljava/lang/Object;

    iput-object v3, v2, Lio/ktor/network/tls/TLSSocket$appDataInputLoop$1;->L$2:Ljava/lang/Object;

    iput-object v3, v2, Lio/ktor/network/tls/TLSSocket$appDataInputLoop$1;->L$3:Ljava/lang/Object;

    iput-object v3, v2, Lio/ktor/network/tls/TLSSocket$appDataInputLoop$1;->L$4:Ljava/lang/Object;

    const/4 v0, 0x4

    iput v0, v2, Lio/ktor/network/tls/TLSSocket$appDataInputLoop$1;->label:I

    invoke-interface {v1, v2}, Lio/ktor/utils/io/ByteWriteChannel;->flushAndClose(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v5, :cond_260

    return-object v5

    :catchall_231
    move-exception v0

    move-object v5, v3

    move-object/from16 v1, p1

    goto/16 :goto_72

    .line 99
    :goto_237
    :try_start_237
    throw v3
    :try_end_238
    .catchall {:try_start_237 .. :try_end_238} :catchall_238

    :catchall_238
    move-exception v0

    move-object v4, v0

    .line 101
    :try_start_23a
    invoke-static {v11, v3}, Lkotlinx/coroutines/channels/ChannelsKt;->cancelConsumed(Lkotlinx/coroutines/channels/ReceiveChannel;Ljava/lang/Throwable;)V

    throw v4
    :try_end_23e
    .catchall {:try_start_23a .. :try_end_23e} :catchall_241

    :catchall_23e
    move-object v5, v3

    move-object/from16 v1, p1

    .line 78
    :catchall_241
    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v2, Lio/ktor/network/tls/TLSSocket$appDataInputLoop$1;->L$0:Ljava/lang/Object;

    const/4 v3, 0x0

    iput-object v3, v2, Lio/ktor/network/tls/TLSSocket$appDataInputLoop$1;->L$1:Ljava/lang/Object;

    iput-object v3, v2, Lio/ktor/network/tls/TLSSocket$appDataInputLoop$1;->L$2:Ljava/lang/Object;

    iput-object v3, v2, Lio/ktor/network/tls/TLSSocket$appDataInputLoop$1;->L$3:Ljava/lang/Object;

    iput-object v3, v2, Lio/ktor/network/tls/TLSSocket$appDataInputLoop$1;->L$4:Ljava/lang/Object;

    iput-object v3, v2, Lio/ktor/network/tls/TLSSocket$appDataInputLoop$1;->L$5:Ljava/lang/Object;

    iput-object v3, v2, Lio/ktor/network/tls/TLSSocket$appDataInputLoop$1;->L$6:Ljava/lang/Object;

    iput-object v3, v2, Lio/ktor/network/tls/TLSSocket$appDataInputLoop$1;->L$7:Ljava/lang/Object;

    const/4 v0, 0x5

    iput v0, v2, Lio/ktor/network/tls/TLSSocket$appDataInputLoop$1;->label:I

    invoke-interface {v1, v2}, Lio/ktor/utils/io/ByteWriteChannel;->flushAndClose(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v5, :cond_260

    return-object v5

    .line 80
    :cond_260
    :goto_260
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    nop

    :pswitch_data_264
    .packed-switch 0x0
        :pswitch_e3
        :pswitch_bb
        :pswitch_75
        :pswitch_44
        :pswitch_3b
        :pswitch_3b
        :pswitch_2f
    .end packed-switch
.end method

.method public final appDataOutputLoop(Lio/ktor/utils/io/ByteReadChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/ByteReadChannel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    instance-of v2, v0, Lio/ktor/network/tls/TLSSocket$appDataOutputLoop$1;

    if-eqz v2, :cond_17

    move-object v2, v0

    check-cast v2, Lio/ktor/network/tls/TLSSocket$appDataOutputLoop$1;

    iget v3, v2, Lio/ktor/network/tls/TLSSocket$appDataOutputLoop$1;->label:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_17

    sub-int/2addr v3, v4

    iput v3, v2, Lio/ktor/network/tls/TLSSocket$appDataOutputLoop$1;->label:I

    goto :goto_1c

    :cond_17
    new-instance v2, Lio/ktor/network/tls/TLSSocket$appDataOutputLoop$1;

    invoke-direct {v2, v1, v0}, Lio/ktor/network/tls/TLSSocket$appDataOutputLoop$1;-><init>(Lio/ktor/network/tls/TLSSocket;Lkotlin/coroutines/Continuation;)V

    :goto_1c
    iget-object v0, v2, Lio/ktor/network/tls/TLSSocket$appDataOutputLoop$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 82
    iget v4, v2, Lio/ktor/network/tls/TLSSocket$appDataOutputLoop$1;->label:I

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v4, :cond_6d

    if-eq v4, v6, :cond_57

    if-ne v4, v5, :cond_4f

    iget v4, v2, Lio/ktor/network/tls/TLSSocket$appDataOutputLoop$1;->I$1:I

    iget v8, v2, Lio/ktor/network/tls/TLSSocket$appDataOutputLoop$1;->I$0:I

    iget-object v9, v2, Lio/ktor/network/tls/TLSSocket$appDataOutputLoop$1;->L$3:Ljava/lang/Object;

    check-cast v9, Ljava/nio/ByteBuffer;

    iget-object v10, v2, Lio/ktor/network/tls/TLSSocket$appDataOutputLoop$1;->L$2:Ljava/lang/Object;

    iget-object v11, v2, Lio/ktor/network/tls/TLSSocket$appDataOutputLoop$1;->L$1:Ljava/lang/Object;

    check-cast v11, Lio/ktor/utils/io/pool/ObjectPool;

    iget-object v12, v2, Lio/ktor/network/tls/TLSSocket$appDataOutputLoop$1;->L$0:Ljava/lang/Object;

    check-cast v12, Lio/ktor/utils/io/ByteReadChannel;

    :try_start_3f
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_42
    .catch Lkotlinx/coroutines/channels/ClosedSendChannelException; {:try_start_3f .. :try_end_42} :catch_108
    .catchall {:try_start_3f .. :try_end_42} :catchall_4c

    :cond_42
    move-object v0, v12

    move/from16 v20, v4

    move-object v4, v2

    move-object v2, v9

    move v9, v8

    move/from16 v8, v20

    goto/16 :goto_ea

    :catchall_4c
    move-exception v0

    goto/16 :goto_fd

    :cond_4f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_57
    iget v4, v2, Lio/ktor/network/tls/TLSSocket$appDataOutputLoop$1;->I$1:I

    iget v8, v2, Lio/ktor/network/tls/TLSSocket$appDataOutputLoop$1;->I$0:I

    iget-object v9, v2, Lio/ktor/network/tls/TLSSocket$appDataOutputLoop$1;->L$3:Ljava/lang/Object;

    check-cast v9, Ljava/nio/ByteBuffer;

    iget-object v10, v2, Lio/ktor/network/tls/TLSSocket$appDataOutputLoop$1;->L$2:Ljava/lang/Object;

    iget-object v11, v2, Lio/ktor/network/tls/TLSSocket$appDataOutputLoop$1;->L$1:Ljava/lang/Object;

    check-cast v11, Lio/ktor/utils/io/pool/ObjectPool;

    iget-object v12, v2, Lio/ktor/network/tls/TLSSocket$appDataOutputLoop$1;->L$0:Ljava/lang/Object;

    check-cast v12, Lio/ktor/utils/io/ByteReadChannel;

    :try_start_69
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_6c
    .catch Lkotlinx/coroutines/channels/ClosedSendChannelException; {:try_start_69 .. :try_end_6c} :catch_108
    .catchall {:try_start_69 .. :try_end_6c} :catchall_4c

    goto :goto_a7

    :cond_6d
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 84
    invoke-static {}, Lio/ktor/network/util/PoolsKt;->getDefaultByteBufferPool()Lio/ktor/utils/io/pool/ObjectPool;

    move-result-object v4

    .line 182
    invoke-interface {v4}, Lio/ktor/utils/io/pool/ObjectPool;->borrow()Ljava/lang/Object;

    move-result-object v8

    .line 184
    :try_start_78
    move-object v0, v8

    check-cast v0, Ljava/nio/ByteBuffer;
    :try_end_7b
    .catchall {:try_start_78 .. :try_end_7b} :catchall_118

    const/4 v9, 0x0

    move-object v11, v4

    move-object v10, v8

    move v8, v9

    move-object v4, v2

    move-object v2, v0

    move-object/from16 v0, p1

    .line 87
    :goto_83
    :try_start_83
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 88
    iput-object v0, v4, Lio/ktor/network/tls/TLSSocket$appDataOutputLoop$1;->L$0:Ljava/lang/Object;

    iput-object v11, v4, Lio/ktor/network/tls/TLSSocket$appDataOutputLoop$1;->L$1:Ljava/lang/Object;

    iput-object v10, v4, Lio/ktor/network/tls/TLSSocket$appDataOutputLoop$1;->L$2:Ljava/lang/Object;

    iput-object v2, v4, Lio/ktor/network/tls/TLSSocket$appDataOutputLoop$1;->L$3:Ljava/lang/Object;

    iput v9, v4, Lio/ktor/network/tls/TLSSocket$appDataOutputLoop$1;->I$0:I

    iput v8, v4, Lio/ktor/network/tls/TLSSocket$appDataOutputLoop$1;->I$1:I

    iput v6, v4, Lio/ktor/network/tls/TLSSocket$appDataOutputLoop$1;->label:I

    invoke-static {v0, v2, v4}, Lio/ktor/utils/io/ByteReadChannelOperations_jvmKt;->readAvailable(Lio/ktor/utils/io/ByteReadChannel;Ljava/nio/ByteBuffer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v12

    if-ne v12, v3, :cond_9b

    return-object v3

    :cond_9b
    move-object/from16 v20, v12

    move-object v12, v0

    move-object/from16 v0, v20

    move/from16 v21, v9

    move-object v9, v2

    move-object v2, v4

    move v4, v8

    move/from16 v8, v21

    :goto_a7
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    const/4 v13, -0x1

    if-eq v0, v13, :cond_ec

    .line 91
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 92
    iget-object v13, v1, Lio/ktor/network/tls/TLSSocket;->base:Lio/ktor/network/tls/TLSClientHandshake;

    invoke-virtual {v13}, Lio/ktor/network/tls/TLSClientHandshake;->getOutput()Lkotlinx/coroutines/channels/SendChannel;

    move-result-object v13

    sget-object v15, Lio/ktor/network/tls/TLSRecordType;->ApplicationData:Lio/ktor/network/tls/TLSRecordType;

    .line 21
    new-instance v14, Lkotlinx/io/Buffer;

    invoke-direct {v14}, Lkotlinx/io/Buffer;-><init>()V

    .line 92
    invoke-static {v14, v9}, Lio/ktor/utils/io/core/BytePacketBuilderExtensions_jvmKt;->writeFully(Lkotlinx/io/Sink;Ljava/nio/ByteBuffer;)V

    sget-object v16, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    new-instance v6, Lio/ktor/network/tls/TLSRecord;

    const/16 v16, 0x0

    const/16 v18, 0x2

    const/16 v19, 0x0

    move-object/from16 v17, v14

    move-object v14, v6

    invoke-direct/range {v14 .. v19}, Lio/ktor/network/tls/TLSRecord;-><init>(Lio/ktor/network/tls/TLSRecordType;Lio/ktor/network/tls/TLSVersion;Lkotlinx/io/Source;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v12, v2, Lio/ktor/network/tls/TLSSocket$appDataOutputLoop$1;->L$0:Ljava/lang/Object;

    iput-object v11, v2, Lio/ktor/network/tls/TLSSocket$appDataOutputLoop$1;->L$1:Ljava/lang/Object;

    iput-object v10, v2, Lio/ktor/network/tls/TLSSocket$appDataOutputLoop$1;->L$2:Ljava/lang/Object;

    iput-object v9, v2, Lio/ktor/network/tls/TLSSocket$appDataOutputLoop$1;->L$3:Ljava/lang/Object;

    iput v8, v2, Lio/ktor/network/tls/TLSSocket$appDataOutputLoop$1;->I$0:I

    iput v4, v2, Lio/ktor/network/tls/TLSSocket$appDataOutputLoop$1;->I$1:I

    iput v0, v2, Lio/ktor/network/tls/TLSSocket$appDataOutputLoop$1;->I$2:I

    iput v5, v2, Lio/ktor/network/tls/TLSSocket$appDataOutputLoop$1;->label:I

    invoke-interface {v13, v6, v2}, Lkotlinx/coroutines/channels/SendChannel;->send(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_e7
    .catch Lkotlinx/coroutines/channels/ClosedSendChannelException; {:try_start_83 .. :try_end_e7} :catch_108
    .catchall {:try_start_83 .. :try_end_e7} :catchall_4c

    if-ne v0, v3, :cond_42

    return-object v3

    :goto_ea
    const/4 v6, 0x1

    goto :goto_83

    .line 97
    :cond_ec
    :try_start_ec
    iget-object v0, v1, Lio/ktor/network/tls/TLSSocket;->base:Lio/ktor/network/tls/TLSClientHandshake;

    invoke-virtual {v0}, Lio/ktor/network/tls/TLSClientHandshake;->getOutput()Lkotlinx/coroutines/channels/SendChannel;

    move-result-object v0

    const/4 v1, 0x1

    :goto_f3
    invoke-static {v0, v7, v1, v7}, Lkotlinx/coroutines/channels/SendChannel$DefaultImpls;->close$default(Lkotlinx/coroutines/channels/SendChannel;Ljava/lang/Throwable;ILjava/lang/Object;)Z

    move-object v8, v10

    move-object v4, v11

    goto :goto_110

    :catchall_f9
    move-exception v0

    move-object v8, v10

    move-object v4, v11

    goto :goto_119

    :goto_fd
    iget-object v1, v1, Lio/ktor/network/tls/TLSSocket;->base:Lio/ktor/network/tls/TLSClientHandshake;

    invoke-virtual {v1}, Lio/ktor/network/tls/TLSClientHandshake;->getOutput()Lkotlinx/coroutines/channels/SendChannel;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v7, v2, v7}, Lkotlinx/coroutines/channels/SendChannel$DefaultImpls;->close$default(Lkotlinx/coroutines/channels/SendChannel;Ljava/lang/Throwable;ILjava/lang/Object;)Z

    throw v0

    :catch_108
    iget-object v0, v1, Lio/ktor/network/tls/TLSSocket;->base:Lio/ktor/network/tls/TLSClientHandshake;

    invoke-virtual {v0}, Lio/ktor/network/tls/TLSClientHandshake;->getOutput()Lkotlinx/coroutines/channels/SendChannel;

    move-result-object v0
    :try_end_10e
    .catchall {:try_start_ec .. :try_end_10e} :catchall_f9

    const/4 v1, 0x1

    goto :goto_f3

    .line 99
    :goto_110
    :try_start_110
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_112
    .catchall {:try_start_110 .. :try_end_112} :catchall_118

    .line 186
    invoke-interface {v4, v8}, Lio/ktor/utils/io/pool/ObjectPool;->recycle(Ljava/lang/Object;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :catchall_118
    move-exception v0

    :goto_119
    invoke-interface {v4, v8}, Lio/ktor/utils/io/pool/ObjectPool;->recycle(Ljava/lang/Object;)V

    throw v0
.end method

.method public attachForReading(Lio/ktor/utils/io/ByteChannel;)Lio/ktor/utils/io/WriterJob;
    .registers 5

    const-string v0, "channel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    invoke-virtual {p0}, Lio/ktor/network/tls/TLSSocket;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    new-instance v1, Lkotlinx/coroutines/CoroutineName;

    const-string v2, "cio-tls-input-loop"

    invoke-direct {v1, v2}, Lkotlinx/coroutines/CoroutineName;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    new-instance v1, Lio/ktor/network/tls/TLSSocket$attachForReading$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lio/ktor/network/tls/TLSSocket$attachForReading$1;-><init>(Lio/ktor/network/tls/TLSSocket;Lkotlin/coroutines/Continuation;)V

    invoke-static {p0, v0, p1, v1}, Lio/ktor/utils/io/ByteWriteChannelOperationsKt;->writer(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lio/ktor/utils/io/ByteChannel;Lkotlin/jvm/functions/Function2;)Lio/ktor/utils/io/WriterJob;

    move-result-object p0

    return-object p0
.end method

.method public attachForWriting(Lio/ktor/utils/io/ByteChannel;)Lio/ktor/utils/io/ReaderJob;
    .registers 5

    const-string v0, "channel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0}, Lio/ktor/network/tls/TLSSocket;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    new-instance v1, Lkotlinx/coroutines/CoroutineName;

    const-string v2, "cio-tls-output-loop"

    invoke-direct {v1, v2}, Lkotlinx/coroutines/CoroutineName;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    new-instance v1, Lio/ktor/network/tls/TLSSocket$attachForWriting$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lio/ktor/network/tls/TLSSocket$attachForWriting$1;-><init>(Lio/ktor/network/tls/TLSSocket;Lkotlin/coroutines/Continuation;)V

    invoke-static {p0, v0, p1, v1}, Lio/ktor/utils/io/ByteReadChannelOperationsKt;->reader(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lio/ktor/utils/io/ByteChannel;Lkotlin/jvm/functions/Function2;)Lio/ktor/utils/io/ReaderJob;

    move-result-object p0

    return-object p0
.end method

.method public close()V
    .registers 3

    .line 109
    iget-object v0, p0, Lio/ktor/network/tls/TLSSocket;->base:Lio/ktor/network/tls/TLSClientHandshake;

    invoke-virtual {v0}, Lio/ktor/network/tls/TLSClientHandshake;->close()Lkotlinx/coroutines/Job;

    move-result-object v0

    new-instance v1, Lio/ktor/network/tls/TLSSocket$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lio/ktor/network/tls/TLSSocket$$ExternalSyntheticLambda0;-><init>(Lio/ktor/network/tls/TLSSocket;)V

    invoke-interface {v0, v1}, Lkotlinx/coroutines/Job;->invokeOnCompletion(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;

    return-void
.end method

.method public dispose()V
    .registers 1

    .line 102
    invoke-virtual {p0}, Lio/ktor/network/tls/TLSSocket;->close()V

    return-void
.end method

.method public getCoroutineContext()Lkotlin/coroutines/CoroutineContext;
    .registers 1

    .line 50
    iget-object p0, p0, Lio/ktor/network/tls/TLSSocket;->coroutineContext:Lkotlin/coroutines/CoroutineContext;

    return-object p0
.end method

###### Class io.ktor.network.tls.TLSSocket.WhenMappings (io.ktor.network.tls.TLSSocket$WhenMappings)
.class public final synthetic Lio/ktor/network/tls/TLSSocket$WhenMappings;
.super Ljava/lang/Object;
.source "TLSClientSessionJvm.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/network/tls/TLSSocket;
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
    sget-object v1, Lio/ktor/network/tls/TLSRecordType;->ApplicationData:Lio/ktor/network/tls/TLSRecordType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_10} :catch_10

    :catch_10
    sput-object v0, Lio/ktor/network/tls/TLSSocket$WhenMappings;->$EnumSwitchMapping$0:[I

    return-void
.end method

###### Class io.ktor.network.tls.TLSSocket.AnonymousClass1 (io.ktor.network.tls.TLSSocket$appDataInputLoop$1)
.class public final Lio/ktor/network/tls/TLSSocket$appDataInputLoop$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "TLSClientSessionJvm.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/network/tls/TLSSocket;->appDataInputLoop(Lio/ktor/utils/io/ByteWriteChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "io.ktor.network.tls.TLSSocket"
    f = "TLSClientSessionJvm.kt"
    l = {
        0x77,
        0x46,
        0x47,
        0x4e,
        0x4e,
        0x4e
    }
    m = "appDataInputLoop"
    v = 0x1
.end annotation


# instance fields
.field public I$0:I

.field public I$1:I

.field public I$2:I

.field public I$3:I

.field public J$0:J

.field public L$0:Ljava/lang/Object;

.field public L$1:Ljava/lang/Object;

.field public L$2:Ljava/lang/Object;

.field public L$3:Ljava/lang/Object;

.field public L$4:Ljava/lang/Object;

.field public L$5:Ljava/lang/Object;

.field public L$6:Ljava/lang/Object;

.field public L$7:Ljava/lang/Object;

.field public label:I

.field public synthetic result:Ljava/lang/Object;

.field public final synthetic this$0:Lio/ktor/network/tls/TLSSocket;


# direct methods
.method public constructor <init>(Lio/ktor/network/tls/TLSSocket;Lkotlin/coroutines/Continuation;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/network/tls/TLSSocket;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ktor/network/tls/TLSSocket$appDataInputLoop$1;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lio/ktor/network/tls/TLSSocket$appDataInputLoop$1;->this$0:Lio/ktor/network/tls/TLSSocket;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    iput-object p1, p0, Lio/ktor/network/tls/TLSSocket$appDataInputLoop$1;->result:Ljava/lang/Object;

    iget p1, p0, Lio/ktor/network/tls/TLSSocket$appDataInputLoop$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lio/ktor/network/tls/TLSSocket$appDataInputLoop$1;->label:I

    iget-object p1, p0, Lio/ktor/network/tls/TLSSocket$appDataInputLoop$1;->this$0:Lio/ktor/network/tls/TLSSocket;

    const/4 v0, 0x0

    invoke-static {p1, v0, p0}, Lio/ktor/network/tls/TLSSocket;->access$appDataInputLoop(Lio/ktor/network/tls/TLSSocket;Lio/ktor/utils/io/ByteWriteChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

###### Class io.ktor.network.tls.TLSSocket.C00631 (io.ktor.network.tls.TLSSocket$appDataOutputLoop$1)
.class public final Lio/ktor/network/tls/TLSSocket$appDataOutputLoop$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "TLSClientSessionJvm.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/network/tls/TLSSocket;->appDataOutputLoop(Lio/ktor/utils/io/ByteReadChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "io.ktor.network.tls.TLSSocket"
    f = "TLSClientSessionJvm.kt"
    l = {
        0x58,
        0x5c
    }
    m = "appDataOutputLoop"
    v = 0x1
.end annotation


# instance fields
.field public I$0:I

.field public I$1:I

.field public I$2:I

.field public L$0:Ljava/lang/Object;

.field public L$1:Ljava/lang/Object;

.field public L$2:Ljava/lang/Object;

.field public L$3:Ljava/lang/Object;

.field public label:I

.field public synthetic result:Ljava/lang/Object;

.field public final synthetic this$0:Lio/ktor/network/tls/TLSSocket;


# direct methods
.method public constructor <init>(Lio/ktor/network/tls/TLSSocket;Lkotlin/coroutines/Continuation;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/network/tls/TLSSocket;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ktor/network/tls/TLSSocket$appDataOutputLoop$1;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lio/ktor/network/tls/TLSSocket$appDataOutputLoop$1;->this$0:Lio/ktor/network/tls/TLSSocket;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    iput-object p1, p0, Lio/ktor/network/tls/TLSSocket$appDataOutputLoop$1;->result:Ljava/lang/Object;

    iget p1, p0, Lio/ktor/network/tls/TLSSocket$appDataOutputLoop$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lio/ktor/network/tls/TLSSocket$appDataOutputLoop$1;->label:I

    iget-object p1, p0, Lio/ktor/network/tls/TLSSocket$appDataOutputLoop$1;->this$0:Lio/ktor/network/tls/TLSSocket;

    const/4 v0, 0x0

    invoke-static {p1, v0, p0}, Lio/ktor/network/tls/TLSSocket;->access$appDataOutputLoop(Lio/ktor/network/tls/TLSSocket;Lio/ktor/utils/io/ByteReadChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

###### Class io.ktor.network.tls.TLSSocket.C00641 (io.ktor.network.tls.TLSSocket$attachForReading$1)
.class public final Lio/ktor/network/tls/TLSSocket$attachForReading$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "TLSClientSessionJvm.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/network/tls/TLSSocket;->attachForReading(Lio/ktor/utils/io/ByteChannel;)Lio/ktor/utils/io/WriterJob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lio/ktor/utils/io/WriterScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "io.ktor.network.tls.TLSSocket$attachForReading$1"
    f = "TLSClientSessionJvm.kt"
    l = {
        0x37
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation


# instance fields
.field public synthetic L$0:Ljava/lang/Object;

.field public label:I

.field public final synthetic this$0:Lio/ktor/network/tls/TLSSocket;


# direct methods
.method public constructor <init>(Lio/ktor/network/tls/TLSSocket;Lkotlin/coroutines/Continuation;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/network/tls/TLSSocket;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ktor/network/tls/TLSSocket$attachForReading$1;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lio/ktor/network/tls/TLSSocket$attachForReading$1;->this$0:Lio/ktor/network/tls/TLSSocket;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 4
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
    new-instance v0, Lio/ktor/network/tls/TLSSocket$attachForReading$1;

    iget-object p0, p0, Lio/ktor/network/tls/TLSSocket$attachForReading$1;->this$0:Lio/ktor/network/tls/TLSSocket;

    invoke-direct {v0, p0, p2}, Lio/ktor/network/tls/TLSSocket$attachForReading$1;-><init>(Lio/ktor/network/tls/TLSSocket;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lio/ktor/network/tls/TLSSocket$attachForReading$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Lio/ktor/utils/io/WriterScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/WriterScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 0
    invoke-virtual {p0, p1, p2}, Lio/ktor/network/tls/TLSSocket$attachForReading$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lio/ktor/network/tls/TLSSocket$attachForReading$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lio/ktor/network/tls/TLSSocket$attachForReading$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lio/ktor/utils/io/WriterScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/ktor/network/tls/TLSSocket$attachForReading$1;->invoke(Lio/ktor/utils/io/WriterScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    iget-object v0, p0, Lio/ktor/network/tls/TLSSocket$attachForReading$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lio/ktor/utils/io/WriterScope;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 54
    iget v2, p0, Lio/ktor/network/tls/TLSSocket$attachForReading$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_1b

    if-ne v2, v3, :cond_13

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_33

    :cond_13
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1b
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 55
    iget-object p1, p0, Lio/ktor/network/tls/TLSSocket$attachForReading$1;->this$0:Lio/ktor/network/tls/TLSSocket;

    invoke-virtual {v0}, Lio/ktor/utils/io/WriterScope;->getChannel()Lio/ktor/utils/io/ByteWriteChannel;

    move-result-object v2

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/ktor/network/tls/TLSSocket$attachForReading$1;->L$0:Ljava/lang/Object;

    iput v3, p0, Lio/ktor/network/tls/TLSSocket$attachForReading$1;->label:I

    invoke-static {p1, v2, p0}, Lio/ktor/network/tls/TLSSocket;->access$appDataInputLoop(Lio/ktor/network/tls/TLSSocket;Lio/ktor/utils/io/ByteWriteChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_33

    return-object v1

    .line 56
    :cond_33
    :goto_33
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

###### Class io.ktor.network.tls.TLSSocket.C00651 (io.ktor.network.tls.TLSSocket$attachForWriting$1)
.class public final Lio/ktor/network/tls/TLSSocket$attachForWriting$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "TLSClientSessionJvm.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/network/tls/TLSSocket;->attachForWriting(Lio/ktor/utils/io/ByteChannel;)Lio/ktor/utils/io/ReaderJob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lio/ktor/utils/io/ReaderScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "io.ktor.network.tls.TLSSocket$attachForWriting$1"
    f = "TLSClientSessionJvm.kt"
    l = {
        0x3c
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation


# instance fields
.field public synthetic L$0:Ljava/lang/Object;

.field public label:I

.field public final synthetic this$0:Lio/ktor/network/tls/TLSSocket;


# direct methods
.method public constructor <init>(Lio/ktor/network/tls/TLSSocket;Lkotlin/coroutines/Continuation;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/network/tls/TLSSocket;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ktor/network/tls/TLSSocket$attachForWriting$1;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lio/ktor/network/tls/TLSSocket$attachForWriting$1;->this$0:Lio/ktor/network/tls/TLSSocket;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 4
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
    new-instance v0, Lio/ktor/network/tls/TLSSocket$attachForWriting$1;

    iget-object p0, p0, Lio/ktor/network/tls/TLSSocket$attachForWriting$1;->this$0:Lio/ktor/network/tls/TLSSocket;

    invoke-direct {v0, p0, p2}, Lio/ktor/network/tls/TLSSocket$attachForWriting$1;-><init>(Lio/ktor/network/tls/TLSSocket;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lio/ktor/network/tls/TLSSocket$attachForWriting$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Lio/ktor/utils/io/ReaderScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/ReaderScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 0
    invoke-virtual {p0, p1, p2}, Lio/ktor/network/tls/TLSSocket$attachForWriting$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lio/ktor/network/tls/TLSSocket$attachForWriting$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lio/ktor/network/tls/TLSSocket$attachForWriting$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lio/ktor/utils/io/ReaderScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/ktor/network/tls/TLSSocket$attachForWriting$1;->invoke(Lio/ktor/utils/io/ReaderScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    iget-object v0, p0, Lio/ktor/network/tls/TLSSocket$attachForWriting$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lio/ktor/utils/io/ReaderScope;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 59
    iget v2, p0, Lio/ktor/network/tls/TLSSocket$attachForWriting$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_1b

    if-ne v2, v3, :cond_13

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_33

    :cond_13
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1b
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 60
    iget-object p1, p0, Lio/ktor/network/tls/TLSSocket$attachForWriting$1;->this$0:Lio/ktor/network/tls/TLSSocket;

    invoke-virtual {v0}, Lio/ktor/utils/io/ReaderScope;->getChannel()Lio/ktor/utils/io/ByteReadChannel;

    move-result-object v2

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/ktor/network/tls/TLSSocket$attachForWriting$1;->L$0:Ljava/lang/Object;

    iput v3, p0, Lio/ktor/network/tls/TLSSocket$attachForWriting$1;->label:I

    invoke-static {p1, v2, p0}, Lio/ktor/network/tls/TLSSocket;->access$appDataOutputLoop(Lio/ktor/network/tls/TLSSocket;Lio/ktor/utils/io/ByteReadChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_33

    return-object v1

    .line 61
    :cond_33
    :goto_33
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

###### Class io.ktor.network.tls.TLSSocket$$ExternalSyntheticLambda0 (io.ktor.network.tls.TLSSocket$$ExternalSyntheticLambda0)
.class public final synthetic Lio/ktor/network/tls/TLSSocket$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lio/ktor/network/tls/TLSSocket;


# direct methods
.method public synthetic constructor <init>(Lio/ktor/network/tls/TLSSocket;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/ktor/network/tls/TLSSocket$$ExternalSyntheticLambda0;->f$0:Lio/ktor/network/tls/TLSSocket;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object p0, p0, Lio/ktor/network/tls/TLSSocket$$ExternalSyntheticLambda0;->f$0:Lio/ktor/network/tls/TLSSocket;

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p0, p1}, Lio/ktor/network/tls/TLSSocket;->$r8$lambda$srMQH-lNzIBa_8FStd8PUGjCTF4(Lio/ktor/network/tls/TLSSocket;Ljava/lang/Throwable;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method
