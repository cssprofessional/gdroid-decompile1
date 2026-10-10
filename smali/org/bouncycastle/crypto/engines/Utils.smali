###### Class org.bouncycastle.crypto.engines.Utils (org.bouncycastle.crypto.engines.Utils)
.class Lorg/bouncycastle/crypto/engines/Utils;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPurpose(Z)Lorg/bouncycastle/crypto/CryptoServicePurpose;
    .registers 1

    .line 0
    if-eqz p0, :cond_5

    sget-object p0, Lorg/bouncycastle/crypto/CryptoServicePurpose;->ENCRYPTION:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    goto :goto_7

    :cond_5
    sget-object p0, Lorg/bouncycastle/crypto/CryptoServicePurpose;->DECRYPTION:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    :goto_7
    return-object p0
.end method
