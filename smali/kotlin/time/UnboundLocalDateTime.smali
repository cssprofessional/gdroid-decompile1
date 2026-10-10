###### Class kotlin.time.UnboundLocalDateTime (kotlin.time.UnboundLocalDateTime)
.class public final Lkotlin/time/UnboundLocalDateTime;
.super Ljava/lang/Object;
.source "Instant.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/time/UnboundLocalDateTime$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lkotlin/time/UnboundLocalDateTime$Companion;


# instance fields
.field public final day:I

.field public final hour:I

.field public final minute:I

.field public final month:I

.field public final nanosecond:I

.field public final second:I

.field public final year:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 0
    new-instance v0, Lkotlin/time/UnboundLocalDateTime$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/time/UnboundLocalDateTime$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlin/time/UnboundLocalDateTime;->Companion:Lkotlin/time/UnboundLocalDateTime$Companion;

    return-void
.end method

.method public constructor <init>(IIIIIII)V
    .registers 8

    .line 468
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 470
    iput p1, p0, Lkotlin/time/UnboundLocalDateTime;->year:I

    .line 471
    iput p2, p0, Lkotlin/time/UnboundLocalDateTime;->month:I

    .line 472
    iput p3, p0, Lkotlin/time/UnboundLocalDateTime;->day:I

    .line 473
    iput p4, p0, Lkotlin/time/UnboundLocalDateTime;->hour:I

    .line 474
    iput p5, p0, Lkotlin/time/UnboundLocalDateTime;->minute:I

    .line 475
    iput p6, p0, Lkotlin/time/UnboundLocalDateTime;->second:I

    .line 476
    iput p7, p0, Lkotlin/time/UnboundLocalDateTime;->nanosecond:I

    return-void
.end method


# virtual methods
.method public final getDay()I
    .registers 1

    .line 472
    iget p0, p0, Lkotlin/time/UnboundLocalDateTime;->day:I

    return p0
.end method

.method public final getHour()I
    .registers 1

    .line 473
    iget p0, p0, Lkotlin/time/UnboundLocalDateTime;->hour:I

    return p0
.end method

.method public final getMinute()I
    .registers 1

    .line 474
    iget p0, p0, Lkotlin/time/UnboundLocalDateTime;->minute:I

    return p0
.end method

.method public final getMonth()I
    .registers 1

    .line 471
    iget p0, p0, Lkotlin/time/UnboundLocalDateTime;->month:I

    return p0
.end method

.method public final getNanosecond()I
    .registers 1

    .line 476
    iget p0, p0, Lkotlin/time/UnboundLocalDateTime;->nanosecond:I

    return p0
.end method

.method public final getSecond()I
    .registers 1

    .line 475
    iget p0, p0, Lkotlin/time/UnboundLocalDateTime;->second:I

    return p0
.end method

.method public final getYear()I
    .registers 1

    .line 470
    iget p0, p0, Lkotlin/time/UnboundLocalDateTime;->year:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 509
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UnboundLocalDateTime("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lkotlin/time/UnboundLocalDateTime;->year:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v2, p0, Lkotlin/time/UnboundLocalDateTime;->month:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Lkotlin/time/UnboundLocalDateTime;->day:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Lkotlin/time/UnboundLocalDateTime;->hour:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v2, p0, Lkotlin/time/UnboundLocalDateTime;->minute:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Lkotlin/time/UnboundLocalDateTime;->second:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget p0, p0, Lkotlin/time/UnboundLocalDateTime;->nanosecond:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

###### Class kotlin.time.UnboundLocalDateTime.Companion (kotlin.time.UnboundLocalDateTime$Companion)
.class public final Lkotlin/time/UnboundLocalDateTime$Companion;
.super Ljava/lang/Object;
.source "Instant.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/time/UnboundLocalDateTime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 511
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lkotlin/time/UnboundLocalDateTime$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromInstant(Lkotlin/time/Instant;)Lkotlin/time/UnboundLocalDateTime;
    .registers 25

    const-string v0, "instant"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 513
    invoke-virtual/range {p1 .. p1}, Lkotlin/time/Instant;->getEpochSeconds()J

    move-result-wide v2

    const-wide/32 v4, 0x15180

    .line 514
    div-long v6, v2, v4

    xor-long v8, v2, v4

    const-wide/16 v10, 0x0

    cmp-long v0, v8, v10

    const-wide/16 v8, -0x1

    if-gez v0, :cond_21

    mul-long v12, v6, v4

    cmp-long v0, v12, v2

    if-eqz v0, :cond_21

    add-long/2addr v6, v8

    .line 515
    :cond_21
    rem-long/2addr v2, v4

    xor-long v12, v2, v4

    neg-long v14, v2

    or-long/2addr v14, v2

    and-long/2addr v12, v14

    const/16 v0, 0x3f

    shr-long/2addr v12, v0

    and-long/2addr v4, v12

    add-long/2addr v2, v4

    long-to-int v0, v2

    const v2, 0xafaa8

    int-to-long v2, v2

    add-long/2addr v6, v2

    const/16 v2, 0x3c

    int-to-long v2, v2

    sub-long/2addr v6, v2

    cmp-long v2, v6, v10

    const/16 v3, 0x190

    const v4, 0x23ab1

    if-gez v2, :cond_4c

    const-wide/16 v12, 0x1

    add-long v14, v6, v12

    int-to-long v8, v4

    .line 527
    div-long/2addr v14, v8

    sub-long/2addr v14, v12

    int-to-long v12, v3

    mul-long/2addr v12, v14

    neg-long v14, v14

    mul-long/2addr v14, v8

    add-long/2addr v6, v14

    goto :goto_4d

    :cond_4c
    move-wide v12, v10

    :goto_4d
    int-to-long v2, v3

    mul-long v8, v2, v6

    const/16 v5, 0x24f

    int-to-long v14, v5

    add-long/2addr v8, v14

    int-to-long v4, v4

    .line 531
    div-long/2addr v8, v4

    const/16 v4, 0x16d

    int-to-long v4, v4

    mul-long v14, v4, v8

    const/4 v10, 0x4

    int-to-long v10, v10

    .line 532
    div-long v20, v8, v10

    add-long v14, v14, v20

    const/16 v1, 0x64

    move/from16 v20, v0

    int-to-long v0, v1

    div-long v21, v8, v0

    sub-long v14, v14, v21

    div-long v21, v8, v2

    add-long v14, v14, v21

    sub-long v14, v6, v14

    const-wide/16 v18, 0x0

    cmp-long v18, v14, v18

    if-gez v18, :cond_86

    const-wide/16 v16, -0x1

    add-long v8, v8, v16

    mul-long/2addr v4, v8

    .line 535
    div-long v10, v8, v10

    add-long/2addr v4, v10

    div-long v0, v8, v0

    sub-long/2addr v4, v0

    div-long v0, v8, v2

    add-long/2addr v4, v0

    sub-long v14, v6, v4

    :cond_86
    add-long/2addr v8, v12

    long-to-int v0, v14

    mul-int/lit8 v1, v0, 0x5

    add-int/lit8 v1, v1, 0x2

    .line 542
    div-int/lit16 v1, v1, 0x99

    add-int/lit8 v2, v1, 0x2

    .line 543
    rem-int/lit8 v2, v2, 0xc

    add-int/lit8 v12, v2, 0x1

    mul-int/lit16 v2, v1, 0x132

    add-int/lit8 v2, v2, 0x5

    .line 544
    div-int/lit8 v2, v2, 0xa

    sub-int/2addr v0, v2

    add-int/lit8 v13, v0, 0x1

    .line 545
    div-int/lit8 v1, v1, 0xa

    int-to-long v0, v1

    add-long/2addr v8, v0

    long-to-int v11, v8

    move/from16 v0, v20

    .line 547
    div-int/lit16 v14, v0, 0xe10

    mul-int/lit16 v1, v14, 0xe10

    sub-int/2addr v0, v1

    .line 549
    div-int/lit8 v15, v0, 0x3c

    mul-int/lit8 v1, v15, 0x3c

    sub-int v16, v0, v1

    .line 551
    new-instance v0, Lkotlin/time/UnboundLocalDateTime;

    invoke-virtual/range {p1 .. p1}, Lkotlin/time/Instant;->getNanosecondsOfSecond()I

    move-result v17

    move-object v10, v0

    invoke-direct/range {v10 .. v17}, Lkotlin/time/UnboundLocalDateTime;-><init>(IIIIIII)V

    return-object v0
.end method
