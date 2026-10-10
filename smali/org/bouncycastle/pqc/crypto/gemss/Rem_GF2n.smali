###### Class org.bouncycastle.pqc.crypto.gemss.Rem_GF2n (org.bouncycastle.pqc.crypto.gemss.Rem_GF2n)
.class abstract Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM192_SPECIALIZED_TRINOMIAL_GF2X;,
        Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM288_SPECIALIZED_TRINOMIAL_GF2X;,
        Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_SPECIALIZED358_TRINOMIAL_GF2X;,
        Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_SPECIALIZED_TRINOMIAL_GF2X;,
        Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_TRINOMIAL_GF2X;,
        Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM402_SPECIALIZED_TRINOMIAL_GF2X;,
        Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;,
        Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;
    }
.end annotation


# instance fields
.field protected ki:I

.field protected ki64:I

.field protected mask:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract rem_gf2n([JI[J)V
.end method

.method public abstract rem_gf2n_xor([JI[J)V
.end method

###### Class org.bouncycastle.pqc.crypto.gemss.Rem_GF2n.REM192_SPECIALIZED_TRINOMIAL_GF2X (org.bouncycastle.pqc.crypto.gemss.Rem_GF2n$REM192_SPECIALIZED_TRINOMIAL_GF2X)
.class public Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM192_SPECIALIZED_TRINOMIAL_GF2X;
.super Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "REM192_SPECIALIZED_TRINOMIAL_GF2X"
.end annotation


# instance fields
.field private final k3:I

.field private final k364:I

.field private final ki_k3:I


# direct methods
.method public constructor <init>(IIIIJ)V
    .registers 7

    .line 0
    invoke-direct {p0}, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n;-><init>()V

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM192_SPECIALIZED_TRINOMIAL_GF2X;->k3:I

    iput p2, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n;->ki:I

    iput p3, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n;->ki64:I

    iput p4, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM192_SPECIALIZED_TRINOMIAL_GF2X;->k364:I

    iput-wide p5, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n;->mask:J

    sub-int/2addr p2, p1

    iput p2, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM192_SPECIALIZED_TRINOMIAL_GF2X;->ki_k3:I

    return-void
.end method


# virtual methods
.method public rem_gf2n([JI[J)V
    .registers 19

    .line 0
    move-object v0, p0

    const/4 v1, 0x2

    aget-wide v2, p3, v1

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n;->ki:I

    ushr-long/2addr v2, v4

    const/4 v5, 0x3

    aget-wide v5, p3, v5

    iget v7, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n;->ki64:I

    shl-long v8, v5, v7

    xor-long/2addr v2, v8

    ushr-long/2addr v5, v4

    const/4 v8, 0x4

    aget-wide v8, p3, v8

    shl-long v10, v8, v7

    xor-long/2addr v5, v10

    ushr-long/2addr v8, v4

    const/4 v4, 0x5

    aget-wide v10, p3, v4

    shl-long/2addr v10, v7

    xor-long v7, v8, v10

    add-int/lit8 v4, p2, 0x1

    const/4 v9, 0x1

    aget-wide v9, p3, v9

    xor-long/2addr v9, v5

    iget v11, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM192_SPECIALIZED_TRINOMIAL_GF2X;->k364:I

    ushr-long v12, v2, v11

    xor-long/2addr v9, v12

    iget v12, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM192_SPECIALIZED_TRINOMIAL_GF2X;->k3:I

    shl-long v13, v5, v12

    xor-long/2addr v9, v13

    aput-wide v9, p1, v4

    add-int/lit8 v4, p2, 0x2

    aget-wide v9, p3, v1

    xor-long/2addr v9, v7

    ushr-long/2addr v5, v11

    xor-long/2addr v5, v9

    shl-long v9, v7, v12

    xor-long/2addr v5, v9

    iget-wide v9, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n;->mask:J

    and-long/2addr v5, v9

    aput-wide v5, p1, v4

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM192_SPECIALIZED_TRINOMIAL_GF2X;->ki_k3:I

    ushr-long v0, v7, v0

    xor-long/2addr v0, v2

    const/4 v2, 0x0

    aget-wide v2, p3, v2

    xor-long/2addr v2, v0

    shl-long/2addr v0, v12

    xor-long/2addr v0, v2

    aput-wide v0, p1, p2

    return-void
.end method

.method public rem_gf2n_xor([JI[J)V
    .registers 21

    .line 0
    move-object/from16 v0, p0

    const/4 v1, 0x2

    aget-wide v2, p3, v1

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n;->ki:I

    ushr-long/2addr v2, v4

    const/4 v5, 0x3

    aget-wide v5, p3, v5

    iget v7, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n;->ki64:I

    shl-long v8, v5, v7

    xor-long/2addr v2, v8

    ushr-long/2addr v5, v4

    const/4 v8, 0x4

    aget-wide v8, p3, v8

    shl-long v10, v8, v7

    xor-long/2addr v5, v10

    ushr-long/2addr v8, v4

    const/4 v4, 0x5

    aget-wide v10, p3, v4

    shl-long/2addr v10, v7

    xor-long v7, v8, v10

    add-int/lit8 v4, p2, 0x1

    aget-wide v9, p1, v4

    const/4 v11, 0x1

    aget-wide v11, p3, v11

    xor-long/2addr v11, v5

    iget v13, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM192_SPECIALIZED_TRINOMIAL_GF2X;->k364:I

    ushr-long v14, v2, v13

    xor-long/2addr v11, v14

    iget v14, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM192_SPECIALIZED_TRINOMIAL_GF2X;->k3:I

    shl-long v15, v5, v14

    xor-long/2addr v11, v15

    xor-long/2addr v9, v11

    aput-wide v9, p1, v4

    add-int/lit8 v4, p2, 0x2

    aget-wide v9, p1, v4

    aget-wide v11, p3, v1

    xor-long/2addr v11, v7

    ushr-long/2addr v5, v13

    xor-long/2addr v5, v11

    shl-long v11, v7, v14

    xor-long/2addr v5, v11

    iget-wide v11, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n;->mask:J

    and-long/2addr v5, v11

    xor-long/2addr v5, v9

    aput-wide v5, p1, v4

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM192_SPECIALIZED_TRINOMIAL_GF2X;->ki_k3:I

    ushr-long v0, v7, v0

    xor-long/2addr v0, v2

    aget-wide v2, p1, p2

    const/4 v4, 0x0

    aget-wide v4, p3, v4

    xor-long/2addr v4, v0

    shl-long/2addr v0, v14

    xor-long/2addr v0, v4

    xor-long/2addr v0, v2

    aput-wide v0, p1, p2

    return-void
.end method

###### Class org.bouncycastle.pqc.crypto.gemss.Rem_GF2n.REM288_SPECIALIZED_TRINOMIAL_GF2X (org.bouncycastle.pqc.crypto.gemss.Rem_GF2n$REM288_SPECIALIZED_TRINOMIAL_GF2X)
.class public Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM288_SPECIALIZED_TRINOMIAL_GF2X;
.super Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "REM288_SPECIALIZED_TRINOMIAL_GF2X"
.end annotation


# instance fields
.field private final k3:I

.field private final k364:I

.field private final k364ki:I

.field private final k3_ki:I


# direct methods
.method public constructor <init>(IIIIJ)V
    .registers 7

    .line 0
    invoke-direct {p0}, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n;-><init>()V

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM288_SPECIALIZED_TRINOMIAL_GF2X;->k3:I

    iput p2, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n;->ki:I

    iput p3, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n;->ki64:I

    iput p4, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM288_SPECIALIZED_TRINOMIAL_GF2X;->k364:I

    iput-wide p5, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n;->mask:J

    add-int/2addr p4, p2

    iput p4, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM288_SPECIALIZED_TRINOMIAL_GF2X;->k364ki:I

    sub-int/2addr p1, p2

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM288_SPECIALIZED_TRINOMIAL_GF2X;->k3_ki:I

    return-void
.end method


# virtual methods
.method public rem_gf2n([JI[J)V
    .registers 22

    .line 0
    move-object/from16 v0, p0

    const/4 v1, 0x5

    aget-wide v2, p3, v1

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n;->ki:I

    ushr-long/2addr v2, v4

    const/4 v5, 0x6

    aget-wide v5, p3, v5

    iget v7, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n;->ki64:I

    shl-long v8, v5, v7

    xor-long/2addr v2, v8

    ushr-long/2addr v5, v4

    const/4 v8, 0x7

    aget-wide v9, p3, v8

    shl-long/2addr v9, v7

    xor-long/2addr v5, v9

    add-int/lit8 v9, p2, 0x2

    const/4 v10, 0x2

    aget-wide v10, p3, v10

    xor-long/2addr v10, v5

    iget v12, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM288_SPECIALIZED_TRINOMIAL_GF2X;->k364:I

    ushr-long v13, v2, v12

    xor-long/2addr v10, v13

    iget v13, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM288_SPECIALIZED_TRINOMIAL_GF2X;->k3:I

    shl-long v14, v5, v13

    xor-long/2addr v10, v14

    aput-wide v10, p1, v9

    aget-wide v8, p3, v8

    ushr-long/2addr v8, v4

    const/16 v10, 0x8

    aget-wide v14, p3, v10

    shl-long/2addr v14, v7

    xor-long/2addr v8, v14

    add-int/lit8 v11, p2, 0x3

    const/4 v14, 0x3

    aget-wide v14, p3, v14

    xor-long/2addr v14, v8

    ushr-long/2addr v5, v12

    xor-long/2addr v5, v14

    shl-long v14, v8, v13

    xor-long/2addr v5, v14

    aput-wide v5, p1, v11

    aget-wide v5, p3, v10

    ushr-long/2addr v5, v4

    const/4 v10, 0x4

    aget-wide v10, p3, v10

    ushr-long v14, v10, v4

    aget-wide v16, p3, v1

    shl-long v16, v16, v7

    xor-long v14, v14, v16

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM288_SPECIALIZED_TRINOMIAL_GF2X;->k364ki:I

    ushr-long v16, v8, v1

    xor-long v14, v14, v16

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM288_SPECIALIZED_TRINOMIAL_GF2X;->k3_ki:I

    shl-long v16, v5, v1

    xor-long v14, v14, v16

    add-int/lit8 v1, p2, 0x4

    xor-long/2addr v10, v5

    ushr-long v7, v8, v12

    xor-long/2addr v7, v10

    shl-long v4, v5, v13

    xor-long/2addr v4, v7

    iget-wide v6, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n;->mask:J

    and-long/2addr v4, v6

    aput-wide v4, p1, v1

    const/4 v0, 0x0

    aget-wide v0, p3, v0

    xor-long/2addr v0, v14

    shl-long v4, v14, v13

    xor-long/2addr v0, v4

    aput-wide v0, p1, p2

    const/4 v0, 0x1

    add-int/lit8 v1, p2, 0x1

    aget-wide v4, p3, v0

    xor-long/2addr v4, v2

    shl-long/2addr v2, v13

    xor-long/2addr v2, v4

    ushr-long v4, v14, v12

    xor-long/2addr v2, v4

    aput-wide v2, p1, v1

    return-void
.end method

.method public rem_gf2n_xor([JI[J)V
    .registers 25

    .line 0
    move-object/from16 v0, p0

    const/4 v1, 0x5

    aget-wide v2, p3, v1

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n;->ki:I

    ushr-long/2addr v2, v4

    const/4 v5, 0x6

    aget-wide v5, p3, v5

    iget v7, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n;->ki64:I

    shl-long v8, v5, v7

    xor-long/2addr v2, v8

    ushr-long/2addr v5, v4

    const/4 v8, 0x7

    aget-wide v9, p3, v8

    shl-long/2addr v9, v7

    xor-long/2addr v5, v9

    add-int/lit8 v9, p2, 0x2

    aget-wide v10, p1, v9

    const/4 v12, 0x2

    aget-wide v12, p3, v12

    xor-long/2addr v12, v5

    iget v14, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM288_SPECIALIZED_TRINOMIAL_GF2X;->k364:I

    ushr-long v15, v2, v14

    xor-long/2addr v12, v15

    iget v15, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM288_SPECIALIZED_TRINOMIAL_GF2X;->k3:I

    shl-long v16, v5, v15

    xor-long v12, v12, v16

    xor-long/2addr v10, v12

    aput-wide v10, p1, v9

    aget-wide v8, p3, v8

    ushr-long/2addr v8, v4

    const/16 v10, 0x8

    aget-wide v11, p3, v10

    shl-long/2addr v11, v7

    xor-long/2addr v8, v11

    add-int/lit8 v11, p2, 0x3

    aget-wide v12, p1, v11

    const/16 v16, 0x3

    aget-wide v16, p3, v16

    xor-long v16, v16, v8

    ushr-long/2addr v5, v14

    xor-long v5, v16, v5

    shl-long v16, v8, v15

    xor-long v5, v5, v16

    xor-long/2addr v5, v12

    aput-wide v5, p1, v11

    aget-wide v5, p3, v10

    ushr-long/2addr v5, v4

    add-int/lit8 v10, p2, 0x4

    aget-wide v11, p1, v10

    const/4 v13, 0x4

    aget-wide v16, p3, v13

    xor-long v16, v16, v5

    ushr-long v18, v8, v14

    xor-long v16, v16, v18

    shl-long v18, v5, v15

    xor-long v16, v16, v18

    move-wide/from16 v19, v2

    iget-wide v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n;->mask:J

    and-long v1, v16, v1

    xor-long/2addr v1, v11

    aput-wide v1, p1, v10

    aget-wide v1, p3, v13

    ushr-long/2addr v1, v4

    const/4 v3, 0x5

    aget-wide v3, p3, v3

    shl-long/2addr v3, v7

    xor-long/2addr v1, v3

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM288_SPECIALIZED_TRINOMIAL_GF2X;->k364ki:I

    ushr-long v3, v8, v3

    xor-long/2addr v1, v3

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM288_SPECIALIZED_TRINOMIAL_GF2X;->k3_ki:I

    shl-long v3, v5, v0

    xor-long v0, v1, v3

    aget-wide v2, p1, p2

    const/4 v4, 0x0

    aget-wide v4, p3, v4

    xor-long/2addr v4, v0

    shl-long v6, v0, v15

    xor-long/2addr v4, v6

    xor-long/2addr v2, v4

    aput-wide v2, p1, p2

    const/4 v2, 0x1

    add-int/lit8 v3, p2, 0x1

    aget-wide v4, p1, v3

    aget-wide v6, p3, v2

    xor-long v6, v6, v19

    shl-long v8, v19, v15

    xor-long/2addr v6, v8

    ushr-long/2addr v0, v14

    xor-long/2addr v0, v6

    xor-long/2addr v0, v4

    aput-wide v0, p1, v3

    return-void
.end method

###### Class org.bouncycastle.pqc.crypto.gemss.Rem_GF2n.REM384_SPECIALIZED358_TRINOMIAL_GF2X (org.bouncycastle.pqc.crypto.gemss.Rem_GF2n$REM384_SPECIALIZED358_TRINOMIAL_GF2X)
.class public Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_SPECIALIZED358_TRINOMIAL_GF2X;
.super Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "REM384_SPECIALIZED358_TRINOMIAL_GF2X"
.end annotation


# instance fields
.field private final k3:I

.field private final k364:I

.field private final k364ki:I

.field private final k3_ki:I


# direct methods
.method public constructor <init>(IIIIJ)V
    .registers 7

    .line 0
    invoke-direct {p0}, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n;-><init>()V

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_SPECIALIZED358_TRINOMIAL_GF2X;->k3:I

    iput p2, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n;->ki:I

    iput p3, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n;->ki64:I

    iput p4, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_SPECIALIZED358_TRINOMIAL_GF2X;->k364:I

    iput-wide p5, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n;->mask:J

    add-int/2addr p4, p2

    iput p4, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_SPECIALIZED358_TRINOMIAL_GF2X;->k364ki:I

    sub-int/2addr p1, p2

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_SPECIALIZED358_TRINOMIAL_GF2X;->k3_ki:I

    return-void
.end method


# virtual methods
.method public rem_gf2n([JI[J)V
    .registers 22

    .line 0
    move-object/from16 v0, p0

    const/4 v1, 0x6

    aget-wide v2, p3, v1

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n;->ki:I

    ushr-long/2addr v2, v4

    const/4 v5, 0x7

    aget-wide v5, p3, v5

    iget v7, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n;->ki64:I

    shl-long v8, v5, v7

    xor-long/2addr v2, v8

    ushr-long/2addr v5, v4

    const/16 v8, 0x8

    aget-wide v9, p3, v8

    shl-long/2addr v9, v7

    xor-long/2addr v5, v9

    add-int/lit8 v9, p2, 0x2

    const/4 v10, 0x2

    aget-wide v10, p3, v10

    xor-long/2addr v10, v5

    iget v12, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_SPECIALIZED358_TRINOMIAL_GF2X;->k364:I

    ushr-long v13, v2, v12

    xor-long/2addr v10, v13

    iget v13, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_SPECIALIZED358_TRINOMIAL_GF2X;->k3:I

    shl-long v14, v5, v13

    xor-long/2addr v10, v14

    aput-wide v10, p1, v9

    aget-wide v8, p3, v8

    ushr-long/2addr v8, v4

    const/16 v10, 0x9

    aget-wide v14, p3, v10

    shl-long/2addr v14, v7

    xor-long/2addr v8, v14

    add-int/lit8 v11, p2, 0x3

    const/4 v14, 0x3

    aget-wide v14, p3, v14

    xor-long/2addr v14, v8

    ushr-long/2addr v5, v12

    xor-long/2addr v5, v14

    shl-long v14, v8, v13

    xor-long/2addr v5, v14

    aput-wide v5, p1, v11

    aget-wide v5, p3, v10

    ushr-long/2addr v5, v4

    const/16 v10, 0xa

    aget-wide v14, p3, v10

    shl-long/2addr v14, v7

    xor-long/2addr v5, v14

    add-int/lit8 v11, p2, 0x4

    const/4 v14, 0x4

    aget-wide v14, p3, v14

    xor-long/2addr v14, v5

    ushr-long/2addr v8, v12

    xor-long/2addr v8, v14

    shl-long v14, v5, v13

    xor-long/2addr v8, v14

    aput-wide v8, p1, v11

    aget-wide v8, p3, v10

    ushr-long/2addr v8, v4

    const/16 v10, 0xb

    aget-wide v10, p3, v10

    shl-long/2addr v10, v7

    xor-long/2addr v8, v10

    const/4 v10, 0x5

    aget-wide v10, p3, v10

    ushr-long v14, v10, v4

    aget-wide v16, p3, v1

    shl-long v16, v16, v7

    xor-long v14, v14, v16

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_SPECIALIZED358_TRINOMIAL_GF2X;->k364ki:I

    ushr-long v16, v5, v1

    xor-long v14, v14, v16

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_SPECIALIZED358_TRINOMIAL_GF2X;->k3_ki:I

    shl-long v16, v8, v1

    xor-long v14, v14, v16

    add-int/lit8 v1, p2, 0x5

    xor-long v7, v10, v8

    ushr-long v4, v5, v12

    xor-long/2addr v4, v7

    iget-wide v6, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n;->mask:J

    and-long/2addr v4, v6

    aput-wide v4, p1, v1

    const/4 v0, 0x0

    aget-wide v0, p3, v0

    xor-long/2addr v0, v14

    shl-long v4, v14, v13

    xor-long/2addr v0, v4

    aput-wide v0, p1, p2

    const/4 v0, 0x1

    add-int/lit8 v1, p2, 0x1

    aget-wide v4, p3, v0

    xor-long/2addr v4, v2

    ushr-long v6, v14, v12

    xor-long/2addr v4, v6

    shl-long/2addr v2, v13

    xor-long/2addr v2, v4

    aput-wide v2, p1, v1

    return-void
.end method

.method public rem_gf2n_xor([JI[J)V
    .registers 25

    .line 0
    move-object/from16 v0, p0

    const/4 v1, 0x6

    aget-wide v2, p3, v1

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n;->ki:I

    ushr-long/2addr v2, v4

    const/4 v5, 0x7

    aget-wide v5, p3, v5

    iget v7, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n;->ki64:I

    shl-long v8, v5, v7

    xor-long/2addr v2, v8

    ushr-long/2addr v5, v4

    const/16 v8, 0x8

    aget-wide v9, p3, v8

    shl-long/2addr v9, v7

    xor-long/2addr v5, v9

    add-int/lit8 v9, p2, 0x2

    aget-wide v10, p1, v9

    const/4 v12, 0x2

    aget-wide v12, p3, v12

    xor-long/2addr v12, v5

    iget v14, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_SPECIALIZED358_TRINOMIAL_GF2X;->k364:I

    ushr-long v15, v2, v14

    xor-long/2addr v12, v15

    iget v15, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_SPECIALIZED358_TRINOMIAL_GF2X;->k3:I

    shl-long v16, v5, v15

    xor-long v12, v12, v16

    xor-long/2addr v10, v12

    aput-wide v10, p1, v9

    aget-wide v8, p3, v8

    ushr-long/2addr v8, v4

    const/16 v10, 0x9

    aget-wide v11, p3, v10

    shl-long/2addr v11, v7

    xor-long/2addr v8, v11

    add-int/lit8 v11, p2, 0x3

    aget-wide v12, p1, v11

    const/16 v16, 0x3

    aget-wide v16, p3, v16

    xor-long v16, v16, v8

    ushr-long/2addr v5, v14

    xor-long v5, v16, v5

    shl-long v16, v8, v15

    xor-long v5, v5, v16

    xor-long/2addr v5, v12

    aput-wide v5, p1, v11

    aget-wide v5, p3, v10

    ushr-long/2addr v5, v4

    const/16 v10, 0xa

    aget-wide v11, p3, v10

    shl-long/2addr v11, v7

    xor-long/2addr v5, v11

    add-int/lit8 v11, p2, 0x4

    aget-wide v12, p1, v11

    const/16 v16, 0x4

    aget-wide v16, p3, v16

    xor-long v16, v16, v5

    ushr-long/2addr v8, v14

    xor-long v8, v16, v8

    shl-long v16, v5, v15

    xor-long v8, v8, v16

    xor-long/2addr v8, v12

    aput-wide v8, p1, v11

    aget-wide v8, p3, v10

    ushr-long/2addr v8, v4

    const/16 v10, 0xb

    aget-wide v10, p3, v10

    shl-long/2addr v10, v7

    xor-long/2addr v8, v10

    add-int/lit8 v10, p2, 0x5

    aget-wide v11, p1, v10

    const/4 v13, 0x5

    aget-wide v16, p3, v13

    xor-long v16, v16, v8

    ushr-long v18, v5, v14

    xor-long v16, v16, v18

    move-wide/from16 v19, v2

    iget-wide v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n;->mask:J

    and-long v1, v16, v1

    xor-long/2addr v1, v11

    aput-wide v1, p1, v10

    aget-wide v1, p3, v13

    ushr-long/2addr v1, v4

    const/4 v3, 0x6

    aget-wide v3, p3, v3

    shl-long/2addr v3, v7

    xor-long/2addr v1, v3

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_SPECIALIZED358_TRINOMIAL_GF2X;->k364ki:I

    ushr-long v3, v5, v3

    xor-long/2addr v1, v3

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_SPECIALIZED358_TRINOMIAL_GF2X;->k3_ki:I

    shl-long v3, v8, v0

    xor-long v0, v1, v3

    aget-wide v2, p1, p2

    const/4 v4, 0x0

    aget-wide v4, p3, v4

    xor-long/2addr v4, v0

    shl-long v6, v0, v15

    xor-long/2addr v4, v6

    xor-long/2addr v2, v4

    aput-wide v2, p1, p2

    const/4 v2, 0x1

    add-int/lit8 v3, p2, 0x1

    aget-wide v4, p1, v3

    aget-wide v6, p3, v2

    xor-long v6, v6, v19

    ushr-long/2addr v0, v14

    xor-long/2addr v0, v6

    shl-long v6, v19, v15

    xor-long/2addr v0, v6

    xor-long/2addr v0, v4

    aput-wide v0, p1, v3

    return-void
.end method

###### Class org.bouncycastle.pqc.crypto.gemss.Rem_GF2n.REM384_SPECIALIZED_TRINOMIAL_GF2X (org.bouncycastle.pqc.crypto.gemss.Rem_GF2n$REM384_SPECIALIZED_TRINOMIAL_GF2X)
.class public Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_SPECIALIZED_TRINOMIAL_GF2X;
.super Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "REM384_SPECIALIZED_TRINOMIAL_GF2X"
.end annotation


# instance fields
.field private final k3:I

.field private final k364:I

.field private final k364ki:I

.field private final k3_ki:I


# direct methods
.method public constructor <init>(IIIIJ)V
    .registers 7

    .line 0
    invoke-direct {p0}, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n;-><init>()V

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_SPECIALIZED_TRINOMIAL_GF2X;->k3:I

    iput p2, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n;->ki:I

    iput p3, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n;->ki64:I

    iput p4, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_SPECIALIZED_TRINOMIAL_GF2X;->k364:I

    iput-wide p5, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n;->mask:J

    add-int/2addr p4, p2

    iput p4, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_SPECIALIZED_TRINOMIAL_GF2X;->k364ki:I

    sub-int/2addr p1, p2

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_SPECIALIZED_TRINOMIAL_GF2X;->k3_ki:I

    return-void
.end method


# virtual methods
.method public rem_gf2n([JI[J)V
    .registers 27

    .line 0
    move-object/from16 v0, p0

    const/4 v1, 0x7

    aget-wide v1, p3, v1

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n;->ki:I

    ushr-long v4, v1, v3

    const/16 v6, 0x8

    aget-wide v6, p3, v6

    iget v8, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n;->ki64:I

    shl-long v9, v6, v8

    xor-long/2addr v4, v9

    ushr-long/2addr v6, v3

    const/16 v9, 0x9

    aget-wide v9, p3, v9

    shl-long v11, v9, v8

    xor-long/2addr v6, v11

    ushr-long/2addr v9, v3

    const/16 v11, 0xa

    aget-wide v11, p3, v11

    shl-long v13, v11, v8

    xor-long/2addr v9, v13

    ushr-long/2addr v11, v3

    const/16 v13, 0xb

    aget-wide v13, p3, v13

    shl-long/2addr v13, v8

    xor-long/2addr v11, v13

    const/4 v13, 0x5

    aget-wide v14, p3, v13

    ushr-long/2addr v14, v3

    const/16 v16, 0x6

    aget-wide v16, p3, v16

    shl-long v18, v16, v8

    xor-long v14, v14, v18

    iget v13, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_SPECIALIZED_TRINOMIAL_GF2X;->k364ki:I

    ushr-long v19, v6, v13

    xor-long v14, v14, v19

    move-wide/from16 v19, v6

    iget v6, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_SPECIALIZED_TRINOMIAL_GF2X;->k3_ki:I

    shl-long v21, v9, v6

    xor-long v14, v14, v21

    ushr-long v16, v16, v3

    shl-long/2addr v1, v8

    xor-long v1, v16, v1

    ushr-long v7, v9, v13

    xor-long/2addr v1, v7

    shl-long v6, v11, v6

    xor-long/2addr v1, v6

    const/4 v3, 0x0

    aget-wide v6, p3, v3

    xor-long/2addr v6, v14

    aput-wide v6, p1, p2

    add-int/lit8 v3, p2, 0x1

    const/4 v6, 0x1

    aget-wide v6, p3, v6

    xor-long/2addr v6, v1

    iget v8, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_SPECIALIZED_TRINOMIAL_GF2X;->k3:I

    shl-long v16, v14, v8

    xor-long v6, v6, v16

    aput-wide v6, p1, v3

    add-int/lit8 v3, p2, 0x2

    const/4 v6, 0x2

    aget-wide v6, p3, v6

    xor-long/2addr v6, v4

    iget v13, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_SPECIALIZED_TRINOMIAL_GF2X;->k364:I

    ushr-long/2addr v14, v13

    xor-long/2addr v6, v14

    shl-long v14, v1, v8

    xor-long/2addr v6, v14

    aput-wide v6, p1, v3

    add-int/lit8 v3, p2, 0x3

    const/4 v6, 0x3

    aget-wide v6, p3, v6

    xor-long v6, v6, v19

    ushr-long/2addr v1, v13

    xor-long/2addr v1, v6

    shl-long v6, v4, v8

    xor-long/2addr v1, v6

    aput-wide v1, p1, v3

    add-int/lit8 v1, p2, 0x4

    const/4 v2, 0x4

    aget-wide v2, p3, v2

    xor-long/2addr v2, v9

    ushr-long/2addr v4, v13

    xor-long/2addr v2, v4

    shl-long v4, v19, v8

    xor-long/2addr v2, v4

    aput-wide v2, p1, v1

    const/4 v1, 0x5

    add-int/lit8 v2, p2, 0x5

    aget-wide v3, p3, v1

    xor-long/2addr v3, v11

    ushr-long v5, v19, v13

    xor-long/2addr v3, v5

    iget-wide v0, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n;->mask:J

    and-long/2addr v0, v3

    aput-wide v0, p1, v2

    return-void
.end method

.method public rem_gf2n_xor([JI[J)V
    .registers 27

    .line 0
    move-object/from16 v0, p0

    const/4 v1, 0x7

    aget-wide v1, p3, v1

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n;->ki:I

    ushr-long v4, v1, v3

    const/16 v6, 0x8

    aget-wide v6, p3, v6

    iget v8, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n;->ki64:I

    shl-long v9, v6, v8

    xor-long/2addr v4, v9

    ushr-long/2addr v6, v3

    const/16 v9, 0x9

    aget-wide v9, p3, v9

    shl-long v11, v9, v8

    xor-long/2addr v6, v11

    ushr-long/2addr v9, v3

    const/16 v11, 0xa

    aget-wide v11, p3, v11

    shl-long v13, v11, v8

    xor-long/2addr v9, v13

    ushr-long/2addr v11, v3

    const/16 v13, 0xb

    aget-wide v13, p3, v13

    shl-long/2addr v13, v8

    xor-long/2addr v11, v13

    const/4 v13, 0x5

    aget-wide v14, p3, v13

    ushr-long/2addr v14, v3

    const/16 v16, 0x6

    aget-wide v16, p3, v16

    shl-long v18, v16, v8

    xor-long v14, v14, v18

    iget v13, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_SPECIALIZED_TRINOMIAL_GF2X;->k364ki:I

    ushr-long v19, v6, v13

    xor-long v14, v14, v19

    move-wide/from16 v19, v6

    iget v6, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_SPECIALIZED_TRINOMIAL_GF2X;->k3_ki:I

    shl-long v21, v9, v6

    xor-long v14, v14, v21

    ushr-long v16, v16, v3

    shl-long/2addr v1, v8

    xor-long v1, v16, v1

    ushr-long v7, v9, v13

    xor-long/2addr v1, v7

    shl-long v6, v11, v6

    xor-long/2addr v1, v6

    aget-wide v6, p1, p2

    const/4 v3, 0x0

    aget-wide v16, p3, v3

    xor-long v16, v16, v14

    xor-long v6, v6, v16

    aput-wide v6, p1, p2

    add-int/lit8 v3, p2, 0x1

    aget-wide v6, p1, v3

    const/4 v8, 0x1

    aget-wide v16, p3, v8

    xor-long v16, v16, v1

    iget v8, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_SPECIALIZED_TRINOMIAL_GF2X;->k3:I

    shl-long v21, v14, v8

    xor-long v16, v16, v21

    xor-long v6, v6, v16

    aput-wide v6, p1, v3

    add-int/lit8 v3, p2, 0x2

    aget-wide v6, p1, v3

    const/4 v13, 0x2

    aget-wide v16, p3, v13

    xor-long v16, v16, v4

    iget v13, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_SPECIALIZED_TRINOMIAL_GF2X;->k364:I

    ushr-long/2addr v14, v13

    xor-long v14, v16, v14

    shl-long v16, v1, v8

    xor-long v14, v14, v16

    xor-long/2addr v6, v14

    aput-wide v6, p1, v3

    add-int/lit8 v3, p2, 0x3

    aget-wide v6, p1, v3

    const/4 v14, 0x3

    aget-wide v14, p3, v14

    xor-long v14, v14, v19

    ushr-long/2addr v1, v13

    xor-long/2addr v1, v14

    shl-long v14, v4, v8

    xor-long/2addr v1, v14

    xor-long/2addr v1, v6

    aput-wide v1, p1, v3

    add-int/lit8 v1, p2, 0x4

    aget-wide v2, p1, v1

    const/4 v6, 0x4

    aget-wide v6, p3, v6

    xor-long/2addr v6, v9

    ushr-long/2addr v4, v13

    xor-long/2addr v4, v6

    shl-long v6, v19, v8

    xor-long/2addr v4, v6

    xor-long/2addr v2, v4

    aput-wide v2, p1, v1

    const/4 v1, 0x5

    add-int/lit8 v2, p2, 0x5

    aget-wide v3, p1, v2

    aget-wide v5, p3, v1

    xor-long/2addr v5, v11

    ushr-long v7, v19, v13

    xor-long/2addr v5, v7

    iget-wide v0, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n;->mask:J

    and-long/2addr v0, v5

    xor-long/2addr v0, v3

    aput-wide v0, p1, v2

    return-void
.end method

###### Class org.bouncycastle.pqc.crypto.gemss.Rem_GF2n.REM384_TRINOMIAL_GF2X (org.bouncycastle.pqc.crypto.gemss.Rem_GF2n$REM384_TRINOMIAL_GF2X)
.class public Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_TRINOMIAL_GF2X;
.super Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "REM384_TRINOMIAL_GF2X"
.end annotation


# instance fields
.field private final k3:I

.field private final k364:I

.field private final ki_k3:I


# direct methods
.method public constructor <init>(IIIIJ)V
    .registers 7

    .line 0
    invoke-direct {p0}, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n;-><init>()V

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_TRINOMIAL_GF2X;->k3:I

    iput p2, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n;->ki:I

    iput p3, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n;->ki64:I

    iput p4, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_TRINOMIAL_GF2X;->k364:I

    iput-wide p5, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n;->mask:J

    sub-int/2addr p2, p1

    iput p2, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_TRINOMIAL_GF2X;->ki_k3:I

    return-void
.end method


# virtual methods
.method public rem_gf2n([JI[J)V
    .registers 24

    .line 0
    move-object/from16 v0, p0

    const/4 v1, 0x5

    aget-wide v2, p3, v1

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n;->ki:I

    ushr-long/2addr v2, v4

    const/4 v5, 0x6

    aget-wide v5, p3, v5

    iget v7, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n;->ki64:I

    shl-long v8, v5, v7

    xor-long/2addr v2, v8

    ushr-long/2addr v5, v4

    const/4 v8, 0x7

    aget-wide v8, p3, v8

    shl-long v10, v8, v7

    xor-long/2addr v5, v10

    ushr-long/2addr v8, v4

    const/16 v10, 0x8

    aget-wide v10, p3, v10

    shl-long v12, v10, v7

    xor-long/2addr v8, v12

    ushr-long/2addr v10, v4

    const/16 v12, 0x9

    aget-wide v12, p3, v12

    shl-long v14, v12, v7

    xor-long/2addr v10, v14

    ushr-long/2addr v12, v4

    const/16 v14, 0xa

    aget-wide v14, p3, v14

    shl-long v16, v14, v7

    xor-long v12, v12, v16

    ushr-long/2addr v14, v4

    const/16 v4, 0xb

    aget-wide v16, p3, v4

    shl-long v16, v16, v7

    xor-long v14, v14, v16

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_TRINOMIAL_GF2X;->ki_k3:I

    ushr-long v16, v14, v4

    xor-long v16, v2, v16

    const/4 v4, 0x0

    aget-wide v18, p3, v4

    xor-long v18, v18, v16

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_TRINOMIAL_GF2X;->k3:I

    shl-long v16, v16, v4

    xor-long v16, v18, v16

    aput-wide v16, p1, p2

    add-int/lit8 v7, p2, 0x1

    const/16 v16, 0x1

    aget-wide v16, p3, v16

    xor-long v16, v16, v5

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_TRINOMIAL_GF2X;->k364:I

    ushr-long/2addr v2, v1

    xor-long v2, v16, v2

    shl-long v16, v5, v4

    xor-long v2, v2, v16

    aput-wide v2, p1, v7

    add-int/lit8 v2, p2, 0x2

    const/4 v3, 0x2

    aget-wide v16, p3, v3

    xor-long v16, v16, v8

    ushr-long/2addr v5, v1

    xor-long v5, v16, v5

    shl-long v16, v8, v4

    xor-long v5, v5, v16

    aput-wide v5, p1, v2

    add-int/lit8 v2, p2, 0x3

    const/4 v3, 0x3

    aget-wide v5, p3, v3

    xor-long/2addr v5, v10

    ushr-long v7, v8, v1

    xor-long/2addr v5, v7

    shl-long v7, v10, v4

    xor-long/2addr v5, v7

    aput-wide v5, p1, v2

    add-int/lit8 v2, p2, 0x4

    const/4 v3, 0x4

    aget-wide v5, p3, v3

    xor-long/2addr v5, v12

    ushr-long v7, v10, v1

    xor-long/2addr v5, v7

    shl-long v7, v12, v4

    xor-long/2addr v5, v7

    aput-wide v5, p1, v2

    const/4 v2, 0x5

    add-int/lit8 v3, p2, 0x5

    aget-wide v5, p3, v2

    xor-long/2addr v5, v14

    ushr-long v1, v12, v1

    xor-long/2addr v1, v5

    shl-long v4, v14, v4

    xor-long/2addr v1, v4

    iget-wide v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n;->mask:J

    and-long v0, v1, v4

    aput-wide v0, p1, v3

    return-void
.end method

.method public rem_gf2n_xor([JI[J)V
    .registers 26

    .line 0
    move-object/from16 v0, p0

    const/4 v1, 0x5

    aget-wide v2, p3, v1

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n;->ki:I

    ushr-long/2addr v2, v4

    const/4 v5, 0x6

    aget-wide v5, p3, v5

    iget v7, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n;->ki64:I

    shl-long v8, v5, v7

    xor-long/2addr v2, v8

    ushr-long/2addr v5, v4

    const/4 v8, 0x7

    aget-wide v8, p3, v8

    shl-long v10, v8, v7

    xor-long/2addr v5, v10

    ushr-long/2addr v8, v4

    const/16 v10, 0x8

    aget-wide v10, p3, v10

    shl-long v12, v10, v7

    xor-long/2addr v8, v12

    ushr-long/2addr v10, v4

    const/16 v12, 0x9

    aget-wide v12, p3, v12

    shl-long v14, v12, v7

    xor-long/2addr v10, v14

    ushr-long/2addr v12, v4

    const/16 v14, 0xa

    aget-wide v14, p3, v14

    shl-long v16, v14, v7

    xor-long v12, v12, v16

    ushr-long/2addr v14, v4

    const/16 v4, 0xb

    aget-wide v16, p3, v4

    shl-long v16, v16, v7

    xor-long v14, v14, v16

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_TRINOMIAL_GF2X;->ki_k3:I

    ushr-long v16, v14, v4

    xor-long v16, v2, v16

    aget-wide v18, p1, p2

    const/4 v4, 0x0

    aget-wide v20, p3, v4

    xor-long v20, v20, v16

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_TRINOMIAL_GF2X;->k3:I

    shl-long v16, v16, v4

    xor-long v16, v20, v16

    xor-long v16, v18, v16

    aput-wide v16, p1, p2

    add-int/lit8 v7, p2, 0x1

    aget-wide v16, p1, v7

    const/16 v18, 0x1

    aget-wide v18, p3, v18

    xor-long v18, v18, v5

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_TRINOMIAL_GF2X;->k364:I

    ushr-long/2addr v2, v1

    xor-long v2, v18, v2

    shl-long v18, v5, v4

    xor-long v2, v2, v18

    xor-long v2, v16, v2

    aput-wide v2, p1, v7

    add-int/lit8 v2, p2, 0x2

    aget-wide v16, p1, v2

    const/4 v3, 0x2

    aget-wide v18, p3, v3

    xor-long v18, v18, v8

    ushr-long/2addr v5, v1

    xor-long v5, v18, v5

    shl-long v18, v8, v4

    xor-long v5, v5, v18

    xor-long v5, v16, v5

    aput-wide v5, p1, v2

    add-int/lit8 v2, p2, 0x3

    aget-wide v5, p1, v2

    const/4 v3, 0x3

    aget-wide v16, p3, v3

    xor-long v16, v16, v10

    ushr-long v7, v8, v1

    xor-long v7, v16, v7

    shl-long v16, v10, v4

    xor-long v7, v7, v16

    xor-long/2addr v5, v7

    aput-wide v5, p1, v2

    add-int/lit8 v2, p2, 0x4

    aget-wide v5, p1, v2

    const/4 v3, 0x4

    aget-wide v7, p3, v3

    xor-long/2addr v7, v12

    ushr-long v9, v10, v1

    xor-long/2addr v7, v9

    shl-long v9, v12, v4

    xor-long/2addr v7, v9

    xor-long/2addr v5, v7

    aput-wide v5, p1, v2

    const/4 v2, 0x5

    add-int/lit8 v3, p2, 0x5

    aget-wide v5, p1, v3

    aget-wide v7, p3, v2

    xor-long/2addr v7, v14

    ushr-long v1, v12, v1

    xor-long/2addr v1, v7

    shl-long v7, v14, v4

    xor-long/2addr v1, v7

    iget-wide v7, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n;->mask:J

    and-long v0, v1, v7

    xor-long/2addr v0, v5

    aput-wide v0, p1, v3

    return-void
.end method

###### Class org.bouncycastle.pqc.crypto.gemss.Rem_GF2n.REM402_SPECIALIZED_TRINOMIAL_GF2X (org.bouncycastle.pqc.crypto.gemss.Rem_GF2n$REM402_SPECIALIZED_TRINOMIAL_GF2X)
.class public Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM402_SPECIALIZED_TRINOMIAL_GF2X;
.super Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "REM402_SPECIALIZED_TRINOMIAL_GF2X"
.end annotation


# instance fields
.field private final k3:I

.field private final k364:I


# direct methods
.method public constructor <init>(IIIIJ)V
    .registers 7

    .line 0
    invoke-direct {p0}, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n;-><init>()V

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM402_SPECIALIZED_TRINOMIAL_GF2X;->k3:I

    iput p2, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n;->ki:I

    iput p3, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n;->ki64:I

    iput p4, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM402_SPECIALIZED_TRINOMIAL_GF2X;->k364:I

    iput-wide p5, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n;->mask:J

    return-void
.end method


# virtual methods
.method public rem_gf2n([JI[J)V
    .registers 30

    .line 0
    move-object/from16 v0, p0

    const/16 v1, 0x9

    aget-wide v1, p3, v1

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n;->ki:I

    ushr-long v4, v1, v3

    const/16 v6, 0xa

    aget-wide v6, p3, v6

    iget v8, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n;->ki64:I

    shl-long v9, v6, v8

    xor-long/2addr v4, v9

    ushr-long/2addr v6, v3

    const/16 v9, 0xb

    aget-wide v9, p3, v9

    shl-long v11, v9, v8

    xor-long/2addr v6, v11

    ushr-long/2addr v9, v3

    const/16 v11, 0xc

    aget-wide v11, p3, v11

    shl-long v13, v11, v8

    xor-long/2addr v9, v13

    ushr-long/2addr v11, v3

    const/16 v13, 0x27

    ushr-long v14, v4, v13

    const/16 v16, 0x19

    shl-long v17, v6, v16

    xor-long v14, v14, v17

    const/16 v17, 0x6

    aget-wide v18, p3, v17

    ushr-long v18, v18, v3

    xor-long v14, v14, v18

    const/16 v18, 0x7

    aget-wide v18, p3, v18

    shl-long v20, v18, v8

    xor-long v14, v14, v20

    ushr-long v20, v6, v13

    shl-long v22, v9, v16

    xor-long v20, v20, v22

    ushr-long v18, v18, v3

    xor-long v18, v20, v18

    const/16 v20, 0x8

    aget-wide v20, p3, v20

    shl-long v22, v20, v8

    xor-long v18, v18, v22

    ushr-long v22, v9, v13

    shl-long v24, v11, v16

    xor-long v22, v22, v24

    ushr-long v20, v20, v3

    xor-long v20, v22, v20

    shl-long/2addr v1, v8

    xor-long v1, v20, v1

    const/4 v3, 0x0

    aget-wide v20, p3, v3

    xor-long v20, v20, v14

    aput-wide v20, p1, p2

    add-int/lit8 v3, p2, 0x1

    const/4 v8, 0x1

    aget-wide v20, p3, v8

    xor-long v20, v20, v18

    aput-wide v20, p1, v3

    add-int/lit8 v3, p2, 0x2

    const/4 v8, 0x2

    aget-wide v20, p3, v8

    xor-long v20, v20, v1

    iget v8, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM402_SPECIALIZED_TRINOMIAL_GF2X;->k3:I

    shl-long v22, v14, v8

    xor-long v20, v20, v22

    aput-wide v20, p1, v3

    add-int/lit8 v3, p2, 0x3

    const/4 v13, 0x3

    aget-wide v20, p3, v13

    xor-long v20, v20, v4

    iget v13, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM402_SPECIALIZED_TRINOMIAL_GF2X;->k364:I

    ushr-long/2addr v14, v13

    xor-long v14, v20, v14

    shl-long v20, v18, v8

    xor-long v14, v14, v20

    aput-wide v14, p1, v3

    add-int/lit8 v3, p2, 0x4

    const/4 v14, 0x4

    aget-wide v14, p3, v14

    xor-long/2addr v6, v14

    ushr-long v14, v18, v13

    xor-long/2addr v6, v14

    shl-long v14, v1, v8

    xor-long/2addr v6, v14

    aput-wide v6, p1, v3

    add-int/lit8 v3, p2, 0x5

    const/4 v6, 0x5

    aget-wide v6, p3, v6

    xor-long/2addr v6, v9

    ushr-long/2addr v1, v13

    xor-long/2addr v1, v6

    shl-long v6, v4, v8

    xor-long/2addr v1, v6

    aput-wide v1, p1, v3

    add-int/lit8 v1, p2, 0x6

    aget-wide v2, p3, v17

    xor-long/2addr v2, v11

    ushr-long/2addr v4, v13

    xor-long/2addr v2, v4

    iget-wide v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n;->mask:J

    and-long/2addr v2, v4

    aput-wide v2, p1, v1

    return-void
.end method

.method public rem_gf2n_xor([JI[J)V
    .registers 30

    .line 0
    move-object/from16 v0, p0

    const/16 v1, 0x9

    aget-wide v1, p3, v1

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n;->ki:I

    ushr-long v4, v1, v3

    const/16 v6, 0xa

    aget-wide v6, p3, v6

    iget v8, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n;->ki64:I

    shl-long v9, v6, v8

    xor-long/2addr v4, v9

    ushr-long/2addr v6, v3

    const/16 v9, 0xb

    aget-wide v9, p3, v9

    shl-long v11, v9, v8

    xor-long/2addr v6, v11

    ushr-long/2addr v9, v3

    const/16 v11, 0xc

    aget-wide v11, p3, v11

    shl-long v13, v11, v8

    xor-long/2addr v9, v13

    ushr-long/2addr v11, v3

    const/16 v13, 0x27

    ushr-long v14, v4, v13

    const/16 v16, 0x19

    shl-long v17, v6, v16

    xor-long v14, v14, v17

    const/16 v17, 0x6

    aget-wide v18, p3, v17

    ushr-long v18, v18, v3

    xor-long v14, v14, v18

    const/16 v18, 0x7

    aget-wide v18, p3, v18

    shl-long v20, v18, v8

    xor-long v14, v14, v20

    ushr-long v20, v6, v13

    shl-long v22, v9, v16

    xor-long v20, v20, v22

    ushr-long v18, v18, v3

    xor-long v18, v20, v18

    const/16 v20, 0x8

    aget-wide v20, p3, v20

    shl-long v22, v20, v8

    xor-long v18, v18, v22

    ushr-long v22, v9, v13

    shl-long v24, v11, v16

    xor-long v22, v22, v24

    ushr-long v20, v20, v3

    xor-long v20, v22, v20

    shl-long/2addr v1, v8

    xor-long v1, v20, v1

    aget-wide v20, p1, p2

    const/4 v3, 0x0

    aget-wide v22, p3, v3

    xor-long v22, v22, v14

    xor-long v20, v20, v22

    aput-wide v20, p1, p2

    add-int/lit8 v3, p2, 0x1

    aget-wide v20, p1, v3

    const/4 v8, 0x1

    aget-wide v22, p3, v8

    xor-long v22, v22, v18

    xor-long v20, v20, v22

    aput-wide v20, p1, v3

    add-int/lit8 v3, p2, 0x2

    aget-wide v20, p1, v3

    const/4 v8, 0x2

    aget-wide v22, p3, v8

    xor-long v22, v22, v1

    iget v8, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM402_SPECIALIZED_TRINOMIAL_GF2X;->k3:I

    shl-long v24, v14, v8

    xor-long v22, v22, v24

    xor-long v20, v20, v22

    aput-wide v20, p1, v3

    add-int/lit8 v3, p2, 0x3

    aget-wide v20, p1, v3

    const/4 v13, 0x3

    aget-wide v22, p3, v13

    xor-long v22, v22, v4

    iget v13, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM402_SPECIALIZED_TRINOMIAL_GF2X;->k364:I

    ushr-long/2addr v14, v13

    xor-long v14, v22, v14

    shl-long v22, v18, v8

    xor-long v14, v14, v22

    xor-long v14, v20, v14

    aput-wide v14, p1, v3

    add-int/lit8 v3, p2, 0x4

    aget-wide v14, p1, v3

    const/16 v16, 0x4

    aget-wide v20, p3, v16

    xor-long v6, v20, v6

    ushr-long v18, v18, v13

    xor-long v6, v6, v18

    shl-long v18, v1, v8

    xor-long v6, v6, v18

    xor-long/2addr v6, v14

    aput-wide v6, p1, v3

    add-int/lit8 v3, p2, 0x5

    aget-wide v6, p1, v3

    const/4 v14, 0x5

    aget-wide v14, p3, v14

    xor-long/2addr v9, v14

    ushr-long/2addr v1, v13

    xor-long/2addr v1, v9

    shl-long v8, v4, v8

    xor-long/2addr v1, v8

    xor-long/2addr v1, v6

    aput-wide v1, p1, v3

    add-int/lit8 v1, p2, 0x6

    aget-wide v2, p1, v1

    aget-wide v6, p3, v17

    xor-long/2addr v6, v11

    ushr-long/2addr v4, v13

    xor-long/2addr v4, v6

    iget-wide v6, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n;->mask:J

    and-long/2addr v4, v6

    xor-long/2addr v2, v4

    aput-wide v2, p1, v1

    return-void
.end method

###### Class org.bouncycastle.pqc.crypto.gemss.Rem_GF2n.REM544_PENTANOMIAL_GF2X (org.bouncycastle.pqc.crypto.gemss.Rem_GF2n$REM544_PENTANOMIAL_GF2X)
.class public Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;
.super Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "REM544_PENTANOMIAL_GF2X"
.end annotation


# instance fields
.field private final k1:I

.field private final k164:I

.field private final k2:I

.field private final k264:I

.field private final k3:I

.field private final k364:I

.field private final ki_k1:I

.field private final ki_k2:I

.field private final ki_k3:I


# direct methods
.method public constructor <init>(IIIIIIIIJ)V
    .registers 11

    .line 0
    invoke-direct {p0}, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n;-><init>()V

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k1:I

    iput p2, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k2:I

    iput p3, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k3:I

    iput p4, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n;->ki:I

    iput p5, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n;->ki64:I

    iput p6, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k164:I

    iput p7, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k264:I

    iput p8, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k364:I

    iput-wide p9, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n;->mask:J

    sub-int p3, p4, p3

    iput p3, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->ki_k3:I

    sub-int p2, p4, p2

    iput p2, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->ki_k2:I

    sub-int/2addr p4, p1

    iput p4, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->ki_k1:I

    return-void
.end method


# virtual methods
.method public rem_gf2n([JI[J)V
    .registers 29

    .line 0
    move-object/from16 v0, p0

    const/16 v1, 0x10

    aget-wide v2, p3, v1

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n;->ki:I

    ushr-long/2addr v2, v4

    const/16 v5, 0x8

    aget-wide v6, p3, v5

    ushr-long/2addr v6, v4

    const/16 v8, 0x9

    aget-wide v8, p3, v8

    iget v10, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n;->ki64:I

    shl-long v11, v8, v10

    xor-long/2addr v6, v11

    ushr-long/2addr v8, v4

    const/16 v11, 0xa

    aget-wide v12, p3, v11

    shl-long/2addr v12, v10

    xor-long/2addr v8, v12

    add-int/lit8 v12, p2, 0x1

    const/4 v13, 0x1

    aget-wide v13, p3, v13

    xor-long/2addr v13, v8

    iget v15, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k164:I

    ushr-long v16, v6, v15

    xor-long v13, v13, v16

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k1:I

    shl-long v17, v8, v5

    xor-long v13, v13, v17

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k264:I

    ushr-long v18, v6, v1

    xor-long v13, v13, v18

    iget v11, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k2:I

    shl-long v19, v8, v11

    xor-long v13, v13, v19

    move/from16 v19, v1

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k364:I

    ushr-long v20, v6, v1

    xor-long v13, v13, v20

    move/from16 v20, v1

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k3:I

    shl-long v21, v8, v1

    xor-long v13, v13, v21

    aput-wide v13, p1, v12

    iget v12, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->ki_k3:I

    ushr-long v12, v2, v12

    iget v14, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->ki_k2:I

    ushr-long v21, v2, v14

    xor-long v12, v12, v21

    iget v14, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->ki_k1:I

    ushr-long v21, v2, v14

    xor-long v12, v12, v21

    xor-long/2addr v6, v12

    const/4 v12, 0x0

    aget-wide v12, p3, v12

    xor-long/2addr v12, v6

    shl-long v21, v6, v5

    xor-long v12, v12, v21

    shl-long v21, v6, v11

    xor-long v12, v12, v21

    shl-long/2addr v6, v1

    xor-long/2addr v6, v12

    aput-wide v6, p1, p2

    const/16 v6, 0xa

    aget-wide v6, p3, v6

    ushr-long/2addr v6, v4

    const/16 v12, 0xb

    aget-wide v13, p3, v12

    shl-long/2addr v13, v10

    xor-long/2addr v6, v13

    add-int/lit8 v13, p2, 0x2

    const/4 v14, 0x2

    aget-wide v21, p3, v14

    xor-long v21, v21, v6

    ushr-long v23, v8, v15

    xor-long v21, v21, v23

    shl-long v23, v6, v5

    xor-long v21, v21, v23

    ushr-long v23, v8, v19

    xor-long v21, v21, v23

    shl-long v23, v6, v11

    xor-long v21, v21, v23

    ushr-long v8, v8, v20

    xor-long v8, v21, v8

    shl-long v21, v6, v1

    xor-long v8, v8, v21

    aput-wide v8, p1, v13

    aget-wide v8, p3, v12

    ushr-long/2addr v8, v4

    const/16 v12, 0xc

    aget-wide v13, p3, v12

    shl-long/2addr v13, v10

    xor-long/2addr v8, v13

    add-int/lit8 v13, p2, 0x3

    const/4 v14, 0x3

    aget-wide v21, p3, v14

    xor-long v21, v21, v8

    ushr-long v23, v6, v15

    xor-long v21, v21, v23

    shl-long v23, v8, v5

    xor-long v21, v21, v23

    ushr-long v23, v6, v19

    xor-long v21, v21, v23

    shl-long v23, v8, v11

    xor-long v21, v21, v23

    ushr-long v6, v6, v20

    xor-long v6, v21, v6

    shl-long v21, v8, v1

    xor-long v6, v6, v21

    aput-wide v6, p1, v13

    aget-wide v6, p3, v12

    ushr-long/2addr v6, v4

    const/16 v12, 0xd

    aget-wide v13, p3, v12

    shl-long/2addr v13, v10

    xor-long/2addr v6, v13

    add-int/lit8 v13, p2, 0x4

    const/4 v14, 0x4

    aget-wide v21, p3, v14

    xor-long v21, v21, v6

    ushr-long v23, v8, v15

    xor-long v21, v21, v23

    shl-long v23, v6, v5

    xor-long v21, v21, v23

    ushr-long v23, v8, v19

    xor-long v21, v21, v23

    shl-long v23, v6, v11

    xor-long v21, v21, v23

    ushr-long v8, v8, v20

    xor-long v8, v21, v8

    shl-long v21, v6, v1

    xor-long v8, v8, v21

    aput-wide v8, p1, v13

    aget-wide v8, p3, v12

    ushr-long/2addr v8, v4

    const/16 v12, 0xe

    aget-wide v13, p3, v12

    shl-long/2addr v13, v10

    xor-long/2addr v8, v13

    add-int/lit8 v13, p2, 0x5

    const/4 v14, 0x5

    aget-wide v21, p3, v14

    xor-long v21, v21, v8

    ushr-long v23, v6, v15

    xor-long v21, v21, v23

    shl-long v23, v8, v5

    xor-long v21, v21, v23

    ushr-long v23, v6, v19

    xor-long v21, v21, v23

    shl-long v23, v8, v11

    xor-long v21, v21, v23

    ushr-long v6, v6, v20

    xor-long v6, v21, v6

    shl-long v21, v8, v1

    xor-long v6, v6, v21

    aput-wide v6, p1, v13

    aget-wide v6, p3, v12

    ushr-long/2addr v6, v4

    const/16 v12, 0xf

    aget-wide v13, p3, v12

    shl-long/2addr v13, v10

    xor-long/2addr v6, v13

    add-int/lit8 v13, p2, 0x6

    const/4 v14, 0x6

    aget-wide v21, p3, v14

    xor-long v21, v21, v6

    ushr-long v23, v8, v15

    xor-long v21, v21, v23

    shl-long v23, v6, v5

    xor-long v21, v21, v23

    ushr-long v23, v8, v19

    xor-long v21, v21, v23

    shl-long v23, v6, v11

    xor-long v21, v21, v23

    ushr-long v8, v8, v20

    xor-long v8, v21, v8

    shl-long v21, v6, v1

    xor-long v8, v8, v21

    aput-wide v8, p1, v13

    aget-wide v8, p3, v12

    ushr-long/2addr v8, v4

    const/16 v4, 0x10

    aget-wide v12, p3, v4

    shl-long/2addr v12, v10

    xor-long/2addr v8, v12

    add-int/lit8 v4, p2, 0x7

    const/4 v10, 0x7

    aget-wide v12, p3, v10

    xor-long/2addr v12, v8

    ushr-long v17, v6, v15

    xor-long v12, v12, v17

    shl-long v17, v8, v5

    xor-long v12, v12, v17

    ushr-long v17, v6, v19

    xor-long v12, v12, v17

    shl-long v17, v8, v11

    xor-long v12, v12, v17

    ushr-long v6, v6, v20

    xor-long/2addr v6, v12

    shl-long v12, v8, v1

    xor-long/2addr v6, v12

    aput-wide v6, p1, v4

    const/16 v4, 0x8

    add-int/lit8 v6, p2, 0x8

    aget-wide v12, p3, v4

    xor-long/2addr v12, v2

    ushr-long v14, v8, v15

    xor-long/2addr v12, v14

    shl-long v4, v2, v5

    xor-long/2addr v4, v12

    ushr-long v12, v8, v19

    xor-long/2addr v4, v12

    shl-long v10, v2, v11

    xor-long/2addr v4, v10

    ushr-long v7, v8, v20

    xor-long/2addr v4, v7

    shl-long v1, v2, v1

    xor-long/2addr v1, v4

    iget-wide v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n;->mask:J

    and-long v0, v1, v3

    aput-wide v0, p1, v6

    return-void
.end method

.method public rem_gf2n_xor([JI[J)V
    .registers 31

    .line 0
    move-object/from16 v0, p0

    const/16 v1, 0x10

    aget-wide v2, p3, v1

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n;->ki:I

    ushr-long/2addr v2, v4

    const/16 v5, 0x8

    aget-wide v6, p3, v5

    ushr-long/2addr v6, v4

    const/16 v8, 0x9

    aget-wide v8, p3, v8

    iget v10, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n;->ki64:I

    shl-long v11, v8, v10

    xor-long/2addr v6, v11

    ushr-long/2addr v8, v4

    const/16 v11, 0xa

    aget-wide v12, p3, v11

    shl-long/2addr v12, v10

    xor-long/2addr v8, v12

    add-int/lit8 v12, p2, 0x1

    aget-wide v13, p1, v12

    const/4 v15, 0x1

    aget-wide v15, p3, v15

    xor-long/2addr v15, v8

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k164:I

    ushr-long v18, v6, v5

    xor-long v15, v15, v18

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k1:I

    shl-long v19, v8, v1

    xor-long v15, v15, v19

    iget v11, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k264:I

    ushr-long v20, v6, v11

    xor-long v15, v15, v20

    move/from16 v20, v11

    iget v11, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k2:I

    shl-long v21, v8, v11

    xor-long v15, v15, v21

    move/from16 v21, v5

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k364:I

    ushr-long v22, v6, v5

    xor-long v15, v15, v22

    move/from16 v22, v5

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k3:I

    shl-long v23, v8, v5

    xor-long v15, v15, v23

    xor-long/2addr v13, v15

    aput-wide v13, p1, v12

    iget v12, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->ki_k3:I

    ushr-long v12, v2, v12

    iget v14, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->ki_k2:I

    ushr-long v14, v2, v14

    xor-long/2addr v12, v14

    iget v14, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->ki_k1:I

    ushr-long v14, v2, v14

    xor-long/2addr v12, v14

    xor-long/2addr v6, v12

    aget-wide v12, p1, p2

    const/4 v14, 0x0

    aget-wide v14, p3, v14

    xor-long/2addr v14, v6

    shl-long v23, v6, v1

    xor-long v14, v14, v23

    shl-long v23, v6, v11

    xor-long v14, v14, v23

    shl-long/2addr v6, v5

    xor-long/2addr v6, v14

    xor-long/2addr v6, v12

    aput-wide v6, p1, p2

    const/16 v6, 0xa

    aget-wide v6, p3, v6

    ushr-long/2addr v6, v4

    const/16 v12, 0xb

    aget-wide v13, p3, v12

    shl-long/2addr v13, v10

    xor-long/2addr v6, v13

    add-int/lit8 v13, p2, 0x2

    aget-wide v14, p1, v13

    const/16 v16, 0x2

    aget-wide v23, p3, v16

    xor-long v23, v23, v6

    ushr-long v25, v8, v21

    xor-long v23, v23, v25

    shl-long v25, v6, v1

    xor-long v23, v23, v25

    ushr-long v25, v8, v20

    xor-long v23, v23, v25

    shl-long v25, v6, v11

    xor-long v23, v23, v25

    ushr-long v8, v8, v22

    xor-long v8, v23, v8

    shl-long v23, v6, v5

    xor-long v8, v8, v23

    xor-long/2addr v8, v14

    aput-wide v8, p1, v13

    aget-wide v8, p3, v12

    ushr-long/2addr v8, v4

    const/16 v12, 0xc

    aget-wide v13, p3, v12

    shl-long/2addr v13, v10

    xor-long/2addr v8, v13

    add-int/lit8 v13, p2, 0x3

    aget-wide v14, p1, v13

    const/16 v16, 0x3

    aget-wide v23, p3, v16

    xor-long v23, v23, v8

    ushr-long v25, v6, v21

    xor-long v23, v23, v25

    shl-long v25, v8, v1

    xor-long v23, v23, v25

    ushr-long v25, v6, v20

    xor-long v23, v23, v25

    shl-long v25, v8, v11

    xor-long v23, v23, v25

    ushr-long v6, v6, v22

    xor-long v6, v23, v6

    shl-long v23, v8, v5

    xor-long v6, v6, v23

    xor-long/2addr v6, v14

    aput-wide v6, p1, v13

    aget-wide v6, p3, v12

    ushr-long/2addr v6, v4

    const/16 v12, 0xd

    aget-wide v13, p3, v12

    shl-long/2addr v13, v10

    xor-long/2addr v6, v13

    add-int/lit8 v13, p2, 0x4

    aget-wide v14, p1, v13

    const/16 v16, 0x4

    aget-wide v23, p3, v16

    xor-long v23, v23, v6

    ushr-long v25, v8, v21

    xor-long v23, v23, v25

    shl-long v25, v6, v1

    xor-long v23, v23, v25

    ushr-long v25, v8, v20

    xor-long v23, v23, v25

    shl-long v25, v6, v11

    xor-long v23, v23, v25

    ushr-long v8, v8, v22

    xor-long v8, v23, v8

    shl-long v23, v6, v5

    xor-long v8, v8, v23

    xor-long/2addr v8, v14

    aput-wide v8, p1, v13

    aget-wide v8, p3, v12

    ushr-long/2addr v8, v4

    const/16 v12, 0xe

    aget-wide v13, p3, v12

    shl-long/2addr v13, v10

    xor-long/2addr v8, v13

    add-int/lit8 v13, p2, 0x5

    aget-wide v14, p1, v13

    const/16 v16, 0x5

    aget-wide v23, p3, v16

    xor-long v23, v23, v8

    ushr-long v25, v6, v21

    xor-long v23, v23, v25

    shl-long v25, v8, v1

    xor-long v23, v23, v25

    ushr-long v25, v6, v20

    xor-long v23, v23, v25

    shl-long v25, v8, v11

    xor-long v23, v23, v25

    ushr-long v6, v6, v22

    xor-long v6, v23, v6

    shl-long v23, v8, v5

    xor-long v6, v6, v23

    xor-long/2addr v6, v14

    aput-wide v6, p1, v13

    aget-wide v6, p3, v12

    ushr-long/2addr v6, v4

    const/16 v12, 0xf

    aget-wide v13, p3, v12

    shl-long/2addr v13, v10

    xor-long/2addr v6, v13

    add-int/lit8 v13, p2, 0x6

    aget-wide v14, p1, v13

    const/16 v16, 0x6

    aget-wide v23, p3, v16

    xor-long v23, v23, v6

    ushr-long v25, v8, v21

    xor-long v23, v23, v25

    shl-long v25, v6, v1

    xor-long v23, v23, v25

    ushr-long v25, v8, v20

    xor-long v23, v23, v25

    shl-long v25, v6, v11

    xor-long v23, v23, v25

    ushr-long v8, v8, v22

    xor-long v8, v23, v8

    shl-long v23, v6, v5

    xor-long v8, v8, v23

    xor-long/2addr v8, v14

    aput-wide v8, p1, v13

    aget-wide v8, p3, v12

    ushr-long/2addr v8, v4

    const/16 v4, 0x10

    aget-wide v12, p3, v4

    shl-long/2addr v12, v10

    xor-long/2addr v8, v12

    add-int/lit8 v4, p2, 0x7

    aget-wide v12, p1, v4

    const/4 v10, 0x7

    aget-wide v14, p3, v10

    xor-long/2addr v14, v8

    ushr-long v18, v6, v21

    xor-long v14, v14, v18

    shl-long v18, v8, v1

    xor-long v14, v14, v18

    ushr-long v18, v6, v20

    xor-long v14, v14, v18

    shl-long v18, v8, v11

    xor-long v14, v14, v18

    ushr-long v6, v6, v22

    xor-long/2addr v6, v14

    shl-long v14, v8, v5

    xor-long/2addr v6, v14

    xor-long/2addr v6, v12

    aput-wide v6, p1, v4

    const/16 v4, 0x8

    add-int/lit8 v6, p2, 0x8

    aget-wide v12, p1, v6

    aget-wide v14, p3, v4

    xor-long/2addr v14, v2

    ushr-long v16, v8, v21

    xor-long v14, v14, v16

    shl-long v16, v2, v1

    xor-long v14, v14, v16

    ushr-long v16, v8, v20

    xor-long v14, v14, v16

    shl-long v10, v2, v11

    xor-long/2addr v10, v14

    ushr-long v7, v8, v22

    xor-long/2addr v7, v10

    shl-long v1, v2, v5

    xor-long/2addr v1, v7

    iget-wide v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n;->mask:J

    and-long v0, v1, v3

    xor-long/2addr v0, v12

    aput-wide v0, p1, v6

    return-void
.end method

###### Class org.bouncycastle.pqc.crypto.gemss.Rem_GF2n.REM544_PENTANOMIAL_K3_IS_128_GF2X (org.bouncycastle.pqc.crypto.gemss.Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X)
.class public Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;
.super Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "REM544_PENTANOMIAL_K3_IS_128_GF2X"
.end annotation


# instance fields
.field private final k1:I

.field private final k164:I

.field private final k2:I

.field private final k264:I


# direct methods
.method public constructor <init>(IIIIIIJ)V
    .registers 9

    .line 0
    invoke-direct {p0}, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n;-><init>()V

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k1:I

    iput p2, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k2:I

    iput p3, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n;->ki:I

    iput p4, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n;->ki64:I

    iput p5, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k164:I

    iput p6, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k264:I

    iput-wide p7, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n;->mask:J

    return-void
.end method


# virtual methods
.method public rem_gf2n([JI[J)V
    .registers 29

    .line 0
    move-object/from16 v0, p0

    const/16 v1, 0xa

    aget-wide v2, p3, v1

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n;->ki:I

    ushr-long/2addr v2, v4

    const/16 v5, 0xb

    aget-wide v5, p3, v5

    iget v7, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n;->ki64:I

    shl-long v8, v5, v7

    xor-long/2addr v2, v8

    ushr-long/2addr v5, v4

    const/16 v8, 0xc

    aget-wide v8, p3, v8

    shl-long v10, v8, v7

    xor-long/2addr v5, v10

    ushr-long/2addr v8, v4

    const/16 v10, 0xd

    aget-wide v11, p3, v10

    shl-long/2addr v11, v7

    xor-long/2addr v8, v11

    add-int/lit8 v11, p2, 0x4

    const/4 v12, 0x4

    aget-wide v12, p3, v12

    xor-long/2addr v12, v8

    xor-long/2addr v12, v2

    iget v14, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k164:I

    ushr-long v15, v5, v14

    xor-long/2addr v12, v15

    iget v15, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k1:I

    shl-long v16, v8, v15

    xor-long v12, v12, v16

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k264:I

    ushr-long v17, v5, v1

    xor-long v12, v12, v17

    iget v10, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k2:I

    shl-long v18, v8, v10

    xor-long v12, v12, v18

    aput-wide v12, p1, v11

    const/16 v11, 0xd

    aget-wide v11, p3, v11

    ushr-long/2addr v11, v4

    const/16 v13, 0xe

    aget-wide v17, p3, v13

    shl-long v17, v17, v7

    xor-long v11, v11, v17

    add-int/lit8 v17, p2, 0x5

    const/16 v18, 0x5

    aget-wide v18, p3, v18

    xor-long v18, v18, v11

    xor-long v18, v18, v5

    ushr-long v20, v8, v14

    xor-long v18, v18, v20

    shl-long v20, v11, v15

    xor-long v18, v18, v20

    ushr-long v20, v8, v1

    xor-long v18, v18, v20

    shl-long v20, v11, v10

    xor-long v18, v18, v20

    aput-wide v18, p1, v17

    aget-wide v17, p3, v13

    ushr-long v17, v17, v4

    const/16 v13, 0xf

    aget-wide v19, p3, v13

    shl-long v19, v19, v7

    xor-long v17, v17, v19

    add-int/lit8 v19, p2, 0x6

    const/16 v20, 0x6

    aget-wide v20, p3, v20

    xor-long v20, v20, v17

    xor-long v8, v20, v8

    ushr-long v20, v11, v14

    xor-long v8, v8, v20

    shl-long v20, v17, v15

    xor-long v8, v8, v20

    ushr-long v20, v11, v1

    xor-long v8, v8, v20

    shl-long v20, v17, v10

    xor-long v8, v8, v20

    aput-wide v8, p1, v19

    aget-wide v8, p3, v13

    ushr-long/2addr v8, v4

    const/16 v13, 0x10

    aget-wide v19, p3, v13

    shl-long v19, v19, v7

    xor-long v8, v8, v19

    add-int/lit8 v19, p2, 0x7

    const/16 v20, 0x7

    aget-wide v20, p3, v20

    xor-long v20, v20, v8

    xor-long v11, v20, v11

    ushr-long v20, v17, v14

    xor-long v11, v11, v20

    shl-long v20, v8, v15

    xor-long v11, v11, v20

    ushr-long v20, v17, v1

    xor-long v11, v11, v20

    shl-long v20, v8, v10

    xor-long v11, v11, v20

    aput-wide v11, p1, v19

    aget-wide v11, p3, v13

    ushr-long/2addr v11, v4

    add-int/lit8 v19, p2, 0x8

    const/16 v20, 0x8

    aget-wide v21, p3, v20

    xor-long v21, v21, v11

    xor-long v21, v21, v17

    ushr-long v23, v8, v14

    xor-long v21, v21, v23

    shl-long v23, v11, v15

    xor-long v21, v21, v23

    ushr-long v23, v8, v1

    xor-long v21, v21, v23

    shl-long v23, v11, v10

    xor-long v21, v21, v23

    move/from16 v23, v14

    iget-wide v13, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n;->mask:J

    and-long v13, v21, v13

    aput-wide v13, p1, v19

    aget-wide v13, p3, v20

    xor-long v13, v13, v17

    ushr-long/2addr v13, v4

    const/16 v0, 0x9

    aget-wide v17, p3, v0

    xor-long v19, v17, v8

    shl-long v19, v19, v7

    xor-long v13, v13, v19

    const/16 v0, 0x10

    aget-wide v19, p3, v0

    ushr-long v19, v19, v1

    xor-long v13, v13, v19

    xor-long v8, v17, v8

    ushr-long/2addr v8, v4

    const/16 v0, 0xa

    aget-wide v16, p3, v0

    xor-long v11, v16, v11

    shl-long/2addr v11, v7

    xor-long v7, v8, v11

    const/4 v0, 0x0

    aget-wide v11, p3, v0

    xor-long/2addr v11, v13

    shl-long v16, v13, v15

    xor-long v11, v11, v16

    shl-long v16, v13, v10

    xor-long v11, v11, v16

    aput-wide v11, p1, p2

    add-int/lit8 v0, p2, 0x1

    const/4 v4, 0x1

    aget-wide v11, p3, v4

    xor-long/2addr v11, v7

    ushr-long v16, v13, v23

    xor-long v11, v11, v16

    shl-long v16, v7, v15

    xor-long v11, v11, v16

    ushr-long v16, v13, v1

    xor-long v11, v11, v16

    shl-long v16, v7, v10

    xor-long v11, v11, v16

    aput-wide v11, p1, v0

    add-int/lit8 v0, p2, 0x2

    const/4 v4, 0x2

    aget-wide v11, p3, v4

    xor-long/2addr v11, v2

    xor-long/2addr v11, v13

    ushr-long v13, v7, v23

    xor-long/2addr v11, v13

    shl-long v13, v2, v15

    xor-long/2addr v11, v13

    ushr-long v13, v7, v1

    xor-long/2addr v11, v13

    shl-long v13, v2, v10

    xor-long/2addr v11, v13

    aput-wide v11, p1, v0

    const/4 v0, 0x3

    add-int/lit8 v4, p2, 0x3

    aget-wide v11, p3, v0

    xor-long/2addr v11, v5

    xor-long/2addr v7, v11

    ushr-long v11, v2, v23

    xor-long/2addr v7, v11

    shl-long v11, v5, v15

    xor-long/2addr v7, v11

    ushr-long v0, v2, v1

    xor-long/2addr v0, v7

    shl-long v2, v5, v10

    xor-long/2addr v0, v2

    aput-wide v0, p1, v4

    return-void
.end method

.method public rem_gf2n_xor([JI[J)V
    .registers 31

    .line 0
    move-object/from16 v0, p0

    const/16 v1, 0xa

    aget-wide v2, p3, v1

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n;->ki:I

    ushr-long/2addr v2, v4

    const/16 v5, 0xb

    aget-wide v5, p3, v5

    iget v7, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n;->ki64:I

    shl-long v8, v5, v7

    xor-long/2addr v2, v8

    ushr-long/2addr v5, v4

    const/16 v8, 0xc

    aget-wide v8, p3, v8

    shl-long v10, v8, v7

    xor-long/2addr v5, v10

    ushr-long/2addr v8, v4

    const/16 v10, 0xd

    aget-wide v11, p3, v10

    shl-long/2addr v11, v7

    xor-long/2addr v8, v11

    add-int/lit8 v11, p2, 0x4

    aget-wide v12, p1, v11

    const/4 v14, 0x4

    aget-wide v14, p3, v14

    xor-long/2addr v14, v8

    xor-long/2addr v14, v2

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k164:I

    ushr-long v17, v5, v1

    xor-long v14, v14, v17

    iget v10, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k1:I

    shl-long v18, v8, v10

    xor-long v14, v14, v18

    move-wide/from16 v18, v2

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k264:I

    ushr-long v20, v5, v2

    xor-long v14, v14, v20

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k2:I

    shl-long v20, v8, v3

    xor-long v14, v14, v20

    xor-long/2addr v12, v14

    aput-wide v12, p1, v11

    const/16 v11, 0xd

    aget-wide v11, p3, v11

    ushr-long/2addr v11, v4

    const/16 v13, 0xe

    aget-wide v14, p3, v13

    shl-long/2addr v14, v7

    xor-long/2addr v11, v14

    add-int/lit8 v14, p2, 0x5

    aget-wide v20, p1, v14

    const/4 v15, 0x5

    aget-wide v22, p3, v15

    xor-long v22, v22, v11

    xor-long v22, v22, v5

    ushr-long v24, v8, v1

    xor-long v22, v22, v24

    shl-long v24, v11, v10

    xor-long v22, v22, v24

    ushr-long v24, v8, v2

    xor-long v22, v22, v24

    shl-long v24, v11, v3

    xor-long v22, v22, v24

    xor-long v20, v20, v22

    aput-wide v20, p1, v14

    aget-wide v13, p3, v13

    ushr-long/2addr v13, v4

    const/16 v15, 0xf

    aget-wide v20, p3, v15

    shl-long v20, v20, v7

    xor-long v13, v13, v20

    add-int/lit8 v17, p2, 0x6

    aget-wide v20, p1, v17

    const/16 v22, 0x6

    aget-wide v22, p3, v22

    xor-long v22, v22, v13

    xor-long v8, v22, v8

    ushr-long v22, v11, v1

    xor-long v8, v8, v22

    shl-long v22, v13, v10

    xor-long v8, v8, v22

    ushr-long v22, v11, v2

    xor-long v8, v8, v22

    shl-long v22, v13, v3

    xor-long v8, v8, v22

    xor-long v8, v20, v8

    aput-wide v8, p1, v17

    aget-wide v8, p3, v15

    ushr-long/2addr v8, v4

    const/16 v15, 0x10

    aget-wide v20, p3, v15

    shl-long v20, v20, v7

    xor-long v8, v8, v20

    add-int/lit8 v17, p2, 0x7

    aget-wide v20, p1, v17

    const/16 v22, 0x7

    aget-wide v22, p3, v22

    xor-long v22, v22, v8

    xor-long v11, v22, v11

    ushr-long v22, v13, v1

    xor-long v11, v11, v22

    shl-long v22, v8, v10

    xor-long v11, v11, v22

    ushr-long v22, v13, v2

    xor-long v11, v11, v22

    shl-long v22, v8, v3

    xor-long v11, v11, v22

    xor-long v11, v20, v11

    aput-wide v11, p1, v17

    aget-wide v11, p3, v15

    ushr-long/2addr v11, v4

    add-int/lit8 v17, p2, 0x8

    aget-wide v20, p1, v17

    const/16 v22, 0x8

    aget-wide v23, p3, v22

    xor-long v23, v23, v11

    xor-long v23, v23, v13

    ushr-long v25, v8, v1

    xor-long v23, v23, v25

    shl-long v25, v11, v10

    xor-long v23, v23, v25

    ushr-long v25, v8, v2

    xor-long v23, v23, v25

    shl-long v25, v11, v3

    xor-long v23, v23, v25

    move-wide/from16 v25, v5

    iget-wide v5, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n;->mask:J

    and-long v5, v23, v5

    xor-long v5, v20, v5

    aput-wide v5, p1, v17

    aget-wide v5, p3, v22

    xor-long/2addr v5, v13

    ushr-long/2addr v5, v4

    const/16 v0, 0x9

    aget-wide v13, p3, v0

    xor-long v20, v13, v8

    shl-long v20, v20, v7

    xor-long v5, v5, v20

    aget-wide v20, p3, v15

    ushr-long v20, v20, v2

    xor-long v5, v5, v20

    xor-long/2addr v8, v13

    ushr-long/2addr v8, v4

    const/16 v0, 0xa

    aget-wide v13, p3, v0

    xor-long/2addr v11, v13

    shl-long/2addr v11, v7

    xor-long v7, v8, v11

    aget-wide v11, p1, p2

    const/4 v0, 0x0

    aget-wide v13, p3, v0

    xor-long/2addr v13, v5

    shl-long v15, v5, v10

    xor-long/2addr v13, v15

    shl-long v15, v5, v3

    xor-long/2addr v13, v15

    xor-long/2addr v11, v13

    aput-wide v11, p1, p2

    add-int/lit8 v0, p2, 0x1

    aget-wide v11, p1, v0

    const/4 v4, 0x1

    aget-wide v13, p3, v4

    xor-long/2addr v13, v7

    ushr-long v15, v5, v1

    xor-long/2addr v13, v15

    shl-long v15, v7, v10

    xor-long/2addr v13, v15

    ushr-long v15, v5, v2

    xor-long/2addr v13, v15

    shl-long v15, v7, v3

    xor-long/2addr v13, v15

    xor-long/2addr v11, v13

    aput-wide v11, p1, v0

    add-int/lit8 v0, p2, 0x2

    aget-wide v11, p1, v0

    const/4 v4, 0x2

    aget-wide v13, p3, v4

    xor-long v13, v13, v18

    xor-long v4, v13, v5

    ushr-long v13, v7, v1

    xor-long/2addr v4, v13

    shl-long v13, v18, v10

    xor-long/2addr v4, v13

    ushr-long v13, v7, v2

    xor-long/2addr v4, v13

    shl-long v13, v18, v3

    xor-long/2addr v4, v13

    xor-long/2addr v4, v11

    aput-wide v4, p1, v0

    const/4 v0, 0x3

    add-int/lit8 v4, p2, 0x3

    aget-wide v5, p1, v4

    aget-wide v11, p3, v0

    xor-long v11, v11, v25

    xor-long/2addr v7, v11

    ushr-long v0, v18, v1

    xor-long/2addr v0, v7

    shl-long v7, v25, v10

    xor-long/2addr v0, v7

    ushr-long v7, v18, v2

    xor-long/2addr v0, v7

    shl-long v2, v25, v3

    xor-long/2addr v0, v2

    xor-long/2addr v0, v5

    aput-wide v0, p1, v4

    return-void
.end method
