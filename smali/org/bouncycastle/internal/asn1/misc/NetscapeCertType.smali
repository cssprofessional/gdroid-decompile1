###### Class org.bouncycastle.internal.asn1.misc.NetscapeCertType (org.bouncycastle.internal.asn1.misc.NetscapeCertType)
.class public Lorg/bouncycastle/internal/asn1/misc/NetscapeCertType;
.super Lorg/bouncycastle/asn1/DERBitString;


# static fields
.field public static final objectSigning:I = 0x10

.field public static final objectSigningCA:I = 0x1

.field public static final reserved:I = 0x8

.field public static final smime:I = 0x20

.field public static final smimeCA:I = 0x2

.field public static final sslCA:I = 0x4

.field public static final sslClient:I = 0x80

.field public static final sslServer:I = 0x40


# direct methods
.method public constructor <init>(I)V
    .registers 3

    .line 0
    invoke-static {p1}, Lorg/bouncycastle/asn1/ASN1BitString;->getBytes(I)[B

    move-result-object v0

    invoke-static {p1}, Lorg/bouncycastle/asn1/ASN1BitString;->getPadBits(I)I

    move-result p1

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/asn1/DERBitString;-><init>([BI)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1BitString;)V
    .registers 3

    .line 0
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1BitString;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1BitString;->getPadBits()I

    move-result p1

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/asn1/DERBitString;-><init>([BI)V

    return-void
.end method


# virtual methods
.method public hasUsages(I)Z
    .registers 2

    .line 0
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1BitString;->intValue()I

    move-result p0

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_9

    const/4 p0, 0x1

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NetscapeCertType: 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1BitString;->intValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
