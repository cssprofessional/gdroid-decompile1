###### Class org.bouncycastle.asn1.x509.CertificatePolicies (org.bouncycastle.asn1.x509.CertificatePolicies)
.class public Lorg/bouncycastle/asn1/x509/CertificatePolicies;
.super Lorg/bouncycastle/asn1/ASN1Object;


# instance fields
.field private final policyInformation:[Lorg/bouncycastle/asn1/x509/PolicyInformation;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    new-array v0, v0, [Lorg/bouncycastle/asn1/x509/PolicyInformation;

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/CertificatePolicies;->policyInformation:[Lorg/bouncycastle/asn1/x509/PolicyInformation;

    const/4 v0, 0x0

    :goto_c
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    if-eq v0, v1, :cond_21

    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/CertificatePolicies;->policyInformation:[Lorg/bouncycastle/asn1/x509/PolicyInformation;

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/x509/PolicyInformation;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/PolicyInformation;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_21
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x509/PolicyInformation;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    filled-new-array {p1}, [Lorg/bouncycastle/asn1/x509/PolicyInformation;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/CertificatePolicies;->policyInformation:[Lorg/bouncycastle/asn1/x509/PolicyInformation;

    return-void
.end method

.method public constructor <init>([Lorg/bouncycastle/asn1/x509/PolicyInformation;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    invoke-static {p1}, Lorg/bouncycastle/asn1/x509/CertificatePolicies;->copy([Lorg/bouncycastle/asn1/x509/PolicyInformation;)[Lorg/bouncycastle/asn1/x509/PolicyInformation;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/CertificatePolicies;->policyInformation:[Lorg/bouncycastle/asn1/x509/PolicyInformation;

    return-void
.end method

.method private static copy([Lorg/bouncycastle/asn1/x509/PolicyInformation;)[Lorg/bouncycastle/asn1/x509/PolicyInformation;
    .registers 4

    .line 0
    array-length v0, p0

    new-array v0, v0, [Lorg/bouncycastle/asn1/x509/PolicyInformation;

    const/4 v1, 0x0

    array-length v2, p0

    invoke-static {p0, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static fromExtensions(Lorg/bouncycastle/asn1/x509/Extensions;)Lorg/bouncycastle/asn1/x509/CertificatePolicies;
    .registers 2

    .line 0
    sget-object v0, Lorg/bouncycastle/asn1/x509/Extension;->certificatePolicies:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {p0, v0}, Lorg/bouncycastle/asn1/x509/Extensions;->getExtensionParsedValue(Lorg/bouncycastle/asn1/x509/Extensions;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/x509/CertificatePolicies;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/CertificatePolicies;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/CertificatePolicies;
    .registers 2

    .line 0
    instance-of v0, p0, Lorg/bouncycastle/asn1/x509/CertificatePolicies;

    if-eqz v0, :cond_7

    check-cast p0, Lorg/bouncycastle/asn1/x509/CertificatePolicies;

    return-object p0

    :cond_7
    if-eqz p0, :cond_13

    new-instance v0, Lorg/bouncycastle/asn1/x509/CertificatePolicies;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/x509/CertificatePolicies;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    :cond_13
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/x509/CertificatePolicies;
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/x509/CertificatePolicies;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/CertificatePolicies;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getPolicyInformation(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/x509/PolicyInformation;
    .registers 5

    .line 0
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/CertificatePolicies;->policyInformation:[Lorg/bouncycastle/asn1/x509/PolicyInformation;

    array-length v2, v1

    if-eq v0, v2, :cond_1a

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/PolicyInformation;->getPolicyIdentifier()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v1

    if-eqz v1, :cond_17

    iget-object p0, p0, Lorg/bouncycastle/asn1/x509/CertificatePolicies;->policyInformation:[Lorg/bouncycastle/asn1/x509/PolicyInformation;

    aget-object p0, p0, v0

    return-object p0

    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1a
    const/4 p0, 0x0

    return-object p0
.end method

.method public getPolicyInformation()[Lorg/bouncycastle/asn1/x509/PolicyInformation;
    .registers 1

    .line 0
    iget-object p0, p0, Lorg/bouncycastle/asn1/x509/CertificatePolicies;->policyInformation:[Lorg/bouncycastle/asn1/x509/PolicyInformation;

    invoke-static {p0}, Lorg/bouncycastle/asn1/x509/CertificatePolicies;->copy([Lorg/bouncycastle/asn1/x509/PolicyInformation;)[Lorg/bouncycastle/asn1/x509/PolicyInformation;

    move-result-object p0

    return-object p0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .registers 2

    .line 0
    new-instance v0, Lorg/bouncycastle/asn1/DERSequence;

    iget-object p0, p0, Lorg/bouncycastle/asn1/x509/CertificatePolicies;->policyInformation:[Lorg/bouncycastle/asn1/x509/PolicyInformation;

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/DERSequence;-><init>([Lorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    :goto_6
    iget-object v2, p0, Lorg/bouncycastle/asn1/x509/CertificatePolicies;->policyInformation:[Lorg/bouncycastle/asn1/x509/PolicyInformation;

    array-length v2, v2

    if-ge v1, v2, :cond_20

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-eqz v2, :cond_16

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_16
    iget-object v2, p0, Lorg/bouncycastle/asn1/x509/CertificatePolicies;->policyInformation:[Lorg/bouncycastle/asn1/x509/PolicyInformation;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_20
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CertificatePolicies: ["

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
