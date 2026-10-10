###### Class org.bouncycastle.asn1.BERBitString (org.bouncycastle.asn1.BERBitString)
.class public Lorg/bouncycastle/asn1/BERBitString;
.super Lorg/bouncycastle/asn1/ASN1BitString;


# static fields
.field private static final DEFAULT_SEGMENT_LIMIT:I = 0x3e8


# instance fields
.field private final elements:[Lorg/bouncycastle/asn1/ASN1BitString;

.field private final segmentLimit:I


# direct methods
.method public constructor <init>(BI)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/asn1/ASN1BitString;-><init>(BI)V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/bouncycastle/asn1/BERBitString;->elements:[Lorg/bouncycastle/asn1/ASN1BitString;

    const/16 p1, 0x3e8

    iput p1, p0, Lorg/bouncycastle/asn1/BERBitString;->segmentLimit:I

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 0
    invoke-interface {p1}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p1

    const-string v0, "DER"

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Object;->getEncoded(Ljava/lang/String;)[B

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/asn1/BERBitString;-><init>([BI)V

    return-void
.end method

.method public constructor <init>([B)V
    .registers 3

    .line 0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/asn1/BERBitString;-><init>([BI)V

    return-void
.end method

.method public constructor <init>([BI)V
    .registers 4

    .line 0
    const/16 v0, 0x3e8

    invoke-direct {p0, p1, p2, v0}, Lorg/bouncycastle/asn1/BERBitString;-><init>([BII)V

    return-void
.end method

.method public constructor <init>([BII)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/asn1/ASN1BitString;-><init>([BI)V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/bouncycastle/asn1/BERBitString;->elements:[Lorg/bouncycastle/asn1/ASN1BitString;

    iput p3, p0, Lorg/bouncycastle/asn1/BERBitString;->segmentLimit:I

    return-void
.end method

.method public constructor <init>([BZ)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/asn1/ASN1BitString;-><init>([BZ)V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/bouncycastle/asn1/BERBitString;->elements:[Lorg/bouncycastle/asn1/ASN1BitString;

    const/16 p1, 0x3e8

    iput p1, p0, Lorg/bouncycastle/asn1/BERBitString;->segmentLimit:I

    return-void
.end method

.method public constructor <init>([Lorg/bouncycastle/asn1/ASN1BitString;)V
    .registers 3

    .line 0
    const/16 v0, 0x3e8

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/asn1/BERBitString;-><init>([Lorg/bouncycastle/asn1/ASN1BitString;I)V

    return-void
.end method

.method public constructor <init>([Lorg/bouncycastle/asn1/ASN1BitString;I)V
    .registers 5

    .line 0
    invoke-static {p1}, Lorg/bouncycastle/asn1/BERBitString;->flattenBitStrings([Lorg/bouncycastle/asn1/ASN1BitString;)[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/asn1/ASN1BitString;-><init>([BZ)V

    iput-object p1, p0, Lorg/bouncycastle/asn1/BERBitString;->elements:[Lorg/bouncycastle/asn1/ASN1BitString;

    iput p2, p0, Lorg/bouncycastle/asn1/BERBitString;->segmentLimit:I

    return-void
.end method

.method public static flattenBitStrings([Lorg/bouncycastle/asn1/ASN1BitString;)[B
    .registers 9

    .line 0
    const/4 v0, 0x0

    const/4 v1, 0x1

    array-length v2, p0

    if-eqz v2, :cond_43

    if-eq v2, v1, :cond_3e

    add-int/lit8 v3, v2, -0x1

    move v4, v0

    move v5, v4

    :goto_b
    if-ge v4, v3, :cond_22

    aget-object v6, p0, v4

    iget-object v6, v6, Lorg/bouncycastle/asn1/ASN1BitString;->contents:[B

    aget-byte v7, v6, v0

    if-nez v7, :cond_1a

    array-length v6, v6

    sub-int/2addr v6, v1

    add-int/2addr v5, v6

    add-int/2addr v4, v1

    goto :goto_b

    :cond_1a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "only the last nested bitstring can have padding"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_22
    aget-object v3, p0, v3

    iget-object v3, v3, Lorg/bouncycastle/asn1/ASN1BitString;->contents:[B

    aget-byte v4, v3, v0

    array-length v3, v3

    add-int/2addr v5, v3

    new-array v3, v5, [B

    aput-byte v4, v3, v0

    move v4, v1

    :goto_2f
    if-ge v0, v2, :cond_3d

    aget-object v5, p0, v0

    iget-object v5, v5, Lorg/bouncycastle/asn1/ASN1BitString;->contents:[B

    array-length v6, v5

    sub-int/2addr v6, v1

    invoke-static {v5, v1, v3, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v4, v6

    add-int/2addr v0, v1

    goto :goto_2f

    :cond_3d
    return-object v3

    :cond_3e
    aget-object p0, p0, v0

    iget-object p0, p0, Lorg/bouncycastle/asn1/ASN1BitString;->contents:[B

    return-object p0

    :cond_43
    new-array p0, v1, [B

    aput-byte v0, p0, v0

    return-object p0
.end method


# virtual methods
.method public encode(Lorg/bouncycastle/asn1/ASN1OutputStream;Z)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 0
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/BERBitString;->encodeConstructed()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_e

    iget-object p0, p0, Lorg/bouncycastle/asn1/ASN1BitString;->contents:[B

    array-length v0, p0

    invoke-static {p1, p2, p0, v1, v0}, Lorg/bouncycastle/asn1/DLBitString;->encode(Lorg/bouncycastle/asn1/ASN1OutputStream;Z[BII)V

    return-void

    :cond_e
    const/16 v0, 0x23

    invoke-virtual {p1, p2, v0}, Lorg/bouncycastle/asn1/ASN1OutputStream;->writeIdentifier(ZI)V

    const/16 p2, 0x80

    invoke-virtual {p1, p2}, Lorg/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    iget-object p2, p0, Lorg/bouncycastle/asn1/BERBitString;->elements:[Lorg/bouncycastle/asn1/ASN1BitString;

    if-eqz p2, :cond_20

    invoke-virtual {p1, p2}, Lorg/bouncycastle/asn1/ASN1OutputStream;->writePrimitives([Lorg/bouncycastle/asn1/ASN1Primitive;)V

    goto :goto_49

    :cond_20
    iget-object p2, p0, Lorg/bouncycastle/asn1/ASN1BitString;->contents:[B

    array-length v0, p2

    const/4 v2, 0x2

    if-ge v0, v2, :cond_27

    goto :goto_49

    :cond_27
    aget-byte v5, p2, v1

    array-length p2, p2

    add-int/lit8 v0, p2, -0x1

    iget v2, p0, Lorg/bouncycastle/asn1/BERBitString;->segmentLimit:I

    add-int/lit8 v2, v2, -0x1

    :goto_30
    if-le v0, v2, :cond_3f

    iget-object v9, p0, Lorg/bouncycastle/asn1/ASN1BitString;->contents:[B

    sub-int v10, p2, v0

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v6, p1

    move v11, v2

    invoke-static/range {v6 .. v11}, Lorg/bouncycastle/asn1/DLBitString;->encode(Lorg/bouncycastle/asn1/ASN1OutputStream;ZB[BII)V

    sub-int/2addr v0, v2

    goto :goto_30

    :cond_3f
    iget-object v6, p0, Lorg/bouncycastle/asn1/ASN1BitString;->contents:[B

    sub-int v7, p2, v0

    const/4 v4, 0x1

    move-object v3, p1

    move v8, v0

    invoke-static/range {v3 .. v8}, Lorg/bouncycastle/asn1/DLBitString;->encode(Lorg/bouncycastle/asn1/ASN1OutputStream;ZB[BII)V

    :goto_49
    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    return-void
.end method

.method public encodeConstructed()Z
    .registers 2

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/asn1/BERBitString;->elements:[Lorg/bouncycastle/asn1/ASN1BitString;

    if-nez v0, :cond_e

    iget-object v0, p0, Lorg/bouncycastle/asn1/ASN1BitString;->contents:[B

    array-length v0, v0

    iget p0, p0, Lorg/bouncycastle/asn1/BERBitString;->segmentLimit:I

    if-le v0, p0, :cond_c

    goto :goto_e

    :cond_c
    const/4 p0, 0x0

    goto :goto_f

    :cond_e
    :goto_e
    const/4 p0, 0x1

    :goto_f
    return p0
.end method

.method public encodedLength(Z)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 0
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/BERBitString;->encodeConstructed()Z

    move-result v0

    if-nez v0, :cond_e

    iget-object p0, p0, Lorg/bouncycastle/asn1/ASN1BitString;->contents:[B

    array-length p0, p0

    invoke-static {p1, p0}, Lorg/bouncycastle/asn1/DLBitString;->encodedLength(ZI)I

    move-result p0

    return p0

    :cond_e
    if-eqz p1, :cond_12

    const/4 p1, 0x4

    goto :goto_13

    :cond_12
    const/4 p1, 0x3

    :goto_13
    iget-object v0, p0, Lorg/bouncycastle/asn1/BERBitString;->elements:[Lorg/bouncycastle/asn1/ASN1BitString;

    const/4 v1, 0x1

    if-eqz v0, :cond_28

    const/4 v0, 0x0

    :goto_19
    iget-object v2, p0, Lorg/bouncycastle/asn1/BERBitString;->elements:[Lorg/bouncycastle/asn1/ASN1BitString;

    array-length v3, v2

    if-ge v0, v3, :cond_49

    aget-object v2, v2, v0

    invoke-virtual {v2, v1}, Lorg/bouncycastle/asn1/ASN1Primitive;->encodedLength(Z)I

    move-result v2

    add-int/2addr p1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    :cond_28
    iget-object v0, p0, Lorg/bouncycastle/asn1/ASN1BitString;->contents:[B

    array-length v2, v0

    const/4 v3, 0x2

    if-ge v2, v3, :cond_2f

    goto :goto_49

    :cond_2f
    array-length v0, v0

    sub-int/2addr v0, v3

    iget v2, p0, Lorg/bouncycastle/asn1/BERBitString;->segmentLimit:I

    add-int/lit8 v3, v2, -0x1

    div-int/2addr v0, v3

    invoke-static {v1, v2}, Lorg/bouncycastle/asn1/DLBitString;->encodedLength(ZI)I

    move-result v2

    mul-int/2addr v2, v0

    add-int/2addr p1, v2

    iget-object v2, p0, Lorg/bouncycastle/asn1/ASN1BitString;->contents:[B

    array-length v2, v2

    iget p0, p0, Lorg/bouncycastle/asn1/BERBitString;->segmentLimit:I

    sub-int/2addr p0, v1

    mul-int/2addr v0, p0

    sub-int/2addr v2, v0

    invoke-static {v1, v2}, Lorg/bouncycastle/asn1/DLBitString;->encodedLength(ZI)I

    move-result p0

    add-int/2addr p1, p0

    :cond_49
    :goto_49
    return p1
.end method
