###### Class in.dragonbra.javasteam.types.BitVector64 (in.dragonbra.javasteam.types.BitVector64)
.class public final Lin/dragonbra/javasteam/types/BitVector64;
.super Ljava/lang/Object;
.source "BitVector64.kt"


# instance fields
.field private data:J


# direct methods
.method public constructor <init>(J)V
    .registers 3

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lin/dragonbra/javasteam/types/BitVector64;->data:J

    return-void
.end method


# virtual methods
.method public final getData()J
    .registers 3

    .line 3
    iget-wide v0, p0, Lin/dragonbra/javasteam/types/BitVector64;->data:J

    return-wide v0
.end method

.method public final getMask(IJ)J
    .registers 6

    .line 5
    iget-wide v0, p0, Lin/dragonbra/javasteam/types/BitVector64;->data:J

    shr-long p0, v0, p1

    and-long/2addr p0, p2

    return-wide p0
.end method

.method public final setData(J)V
    .registers 3

    .line 3
    iput-wide p1, p0, Lin/dragonbra/javasteam/types/BitVector64;->data:J

    return-void
.end method

.method public final setMask(IJJ)V
    .registers 10

    .line 8
    iget-wide v0, p0, Lin/dragonbra/javasteam/types/BitVector64;->data:J

    shl-long v2, p2, p1

    not-long v2, v2

    and-long/2addr v0, v2

    and-long/2addr p2, p4

    shl-long p1, p2, p1

    or-long/2addr p1, v0

    iput-wide p1, p0, Lin/dragonbra/javasteam/types/BitVector64;->data:J

    return-void
.end method
