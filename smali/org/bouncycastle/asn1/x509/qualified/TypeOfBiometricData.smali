###### Class org.bouncycastle.asn1.x509.qualified.TypeOfBiometricData (org.bouncycastle.asn1.x509.qualified.TypeOfBiometricData)
.class public Lorg/bouncycastle/asn1/x509/qualified/TypeOfBiometricData;
.super Lorg/bouncycastle/asn1/ASN1Object;

# interfaces
.implements Lorg/bouncycastle/asn1/ASN1Choice;


# static fields
.field public static final HANDWRITTEN_SIGNATURE:I = 0x1

.field public static final PICTURE:I


# instance fields
.field obj:Lorg/bouncycastle/asn1/ASN1Encodable;


# direct methods
.method public constructor <init>(I)V
    .registers 5

    .line 0
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    if-eqz p1, :cond_20

    const/4 v0, 0x1

    if-ne p1, v0, :cond_9

    goto :goto_20

    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknow PredefinedBiometricType : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_20
    :goto_20
    new-instance v0, Lorg/bouncycastle/asn1/ASN1Integer;

    int-to-long v1, p1

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/qualified/TypeOfBiometricData;->obj:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/qualified/TypeOfBiometricData;->obj:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/qualified/TypeOfBiometricData;
    .registers 2

    .line 0
    if-eqz p0, :cond_2f

    instance-of v0, p0, Lorg/bouncycastle/asn1/x509/qualified/TypeOfBiometricData;

    if-eqz v0, :cond_7

    goto :goto_2f

    :cond_7
    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1Integer;

    if-eqz v0, :cond_19

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1Integer;->intValueExact()I

    move-result p0

    new-instance v0, Lorg/bouncycastle/asn1/x509/qualified/TypeOfBiometricData;

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/x509/qualified/TypeOfBiometricData;-><init>(I)V

    return-object v0

    :cond_19
    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    if-eqz v0, :cond_27

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object p0

    new-instance v0, Lorg/bouncycastle/asn1/x509/qualified/TypeOfBiometricData;

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/x509/qualified/TypeOfBiometricData;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    return-object v0

    :cond_27
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "unknown object in getInstance"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2f
    :goto_2f
    check-cast p0, Lorg/bouncycastle/asn1/x509/qualified/TypeOfBiometricData;

    return-object p0
.end method


# virtual methods
.method public getBiometricDataOid()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .registers 1

    .line 0
    iget-object p0, p0, Lorg/bouncycastle/asn1/x509/qualified/TypeOfBiometricData;->obj:Lorg/bouncycastle/asn1/ASN1Encodable;

    check-cast p0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-object p0
.end method

.method public getPredefinedBiometricType()I
    .registers 1

    .line 0
    iget-object p0, p0, Lorg/bouncycastle/asn1/x509/qualified/TypeOfBiometricData;->obj:Lorg/bouncycastle/asn1/ASN1Encodable;

    check-cast p0, Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1Integer;->intValueExact()I

    move-result p0

    return p0
.end method

.method public isPredefined()Z
    .registers 1

    .line 0
    iget-object p0, p0, Lorg/bouncycastle/asn1/x509/qualified/TypeOfBiometricData;->obj:Lorg/bouncycastle/asn1/ASN1Encodable;

    instance-of p0, p0, Lorg/bouncycastle/asn1/ASN1Integer;

    return p0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .registers 1

    .line 0
    iget-object p0, p0, Lorg/bouncycastle/asn1/x509/qualified/TypeOfBiometricData;->obj:Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    return-object p0
.end method
