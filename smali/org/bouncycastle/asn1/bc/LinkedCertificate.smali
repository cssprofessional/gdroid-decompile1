###### Class org.bouncycastle.asn1.bc.LinkedCertificate (org.bouncycastle.asn1.bc.LinkedCertificate)
.class public Lorg/bouncycastle/asn1/bc/LinkedCertificate;
.super Lorg/bouncycastle/asn1/ASN1Object;


# instance fields
.field private cACerts:Lorg/bouncycastle/asn1/x509/GeneralNames;

.field private certIssuer:Lorg/bouncycastle/asn1/x500/X500Name;

.field private final certLocation:Lorg/bouncycastle/asn1/x509/GeneralName;

.field private final digest:Lorg/bouncycastle/asn1/x509/DigestInfo;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .registers 7

    .line 0
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/x509/DigestInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/DigestInfo;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/asn1/bc/LinkedCertificate;->digest:Lorg/bouncycastle/asn1/x509/DigestInfo;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/x509/GeneralName;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/GeneralName;

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/asn1/bc/LinkedCertificate;->certLocation:Lorg/bouncycastle/asn1/x509/GeneralName;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    const/4 v3, 0x2

    if-le v2, v3, :cond_4e

    :goto_20
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    if-eq v3, v2, :cond_4e

    invoke-virtual {p1, v3}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v4

    if-eqz v4, :cond_45

    if-ne v4, v1, :cond_3d

    invoke-static {v2, v0}, Lorg/bouncycastle/asn1/x509/GeneralNames;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/asn1/bc/LinkedCertificate;->cACerts:Lorg/bouncycastle/asn1/x509/GeneralNames;

    goto :goto_4b

    :cond_3d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "unknown tag in tagged field"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_45
    invoke-static {v2, v0}, Lorg/bouncycastle/asn1/x500/X500Name;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/asn1/bc/LinkedCertificate;->certIssuer:Lorg/bouncycastle/asn1/x500/X500Name;

    :goto_4b
    add-int/lit8 v3, v3, 0x1

    goto :goto_20

    :cond_4e
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x509/DigestInfo;Lorg/bouncycastle/asn1/x509/GeneralName;)V
    .registers 4

    .line 0
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lorg/bouncycastle/asn1/bc/LinkedCertificate;-><init>(Lorg/bouncycastle/asn1/x509/DigestInfo;Lorg/bouncycastle/asn1/x509/GeneralName;Lorg/bouncycastle/asn1/x500/X500Name;Lorg/bouncycastle/asn1/x509/GeneralNames;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x509/DigestInfo;Lorg/bouncycastle/asn1/x509/GeneralName;Lorg/bouncycastle/asn1/x500/X500Name;Lorg/bouncycastle/asn1/x509/GeneralNames;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/bc/LinkedCertificate;->digest:Lorg/bouncycastle/asn1/x509/DigestInfo;

    iput-object p2, p0, Lorg/bouncycastle/asn1/bc/LinkedCertificate;->certLocation:Lorg/bouncycastle/asn1/x509/GeneralName;

    iput-object p3, p0, Lorg/bouncycastle/asn1/bc/LinkedCertificate;->certIssuer:Lorg/bouncycastle/asn1/x500/X500Name;

    iput-object p4, p0, Lorg/bouncycastle/asn1/bc/LinkedCertificate;->cACerts:Lorg/bouncycastle/asn1/x509/GeneralNames;

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/bc/LinkedCertificate;
    .registers 2

    .line 0
    instance-of v0, p0, Lorg/bouncycastle/asn1/bc/LinkedCertificate;

    if-eqz v0, :cond_7

    check-cast p0, Lorg/bouncycastle/asn1/bc/LinkedCertificate;

    return-object p0

    :cond_7
    if-eqz p0, :cond_13

    new-instance v0, Lorg/bouncycastle/asn1/bc/LinkedCertificate;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/bc/LinkedCertificate;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    :cond_13
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getCACerts()Lorg/bouncycastle/asn1/x509/GeneralNames;
    .registers 1

    .line 0
    iget-object p0, p0, Lorg/bouncycastle/asn1/bc/LinkedCertificate;->cACerts:Lorg/bouncycastle/asn1/x509/GeneralNames;

    return-object p0
.end method

.method public getCertIssuer()Lorg/bouncycastle/asn1/x500/X500Name;
    .registers 1

    .line 0
    iget-object p0, p0, Lorg/bouncycastle/asn1/bc/LinkedCertificate;->certIssuer:Lorg/bouncycastle/asn1/x500/X500Name;

    return-object p0
.end method

.method public getCertLocation()Lorg/bouncycastle/asn1/x509/GeneralName;
    .registers 1

    .line 0
    iget-object p0, p0, Lorg/bouncycastle/asn1/bc/LinkedCertificate;->certLocation:Lorg/bouncycastle/asn1/x509/GeneralName;

    return-object p0
.end method

.method public getDigest()Lorg/bouncycastle/asn1/x509/DigestInfo;
    .registers 1

    .line 0
    iget-object p0, p0, Lorg/bouncycastle/asn1/bc/LinkedCertificate;->digest:Lorg/bouncycastle/asn1/x509/DigestInfo;

    return-object p0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .registers 5

    .line 0
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/bc/LinkedCertificate;->digest:Lorg/bouncycastle/asn1/x509/DigestInfo;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/bc/LinkedCertificate;->certLocation:Lorg/bouncycastle/asn1/x509/GeneralName;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/bc/LinkedCertificate;->certIssuer:Lorg/bouncycastle/asn1/x500/X500Name;

    const/4 v2, 0x0

    if-eqz v1, :cond_1d

    new-instance v3, Lorg/bouncycastle/asn1/DERTaggedObject;

    invoke-direct {v3, v2, v2, v1}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_1d
    iget-object p0, p0, Lorg/bouncycastle/asn1/bc/LinkedCertificate;->cACerts:Lorg/bouncycastle/asn1/x509/GeneralNames;

    if-eqz p0, :cond_2a

    new-instance v1, Lorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, p0}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_2a
    new-instance p0, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object p0
.end method
