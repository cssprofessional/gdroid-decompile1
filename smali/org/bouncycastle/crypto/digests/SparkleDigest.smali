###### Class org.bouncycastle.crypto.digests.SparkleDigest (org.bouncycastle.crypto.digests.SparkleDigest)
.class public Lorg/bouncycastle/crypto/digests/SparkleDigest;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/ExtendedDigest;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/crypto/digests/SparkleDigest$Friend;,
        Lorg/bouncycastle/crypto/digests/SparkleDigest$SparkleParameters;
    }
.end annotation


# static fields
.field private static final RATE_BYTES:I = 0x10

.field private static final RATE_WORDS:I = 0x4


# instance fields
.field private final DIGEST_BYTES:I

.field private final SPARKLE_STEPS_BIG:I

.field private final SPARKLE_STEPS_SLIM:I

.field private final STATE_WORDS:I

.field private algorithmName:Ljava/lang/String;

.field private final m_buf:[B

.field private m_bufPos:I

.field private final state:[I


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/digests/SparkleDigest$SparkleParameters;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v1, v0, [B

    iput-object v1, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->m_buf:[B

    const/4 v1, 0x0

    iput v1, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->m_bufPos:I

    sget-object v1, Lorg/bouncycastle/crypto/digests/SparkleDigest$1;->$SwitchMap$org$bouncycastle$crypto$digests$SparkleDigest$SparkleParameters:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x1

    const/16 v2, 0xc

    if-eq p1, v1, :cond_35

    const/4 v1, 0x2

    if-ne p1, v1, :cond_2d

    const-string p1, "ESCH-384"

    iput-object p1, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->algorithmName:Ljava/lang/String;

    const/16 p1, 0x30

    iput p1, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->DIGEST_BYTES:I

    const/16 p1, 0x8

    iput p1, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->SPARKLE_STEPS_SLIM:I

    iput v2, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->SPARKLE_STEPS_BIG:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->STATE_WORDS:I

    goto :goto_46

    :cond_2d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid definition of SCHWAEMM instance"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_35
    const-string p1, "ESCH-256"

    iput-object p1, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->algorithmName:Ljava/lang/String;

    const/16 p1, 0x20

    iput p1, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->DIGEST_BYTES:I

    const/4 p1, 0x7

    iput p1, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->SPARKLE_STEPS_SLIM:I

    const/16 p1, 0xb

    iput p1, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->SPARKLE_STEPS_BIG:I

    iput v2, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->STATE_WORDS:I

    :goto_46
    iget p1, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->STATE_WORDS:I

    new-array p1, p1, [I

    iput-object p1, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->state:[I

    return-void
.end method

.method private static ELL(I)I
    .registers 3

    .line 0
    const/16 v0, 0x10

    invoke-static {p0, v0}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v0

    const v1, 0xffff

    and-int/2addr p0, v1

    xor-int/2addr p0, v0

    return p0
.end method

.method private processBlock([BII)V
    .registers 11

    .line 0
    invoke-static {p1, p2}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v0

    add-int/lit8 v1, p2, 0x4

    invoke-static {p1, v1}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v1

    add-int/lit8 v2, p2, 0x8

    invoke-static {p1, v2}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v2

    add-int/lit8 p2, p2, 0xc

    invoke-static {p1, p2}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result p1

    xor-int p2, v0, v2

    invoke-static {p2}, Lorg/bouncycastle/crypto/digests/SparkleDigest;->ELL(I)I

    move-result p2

    xor-int v3, v1, p1

    invoke-static {v3}, Lorg/bouncycastle/crypto/digests/SparkleDigest;->ELL(I)I

    move-result v3

    iget-object v4, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->state:[I

    const/4 v5, 0x0

    aget v6, v4, v5

    xor-int/2addr v0, v3

    xor-int/2addr v0, v6

    aput v0, v4, v5

    const/4 v0, 0x1

    aget v5, v4, v0

    xor-int/2addr v1, p2

    xor-int/2addr v1, v5

    aput v1, v4, v0

    const/4 v0, 0x2

    aget v1, v4, v0

    xor-int/2addr v2, v3

    xor-int/2addr v1, v2

    aput v1, v4, v0

    const/4 v0, 0x3

    aget v1, v4, v0

    xor-int/2addr p1, p2

    xor-int/2addr p1, v1

    aput p1, v4, v0

    const/4 p1, 0x4

    aget v0, v4, p1

    xor-int/2addr v0, v3

    aput v0, v4, p1

    const/4 p1, 0x5

    aget v0, v4, p1

    xor-int/2addr v0, p2

    aput v0, v4, p1

    iget p1, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->STATE_WORDS:I

    const/16 v0, 0x10

    if-ne p1, v0, :cond_68

    const/4 p1, 0x6

    aget v0, v4, p1

    xor-int/2addr v0, v3

    aput v0, v4, p1

    const/4 p1, 0x7

    aget v0, v4, p1

    xor-int/2addr p2, v0

    aput p2, v4, p1

    invoke-static {}, Lorg/bouncycastle/crypto/digests/SparkleDigest$Friend;->access$000()Lorg/bouncycastle/crypto/digests/SparkleDigest$Friend;

    move-result-object p1

    iget-object p0, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->state:[I

    invoke-static {p1, p0, p3}, Lorg/bouncycastle/crypto/engines/SparkleEngine;->sparkle_opt16(Lorg/bouncycastle/crypto/digests/SparkleDigest$Friend;[II)V

    goto :goto_71

    :cond_68
    invoke-static {}, Lorg/bouncycastle/crypto/digests/SparkleDigest$Friend;->access$000()Lorg/bouncycastle/crypto/digests/SparkleDigest$Friend;

    move-result-object p1

    iget-object p0, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->state:[I

    invoke-static {p1, p0, p3}, Lorg/bouncycastle/crypto/engines/SparkleEngine;->sparkle_opt12(Lorg/bouncycastle/crypto/digests/SparkleDigest$Friend;[II)V

    :goto_71
    return-void
.end method


# virtual methods
.method public doFinal([BI)I
    .registers 10

    .line 0
    array-length v0, p1

    iget v1, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->DIGEST_BYTES:I

    sub-int/2addr v0, v1

    if-gt p2, v0, :cond_8b

    iget v0, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->m_bufPos:I

    const/16 v1, 0x10

    const/4 v2, 0x0

    if-ge v0, v1, :cond_2f

    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->state:[I

    iget v4, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->STATE_WORDS:I

    shr-int/lit8 v4, v4, 0x1

    add-int/lit8 v4, v4, -0x1

    aget v5, v3, v4

    const/high16 v6, 0x1000000

    xor-int/2addr v5, v6

    aput v5, v3, v4

    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->m_buf:[B

    const/16 v4, -0x80

    aput-byte v4, v3, v0

    :goto_22
    iget v0, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->m_bufPos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->m_bufPos:I

    if-ge v0, v1, :cond_3e

    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->m_buf:[B

    aput-byte v2, v3, v0

    goto :goto_22

    :cond_2f
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->state:[I

    iget v3, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->STATE_WORDS:I

    shr-int/lit8 v3, v3, 0x1

    add-int/lit8 v3, v3, -0x1

    aget v4, v0, v3

    const/high16 v5, 0x2000000

    xor-int/2addr v4, v5

    aput v4, v0, v3

    :cond_3e
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->m_buf:[B

    iget v3, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->SPARKLE_STEPS_BIG:I

    invoke-direct {p0, v0, v2, v3}, Lorg/bouncycastle/crypto/digests/SparkleDigest;->processBlock([BII)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->state:[I

    const/4 v3, 0x4

    invoke-static {v0, v2, v3, p1, p2}, Lorg/bouncycastle/util/Pack;->intToLittleEndian([III[BI)V

    iget v0, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->STATE_WORDS:I

    if-ne v0, v1, :cond_74

    invoke-static {}, Lorg/bouncycastle/crypto/digests/SparkleDigest$Friend;->access$000()Lorg/bouncycastle/crypto/digests/SparkleDigest$Friend;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->state:[I

    iget v4, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->SPARKLE_STEPS_SLIM:I

    invoke-static {v0, v1, v4}, Lorg/bouncycastle/crypto/engines/SparkleEngine;->sparkle_opt16(Lorg/bouncycastle/crypto/digests/SparkleDigest$Friend;[II)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->state:[I

    add-int/lit8 v1, p2, 0x10

    invoke-static {v0, v2, v3, p1, v1}, Lorg/bouncycastle/util/Pack;->intToLittleEndian([III[BI)V

    invoke-static {}, Lorg/bouncycastle/crypto/digests/SparkleDigest$Friend;->access$000()Lorg/bouncycastle/crypto/digests/SparkleDigest$Friend;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->state:[I

    iget v4, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->SPARKLE_STEPS_SLIM:I

    invoke-static {v0, v1, v4}, Lorg/bouncycastle/crypto/engines/SparkleEngine;->sparkle_opt16(Lorg/bouncycastle/crypto/digests/SparkleDigest$Friend;[II)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->state:[I

    add-int/lit8 p2, p2, 0x20

    invoke-static {v0, v2, v3, p1, p2}, Lorg/bouncycastle/util/Pack;->intToLittleEndian([III[BI)V

    goto :goto_85

    :cond_74
    invoke-static {}, Lorg/bouncycastle/crypto/digests/SparkleDigest$Friend;->access$000()Lorg/bouncycastle/crypto/digests/SparkleDigest$Friend;

    move-result-object v0

    iget-object v4, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->state:[I

    iget v5, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->SPARKLE_STEPS_SLIM:I

    invoke-static {v0, v4, v5}, Lorg/bouncycastle/crypto/engines/SparkleEngine;->sparkle_opt12(Lorg/bouncycastle/crypto/digests/SparkleDigest$Friend;[II)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->state:[I

    add-int/2addr p2, v1

    invoke-static {v0, v2, v3, p1, p2}, Lorg/bouncycastle/util/Pack;->intToLittleEndian([III[BI)V

    :goto_85
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/SparkleDigest;->reset()V

    iget p0, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->DIGEST_BYTES:I

    return p0

    :cond_8b
    new-instance p1, Lorg/bouncycastle/crypto/OutputLengthException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->algorithmName:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " input buffer too short"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->algorithmName:Ljava/lang/String;

    return-object p0
.end method

.method public getByteLength()I
    .registers 1

    .line 0
    const/16 p0, 0x10

    return p0
.end method

.method public getDigestSize()I
    .registers 1

    .line 0
    iget p0, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->DIGEST_BYTES:I

    return p0
.end method

.method public reset()V
    .registers 3

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->state:[I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Arrays;->fill([II)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->m_buf:[B

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    iput v1, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->m_bufPos:I

    return-void
.end method

.method public update(B)V
    .registers 5

    .line 0
    iget v0, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->m_bufPos:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_10

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->m_buf:[B

    iget v1, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->SPARKLE_STEPS_SLIM:I

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, v1}, Lorg/bouncycastle/crypto/digests/SparkleDigest;->processBlock([BII)V

    iput v2, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->m_bufPos:I

    :cond_10
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->m_buf:[B

    iget v1, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->m_bufPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->m_bufPos:I

    aput-byte p1, v0, v1

    return-void
.end method

.method public update([BII)V
    .registers 8

    .line 0
    array-length v0, p1

    sub-int/2addr v0, p3

    if-gt p2, v0, :cond_43

    const/4 v0, 0x1

    if-ge p3, v0, :cond_8

    return-void

    :cond_8
    iget v0, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->m_bufPos:I

    rsub-int/lit8 v1, v0, 0x10

    if-gt p3, v1, :cond_19

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->m_buf:[B

    invoke-static {p1, p2, v1, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->m_bufPos:I

    add-int/2addr p1, p3

    iput p1, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->m_bufPos:I

    return-void

    :cond_19
    const/4 v2, 0x0

    if-lez v0, :cond_29

    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->m_buf:[B

    invoke-static {p1, p2, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->m_buf:[B

    iget v3, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->SPARKLE_STEPS_SLIM:I

    invoke-direct {p0, v0, v2, v3}, Lorg/bouncycastle/crypto/digests/SparkleDigest;->processBlock([BII)V

    goto :goto_2a

    :cond_29
    move v1, v2

    :goto_2a
    sub-int v0, p3, v1

    const/16 v3, 0x10

    if-le v0, v3, :cond_3a

    add-int v0, p2, v1

    iget v3, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->SPARKLE_STEPS_SLIM:I

    invoke-direct {p0, p1, v0, v3}, Lorg/bouncycastle/crypto/digests/SparkleDigest;->processBlock([BII)V

    add-int/lit8 v1, v1, 0x10

    goto :goto_2a

    :cond_3a
    add-int/2addr p2, v1

    iget-object p3, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->m_buf:[B

    invoke-static {p1, p2, p3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v0, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->m_bufPos:I

    return-void

    :cond_43
    new-instance p1, Lorg/bouncycastle/crypto/DataLengthException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->algorithmName:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " input buffer too short"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

###### Class org.bouncycastle.crypto.digests.SparkleDigest.AnonymousClass1 (org.bouncycastle.crypto.digests.SparkleDigest$1)
.class synthetic Lorg/bouncycastle/crypto/digests/SparkleDigest$1;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/digests/SparkleDigest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$org$bouncycastle$crypto$digests$SparkleDigest$SparkleParameters:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 0
    invoke-static {}, Lorg/bouncycastle/crypto/digests/SparkleDigest$SparkleParameters;->values()[Lorg/bouncycastle/crypto/digests/SparkleDigest$SparkleParameters;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/bouncycastle/crypto/digests/SparkleDigest$1;->$SwitchMap$org$bouncycastle$crypto$digests$SparkleDigest$SparkleParameters:[I

    :try_start_9
    sget-object v1, Lorg/bouncycastle/crypto/digests/SparkleDigest$SparkleParameters;->ESCH256:Lorg/bouncycastle/crypto/digests/SparkleDigest$SparkleParameters;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lorg/bouncycastle/crypto/digests/SparkleDigest$1;->$SwitchMap$org$bouncycastle$crypto$digests$SparkleDigest$SparkleParameters:[I

    sget-object v1, Lorg/bouncycastle/crypto/digests/SparkleDigest$SparkleParameters;->ESCH384:Lorg/bouncycastle/crypto/digests/SparkleDigest$SparkleParameters;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    return-void
.end method

###### Class org.bouncycastle.crypto.digests.SparkleDigest.Friend (org.bouncycastle.crypto.digests.SparkleDigest$Friend)
.class public Lorg/bouncycastle/crypto/digests/SparkleDigest$Friend;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/digests/SparkleDigest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Friend"
.end annotation


# static fields
.field private static final INSTANCE:Lorg/bouncycastle/crypto/digests/SparkleDigest$Friend;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lorg/bouncycastle/crypto/digests/SparkleDigest$Friend;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/digests/SparkleDigest$Friend;-><init>()V

    sput-object v0, Lorg/bouncycastle/crypto/digests/SparkleDigest$Friend;->INSTANCE:Lorg/bouncycastle/crypto/digests/SparkleDigest$Friend;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000()Lorg/bouncycastle/crypto/digests/SparkleDigest$Friend;
    .registers 1

    .line 0
    sget-object v0, Lorg/bouncycastle/crypto/digests/SparkleDigest$Friend;->INSTANCE:Lorg/bouncycastle/crypto/digests/SparkleDigest$Friend;

    return-object v0
.end method

###### Class org.bouncycastle.crypto.digests.SparkleDigest.SparkleParameters (org.bouncycastle.crypto.digests.SparkleDigest$SparkleParameters)
.class public final enum Lorg/bouncycastle/crypto/digests/SparkleDigest$SparkleParameters;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/digests/SparkleDigest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SparkleParameters"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/bouncycastle/crypto/digests/SparkleDigest$SparkleParameters;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/bouncycastle/crypto/digests/SparkleDigest$SparkleParameters;

.field public static final enum ESCH256:Lorg/bouncycastle/crypto/digests/SparkleDigest$SparkleParameters;

.field public static final enum ESCH384:Lorg/bouncycastle/crypto/digests/SparkleDigest$SparkleParameters;


# direct methods
.method private static synthetic $values()[Lorg/bouncycastle/crypto/digests/SparkleDigest$SparkleParameters;
    .registers 2

    .line 0
    sget-object v0, Lorg/bouncycastle/crypto/digests/SparkleDigest$SparkleParameters;->ESCH256:Lorg/bouncycastle/crypto/digests/SparkleDigest$SparkleParameters;

    sget-object v1, Lorg/bouncycastle/crypto/digests/SparkleDigest$SparkleParameters;->ESCH384:Lorg/bouncycastle/crypto/digests/SparkleDigest$SparkleParameters;

    filled-new-array {v0, v1}, [Lorg/bouncycastle/crypto/digests/SparkleDigest$SparkleParameters;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 0
    new-instance v0, Lorg/bouncycastle/crypto/digests/SparkleDigest$SparkleParameters;

    const-string v1, "ESCH256"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/crypto/digests/SparkleDigest$SparkleParameters;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/crypto/digests/SparkleDigest$SparkleParameters;->ESCH256:Lorg/bouncycastle/crypto/digests/SparkleDigest$SparkleParameters;

    new-instance v0, Lorg/bouncycastle/crypto/digests/SparkleDigest$SparkleParameters;

    const-string v1, "ESCH384"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/crypto/digests/SparkleDigest$SparkleParameters;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/crypto/digests/SparkleDigest$SparkleParameters;->ESCH384:Lorg/bouncycastle/crypto/digests/SparkleDigest$SparkleParameters;

    invoke-static {}, Lorg/bouncycastle/crypto/digests/SparkleDigest$SparkleParameters;->$values()[Lorg/bouncycastle/crypto/digests/SparkleDigest$SparkleParameters;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/crypto/digests/SparkleDigest$SparkleParameters;->$VALUES:[Lorg/bouncycastle/crypto/digests/SparkleDigest$SparkleParameters;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 0
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/bouncycastle/crypto/digests/SparkleDigest$SparkleParameters;
    .registers 2

    .line 0
    const-class v0, Lorg/bouncycastle/crypto/digests/SparkleDigest$SparkleParameters;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/crypto/digests/SparkleDigest$SparkleParameters;

    return-object p0
.end method

.method public static values()[Lorg/bouncycastle/crypto/digests/SparkleDigest$SparkleParameters;
    .registers 1

    .line 0
    sget-object v0, Lorg/bouncycastle/crypto/digests/SparkleDigest$SparkleParameters;->$VALUES:[Lorg/bouncycastle/crypto/digests/SparkleDigest$SparkleParameters;

    invoke-virtual {v0}, [Lorg/bouncycastle/crypto/digests/SparkleDigest$SparkleParameters;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/bouncycastle/crypto/digests/SparkleDigest$SparkleParameters;

    return-object v0
.end method
