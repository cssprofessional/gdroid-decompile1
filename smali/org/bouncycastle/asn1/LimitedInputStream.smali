###### Class org.bouncycastle.asn1.LimitedInputStream (org.bouncycastle.asn1.LimitedInputStream)
.class abstract Lorg/bouncycastle/asn1/LimitedInputStream;
.super Ljava/io/InputStream;


# instance fields
.field protected final _in:Ljava/io/InputStream;

.field private _limit:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;I)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/LimitedInputStream;->_in:Ljava/io/InputStream;

    iput p2, p0, Lorg/bouncycastle/asn1/LimitedInputStream;->_limit:I

    return-void
.end method


# virtual methods
.method public getLimit()I
    .registers 1

    .line 0
    iget p0, p0, Lorg/bouncycastle/asn1/LimitedInputStream;->_limit:I

    return p0
.end method

.method public setParentEofDetect(Z)V
    .registers 3

    .line 0
    iget-object p0, p0, Lorg/bouncycastle/asn1/LimitedInputStream;->_in:Ljava/io/InputStream;

    instance-of v0, p0, Lorg/bouncycastle/asn1/IndefiniteLengthInputStream;

    if-eqz v0, :cond_b

    check-cast p0, Lorg/bouncycastle/asn1/IndefiniteLengthInputStream;

    invoke-virtual {p0, p1}, Lorg/bouncycastle/asn1/IndefiniteLengthInputStream;->setEofOn00(Z)V

    :cond_b
    return-void
.end method
