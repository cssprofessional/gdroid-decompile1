###### Class org.bouncycastle.asn1.x509.PrivateKeyUsagePeriod (org.bouncycastle.asn1.x509.PrivateKeyUsagePeriod)
.class public Lorg/bouncycastle/asn1/x509/PrivateKeyUsagePeriod;
.super Lorg/bouncycastle/asn1/ASN1Object;


# instance fields
.field private _notAfter:Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

.field private _notBefore:Lorg/bouncycastle/asn1/ASN1GeneralizedTime;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .registers 6

    .line 0
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object p1

    :cond_7
    :goto_7
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_21

    invoke-static {v0, v2}, Lorg/bouncycastle/asn1/ASN1GeneralizedTime;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/PrivateKeyUsagePeriod;->_notBefore:Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    goto :goto_7

    :cond_21
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_7

    invoke-static {v0, v2}, Lorg/bouncycastle/asn1/ASN1GeneralizedTime;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/PrivateKeyUsagePeriod;->_notAfter:Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    goto :goto_7

    :cond_2f
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/PrivateKeyUsagePeriod;
    .registers 2

    .line 0
    instance-of v0, p0, Lorg/bouncycastle/asn1/x509/PrivateKeyUsagePeriod;

    if-eqz v0, :cond_7

    check-cast p0, Lorg/bouncycastle/asn1/x509/PrivateKeyUsagePeriod;

    return-object p0

    :cond_7
    if-eqz p0, :cond_13

    new-instance v0, Lorg/bouncycastle/asn1/x509/PrivateKeyUsagePeriod;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/x509/PrivateKeyUsagePeriod;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    :cond_13
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getNotAfter()Lorg/bouncycastle/asn1/ASN1GeneralizedTime;
    .registers 1

    .line 0
    iget-object p0, p0, Lorg/bouncycastle/asn1/x509/PrivateKeyUsagePeriod;->_notAfter:Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    return-object p0
.end method

.method public getNotBefore()Lorg/bouncycastle/asn1/ASN1GeneralizedTime;
    .registers 1

    .line 0
    iget-object p0, p0, Lorg/bouncycastle/asn1/x509/PrivateKeyUsagePeriod;->_notBefore:Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    return-object p0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .registers 5

    .line 0
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/PrivateKeyUsagePeriod;->_notBefore:Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    const/4 v2, 0x0

    if-eqz v1, :cond_13

    new-instance v3, Lorg/bouncycastle/asn1/DERTaggedObject;

    invoke-direct {v3, v2, v2, v1}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_13
    iget-object p0, p0, Lorg/bouncycastle/asn1/x509/PrivateKeyUsagePeriod;->_notAfter:Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    if-eqz p0, :cond_20

    new-instance v1, Lorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, p0}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_20
    new-instance p0, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object p0
.end method
