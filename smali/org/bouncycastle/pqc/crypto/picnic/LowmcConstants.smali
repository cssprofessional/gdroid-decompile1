###### Class org.bouncycastle.pqc.crypto.picnic.LowmcConstants (org.bouncycastle.pqc.crypto.picnic.LowmcConstants)
.class abstract Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;
.super Ljava/lang/Object;


# instance fields
.field protected KMatrix:Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

.field protected KMatrix_full:Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

.field protected KMatrix_inv:Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

.field protected LMatrix:Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

.field protected LMatrix_full:Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

.field protected LMatrix_inv:Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

.field protected RConstants:Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

.field protected RConstants_full:Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

.field protected keyMatrices:[I

.field protected keyMatrices_full:[I

.field protected keyMatrices_inv:[I

.field protected linearMatrices:[I

.field protected linearMatrices_full:[I

.field protected linearMatrices_inv:[I

.field protected roundConstants:[I

.field protected roundConstants_full:[I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private GET_MAT(Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;I)Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;
    .registers 3

    .line 0
    new-instance p0, Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;

    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;-><init>(Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;)V

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;->getSize()I

    move-result p1

    mul-int/2addr p2, p1

    invoke-virtual {p0, p2}, Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;->setMatrixPointer(I)V

    return-object p0
.end method

.method public static ReadFromProperty(Ljava/util/Properties;Ljava/lang/String;I)[I
    .registers 4

    .line 0
    invoke-virtual {p0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->removeCommas(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/util/encoders/Hex;->decode([B)[B

    move-result-object p0

    new-array p1, p2, [I

    const/4 p2, 0x0

    :goto_f
    array-length v0, p0

    div-int/lit8 v0, v0, 0x4

    if-ge p2, v0, :cond_1f

    mul-int/lit8 v0, p2, 0x4

    invoke-static {p0, v0}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v0

    aput v0, p1, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_f

    :cond_1f
    return-object p1
.end method

.method public static readArray(Ljava/io/DataInputStream;)[I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 0
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_7
    if-eq v2, v0, :cond_12

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_12
    return-object v1
.end method

.method private static removeCommas(Ljava/lang/String;)[B
    .registers 5

    .line 0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v1, 0x0

    :goto_6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v1, v2, :cond_1f

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2c

    if-ne v2, v3, :cond_15

    goto :goto_1c

    :cond_15
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :goto_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_1f
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public KMatrix(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;I)Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;
    .registers 5

    .line 0
    iget v0, p1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    const/16 v1, 0x80

    if-ne v0, v1, :cond_d

    :cond_6
    :goto_6
    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->KMatrix:Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

    :goto_8
    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->GET_MAT(Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;I)Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;

    move-result-object p0

    return-object p0

    :cond_d
    const/16 v1, 0x81

    if-ne v0, v1, :cond_14

    :goto_11
    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->KMatrix_full:Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

    goto :goto_8

    :cond_14
    const/16 v1, 0xc0

    if-ne v0, v1, :cond_1e

    iget p1, p1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numRounds:I

    const/4 v0, 0x4

    if-ne p1, v0, :cond_6

    goto :goto_11

    :cond_1e
    const/16 p1, 0xff

    if-ne v0, p1, :cond_23

    goto :goto_11

    :cond_23
    const/16 p1, 0x100

    if-ne v0, p1, :cond_28

    goto :goto_6

    :cond_28
    const/4 p0, 0x0

    return-object p0
.end method

.method public KMatrixInv(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;)Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;
    .registers 5

    .line 0
    iget v0, p1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    const/16 v1, 0x81

    const/4 v2, 0x0

    if-ne v0, v1, :cond_e

    :goto_7
    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->KMatrix_inv:Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

    invoke-direct {p0, p1, v2}, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->GET_MAT(Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;I)Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;

    move-result-object p0

    return-object p0

    :cond_e
    const/16 v1, 0xc0

    if-ne v0, v1, :cond_18

    iget p1, p1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numRounds:I

    const/4 v1, 0x4

    if-ne p1, v1, :cond_18

    goto :goto_7

    :cond_18
    const/16 p1, 0xff

    if-ne v0, p1, :cond_1d

    goto :goto_7

    :cond_1d
    const/4 p0, 0x0

    return-object p0
.end method

.method public LMatrix(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;I)Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;
    .registers 5

    .line 0
    iget v0, p1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    const/16 v1, 0x80

    if-ne v0, v1, :cond_d

    :cond_6
    :goto_6
    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->LMatrix:Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

    :goto_8
    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->GET_MAT(Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;I)Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;

    move-result-object p0

    return-object p0

    :cond_d
    const/16 v1, 0x81

    if-ne v0, v1, :cond_14

    :goto_11
    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->LMatrix_full:Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

    goto :goto_8

    :cond_14
    const/16 v1, 0xc0

    if-ne v0, v1, :cond_1e

    iget p1, p1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numRounds:I

    const/4 v0, 0x4

    if-ne p1, v0, :cond_6

    goto :goto_11

    :cond_1e
    const/16 p1, 0xff

    if-ne v0, p1, :cond_23

    goto :goto_11

    :cond_23
    const/16 p1, 0x100

    if-ne v0, p1, :cond_28

    goto :goto_6

    :cond_28
    const/4 p0, 0x0

    return-object p0
.end method

.method public LMatrixInv(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;I)Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;
    .registers 5

    .line 0
    iget v0, p1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    const/16 v1, 0x81

    if-ne v0, v1, :cond_d

    :goto_6
    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->LMatrix_inv:Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->GET_MAT(Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;I)Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;

    move-result-object p0

    return-object p0

    :cond_d
    const/16 v1, 0xc0

    if-ne v0, v1, :cond_17

    iget p1, p1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numRounds:I

    const/4 v1, 0x4

    if-ne p1, v1, :cond_17

    goto :goto_6

    :cond_17
    const/16 p1, 0xff

    if-ne v0, p1, :cond_1c

    goto :goto_6

    :cond_1c
    const/4 p0, 0x0

    return-object p0
.end method

.method public RConstant(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;I)Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;
    .registers 5

    .line 0
    iget v0, p1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    const/16 v1, 0x80

    if-ne v0, v1, :cond_d

    :cond_6
    :goto_6
    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->RConstants:Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

    :goto_8
    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->GET_MAT(Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;I)Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;

    move-result-object p0

    return-object p0

    :cond_d
    const/16 v1, 0x81

    if-ne v0, v1, :cond_14

    :goto_11
    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->RConstants_full:Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

    goto :goto_8

    :cond_14
    const/16 v1, 0xc0

    if-ne v0, v1, :cond_1e

    iget p1, p1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numRounds:I

    const/4 v0, 0x4

    if-ne p1, v0, :cond_6

    goto :goto_11

    :cond_1e
    const/16 p1, 0xff

    if-ne v0, p1, :cond_23

    goto :goto_11

    :cond_23
    const/16 p1, 0x100

    if-ne v0, p1, :cond_28

    goto :goto_6

    :cond_28
    const/4 p0, 0x0

    return-object p0
.end method
