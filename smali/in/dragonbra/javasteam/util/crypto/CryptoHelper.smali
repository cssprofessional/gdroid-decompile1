###### Class in.dragonbra.javasteam.util.crypto.CryptoHelper (in.dragonbra.javasteam.util.crypto.CryptoHelper)
.class public Lin/dragonbra/javasteam/util/crypto/CryptoHelper;
.super Ljava/lang/Object;
.source "CryptoHelper.java"


# static fields
.field public static final SEC_PROV:Ljava/lang/String;

.field private static final logger:Lin/dragonbra/javasteam/util/log/Logger;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 28
    const-class v0, Lin/dragonbra/javasteam/util/crypto/CryptoHelper;

    invoke-static {v0}, Lin/dragonbra/javasteam/util/log/LogManager;->getLogger(Ljava/lang/Class;)Lin/dragonbra/javasteam/util/log/Logger;

    move-result-object v0

    sput-object v0, Lin/dragonbra/javasteam/util/crypto/CryptoHelper;->logger:Lin/dragonbra/javasteam/util/log/Logger;

    .line 34
    :try_start_8
    invoke-static {}, Lin/dragonbra/javasteam/util/Utils;->getOSType()Lin/dragonbra/javasteam/enums/EOSType;

    move-result-object v0

    sget-object v1, Lin/dragonbra/javasteam/enums/EOSType;->AndroidUnknown:Lin/dragonbra/javasteam/enums/EOSType;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_e} :catch_46

    const-string v2, "BC"

    const-class v3, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;

    const/4 v4, 0x0

    if-ne v0, v1, :cond_48

    const/4 v0, 0x1

    .line 38
    :try_start_16
    const-string v1, "org.spongycastle.jce.provider.BouncyCastleProvider"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 39
    new-array v5, v4, [Ljava/lang/Class;

    invoke-virtual {v1, v5}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    new-array v5, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/Provider;

    invoke-static {v1, v0}, Ljava/security/Security;->insertProviderAt(Ljava/security/Provider;I)I

    .line 40
    const-string v2, "SC"
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_2f} :catch_30

    goto :goto_43

    .line 43
    :catch_30
    :try_start_30
    sget-object v1, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->PROVIDER_NAME:Ljava/lang/String;

    .line 44
    new-array v1, v4, [Ljava/lang/Class;

    invoke-virtual {v3, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/Provider;

    invoke-static {v1, v0}, Ljava/security/Security;->insertProviderAt(Ljava/security/Provider;I)I

    .line 48
    :goto_43
    sput-object v2, Lin/dragonbra/javasteam/util/crypto/CryptoHelper;->SEC_PROV:Ljava/lang/String;

    goto :goto_5d

    :catch_46
    move-exception v0

    goto :goto_76

    .line 50
    :cond_48
    sget-object v0, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->PROVIDER_NAME:Ljava/lang/String;

    .line 51
    new-array v0, v4, [Ljava/lang/Class;

    invoke-virtual {v3, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/Provider;

    invoke-static {v0}, Ljava/security/Security;->addProvider(Ljava/security/Provider;)I

    .line 52
    sput-object v2, Lin/dragonbra/javasteam/util/crypto/CryptoHelper;->SEC_PROV:Ljava/lang/String;
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_5d} :catch_46

    .line 58
    :goto_5d
    sget-object v0, Lin/dragonbra/javasteam/util/crypto/CryptoHelper;->logger:Lin/dragonbra/javasteam/util/log/Logger;

    sget-object v1, Lin/dragonbra/javasteam/util/crypto/CryptoHelper;->SEC_PROV:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Using security provider: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lin/dragonbra/javasteam/util/log/Logger;->debug(Ljava/lang/String;)V

    return-void

    .line 55
    :goto_76
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Couldn\'t create security provider"

    invoke-direct {v1, v2, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static crcHash([B)[B
    .registers 5

    if-eqz p0, :cond_45

    .line 124
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    const/4 v1, 0x0

    .line 125
    array-length v2, p0

    invoke-virtual {v0, p0, v1, v2}, Ljava/util/zip/CRC32;->update([BII)V

    .line 126
    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v0

    .line 128
    :try_start_10
    new-instance p0, Lin/dragonbra/javasteam/util/stream/MemoryStream;

    const/4 v2, 0x4

    invoke-direct {p0, v2}, Lin/dragonbra/javasteam/util/stream/MemoryStream;-><init>(I)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_16} :catch_3d

    .line 129
    :try_start_16
    new-instance v2, Lin/dragonbra/javasteam/util/stream/BinaryWriter;

    invoke-virtual {p0}, Lin/dragonbra/javasteam/util/stream/MemoryStream;->asOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Lin/dragonbra/javasteam/util/stream/BinaryWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_1f
    .catchall {:try_start_16 .. :try_end_1f} :catchall_24

    long-to-int v0, v0

    .line 132
    :try_start_20
    invoke-virtual {v2, v0}, Lin/dragonbra/javasteam/util/stream/BinaryWriter;->writeInt(I)V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_23} :catch_26
    .catchall {:try_start_20 .. :try_end_23} :catchall_24

    goto :goto_2c

    :catchall_24
    move-exception v0

    goto :goto_34

    :catch_26
    move-exception v0

    .line 134
    :try_start_27
    sget-object v1, Lin/dragonbra/javasteam/util/crypto/CryptoHelper;->logger:Lin/dragonbra/javasteam/util/log/Logger;

    invoke-virtual {v1, v0}, Lin/dragonbra/javasteam/util/log/Logger;->debug(Ljava/lang/Throwable;)V

    .line 136
    :goto_2c
    invoke-virtual {p0}, Lin/dragonbra/javasteam/util/stream/MemoryStream;->toByteArray()[B

    move-result-object v0
    :try_end_30
    .catchall {:try_start_27 .. :try_end_30} :catchall_24

    .line 137
    :try_start_30
    invoke-virtual {p0}, Lin/dragonbra/javasteam/util/stream/MemoryStream;->close()V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_33} :catch_3d

    return-object v0

    .line 128
    :goto_34
    :try_start_34
    invoke-virtual {p0}, Lin/dragonbra/javasteam/util/stream/MemoryStream;->close()V
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_38

    goto :goto_3c

    :catchall_38
    move-exception p0

    :try_start_39
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3c
    throw v0
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_3d} :catch_3d

    .line 138
    :catch_3d
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "MemoryStream closed"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 121
    :cond_45
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "input is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static generateRandomBlock(I)[B
    .registers 2

    .line 107
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 108
    new-array p0, p0, [B

    .line 109
    invoke-virtual {v0, p0}, Ljava/security/SecureRandom;->nextBytes([B)V

    return-object p0
.end method

.method public static shaHash(Ljava/security/MessageDigest;[B)[B
    .registers 2

    if-eqz p1, :cond_14

    if-eqz p0, :cond_c

    .line 79
    invoke-virtual {p0}, Ljava/security/MessageDigest;->reset()V

    .line 80
    invoke-virtual {p0, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    return-object p0

    .line 76
    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "digest is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 72
    :cond_14
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "input is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static shaHash([B)[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    if-eqz p0, :cond_f

    .line 96
    const-string v0, "SHA-1"

    sget-object v1, Lin/dragonbra/javasteam/util/crypto/CryptoHelper;->SEC_PROV:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 97
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    return-object p0

    .line 93
    :cond_f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "input is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static symmetricDecrypt([B[B)[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lin/dragonbra/javasteam/util/crypto/CryptoException;
        }
    .end annotation

    .line 151
    new-instance v0, Lin/dragonbra/javasteam/util/Passable;

    invoke-direct {v0}, Lin/dragonbra/javasteam/util/Passable;-><init>()V

    invoke-static {p0, p1, v0}, Lin/dragonbra/javasteam/util/crypto/CryptoHelper;->symmetricDecrypt([B[BLin/dragonbra/javasteam/util/Passable;)[B

    move-result-object p0

    return-object p0
.end method

.method public static symmetricDecrypt([B[BLin/dragonbra/javasteam/util/Passable;)[B
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B",
            "Lin/dragonbra/javasteam/util/Passable<",
            "[B>;)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lin/dragonbra/javasteam/util/crypto/CryptoException;
        }
    .end annotation

    .line 164
    const-string v0, "AES"

    if-eqz p0, :cond_73

    if-eqz p1, :cond_6b

    .line 174
    :try_start_6
    array-length v1, p1

    const/16 v2, 0x20

    if-eq v1, v2, :cond_15

    .line 175
    sget-object v1, Lin/dragonbra/javasteam/util/crypto/CryptoHelper;->logger:Lin/dragonbra/javasteam/util/log/Logger;

    const-string v2, "SymmetricDecrypt used with non 32 byte key!"

    invoke-virtual {v1, v2}, Lin/dragonbra/javasteam/util/log/Logger;->debug(Ljava/lang/String;)V

    goto :goto_15

    :catch_13
    move-exception p0

    goto :goto_63

    .line 178
    :cond_15
    :goto_15
    const-string v1, "AES/ECB/NoPadding"

    sget-object v2, Lin/dragonbra/javasteam/util/crypto/CryptoHelper;->SEC_PROV:Ljava/lang/String;

    invoke-static {v1, v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    const/16 v3, 0x10

    .line 181
    new-array v4, v3, [B

    invoke-virtual {p2, v4}, Lin/dragonbra/javasteam/util/Passable;->setValue(Ljava/lang/Object;)V

    const/4 v4, 0x0

    .line 182
    invoke-static {p0, v4, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    .line 185
    array-length v4, p0

    array-length v5, v3

    sub-int/2addr v4, v5

    new-array v5, v4, [B

    .line 186
    array-length v5, v3

    array-length v6, v3

    add-int/2addr v6, v4

    invoke-static {p0, v5, v6}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    .line 189
    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v4, p1, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const/4 v5, 0x2

    invoke-virtual {v1, v5, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 190
    invoke-virtual {v1, v3}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    invoke-virtual {p2, v1}, Lin/dragonbra/javasteam/util/Passable;->setValue(Ljava/lang/Object;)V

    .line 192
    const-string v1, "AES/CBC/PKCS7Padding"

    invoke-static {v1, v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 195
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v2, p1, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    new-instance p1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {p2}, Lin/dragonbra/javasteam/util/Passable;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [B

    invoke-direct {p1, p2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v1, v5, v2, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 196
    invoke-virtual {v1, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0
    :try_end_62
    .catch Ljava/security/InvalidKeyException; {:try_start_6 .. :try_end_62} :catch_13
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_6 .. :try_end_62} :catch_13
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_6 .. :try_end_62} :catch_13
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_6 .. :try_end_62} :catch_13
    .catch Ljavax/crypto/BadPaddingException; {:try_start_6 .. :try_end_62} :catch_13
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_6 .. :try_end_62} :catch_13
    .catch Ljava/security/NoSuchProviderException; {:try_start_6 .. :try_end_62} :catch_13

    return-object p0

    .line 204
    :goto_63
    new-instance p1, Lin/dragonbra/javasteam/util/crypto/CryptoException;

    const-string p2, "failed to symmetric decrypt"

    invoke-direct {p1, p2, p0}, Lin/dragonbra/javasteam/util/crypto/CryptoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 169
    :cond_6b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "key is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 165
    :cond_73
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "input is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static symmetricDecryptHMACIV([B[B[B)[B
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lin/dragonbra/javasteam/util/crypto/CryptoException;
        }
    .end annotation

    .line 288
    const-string v0, "HmacSHA1"

    if-eqz p0, :cond_ad

    if-eqz p1, :cond_a5

    if-eqz p2, :cond_9d

    .line 300
    array-length v1, p1

    const/16 v2, 0x10

    if-ge v1, v2, :cond_14

    .line 301
    sget-object v1, Lin/dragonbra/javasteam/util/crypto/CryptoHelper;->logger:Lin/dragonbra/javasteam/util/log/Logger;

    const-string v3, "symmetricDecryptHMACIV used with shorter than 16 byte key!"

    invoke-virtual {v1, v3}, Lin/dragonbra/javasteam/util/log/Logger;->debug(Ljava/lang/String;)V

    .line 304
    :cond_14
    new-array v1, v2, [B

    const/4 v3, 0x0

    .line 305
    invoke-static {p1, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 307
    new-instance v1, Lin/dragonbra/javasteam/util/Passable;

    new-array v2, v2, [B

    invoke-direct {v1, v2}, Lin/dragonbra/javasteam/util/Passable;-><init>(Ljava/lang/Object;)V

    .line 308
    invoke-static {p0, p1, v1}, Lin/dragonbra/javasteam/util/crypto/CryptoHelper;->symmetricDecrypt([B[BLin/dragonbra/javasteam/util/Passable;)[B

    move-result-object p0

    .line 313
    :try_start_25
    new-instance p1, Lin/dragonbra/javasteam/util/stream/MemoryStream;

    invoke-direct {p1}, Lin/dragonbra/javasteam/util/stream/MemoryStream;-><init>()V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_2a} :catch_95

    .line 314
    :try_start_2a
    invoke-virtual {v1}, Lin/dragonbra/javasteam/util/Passable;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-virtual {v1}, Lin/dragonbra/javasteam/util/Passable;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    array-length v4, v4

    const/4 v5, 0x3

    sub-int/2addr v4, v5

    invoke-virtual {p1, v2, v4, v5}, Lin/dragonbra/javasteam/util/stream/MemoryStream;->write([BII)V

    .line 315
    array-length v2, p0

    invoke-virtual {p1, p0, v3, v2}, Lin/dragonbra/javasteam/util/stream/MemoryStream;->write([BII)V

    .line 316
    sget-object v2, Lin/dragonbra/javasteam/util/stream/SeekOrigin;->BEGIN:Lin/dragonbra/javasteam/util/stream/SeekOrigin;

    const-wide/16 v6, 0x0

    invoke-virtual {p1, v6, v7, v2}, Lin/dragonbra/javasteam/util/stream/MemoryStream;->seek(JLin/dragonbra/javasteam/util/stream/SeekOrigin;)J
    :try_end_47
    .catchall {:try_start_2a .. :try_end_47} :catchall_7c

    .line 319
    :try_start_47
    invoke-static {v0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v2

    .line 320
    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v4, p2, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v2, v4}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 321
    invoke-virtual {p1}, Lin/dragonbra/javasteam/util/stream/MemoryStream;->toByteArray()[B

    move-result-object p2

    invoke-virtual {v2, p2}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object p2

    .line 323
    :goto_5b
    invoke-virtual {v1}, Lin/dragonbra/javasteam/util/Passable;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    array-length v0, v0

    sub-int/2addr v0, v5

    if-ge v3, v0, :cond_80

    .line 324
    aget-byte v0, p2, v3

    invoke-virtual {v1}, Lin/dragonbra/javasteam/util/Passable;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    aget-byte v2, v2, v3

    if-ne v0, v2, :cond_74

    add-int/lit8 v3, v3, 0x1

    goto :goto_5b

    .line 325
    :cond_74
    new-instance p0, Lin/dragonbra/javasteam/util/crypto/CryptoException;

    const-string p2, "NetFilterEncryption was unable to decrypt packet: HMAC from server did not match computed HMAC."

    invoke-direct {p0, p2}, Lin/dragonbra/javasteam/util/crypto/CryptoException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_7c
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_47 .. :try_end_7c} :catch_7e
    .catch Ljava/security/InvalidKeyException; {:try_start_47 .. :try_end_7c} :catch_7e
    .catchall {:try_start_47 .. :try_end_7c} :catchall_7c

    :catchall_7c
    move-exception p0

    goto :goto_8c

    :catch_7e
    move-exception p0

    goto :goto_84

    .line 333
    :cond_80
    :try_start_80
    invoke-virtual {p1}, Lin/dragonbra/javasteam/util/stream/MemoryStream;->close()V
    :try_end_83
    .catch Ljava/lang/Exception; {:try_start_80 .. :try_end_83} :catch_95

    return-object p0

    .line 329
    :goto_84
    :try_start_84
    new-instance p2, Lin/dragonbra/javasteam/util/crypto/CryptoException;

    const-string v0, "NetFilterEncryption was unable to decrypt packet"

    invoke-direct {p2, v0, p0}, Lin/dragonbra/javasteam/util/crypto/CryptoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
    :try_end_8c
    .catchall {:try_start_84 .. :try_end_8c} :catchall_7c

    .line 313
    :goto_8c
    :try_start_8c
    invoke-virtual {p1}, Lin/dragonbra/javasteam/util/stream/MemoryStream;->close()V
    :try_end_8f
    .catchall {:try_start_8c .. :try_end_8f} :catchall_90

    goto :goto_94

    :catchall_90
    move-exception p1

    :try_start_91
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_94
    throw p0
    :try_end_95
    .catch Ljava/lang/Exception; {:try_start_91 .. :try_end_95} :catch_95

    .line 334
    :catch_95
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "MemoryStream closed"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 297
    :cond_9d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "hmacSecret is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 293
    :cond_a5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "key is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 289
    :cond_ad
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "input is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static symmetricEncrypt([B[B)[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lin/dragonbra/javasteam/util/crypto/CryptoException;
        }
    .end annotation

    const/16 v0, 0x10

    .line 274
    invoke-static {v0}, Lin/dragonbra/javasteam/util/crypto/CryptoHelper;->generateRandomBlock(I)[B

    move-result-object v0

    invoke-static {p0, p1, v0}, Lin/dragonbra/javasteam/util/crypto/CryptoHelper;->symmetricEncryptWithIV([B[B[B)[B

    move-result-object p0

    return-object p0
.end method

.method public static symmetricEncryptWithHMACIV([B[B[B)[B
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lin/dragonbra/javasteam/util/crypto/CryptoException;
        }
    .end annotation

    .line 349
    const-string v0, "HmacSHA1"

    if-eqz p0, :cond_5d

    if-eqz p1, :cond_55

    if-eqz p2, :cond_4d

    const/16 v1, 0x10

    .line 362
    new-array v2, v1, [B

    const/4 v3, 0x3

    .line 363
    invoke-static {v3}, Lin/dragonbra/javasteam/util/crypto/CryptoHelper;->generateRandomBlock(I)[B

    move-result-object v3

    .line 364
    array-length v4, v3

    rsub-int/lit8 v4, v4, 0x10

    array-length v5, v3

    const/4 v6, 0x0

    invoke-static {v3, v6, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 366
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 367
    array-length v5, v3

    invoke-virtual {v4, v3, v6, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 368
    array-length v5, p0

    invoke-virtual {v4, p0, v6, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 371
    :try_start_26
    invoke-static {v0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v5

    .line 372
    new-instance v7, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v7, p2, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v5, v7}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 373
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    invoke-virtual {v5, p2}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object p2

    .line 375
    array-length v0, v3

    sub-int/2addr v1, v0

    invoke-static {p2, v6, v2, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 377
    invoke-static {p0, p1, v2}, Lin/dragonbra/javasteam/util/crypto/CryptoHelper;->symmetricEncryptWithIV([B[B[B)[B

    move-result-object p0
    :try_end_43
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_26 .. :try_end_43} :catch_44
    .catch Ljava/security/InvalidKeyException; {:try_start_26 .. :try_end_43} :catch_44

    return-object p0

    :catch_44
    move-exception p0

    .line 379
    new-instance p1, Lin/dragonbra/javasteam/util/crypto/CryptoException;

    const-string p2, "NetFilterEncryption was unable to decrypt packet"

    invoke-direct {p1, p2, p0}, Lin/dragonbra/javasteam/util/crypto/CryptoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 358
    :cond_4d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "hmacSecret is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 354
    :cond_55
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "key is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 350
    :cond_5d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "input is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static symmetricEncryptWithIV([B[B[B)[B
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lin/dragonbra/javasteam/util/crypto/CryptoException;
        }
    .end annotation

    .line 218
    const-string v0, "AES"

    if-eqz p0, :cond_6b

    if-eqz p1, :cond_63

    if-eqz p2, :cond_5b

    .line 232
    :try_start_8
    array-length v1, p1

    const/16 v2, 0x20

    if-eq v1, v2, :cond_17

    .line 233
    sget-object v1, Lin/dragonbra/javasteam/util/crypto/CryptoHelper;->logger:Lin/dragonbra/javasteam/util/log/Logger;

    const-string v2, "SymmetricEncrypt used with non 32 byte key!"

    invoke-virtual {v1, v2}, Lin/dragonbra/javasteam/util/log/Logger;->debug(Ljava/lang/String;)V

    goto :goto_17

    :catch_15
    move-exception p0

    goto :goto_53

    .line 237
    :cond_17
    :goto_17
    const-string v1, "AES/ECB/NoPadding"

    sget-object v2, Lin/dragonbra/javasteam/util/crypto/CryptoHelper;->SEC_PROV:Ljava/lang/String;

    invoke-static {v1, v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 238
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v3, p1, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const/4 v4, 0x1

    invoke-virtual {v1, v4, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 240
    invoke-virtual {v1, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    .line 243
    const-string v3, "AES/CBC/PKCS7Padding"

    invoke-static {v3, v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 244
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v3, p1, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    new-instance p1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {p1, p2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v2, v4, v3, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 246
    invoke-virtual {v2, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    .line 249
    array-length p1, v1

    array-length p2, p0

    add-int/2addr p1, p2

    new-array p1, p1, [B

    .line 250
    array-length p2, v1

    const/4 v0, 0x0

    invoke-static {v1, v0, p1, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 251
    array-length p2, v1

    array-length v1, p0

    invoke-static {p0, v0, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_52
    .catch Ljava/security/InvalidKeyException; {:try_start_8 .. :try_end_52} :catch_15
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_8 .. :try_end_52} :catch_15
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_8 .. :try_end_52} :catch_15
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_8 .. :try_end_52} :catch_15
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_8 .. :try_end_52} :catch_15
    .catch Ljava/security/NoSuchProviderException; {:try_start_8 .. :try_end_52} :catch_15
    .catch Ljavax/crypto/BadPaddingException; {:try_start_8 .. :try_end_52} :catch_15

    return-object p1

    .line 261
    :goto_53
    new-instance p1, Lin/dragonbra/javasteam/util/crypto/CryptoException;

    const-string p2, "failed to symmetric encrypt"

    invoke-direct {p1, p2, p0}, Lin/dragonbra/javasteam/util/crypto/CryptoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 227
    :cond_5b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "iv is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 223
    :cond_63
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "key is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 219
    :cond_6b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "input is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
