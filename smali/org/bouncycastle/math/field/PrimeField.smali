###### Class org.bouncycastle.math.field.PrimeField (org.bouncycastle.math.field.PrimeField)
.class Lorg/bouncycastle/math/field/PrimeField;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/math/field/FiniteField;


# instance fields
.field protected final characteristic:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/math/field/PrimeField;->characteristic:Ljava/math/BigInteger;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3

    .line 0
    if-ne p0, p1, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    instance-of v0, p1, Lorg/bouncycastle/math/field/PrimeField;

    if-nez v0, :cond_a

    const/4 p0, 0x0

    return p0

    :cond_a
    check-cast p1, Lorg/bouncycastle/math/field/PrimeField;

    iget-object p0, p0, Lorg/bouncycastle/math/field/PrimeField;->characteristic:Ljava/math/BigInteger;

    iget-object p1, p1, Lorg/bouncycastle/math/field/PrimeField;->characteristic:Ljava/math/BigInteger;

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getCharacteristic()Ljava/math/BigInteger;
    .registers 1

    .line 0
    iget-object p0, p0, Lorg/bouncycastle/math/field/PrimeField;->characteristic:Ljava/math/BigInteger;

    return-object p0
.end method

.method public getDimension()I
    .registers 1

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public hashCode()I
    .registers 1

    .line 0
    iget-object p0, p0, Lorg/bouncycastle/math/field/PrimeField;->characteristic:Ljava/math/BigInteger;

    invoke-virtual {p0}, Ljava/math/BigInteger;->hashCode()I

    move-result p0

    return p0
.end method
