###### Class io.ktor.websocket.Serializer (io.ktor.websocket.Serializer)
.class public final Lio/ktor/websocket/Serializer;
.super Ljava/lang/Object;
.source "Serializer.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSerializer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Serializer.kt\nio/ktor/websocket/Serializer\n+ 2 Utils.kt\nio/ktor/websocket/UtilsKt__UtilsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,127:1\n14#2:128\n14#2:129\n14#2:130\n14#2:131\n14#2:132\n1#3:133\n*S KotlinDebug\n*F\n+ 1 Serializer.kt\nio/ktor/websocket/Serializer\n*L\n75#1:128\n76#1:129\n77#1:130\n78#1:131\n82#1:132\n*E\n"
.end annotation


# instance fields
.field public frameBody:Ljava/nio/ByteBuffer;

.field public lastDataFrameType:Lio/ktor/websocket/FrameType;

.field public maskBuffer:Ljava/nio/ByteBuffer;

.field public masking:Z

.field public final messages:Ljava/util/concurrent/ArrayBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ArrayBlockingQueue<",
            "Lio/ktor/websocket/Frame;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lio/ktor/websocket/Serializer;->messages:Ljava/util/concurrent/ArrayBlockingQueue;

    return-void
.end method


# virtual methods
.method public final enqueue(Lio/ktor/websocket/Frame;)V
    .registers 3

    const-string v0, "f"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    iget-object p0, p0, Lio/ktor/websocket/Serializer;->messages:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ArrayBlockingQueue;->put(Ljava/lang/Object;)V

    return-void
.end method

.method public final estimateFrameHeaderSize(Lio/ktor/websocket/Frame;Z)I
    .registers 4

    .line 93
    invoke-virtual {p1}, Lio/ktor/websocket/Frame;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result p1

    const/16 v0, 0x7e

    if-ge p1, v0, :cond_e

    const/4 p1, 0x2

    goto :goto_16

    :cond_e
    const/16 v0, 0x7fff

    if-gt p1, v0, :cond_14

    const/4 p1, 0x4

    goto :goto_16

    :cond_14
    const/16 p1, 0xa

    .line 98
    :goto_16
    invoke-virtual {p0, p2}, Lio/ktor/websocket/Serializer;->maskSize(Z)I

    move-result p0

    add-int/2addr p1, p0

    return p1
.end method

.method public final getHasOutstandingBytes()Z
    .registers 2

    .line 22
    iget-object v0, p0, Lio/ktor/websocket/Serializer;->messages:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object p0, p0, Lio/ktor/websocket/Serializer;->frameBody:Ljava/nio/ByteBuffer;

    if-eqz p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p0, 0x1

    :goto_10
    return p0
.end method

.method public final getRemainingCapacity()I
    .registers 1

    .line 24
    iget-object p0, p0, Lio/ktor/websocket/Serializer;->messages:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {p0}, Ljava/util/concurrent/ArrayBlockingQueue;->remainingCapacity()I

    move-result p0

    return p0
.end method

.method public final maskSize(Z)I
    .registers 2

    .line 0
    if-eqz p1, :cond_4

    const/4 p0, 0x4

    goto :goto_5

    :cond_4
    const/4 p0, 0x0

    :goto_5
    return p0
.end method

.method public final maskedIfNeeded(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .registers 5

    .line 114
    iget-object p0, p0, Lio/ktor/websocket/Serializer;->maskBuffer:Ljava/nio/ByteBuffer;

    if-eqz p0, :cond_12

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v1}, Lio/ktor/util/NIOKt;->copy$default(Ljava/nio/ByteBuffer;IILjava/lang/Object;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0, p0}, Lio/ktor/websocket/UtilsKt;->xor(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V

    if-nez v0, :cond_11

    goto :goto_12

    :cond_11
    move-object p1, v0

    :cond_12
    :goto_12
    return-object p1
.end method

.method public final serialize(Ljava/nio/ByteBuffer;)V
    .registers 6

    const-string v0, "buffer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    :goto_5
    invoke-virtual {p0, p1}, Lio/ktor/websocket/Serializer;->writeCurrentPayload(Ljava/nio/ByteBuffer;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 32
    iget-object v0, p0, Lio/ktor/websocket/Serializer;->messages:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ArrayBlockingQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/ktor/websocket/Frame;

    if-nez v0, :cond_16

    goto :goto_39

    .line 33
    :cond_16
    iget-boolean v1, p0, Lio/ktor/websocket/Serializer;->masking:Z

    .line 34
    invoke-virtual {p0, v1}, Lio/ktor/websocket/Serializer;->setMaskBuffer(Z)V

    .line 36
    invoke-virtual {p0, v0, v1}, Lio/ktor/websocket/Serializer;->estimateFrameHeaderSize(Lio/ktor/websocket/Frame;Z)I

    move-result v2

    .line 37
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v3

    if-ge v3, v2, :cond_26

    goto :goto_39

    .line 41
    :cond_26
    invoke-virtual {p0, v0, p1, v1}, Lio/ktor/websocket/Serializer;->serializeHeader(Lio/ktor/websocket/Frame;Ljava/nio/ByteBuffer;Z)V

    .line 42
    iget-object v1, p0, Lio/ktor/websocket/Serializer;->messages:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v1}, Ljava/util/AbstractQueue;->remove()Ljava/lang/Object;

    .line 43
    invoke-virtual {v0}, Lio/ktor/websocket/Frame;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/ktor/websocket/Serializer;->maskedIfNeeded(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lio/ktor/websocket/Serializer;->frameBody:Ljava/nio/ByteBuffer;

    goto :goto_5

    :cond_39
    :goto_39
    return-void
.end method

.method public final serializeHeader(Lio/ktor/websocket/Frame;Ljava/nio/ByteBuffer;Z)V
    .registers 13

    .line 48
    invoke-virtual {p1}, Lio/ktor/websocket/Frame;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    const/16 v1, 0x7f

    const/16 v2, 0x7e

    if-ge v0, v2, :cond_f

    goto :goto_17

    :cond_f
    const v3, 0xffff

    if-gt v0, v3, :cond_16

    move v0, v2

    goto :goto_17

    :cond_16
    move v0, v1

    .line 55
    :goto_17
    iget-object v3, p0, Lio/ktor/websocket/Serializer;->lastDataFrameType:Lio/ktor/websocket/FrameType;

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-nez v3, :cond_32

    .line 57
    invoke-virtual {p1}, Lio/ktor/websocket/Frame;->getFin()Z

    move-result v3

    if-nez v3, :cond_29

    .line 58
    invoke-virtual {p1}, Lio/ktor/websocket/Frame;->getFrameType()Lio/ktor/websocket/FrameType;

    move-result-object v3

    iput-object v3, p0, Lio/ktor/websocket/Serializer;->lastDataFrameType:Lio/ktor/websocket/FrameType;

    .line 60
    :cond_29
    invoke-virtual {p1}, Lio/ktor/websocket/Frame;->getFrameType()Lio/ktor/websocket/FrameType;

    move-result-object v3

    invoke-virtual {v3}, Lio/ktor/websocket/FrameType;->getOpcode()I

    move-result v3

    goto :goto_54

    .line 62
    :cond_32
    invoke-virtual {p1}, Lio/ktor/websocket/Frame;->getFrameType()Lio/ktor/websocket/FrameType;

    move-result-object v6

    if-ne v3, v6, :cond_42

    .line 63
    invoke-virtual {p1}, Lio/ktor/websocket/Frame;->getFin()Z

    move-result v3

    if-eqz v3, :cond_40

    .line 64
    iput-object v4, p0, Lio/ktor/websocket/Serializer;->lastDataFrameType:Lio/ktor/websocket/FrameType;

    :cond_40
    move v3, v5

    goto :goto_54

    .line 69
    :cond_42
    invoke-virtual {p1}, Lio/ktor/websocket/Frame;->getFrameType()Lio/ktor/websocket/FrameType;

    move-result-object v3

    invoke-virtual {v3}, Lio/ktor/websocket/FrameType;->getControlFrame()Z

    move-result v3

    if-eqz v3, :cond_bc

    .line 72
    invoke-virtual {p1}, Lio/ktor/websocket/Frame;->getFrameType()Lio/ktor/websocket/FrameType;

    move-result-object v3

    invoke-virtual {v3}, Lio/ktor/websocket/FrameType;->getOpcode()I

    move-result v3

    .line 75
    :goto_54
    invoke-virtual {p1}, Lio/ktor/websocket/Frame;->getFin()Z

    move-result v6

    const/16 v7, 0x80

    if-eqz v6, :cond_5e

    move v6, v7

    goto :goto_5f

    :cond_5e
    move v6, v5

    .line 76
    :goto_5f
    invoke-virtual {p1}, Lio/ktor/websocket/Frame;->getRsv1()Z

    move-result v8

    if-eqz v8, :cond_68

    const/16 v8, 0x40

    goto :goto_69

    :cond_68
    move v8, v5

    :goto_69
    or-int/2addr v6, v8

    .line 77
    invoke-virtual {p1}, Lio/ktor/websocket/Frame;->getRsv2()Z

    move-result v8

    if-eqz v8, :cond_73

    const/16 v8, 0x20

    goto :goto_74

    :cond_73
    move v8, v5

    :goto_74
    or-int/2addr v6, v8

    .line 78
    invoke-virtual {p1}, Lio/ktor/websocket/Frame;->getRsv3()Z

    move-result v8

    if-eqz v8, :cond_7e

    const/16 v8, 0x10

    goto :goto_7f

    :cond_7e
    move v8, v5

    :goto_7f
    or-int/2addr v6, v8

    or-int/2addr v3, v6

    int-to-byte v3, v3

    .line 81
    invoke-virtual {p2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    if-eqz p3, :cond_88

    goto :goto_89

    :cond_88
    move v7, v5

    :goto_89
    or-int p3, v7, v0

    int-to-byte p3, p3

    .line 82
    invoke-virtual {p2, p3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    if-eq v0, v2, :cond_a1

    if-eq v0, v1, :cond_94

    goto :goto_ad

    .line 86
    :cond_94
    invoke-virtual {p1}, Lio/ktor/websocket/Frame;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result p1

    int-to-long v0, p1

    invoke-virtual {p2, v0, v1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    goto :goto_ad

    .line 85
    :cond_a1
    invoke-virtual {p1}, Lio/ktor/websocket/Frame;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result p1

    int-to-short p1, p1

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 89
    :goto_ad
    iget-object p0, p0, Lio/ktor/websocket/Serializer;->maskBuffer:Ljava/nio/ByteBuffer;

    if-eqz p0, :cond_bb

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object p0

    if-eqz p0, :cond_bb

    const/4 p1, 0x2

    invoke-static {p0, p2, v5, p1, v4}, Lio/ktor/util/NIOKt;->moveTo$default(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;IILjava/lang/Object;)I

    :cond_bb
    return-void

    .line 70
    :cond_bc
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Can\'t continue with different data frame opcode"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final setMaskBuffer(Z)V
    .registers 3

    if-eqz p1, :cond_14

    const/4 p1, 0x4

    .line 118
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 119
    sget-object v0, Lkotlin/random/Random;->Default:Lkotlin/random/Random$Default;

    invoke-virtual {v0}, Lkotlin/random/Random$Default;->nextInt()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 120
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    goto :goto_15

    :cond_14
    const/4 p1, 0x0

    .line 117
    :goto_15
    iput-object p1, p0, Lio/ktor/websocket/Serializer;->maskBuffer:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public final setMasking(Z)V
    .registers 2

    .line 19
    iput-boolean p1, p0, Lio/ktor/websocket/Serializer;->masking:Z

    return-void
.end method

.method public final writeCurrentPayload(Ljava/nio/ByteBuffer;)Z
    .registers 7

    .line 102
    iget-object v0, p0, Lio/ktor/websocket/Serializer;->frameBody:Ljava/nio/ByteBuffer;

    const/4 v1, 0x1

    if-nez v0, :cond_6

    return v1

    :cond_6
    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 103
    invoke-static {v0, p1, v3, v2, v4}, Lio/ktor/util/NIOKt;->moveTo$default(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;IILjava/lang/Object;)I

    .line 104
    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result p1

    if-nez p1, :cond_15

    .line 105
    iput-object v4, p0, Lio/ktor/websocket/Serializer;->frameBody:Ljava/nio/ByteBuffer;

    return v1

    :cond_15
    return v3
.end method
