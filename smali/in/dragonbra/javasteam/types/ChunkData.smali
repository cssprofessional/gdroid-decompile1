###### Class in.dragonbra.javasteam.types.ChunkData (in.dragonbra.javasteam.types.ChunkData)
.class public final Lin/dragonbra/javasteam/types/ChunkData;
.super Ljava/lang/Object;
.source "ChunkData.kt"


# instance fields
.field private checksum:I

.field private chunkID:[B

.field private compressedLength:I

.field private offset:J

.field private uncompressedLength:I


# direct methods
.method public constructor <init>()V
    .registers 10

    .line 0
    const/16 v7, 0x1f

    const/4 v8, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lin/dragonbra/javasteam/types/ChunkData;-><init>([BIJIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>([BIJII)V
    .registers 7

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lin/dragonbra/javasteam/types/ChunkData;->chunkID:[B

    .line 18
    iput p2, p0, Lin/dragonbra/javasteam/types/ChunkData;->checksum:I

    .line 19
    iput-wide p3, p0, Lin/dragonbra/javasteam/types/ChunkData;->offset:J

    .line 20
    iput p5, p0, Lin/dragonbra/javasteam/types/ChunkData;->compressedLength:I

    .line 21
    iput p6, p0, Lin/dragonbra/javasteam/types/ChunkData;->uncompressedLength:I

    return-void
.end method

.method public synthetic constructor <init>([BIJIIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 13

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_5

    const/4 p1, 0x0

    :cond_5
    and-int/lit8 p8, p7, 0x2

    const/4 v0, 0x0

    if-eqz p8, :cond_c

    move p8, v0

    goto :goto_d

    :cond_c
    move p8, p2

    :goto_d
    and-int/lit8 p2, p7, 0x4

    if-eqz p2, :cond_13

    const-wide/16 p3, 0x0

    :cond_13
    move-wide v1, p3

    and-int/lit8 p2, p7, 0x8

    if-eqz p2, :cond_1a

    move v3, v0

    goto :goto_1b

    :cond_1a
    move v3, p5

    :goto_1b
    and-int/lit8 p2, p7, 0x10

    if-eqz p2, :cond_20

    goto :goto_21

    :cond_20
    move v0, p6

    :goto_21
    move-object p2, p0

    move-object p3, p1

    move p4, p8

    move-wide p5, v1

    move p7, v3

    move p8, v0

    .line 16
    invoke-direct/range {p2 .. p8}, Lin/dragonbra/javasteam/types/ChunkData;-><init>([BIJII)V

    return-void
.end method

.method public static synthetic copy$default(Lin/dragonbra/javasteam/types/ChunkData;[BIJIIILjava/lang/Object;)Lin/dragonbra/javasteam/types/ChunkData;
    .registers 13

    .line 0
    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_6

    iget-object p1, p0, Lin/dragonbra/javasteam/types/ChunkData;->chunkID:[B

    :cond_6
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_c

    iget p2, p0, Lin/dragonbra/javasteam/types/ChunkData;->checksum:I

    :cond_c
    move p8, p2

    and-int/lit8 p2, p7, 0x4

    if-eqz p2, :cond_13

    iget-wide p3, p0, Lin/dragonbra/javasteam/types/ChunkData;->offset:J

    :cond_13
    move-wide v0, p3

    and-int/lit8 p2, p7, 0x8

    if-eqz p2, :cond_1a

    iget p5, p0, Lin/dragonbra/javasteam/types/ChunkData;->compressedLength:I

    :cond_1a
    move v2, p5

    and-int/lit8 p2, p7, 0x10

    if-eqz p2, :cond_21

    iget p6, p0, Lin/dragonbra/javasteam/types/ChunkData;->uncompressedLength:I

    :cond_21
    move v3, p6

    move-object p2, p0

    move-object p3, p1

    move p4, p8

    move-wide p5, v0

    move p7, v2

    move p8, v3

    invoke-virtual/range {p2 .. p8}, Lin/dragonbra/javasteam/types/ChunkData;->copy([BIJII)Lin/dragonbra/javasteam/types/ChunkData;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()[B
    .registers 1

    .line 0
    iget-object p0, p0, Lin/dragonbra/javasteam/types/ChunkData;->chunkID:[B

    return-object p0
.end method

.method public final component2()I
    .registers 1

    .line 0
    iget p0, p0, Lin/dragonbra/javasteam/types/ChunkData;->checksum:I

    return p0
.end method

.method public final component3()J
    .registers 3

    .line 0
    iget-wide v0, p0, Lin/dragonbra/javasteam/types/ChunkData;->offset:J

    return-wide v0
.end method

.method public final component4()I
    .registers 1

    .line 0
    iget p0, p0, Lin/dragonbra/javasteam/types/ChunkData;->compressedLength:I

    return p0
.end method

.method public final component5()I
    .registers 1

    .line 0
    iget p0, p0, Lin/dragonbra/javasteam/types/ChunkData;->uncompressedLength:I

    return p0
.end method

.method public final copy([BIJII)Lin/dragonbra/javasteam/types/ChunkData;
    .registers 14

    .line 0
    new-instance p0, Lin/dragonbra/javasteam/types/ChunkData;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lin/dragonbra/javasteam/types/ChunkData;-><init>([BIJII)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lin/dragonbra/javasteam/types/ChunkData;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lin/dragonbra/javasteam/types/ChunkData;

    iget-object v1, p0, Lin/dragonbra/javasteam/types/ChunkData;->chunkID:[B

    iget-object v3, p1, Lin/dragonbra/javasteam/types/ChunkData;->chunkID:[B

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget v1, p0, Lin/dragonbra/javasteam/types/ChunkData;->checksum:I

    iget v3, p1, Lin/dragonbra/javasteam/types/ChunkData;->checksum:I

    if-eq v1, v3, :cond_1e

    return v2

    :cond_1e
    iget-wide v3, p0, Lin/dragonbra/javasteam/types/ChunkData;->offset:J

    iget-wide v5, p1, Lin/dragonbra/javasteam/types/ChunkData;->offset:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_27

    return v2

    :cond_27
    iget v1, p0, Lin/dragonbra/javasteam/types/ChunkData;->compressedLength:I

    iget v3, p1, Lin/dragonbra/javasteam/types/ChunkData;->compressedLength:I

    if-eq v1, v3, :cond_2e

    return v2

    :cond_2e
    iget p0, p0, Lin/dragonbra/javasteam/types/ChunkData;->uncompressedLength:I

    iget p1, p1, Lin/dragonbra/javasteam/types/ChunkData;->uncompressedLength:I

    if-eq p0, p1, :cond_35

    return v2

    :cond_35
    return v0
.end method

.method public final getChecksum()I
    .registers 1

    .line 18
    iget p0, p0, Lin/dragonbra/javasteam/types/ChunkData;->checksum:I

    return p0
.end method

.method public final getChunkID()[B
    .registers 1

    .line 17
    iget-object p0, p0, Lin/dragonbra/javasteam/types/ChunkData;->chunkID:[B

    return-object p0
.end method

.method public final getCompressedLength()I
    .registers 1

    .line 20
    iget p0, p0, Lin/dragonbra/javasteam/types/ChunkData;->compressedLength:I

    return p0
.end method

.method public final getOffset()J
    .registers 3

    .line 19
    iget-wide v0, p0, Lin/dragonbra/javasteam/types/ChunkData;->offset:J

    return-wide v0
.end method

.method public final getUncompressedLength()I
    .registers 1

    .line 21
    iget p0, p0, Lin/dragonbra/javasteam/types/ChunkData;->uncompressedLength:I

    return p0
.end method

.method public hashCode()I
    .registers 4

    .line 0
    iget-object v0, p0, Lin/dragonbra/javasteam/types/ChunkData;->chunkID:[B

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_a

    :cond_6
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    :goto_a
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lin/dragonbra/javasteam/types/ChunkData;->checksum:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lin/dragonbra/javasteam/types/ChunkData;->offset:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lin/dragonbra/javasteam/types/ChunkData;->compressedLength:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lin/dragonbra/javasteam/types/ChunkData;->uncompressedLength:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public final setChecksum(I)V
    .registers 2

    .line 18
    iput p1, p0, Lin/dragonbra/javasteam/types/ChunkData;->checksum:I

    return-void
.end method

.method public final setChunkID([B)V
    .registers 2

    .line 17
    iput-object p1, p0, Lin/dragonbra/javasteam/types/ChunkData;->chunkID:[B

    return-void
.end method

.method public final setCompressedLength(I)V
    .registers 2

    .line 20
    iput p1, p0, Lin/dragonbra/javasteam/types/ChunkData;->compressedLength:I

    return-void
.end method

.method public final setOffset(J)V
    .registers 3

    .line 19
    iput-wide p1, p0, Lin/dragonbra/javasteam/types/ChunkData;->offset:J

    return-void
.end method

.method public final setUncompressedLength(I)V
    .registers 2

    .line 21
    iput p1, p0, Lin/dragonbra/javasteam/types/ChunkData;->uncompressedLength:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 8

    .line 0
    iget-object v0, p0, Lin/dragonbra/javasteam/types/ChunkData;->chunkID:[B

    invoke-static {v0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lin/dragonbra/javasteam/types/ChunkData;->checksum:I

    iget-wide v2, p0, Lin/dragonbra/javasteam/types/ChunkData;->offset:J

    iget v4, p0, Lin/dragonbra/javasteam/types/ChunkData;->compressedLength:I

    iget p0, p0, Lin/dragonbra/javasteam/types/ChunkData;->uncompressedLength:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ChunkData(chunkID="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", checksum="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", offset="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", compressedLength="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", uncompressedLength="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
