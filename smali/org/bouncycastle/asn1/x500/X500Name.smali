###### Class org.bouncycastle.asn1.x500.X500Name (org.bouncycastle.asn1.x500.X500Name)
.class public Lorg/bouncycastle/asn1/x500/X500Name;
.super Lorg/bouncycastle/asn1/ASN1Object;

# interfaces
.implements Lorg/bouncycastle/asn1/ASN1Choice;


# static fields
.field private static defaultStyle:Lorg/bouncycastle/asn1/x500/X500NameStyle;


# instance fields
.field private hashCodeValue:I

.field private isHashCodeCalculated:Z

.field private rdnSeq:Lorg/bouncycastle/asn1/DERSequence;

.field private rdns:[Lorg/bouncycastle/asn1/x500/RDN;

.field private style:Lorg/bouncycastle/asn1/x500/X500NameStyle;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    sget-object v0, Lorg/bouncycastle/asn1/x500/style/BCStyle;->INSTANCE:Lorg/bouncycastle/asn1/x500/X500NameStyle;

    sput-object v0, Lorg/bouncycastle/asn1/x500/X500Name;->defaultStyle:Lorg/bouncycastle/asn1/x500/X500NameStyle;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 0
    sget-object v0, Lorg/bouncycastle/asn1/x500/X500Name;->defaultStyle:Lorg/bouncycastle/asn1/x500/X500NameStyle;

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/asn1/x500/X500Name;-><init>(Lorg/bouncycastle/asn1/x500/X500NameStyle;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .registers 3

    .line 0
    sget-object v0, Lorg/bouncycastle/asn1/x500/X500Name;->defaultStyle:Lorg/bouncycastle/asn1/x500/X500NameStyle;

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/asn1/x500/X500Name;-><init>(Lorg/bouncycastle/asn1/x500/X500NameStyle;Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x500/X500NameStyle;Ljava/lang/String;)V
    .registers 3

    .line 0
    invoke-interface {p1, p2}, Lorg/bouncycastle/asn1/x500/X500NameStyle;->fromString(Ljava/lang/String;)[Lorg/bouncycastle/asn1/x500/RDN;

    move-result-object p2

    invoke-direct {p0, p2}, Lorg/bouncycastle/asn1/x500/X500Name;-><init>([Lorg/bouncycastle/asn1/x500/RDN;)V

    iput-object p1, p0, Lorg/bouncycastle/asn1/x500/X500Name;->style:Lorg/bouncycastle/asn1/x500/X500NameStyle;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/x500/X500NameStyle;Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .registers 9

    .line 0
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    invoke-virtual {p2}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    iput-object p1, p0, Lorg/bouncycastle/asn1/x500/X500Name;->style:Lorg/bouncycastle/asn1/x500/X500NameStyle;

    new-array p1, v0, [Lorg/bouncycastle/asn1/x500/RDN;

    iput-object p1, p0, Lorg/bouncycastle/asn1/x500/X500Name;->rdns:[Lorg/bouncycastle/asn1/x500/RDN;

    const/4 p1, 0x1

    const/4 v1, 0x0

    move v3, p1

    move v2, v1

    :goto_11
    if-ge v2, v0, :cond_28

    invoke-virtual {p2, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    invoke-static {v4}, Lorg/bouncycastle/asn1/x500/RDN;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x500/RDN;

    move-result-object v5

    if-ne v5, v4, :cond_1f

    move v4, p1

    goto :goto_20

    :cond_1f
    move v4, v1

    :goto_20
    and-int/2addr v3, v4

    iget-object v4, p0, Lorg/bouncycastle/asn1/x500/X500Name;->rdns:[Lorg/bouncycastle/asn1/x500/RDN;

    aput-object v5, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_28
    if-eqz v3, :cond_31

    invoke-static {p2}, Lorg/bouncycastle/asn1/DERSequence;->convert(Lorg/bouncycastle/asn1/ASN1Sequence;)Lorg/bouncycastle/asn1/DERSequence;

    move-result-object p1

    :goto_2e
    iput-object p1, p0, Lorg/bouncycastle/asn1/x500/X500Name;->rdnSeq:Lorg/bouncycastle/asn1/DERSequence;

    goto :goto_39

    :cond_31
    new-instance p1, Lorg/bouncycastle/asn1/DERSequence;

    iget-object p2, p0, Lorg/bouncycastle/asn1/x500/X500Name;->rdns:[Lorg/bouncycastle/asn1/x500/RDN;

    invoke-direct {p1, p2}, Lorg/bouncycastle/asn1/DERSequence;-><init>([Lorg/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_2e

    :goto_39
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x500/X500NameStyle;Lorg/bouncycastle/asn1/x500/X500Name;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/x500/X500Name;->style:Lorg/bouncycastle/asn1/x500/X500NameStyle;

    iget-object p1, p2, Lorg/bouncycastle/asn1/x500/X500Name;->rdns:[Lorg/bouncycastle/asn1/x500/RDN;

    iput-object p1, p0, Lorg/bouncycastle/asn1/x500/X500Name;->rdns:[Lorg/bouncycastle/asn1/x500/RDN;

    iget-object p1, p2, Lorg/bouncycastle/asn1/x500/X500Name;->rdnSeq:Lorg/bouncycastle/asn1/DERSequence;

    iput-object p1, p0, Lorg/bouncycastle/asn1/x500/X500Name;->rdnSeq:Lorg/bouncycastle/asn1/DERSequence;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x500/X500NameStyle;[Lorg/bouncycastle/asn1/x500/RDN;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/x500/X500Name;->style:Lorg/bouncycastle/asn1/x500/X500NameStyle;

    invoke-virtual {p2}, [Lorg/bouncycastle/asn1/x500/RDN;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/bouncycastle/asn1/x500/RDN;

    iput-object p1, p0, Lorg/bouncycastle/asn1/x500/X500Name;->rdns:[Lorg/bouncycastle/asn1/x500/RDN;

    new-instance p1, Lorg/bouncycastle/asn1/DERSequence;

    iget-object p2, p0, Lorg/bouncycastle/asn1/x500/X500Name;->rdns:[Lorg/bouncycastle/asn1/x500/RDN;

    invoke-direct {p1, p2}, Lorg/bouncycastle/asn1/DERSequence;-><init>([Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iput-object p1, p0, Lorg/bouncycastle/asn1/x500/X500Name;->rdnSeq:Lorg/bouncycastle/asn1/DERSequence;

    return-void
.end method

.method public constructor <init>([Lorg/bouncycastle/asn1/x500/RDN;)V
    .registers 3

    .line 0
    sget-object v0, Lorg/bouncycastle/asn1/x500/X500Name;->defaultStyle:Lorg/bouncycastle/asn1/x500/X500NameStyle;

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/asn1/x500/X500Name;-><init>(Lorg/bouncycastle/asn1/x500/X500NameStyle;[Lorg/bouncycastle/asn1/x500/RDN;)V

    return-void
.end method

.method public static getDefaultStyle()Lorg/bouncycastle/asn1/x500/X500NameStyle;
    .registers 1

    .line 0
    sget-object v0, Lorg/bouncycastle/asn1/x500/X500Name;->defaultStyle:Lorg/bouncycastle/asn1/x500/X500NameStyle;

    return-object v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x500/X500Name;
    .registers 2

    .line 0
    instance-of v0, p0, Lorg/bouncycastle/asn1/x500/X500Name;

    if-eqz v0, :cond_7

    check-cast p0, Lorg/bouncycastle/asn1/x500/X500Name;

    return-object p0

    :cond_7
    if-eqz p0, :cond_13

    new-instance v0, Lorg/bouncycastle/asn1/x500/X500Name;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/x500/X500Name;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    :cond_13
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/x500/X500Name;
    .registers 2

    .line 0
    const/4 p1, 0x1

    invoke-static {p0, p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance(Lorg/bouncycastle/asn1/x500/X500NameStyle;Ljava/lang/Object;)Lorg/bouncycastle/asn1/x500/X500Name;
    .registers 3

    .line 0
    instance-of v0, p1, Lorg/bouncycastle/asn1/x500/X500Name;

    if-eqz v0, :cond_c

    new-instance v0, Lorg/bouncycastle/asn1/x500/X500Name;

    check-cast p1, Lorg/bouncycastle/asn1/x500/X500Name;

    invoke-direct {v0, p0, p1}, Lorg/bouncycastle/asn1/x500/X500Name;-><init>(Lorg/bouncycastle/asn1/x500/X500NameStyle;Lorg/bouncycastle/asn1/x500/X500Name;)V

    return-object v0

    :cond_c
    if-eqz p1, :cond_18

    new-instance v0, Lorg/bouncycastle/asn1/x500/X500Name;

    invoke-static {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lorg/bouncycastle/asn1/x500/X500Name;-><init>(Lorg/bouncycastle/asn1/x500/X500NameStyle;Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    :cond_18
    const/4 p0, 0x0

    return-object p0
.end method

.method public static setDefaultStyle(Lorg/bouncycastle/asn1/x500/X500NameStyle;)V
    .registers 2

    .line 0
    if-eqz p0, :cond_5

    sput-object p0, Lorg/bouncycastle/asn1/x500/X500Name;->defaultStyle:Lorg/bouncycastle/asn1/x500/X500NameStyle;

    return-void

    :cond_5
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "cannot set style to null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .line 0
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lorg/bouncycastle/asn1/x500/X500Name;

    const/4 v2, 0x0

    if-nez v1, :cond_e

    instance-of v1, p1, Lorg/bouncycastle/asn1/ASN1Sequence;

    if-nez v1, :cond_e

    return v2

    :cond_e
    move-object v1, p1

    check-cast v1, Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v1}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x500/X500Name;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v1

    if-eqz v1, :cond_20

    return v0

    :cond_20
    :try_start_20
    iget-object v0, p0, Lorg/bouncycastle/asn1/x500/X500Name;->style:Lorg/bouncycastle/asn1/x500/X500NameStyle;

    invoke-static {p1}, Lorg/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lorg/bouncycastle/asn1/x500/X500NameStyle;->areEqual(Lorg/bouncycastle/asn1/x500/X500Name;Lorg/bouncycastle/asn1/x500/X500Name;)Z

    move-result p0
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_2a} :catch_2b

    return p0

    :catch_2b
    return v2
.end method

.method public getAttributeTypes()[Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .registers 6

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/asn1/x500/X500Name;->rdns:[Lorg/bouncycastle/asn1/x500/RDN;

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_6
    if-ge v2, v0, :cond_14

    iget-object v4, p0, Lorg/bouncycastle/asn1/x500/X500Name;->rdns:[Lorg/bouncycastle/asn1/x500/RDN;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/x500/RDN;->size()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_14
    new-array v2, v3, [Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move v3, v1

    :goto_17
    if-ge v1, v0, :cond_25

    iget-object v4, p0, Lorg/bouncycastle/asn1/x500/X500Name;->rdns:[Lorg/bouncycastle/asn1/x500/RDN;

    aget-object v4, v4, v1

    invoke-virtual {v4, v2, v3}, Lorg/bouncycastle/asn1/x500/RDN;->collectAttributeTypes([Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;I)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    :cond_25
    return-object v2
.end method

.method public getRDNs()[Lorg/bouncycastle/asn1/x500/RDN;
    .registers 1

    .line 0
    iget-object p0, p0, Lorg/bouncycastle/asn1/x500/X500Name;->rdns:[Lorg/bouncycastle/asn1/x500/RDN;

    invoke-virtual {p0}, [Lorg/bouncycastle/asn1/x500/RDN;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lorg/bouncycastle/asn1/x500/RDN;

    return-object p0
.end method

.method public getRDNs(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)[Lorg/bouncycastle/asn1/x500/RDN;
    .registers 9

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/asn1/x500/X500Name;->rdns:[Lorg/bouncycastle/asn1/x500/RDN;

    array-length v0, v0

    new-array v1, v0, [Lorg/bouncycastle/asn1/x500/RDN;

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_8
    iget-object v5, p0, Lorg/bouncycastle/asn1/x500/X500Name;->rdns:[Lorg/bouncycastle/asn1/x500/RDN;

    array-length v6, v5

    if-eq v3, v6, :cond_1d

    aget-object v5, v5, v3

    invoke-virtual {v5, p1}, Lorg/bouncycastle/asn1/x500/RDN;->containsAttributeType(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Z

    move-result v6

    if-eqz v6, :cond_1a

    add-int/lit8 v6, v4, 0x1

    aput-object v5, v1, v4

    move v4, v6

    :cond_1a
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_1d
    if-ge v4, v0, :cond_25

    new-array p0, v4, [Lorg/bouncycastle/asn1/x500/RDN;

    invoke-static {v1, v2, p0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, p0

    :cond_25
    return-object v1
.end method

.method public hashCode()I
    .registers 2

    .line 0
    iget-boolean v0, p0, Lorg/bouncycastle/asn1/x500/X500Name;->isHashCodeCalculated:Z

    if-eqz v0, :cond_7

    iget p0, p0, Lorg/bouncycastle/asn1/x500/X500Name;->hashCodeValue:I

    return p0

    :cond_7
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/asn1/x500/X500Name;->isHashCodeCalculated:Z

    iget-object v0, p0, Lorg/bouncycastle/asn1/x500/X500Name;->style:Lorg/bouncycastle/asn1/x500/X500NameStyle;

    invoke-interface {v0, p0}, Lorg/bouncycastle/asn1/x500/X500NameStyle;->calculateHashCode(Lorg/bouncycastle/asn1/x500/X500Name;)I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/asn1/x500/X500Name;->hashCodeValue:I

    return v0
.end method

.method public size()I
    .registers 1

    .line 0
    iget-object p0, p0, Lorg/bouncycastle/asn1/x500/X500Name;->rdns:[Lorg/bouncycastle/asn1/x500/RDN;

    array-length p0, p0

    return p0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .registers 1

    .line 0
    iget-object p0, p0, Lorg/bouncycastle/asn1/x500/X500Name;->rdnSeq:Lorg/bouncycastle/asn1/DERSequence;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/asn1/x500/X500Name;->style:Lorg/bouncycastle/asn1/x500/X500NameStyle;

    invoke-interface {v0, p0}, Lorg/bouncycastle/asn1/x500/X500NameStyle;->toString(Lorg/bouncycastle/asn1/x500/X500Name;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
