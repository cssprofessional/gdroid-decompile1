###### Class org.bouncycastle.asn1.x9.OtherInfo (org.bouncycastle.asn1.x9.OtherInfo)
.class public Lorg/bouncycastle/asn1/x9/OtherInfo;
.super Lorg/bouncycastle/asn1/ASN1Object;


# instance fields
.field private keyInfo:Lorg/bouncycastle/asn1/x9/KeySpecificInfo;

.field private partyAInfo:Lorg/bouncycastle/asn1/ASN1OctetString;

.field private suppPubInfo:Lorg/bouncycastle/asn1/ASN1OctetString;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x9/KeySpecificInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x9/KeySpecificInfo;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/x9/OtherInfo;->keyInfo:Lorg/bouncycastle/asn1/x9/KeySpecificInfo;

    :cond_11
    :goto_11
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_3d

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->hasContextTag(I)Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getExplicitBaseObject()Lorg/bouncycastle/asn1/ASN1Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1OctetString;

    iput-object v0, p0, Lorg/bouncycastle/asn1/x9/OtherInfo;->partyAInfo:Lorg/bouncycastle/asn1/ASN1OctetString;

    goto :goto_11

    :cond_2d
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->hasContextTag(I)Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getExplicitBaseObject()Lorg/bouncycastle/asn1/ASN1Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1OctetString;

    iput-object v0, p0, Lorg/bouncycastle/asn1/x9/OtherInfo;->suppPubInfo:Lorg/bouncycastle/asn1/ASN1OctetString;

    goto :goto_11

    :cond_3d
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x9/KeySpecificInfo;Lorg/bouncycastle/asn1/ASN1OctetString;Lorg/bouncycastle/asn1/ASN1OctetString;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/x9/OtherInfo;->keyInfo:Lorg/bouncycastle/asn1/x9/KeySpecificInfo;

    iput-object p2, p0, Lorg/bouncycastle/asn1/x9/OtherInfo;->partyAInfo:Lorg/bouncycastle/asn1/ASN1OctetString;

    iput-object p3, p0, Lorg/bouncycastle/asn1/x9/OtherInfo;->suppPubInfo:Lorg/bouncycastle/asn1/ASN1OctetString;

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x9/OtherInfo;
    .registers 2

    .line 0
    instance-of v0, p0, Lorg/bouncycastle/asn1/x9/OtherInfo;

    if-eqz v0, :cond_7

    check-cast p0, Lorg/bouncycastle/asn1/x9/OtherInfo;

    return-object p0

    :cond_7
    if-eqz p0, :cond_13

    new-instance v0, Lorg/bouncycastle/asn1/x9/OtherInfo;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/x9/OtherInfo;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    :cond_13
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getKeyInfo()Lorg/bouncycastle/asn1/x9/KeySpecificInfo;
    .registers 1

    .line 0
    iget-object p0, p0, Lorg/bouncycastle/asn1/x9/OtherInfo;->keyInfo:Lorg/bouncycastle/asn1/x9/KeySpecificInfo;

    return-object p0
.end method

.method public getPartyAInfo()Lorg/bouncycastle/asn1/ASN1OctetString;
    .registers 1

    .line 0
    iget-object p0, p0, Lorg/bouncycastle/asn1/x9/OtherInfo;->partyAInfo:Lorg/bouncycastle/asn1/ASN1OctetString;

    return-object p0
.end method

.method public getSuppPubInfo()Lorg/bouncycastle/asn1/ASN1OctetString;
    .registers 1

    .line 0
    iget-object p0, p0, Lorg/bouncycastle/asn1/x9/OtherInfo;->suppPubInfo:Lorg/bouncycastle/asn1/ASN1OctetString;

    return-object p0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .registers 5

    .line 0
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/x9/OtherInfo;->keyInfo:Lorg/bouncycastle/asn1/x9/KeySpecificInfo;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/x9/OtherInfo;->partyAInfo:Lorg/bouncycastle/asn1/ASN1OctetString;

    if-eqz v1, :cond_18

    new-instance v2, Lorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v1}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_18
    new-instance v1, Lorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v2, 0x2

    iget-object p0, p0, Lorg/bouncycastle/asn1/x9/OtherInfo;->suppPubInfo:Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-direct {v1, v2, p0}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance p0, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object p0
.end method
