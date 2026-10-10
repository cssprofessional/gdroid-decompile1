###### Class org.tukaani.xz.lzma.LZMACoder (org.tukaani.xz.lzma.LZMACoder)
.class abstract Lorg/tukaani/xz/lzma/LZMACoder;
.super Ljava/lang/Object;
.source "LZMACoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/tukaani/xz/lzma/LZMACoder$LengthCoder;,
        Lorg/tukaani/xz/lzma/LZMACoder$LiteralCoder;
    }
.end annotation


# static fields
.field static final ALIGN_BITS:I = 0x4

.field static final ALIGN_MASK:I = 0xf

.field static final ALIGN_SIZE:I = 0x10

.field static final DIST_MODEL_END:I = 0xe

.field static final DIST_MODEL_START:I = 0x4

.field static final DIST_SLOTS:I = 0x40

.field static final DIST_STATES:I = 0x4

.field static final FULL_DISTANCES:I = 0x80

.field static final MATCH_LEN_MAX:I = 0x111

.field static final MATCH_LEN_MIN:I = 0x2

.field static final POS_STATES_MAX:I = 0x10

.field static final REPS:I = 0x4


# instance fields
.field final distAlign:[S

.field final distSlots:[[S

.field final distSpecial:[[S

.field final isMatch:[[S

.field final isRep:[S

.field final isRep0:[S

.field final isRep0Long:[[S

.field final isRep1:[S

.field final isRep2:[S

.field final posMask:I

.field final reps:[I

.field final state:Lorg/tukaani/xz/lzma/State;


# direct methods
.method public constructor <init>(I)V
    .registers 18

    move-object/from16 v0, p0

    .line 55
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x4

    .line 32
    new-array v2, v1, [I

    iput-object v2, v0, Lorg/tukaani/xz/lzma/LZMACoder;->reps:[I

    .line 33
    new-instance v2, Lorg/tukaani/xz/lzma/State;

    invoke-direct {v2}, Lorg/tukaani/xz/lzma/State;-><init>()V

    iput-object v2, v0, Lorg/tukaani/xz/lzma/LZMACoder;->state:Lorg/tukaani/xz/lzma/State;

    const/4 v2, 0x2

    .line 35
    new-array v3, v2, [I

    const/4 v4, 0x1

    const/16 v5, 0x10

    aput v5, v3, v4

    const/4 v6, 0x0

    const/16 v7, 0xc

    aput v7, v3, v6

    sget-object v8, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v8, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[S

    iput-object v3, v0, Lorg/tukaani/xz/lzma/LZMACoder;->isMatch:[[S

    .line 36
    new-array v3, v7, [S

    iput-object v3, v0, Lorg/tukaani/xz/lzma/LZMACoder;->isRep:[S

    .line 37
    new-array v3, v7, [S

    iput-object v3, v0, Lorg/tukaani/xz/lzma/LZMACoder;->isRep0:[S

    .line 38
    new-array v3, v7, [S

    iput-object v3, v0, Lorg/tukaani/xz/lzma/LZMACoder;->isRep1:[S

    .line 39
    new-array v3, v7, [S

    iput-object v3, v0, Lorg/tukaani/xz/lzma/LZMACoder;->isRep2:[S

    .line 40
    new-array v3, v2, [I

    aput v5, v3, v4

    aput v7, v3, v6

    invoke-static {v8, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[S

    iput-object v3, v0, Lorg/tukaani/xz/lzma/LZMACoder;->isRep0Long:[[S

    .line 41
    new-array v3, v2, [I

    const/16 v7, 0x40

    aput v7, v3, v4

    aput v1, v3, v6

    invoke-static {v8, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[S

    iput-object v3, v0, Lorg/tukaani/xz/lzma/LZMACoder;->distSlots:[[S

    .line 42
    new-array v6, v2, [S

    new-array v7, v2, [S

    new-array v8, v1, [S

    new-array v9, v1, [S

    const/16 v1, 0x8

    new-array v10, v1, [S

    new-array v11, v1, [S

    new-array v12, v5, [S

    new-array v13, v5, [S

    const/16 v1, 0x20

    new-array v14, v1, [S

    new-array v15, v1, [S

    filled-new-array/range {v6 .. v15}, [[S

    move-result-object v1

    iput-object v1, v0, Lorg/tukaani/xz/lzma/LZMACoder;->distSpecial:[[S

    .line 47
    new-array v1, v5, [S

    iput-object v1, v0, Lorg/tukaani/xz/lzma/LZMACoder;->distAlign:[S

    shl-int v1, v4, p1

    sub-int/2addr v1, v4

    .line 56
    iput v1, v0, Lorg/tukaani/xz/lzma/LZMACoder;->posMask:I

    return-void
.end method

.method public static final getDistState(I)I
    .registers 2

    .line 0
    const/4 v0, 0x6

    if-ge p0, v0, :cond_6

    add-int/lit8 p0, p0, -0x2

    goto :goto_7

    :cond_6
    const/4 p0, 0x3

    :goto_7
    return p0
.end method


# virtual methods
.method public reset()V
    .registers 5

    .line 60
    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMACoder;->reps:[I

    const/4 v1, 0x0

    aput v1, v0, v1

    const/4 v2, 0x1

    .line 61
    aput v1, v0, v2

    const/4 v2, 0x2

    .line 62
    aput v1, v0, v2

    const/4 v2, 0x3

    .line 63
    aput v1, v0, v2

    .line 64
    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMACoder;->state:Lorg/tukaani/xz/lzma/State;

    invoke-virtual {v0}, Lorg/tukaani/xz/lzma/State;->reset()V

    move v0, v1

    .line 66
    :goto_14
    iget-object v2, p0, Lorg/tukaani/xz/lzma/LZMACoder;->isMatch:[[S

    array-length v3, v2

    if-ge v0, v3, :cond_21

    .line 67
    aget-object v2, v2, v0

    invoke-static {v2}, Lorg/tukaani/xz/rangecoder/RangeCoder;->initProbs([S)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 69
    :cond_21
    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMACoder;->isRep:[S

    invoke-static {v0}, Lorg/tukaani/xz/rangecoder/RangeCoder;->initProbs([S)V

    .line 70
    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMACoder;->isRep0:[S

    invoke-static {v0}, Lorg/tukaani/xz/rangecoder/RangeCoder;->initProbs([S)V

    .line 71
    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMACoder;->isRep1:[S

    invoke-static {v0}, Lorg/tukaani/xz/rangecoder/RangeCoder;->initProbs([S)V

    .line 72
    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMACoder;->isRep2:[S

    invoke-static {v0}, Lorg/tukaani/xz/rangecoder/RangeCoder;->initProbs([S)V

    move v0, v1

    .line 74
    :goto_36
    iget-object v2, p0, Lorg/tukaani/xz/lzma/LZMACoder;->isRep0Long:[[S

    array-length v3, v2

    if-ge v0, v3, :cond_43

    .line 75
    aget-object v2, v2, v0

    invoke-static {v2}, Lorg/tukaani/xz/rangecoder/RangeCoder;->initProbs([S)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_36

    :cond_43
    move v0, v1

    .line 77
    :goto_44
    iget-object v2, p0, Lorg/tukaani/xz/lzma/LZMACoder;->distSlots:[[S

    array-length v3, v2

    if-ge v0, v3, :cond_51

    .line 78
    aget-object v2, v2, v0

    invoke-static {v2}, Lorg/tukaani/xz/rangecoder/RangeCoder;->initProbs([S)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_44

    .line 80
    :cond_51
    :goto_51
    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMACoder;->distSpecial:[[S

    array-length v2, v0

    if-ge v1, v2, :cond_5e

    .line 81
    aget-object v0, v0, v1

    invoke-static {v0}, Lorg/tukaani/xz/rangecoder/RangeCoder;->initProbs([S)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_51

    .line 83
    :cond_5e
    iget-object p0, p0, Lorg/tukaani/xz/lzma/LZMACoder;->distAlign:[S

    invoke-static {p0}, Lorg/tukaani/xz/rangecoder/RangeCoder;->initProbs([S)V

    return-void
.end method

###### Class org.tukaani.xz.lzma.LZMACoder.LengthCoder (org.tukaani.xz.lzma.LZMACoder$LengthCoder)
.class abstract Lorg/tukaani/xz/lzma/LZMACoder$LengthCoder;
.super Ljava/lang/Object;
.source "LZMACoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/tukaani/xz/lzma/LZMACoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "LengthCoder"
.end annotation


# static fields
.field static final HIGH_SYMBOLS:I = 0x100

.field static final LOW_SYMBOLS:I = 0x8

.field static final MID_SYMBOLS:I = 0x8


# instance fields
.field final choice:[S

.field final high:[S

.field final low:[[S

.field final mid:[[S

.field final synthetic this$0:Lorg/tukaani/xz/lzma/LZMACoder;


# direct methods
.method public constructor <init>(Lorg/tukaani/xz/lzma/LZMACoder;)V
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 113
    iput-object p1, p0, Lorg/tukaani/xz/lzma/LZMACoder$LengthCoder;->this$0:Lorg/tukaani/xz/lzma/LZMACoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x2

    .line 118
    new-array v0, p1, [S

    iput-object v0, p0, Lorg/tukaani/xz/lzma/LZMACoder$LengthCoder;->choice:[S

    .line 119
    new-array v0, p1, [I

    const/4 v1, 0x1

    const/16 v2, 0x8

    aput v2, v0, v1

    const/4 v3, 0x0

    const/16 v4, 0x10

    aput v4, v0, v3

    sget-object v5, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[S

    iput-object v0, p0, Lorg/tukaani/xz/lzma/LZMACoder$LengthCoder;->low:[[S

    .line 120
    new-array p1, p1, [I

    aput v2, p1, v1

    aput v4, p1, v3

    invoke-static {v5, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[S

    iput-object p1, p0, Lorg/tukaani/xz/lzma/LZMACoder$LengthCoder;->mid:[[S

    const/16 p1, 0x100

    .line 121
    new-array p1, p1, [S

    iput-object p1, p0, Lorg/tukaani/xz/lzma/LZMACoder$LengthCoder;->high:[S

    return-void
.end method


# virtual methods
.method public reset()V
    .registers 5

    .line 124
    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMACoder$LengthCoder;->choice:[S

    invoke-static {v0}, Lorg/tukaani/xz/rangecoder/RangeCoder;->initProbs([S)V

    const/4 v0, 0x0

    move v1, v0

    .line 126
    :goto_7
    iget-object v2, p0, Lorg/tukaani/xz/lzma/LZMACoder$LengthCoder;->low:[[S

    array-length v3, v2

    if-ge v1, v3, :cond_14

    .line 127
    aget-object v2, v2, v1

    invoke-static {v2}, Lorg/tukaani/xz/rangecoder/RangeCoder;->initProbs([S)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 129
    :cond_14
    :goto_14
    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMACoder$LengthCoder;->low:[[S

    array-length v1, v1

    if-ge v0, v1, :cond_23

    .line 130
    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMACoder$LengthCoder;->mid:[[S

    aget-object v1, v1, v0

    invoke-static {v1}, Lorg/tukaani/xz/rangecoder/RangeCoder;->initProbs([S)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 132
    :cond_23
    iget-object p0, p0, Lorg/tukaani/xz/lzma/LZMACoder$LengthCoder;->high:[S

    invoke-static {p0}, Lorg/tukaani/xz/rangecoder/RangeCoder;->initProbs([S)V

    return-void
.end method

###### Class org.tukaani.xz.lzma.LZMACoder.LiteralCoder (org.tukaani.xz.lzma.LZMACoder$LiteralCoder)
.class abstract Lorg/tukaani/xz/lzma/LZMACoder$LiteralCoder;
.super Ljava/lang/Object;
.source "LZMACoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/tukaani/xz/lzma/LZMACoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "LiteralCoder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/tukaani/xz/lzma/LZMACoder$LiteralCoder$LiteralSubcoder;
    }
.end annotation


# instance fields
.field private final lc:I

.field private final literalPosMask:I

.field final synthetic this$0:Lorg/tukaani/xz/lzma/LZMACoder;


# direct methods
.method public constructor <init>(Lorg/tukaani/xz/lzma/LZMACoder;II)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 91
    iput-object p1, p0, Lorg/tukaani/xz/lzma/LZMACoder$LiteralCoder;->this$0:Lorg/tukaani/xz/lzma/LZMACoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput p2, p0, Lorg/tukaani/xz/lzma/LZMACoder$LiteralCoder;->lc:I

    const/4 p1, 0x1

    shl-int p2, p1, p3

    sub-int/2addr p2, p1

    .line 93
    iput p2, p0, Lorg/tukaani/xz/lzma/LZMACoder$LiteralCoder;->literalPosMask:I

    return-void
.end method


# virtual methods
.method public final getSubcoderIndex(II)I
    .registers 5

    .line 97
    iget v0, p0, Lorg/tukaani/xz/lzma/LZMACoder$LiteralCoder;->lc:I

    rsub-int/lit8 v1, v0, 0x8

    shr-int/2addr p1, v1

    .line 98
    iget p0, p0, Lorg/tukaani/xz/lzma/LZMACoder$LiteralCoder;->literalPosMask:I

    and-int/2addr p0, p2

    shl-int/2addr p0, v0

    add-int/2addr p1, p0

    return p1
.end method

###### Class org.tukaani.xz.lzma.LZMACoder.LiteralCoder.LiteralSubcoder (org.tukaani.xz.lzma.LZMACoder$LiteralCoder$LiteralSubcoder)
.class abstract Lorg/tukaani/xz/lzma/LZMACoder$LiteralCoder$LiteralSubcoder;
.super Ljava/lang/Object;
.source "LZMACoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/tukaani/xz/lzma/LZMACoder$LiteralCoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "LiteralSubcoder"
.end annotation


# instance fields
.field final probs:[S

.field final synthetic this$1:Lorg/tukaani/xz/lzma/LZMACoder$LiteralCoder;


# direct methods
.method public constructor <init>(Lorg/tukaani/xz/lzma/LZMACoder$LiteralCoder;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 103
    iput-object p1, p0, Lorg/tukaani/xz/lzma/LZMACoder$LiteralCoder$LiteralSubcoder;->this$1:Lorg/tukaani/xz/lzma/LZMACoder$LiteralCoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x300

    .line 104
    new-array p1, p1, [S

    iput-object p1, p0, Lorg/tukaani/xz/lzma/LZMACoder$LiteralCoder$LiteralSubcoder;->probs:[S

    return-void
.end method


# virtual methods
.method public reset()V
    .registers 1

    .line 107
    iget-object p0, p0, Lorg/tukaani/xz/lzma/LZMACoder$LiteralCoder$LiteralSubcoder;->probs:[S

    invoke-static {p0}, Lorg/tukaani/xz/rangecoder/RangeCoder;->initProbs([S)V

    return-void
.end method
