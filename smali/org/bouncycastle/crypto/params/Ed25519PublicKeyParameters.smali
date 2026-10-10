###### Class org.bouncycastle.crypto.params.Ed25519PublicKeyParameters (org.bouncycastle.crypto.params.Ed25519PublicKeyParameters)
.class public final Lorg/bouncycastle/crypto/params/Ed25519PublicKeyParameters;
.super Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;


# static fields
.field public static final KEY_SIZE:I = 0x20


# instance fields
.field private final publicPoint:Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PublicPoint;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;-><init>(Z)V

    const/16 v1, 0x20

    new-array v2, v1, [B

    invoke-static {p1, v2}, Lorg/bouncycastle/util/io/Streams;->readFully(Ljava/io/InputStream;[B)I

    move-result p1

    if-ne v1, p1, :cond_15

    invoke-static {v2, v0}, Lorg/bouncycastle/crypto/params/Ed25519PublicKeyParameters;->parse([BI)Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PublicPoint;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/params/Ed25519PublicKeyParameters;->publicPoint:Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PublicPoint;

    return-void

    :cond_15
    new-instance p0, Ljava/io/EOFException;

    const-string p1, "EOF encountered in middle of Ed25519 public key"

    invoke-direct {p0, p1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PublicPoint;)V
    .registers 3

    .line 0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;-><init>(Z)V

    if-eqz p1, :cond_9

    iput-object p1, p0, Lorg/bouncycastle/crypto/params/Ed25519PublicKeyParameters;->publicPoint:Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PublicPoint;

    return-void

    :cond_9
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "\'publicPoint\' cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>([B)V
    .registers 3

    .line 0
    invoke-static {p1}, Lorg/bouncycastle/crypto/params/Ed25519PublicKeyParameters;->validate([B)[B

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/crypto/params/Ed25519PublicKeyParameters;-><init>([BI)V

    return-void
.end method

.method public constructor <init>([BI)V
    .registers 4

    .line 0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;-><init>(Z)V

    invoke-static {p1, p2}, Lorg/bouncycastle/crypto/params/Ed25519PublicKeyParameters;->parse([BI)Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PublicPoint;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/params/Ed25519PublicKeyParameters;->publicPoint:Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PublicPoint;

    return-void
.end method

.method private static parse([BI)Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PublicPoint;
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->validatePublicKeyPartialExport([BI)Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PublicPoint;

    move-result-object p0

    if-eqz p0, :cond_7

    return-object p0

    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "invalid public key"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static validate([B)[B
    .registers 3

    .line 0
    array-length v0, p0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_6

    return-object p0

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "\'buf\' must have length 32"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public encode([BI)V
    .registers 3

    .line 0
    iget-object p0, p0, Lorg/bouncycastle/crypto/params/Ed25519PublicKeyParameters;->publicPoint:Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PublicPoint;

    invoke-static {p0, p1, p2}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->encodePublicPoint(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PublicPoint;[BI)V

    return-void
.end method

.method public getEncoded()[B
    .registers 3

    .line 0
    const/16 v0, 0x20

    new-array v0, v0, [B

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/crypto/params/Ed25519PublicKeyParameters;->encode([BI)V

    return-object v0
.end method

.method public verify(I[B[BII[BI)Z
    .registers 16

    .line 0
    const-string v2, "ctx"

    if-eqz p1, :cond_5d

    const/4 v4, 0x1

    const/16 v5, 0xff

    const-string v6, "\'ctx\' cannot be null"

    if-eq p1, v4, :cond_3f

    const/4 v4, 0x2

    if-ne p1, v4, :cond_37

    if-eqz p2, :cond_31

    array-length v1, p2

    if-gt v1, v5, :cond_2b

    const/16 v1, 0x40

    if-ne v1, p5, :cond_23

    iget-object v2, p0, Lorg/bouncycastle/crypto/params/Ed25519PublicKeyParameters;->publicPoint:Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PublicPoint;

    move-object v0, p6

    move v1, p7

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->verifyPrehash([BILorg/bouncycastle/math/ec/rfc8032/Ed25519$PublicPoint;[B[BI)Z

    move-result v0

    return v0

    :cond_23
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "msgLen"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_31
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_37
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "algorithm"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3f
    if-eqz p2, :cond_57

    array-length v1, p2

    if-gt v1, v5, :cond_51

    iget-object v2, p0, Lorg/bouncycastle/crypto/params/Ed25519PublicKeyParameters;->publicPoint:Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PublicPoint;

    move-object v0, p6

    move v1, p7

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-static/range {v0 .. v6}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->verify([BILorg/bouncycastle/math/ec/rfc8032/Ed25519$PublicPoint;[B[BII)Z

    move-result v0

    return v0

    :cond_51
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_57
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5d
    if-nez p2, :cond_6b

    iget-object v4, p0, Lorg/bouncycastle/crypto/params/Ed25519PublicKeyParameters;->publicPoint:Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PublicPoint;

    move-object v2, p6

    move v3, p7

    move-object v5, p3

    move v6, p4

    move v7, p5

    invoke-static/range {v2 .. v7}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->verify([BILorg/bouncycastle/math/ec/rfc8032/Ed25519$PublicPoint;[BII)Z

    move-result v0

    return v0

    :cond_6b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
