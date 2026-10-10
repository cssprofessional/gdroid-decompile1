###### Class org.bouncycastle.math.ec.custom.sec.SecT113R2Curve (org.bouncycastle.math.ec.custom.sec.SecT113R2Curve)
.class public Lorg/bouncycastle/math/ec/custom/sec/SecT113R2Curve;
.super Lorg/bouncycastle/math/ec/ECCurve$AbstractF2m;


# static fields
.field private static final SECT113R2_AFFINE_ZS:[Lorg/bouncycastle/math/ec/ECFieldElement;

.field private static final SECT113R2_DEFAULT_COORDS:I = 0x6


# instance fields
.field protected infinity:Lorg/bouncycastle/math/ec/custom/sec/SecT113R2Point;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 0
    new-instance v0, Lorg/bouncycastle/math/ec/custom/sec/SecT113FieldElement;

    sget-object v1, Lorg/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-direct {v0, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT113FieldElement;-><init>(Ljava/math/BigInteger;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lorg/bouncycastle/math/ec/ECFieldElement;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    sput-object v1, Lorg/bouncycastle/math/ec/custom/sec/SecT113R2Curve;->SECT113R2_AFFINE_ZS:[Lorg/bouncycastle/math/ec/ECFieldElement;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 0
    const/16 v0, 0x9

    const/4 v1, 0x0

    const/16 v2, 0x71

    invoke-direct {p0, v2, v0, v1, v1}, Lorg/bouncycastle/math/ec/ECCurve$AbstractF2m;-><init>(IIII)V

    new-instance v0, Lorg/bouncycastle/math/ec/custom/sec/SecT113R2Point;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT113R2Point;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;)V

    iput-object v0, p0, Lorg/bouncycastle/math/ec/custom/sec/SecT113R2Curve;->infinity:Lorg/bouncycastle/math/ec/custom/sec/SecT113R2Point;

    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "00689918DBEC7E5A0DD6DFC0AA55C7"

    invoke-static {v1}, Lorg/bouncycastle/util/encoders/Hex;->decodeStrict(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {p0, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT113R2Curve;->fromBigInteger(Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/math/ec/ECCurve;->a:Lorg/bouncycastle/math/ec/ECFieldElement;

    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "0095E9A9EC9B297BD4BF36E059184F"

    invoke-static {v1}, Lorg/bouncycastle/util/encoders/Hex;->decodeStrict(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v2, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {p0, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT113R2Curve;->fromBigInteger(Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/math/ec/ECCurve;->b:Lorg/bouncycastle/math/ec/ECFieldElement;

    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "010000000000000108789B2496AF93"

    invoke-static {v1}, Lorg/bouncycastle/util/encoders/Hex;->decodeStrict(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v2, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    iput-object v0, p0, Lorg/bouncycastle/math/ec/ECCurve;->order:Ljava/math/BigInteger;

    const-wide/16 v0, 0x2

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/math/ec/ECCurve;->cofactor:Ljava/math/BigInteger;

    const/4 v0, 0x6

    iput v0, p0, Lorg/bouncycastle/math/ec/ECCurve;->coord:I

    return-void
.end method

.method public static synthetic access$000()[Lorg/bouncycastle/math/ec/ECFieldElement;
    .registers 1

    .line 0
    sget-object v0, Lorg/bouncycastle/math/ec/custom/sec/SecT113R2Curve;->SECT113R2_AFFINE_ZS:[Lorg/bouncycastle/math/ec/ECFieldElement;

    return-object v0
.end method


# virtual methods
.method public cloneCurve()Lorg/bouncycastle/math/ec/ECCurve;
    .registers 1

    .line 0
    new-instance p0, Lorg/bouncycastle/math/ec/custom/sec/SecT113R2Curve;

    invoke-direct {p0}, Lorg/bouncycastle/math/ec/custom/sec/SecT113R2Curve;-><init>()V

    return-object p0
.end method

.method public createCacheSafeLookupTable([Lorg/bouncycastle/math/ec/ECPoint;II)Lorg/bouncycastle/math/ec/ECLookupTable;
    .registers 10

    .line 0
    mul-int/lit8 v0, p3, 0x4

    new-array v0, v0, [J

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_7
    if-ge v2, p3, :cond_2a

    add-int v4, p2, v2

    aget-object v4, p1, v4

    invoke-virtual {v4}, Lorg/bouncycastle/math/ec/ECPoint;->getRawXCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    check-cast v5, Lorg/bouncycastle/math/ec/custom/sec/SecT113FieldElement;

    iget-object v5, v5, Lorg/bouncycastle/math/ec/custom/sec/SecT113FieldElement;->x:[J

    invoke-static {v5, v1, v0, v3}, Lorg/bouncycastle/math/raw/Nat128;->copy64([JI[JI)V

    add-int/lit8 v5, v3, 0x2

    invoke-virtual {v4}, Lorg/bouncycastle/math/ec/ECPoint;->getRawYCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    check-cast v4, Lorg/bouncycastle/math/ec/custom/sec/SecT113FieldElement;

    iget-object v4, v4, Lorg/bouncycastle/math/ec/custom/sec/SecT113FieldElement;->x:[J

    invoke-static {v4, v1, v0, v5}, Lorg/bouncycastle/math/raw/Nat128;->copy64([JI[JI)V

    add-int/lit8 v3, v3, 0x4

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_2a
    new-instance p1, Lorg/bouncycastle/math/ec/custom/sec/SecT113R2Curve$1;

    invoke-direct {p1, p0, p3, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT113R2Curve$1;-><init>(Lorg/bouncycastle/math/ec/custom/sec/SecT113R2Curve;I[J)V

    return-object p1
.end method

.method public createRawPoint(Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECPoint;
    .registers 4

    .line 0
    new-instance v0, Lorg/bouncycastle/math/ec/custom/sec/SecT113R2Point;

    invoke-direct {v0, p0, p1, p2}, Lorg/bouncycastle/math/ec/custom/sec/SecT113R2Point;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;)V

    return-object v0
.end method

.method public createRawPoint(Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;[Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECPoint;
    .registers 5

    .line 0
    new-instance v0, Lorg/bouncycastle/math/ec/custom/sec/SecT113R2Point;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/bouncycastle/math/ec/custom/sec/SecT113R2Point;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;[Lorg/bouncycastle/math/ec/ECFieldElement;)V

    return-object v0
.end method

.method public fromBigInteger(Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECFieldElement;
    .registers 2

    .line 0
    new-instance p0, Lorg/bouncycastle/math/ec/custom/sec/SecT113FieldElement;

    invoke-direct {p0, p1}, Lorg/bouncycastle/math/ec/custom/sec/SecT113FieldElement;-><init>(Ljava/math/BigInteger;)V

    return-object p0
.end method

.method public getFieldSize()I
    .registers 1

    .line 0
    const/16 p0, 0x71

    return p0
.end method

.method public getInfinity()Lorg/bouncycastle/math/ec/ECPoint;
    .registers 1

    .line 0
    iget-object p0, p0, Lorg/bouncycastle/math/ec/custom/sec/SecT113R2Curve;->infinity:Lorg/bouncycastle/math/ec/custom/sec/SecT113R2Point;

    return-object p0
.end method

.method public getK1()I
    .registers 1

    .line 0
    const/16 p0, 0x9

    return p0
.end method

.method public getK2()I
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public getK3()I
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public getM()I
    .registers 1

    .line 0
    const/16 p0, 0x71

    return p0
.end method

.method public isKoblitz()Z
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public isTrinomial()Z
    .registers 1

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public supportsCoordinateSystem(I)Z
    .registers 2

    .line 0
    const/4 p0, 0x6

    if-eq p1, p0, :cond_5

    const/4 p0, 0x0

    return p0

    :cond_5
    const/4 p0, 0x1

    return p0
.end method

###### Class org.bouncycastle.math.ec.custom.sec.SecT113R2Curve.AnonymousClass1 (org.bouncycastle.math.ec.custom.sec.SecT113R2Curve$1)
.class Lorg/bouncycastle/math/ec/custom/sec/SecT113R2Curve$1;
.super Lorg/bouncycastle/math/ec/AbstractECLookupTable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/math/ec/custom/sec/SecT113R2Curve;->createCacheSafeLookupTable([Lorg/bouncycastle/math/ec/ECPoint;II)Lorg/bouncycastle/math/ec/ECLookupTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/bouncycastle/math/ec/custom/sec/SecT113R2Curve;

.field final synthetic val$len:I

.field final synthetic val$table:[J


# direct methods
.method public constructor <init>(Lorg/bouncycastle/math/ec/custom/sec/SecT113R2Curve;I[J)V
    .registers 4

    .line 0
    iput-object p1, p0, Lorg/bouncycastle/math/ec/custom/sec/SecT113R2Curve$1;->this$0:Lorg/bouncycastle/math/ec/custom/sec/SecT113R2Curve;

    iput p2, p0, Lorg/bouncycastle/math/ec/custom/sec/SecT113R2Curve$1;->val$len:I

    iput-object p3, p0, Lorg/bouncycastle/math/ec/custom/sec/SecT113R2Curve$1;->val$table:[J

    invoke-direct {p0}, Lorg/bouncycastle/math/ec/AbstractECLookupTable;-><init>()V

    return-void
.end method

.method private createPoint([J[J)Lorg/bouncycastle/math/ec/ECPoint;
    .registers 4

    .line 0
    iget-object p0, p0, Lorg/bouncycastle/math/ec/custom/sec/SecT113R2Curve$1;->this$0:Lorg/bouncycastle/math/ec/custom/sec/SecT113R2Curve;

    new-instance v0, Lorg/bouncycastle/math/ec/custom/sec/SecT113FieldElement;

    invoke-direct {v0, p1}, Lorg/bouncycastle/math/ec/custom/sec/SecT113FieldElement;-><init>([J)V

    new-instance p1, Lorg/bouncycastle/math/ec/custom/sec/SecT113FieldElement;

    invoke-direct {p1, p2}, Lorg/bouncycastle/math/ec/custom/sec/SecT113FieldElement;-><init>([J)V

    invoke-static {}, Lorg/bouncycastle/math/ec/custom/sec/SecT113R2Curve;->access$000()[Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object p2

    invoke-virtual {p0, v0, p1, p2}, Lorg/bouncycastle/math/ec/custom/sec/SecT113R2Curve;->createRawPoint(Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;[Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getSize()I
    .registers 1

    .line 0
    iget p0, p0, Lorg/bouncycastle/math/ec/custom/sec/SecT113R2Curve$1;->val$len:I

    return p0
.end method

.method public lookup(I)Lorg/bouncycastle/math/ec/ECPoint;
    .registers 15

    .line 0
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat128;->create64()[J

    move-result-object v0

    invoke-static {}, Lorg/bouncycastle/math/raw/Nat128;->create64()[J

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_b
    iget v5, p0, Lorg/bouncycastle/math/ec/custom/sec/SecT113R2Curve$1;->val$len:I

    if-ge v3, v5, :cond_39

    xor-int v5, v3, p1

    add-int/lit8 v5, v5, -0x1

    shr-int/lit8 v5, v5, 0x1f

    int-to-long v5, v5

    move v7, v2

    :goto_17
    const/4 v8, 0x2

    if-ge v7, v8, :cond_34

    aget-wide v8, v0, v7

    iget-object v10, p0, Lorg/bouncycastle/math/ec/custom/sec/SecT113R2Curve$1;->val$table:[J

    add-int v11, v4, v7

    aget-wide v11, v10, v11

    and-long/2addr v11, v5

    xor-long/2addr v8, v11

    aput-wide v8, v0, v7

    aget-wide v8, v1, v7

    add-int/lit8 v11, v4, 0x2

    add-int/2addr v11, v7

    aget-wide v10, v10, v11

    and-long/2addr v10, v5

    xor-long/2addr v8, v10

    aput-wide v8, v1, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_17

    :cond_34
    add-int/lit8 v4, v4, 0x4

    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_39
    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT113R2Curve$1;->createPoint([J[J)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    return-object p0
.end method

.method public lookupVar(I)Lorg/bouncycastle/math/ec/ECPoint;
    .registers 9

    .line 0
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat128;->create64()[J

    move-result-object v0

    invoke-static {}, Lorg/bouncycastle/math/raw/Nat128;->create64()[J

    move-result-object v1

    mul-int/lit8 p1, p1, 0x4

    const/4 v2, 0x0

    :goto_b
    const/4 v3, 0x2

    if-ge v2, v3, :cond_1f

    iget-object v4, p0, Lorg/bouncycastle/math/ec/custom/sec/SecT113R2Curve$1;->val$table:[J

    add-int v5, p1, v2

    aget-wide v5, v4, v5

    aput-wide v5, v0, v2

    add-int/2addr v3, p1

    add-int/2addr v3, v2

    aget-wide v3, v4, v3

    aput-wide v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_1f
    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT113R2Curve$1;->createPoint([J[J)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    return-object p0
.end method
