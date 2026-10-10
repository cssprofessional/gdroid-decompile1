###### Class org.bouncycastle.internal.asn1.misc.IDEACBCPar (org.bouncycastle.internal.asn1.misc.IDEACBCPar)
.class public Lorg/bouncycastle/internal/asn1/misc/IDEACBCPar;
.super Lorg/bouncycastle/asn1/ASN1Object;


# instance fields
.field iv:Lorg/bouncycastle/asn1/ASN1OctetString;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_14

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/asn1/ASN1OctetString;

    :goto_11
    iput-object p1, p0, Lorg/bouncycastle/internal/asn1/misc/IDEACBCPar;->iv:Lorg/bouncycastle/asn1/ASN1OctetString;

    goto :goto_16

    :cond_14
    const/4 p1, 0x0

    goto :goto_11

    :goto_16
    return-void
.end method

.method public constructor <init>([B)V
    .registers 3

    .line 0
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-static {p1}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    iput-object v0, p0, Lorg/bouncycastle/internal/asn1/misc/IDEACBCPar;->iv:Lorg/bouncycastle/asn1/ASN1OctetString;

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/internal/asn1/misc/IDEACBCPar;
    .registers 2

    .line 0
    instance-of v0, p0, Lorg/bouncycastle/internal/asn1/misc/IDEACBCPar;

    if-eqz v0, :cond_7

    check-cast p0, Lorg/bouncycastle/internal/asn1/misc/IDEACBCPar;

    return-object p0

    :cond_7
    if-eqz p0, :cond_13

    new-instance v0, Lorg/bouncycastle/internal/asn1/misc/IDEACBCPar;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/internal/asn1/misc/IDEACBCPar;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    :cond_13
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getIV()[B
    .registers 1

    .line 0
    iget-object p0, p0, Lorg/bouncycastle/internal/asn1/misc/IDEACBCPar;->iv:Lorg/bouncycastle/asn1/ASN1OctetString;

    if-eqz p0, :cond_d

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p0

    return-object p0

    :cond_d
    const/4 p0, 0x0

    return-object p0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .registers 3

    .line 0
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    iget-object p0, p0, Lorg/bouncycastle/internal/asn1/misc/IDEACBCPar;->iv:Lorg/bouncycastle/asn1/ASN1OctetString;

    if-eqz p0, :cond_d

    invoke-virtual {v0, p0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_d
    new-instance p0, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object p0
.end method
