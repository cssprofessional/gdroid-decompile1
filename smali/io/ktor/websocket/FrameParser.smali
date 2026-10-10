###### Class io.ktor.websocket.FrameParser (io.ktor.websocket.FrameParser)
.class public final Lio/ktor/websocket/FrameParser;
.super Ljava/lang/Object;
.source "FrameParser.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/ktor/websocket/FrameParser$State;,
        Lio/ktor/websocket/FrameParser$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFrameParser.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FrameParser.kt\nio/ktor/websocket/FrameParser\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,155:1\n1#2:156\n*E\n"
.end annotation


# instance fields
.field public fin:Z

.field public lastOpcode:I

.field public length:J

.field public lengthLength:I

.field public mask:Z

.field public maskKey:Ljava/lang/Integer;

.field public opcode:I

.field public rsv1:Z

.field public rsv2:Z

.field public rsv3:Z

.field public final state:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/ktor/websocket/FrameParser$State;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/ktor/websocket/FrameParser$State;->HEADER0:Lio/ktor/websocket/FrameParser$State;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/ktor/websocket/FrameParser;->state:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method public final bodyComplete()V
    .registers 4

    .line 54
    iget-object v0, p0, Lio/ktor/websocket/FrameParser;->state:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/ktor/websocket/FrameParser$State;->BODY:Lio/ktor/websocket/FrameParser$State;

    sget-object v2, Lio/ktor/websocket/FrameParser$State;->HEADER0:Lio/ktor/websocket/FrameParser$State;

    invoke-static {v0, v1, v2}, Lin/dragonbra/javasteam/networking/steam3/UdpConnection$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    const/4 v0, 0x0

    .line 59
    iput v0, p0, Lio/ktor/websocket/FrameParser;->opcode:I

    const-wide/16 v1, 0x0

    .line 60
    iput-wide v1, p0, Lio/ktor/websocket/FrameParser;->length:J

    .line 61
    iput v0, p0, Lio/ktor/websocket/FrameParser;->lengthLength:I

    const/4 v0, 0x0

    .line 62
    iput-object v0, p0, Lio/ktor/websocket/FrameParser;->maskKey:Ljava/lang/Integer;

    return-void

    .line 55
    :cond_19
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "It should be state BODY but it is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lio/ktor/websocket/FrameParser;->state:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final frame(Ljava/nio/ByteBuffer;)V
    .registers 4

    const-string v0, "bb"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 68
    :cond_11
    invoke-virtual {p0, p1}, Lio/ktor/websocket/FrameParser;->handleStep(Ljava/nio/ByteBuffer;)Z

    move-result v0

    if-nez v0, :cond_11

    return-void

    .line 66
    :cond_18
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Buffer order should be BIG_ENDIAN but it is "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getBodyReady()Z
    .registers 2

    .line 51
    iget-object p0, p0, Lio/ktor/websocket/FrameParser;->state:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    sget-object v0, Lio/ktor/websocket/FrameParser$State;->BODY:Lio/ktor/websocket/FrameParser$State;

    if-ne p0, v0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public final getFin()Z
    .registers 1

    .line 13
    iget-boolean p0, p0, Lio/ktor/websocket/FrameParser;->fin:Z

    return p0
.end method

.method public final getFrameType()Lio/ktor/websocket/FrameType;
    .registers 4

    .line 40
    sget-object v0, Lio/ktor/websocket/FrameType;->Companion:Lio/ktor/websocket/FrameType$Companion;

    iget v1, p0, Lio/ktor/websocket/FrameParser;->opcode:I

    invoke-virtual {v0, v1}, Lio/ktor/websocket/FrameType$Companion;->get(I)Lio/ktor/websocket/FrameType;

    move-result-object v0

    if-eqz v0, :cond_b

    return-object v0

    .line 41
    :cond_b
    new-instance v0, Lio/ktor/websocket/ProtocolViolationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported opcode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lio/ktor/websocket/FrameParser;->opcode:I

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lio/ktor/websocket/ProtocolViolationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getLength()J
    .registers 3

    .line 33
    iget-wide v0, p0, Lio/ktor/websocket/FrameParser;->length:J

    return-wide v0
.end method

.method public final getMaskKey()Ljava/lang/Integer;
    .registers 1

    .line 36
    iget-object p0, p0, Lio/ktor/websocket/FrameParser;->maskKey:Ljava/lang/Integer;

    return-object p0
.end method

.method public final getRsv1()Z
    .registers 1

    .line 16
    iget-boolean p0, p0, Lio/ktor/websocket/FrameParser;->rsv1:Z

    return p0
.end method

.method public final getRsv2()Z
    .registers 1

    .line 19
    iget-boolean p0, p0, Lio/ktor/websocket/FrameParser;->rsv2:Z

    return p0
.end method

.method public final getRsv3()Z
    .registers 1

    .line 22
    iget-boolean p0, p0, Lio/ktor/websocket/FrameParser;->rsv3:Z

    return p0
.end method

.method public final handleStep(Ljava/nio/ByteBuffer;)Z
    .registers 4

    .line 72
    iget-object v0, p0, Lio/ktor/websocket/FrameParser;->state:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lio/ktor/websocket/FrameParser$State;

    sget-object v1, Lio/ktor/websocket/FrameParser$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_31

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2c

    const/4 v1, 0x3

    if-eq v0, v1, :cond_27

    const/4 p0, 0x4

    if-ne v0, p0, :cond_21

    const/4 p0, 0x0

    goto :goto_35

    :cond_21
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    .line 75
    :cond_27
    invoke-virtual {p0, p1}, Lio/ktor/websocket/FrameParser;->parseMaskKey(Ljava/nio/ByteBuffer;)Z

    move-result p0

    goto :goto_35

    .line 74
    :cond_2c
    invoke-virtual {p0, p1}, Lio/ktor/websocket/FrameParser;->parseLength(Ljava/nio/ByteBuffer;)Z

    move-result p0

    goto :goto_35

    .line 73
    :cond_31
    invoke-virtual {p0, p1}, Lio/ktor/websocket/FrameParser;->parseHeader1(Ljava/nio/ByteBuffer;)Z

    move-result p0

    :goto_35
    return p0
.end method

.method public final parseHeader1(Ljava/nio/ByteBuffer;)Z
    .registers 7

    .line 80
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_9

    return v1

    .line 84
    :cond_9
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    .line 85
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result p1

    and-int/lit16 v3, v0, 0x80

    const/4 v4, 0x1

    if-eqz v3, :cond_18

    move v3, v4

    goto :goto_19

    :cond_18
    move v3, v1

    .line 87
    :goto_19
    iput-boolean v3, p0, Lio/ktor/websocket/FrameParser;->fin:Z

    and-int/lit8 v3, v0, 0x40

    if-eqz v3, :cond_21

    move v3, v4

    goto :goto_22

    :cond_21
    move v3, v1

    .line 88
    :goto_22
    iput-boolean v3, p0, Lio/ktor/websocket/FrameParser;->rsv1:Z

    and-int/lit8 v3, v0, 0x20

    if-eqz v3, :cond_2a

    move v3, v4

    goto :goto_2b

    :cond_2a
    move v3, v1

    .line 89
    :goto_2b
    iput-boolean v3, p0, Lio/ktor/websocket/FrameParser;->rsv2:Z

    and-int/lit8 v3, v0, 0x10

    if-eqz v3, :cond_33

    move v3, v4

    goto :goto_34

    :cond_33
    move v3, v1

    .line 90
    :goto_34
    iput-boolean v3, p0, Lio/ktor/websocket/FrameParser;->rsv3:Z

    and-int/lit8 v0, v0, 0xf

    .line 92
    iput v0, p0, Lio/ktor/websocket/FrameParser;->opcode:I

    if-nez v0, :cond_49

    .line 93
    iget v3, p0, Lio/ktor/websocket/FrameParser;->lastOpcode:I

    if-eqz v3, :cond_41

    goto :goto_49

    .line 94
    :cond_41
    new-instance p0, Lio/ktor/websocket/ProtocolViolationException;

    const-string p1, "Can\'t continue finished frames"

    invoke-direct {p0, p1}, Lio/ktor/websocket/ProtocolViolationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_49
    :goto_49
    if-nez v0, :cond_50

    .line 96
    iget v0, p0, Lio/ktor/websocket/FrameParser;->lastOpcode:I

    iput v0, p0, Lio/ktor/websocket/FrameParser;->opcode:I

    goto :goto_67

    .line 97
    :cond_50
    iget v0, p0, Lio/ktor/websocket/FrameParser;->lastOpcode:I

    if-eqz v0, :cond_67

    invoke-virtual {p0}, Lio/ktor/websocket/FrameParser;->getFrameType()Lio/ktor/websocket/FrameType;

    move-result-object v0

    invoke-virtual {v0}, Lio/ktor/websocket/FrameType;->getControlFrame()Z

    move-result v0

    if-eqz v0, :cond_5f

    goto :goto_67

    .line 99
    :cond_5f
    new-instance p0, Lio/ktor/websocket/ProtocolViolationException;

    const-string p1, "Can\'t start new data frame before finishing previous one"

    invoke-direct {p0, p1}, Lio/ktor/websocket/ProtocolViolationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 101
    :cond_67
    :goto_67
    invoke-virtual {p0}, Lio/ktor/websocket/FrameParser;->getFrameType()Lio/ktor/websocket/FrameType;

    move-result-object v0

    invoke-virtual {v0}, Lio/ktor/websocket/FrameType;->getControlFrame()Z

    move-result v0

    if-nez v0, :cond_7c

    .line 102
    iget-boolean v0, p0, Lio/ktor/websocket/FrameParser;->fin:Z

    if-eqz v0, :cond_77

    move v0, v1

    goto :goto_79

    :cond_77
    iget v0, p0, Lio/ktor/websocket/FrameParser;->opcode:I

    :goto_79
    iput v0, p0, Lio/ktor/websocket/FrameParser;->lastOpcode:I

    goto :goto_80

    .line 103
    :cond_7c
    iget-boolean v0, p0, Lio/ktor/websocket/FrameParser;->fin:Z

    if-eqz v0, :cond_d6

    :goto_80
    and-int/lit16 v0, p1, 0x80

    if-eqz v0, :cond_86

    move v0, v4

    goto :goto_87

    :cond_86
    move v0, v1

    .line 106
    :goto_87
    iput-boolean v0, p0, Lio/ktor/websocket/FrameParser;->mask:Z

    const/16 v0, 0x7f

    and-int/2addr p1, v0

    .line 109
    invoke-virtual {p0}, Lio/ktor/websocket/FrameParser;->getFrameType()Lio/ktor/websocket/FrameType;

    move-result-object v3

    invoke-virtual {v3}, Lio/ktor/websocket/FrameType;->getControlFrame()Z

    move-result v3

    if-eqz v3, :cond_a3

    const/16 v3, 0x7d

    if-gt p1, v3, :cond_9b

    goto :goto_a3

    .line 110
    :cond_9b
    new-instance p0, Lio/ktor/websocket/ProtocolViolationException;

    const-string p1, "control frames can\'t be larger than 125 bytes"

    invoke-direct {p0, p1}, Lio/ktor/websocket/ProtocolViolationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a3
    :goto_a3
    const/16 v3, 0x7e

    if-eq p1, v3, :cond_ad

    if-eq p1, v0, :cond_aa

    goto :goto_ae

    :cond_aa
    const/16 v1, 0x8

    goto :goto_ae

    :cond_ad
    move v1, v2

    .line 113
    :goto_ae
    iput v1, p0, Lio/ktor/websocket/FrameParser;->lengthLength:I

    if-nez v1, :cond_b4

    int-to-long v2, p1

    goto :goto_b6

    :cond_b4
    const-wide/16 v2, 0x0

    .line 119
    :goto_b6
    iput-wide v2, p0, Lio/ktor/websocket/FrameParser;->length:J

    if-lez v1, :cond_c2

    .line 121
    iget-object p0, p0, Lio/ktor/websocket/FrameParser;->state:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object p1, Lio/ktor/websocket/FrameParser$State;->LENGTH:Lio/ktor/websocket/FrameParser$State;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    goto :goto_d5

    .line 122
    :cond_c2
    iget-boolean p1, p0, Lio/ktor/websocket/FrameParser;->mask:Z

    if-eqz p1, :cond_ce

    iget-object p0, p0, Lio/ktor/websocket/FrameParser;->state:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object p1, Lio/ktor/websocket/FrameParser$State;->MASK_KEY:Lio/ktor/websocket/FrameParser$State;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    goto :goto_d5

    .line 123
    :cond_ce
    iget-object p0, p0, Lio/ktor/websocket/FrameParser;->state:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object p1, Lio/ktor/websocket/FrameParser$State;->BODY:Lio/ktor/websocket/FrameParser$State;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :goto_d5
    return v4

    .line 104
    :cond_d6
    new-instance p0, Lio/ktor/websocket/ProtocolViolationException;

    const-string p1, "control frames can\'t be fragmented"

    invoke-direct {p0, p1}, Lio/ktor/websocket/ProtocolViolationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final parseLength(Ljava/nio/ByteBuffer;)Z
    .registers 6

    .line 130
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    iget v1, p0, Lio/ktor/websocket/FrameParser;->lengthLength:I

    if-ge v0, v1, :cond_a

    const/4 p0, 0x0

    return p0

    :cond_a
    const/4 v0, 0x2

    if-eq v1, v0, :cond_1c

    const/16 v0, 0x8

    if-ne v1, v0, :cond_16

    .line 136
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    goto :goto_25

    .line 137
    :cond_16
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    .line 135
    :cond_1c
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result p1

    int-to-long v0, p1

    const-wide/32 v2, 0xffff

    and-long/2addr v0, v2

    .line 134
    :goto_25
    iput-wide v0, p0, Lio/ktor/websocket/FrameParser;->length:J

    .line 140
    iget-boolean p1, p0, Lio/ktor/websocket/FrameParser;->mask:Z

    if-eqz p1, :cond_2e

    sget-object p1, Lio/ktor/websocket/FrameParser$State;->MASK_KEY:Lio/ktor/websocket/FrameParser$State;

    goto :goto_30

    :cond_2e
    sget-object p1, Lio/ktor/websocket/FrameParser$State;->BODY:Lio/ktor/websocket/FrameParser$State;

    .line 141
    :goto_30
    iget-object p0, p0, Lio/ktor/websocket/FrameParser;->state:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final parseMaskKey(Ljava/nio/ByteBuffer;)Z
    .registers 4

    .line 146
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_9

    const/4 p0, 0x0

    return p0

    .line 150
    :cond_9
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lio/ktor/websocket/FrameParser;->maskKey:Ljava/lang/Integer;

    .line 151
    iget-object p0, p0, Lio/ktor/websocket/FrameParser;->state:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object p1, Lio/ktor/websocket/FrameParser$State;->BODY:Lio/ktor/websocket/FrameParser$State;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0
.end method

###### Class io.ktor.websocket.FrameParser.State (io.ktor.websocket.FrameParser$State)
.class public final enum Lio/ktor/websocket/FrameParser$State;
.super Ljava/lang/Enum;
.source "FrameParser.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/websocket/FrameParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/ktor/websocket/FrameParser$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lio/ktor/websocket/FrameParser$State;

.field public static final enum BODY:Lio/ktor/websocket/FrameParser$State;

.field public static final enum HEADER0:Lio/ktor/websocket/FrameParser$State;

.field public static final enum LENGTH:Lio/ktor/websocket/FrameParser$State;

.field public static final enum MASK_KEY:Lio/ktor/websocket/FrameParser$State;


# direct methods
.method private static final synthetic $values()[Lio/ktor/websocket/FrameParser$State;
    .registers 4

    .line 0
    sget-object v0, Lio/ktor/websocket/FrameParser$State;->HEADER0:Lio/ktor/websocket/FrameParser$State;

    sget-object v1, Lio/ktor/websocket/FrameParser$State;->LENGTH:Lio/ktor/websocket/FrameParser$State;

    sget-object v2, Lio/ktor/websocket/FrameParser$State;->MASK_KEY:Lio/ktor/websocket/FrameParser$State;

    sget-object v3, Lio/ktor/websocket/FrameParser$State;->BODY:Lio/ktor/websocket/FrameParser$State;

    filled-new-array {v0, v1, v2, v3}, [Lio/ktor/websocket/FrameParser$State;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 44
    new-instance v0, Lio/ktor/websocket/FrameParser$State;

    const-string v1, "HEADER0"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/ktor/websocket/FrameParser$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/ktor/websocket/FrameParser$State;->HEADER0:Lio/ktor/websocket/FrameParser$State;

    .line 45
    new-instance v0, Lio/ktor/websocket/FrameParser$State;

    const-string v1, "LENGTH"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lio/ktor/websocket/FrameParser$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/ktor/websocket/FrameParser$State;->LENGTH:Lio/ktor/websocket/FrameParser$State;

    .line 46
    new-instance v0, Lio/ktor/websocket/FrameParser$State;

    const-string v1, "MASK_KEY"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lio/ktor/websocket/FrameParser$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/ktor/websocket/FrameParser$State;->MASK_KEY:Lio/ktor/websocket/FrameParser$State;

    .line 47
    new-instance v0, Lio/ktor/websocket/FrameParser$State;

    const-string v1, "BODY"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lio/ktor/websocket/FrameParser$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/ktor/websocket/FrameParser$State;->BODY:Lio/ktor/websocket/FrameParser$State;

    invoke-static {}, Lio/ktor/websocket/FrameParser$State;->$values()[Lio/ktor/websocket/FrameParser$State;

    move-result-object v0

    sput-object v0, Lio/ktor/websocket/FrameParser$State;->$VALUES:[Lio/ktor/websocket/FrameParser$State;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lio/ktor/websocket/FrameParser$State;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lio/ktor/websocket/FrameParser$State;",
            ">;"
        }
    .end annotation

    .line 0
    sget-object v0, Lio/ktor/websocket/FrameParser$State;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/ktor/websocket/FrameParser$State;
    .registers 2

    .line 0
    const-class v0, Lio/ktor/websocket/FrameParser$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/ktor/websocket/FrameParser$State;

    return-object p0
.end method

.method public static values()[Lio/ktor/websocket/FrameParser$State;
    .registers 1

    .line 0
    sget-object v0, Lio/ktor/websocket/FrameParser$State;->$VALUES:[Lio/ktor/websocket/FrameParser$State;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/ktor/websocket/FrameParser$State;

    return-object v0
.end method

###### Class io.ktor.websocket.FrameParser.WhenMappings (io.ktor.websocket.FrameParser$WhenMappings)
.class public final synthetic Lio/ktor/websocket/FrameParser$WhenMappings;
.super Ljava/lang/Object;
.source "FrameParser.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/websocket/FrameParser;
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
    invoke-static {}, Lio/ktor/websocket/FrameParser$State;->values()[Lio/ktor/websocket/FrameParser$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_7
    sget-object v1, Lio/ktor/websocket/FrameParser$State;->HEADER0:Lio/ktor/websocket/FrameParser$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_10} :catch_10

    :catch_10
    :try_start_10
    sget-object v1, Lio/ktor/websocket/FrameParser$State;->LENGTH:Lio/ktor/websocket/FrameParser$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_19} :catch_19

    :catch_19
    :try_start_19
    sget-object v1, Lio/ktor/websocket/FrameParser$State;->MASK_KEY:Lio/ktor/websocket/FrameParser$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_22} :catch_22

    :catch_22
    :try_start_22
    sget-object v1, Lio/ktor/websocket/FrameParser$State;->BODY:Lio/ktor/websocket/FrameParser$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_2b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_2b} :catch_2b

    :catch_2b
    sput-object v0, Lio/ktor/websocket/FrameParser$WhenMappings;->$EnumSwitchMapping$0:[I

    return-void
.end method
