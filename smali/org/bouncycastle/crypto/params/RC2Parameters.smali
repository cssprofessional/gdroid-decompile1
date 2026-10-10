###### Class org.bouncycastle.crypto.params.RC2Parameters (org.bouncycastle.crypto.params.RC2Parameters)
.class public Lorg/bouncycastle/crypto/params/RC2Parameters;
.super Lorg/bouncycastle/crypto/params/KeyParameter;


# instance fields
.field private bits:I


# direct methods
.method public constructor <init>([B)V
    .registers 4

    .line 0
    array-length v0, p1

    const/16 v1, 0x80

    if-le v0, v1, :cond_8

    const/16 v0, 0x400

    goto :goto_b

    :cond_8
    array-length v0, p1

    mul-int/lit8 v0, v0, 0x8

    :goto_b
    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/crypto/params/RC2Parameters;-><init>([BI)V

    return-void
.end method

.method public constructor <init>([BI)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    iput p2, p0, Lorg/bouncycastle/crypto/params/RC2Parameters;->bits:I

    return-void
.end method


# virtual methods
.method public getEffectiveKeyBits()I
    .registers 1

    .line 0
    iget p0, p0, Lorg/bouncycastle/crypto/params/RC2Parameters;->bits:I

    return p0
.end method
