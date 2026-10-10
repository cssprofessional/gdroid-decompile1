###### Class org.bouncycastle.asn1.ASN1Type (org.bouncycastle.asn1.ASN1Type)
.class abstract Lorg/bouncycastle/asn1/ASN1Type;
.super Ljava/lang/Object;


# instance fields
.field final javaClass:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/ASN1Type;->javaClass:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 2

    .line 0
    if-ne p0, p1, :cond_4

    const/4 p0, 0x1

    goto :goto_5

    :cond_4
    const/4 p0, 0x0

    :goto_5
    return p0
.end method

.method public final getJavaClass()Ljava/lang/Class;
    .registers 1

    .line 0
    iget-object p0, p0, Lorg/bouncycastle/asn1/ASN1Type;->javaClass:Ljava/lang/Class;

    return-object p0
.end method

.method public final hashCode()I
    .registers 1

    .line 0
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method
