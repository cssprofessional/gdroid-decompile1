###### Class in.dragonbra.javasteam.networking.steam3.NetFilterEncryptionWithHMAC (in.dragonbra.javasteam.networking.steam3.NetFilterEncryptionWithHMAC)
.class public Lin/dragonbra/javasteam/networking/steam3/NetFilterEncryptionWithHMAC;
.super Ljava/lang/Object;
.source "NetFilterEncryptionWithHMAC.java"

# interfaces
.implements Lin/dragonbra/javasteam/networking/steam3/INetFilterEncryption;


# static fields
.field private static final logger:Lin/dragonbra/javasteam/util/log/Logger;


# instance fields
.field private final hmacSecret:[B

.field private final sessionKey:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 14
    const-class v0, Lin/dragonbra/javasteam/networking/steam3/NetFilterEncryptionWithHMAC;

    invoke-static {v0}, Lin/dragonbra/javasteam/util/log/LogManager;->getLogger(Ljava/lang/Class;)Lin/dragonbra/javasteam/util/log/Logger;

    move-result-object v0

    sput-object v0, Lin/dragonbra/javasteam/networking/steam3/NetFilterEncryptionWithHMAC;->logger:Lin/dragonbra/javasteam/util/log/Logger;

    return-void
.end method

.method public constructor <init>([B)V
    .registers 4

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    array-length v0, p1

    const/16 v1, 0x20

    if-eq v0, v1, :cond_f

    .line 21
    sget-object v0, Lin/dragonbra/javasteam/networking/steam3/NetFilterEncryptionWithHMAC;->logger:Lin/dragonbra/javasteam/util/log/Logger;

    const-string v1, "AES session key was not 32 bytes!"

    invoke-virtual {v0, v1}, Lin/dragonbra/javasteam/util/log/Logger;->debug(Ljava/lang/String;)V

    .line 23
    :cond_f
    iput-object p1, p0, Lin/dragonbra/javasteam/networking/steam3/NetFilterEncryptionWithHMAC;->sessionKey:[B

    const/16 v0, 0x10

    .line 24
    new-array v0, v0, [B

    iput-object v0, p0, Lin/dragonbra/javasteam/networking/steam3/NetFilterEncryptionWithHMAC;->hmacSecret:[B

    .line 25
    array-length p0, v0

    const/4 v1, 0x0

    invoke-static {p1, v1, v0, v1, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method


# virtual methods
.method public processIncoming([B)[B
    .registers 3

    .line 31
    :try_start_0
    iget-object v0, p0, Lin/dragonbra/javasteam/networking/steam3/NetFilterEncryptionWithHMAC;->sessionKey:[B

    iget-object p0, p0, Lin/dragonbra/javasteam/networking/steam3/NetFilterEncryptionWithHMAC;->hmacSecret:[B

    invoke-static {p1, v0, p0}, Lin/dragonbra/javasteam/util/crypto/CryptoHelper;->symmetricDecryptHMACIV([B[B[B)[B

    move-result-object p0
    :try_end_8
    .catch Lin/dragonbra/javasteam/util/crypto/CryptoException; {:try_start_0 .. :try_end_8} :catch_9

    return-object p0

    :catch_9
    move-exception p0

    .line 33
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Unable to decrypt incoming packet"

    invoke-direct {p1, v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public processOutgoing([B)[B
    .registers 3

    .line 40
    :try_start_0
    iget-object v0, p0, Lin/dragonbra/javasteam/networking/steam3/NetFilterEncryptionWithHMAC;->sessionKey:[B

    iget-object p0, p0, Lin/dragonbra/javasteam/networking/steam3/NetFilterEncryptionWithHMAC;->hmacSecret:[B

    invoke-static {p1, v0, p0}, Lin/dragonbra/javasteam/util/crypto/CryptoHelper;->symmetricEncryptWithHMACIV([B[B[B)[B

    move-result-object p0
    :try_end_8
    .catch Lin/dragonbra/javasteam/util/crypto/CryptoException; {:try_start_0 .. :try_end_8} :catch_9

    return-object p0

    :catch_9
    move-exception p0

    .line 42
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Unable to encrypt outgoing packet"

    invoke-direct {p1, v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method
