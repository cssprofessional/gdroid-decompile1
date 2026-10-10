###### Class kotlinx.io.Segment (kotlinx.io.Segment)
.class public final Lkotlinx/io/Segment;
.super Ljava/lang/Object;
.source "Segment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/io/Segment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSegment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Segment.kt\nkotlinx/io/Segment\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 -Util.kt\nkotlinx/io/_UtilKt\n*L\n1#1,535:1\n1#2:536\n95#3:537\n95#3:538\n95#3:539\n95#3:540\n95#3:541\n98#3:542\n98#3:543\n98#3:544\n98#3:545\n98#3:546\n98#3:547\n98#3:548\n98#3:549\n*S KotlinDebug\n*F\n+ 1 Segment.kt\nkotlinx/io/Segment\n*L\n282#1:537\n291#1:538\n292#1:539\n293#1:540\n294#1:541\n304#1:542\n305#1:543\n306#1:544\n307#1:545\n308#1:546\n309#1:547\n310#1:548\n311#1:549\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lkotlinx/io/Segment$Companion;


# instance fields
.field public copyTracker:Lkotlinx/io/SegmentCopyTracker;

.field public final data:[B

.field public limit:I

.field public next:Lkotlinx/io/Segment;

.field public owner:Z

.field public pos:I

.field public prev:Lkotlinx/io/Segment;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 0
    new-instance v0, Lkotlinx/io/Segment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlinx/io/Segment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlinx/io/Segment;->Companion:Lkotlinx/io/Segment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2000

    .line 131
    new-array v0, v0, [B

    iput-object v0, p0, Lkotlinx/io/Segment;->data:[B

    const/4 v0, 0x1

    .line 132
    iput-boolean v0, p0, Lkotlinx/io/Segment;->owner:Z

    const/4 v0, 0x0

    .line 133
    iput-object v0, p0, Lkotlinx/io/Segment;->copyTracker:Lkotlinx/io/SegmentCopyTracker;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lkotlinx/io/Segment;-><init>()V

    return-void
.end method

.method public constructor <init>([BIILkotlinx/io/SegmentCopyTracker;Z)V
    .registers 6

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    iput-object p1, p0, Lkotlinx/io/Segment;->data:[B

    .line 138
    iput p2, p0, Lkotlinx/io/Segment;->pos:I

    .line 139
    iput p3, p0, Lkotlinx/io/Segment;->limit:I

    .line 140
    iput-object p4, p0, Lkotlinx/io/Segment;->copyTracker:Lkotlinx/io/SegmentCopyTracker;

    .line 141
    iput-boolean p5, p0, Lkotlinx/io/Segment;->owner:Z

    return-void
.end method

.method public synthetic constructor <init>([BIILkotlinx/io/SegmentCopyTracker;ZLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 7

    .line 0
    invoke-direct/range {p0 .. p5}, Lkotlinx/io/Segment;-><init>([BIILkotlinx/io/SegmentCopyTracker;Z)V

    return-void
.end method


# virtual methods
.method public final compact$kotlinx_io_core()Lkotlinx/io/Segment;
    .registers 4

    .line 226
    iget-object v0, p0, Lkotlinx/io/Segment;->prev:Lkotlinx/io/Segment;

    if-eqz v0, :cond_4c

    .line 227
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-boolean v0, v0, Lkotlinx/io/Segment;->owner:Z

    if-nez v0, :cond_c

    return-object p0

    .line 228
    :cond_c
    iget v0, p0, Lkotlinx/io/Segment;->limit:I

    iget v1, p0, Lkotlinx/io/Segment;->pos:I

    sub-int/2addr v0, v1

    .line 229
    iget-object v1, p0, Lkotlinx/io/Segment;->prev:Lkotlinx/io/Segment;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v1, v1, Lkotlinx/io/Segment;->limit:I

    rsub-int v1, v1, 0x2000

    iget-object v2, p0, Lkotlinx/io/Segment;->prev:Lkotlinx/io/Segment;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lkotlinx/io/Segment;->getShared$kotlinx_io_core()Z

    move-result v2

    if-eqz v2, :cond_27

    const/4 v2, 0x0

    goto :goto_2e

    :cond_27
    iget-object v2, p0, Lkotlinx/io/Segment;->prev:Lkotlinx/io/Segment;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v2, v2, Lkotlinx/io/Segment;->pos:I

    :goto_2e
    add-int/2addr v1, v2

    if-le v0, v1, :cond_32

    return-object p0

    .line 231
    :cond_32
    iget-object v1, p0, Lkotlinx/io/Segment;->prev:Lkotlinx/io/Segment;

    .line 232
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, v1, v0}, Lkotlinx/io/Segment;->writeTo$kotlinx_io_core(Lkotlinx/io/Segment;I)V

    .line 233
    invoke-virtual {p0}, Lkotlinx/io/Segment;->pop$kotlinx_io_core()Lkotlinx/io/Segment;

    move-result-object v0

    if-nez v0, :cond_44

    .line 235
    invoke-static {p0}, Lkotlinx/io/SegmentPool;->recycle(Lkotlinx/io/Segment;)V

    return-object v1

    .line 234
    :cond_44
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Check failed."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 226
    :cond_4c
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "cannot compact"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final synthetic dataAsByteArray(Z)[B
    .registers 2

    .line 377
    iget-object p0, p0, Lkotlinx/io/Segment;->data:[B

    return-object p0
.end method

.method public final getCopyTracker$kotlinx_io_core()Lkotlinx/io/SegmentCopyTracker;
    .registers 1

    .line 112
    iget-object p0, p0, Lkotlinx/io/Segment;->copyTracker:Lkotlinx/io/SegmentCopyTracker;

    return-object p0
.end method

.method public final synthetic getLimit()I
    .registers 1

    .line 96
    iget p0, p0, Lkotlinx/io/Segment;->limit:I

    return p0
.end method

.method public final synthetic getNext()Lkotlinx/io/Segment;
    .registers 1

    .line 119
    iget-object p0, p0, Lkotlinx/io/Segment;->next:Lkotlinx/io/Segment;

    return-object p0
.end method

.method public final synthetic getPos()I
    .registers 1

    .line 85
    iget p0, p0, Lkotlinx/io/Segment;->pos:I

    return p0
.end method

.method public final synthetic getPrev()Lkotlinx/io/Segment;
    .registers 1

    .line 125
    iget-object p0, p0, Lkotlinx/io/Segment;->prev:Lkotlinx/io/Segment;

    return-object p0
.end method

.method public final getRemainingCapacity()I
    .registers 2

    .line 362
    iget-object v0, p0, Lkotlinx/io/Segment;->data:[B

    array-length v0, v0

    iget p0, p0, Lkotlinx/io/Segment;->limit:I

    sub-int/2addr v0, p0

    return v0
.end method

.method public final getShared$kotlinx_io_core()Z
    .registers 1

    .line 103
    iget-object p0, p0, Lkotlinx/io/Segment;->copyTracker:Lkotlinx/io/SegmentCopyTracker;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Lkotlinx/io/SegmentCopyTracker;->getShared()Z

    move-result p0

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method public final getSize()I
    .registers 2

    .line 354
    iget v0, p0, Lkotlinx/io/Segment;->limit:I

    iget p0, p0, Lkotlinx/io/Segment;->pos:I

    sub-int/2addr v0, p0

    return v0
.end method

.method public final getUnchecked$kotlinx_io_core(I)B
    .registers 3

    .line 391
    iget-object v0, p0, Lkotlinx/io/Segment;->data:[B

    iget p0, p0, Lkotlinx/io/Segment;->pos:I

    add-int/2addr p0, p1

    aget-byte p0, v0, p0

    return p0
.end method

.method public final pop$kotlinx_io_core()Lkotlinx/io/Segment;
    .registers 4

    .line 161
    iget-object v0, p0, Lkotlinx/io/Segment;->next:Lkotlinx/io/Segment;

    .line 162
    iget-object v1, p0, Lkotlinx/io/Segment;->prev:Lkotlinx/io/Segment;

    if-eqz v1, :cond_d

    .line 163
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v2, p0, Lkotlinx/io/Segment;->next:Lkotlinx/io/Segment;

    iput-object v2, v1, Lkotlinx/io/Segment;->next:Lkotlinx/io/Segment;

    .line 165
    :cond_d
    iget-object v1, p0, Lkotlinx/io/Segment;->next:Lkotlinx/io/Segment;

    if-eqz v1, :cond_18

    .line 166
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v2, p0, Lkotlinx/io/Segment;->prev:Lkotlinx/io/Segment;

    iput-object v2, v1, Lkotlinx/io/Segment;->prev:Lkotlinx/io/Segment;

    :cond_18
    const/4 v1, 0x0

    .line 168
    iput-object v1, p0, Lkotlinx/io/Segment;->next:Lkotlinx/io/Segment;

    .line 169
    iput-object v1, p0, Lkotlinx/io/Segment;->prev:Lkotlinx/io/Segment;

    return-object v0
.end method

.method public final push$kotlinx_io_core(Lkotlinx/io/Segment;)Lkotlinx/io/Segment;
    .registers 3

    const-string v0, "segment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 177
    iput-object p0, p1, Lkotlinx/io/Segment;->prev:Lkotlinx/io/Segment;

    .line 178
    iget-object v0, p0, Lkotlinx/io/Segment;->next:Lkotlinx/io/Segment;

    iput-object v0, p1, Lkotlinx/io/Segment;->next:Lkotlinx/io/Segment;

    .line 179
    iget-object v0, p0, Lkotlinx/io/Segment;->next:Lkotlinx/io/Segment;

    if-eqz v0, :cond_14

    .line 180
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iput-object p1, v0, Lkotlinx/io/Segment;->prev:Lkotlinx/io/Segment;

    .line 182
    :cond_14
    iput-object p1, p0, Lkotlinx/io/Segment;->next:Lkotlinx/io/Segment;

    return-object p1
.end method

.method public final readByte$kotlinx_io_core()B
    .registers 4

    .line 276
    iget-object v0, p0, Lkotlinx/io/Segment;->data:[B

    iget v1, p0, Lkotlinx/io/Segment;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lkotlinx/io/Segment;->pos:I

    aget-byte p0, v0, v1

    return p0
.end method

.method public final readInt$kotlinx_io_core()I
    .registers 6

    .line 288
    iget-object v0, p0, Lkotlinx/io/Segment;->data:[B

    .line 289
    iget v1, p0, Lkotlinx/io/Segment;->pos:I

    add-int/lit8 v2, v1, 0x1

    .line 291
    aget-byte v3, v0, v1

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    add-int/lit8 v4, v1, 0x2

    .line 292
    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v2, v3

    add-int/lit8 v3, v1, 0x3

    .line 293
    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v2, v4

    add-int/lit8 v1, v1, 0x4

    .line 294
    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v2

    .line 296
    iput v1, p0, Lkotlinx/io/Segment;->pos:I

    return v0
.end method

.method public final readLong$kotlinx_io_core()J
    .registers 11

    .line 301
    iget-object v0, p0, Lkotlinx/io/Segment;->data:[B

    .line 302
    iget v1, p0, Lkotlinx/io/Segment;->pos:I

    add-int/lit8 v2, v1, 0x1

    .line 304
    aget-byte v3, v0, v1

    int-to-long v3, v3

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    const/16 v7, 0x38

    shl-long/2addr v3, v7

    add-int/lit8 v7, v1, 0x2

    .line 305
    aget-byte v2, v0, v2

    int-to-long v8, v2

    and-long/2addr v8, v5

    const/16 v2, 0x30

    shl-long/2addr v8, v2

    or-long v2, v3, v8

    add-int/lit8 v4, v1, 0x3

    .line 306
    aget-byte v7, v0, v7

    int-to-long v7, v7

    and-long/2addr v7, v5

    const/16 v9, 0x28

    shl-long/2addr v7, v9

    or-long/2addr v2, v7

    add-int/lit8 v7, v1, 0x4

    .line 307
    aget-byte v4, v0, v4

    int-to-long v8, v4

    and-long/2addr v8, v5

    const/16 v4, 0x20

    shl-long/2addr v8, v4

    or-long/2addr v2, v8

    add-int/lit8 v4, v1, 0x5

    .line 308
    aget-byte v7, v0, v7

    int-to-long v7, v7

    and-long/2addr v7, v5

    const/16 v9, 0x18

    shl-long/2addr v7, v9

    or-long/2addr v2, v7

    add-int/lit8 v7, v1, 0x6

    .line 309
    aget-byte v4, v0, v4

    int-to-long v8, v4

    and-long/2addr v8, v5

    const/16 v4, 0x10

    shl-long/2addr v8, v4

    or-long/2addr v2, v8

    add-int/lit8 v4, v1, 0x7

    .line 310
    aget-byte v7, v0, v7

    int-to-long v7, v7

    and-long/2addr v7, v5

    const/16 v9, 0x8

    shl-long/2addr v7, v9

    or-long/2addr v2, v7

    add-int/2addr v1, v9

    .line 311
    aget-byte v0, v0, v4

    int-to-long v7, v0

    and-long v4, v7, v5

    or-long/2addr v2, v4

    .line 313
    iput v1, p0, Lkotlinx/io/Segment;->pos:I

    return-wide v2
.end method

.method public final readShort$kotlinx_io_core()S
    .registers 5

    .line 280
    iget-object v0, p0, Lkotlinx/io/Segment;->data:[B

    .line 281
    iget v1, p0, Lkotlinx/io/Segment;->pos:I

    add-int/lit8 v2, v1, 0x1

    .line 282
    aget-byte v3, v0, v1

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    add-int/lit8 v1, v1, 0x2

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v3

    int-to-short v0, v0

    .line 283
    iput v1, p0, Lkotlinx/io/Segment;->pos:I

    return v0
.end method

.method public final readTo$kotlinx_io_core([BII)V
    .registers 7

    const-string v0, "dst"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sub-int/2addr p3, p2

    .line 339
    iget-object v0, p0, Lkotlinx/io/Segment;->data:[B

    iget v1, p0, Lkotlinx/io/Segment;->pos:I

    add-int v2, v1, p3

    invoke-static {v0, p1, p2, v1, v2}, Lkotlin/collections/ArraysKt___ArraysJvmKt;->copyInto([B[BIII)[B

    .line 340
    iget p1, p0, Lkotlinx/io/Segment;->pos:I

    add-int/2addr p1, p3

    iput p1, p0, Lkotlinx/io/Segment;->pos:I

    return-void
.end method

.method public final synthetic setLimit(I)V
    .registers 2

    .line 96
    iput p1, p0, Lkotlinx/io/Segment;->limit:I

    return-void
.end method

.method public final synthetic setNext(Lkotlinx/io/Segment;)V
    .registers 2

    .line 119
    iput-object p1, p0, Lkotlinx/io/Segment;->next:Lkotlinx/io/Segment;

    return-void
.end method

.method public final synthetic setPos(I)V
    .registers 2

    .line 85
    iput p1, p0, Lkotlinx/io/Segment;->pos:I

    return-void
.end method

.method public final synthetic setPrev(Lkotlinx/io/Segment;)V
    .registers 2

    .line 125
    iput-object p1, p0, Lkotlinx/io/Segment;->prev:Lkotlinx/io/Segment;

    return-void
.end method

.method public final setUnchecked$kotlinx_io_core(IB)V
    .registers 4

    .line 395
    iget-object v0, p0, Lkotlinx/io/Segment;->data:[B

    iget p0, p0, Lkotlinx/io/Segment;->limit:I

    add-int/2addr p0, p1

    aput-byte p2, v0, p0

    return-void
.end method

.method public final setUnchecked$kotlinx_io_core(IBB)V
    .registers 5

    .line 399
    iget-object v0, p0, Lkotlinx/io/Segment;->data:[B

    .line 400
    iget p0, p0, Lkotlinx/io/Segment;->limit:I

    add-int/2addr p0, p1

    .line 401
    aput-byte p2, v0, p0

    add-int/lit8 p0, p0, 0x1

    .line 402
    aput-byte p3, v0, p0

    return-void
.end method

.method public final setUnchecked$kotlinx_io_core(IBBB)V
    .registers 6

    .line 406
    iget-object v0, p0, Lkotlinx/io/Segment;->data:[B

    .line 407
    iget p0, p0, Lkotlinx/io/Segment;->limit:I

    add-int/2addr p0, p1

    .line 408
    aput-byte p2, v0, p0

    add-int/lit8 p1, p0, 0x1

    .line 409
    aput-byte p3, v0, p1

    add-int/lit8 p0, p0, 0x2

    .line 410
    aput-byte p4, v0, p0

    return-void
.end method

.method public final setUnchecked$kotlinx_io_core(IBBBB)V
    .registers 7

    .line 414
    iget-object v0, p0, Lkotlinx/io/Segment;->data:[B

    .line 415
    iget p0, p0, Lkotlinx/io/Segment;->limit:I

    add-int/2addr p0, p1

    .line 416
    aput-byte p2, v0, p0

    add-int/lit8 p1, p0, 0x1

    .line 417
    aput-byte p3, v0, p1

    add-int/lit8 p1, p0, 0x2

    .line 418
    aput-byte p4, v0, p1

    add-int/lit8 p0, p0, 0x3

    .line 419
    aput-byte p5, v0, p0

    return-void
.end method

.method public final sharedCopy$kotlinx_io_core()Lkotlinx/io/Segment;
    .registers 8

    .line 150
    iget-object v0, p0, Lkotlinx/io/Segment;->copyTracker:Lkotlinx/io/SegmentCopyTracker;

    if-nez v0, :cond_a

    invoke-static {}, Lkotlinx/io/SegmentPool;->tracker()Lkotlinx/io/SegmentCopyTracker;

    move-result-object v0

    .line 151
    iput-object v0, p0, Lkotlinx/io/Segment;->copyTracker:Lkotlinx/io/SegmentCopyTracker;

    :cond_a
    move-object v5, v0

    .line 153
    iget-object v2, p0, Lkotlinx/io/Segment;->data:[B

    iget v3, p0, Lkotlinx/io/Segment;->pos:I

    iget v4, p0, Lkotlinx/io/Segment;->limit:I

    invoke-virtual {v5}, Lkotlinx/io/SegmentCopyTracker;->addCopy()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    new-instance p0, Lkotlinx/io/Segment;

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lkotlinx/io/Segment;-><init>([BIILkotlinx/io/SegmentCopyTracker;Z)V

    return-object p0
.end method

.method public final split$kotlinx_io_core(I)Lkotlinx/io/Segment;
    .registers 10

    if-lez p1, :cond_3e

    .line 195
    iget v0, p0, Lkotlinx/io/Segment;->limit:I

    iget v1, p0, Lkotlinx/io/Segment;->pos:I

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_3e

    const/16 v0, 0x400

    if-lt p1, v0, :cond_12

    .line 204
    invoke-virtual {p0}, Lkotlinx/io/Segment;->sharedCopy$kotlinx_io_core()Lkotlinx/io/Segment;

    move-result-object v0

    goto :goto_24

    .line 206
    :cond_12
    invoke-static {}, Lkotlinx/io/SegmentPool;->take()Lkotlinx/io/Segment;

    move-result-object v0

    .line 207
    iget-object v1, p0, Lkotlinx/io/Segment;->data:[B

    iget-object v2, v0, Lkotlinx/io/Segment;->data:[B

    iget v4, p0, Lkotlinx/io/Segment;->pos:I

    add-int v5, v4, p1

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v7}, Lkotlin/collections/ArraysKt___ArraysJvmKt;->copyInto$default([B[BIIIILjava/lang/Object;)[B

    .line 210
    :goto_24
    iget v1, v0, Lkotlinx/io/Segment;->pos:I

    add-int/2addr v1, p1

    iput v1, v0, Lkotlinx/io/Segment;->limit:I

    .line 211
    iget v1, p0, Lkotlinx/io/Segment;->pos:I

    add-int/2addr v1, p1

    iput v1, p0, Lkotlinx/io/Segment;->pos:I

    .line 212
    iget-object p1, p0, Lkotlinx/io/Segment;->prev:Lkotlinx/io/Segment;

    if-eqz p1, :cond_39

    .line 213
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Lkotlinx/io/Segment;->push$kotlinx_io_core(Lkotlinx/io/Segment;)Lkotlinx/io/Segment;

    goto :goto_3d

    .line 215
    :cond_39
    iput-object p0, v0, Lkotlinx/io/Segment;->next:Lkotlinx/io/Segment;

    .line 216
    iput-object v0, p0, Lkotlinx/io/Segment;->prev:Lkotlinx/io/Segment;

    :goto_3d
    return-object v0

    .line 195
    :cond_3e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "byteCount out of range"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final write$kotlinx_io_core([BII)V
    .registers 6

    const-string v0, "src"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 344
    iget-object v0, p0, Lkotlinx/io/Segment;->data:[B

    iget v1, p0, Lkotlinx/io/Segment;->limit:I

    invoke-static {p1, v0, v1, p2, p3}, Lkotlin/collections/ArraysKt___ArraysJvmKt;->copyInto([B[BIII)[B

    .line 345
    iget p1, p0, Lkotlinx/io/Segment;->limit:I

    sub-int/2addr p3, p2

    add-int/2addr p1, p3

    iput p1, p0, Lkotlinx/io/Segment;->limit:I

    return-void
.end method

.method public final synthetic writeBackData([BI)V
    .registers 3

    .line 0
    const-string p0, "data"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final writeByte$kotlinx_io_core(B)V
    .registers 5

    .line 240
    iget-object v0, p0, Lkotlinx/io/Segment;->data:[B

    iget v1, p0, Lkotlinx/io/Segment;->limit:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lkotlinx/io/Segment;->limit:I

    aput-byte p1, v0, v1

    return-void
.end method

.method public final writeInt$kotlinx_io_core(I)V
    .registers 7

    .line 252
    iget-object v0, p0, Lkotlinx/io/Segment;->data:[B

    .line 253
    iget v1, p0, Lkotlinx/io/Segment;->limit:I

    add-int/lit8 v2, v1, 0x1

    ushr-int/lit8 v3, p1, 0x18

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    .line 254
    aput-byte v3, v0, v1

    add-int/lit8 v3, v1, 0x2

    ushr-int/lit8 v4, p1, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    .line 255
    aput-byte v4, v0, v2

    add-int/lit8 v2, v1, 0x3

    ushr-int/lit8 v4, p1, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    .line 256
    aput-byte v4, v0, v3

    add-int/lit8 v1, v1, 0x4

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    .line 257
    aput-byte p1, v0, v2

    .line 258
    iput v1, p0, Lkotlinx/io/Segment;->limit:I

    return-void
.end method

.method public final writeLong$kotlinx_io_core(J)V
    .registers 12

    .line 262
    iget-object v0, p0, Lkotlinx/io/Segment;->data:[B

    .line 263
    iget v1, p0, Lkotlinx/io/Segment;->limit:I

    add-int/lit8 v2, v1, 0x1

    const/16 v3, 0x38

    ushr-long v3, p1, v3

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    long-to-int v3, v3

    int-to-byte v3, v3

    .line 264
    aput-byte v3, v0, v1

    add-int/lit8 v3, v1, 0x2

    const/16 v4, 0x30

    ushr-long v7, p1, v4

    and-long/2addr v7, v5

    long-to-int v4, v7

    int-to-byte v4, v4

    .line 265
    aput-byte v4, v0, v2

    add-int/lit8 v2, v1, 0x3

    const/16 v4, 0x28

    ushr-long v7, p1, v4

    and-long/2addr v7, v5

    long-to-int v4, v7

    int-to-byte v4, v4

    .line 266
    aput-byte v4, v0, v3

    add-int/lit8 v3, v1, 0x4

    const/16 v4, 0x20

    ushr-long v7, p1, v4

    and-long/2addr v7, v5

    long-to-int v4, v7

    int-to-byte v4, v4

    .line 267
    aput-byte v4, v0, v2

    add-int/lit8 v2, v1, 0x5

    const/16 v4, 0x18

    ushr-long v7, p1, v4

    and-long/2addr v7, v5

    long-to-int v4, v7

    int-to-byte v4, v4

    .line 268
    aput-byte v4, v0, v3

    add-int/lit8 v3, v1, 0x6

    const/16 v4, 0x10

    ushr-long v7, p1, v4

    and-long/2addr v7, v5

    long-to-int v4, v7

    int-to-byte v4, v4

    .line 269
    aput-byte v4, v0, v2

    add-int/lit8 v2, v1, 0x7

    const/16 v4, 0x8

    ushr-long v7, p1, v4

    and-long/2addr v7, v5

    long-to-int v7, v7

    int-to-byte v7, v7

    .line 270
    aput-byte v7, v0, v3

    add-int/2addr v1, v4

    and-long/2addr p1, v5

    long-to-int p1, p1

    int-to-byte p1, p1

    .line 271
    aput-byte p1, v0, v2

    .line 272
    iput v1, p0, Lkotlinx/io/Segment;->limit:I

    return-void
.end method

.method public final writeShort$kotlinx_io_core(S)V
    .registers 6

    .line 244
    iget-object v0, p0, Lkotlinx/io/Segment;->data:[B

    .line 245
    iget v1, p0, Lkotlinx/io/Segment;->limit:I

    add-int/lit8 v2, v1, 0x1

    ushr-int/lit8 v3, p1, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    .line 246
    aput-byte v3, v0, v1

    add-int/lit8 v1, v1, 0x2

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    .line 247
    aput-byte p1, v0, v2

    .line 248
    iput v1, p0, Lkotlinx/io/Segment;->limit:I

    return-void
.end method

.method public final writeTo$kotlinx_io_core(Lkotlinx/io/Segment;I)V
    .registers 12

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 319
    iget-boolean v0, p1, Lkotlinx/io/Segment;->owner:Z

    if-eqz v0, :cond_57

    .line 320
    iget v0, p1, Lkotlinx/io/Segment;->limit:I

    add-int/2addr v0, p2

    const/16 v1, 0x2000

    if-le v0, v1, :cond_3f

    .line 322
    invoke-virtual {p1}, Lkotlinx/io/Segment;->getShared$kotlinx_io_core()Z

    move-result v0

    if-nez v0, :cond_39

    .line 323
    iget v6, p1, Lkotlinx/io/Segment;->limit:I

    add-int v0, v6, p2

    iget v5, p1, Lkotlinx/io/Segment;->pos:I

    sub-int/2addr v0, v5

    if-gt v0, v1, :cond_33

    .line 324
    iget-object v3, p1, Lkotlinx/io/Segment;->data:[B

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v4, 0x0

    move-object v2, v3

    invoke-static/range {v2 .. v8}, Lkotlin/collections/ArraysKt___ArraysJvmKt;->copyInto$default([B[BIIIILjava/lang/Object;)[B

    .line 325
    iget v0, p1, Lkotlinx/io/Segment;->limit:I

    iget v1, p1, Lkotlinx/io/Segment;->pos:I

    sub-int/2addr v0, v1

    iput v0, p1, Lkotlinx/io/Segment;->limit:I

    const/4 v0, 0x0

    .line 326
    iput v0, p1, Lkotlinx/io/Segment;->pos:I

    goto :goto_3f

    .line 323
    :cond_33
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 322
    :cond_39
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 329
    :cond_3f
    :goto_3f
    iget-object v0, p0, Lkotlinx/io/Segment;->data:[B

    .line 330
    iget-object v1, p1, Lkotlinx/io/Segment;->data:[B

    iget v2, p1, Lkotlinx/io/Segment;->limit:I

    iget v3, p0, Lkotlinx/io/Segment;->pos:I

    add-int v4, v3, p2

    .line 329
    invoke-static {v0, v1, v2, v3, v4}, Lkotlin/collections/ArraysKt___ArraysJvmKt;->copyInto([B[BIII)[B

    .line 333
    iget v0, p1, Lkotlinx/io/Segment;->limit:I

    add-int/2addr v0, p2

    iput v0, p1, Lkotlinx/io/Segment;->limit:I

    .line 334
    iget p1, p0, Lkotlinx/io/Segment;->pos:I

    add-int/2addr p1, p2

    iput p1, p0, Lkotlinx/io/Segment;->pos:I

    return-void

    .line 319
    :cond_57
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "only owner can write"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

###### Class kotlinx.io.Segment.Companion (kotlinx.io.Segment$Companion)
.class public final Lkotlinx/io/Segment$Companion;
.super Ljava/lang/Object;
.source "Segment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/io/Segment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 422
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lkotlinx/io/Segment$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic new$kotlinx_io_core()Lkotlinx/io/Segment;
    .registers 2

    .line 430
    new-instance p0, Lkotlinx/io/Segment;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlinx/io/Segment;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p0
.end method

.method public final synthetic new$kotlinx_io_core([BIILkotlinx/io/SegmentCopyTracker;Z)Lkotlinx/io/Segment;
    .registers 13

    const-string p0, "data"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 439
    new-instance p0, Lkotlinx/io/Segment;

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lkotlinx/io/Segment;-><init>([BIILkotlinx/io/SegmentCopyTracker;ZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p0
.end method
