###### Class org.bouncycastle.jcajce.spec.OpenSSHPrivateKeySpec (org.bouncycastle.jcajce.spec.OpenSSHPrivateKeySpec)
.class public Lorg/bouncycastle/jcajce/spec/OpenSSHPrivateKeySpec;
.super Ljava/security/spec/EncodedKeySpec;


# instance fields
.field private final format:Ljava/lang/String;


# direct methods
.method public constructor <init>([B)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Ljava/security/spec/EncodedKeySpec;-><init>([B)V

    const/4 v0, 0x0

    aget-byte p1, p1, v0

    const/16 v0, 0x30

    if-ne p1, v0, :cond_f

    const-string p1, "ASN.1"

    :goto_c
    iput-object p1, p0, Lorg/bouncycastle/jcajce/spec/OpenSSHPrivateKeySpec;->format:Ljava/lang/String;

    goto :goto_16

    :cond_f
    const/16 v0, 0x6f

    if-ne p1, v0, :cond_17

    const-string p1, "OpenSSH"

    goto :goto_c

    :goto_16
    return-void

    :cond_17
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "unknown byte encoding"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getFormat()Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lorg/bouncycastle/jcajce/spec/OpenSSHPrivateKeySpec;->format:Ljava/lang/String;

    return-object p0
.end method
