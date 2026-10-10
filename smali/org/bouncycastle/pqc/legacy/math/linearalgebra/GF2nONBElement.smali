###### Class org.bouncycastle.pqc.legacy.math.linearalgebra.GF2nONBElement (org.bouncycastle.pqc.legacy.math.linearalgebra.GF2nONBElement)
.class public Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;
.super Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;


# static fields
.field private static final MAXLONG:I = 0x40

.field private static final mBitmask:[J

.field private static final mIBY64:[I

.field private static final mMaxmask:[J


# instance fields
.field private mBit:I

.field private mLength:I

.field private mPol:[J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 0
    const/16 v0, 0x40

    new-array v1, v0, [J

    fill-array-data v1, :array_1a

    sput-object v1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mBitmask:[J

    new-array v0, v0, [J

    fill-array-data v0, :array_11e

    sput-object v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mMaxmask:[J

    const/16 v0, 0x180

    new-array v0, v0, [I

    fill-array-data v0, :array_222

    sput-object v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mIBY64:[I

    return-void

    :array_1a
    .array-data 8
        0x1
        0x2
        0x4
        0x8
        0x10
        0x20
        0x40
        0x80
        0x100
        0x200
        0x400
        0x800
        0x1000
        0x2000
        0x4000
        0x8000
        0x10000
        0x20000
        0x40000
        0x80000
        0x100000
        0x200000
        0x400000
        0x800000
        0x1000000
        0x2000000
        0x4000000
        0x8000000
        0x10000000
        0x20000000
        0x40000000
        0x80000000L
        0x100000000L
        0x200000000L
        0x400000000L
        0x800000000L
        0x1000000000L
        0x2000000000L
        0x4000000000L
        0x8000000000L
        0x10000000000L
        0x20000000000L
        0x40000000000L
        0x80000000000L
        0x100000000000L
        0x200000000000L
        0x400000000000L
        0x800000000000L
        0x1000000000000L
        0x2000000000000L
        0x4000000000000L
        0x8000000000000L
        0x10000000000000L
        0x20000000000000L
        0x40000000000000L
        0x80000000000000L
        0x100000000000000L
        0x200000000000000L
        0x400000000000000L
        0x800000000000000L
        0x1000000000000000L
        0x2000000000000000L
        0x4000000000000000L    # 2.0
        -0x8000000000000000L
    .end array-data

    :array_11e
    .array-data 8
        0x1
        0x3
        0x7
        0xf
        0x1f
        0x3f
        0x7f
        0xff
        0x1ff
        0x3ff
        0x7ff
        0xfff
        0x1fff
        0x3fff
        0x7fff
        0xffff
        0x1ffff
        0x3ffff
        0x7ffff
        0xfffff
        0x1fffff
        0x3fffff
        0x7fffff
        0xffffff
        0x1ffffff
        0x3ffffff
        0x7ffffff
        0xfffffff
        0x1fffffff
        0x3fffffff
        0x7fffffff
        0xffffffffL
        0x1ffffffffL
        0x3ffffffffL
        0x7ffffffffL
        0xfffffffffL
        0x1fffffffffL
        0x3fffffffffL
        0x7fffffffffL
        0xffffffffffL
        0x1ffffffffffL
        0x3ffffffffffL
        0x7ffffffffffL
        0xfffffffffffL
        0x1fffffffffffL
        0x3fffffffffffL
        0x7fffffffffffL
        0xffffffffffffL
        0x1ffffffffffffL
        0x3ffffffffffffL    # 5.562684646268E-309
        0x7ffffffffffffL
        0xfffffffffffffL
        0x1fffffffffffffL
        0x3fffffffffffffL
        0x7fffffffffffffL
        0xffffffffffffffL
        0x1ffffffffffffffL    # 4.77830972673648E-299
        0x3ffffffffffffffL
        0x7ffffffffffffffL
        0xfffffffffffffffL
        0x1fffffffffffffffL
        0x3fffffffffffffffL    # 1.9999999999999998
        0x7fffffffffffffffL
        -0x1
    .end array-data

    :array_222
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
    .end array-data
.end method

.method public constructor <init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;-><init>()V

    iget-object v0, p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;->mField:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;->mField:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;->getDegree()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;->mDegree:I

    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;->mField:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;

    check-cast v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;->getONBLength()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mLength:I

    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;->mField:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;

    check-cast v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;->getONBBit()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mBit:I

    iget v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mLength:I

    new-array v0, v0, [J

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mPol:[J

    invoke-direct {p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->getElement()[J

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->assign([J)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;Ljava/math/BigInteger;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;->mField:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;->getDegree()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;->mDegree:I

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;->getONBLength()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mLength:I

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;->getONBBit()I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mBit:I

    iget p1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mLength:I

    new-array p1, p1, [J

    iput-object p1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mPol:[J

    invoke-direct {p0, p2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->assign(Ljava/math/BigInteger;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;Ljava/security/SecureRandom;)V
    .registers 8

    .line 0
    invoke-direct {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;->mField:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;->getDegree()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;->mDegree:I

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;->getONBLength()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mLength:I

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;->getONBBit()I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mBit:I

    iget p1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mLength:I

    new-array v0, p1, [J

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mPol:[J

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-le p1, v2, :cond_43

    :goto_21
    iget p1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mLength:I

    sub-int/2addr p1, v2

    if-ge v1, p1, :cond_31

    iget-object p1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mPol:[J

    invoke-virtual {p2}, Ljava/util/Random;->nextLong()J

    move-result-wide v3

    aput-wide v3, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    :cond_31
    invoke-virtual {p2}, Ljava/util/Random;->nextLong()J

    move-result-wide p1

    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mPol:[J

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mLength:I

    sub-int/2addr v1, v2

    iget p0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mBit:I

    rsub-int/lit8 p0, p0, 0x40

    ushr-long p0, p1, p0

    aput-wide p0, v0, v1

    goto :goto_54

    :cond_43
    invoke-virtual {p2}, Ljava/util/Random;->nextLong()J

    move-result-wide p1

    aput-wide p1, v0, v1

    iget-object p1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mPol:[J

    aget-wide v2, p1, v1

    iget p0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mBit:I

    rsub-int/lit8 p0, p0, 0x40

    ushr-long/2addr v2, p0

    aput-wide v2, p1, v1

    :goto_54
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;[B)V
    .registers 4

    .line 0
    invoke-direct {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;->mField:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;->getDegree()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;->mDegree:I

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;->getONBLength()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mLength:I

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;->getONBBit()I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mBit:I

    iget p1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mLength:I

    new-array p1, p1, [J

    iput-object p1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mPol:[J

    invoke-direct {p0, p2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->assign([B)V

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;[J)V
    .registers 4

    .line 0
    invoke-direct {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;->mField:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;->getDegree()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;->mDegree:I

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;->getONBLength()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mLength:I

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;->getONBBit()I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mBit:I

    iput-object p2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mPol:[J

    return-void
.end method

.method public static ONE(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;
    .registers 7

    .line 0
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;->getONBLength()I

    move-result v0

    new-array v1, v0, [J

    const/4 v2, 0x0

    :goto_7
    add-int/lit8 v3, v0, -0x1

    if-ge v2, v3, :cond_12

    const-wide/16 v3, -0x1

    aput-wide v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_12
    sget-object v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mMaxmask:[J

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;->getONBBit()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    aget-wide v4, v0, v2

    aput-wide v4, v1, v3

    new-instance v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;

    invoke-direct {v0, p0, v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;-><init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;[J)V

    return-object v0
.end method

.method public static ZERO(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;
    .registers 3

    .line 0
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;->getONBLength()I

    move-result v0

    new-array v0, v0, [J

    new-instance v1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;

    invoke-direct {v1, p0, v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;-><init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;[J)V

    return-object v1
.end method

.method private assign(Ljava/math/BigInteger;)V
    .registers 2

    .line 0
    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->assign([B)V

    return-void
.end method

.method private assign([B)V
    .registers 11

    .line 0
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mLength:I

    new-array v0, v0, [J

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mPol:[J

    const/4 v0, 0x0

    :goto_7
    array-length v1, p1

    if-ge v0, v1, :cond_25

    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mPol:[J

    ushr-int/lit8 v2, v0, 0x3

    aget-wide v3, v1, v2

    array-length v5, p1

    add-int/lit8 v5, v5, -0x1

    sub-int/2addr v5, v0

    aget-byte v5, p1, v5

    int-to-long v5, v5

    const-wide/16 v7, 0xff

    and-long/2addr v5, v7

    and-int/lit8 v7, v0, 0x7

    shl-int/lit8 v7, v7, 0x3

    shl-long/2addr v5, v7

    or-long/2addr v3, v5

    aput-wide v3, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_25
    return-void
.end method

.method private assign([J)V
    .registers 4

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mPol:[J

    iget p0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mLength:I

    const/4 v1, 0x0

    invoke-static {p1, v1, v0, v1, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method private getElement()[J
    .registers 4

    .line 0
    iget-object p0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mPol:[J

    array-length v0, p0

    new-array v0, v0, [J

    const/4 v1, 0x0

    array-length v2, p0

    invoke-static {p0, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method private getElementReverseOrder()[J
    .registers 8

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mPol:[J

    array-length v0, v0

    new-array v0, v0, [J

    const/4 v1, 0x0

    :goto_6
    iget v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;->mDegree:I

    if-ge v1, v2, :cond_23

    sub-int/2addr v2, v1

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->testBit(I)Z

    move-result v2

    if-eqz v2, :cond_20

    ushr-int/lit8 v2, v1, 0x6

    aget-wide v3, v0, v2

    sget-object v5, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mBitmask:[J

    and-int/lit8 v6, v1, 0x3f

    aget-wide v5, v5, v6

    or-long/2addr v3, v5

    aput-wide v3, v0, v2

    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_23
    return-object v0
.end method


# virtual methods
.method public add(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GFElement;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GFElement;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 0
    new-instance v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;

    invoke-direct {v0, p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;-><init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;)V

    invoke-virtual {v0, p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->addToThis(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GFElement;)V

    return-object v0
.end method

.method public addToThis(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GFElement;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 0
    instance-of v0, p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;->mField:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;

    check-cast p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;

    iget-object v1, p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;->mField:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    const/4 v0, 0x0

    :goto_11
    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mLength:I

    if-ge v0, v1, :cond_23

    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mPol:[J

    aget-wide v2, v1, v0

    iget-object v4, p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mPol:[J

    aget-wide v4, v4, v0

    xor-long/2addr v2, v4

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    :cond_23
    return-void

    :cond_24
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_2a
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0
.end method

.method public assignOne()V
    .registers 5

    .line 0
    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mLength:I

    add-int/lit8 v2, v1, -0x1

    if-ge v0, v2, :cond_10

    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mPol:[J

    const-wide/16 v2, -0x1

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_10
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mPol:[J

    add-int/lit8 v1, v1, -0x1

    sget-object v2, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mMaxmask:[J

    iget p0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mBit:I

    add-int/lit8 p0, p0, -0x1

    aget-wide v2, v2, p0

    aput-wide v2, v0, v1

    return-void
.end method

.method public assignZero()V
    .registers 2

    .line 0
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mLength:I

    new-array v0, v0, [J

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mPol:[J

    return-void
.end method

.method public clone()Ljava/lang/Object;
    .registers 2

    .line 0
    new-instance v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;

    invoke-direct {v0, p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;-><init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8

    .line 0
    const/4 v0, 0x0

    if-eqz p1, :cond_21

    instance-of v1, p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;

    if-nez v1, :cond_8

    goto :goto_21

    :cond_8
    check-cast p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;

    move v1, v0

    :goto_b
    iget v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mLength:I

    if-ge v1, v2, :cond_1f

    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mPol:[J

    aget-wide v2, v2, v1

    iget-object v4, p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mPol:[J

    aget-wide v4, v4, v1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1c

    return v0

    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_1f
    const/4 p0, 0x1

    return p0

    :cond_21
    :goto_21
    return v0
.end method

.method public hashCode()I
    .registers 1

    .line 0
    iget-object p0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mPol:[J

    invoke-static {p0}, Lorg/bouncycastle/util/Arrays;->hashCode([J)I

    move-result p0

    return p0
.end method

.method public increase()Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;
    .registers 2

    .line 0
    new-instance v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;

    invoke-direct {v0, p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;-><init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;)V

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->increaseThis()V

    return-object v0
.end method

.method public increaseThis()V
    .registers 2

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;->mField:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;

    check-cast v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;

    invoke-static {v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->ONE(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->addToThis(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GFElement;)V

    return-void
.end method

.method public invert()Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GFElement;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArithmeticException;
        }
    .end annotation

    .line 0
    new-instance v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;

    invoke-direct {v0, p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;-><init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;)V

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->invertThis()V

    return-object v0
.end method

.method public invertThis()V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArithmeticException;
        }
    .end annotation

    .line 0
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->isZero()Z

    move-result v0

    if-nez v0, :cond_60

    const/16 v0, 0x1f

    const/4 v1, 0x0

    :goto_9
    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    if-nez v1, :cond_21

    if-ltz v0, :cond_21

    iget v5, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;->mDegree:I

    sub-int/2addr v5, v4

    int-to-long v5, v5

    sget-object v7, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mBitmask:[J

    aget-wide v7, v7, v0

    and-long/2addr v5, v7

    cmp-long v2, v5, v2

    if-eqz v2, :cond_1e

    move v1, v4

    :cond_1e
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    :cond_21
    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;->mField:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;

    check-cast v1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;

    invoke-static {v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->ZERO(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;

    new-instance v1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;

    invoke-direct {v1, p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;-><init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;)V

    move v5, v4

    :goto_2e
    if-ltz v0, :cond_5c

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;

    move v7, v4

    :goto_37
    if-gt v7, v5, :cond_3f

    invoke-virtual {v6}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;->squareThis()V

    add-int/lit8 v7, v7, 0x1

    goto :goto_37

    :cond_3f
    invoke-interface {v1, v6}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GFElement;->multiplyThisBy(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GFElement;)V

    shl-int/lit8 v5, v5, 0x1

    iget v6, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;->mDegree:I

    sub-int/2addr v6, v4

    int-to-long v6, v6

    sget-object v8, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mBitmask:[J

    aget-wide v8, v8, v0

    and-long/2addr v6, v8

    cmp-long v6, v6, v2

    if-eqz v6, :cond_59

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;->squareThis()V

    invoke-interface {v1, p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GFElement;->multiplyThisBy(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GFElement;)V

    add-int/lit8 v5, v5, 0x1

    :cond_59
    add-int/lit8 v0, v0, -0x1

    goto :goto_2e

    :cond_5c
    invoke-virtual {v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;->squareThis()V

    return-void

    :cond_60
    new-instance p0, Ljava/lang/ArithmeticException;

    invoke-direct {p0}, Ljava/lang/ArithmeticException;-><init>()V

    throw p0
.end method

.method public isOne()Z
    .registers 8

    .line 0
    const/4 v0, 0x1

    const/4 v1, 0x0

    move v3, v0

    move v2, v1

    :goto_4
    iget v4, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mLength:I

    add-int/lit8 v5, v4, -0x1

    if-ge v2, v5, :cond_1e

    if-eqz v3, :cond_1e

    if-eqz v3, :cond_1a

    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mPol:[J

    aget-wide v3, v3, v2

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-nez v3, :cond_1a

    move v3, v0

    goto :goto_1b

    :cond_1a
    move v3, v1

    :goto_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_1e
    if-eqz v3, :cond_3a

    if-eqz v3, :cond_38

    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mPol:[J

    sub-int/2addr v4, v0

    aget-wide v2, v2, v4

    sget-object v4, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mMaxmask:[J

    iget p0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mBit:I

    add-int/lit8 v5, p0, -0x1

    aget-wide v5, v4, v5

    and-long/2addr v2, v5

    sub-int/2addr p0, v0

    aget-wide v4, v4, p0

    cmp-long p0, v2, v4

    if-nez p0, :cond_38

    goto :goto_39

    :cond_38
    move v0, v1

    :goto_39
    move v3, v0

    :cond_3a
    return v3
.end method

.method public isZero()Z
    .registers 8

    .line 0
    const/4 v0, 0x1

    const/4 v1, 0x0

    move v3, v0

    move v2, v1

    :goto_4
    iget v4, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mLength:I

    if-ge v2, v4, :cond_1c

    if-eqz v3, :cond_1c

    if-eqz v3, :cond_18

    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mPol:[J

    aget-wide v3, v3, v2

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_18

    move v3, v0

    goto :goto_19

    :cond_18
    move v3, v1

    :goto_19
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_1c
    return v3
.end method

.method public multiply(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GFElement;)Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GFElement;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 0
    new-instance v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;

    invoke-direct {v0, p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;-><init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;)V

    invoke-virtual {v0, p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->multiplyThisBy(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GFElement;)V

    return-object v0
.end method

.method public multiplyThisBy(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GFElement;)V
    .registers 30
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    instance-of v2, v1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;

    if-eqz v2, :cond_15f

    iget-object v2, v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;->mField:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;

    move-object v3, v1

    check-cast v3, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;

    iget-object v4, v3, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;->mField:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;

    invoke-virtual {v2, v4}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_159

    invoke-virtual/range {p0 .. p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->squareThis()V

    goto/16 :goto_158

    :cond_20
    iget-object v1, v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mPol:[J

    iget-object v2, v3, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mPol:[J

    iget v3, v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mLength:I

    new-array v4, v3, [J

    iget-object v5, v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;->mField:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;

    check-cast v5, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;

    iget-object v5, v5, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;->mMult:[[I

    add-int/lit8 v6, v3, -0x1

    iget v7, v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mBit:I

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    sget-object v9, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mBitmask:[J

    const/16 v10, 0x3f

    aget-wide v11, v9, v10

    aget-wide v13, v9, v7

    const/4 v7, 0x0

    move v9, v7

    :goto_3e
    iget v15, v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;->mDegree:I

    if-ge v9, v15, :cond_155

    move v15, v7

    move/from16 v16, v15

    :goto_45
    iget v8, v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;->mDegree:I

    const-wide/16 v17, 0x0

    if-ge v15, v8, :cond_8e

    sget-object v8, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mIBY64:[I

    aget v19, v8, v15

    and-int/lit8 v20, v15, 0x3f

    aget-object v21, v5, v15

    aget v22, v21, v7

    aget v23, v8, v22

    and-int/lit8 v22, v22, 0x3f

    aget-wide v24, v1, v19

    sget-object v19, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mBitmask:[J

    aget-wide v26, v19, v20

    and-long v24, v24, v26

    cmp-long v20, v24, v17

    if-eqz v20, :cond_88

    aget-wide v23, v2, v23

    aget-wide v25, v19, v22

    and-long v22, v23, v25

    cmp-long v20, v22, v17

    if-eqz v20, :cond_71

    xor-int/lit8 v16, v16, 0x1

    :cond_71
    const/16 v20, 0x1

    aget v10, v21, v20

    const/4 v7, -0x1

    if-eq v10, v7, :cond_88

    aget v7, v8, v10

    and-int/lit8 v8, v10, 0x3f

    aget-wide v23, v2, v7

    aget-wide v7, v19, v8

    and-long v7, v23, v7

    cmp-long v7, v7, v17

    if-eqz v7, :cond_88

    xor-int/lit8 v16, v16, 0x1

    :cond_88
    add-int/lit8 v15, v15, 0x1

    const/4 v7, 0x0

    const/16 v10, 0x3f

    goto :goto_45

    :cond_8e
    sget-object v7, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mIBY64:[I

    aget v7, v7, v9

    and-int/lit8 v8, v9, 0x3f

    if-eqz v16, :cond_a0

    aget-wide v15, v4, v7

    sget-object v10, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mBitmask:[J

    aget-wide v23, v10, v8

    xor-long v15, v15, v23

    aput-wide v15, v4, v7

    :cond_a0
    iget v7, v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mLength:I

    const-wide/16 v15, 0x1

    const/4 v8, 0x1

    if-le v7, v8, :cond_11d

    aget-wide v7, v1, v6

    and-long/2addr v7, v15

    cmp-long v7, v7, v15

    if-nez v7, :cond_b0

    const/4 v7, 0x1

    goto :goto_b1

    :cond_b0
    const/4 v7, 0x0

    :goto_b1
    add-int/lit8 v8, v3, -0x2

    move v10, v8

    :goto_b4
    if-ltz v10, :cond_d5

    aget-wide v23, v1, v10

    and-long v25, v23, v15

    cmp-long v19, v25, v17

    if-eqz v19, :cond_c3

    const/16 v19, 0x1

    :goto_c0
    const/16 v21, 0x1

    goto :goto_c6

    :cond_c3
    const/16 v19, 0x0

    goto :goto_c0

    :goto_c6
    ushr-long v23, v23, v21

    aput-wide v23, v1, v10

    if-eqz v7, :cond_d0

    xor-long v23, v23, v11

    aput-wide v23, v1, v10

    :cond_d0
    add-int/lit8 v10, v10, -0x1

    move/from16 v7, v19

    goto :goto_b4

    :cond_d5
    const/16 v21, 0x1

    aget-wide v23, v1, v6

    ushr-long v23, v23, v21

    aput-wide v23, v1, v6

    if-eqz v7, :cond_e3

    xor-long v23, v23, v13

    aput-wide v23, v1, v6

    :cond_e3
    aget-wide v23, v2, v6

    and-long v23, v23, v15

    cmp-long v7, v23, v15

    if-nez v7, :cond_ed

    const/4 v7, 0x1

    goto :goto_ee

    :cond_ed
    const/4 v7, 0x0

    :goto_ee
    if-ltz v8, :cond_10c

    aget-wide v23, v2, v8

    and-long v25, v23, v15

    cmp-long v10, v25, v17

    if-eqz v10, :cond_fc

    const/4 v10, 0x1

    :goto_f9
    const/16 v19, 0x1

    goto :goto_fe

    :cond_fc
    const/4 v10, 0x0

    goto :goto_f9

    :goto_fe
    ushr-long v23, v23, v19

    aput-wide v23, v2, v8

    if-eqz v7, :cond_108

    xor-long v23, v23, v11

    aput-wide v23, v2, v8

    :cond_108
    add-int/lit8 v8, v8, -0x1

    move v7, v10

    goto :goto_ee

    :cond_10c
    const/16 v19, 0x1

    aget-wide v15, v2, v6

    ushr-long v15, v15, v19

    aput-wide v15, v2, v6

    if-eqz v7, :cond_11a

    xor-long v7, v15, v13

    aput-wide v7, v2, v6

    :cond_11a
    const/4 v7, 0x0

    const/4 v8, 0x1

    goto :goto_14f

    :cond_11d
    const/4 v7, 0x0

    aget-wide v17, v1, v7

    and-long v19, v17, v15

    cmp-long v8, v19, v15

    if-nez v8, :cond_12a

    const/4 v8, 0x1

    const/16 v20, 0x1

    goto :goto_12d

    :cond_12a
    move/from16 v20, v7

    const/4 v8, 0x1

    :goto_12d
    ushr-long v17, v17, v8

    aput-wide v17, v1, v7

    if-eqz v20, :cond_137

    xor-long v17, v17, v13

    aput-wide v17, v1, v7

    :cond_137
    aget-wide v17, v2, v7

    and-long v19, v17, v15

    cmp-long v8, v19, v15

    if-nez v8, :cond_143

    const/4 v8, 0x1

    const/16 v20, 0x1

    goto :goto_146

    :cond_143
    move/from16 v20, v7

    const/4 v8, 0x1

    :goto_146
    ushr-long v15, v17, v8

    aput-wide v15, v2, v7

    if-eqz v20, :cond_14f

    xor-long/2addr v15, v13

    aput-wide v15, v2, v7

    :cond_14f
    :goto_14f
    add-int/lit8 v9, v9, 0x1

    const/16 v10, 0x3f

    goto/16 :goto_3e

    :cond_155
    invoke-direct {v0, v4}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->assign([J)V

    :goto_158
    return-void

    :cond_159
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_15f
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "The elements have different representation: not yet implemented"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public reverseOrder()V
    .registers 2

    .line 0
    invoke-direct {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->getElementReverseOrder()[J

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mPol:[J

    return-void
.end method

.method public solveQuadraticEquation()Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 0
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->trace()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_b3

    sget-object v1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mBitmask:[J

    const/16 v3, 0x3f

    aget-wide v4, v1, v3

    iget v1, v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mLength:I

    new-array v1, v1, [J

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    move-wide v9, v6

    :goto_17
    iget v11, v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mLength:I

    add-int/lit8 v12, v11, -0x1

    if-ge v8, v12, :cond_73

    move v11, v2

    :goto_1e
    const/16 v12, 0x40

    if-ge v11, v12, :cond_4c

    sget-object v12, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mBitmask:[J

    aget-wide v13, v12, v11

    iget-object v15, v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mPol:[J

    aget-wide v15, v15, v8

    and-long v17, v13, v15

    cmp-long v17, v17, v6

    if-eqz v17, :cond_3a

    add-int/lit8 v17, v11, -0x1

    aget-wide v17, v12, v17

    and-long v17, v9, v17

    cmp-long v17, v17, v6

    if-nez v17, :cond_49

    :cond_3a
    and-long/2addr v15, v13

    cmp-long v15, v15, v6

    if-nez v15, :cond_48

    add-int/lit8 v15, v11, -0x1

    aget-wide v15, v12, v15

    and-long/2addr v15, v9

    cmp-long v12, v15, v6

    if-eqz v12, :cond_49

    :cond_48
    xor-long/2addr v9, v13

    :cond_49
    add-int/lit8 v11, v11, 0x1

    goto :goto_1e

    :cond_4c
    aput-wide v9, v1, v8

    and-long/2addr v9, v4

    cmp-long v9, v9, v6

    const-wide/16 v10, 0x1

    if-eqz v9, :cond_60

    iget-object v12, v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mPol:[J

    add-int/lit8 v13, v8, 0x1

    aget-wide v12, v12, v13

    and-long/2addr v12, v10

    cmp-long v12, v12, v10

    if-eqz v12, :cond_6d

    :cond_60
    if-nez v9, :cond_6f

    iget-object v9, v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mPol:[J

    add-int/lit8 v12, v8, 0x1

    aget-wide v12, v9, v12

    and-long/2addr v12, v10

    cmp-long v9, v12, v6

    if-nez v9, :cond_6f

    :cond_6d
    move-wide v9, v6

    goto :goto_70

    :cond_6f
    move-wide v9, v10

    :goto_70
    add-int/lit8 v8, v8, 0x1

    goto :goto_17

    :cond_73
    iget v4, v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;->mDegree:I

    and-int/2addr v3, v4

    iget-object v4, v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mPol:[J

    sub-int/2addr v11, v2

    aget-wide v4, v4, v11

    move v8, v2

    :goto_7c
    if-ge v8, v3, :cond_a4

    sget-object v11, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mBitmask:[J

    aget-wide v12, v11, v8

    and-long v14, v12, v4

    cmp-long v14, v14, v6

    if-eqz v14, :cond_91

    add-int/lit8 v14, v8, -0x1

    aget-wide v14, v11, v14

    and-long/2addr v14, v9

    cmp-long v14, v14, v6

    if-nez v14, :cond_a1

    :cond_91
    and-long v14, v12, v4

    cmp-long v14, v14, v6

    if-nez v14, :cond_a0

    add-int/lit8 v14, v8, -0x1

    aget-wide v14, v11, v14

    and-long/2addr v14, v9

    cmp-long v11, v14, v6

    if-eqz v11, :cond_a1

    :cond_a0
    xor-long/2addr v9, v12

    :cond_a1
    add-int/lit8 v8, v8, 0x1

    goto :goto_7c

    :cond_a4
    iget v3, v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mLength:I

    sub-int/2addr v3, v2

    aput-wide v9, v1, v3

    new-instance v2, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;

    iget-object v0, v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;->mField:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nField;

    check-cast v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;

    invoke-direct {v2, v0, v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;-><init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBField;[J)V

    return-object v2

    :cond_b3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public square()Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;
    .registers 2

    .line 0
    new-instance v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;

    invoke-direct {v0, p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;-><init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;)V

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->squareThis()V

    return-object v0
.end method

.method public squareRoot()Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;
    .registers 2

    .line 0
    new-instance v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;

    invoke-direct {v0, p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;-><init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;)V

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->squareRootThis()V

    return-object v0
.end method

.method public squareRootThis()V
    .registers 20

    .line 0
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->getElement()[J

    move-result-object v1

    iget v2, v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mLength:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    iget v4, v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mBit:I

    sub-int/2addr v4, v3

    sget-object v5, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mBitmask:[J

    const/16 v6, 0x3f

    aget-wide v5, v5, v6

    const/4 v7, 0x0

    aget-wide v8, v1, v7

    const-wide/16 v10, 0x1

    and-long/2addr v8, v10

    const-wide/16 v12, 0x0

    cmp-long v8, v8, v12

    if-eqz v8, :cond_21

    move v8, v3

    goto :goto_22

    :cond_21
    move v8, v7

    :goto_22
    move v9, v2

    :goto_23
    if-ltz v9, :cond_4a

    aget-wide v14, v1, v9

    and-long v16, v14, v10

    cmp-long v16, v16, v12

    if-eqz v16, :cond_30

    move/from16 v16, v3

    goto :goto_32

    :cond_30
    move/from16 v16, v7

    :goto_32
    ushr-long/2addr v14, v3

    aput-wide v14, v1, v9

    if-eqz v8, :cond_45

    if-ne v9, v2, :cond_42

    sget-object v8, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mBitmask:[J

    aget-wide v17, v8, v4

    xor-long v14, v14, v17

    aput-wide v14, v1, v9

    goto :goto_45

    :cond_42
    xor-long/2addr v14, v5

    aput-wide v14, v1, v9

    :cond_45
    :goto_45
    add-int/lit8 v9, v9, -0x1

    move/from16 v8, v16

    goto :goto_23

    :cond_4a
    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->assign([J)V

    return-void
.end method

.method public squareThis()V
    .registers 20

    .line 0
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->getElement()[J

    move-result-object v1

    iget v2, v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mLength:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    iget v4, v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mBit:I

    add-int/lit8 v5, v4, -0x1

    sget-object v6, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mBitmask:[J

    const/16 v7, 0x3f

    aget-wide v7, v6, v7

    aget-wide v9, v1, v2

    aget-wide v11, v6, v5

    and-long/2addr v9, v11

    const-wide/16 v11, 0x0

    cmp-long v6, v9, v11

    const/4 v9, 0x0

    if-eqz v6, :cond_22

    move v6, v3

    goto :goto_23

    :cond_22
    move v6, v9

    :goto_23
    move v10, v9

    :goto_24
    const-wide/16 v13, 0x1

    if-ge v10, v2, :cond_42

    aget-wide v15, v1, v10

    and-long v17, v15, v7

    cmp-long v17, v17, v11

    if-eqz v17, :cond_33

    move/from16 v17, v3

    goto :goto_35

    :cond_33
    move/from16 v17, v9

    :goto_35
    shl-long/2addr v15, v3

    aput-wide v15, v1, v10

    if-eqz v6, :cond_3d

    xor-long/2addr v13, v15

    aput-wide v13, v1, v10

    :cond_3d
    add-int/lit8 v10, v10, 0x1

    move/from16 v6, v17

    goto :goto_24

    :cond_42
    aget-wide v7, v1, v2

    sget-object v10, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mBitmask:[J

    aget-wide v15, v10, v5

    and-long/2addr v15, v7

    cmp-long v5, v15, v11

    if-eqz v5, :cond_4e

    move v9, v3

    :cond_4e
    shl-long/2addr v7, v3

    aput-wide v7, v1, v2

    if-eqz v6, :cond_57

    xor-long v5, v7, v13

    aput-wide v5, v1, v2

    :cond_57
    if-eqz v9, :cond_60

    aget-wide v5, v1, v2

    aget-wide v3, v10, v4

    xor-long/2addr v3, v5

    aput-wide v3, v1, v2

    :cond_60
    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->assign([J)V

    return-void
.end method

.method public testBit(I)Z
    .registers 5

    .line 0
    const/4 v0, 0x0

    if-ltz p1, :cond_1c

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;->mDegree:I

    if-le p1, v1, :cond_8

    goto :goto_1c

    :cond_8
    iget-object p0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mPol:[J

    ushr-int/lit8 v1, p1, 0x6

    aget-wide v1, p0, v1

    sget-object p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mBitmask:[J

    and-int/lit8 p1, p1, 0x3f

    aget-wide p0, p0, p1

    and-long/2addr p0, v1

    const-wide/16 v1, 0x0

    cmp-long p0, p0, v1

    if-eqz p0, :cond_1c

    const/4 v0, 0x1

    :cond_1c
    :goto_1c
    return v0
.end method

.method public testRightmostBit()Z
    .registers 6

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mPol:[J

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mLength:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    aget-wide v0, v0, v1

    sget-object v3, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mBitmask:[J

    iget p0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mBit:I

    sub-int/2addr p0, v2

    aget-wide v3, v3, p0

    and-long/2addr v0, v3

    const-wide/16 v3, 0x0

    cmp-long p0, v0, v3

    if-eqz p0, :cond_17

    goto :goto_18

    :cond_17
    const/4 v2, 0x0

    :goto_18
    return v2
.end method

.method public toByteArray()[B
    .registers 10

    .line 0
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nElement;->mDegree:I

    add-int/lit8 v0, v0, -0x1

    shr-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, 0x1

    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_b
    if-ge v2, v0, :cond_27

    sub-int v3, v0, v2

    add-int/lit8 v3, v3, -0x1

    iget-object v4, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mPol:[J

    ushr-int/lit8 v5, v2, 0x3

    aget-wide v4, v4, v5

    and-int/lit8 v6, v2, 0x7

    shl-int/lit8 v6, v6, 0x3

    const-wide/16 v7, 0xff

    shl-long/2addr v7, v6

    and-long/2addr v4, v7

    ushr-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_27
    return-object v1
.end method

.method public toFlexiBigInt()Ljava/math/BigInteger;
    .registers 3

    .line 0
    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->toByteArray()[B

    move-result-object p0

    invoke-direct {v0, v1, p0}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 0
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString(I)Ljava/lang/String;
    .registers 13

    .line 0
    const/16 v0, 0x38

    const/16 v1, 0x34

    const/16 v2, 0x30

    const/16 v3, 0x10

    invoke-direct {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->getElement()[J

    move-result-object v4

    iget p0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mBit:I

    const-string v5, ""

    const/4 v6, 0x2

    if-ne p1, v6, :cond_83

    add-int/lit8 p0, p0, -0x1

    :goto_15
    const-string p1, "1"

    const-string v0, "0"

    const-wide/16 v1, 0x0

    if-ltz p0, :cond_4e

    array-length v3, v4

    add-int/lit8 v3, v3, -0x1

    aget-wide v7, v4, v3

    const-wide/16 v9, 0x1

    shl-long/2addr v9, p0

    and-long/2addr v7, v9

    cmp-long v1, v7, v1

    if-nez v1, :cond_3b

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_39
    move-object v5, p1

    goto :goto_4b

    :cond_3b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_39

    :goto_4b
    add-int/lit8 p0, p0, -0x1

    goto :goto_15

    :cond_4e
    array-length p0, v4

    sub-int/2addr p0, v6

    :goto_50
    if-ltz p0, :cond_228

    const/16 v3, 0x3f

    :goto_54
    if-ltz v3, :cond_80

    aget-wide v6, v4, p0

    sget-object v8, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mBitmask:[J

    aget-wide v8, v8, v3

    and-long/2addr v6, v8

    cmp-long v6, v6, v1

    if-nez v6, :cond_71

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_6c
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_7d

    :cond_71
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6c

    :goto_7d
    add-int/lit8 v3, v3, -0x1

    goto :goto_54

    :cond_80
    add-int/lit8 p0, p0, -0x1

    goto :goto_50

    :cond_83
    if-ne p1, v3, :cond_228

    new-array p0, v3, [C

    fill-array-data p0, :array_22a

    array-length p1, v4

    add-int/lit8 p1, p1, -0x1

    :goto_8d
    if-ltz p1, :cond_228

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v7, v4, p1

    const/16 v5, 0x3c

    ushr-long/2addr v7, v5

    long-to-int v5, v7

    and-int/lit8 v5, v5, 0xf

    aget-char v5, p0, v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v7, v4, p1

    ushr-long/2addr v7, v0

    long-to-int v5, v7

    and-int/lit8 v5, v5, 0xf

    aget-char v5, p0, v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v7, v4, p1

    ushr-long/2addr v7, v1

    long-to-int v5, v7

    and-int/lit8 v5, v5, 0xf

    aget-char v5, p0, v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v7, v4, p1

    ushr-long/2addr v7, v2

    long-to-int v5, v7

    and-int/lit8 v5, v5, 0xf

    aget-char v5, p0, v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v7, v4, p1

    const/16 v5, 0x2c

    ushr-long/2addr v7, v5

    long-to-int v5, v7

    and-int/lit8 v5, v5, 0xf

    aget-char v5, p0, v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v7, v4, p1

    const/16 v5, 0x28

    ushr-long/2addr v7, v5

    long-to-int v5, v7

    and-int/lit8 v5, v5, 0xf

    aget-char v5, p0, v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v7, v4, p1

    const/16 v5, 0x24

    ushr-long/2addr v7, v5

    long-to-int v5, v7

    and-int/lit8 v5, v5, 0xf

    aget-char v5, p0, v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v7, v4, p1

    const/16 v5, 0x20

    ushr-long/2addr v7, v5

    long-to-int v5, v7

    and-int/lit8 v5, v5, 0xf

    aget-char v5, p0, v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v7, v4, p1

    const/16 v5, 0x1c

    ushr-long/2addr v7, v5

    long-to-int v5, v7

    and-int/lit8 v5, v5, 0xf

    aget-char v5, p0, v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v7, v4, p1

    const/16 v5, 0x18

    ushr-long/2addr v7, v5

    long-to-int v5, v7

    and-int/lit8 v5, v5, 0xf

    aget-char v5, p0, v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v7, v4, p1

    const/16 v5, 0x14

    ushr-long/2addr v7, v5

    long-to-int v5, v7

    and-int/lit8 v5, v5, 0xf

    aget-char v5, p0, v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v7, v4, p1

    ushr-long/2addr v7, v3

    long-to-int v5, v7

    and-int/lit8 v5, v5, 0xf

    aget-char v5, p0, v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v7, v4, p1

    const/16 v5, 0xc

    ushr-long/2addr v7, v5

    long-to-int v5, v7

    and-int/lit8 v5, v5, 0xf

    aget-char v5, p0, v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v7, v4, p1

    const/16 v5, 0x8

    ushr-long/2addr v7, v5

    long-to-int v5, v7

    and-int/lit8 v5, v5, 0xf

    aget-char v5, p0, v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v7, v4, p1

    const/4 v5, 0x4

    ushr-long/2addr v7, v5

    long-to-int v5, v7

    and-int/lit8 v5, v5, 0xf

    aget-char v5, p0, v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v7, v4, p1

    long-to-int v5, v7

    and-int/lit8 v5, v5, 0xf

    aget-char v5, p0, v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    add-int/lit8 p1, p1, -0x1

    goto/16 :goto_8d

    :cond_228
    return-object v5

    nop

    :array_22a
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public trace()I
    .registers 12

    .line 0
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mLength:I

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_7
    const-wide/16 v4, 0x0

    if-ge v2, v0, :cond_25

    move v6, v1

    :goto_c
    const/16 v7, 0x40

    if-ge v6, v7, :cond_22

    iget-object v7, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mPol:[J

    aget-wide v7, v7, v2

    sget-object v9, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mBitmask:[J

    aget-wide v9, v9, v6

    and-long/2addr v7, v9

    cmp-long v7, v7, v4

    if-eqz v7, :cond_1f

    xor-int/lit8 v3, v3, 0x1

    :cond_1f
    add-int/lit8 v6, v6, 0x1

    goto :goto_c

    :cond_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_25
    iget v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mBit:I

    :goto_27
    if-ge v1, v2, :cond_3b

    iget-object v6, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mPol:[J

    aget-wide v6, v6, v0

    sget-object v8, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2nONBElement;->mBitmask:[J

    aget-wide v8, v8, v1

    and-long/2addr v6, v8

    cmp-long v6, v6, v4

    if-eqz v6, :cond_38

    xor-int/lit8 v3, v3, 0x1

    :cond_38
    add-int/lit8 v1, v1, 0x1

    goto :goto_27

    :cond_3b
    return v3
.end method
