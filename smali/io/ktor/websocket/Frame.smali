###### Class io.ktor.websocket.Frame (io.ktor.websocket.Frame)
.class public abstract Lio/ktor/websocket/Frame;
.super Ljava/lang/Object;
.source "Frame.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/ktor/websocket/Frame$Binary;,
        Lio/ktor/websocket/Frame$Close;,
        Lio/ktor/websocket/Frame$Companion;,
        Lio/ktor/websocket/Frame$Ping;,
        Lio/ktor/websocket/Frame$Pong;,
        Lio/ktor/websocket/Frame$Text;
    }
.end annotation


# static fields
.field public static final Companion:Lio/ktor/websocket/Frame$Companion;

.field public static final Empty:[B


# instance fields
.field public final buffer:Ljava/nio/ByteBuffer;

.field public final data:[B

.field public final disposableHandle:Lkotlinx/coroutines/DisposableHandle;

.field public final fin:Z

.field public final frameType:Lio/ktor/websocket/FrameType;

.field public final rsv1:Z

.field public final rsv2:Z

.field public final rsv3:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lio/ktor/websocket/Frame$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/ktor/websocket/Frame$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/ktor/websocket/Frame;->Companion:Lio/ktor/websocket/Frame$Companion;

    const/4 v0, 0x0

    .line 154
    new-array v0, v0, [B

    sput-object v0, Lio/ktor/websocket/Frame;->Empty:[B

    return-void
.end method

.method public constructor <init>(ZLio/ktor/websocket/FrameType;[BLkotlinx/coroutines/DisposableHandle;ZZZ)V
    .registers 8

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-boolean p1, p0, Lio/ktor/websocket/Frame;->fin:Z

    .line 26
    iput-object p2, p0, Lio/ktor/websocket/Frame;->frameType:Lio/ktor/websocket/FrameType;

    .line 27
    iput-object p3, p0, Lio/ktor/websocket/Frame;->data:[B

    .line 28
    iput-object p4, p0, Lio/ktor/websocket/Frame;->disposableHandle:Lkotlinx/coroutines/DisposableHandle;

    .line 29
    iput-boolean p5, p0, Lio/ktor/websocket/Frame;->rsv1:Z

    .line 30
    iput-boolean p6, p0, Lio/ktor/websocket/Frame;->rsv2:Z

    .line 31
    iput-boolean p7, p0, Lio/ktor/websocket/Frame;->rsv3:Z

    .line 38
    invoke-static {p3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    const-string p2, "wrap(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lio/ktor/websocket/Frame;->buffer:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public synthetic constructor <init>(ZLio/ktor/websocket/FrameType;[BLkotlinx/coroutines/DisposableHandle;ZZZLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 9

    .line 0
    invoke-direct/range {p0 .. p7}, Lio/ktor/websocket/Frame;-><init>(ZLio/ktor/websocket/FrameType;[BLkotlinx/coroutines/DisposableHandle;ZZZ)V

    return-void
.end method

.method public static final synthetic access$getEmpty$cp()[B
    .registers 1

    .line 24
    sget-object v0, Lio/ktor/websocket/Frame;->Empty:[B

    return-object v0
.end method


# virtual methods
.method public final getBuffer()Ljava/nio/ByteBuffer;
    .registers 1

    .line 38
    iget-object p0, p0, Lio/ktor/websocket/Frame;->buffer:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public final getData()[B
    .registers 1

    .line 27
    iget-object p0, p0, Lio/ktor/websocket/Frame;->data:[B

    return-object p0
.end method

.method public final getFin()Z
    .registers 1

    .line 25
    iget-boolean p0, p0, Lio/ktor/websocket/Frame;->fin:Z

    return p0
.end method

.method public final getFrameType()Lio/ktor/websocket/FrameType;
    .registers 1

    .line 26
    iget-object p0, p0, Lio/ktor/websocket/Frame;->frameType:Lio/ktor/websocket/FrameType;

    return-object p0
.end method

.method public final getRsv1()Z
    .registers 1

    .line 29
    iget-boolean p0, p0, Lio/ktor/websocket/Frame;->rsv1:Z

    return p0
.end method

.method public final getRsv2()Z
    .registers 1

    .line 30
    iget-boolean p0, p0, Lio/ktor/websocket/Frame;->rsv2:Z

    return p0
.end method

.method public final getRsv3()Z
    .registers 1

    .line 31
    iget-boolean p0, p0, Lio/ktor/websocket/Frame;->rsv3:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Frame "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/ktor/websocket/Frame;->frameType:Lio/ktor/websocket/FrameType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " (fin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lio/ktor/websocket/Frame;->fin:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", buffer len = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lio/ktor/websocket/Frame;->data:[B

    array-length p0, p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

###### Class io.ktor.websocket.Frame.Binary (io.ktor.websocket.Frame$Binary)
.class public final Lio/ktor/websocket/Frame$Binary;
.super Lio/ktor/websocket/Frame;
.source "Frame.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/websocket/Frame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Binary"
.end annotation


# direct methods
.method public constructor <init>(Z[B)V
    .registers 10

    const-string v0, "data"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    .line 57
    invoke-direct/range {v1 .. v6}, Lio/ktor/websocket/Frame$Binary;-><init>(Z[BZZZ)V

    return-void
.end method

.method public constructor <init>(Z[BZZZ)V
    .registers 16

    const-string v0, "data"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    sget-object v3, Lio/ktor/websocket/FrameType;->BINARY:Lio/ktor/websocket/FrameType;

    sget-object v5, Lio/ktor/websocket/NonDisposableHandle;->INSTANCE:Lio/ktor/websocket/NonDisposableHandle;

    const/4 v9, 0x0

    move-object v1, p0

    move v2, p1

    move-object v4, p2

    move v6, p3

    move v7, p4

    move v8, p5

    .line 48
    invoke-direct/range {v1 .. v9}, Lio/ktor/websocket/Frame;-><init>(ZLio/ktor/websocket/FrameType;[BLkotlinx/coroutines/DisposableHandle;ZZZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

###### Class io.ktor.websocket.Frame.Close (io.ktor.websocket.Frame$Close)
.class public final Lio/ktor/websocket/Frame$Close;
.super Lio/ktor/websocket/Frame;
.source "Frame.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/websocket/Frame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Close"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFrame.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Frame.kt\nio/ktor/websocket/Frame$Close\n+ 2 Builder.kt\nio/ktor/utils/io/core/BuilderKt\n*L\n1#1,177:1\n21#2,3:178\n*S KotlinDebug\n*F\n+ 1 Frame.kt\nio/ktor/websocket/Frame$Close\n*L\n100#1:178,3\n*E\n"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 107
    invoke-static {}, Lio/ktor/websocket/Frame;->access$getEmpty$cp()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lio/ktor/websocket/Frame$Close;-><init>([B)V

    return-void
.end method

.method public constructor <init>(Lio/ktor/websocket/CloseReason;)V
    .registers 10

    const-string v0, "reason"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    new-instance v0, Lkotlinx/io/Buffer;

    invoke-direct {v0}, Lkotlinx/io/Buffer;-><init>()V

    .line 101
    invoke-virtual {p1}, Lio/ktor/websocket/CloseReason;->getCode()S

    move-result v1

    invoke-interface {v0, v1}, Lkotlinx/io/Sink;->writeShort(S)V

    .line 102
    invoke-virtual {p1}, Lio/ktor/websocket/CloseReason;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/16 v6, 0xe

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, v0

    invoke-static/range {v1 .. v7}, Lio/ktor/utils/io/core/StringsKt;->writeText$default(Lkotlinx/io/Sink;Ljava/lang/CharSequence;IILjava/nio/charset/Charset;ILjava/lang/Object;)V

    .line 99
    invoke-direct {p0, v0}, Lio/ktor/websocket/Frame$Close;-><init>(Lkotlinx/io/Source;)V

    return-void
.end method

.method public constructor <init>(Lkotlinx/io/Source;)V
    .registers 3

    const-string v0, "packet"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    invoke-static {p1}, Lkotlinx/io/SourcesKt;->readByteArray(Lkotlinx/io/Source;)[B

    move-result-object p1

    invoke-direct {p0, p1}, Lio/ktor/websocket/Frame$Close;-><init>([B)V

    return-void
.end method

.method public constructor <init>([B)V
    .registers 12

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    sget-object v3, Lio/ktor/websocket/FrameType;->CLOSE:Lio/ktor/websocket/FrameType;

    sget-object v5, Lio/ktor/websocket/NonDisposableHandle;->INSTANCE:Lio/ktor/websocket/NonDisposableHandle;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v2, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v4, p1

    .line 95
    invoke-direct/range {v1 .. v9}, Lio/ktor/websocket/Frame;-><init>(ZLio/ktor/websocket/FrameType;[BLkotlinx/coroutines/DisposableHandle;ZZZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

###### Class io.ktor.websocket.Frame.Companion (io.ktor.websocket.Frame$Companion)
.class public final Lio/ktor/websocket/Frame$Companion;
.super Ljava/lang/Object;
.source "Frame.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/websocket/Frame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/ktor/websocket/Frame$Companion$WhenMappings;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lio/ktor/websocket/Frame$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final byType(ZLio/ktor/websocket/FrameType;[BZZZ)Lio/ktor/websocket/Frame;
    .registers 13

    const-string p0, "frameType"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "data"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 168
    sget-object p0, Lio/ktor/websocket/Frame$Companion$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p0, p0, p2

    const/4 p2, 0x1

    if-eq p0, p2, :cond_47

    const/4 p2, 0x2

    if-eq p0, p2, :cond_3b

    const/4 p1, 0x3

    if-eq p0, p1, :cond_35

    const/4 p1, 0x4

    if-eq p0, p1, :cond_2f

    const/4 p1, 0x5

    if-ne p0, p1, :cond_29

    .line 173
    new-instance p0, Lio/ktor/websocket/Frame$Pong;

    sget-object p1, Lio/ktor/websocket/NonDisposableHandle;->INSTANCE:Lio/ktor/websocket/NonDisposableHandle;

    invoke-direct {p0, p3, p1}, Lio/ktor/websocket/Frame$Pong;-><init>([BLkotlinx/coroutines/DisposableHandle;)V

    goto :goto_52

    .line 168
    :cond_29
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    .line 172
    :cond_2f
    new-instance p0, Lio/ktor/websocket/Frame$Ping;

    invoke-direct {p0, p3}, Lio/ktor/websocket/Frame$Ping;-><init>([B)V

    goto :goto_52

    .line 171
    :cond_35
    new-instance p0, Lio/ktor/websocket/Frame$Close;

    invoke-direct {p0, p3}, Lio/ktor/websocket/Frame$Close;-><init>([B)V

    goto :goto_52

    .line 170
    :cond_3b
    new-instance p0, Lio/ktor/websocket/Frame$Text;

    move-object v0, p0

    move v1, p1

    move-object v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lio/ktor/websocket/Frame$Text;-><init>(Z[BZZZ)V

    goto :goto_52

    .line 169
    :cond_47
    new-instance p0, Lio/ktor/websocket/Frame$Binary;

    move-object v0, p0

    move v1, p1

    move-object v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lio/ktor/websocket/Frame$Binary;-><init>(Z[BZZZ)V

    :goto_52
    return-object p0
.end method

###### Class io.ktor.websocket.Frame.Companion.WhenMappings (io.ktor.websocket.Frame$Companion$WhenMappings)
.class public final synthetic Lio/ktor/websocket/Frame$Companion$WhenMappings;
.super Ljava/lang/Object;
.source "Frame.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/websocket/Frame$Companion;
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
    invoke-static {}, Lio/ktor/websocket/FrameType;->values()[Lio/ktor/websocket/FrameType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_7
    sget-object v1, Lio/ktor/websocket/FrameType;->BINARY:Lio/ktor/websocket/FrameType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_10} :catch_10

    :catch_10
    :try_start_10
    sget-object v1, Lio/ktor/websocket/FrameType;->TEXT:Lio/ktor/websocket/FrameType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_19} :catch_19

    :catch_19
    :try_start_19
    sget-object v1, Lio/ktor/websocket/FrameType;->CLOSE:Lio/ktor/websocket/FrameType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_22} :catch_22

    :catch_22
    :try_start_22
    sget-object v1, Lio/ktor/websocket/FrameType;->PING:Lio/ktor/websocket/FrameType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_2b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_2b} :catch_2b

    :catch_2b
    :try_start_2b
    sget-object v1, Lio/ktor/websocket/FrameType;->PONG:Lio/ktor/websocket/FrameType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_34
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2b .. :try_end_34} :catch_34

    :catch_34
    sput-object v0, Lio/ktor/websocket/Frame$Companion$WhenMappings;->$EnumSwitchMapping$0:[I

    return-void
.end method

###### Class io.ktor.websocket.Frame.Ping (io.ktor.websocket.Frame$Ping)
.class public final Lio/ktor/websocket/Frame$Ping;
.super Lio/ktor/websocket/Frame;
.source "Frame.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/websocket/Frame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Ping"
.end annotation


# direct methods
.method public constructor <init>([B)V
    .registers 12

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    sget-object v3, Lio/ktor/websocket/FrameType;->PING:Lio/ktor/websocket/FrameType;

    sget-object v5, Lio/ktor/websocket/NonDisposableHandle;->INSTANCE:Lio/ktor/websocket/NonDisposableHandle;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v2, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v4, p1

    .line 118
    invoke-direct/range {v1 .. v9}, Lio/ktor/websocket/Frame;-><init>(ZLio/ktor/websocket/FrameType;[BLkotlinx/coroutines/DisposableHandle;ZZZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

###### Class io.ktor.websocket.Frame.Pong (io.ktor.websocket.Frame$Pong)
.class public final Lio/ktor/websocket/Frame$Pong;
.super Lio/ktor/websocket/Frame;
.source "Frame.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/websocket/Frame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Pong"
.end annotation


# direct methods
.method public constructor <init>([BLkotlinx/coroutines/DisposableHandle;)V
    .registers 13

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "disposableHandle"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    sget-object v3, Lio/ktor/websocket/FrameType;->PONG:Lio/ktor/websocket/FrameType;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v2, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    .line 131
    invoke-direct/range {v1 .. v9}, Lio/ktor/websocket/Frame;-><init>(ZLio/ktor/websocket/FrameType;[BLkotlinx/coroutines/DisposableHandle;ZZZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>([BLkotlinx/coroutines/DisposableHandle;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 5

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_6

    .line 116
    sget-object p2, Lio/ktor/websocket/NonDisposableHandle;->INSTANCE:Lio/ktor/websocket/NonDisposableHandle;

    .line 131
    :cond_6
    invoke-direct {p0, p1, p2}, Lio/ktor/websocket/Frame$Pong;-><init>([BLkotlinx/coroutines/DisposableHandle;)V

    return-void
.end method

###### Class io.ktor.websocket.Frame.Text (io.ktor.websocket.Frame$Text)
.class public final Lio/ktor/websocket/Frame$Text;
.super Lio/ktor/websocket/Frame;
.source "Frame.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/websocket/Frame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Text"
.end annotation


# direct methods
.method public constructor <init>(Z[BZZZ)V
    .registers 16

    const-string v0, "data"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    sget-object v3, Lio/ktor/websocket/FrameType;->TEXT:Lio/ktor/websocket/FrameType;

    sget-object v5, Lio/ktor/websocket/NonDisposableHandle;->INSTANCE:Lio/ktor/websocket/NonDisposableHandle;

    const/4 v9, 0x0

    move-object v1, p0

    move v2, p1

    move-object v4, p2

    move v6, p3

    move v7, p4

    move v8, p5

    .line 72
    invoke-direct/range {v1 .. v9}, Lio/ktor/websocket/Frame;-><init>(ZLio/ktor/websocket/FrameType;[BLkotlinx/coroutines/DisposableHandle;ZZZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
