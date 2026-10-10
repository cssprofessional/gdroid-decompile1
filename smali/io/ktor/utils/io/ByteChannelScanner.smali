###### Class io.ktor.utils.io.ByteChannelScanner (io.ktor.utils.io.ByteChannelScanner)
.class public final Lio/ktor/utils/io/ByteChannelScanner;
.super Ljava/lang/Object;
.source "ByteChannelScanner.kt"


# instance fields
.field public bytesRead:J

.field public final channel:Lio/ktor/utils/io/ByteReadChannel;

.field public final input:Lkotlinx/io/Source;

.field public final limit:J

.field public matchIndex:I

.field public final matchString:Lkotlinx/io/bytestring/ByteString;

.field public final partialMatchBuffer:Lkotlinx/io/Buffer;

.field public final partialMatchTable:[I

.field public final writeChannel:Lio/ktor/utils/io/ByteWriteChannel;


# direct methods
.method public constructor <init>(Lio/ktor/utils/io/ByteReadChannel;Lkotlinx/io/bytestring/ByteString;Lio/ktor/utils/io/ByteWriteChannel;J)V
    .registers 7

    const-string v0, "channel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "matchString"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "writeChannel"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lio/ktor/utils/io/ByteChannelScanner;->channel:Lio/ktor/utils/io/ByteReadChannel;

    .line 24
    iput-object p2, p0, Lio/ktor/utils/io/ByteChannelScanner;->matchString:Lkotlinx/io/bytestring/ByteString;

    .line 25
    iput-object p3, p0, Lio/ktor/utils/io/ByteChannelScanner;->writeChannel:Lio/ktor/utils/io/ByteWriteChannel;

    .line 26
    iput-wide p4, p0, Lio/ktor/utils/io/ByteChannelScanner;->limit:J

    .line 29
    invoke-virtual {p2}, Lkotlinx/io/bytestring/ByteString;->getSize()I

    move-result p2

    if-lez p2, :cond_34

    .line 34
    invoke-interface {p1}, Lio/ktor/utils/io/ByteReadChannel;->getReadBuffer()Lkotlinx/io/Source;

    move-result-object p1

    iput-object p1, p0, Lio/ktor/utils/io/ByteChannelScanner;->input:Lkotlinx/io/Source;

    .line 35
    invoke-virtual {p0}, Lio/ktor/utils/io/ByteChannelScanner;->buildPartialMatchTable()[I

    move-result-object p1

    iput-object p1, p0, Lio/ktor/utils/io/ByteChannelScanner;->partialMatchTable:[I

    .line 36
    new-instance p1, Lkotlinx/io/Buffer;

    invoke-direct {p1}, Lkotlinx/io/Buffer;-><init>()V

    iput-object p1, p0, Lio/ktor/utils/io/ByteChannelScanner;->partialMatchBuffer:Lkotlinx/io/Buffer;

    return-void

    .line 29
    :cond_34
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Empty match string not permitted for scanning"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final synthetic access$advanceToNextPotentialMatch(Lio/ktor/utils/io/ByteChannelScanner;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 2

    .line 21
    invoke-virtual {p0, p1}, Lio/ktor/utils/io/ByteChannelScanner;->advanceToNextPotentialMatch(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$checkFullMatch(Lio/ktor/utils/io/ByteChannelScanner;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 2

    .line 21
    invoke-virtual {p0, p1}, Lio/ktor/utils/io/ByteChannelScanner;->checkFullMatch(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final advanceToNextPotentialMatch(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 19
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

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    instance-of v2, v1, Lio/ktor/utils/io/ByteChannelScanner$advanceToNextPotentialMatch$1;

    if-eqz v2, :cond_17

    move-object v2, v1

    check-cast v2, Lio/ktor/utils/io/ByteChannelScanner$advanceToNextPotentialMatch$1;

    iget v3, v2, Lio/ktor/utils/io/ByteChannelScanner$advanceToNextPotentialMatch$1;->label:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_17

    sub-int/2addr v3, v4

    iput v3, v2, Lio/ktor/utils/io/ByteChannelScanner$advanceToNextPotentialMatch$1;->label:I

    goto :goto_1c

    :cond_17
    new-instance v2, Lio/ktor/utils/io/ByteChannelScanner$advanceToNextPotentialMatch$1;

    invoke-direct {v2, v0, v1}, Lio/ktor/utils/io/ByteChannelScanner$advanceToNextPotentialMatch$1;-><init>(Lio/ktor/utils/io/ByteChannelScanner;Lkotlin/coroutines/Continuation;)V

    :goto_1c
    iget-object v1, v2, Lio/ktor/utils/io/ByteChannelScanner$advanceToNextPotentialMatch$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 98
    iget v4, v2, Lio/ktor/utils/io/ByteChannelScanner$advanceToNextPotentialMatch$1;->label:I

    const/4 v5, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eqz v4, :cond_41

    if-eq v4, v8, :cond_3d

    if-eq v4, v7, :cond_41

    if-ne v4, v6, :cond_35

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_d3

    :cond_35
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3d
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_58

    :cond_41
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 99
    :cond_44
    iget-object v1, v0, Lio/ktor/utils/io/ByteChannelScanner;->input:Lkotlinx/io/Source;

    invoke-interface {v1}, Lkotlinx/io/Source;->exhausted()Z

    move-result v1

    if-eqz v1, :cond_64

    iget-object v1, v0, Lio/ktor/utils/io/ByteChannelScanner;->channel:Lio/ktor/utils/io/ByteReadChannel;

    iput v8, v2, Lio/ktor/utils/io/ByteChannelScanner$advanceToNextPotentialMatch$1;->label:I

    const/4 v4, 0x0

    invoke-static {v1, v5, v2, v8, v4}, Lio/ktor/utils/io/ByteReadChannel;->awaitContent$default(Lio/ktor/utils/io/ByteReadChannel;ILkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_58

    return-object v3

    :cond_58
    :goto_58
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_61

    goto :goto_64

    .line 115
    :cond_61
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 100
    :cond_64
    :goto_64
    iget-object v9, v0, Lio/ktor/utils/io/ByteChannelScanner;->input:Lkotlinx/io/Source;

    iget-object v1, v0, Lio/ktor/utils/io/ByteChannelScanner;->matchString:Lkotlinx/io/bytestring/ByteString;

    invoke-virtual {v1, v5}, Lkotlinx/io/bytestring/ByteString;->get(I)B

    move-result v10

    const/4 v15, 0x6

    const/16 v16, 0x0

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    invoke-static/range {v9 .. v16}, Lkotlinx/io/SourcesKt;->indexOf$default(Lkotlinx/io/Source;BJJILjava/lang/Object;)J

    move-result-wide v9

    const-wide/16 v11, -0x1

    cmp-long v1, v9, v11

    .line 102
    const-string v4, "null cannot be cast to non-null type kotlinx.io.Buffer"

    if-nez v1, :cond_ad

    .line 103
    iget-object v1, v0, Lio/ktor/utils/io/ByteChannelScanner;->input:Lkotlinx/io/Source;

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lkotlinx/io/Buffer;

    invoke-virtual {v1}, Lkotlinx/io/Buffer;->getSize()J

    move-result-wide v11

    invoke-virtual {v0, v11, v12}, Lio/ktor/utils/io/ByteChannelScanner;->checkBounds(J)V

    .line 104
    iget-wide v11, v0, Lio/ktor/utils/io/ByteChannelScanner;->bytesRead:J

    iget-object v1, v0, Lio/ktor/utils/io/ByteChannelScanner;->input:Lkotlinx/io/Source;

    check-cast v1, Lkotlinx/io/Buffer;

    iget-object v4, v0, Lio/ktor/utils/io/ByteChannelScanner;->writeChannel:Lio/ktor/utils/io/ByteWriteChannel;

    invoke-interface {v4}, Lio/ktor/utils/io/ByteWriteChannel;->getWriteBuffer()Lkotlinx/io/Sink;

    move-result-object v4

    invoke-virtual {v1, v4}, Lkotlinx/io/Buffer;->transferTo(Lkotlinx/io/RawSink;)J

    move-result-wide v13

    add-long/2addr v11, v13

    iput-wide v11, v0, Lio/ktor/utils/io/ByteChannelScanner;->bytesRead:J

    .line 105
    iget-object v1, v0, Lio/ktor/utils/io/ByteChannelScanner;->writeChannel:Lio/ktor/utils/io/ByteWriteChannel;

    iput-wide v9, v2, Lio/ktor/utils/io/ByteChannelScanner$advanceToNextPotentialMatch$1;->J$0:J

    iput v7, v2, Lio/ktor/utils/io/ByteChannelScanner$advanceToNextPotentialMatch$1;->label:I

    invoke-static {v1, v2}, Lio/ktor/utils/io/ByteWriteChannelKt;->flushIfNeeded(Lio/ktor/utils/io/ByteWriteChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_44

    return-object v3

    .line 108
    :cond_ad
    invoke-virtual {v0, v9, v10}, Lio/ktor/utils/io/ByteChannelScanner;->checkBounds(J)V

    .line 109
    iget-wide v7, v0, Lio/ktor/utils/io/ByteChannelScanner;->bytesRead:J

    iget-object v1, v0, Lio/ktor/utils/io/ByteChannelScanner;->input:Lkotlinx/io/Source;

    iget-object v5, v0, Lio/ktor/utils/io/ByteChannelScanner;->writeChannel:Lio/ktor/utils/io/ByteWriteChannel;

    invoke-interface {v5}, Lio/ktor/utils/io/ByteWriteChannel;->getWriteBuffer()Lkotlinx/io/Sink;

    move-result-object v5

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Lkotlinx/io/Buffer;

    invoke-interface {v1, v5, v9, v10}, Lkotlinx/io/RawSource;->readAtMostTo(Lkotlinx/io/Buffer;J)J

    move-result-wide v4

    add-long/2addr v7, v4

    iput-wide v7, v0, Lio/ktor/utils/io/ByteChannelScanner;->bytesRead:J

    .line 110
    iget-object v0, v0, Lio/ktor/utils/io/ByteChannelScanner;->writeChannel:Lio/ktor/utils/io/ByteWriteChannel;

    iput-wide v9, v2, Lio/ktor/utils/io/ByteChannelScanner$advanceToNextPotentialMatch$1;->J$0:J

    iput v6, v2, Lio/ktor/utils/io/ByteChannelScanner$advanceToNextPotentialMatch$1;->label:I

    invoke-static {v0, v2}, Lio/ktor/utils/io/ByteWriteChannelKt;->flushIfNeeded(Lio/ktor/utils/io/ByteWriteChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_d3

    return-object v3

    .line 111
    :cond_d3
    :goto_d3
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final buildPartialMatchTable()[I
    .registers 7

    .line 79
    iget-object v0, p0, Lio/ktor/utils/io/ByteChannelScanner;->matchString:Lkotlinx/io/bytestring/ByteString;

    invoke-virtual {v0}, Lkotlinx/io/bytestring/ByteString;->getSize()I

    move-result v0

    new-array v0, v0, [I

    .line 82
    iget-object v1, p0, Lio/ktor/utils/io/ByteChannelScanner;->matchString:Lkotlinx/io/bytestring/ByteString;

    invoke-virtual {v1}, Lkotlinx/io/bytestring/ByteString;->getSize()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    :goto_10
    if-ge v3, v1, :cond_3c

    :goto_12
    if-lez v2, :cond_27

    .line 83
    iget-object v4, p0, Lio/ktor/utils/io/ByteChannelScanner;->matchString:Lkotlinx/io/bytestring/ByteString;

    invoke-virtual {v4, v3}, Lkotlinx/io/bytestring/ByteString;->get(I)B

    move-result v4

    iget-object v5, p0, Lio/ktor/utils/io/ByteChannelScanner;->matchString:Lkotlinx/io/bytestring/ByteString;

    invoke-virtual {v5, v2}, Lkotlinx/io/bytestring/ByteString;->get(I)B

    move-result v5

    if-eq v4, v5, :cond_27

    add-int/lit8 v2, v2, -0x1

    .line 84
    aget v2, v0, v2

    goto :goto_12

    .line 86
    :cond_27
    iget-object v4, p0, Lio/ktor/utils/io/ByteChannelScanner;->matchString:Lkotlinx/io/bytestring/ByteString;

    invoke-virtual {v4, v3}, Lkotlinx/io/bytestring/ByteString;->get(I)B

    move-result v4

    iget-object v5, p0, Lio/ktor/utils/io/ByteChannelScanner;->matchString:Lkotlinx/io/bytestring/ByteString;

    invoke-virtual {v5, v2}, Lkotlinx/io/bytestring/ByteString;->get(I)B

    move-result v5

    if-ne v4, v5, :cond_37

    add-int/lit8 v2, v2, 0x1

    .line 89
    :cond_37
    aput v2, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    :cond_3c
    return-object v0
.end method

.method public final checkBounds(J)V
    .registers 5

    .line 161
    iget-wide v0, p0, Lio/ktor/utils/io/ByteChannelScanner;->bytesRead:J

    add-long/2addr v0, p1

    iget-wide p1, p0, Lio/ktor/utils/io/ByteChannelScanner;->limit:J

    cmp-long p1, v0, p1

    if-gtz p1, :cond_a

    return-void

    .line 162
    :cond_a
    new-instance p1, Ljava/io/IOException;

    .line 163
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Limit of "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lio/ktor/utils/io/ByteChannelScanner;->limit:J

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " bytes exceeded while searching for \""

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    iget-object v0, p0, Lio/ktor/utils/io/ByteChannelScanner;->matchString:Lkotlinx/io/bytestring/ByteString;

    invoke-virtual {p0, v0}, Lio/ktor/utils/io/ByteChannelScanner;->toSingleLineString(Lkotlinx/io/bytestring/ByteString;)Ljava/lang/String;

    move-result-object p0

    .line 163
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x22

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 162
    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final checkFullMatch(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lio/ktor/utils/io/ByteChannelScanner$checkFullMatch$1;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lio/ktor/utils/io/ByteChannelScanner$checkFullMatch$1;

    iget v1, v0, Lio/ktor/utils/io/ByteChannelScanner$checkFullMatch$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lio/ktor/utils/io/ByteChannelScanner$checkFullMatch$1;->label:I

    goto :goto_18

    :cond_13
    new-instance v0, Lio/ktor/utils/io/ByteChannelScanner$checkFullMatch$1;

    invoke-direct {v0, p0, p1}, Lio/ktor/utils/io/ByteChannelScanner$checkFullMatch$1;-><init>(Lio/ktor/utils/io/ByteChannelScanner;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p1, v0, Lio/ktor/utils/io/ByteChannelScanner$checkFullMatch$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 123
    iget v2, v0, Lio/ktor/utils/io/ByteChannelScanner$checkFullMatch$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_3a

    if-eq v2, v5, :cond_36

    if-ne v2, v3, :cond_2e

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_c7

    :cond_2e
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_36
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_51

    :cond_3a
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 124
    :goto_3d
    iget-object p1, p0, Lio/ktor/utils/io/ByteChannelScanner;->input:Lkotlinx/io/Source;

    invoke-interface {p1}, Lkotlinx/io/Source;->exhausted()Z

    move-result p1

    if-eqz p1, :cond_5f

    iget-object p1, p0, Lio/ktor/utils/io/ByteChannelScanner;->channel:Lio/ktor/utils/io/ByteReadChannel;

    iput v5, v0, Lio/ktor/utils/io/ByteChannelScanner$checkFullMatch$1;->label:I

    const/4 v2, 0x0

    invoke-static {p1, v4, v0, v5, v2}, Lio/ktor/utils/io/ByteReadChannel;->awaitContent$default(Lio/ktor/utils/io/ByteReadChannel;ILkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_51

    return-object v1

    :cond_51
    :goto_51
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_5a

    goto :goto_5f

    .line 154
    :cond_5a
    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 125
    :cond_5f
    :goto_5f
    iget-object p1, p0, Lio/ktor/utils/io/ByteChannelScanner;->input:Lkotlinx/io/Source;

    invoke-interface {p1}, Lkotlinx/io/Source;->readByte()B

    move-result p1

    .line 127
    iget v2, p0, Lio/ktor/utils/io/ByteChannelScanner;->matchIndex:I

    if-lez v2, :cond_d3

    iget-object v6, p0, Lio/ktor/utils/io/ByteChannelScanner;->matchString:Lkotlinx/io/bytestring/ByteString;

    invoke-virtual {v6, v2}, Lkotlinx/io/bytestring/ByteString;->get(I)B

    move-result v2

    if-eq p1, v2, :cond_d3

    .line 129
    iget v2, p0, Lio/ktor/utils/io/ByteChannelScanner;->matchIndex:I

    .line 130
    :goto_73
    iget v6, p0, Lio/ktor/utils/io/ByteChannelScanner;->matchIndex:I

    if-lez v6, :cond_89

    iget-object v7, p0, Lio/ktor/utils/io/ByteChannelScanner;->matchString:Lkotlinx/io/bytestring/ByteString;

    invoke-virtual {v7, v6}, Lkotlinx/io/bytestring/ByteString;->get(I)B

    move-result v6

    if-eq p1, v6, :cond_89

    .line 131
    iget-object v6, p0, Lio/ktor/utils/io/ByteChannelScanner;->partialMatchTable:[I

    iget v7, p0, Lio/ktor/utils/io/ByteChannelScanner;->matchIndex:I

    sub-int/2addr v7, v5

    aget v6, v6, v7

    iput v6, p0, Lio/ktor/utils/io/ByteChannelScanner;->matchIndex:I

    goto :goto_73

    .line 134
    :cond_89
    iget v6, p0, Lio/ktor/utils/io/ByteChannelScanner;->matchIndex:I

    sub-int v6, v2, v6

    int-to-long v6, v6

    .line 135
    invoke-virtual {p0, v6, v7}, Lio/ktor/utils/io/ByteChannelScanner;->checkBounds(J)V

    .line 136
    iget-wide v8, p0, Lio/ktor/utils/io/ByteChannelScanner;->bytesRead:J

    iget-object v10, p0, Lio/ktor/utils/io/ByteChannelScanner;->partialMatchBuffer:Lkotlinx/io/Buffer;

    .line 137
    iget-object v11, p0, Lio/ktor/utils/io/ByteChannelScanner;->writeChannel:Lio/ktor/utils/io/ByteWriteChannel;

    invoke-interface {v11}, Lio/ktor/utils/io/ByteWriteChannel;->getWriteBuffer()Lkotlinx/io/Sink;

    move-result-object v11

    const-string v12, "null cannot be cast to non-null type kotlinx.io.Buffer"

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v11, Lkotlinx/io/Buffer;

    .line 136
    invoke-virtual {v10, v11, v6, v7}, Lkotlinx/io/Buffer;->readAtMostTo(Lkotlinx/io/Buffer;J)J

    move-result-wide v10

    add-long/2addr v8, v10

    iput-wide v8, p0, Lio/ktor/utils/io/ByteChannelScanner;->bytesRead:J

    .line 141
    iget v8, p0, Lio/ktor/utils/io/ByteChannelScanner;->matchIndex:I

    if-nez v8, :cond_d3

    iget-object v9, p0, Lio/ktor/utils/io/ByteChannelScanner;->matchString:Lkotlinx/io/bytestring/ByteString;

    invoke-virtual {v9, v8}, Lkotlinx/io/bytestring/ByteString;->get(I)B

    move-result v8

    if-eq p1, v8, :cond_d3

    .line 142
    iget-object v5, p0, Lio/ktor/utils/io/ByteChannelScanner;->writeChannel:Lio/ktor/utils/io/ByteWriteChannel;

    int-to-byte v8, p1

    iput-byte p1, v0, Lio/ktor/utils/io/ByteChannelScanner$checkFullMatch$1;->B$0:B

    iput v2, v0, Lio/ktor/utils/io/ByteChannelScanner$checkFullMatch$1;->I$0:I

    iput-wide v6, v0, Lio/ktor/utils/io/ByteChannelScanner$checkFullMatch$1;->J$0:J

    iput v3, v0, Lio/ktor/utils/io/ByteChannelScanner$checkFullMatch$1;->label:I

    invoke-static {v5, v8, v0}, Lio/ktor/utils/io/ByteWriteChannelOperationsKt;->writeByte(Lio/ktor/utils/io/ByteWriteChannel;BLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_c7

    return-object v1

    .line 143
    :cond_c7
    :goto_c7
    iget-wide v0, p0, Lio/ktor/utils/io/ByteChannelScanner;->bytesRead:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lio/ktor/utils/io/ByteChannelScanner;->bytesRead:J

    .line 144
    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 149
    :cond_d3
    iget v2, p0, Lio/ktor/utils/io/ByteChannelScanner;->matchIndex:I

    add-int/2addr v2, v5

    iput v2, p0, Lio/ktor/utils/io/ByteChannelScanner;->matchIndex:I

    iget-object v6, p0, Lio/ktor/utils/io/ByteChannelScanner;->matchString:Lkotlinx/io/bytestring/ByteString;

    invoke-virtual {v6}, Lkotlinx/io/bytestring/ByteString;->getSize()I

    move-result v6

    if-ne v2, v6, :cond_e5

    .line 150
    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 152
    :cond_e5
    iget-object v2, p0, Lio/ktor/utils/io/ByteChannelScanner;->partialMatchBuffer:Lkotlinx/io/Buffer;

    int-to-byte p1, p1

    invoke-virtual {v2, p1}, Lkotlinx/io/Buffer;->writeByte(B)V

    goto/16 :goto_3d
.end method

.method public final findNext$ktor_io(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lio/ktor/utils/io/ByteChannelScanner$findNext$1;

    if-eqz v0, :cond_13

    move-object v0, p2

    check-cast v0, Lio/ktor/utils/io/ByteChannelScanner$findNext$1;

    iget v1, v0, Lio/ktor/utils/io/ByteChannelScanner$findNext$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lio/ktor/utils/io/ByteChannelScanner$findNext$1;->label:I

    goto :goto_18

    :cond_13
    new-instance v0, Lio/ktor/utils/io/ByteChannelScanner$findNext$1;

    invoke-direct {v0, p0, p2}, Lio/ktor/utils/io/ByteChannelScanner$findNext$1;-><init>(Lio/ktor/utils/io/ByteChannelScanner;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p2, v0, Lio/ktor/utils/io/ByteChannelScanner$findNext$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 50
    iget v2, v0, Lio/ktor/utils/io/ByteChannelScanner$findNext$1;->label:I

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v2, :cond_4e

    if-eq v2, v6, :cond_48

    if-eq v2, v5, :cond_41

    if-eq v2, v4, :cond_3a

    if-ne v2, v3, :cond_32

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_95

    :cond_32
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3a
    iget-boolean p1, v0, Lio/ktor/utils/io/ByteChannelScanner$findNext$1;->Z$0:Z

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_d4

    :cond_41
    iget-boolean p1, v0, Lio/ktor/utils/io/ByteChannelScanner$findNext$1;->Z$0:Z

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_c9

    :cond_48
    iget-boolean p1, v0, Lio/ktor/utils/io/ByteChannelScanner$findNext$1;->Z$0:Z

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_6c

    :cond_4e
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    const-wide/16 v7, 0x0

    .line 51
    iput-wide v7, p0, Lio/ktor/utils/io/ByteChannelScanner;->bytesRead:J

    .line 53
    :cond_55
    iget-object p2, p0, Lio/ktor/utils/io/ByteChannelScanner;->input:Lkotlinx/io/Source;

    invoke-interface {p2}, Lkotlinx/io/Source;->exhausted()Z

    move-result p2

    if-eqz p2, :cond_be

    iget-object p2, p0, Lio/ktor/utils/io/ByteChannelScanner;->channel:Lio/ktor/utils/io/ByteReadChannel;

    iput-boolean p1, v0, Lio/ktor/utils/io/ByteChannelScanner$findNext$1;->Z$0:Z

    iput v6, v0, Lio/ktor/utils/io/ByteChannelScanner$findNext$1;->label:I

    const/4 v2, 0x0

    const/4 v7, 0x0

    invoke-static {p2, v2, v0, v6, v7}, Lio/ktor/utils/io/ByteReadChannel;->awaitContent$default(Lio/ktor/utils/io/ByteReadChannel;ILkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_6c

    return-object v1

    :cond_6c
    :goto_6c
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_75

    goto :goto_be

    :cond_75
    if-eqz p1, :cond_9c

    .line 69
    iget-wide v4, p0, Lio/ktor/utils/io/ByteChannelScanner;->bytesRead:J

    iget-object p2, p0, Lio/ktor/utils/io/ByteChannelScanner;->partialMatchBuffer:Lkotlinx/io/Buffer;

    iget-object v2, p0, Lio/ktor/utils/io/ByteChannelScanner;->writeChannel:Lio/ktor/utils/io/ByteWriteChannel;

    invoke-interface {v2}, Lio/ktor/utils/io/ByteWriteChannel;->getWriteBuffer()Lkotlinx/io/Sink;

    move-result-object v2

    invoke-virtual {p2, v2}, Lkotlinx/io/Buffer;->transferTo(Lkotlinx/io/RawSink;)J

    move-result-wide v6

    add-long/2addr v4, v6

    iput-wide v4, p0, Lio/ktor/utils/io/ByteChannelScanner;->bytesRead:J

    .line 70
    iget-object p2, p0, Lio/ktor/utils/io/ByteChannelScanner;->writeChannel:Lio/ktor/utils/io/ByteWriteChannel;

    iput-boolean p1, v0, Lio/ktor/utils/io/ByteChannelScanner$findNext$1;->Z$0:Z

    iput v3, v0, Lio/ktor/utils/io/ByteChannelScanner$findNext$1;->label:I

    invoke-interface {p2, v0}, Lio/ktor/utils/io/ByteWriteChannel;->flush(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_95

    return-object v1

    .line 71
    :cond_95
    :goto_95
    iget-wide p0, p0, Lio/ktor/utils/io/ByteChannelScanner;->bytesRead:J

    invoke-static {p0, p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 65
    :cond_9c
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Expected \""

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lio/ktor/utils/io/ByteChannelScanner;->matchString:Lkotlinx/io/bytestring/ByteString;

    invoke-virtual {p0, v0}, Lio/ktor/utils/io/ByteChannelScanner;->toSingleLineString(Lkotlinx/io/bytestring/ByteString;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\" but encountered end of input"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 55
    :cond_be
    :goto_be
    iput-boolean p1, v0, Lio/ktor/utils/io/ByteChannelScanner$findNext$1;->Z$0:Z

    iput v5, v0, Lio/ktor/utils/io/ByteChannelScanner$findNext$1;->label:I

    invoke-virtual {p0, v0}, Lio/ktor/utils/io/ByteChannelScanner;->advanceToNextPotentialMatch(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_c9

    return-object v1

    .line 58
    :cond_c9
    :goto_c9
    iput-boolean p1, v0, Lio/ktor/utils/io/ByteChannelScanner$findNext$1;->Z$0:Z

    iput v4, v0, Lio/ktor/utils/io/ByteChannelScanner$findNext$1;->label:I

    invoke-virtual {p0, v0}, Lio/ktor/utils/io/ByteChannelScanner;->checkFullMatch(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_d4

    return-object v1

    :cond_d4
    :goto_d4
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_55

    .line 59
    iget-wide p0, p0, Lio/ktor/utils/io/ByteChannelScanner;->bytesRead:J

    invoke-static {p0, p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public final toSingleLineString(Lkotlinx/io/bytestring/ByteString;)Ljava/lang/String;
    .registers 8

    .line 173
    invoke-static {p1}, Lkotlinx/io/bytestring/ByteStringKt;->decodeToString(Lkotlinx/io/bytestring/ByteString;)Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "\n"

    const-string v2, "\\n"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

###### Class io.ktor.utils.io.ByteChannelScanner.AnonymousClass1 (io.ktor.utils.io.ByteChannelScanner$advanceToNextPotentialMatch$1)
.class public final Lio/ktor/utils/io/ByteChannelScanner$advanceToNextPotentialMatch$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "ByteChannelScanner.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/utils/io/ByteChannelScanner;->advanceToNextPotentialMatch(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "io.ktor.utils.io.ByteChannelScanner"
    f = "ByteChannelScanner.kt"
    l = {
        0x63,
        0x69,
        0x6e
    }
    m = "advanceToNextPotentialMatch"
    v = 0x1
.end annotation


# instance fields
.field public J$0:J

.field public label:I

.field public synthetic result:Ljava/lang/Object;

.field public final synthetic this$0:Lio/ktor/utils/io/ByteChannelScanner;


# direct methods
.method public constructor <init>(Lio/ktor/utils/io/ByteChannelScanner;Lkotlin/coroutines/Continuation;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/ByteChannelScanner;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ktor/utils/io/ByteChannelScanner$advanceToNextPotentialMatch$1;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lio/ktor/utils/io/ByteChannelScanner$advanceToNextPotentialMatch$1;->this$0:Lio/ktor/utils/io/ByteChannelScanner;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    iput-object p1, p0, Lio/ktor/utils/io/ByteChannelScanner$advanceToNextPotentialMatch$1;->result:Ljava/lang/Object;

    iget p1, p0, Lio/ktor/utils/io/ByteChannelScanner$advanceToNextPotentialMatch$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lio/ktor/utils/io/ByteChannelScanner$advanceToNextPotentialMatch$1;->label:I

    iget-object p1, p0, Lio/ktor/utils/io/ByteChannelScanner$advanceToNextPotentialMatch$1;->this$0:Lio/ktor/utils/io/ByteChannelScanner;

    invoke-static {p1, p0}, Lio/ktor/utils/io/ByteChannelScanner;->access$advanceToNextPotentialMatch(Lio/ktor/utils/io/ByteChannelScanner;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

###### Class io.ktor.utils.io.ByteChannelScanner.C00681 (io.ktor.utils.io.ByteChannelScanner$checkFullMatch$1)
.class public final Lio/ktor/utils/io/ByteChannelScanner$checkFullMatch$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "ByteChannelScanner.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/utils/io/ByteChannelScanner;->checkFullMatch(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "io.ktor.utils.io.ByteChannelScanner"
    f = "ByteChannelScanner.kt"
    l = {
        0x7c,
        0x8e
    }
    m = "checkFullMatch"
    v = 0x1
.end annotation


# instance fields
.field public B$0:B

.field public I$0:I

.field public J$0:J

.field public label:I

.field public synthetic result:Ljava/lang/Object;

.field public final synthetic this$0:Lio/ktor/utils/io/ByteChannelScanner;


# direct methods
.method public constructor <init>(Lio/ktor/utils/io/ByteChannelScanner;Lkotlin/coroutines/Continuation;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/ByteChannelScanner;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ktor/utils/io/ByteChannelScanner$checkFullMatch$1;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lio/ktor/utils/io/ByteChannelScanner$checkFullMatch$1;->this$0:Lio/ktor/utils/io/ByteChannelScanner;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    iput-object p1, p0, Lio/ktor/utils/io/ByteChannelScanner$checkFullMatch$1;->result:Ljava/lang/Object;

    iget p1, p0, Lio/ktor/utils/io/ByteChannelScanner$checkFullMatch$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lio/ktor/utils/io/ByteChannelScanner$checkFullMatch$1;->label:I

    iget-object p1, p0, Lio/ktor/utils/io/ByteChannelScanner$checkFullMatch$1;->this$0:Lio/ktor/utils/io/ByteChannelScanner;

    invoke-static {p1, p0}, Lio/ktor/utils/io/ByteChannelScanner;->access$checkFullMatch(Lio/ktor/utils/io/ByteChannelScanner;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
