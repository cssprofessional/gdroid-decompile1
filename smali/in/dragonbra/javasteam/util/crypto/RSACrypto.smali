###### Class in.dragonbra.javasteam.util.crypto.RSACrypto (in.dragonbra.javasteam.util.crypto.RSACrypto)
.class public Lin/dragonbra/javasteam/util/crypto/RSACrypto;
.super Ljava/lang/Object;
.source "RSACrypto.java"


# static fields
.field private static final logger:Lin/dragonbra/javasteam/util/log/Logger;


# instance fields
.field private cipher:Ljavax/crypto/Cipher;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 26
    const-class v0, Lin/dragonbra/javasteam/util/crypto/RSACrypto;

    invoke-static {v0}, Lin/dragonbra/javasteam/util/log/LogManager;->getLogger(Ljava/lang/Class;)Lin/dragonbra/javasteam/util/log/Logger;

    move-result-object v0

    sput-object v0, Lin/dragonbra/javasteam/util/crypto/RSACrypto;->logger:Lin/dragonbra/javasteam/util/log/Logger;

    return-void
.end method

.method public constructor <init>([B)V
    .registers 7

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_35

    .line 36
    :try_start_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 37
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_d
    if-ge v3, v1, :cond_1d

    aget-byte v4, p1, v3

    .line 38
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :catch_1b
    move-exception p0

    goto :goto_2f

    .line 40
    :cond_1d
    new-instance p1, Lin/dragonbra/javasteam/util/crypto/AsnKeyParser;

    invoke-direct {p1, v0}, Lin/dragonbra/javasteam/util/crypto/AsnKeyParser;-><init>(Ljava/util/List;)V

    .line 41
    invoke-virtual {p1}, Lin/dragonbra/javasteam/util/crypto/AsnKeyParser;->parseRSAPublicKey()[Ljava/math/BigInteger;

    move-result-object p1

    .line 42
    aget-object v0, p1, v2

    const/4 v1, 0x1

    aget-object p1, p1, v1

    invoke-direct {p0, v0, p1}, Lin/dragonbra/javasteam/util/crypto/RSACrypto;->init(Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    :try_end_2e
    .catch Lin/dragonbra/javasteam/util/crypto/BerDecodeException; {:try_start_5 .. :try_end_2e} :catch_1b

    goto :goto_34

    .line 44
    :goto_2f
    sget-object p1, Lin/dragonbra/javasteam/util/crypto/RSACrypto;->logger:Lin/dragonbra/javasteam/util/log/Logger;

    invoke-virtual {p1, p0}, Lin/dragonbra/javasteam/util/log/Logger;->error(Ljava/lang/Throwable;)V

    :goto_34
    return-void

    .line 32
    :cond_35
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "key is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private init(Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .registers 4

    .line 50
    :try_start_0
    new-instance v0, Ljava/security/spec/RSAPublicKeySpec;

    invoke-direct {v0, p1, p2}, Ljava/security/spec/RSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 52
    const-string p1, "RSA"

    invoke-static {p1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p1

    .line 53
    invoke-virtual {p1, v0}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p1

    check-cast p1, Ljava/security/interfaces/RSAPublicKey;

    .line 55
    const-string p2, "RSA/None/OAEPWithSHA1AndMGF1Padding"

    sget-object v0, Lin/dragonbra/javasteam/util/crypto/CryptoHelper;->SEC_PROV:Ljava/lang/String;

    invoke-static {p2, v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p2

    iput-object p2, p0, Lin/dragonbra/javasteam/util/crypto/RSACrypto;->cipher:Ljavax/crypto/Cipher;

    const/4 p0, 0x1

    .line 56
    invoke-virtual {p2, p0, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V
    :try_end_1f
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_1f} :catch_20
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_1f} :catch_20
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_1f} :catch_20
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_1f} :catch_20
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_1f} :catch_20

    goto :goto_26

    :catch_20
    move-exception p0

    .line 59
    sget-object p1, Lin/dragonbra/javasteam/util/crypto/RSACrypto;->logger:Lin/dragonbra/javasteam/util/log/Logger;

    invoke-virtual {p1, p0}, Lin/dragonbra/javasteam/util/log/Logger;->debug(Ljava/lang/Throwable;)V

    :goto_26
    return-void
.end method


# virtual methods
.method public encrypt([B)[B
    .registers 2

    .line 65
    :try_start_0
    iget-object p0, p0, Lin/dragonbra/javasteam/util/crypto/RSACrypto;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {p0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0
    :try_end_6
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_6} :catch_7
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_6} :catch_7

    return-object p0

    :catch_7
    move-exception p0

    .line 67
    sget-object p1, Lin/dragonbra/javasteam/util/crypto/RSACrypto;->logger:Lin/dragonbra/javasteam/util/log/Logger;

    invoke-virtual {p1, p0}, Lin/dragonbra/javasteam/util/log/Logger;->debug(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method
