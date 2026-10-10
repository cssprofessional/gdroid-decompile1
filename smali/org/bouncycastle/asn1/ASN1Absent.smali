###### Class org.bouncycastle.asn1.ASN1Absent (org.bouncycastle.asn1.ASN1Absent)
.class public Lorg/bouncycastle/asn1/ASN1Absent;
.super Lorg/bouncycastle/asn1/ASN1Primitive;


# static fields
.field public static final INSTANCE:Lorg/bouncycastle/asn1/ASN1Absent;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lorg/bouncycastle/asn1/ASN1Absent;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1Absent;-><init>()V

    sput-object v0, Lorg/bouncycastle/asn1/ASN1Absent;->INSTANCE:Lorg/bouncycastle/asn1/ASN1Absent;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Primitive;-><init>()V

    return-void
.end method


# virtual methods
.method public asn1Equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z
    .registers 2

    .line 0
    if-ne p1, p0, :cond_4

    const/4 p0, 0x1

    goto :goto_5

    :cond_4
    const/4 p0, 0x0

    :goto_5
    return p0
.end method

.method public encode(Lorg/bouncycastle/asn1/ASN1OutputStream;Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public encodeConstructed()Z
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public encodedLength(Z)I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public hashCode()I
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method
