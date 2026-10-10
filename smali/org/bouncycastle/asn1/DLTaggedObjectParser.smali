###### Class org.bouncycastle.asn1.DLTaggedObjectParser (org.bouncycastle.asn1.DLTaggedObjectParser)
.class Lorg/bouncycastle/asn1/DLTaggedObjectParser;
.super Lorg/bouncycastle/asn1/BERTaggedObjectParser;


# instance fields
.field private final _constructed:Z


# direct methods
.method public constructor <init>(IIZLorg/bouncycastle/asn1/ASN1StreamParser;)V
    .registers 5

    .line 0
    invoke-direct {p0, p1, p2, p4}, Lorg/bouncycastle/asn1/BERTaggedObjectParser;-><init>(IILorg/bouncycastle/asn1/ASN1StreamParser;)V

    iput-boolean p3, p0, Lorg/bouncycastle/asn1/DLTaggedObjectParser;->_constructed:Z

    return-void
.end method

.method private checkConstructed()Lorg/bouncycastle/asn1/ASN1StreamParser;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 0
    iget-boolean v0, p0, Lorg/bouncycastle/asn1/DLTaggedObjectParser;->_constructed:Z

    if-eqz v0, :cond_7

    iget-object p0, p0, Lorg/bouncycastle/asn1/BERTaggedObjectParser;->_parser:Lorg/bouncycastle/asn1/ASN1StreamParser;

    return-object p0

    :cond_7
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Explicit tags must be constructed (see X.690 8.14.2)"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getLoadedObject()Lorg/bouncycastle/asn1/ASN1Primitive;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/asn1/BERTaggedObjectParser;->_parser:Lorg/bouncycastle/asn1/ASN1StreamParser;

    iget v1, p0, Lorg/bouncycastle/asn1/BERTaggedObjectParser;->_tagClass:I

    iget v2, p0, Lorg/bouncycastle/asn1/BERTaggedObjectParser;->_tagNo:I

    iget-boolean p0, p0, Lorg/bouncycastle/asn1/DLTaggedObjectParser;->_constructed:Z

    invoke-virtual {v0, v1, v2, p0}, Lorg/bouncycastle/asn1/ASN1StreamParser;->loadTaggedDL(IIZ)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    return-object p0
.end method

.method public parseBaseUniversal(ZI)Lorg/bouncycastle/asn1/ASN1Encodable;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 0
    if-eqz p1, :cond_b

    invoke-direct {p0}, Lorg/bouncycastle/asn1/DLTaggedObjectParser;->checkConstructed()Lorg/bouncycastle/asn1/ASN1StreamParser;

    move-result-object p0

    invoke-virtual {p0, p2}, Lorg/bouncycastle/asn1/ASN1StreamParser;->parseObject(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p0

    return-object p0

    :cond_b
    iget-boolean p1, p0, Lorg/bouncycastle/asn1/DLTaggedObjectParser;->_constructed:Z

    iget-object p0, p0, Lorg/bouncycastle/asn1/BERTaggedObjectParser;->_parser:Lorg/bouncycastle/asn1/ASN1StreamParser;

    if-eqz p1, :cond_16

    invoke-virtual {p0, p2}, Lorg/bouncycastle/asn1/ASN1StreamParser;->parseImplicitConstructedDL(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p0

    goto :goto_1a

    :cond_16
    invoke-virtual {p0, p2}, Lorg/bouncycastle/asn1/ASN1StreamParser;->parseImplicitPrimitive(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p0

    :goto_1a
    return-object p0
.end method

.method public parseExplicitBaseObject()Lorg/bouncycastle/asn1/ASN1Encodable;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 0
    invoke-direct {p0}, Lorg/bouncycastle/asn1/DLTaggedObjectParser;->checkConstructed()Lorg/bouncycastle/asn1/ASN1StreamParser;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1StreamParser;->readObject()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p0

    return-object p0
.end method

.method public parseExplicitBaseTagged()Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 0
    invoke-direct {p0}, Lorg/bouncycastle/asn1/DLTaggedObjectParser;->checkConstructed()Lorg/bouncycastle/asn1/ASN1StreamParser;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1StreamParser;->parseTaggedObject()Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;

    move-result-object p0

    return-object p0
.end method

.method public parseImplicitBaseTagged(II)Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 0
    new-instance v0, Lorg/bouncycastle/asn1/DLTaggedObjectParser;

    iget-boolean v1, p0, Lorg/bouncycastle/asn1/DLTaggedObjectParser;->_constructed:Z

    iget-object p0, p0, Lorg/bouncycastle/asn1/BERTaggedObjectParser;->_parser:Lorg/bouncycastle/asn1/ASN1StreamParser;

    invoke-direct {v0, p1, p2, v1, p0}, Lorg/bouncycastle/asn1/DLTaggedObjectParser;-><init>(IIZLorg/bouncycastle/asn1/ASN1StreamParser;)V

    return-object v0
.end method
