###### Class in.dragonbra.javasteam.networking.steam3.NetFilterEncryption (in.dragonbra.javasteam.networking.steam3.NetFilterEncryption)
.class public Lin/dragonbra/javasteam/networking/steam3/NetFilterEncryption;
.super Ljava/lang/Object;
.source "NetFilterEncryption.java"

# interfaces
.implements Lin/dragonbra/javasteam/networking/steam3/INetFilterEncryption;


# static fields
.field private static final logger:Lin/dragonbra/javasteam/util/log/Logger;


# instance fields
.field private final sessionKey:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 14
    const-class v0, Lin/dragonbra/javasteam/networking/steam3/NetFilterEncryption;

    invoke-static {v0}, Lin/dragonbra/javasteam/util/log/LogManager;->getLogger(Ljava/lang/Class;)Lin/dragonbra/javasteam/util/log/Logger;

    move-result-object v0

    sput-object v0, Lin/dragonbra/javasteam/networking/steam3/NetFilterEncryption;->logger:Lin/dragonbra/javasteam/util/log/Logger;

    return-void
.end method

.method public constructor <init>([B)V
    .registers 4

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    array-length v0, p1

    const/16 v1, 0x20

    if-eq v0, v1, :cond_f

    .line 20
    sget-object v0, Lin/dragonbra/javasteam/networking/steam3/NetFilterEncryption;->logger:Lin/dragonbra/javasteam/util/log/Logger;

    const-string v1, "AES session key was not 32 bytes!"

    invoke-virtual {v0, v1}, Lin/dragonbra/javasteam/util/log/Logger;->debug(Ljava/lang/String;)V

    .line 22
    :cond_f
    iput-object p1, p0, Lin/dragonbra/javasteam/networking/steam3/NetFilterEncryption;->sessionKey:[B

    return-void
.end method


# virtual methods
.method public processIncoming([B)[B
    .registers 3

    .line 28
    :try_start_0
    iget-object p0, p0, Lin/dragonbra/javasteam/networking/steam3/NetFilterEncryption;->sessionKey:[B

    invoke-static {p1, p0}, Lin/dragonbra/javasteam/util/crypto/CryptoHelper;->symmetricDecrypt([B[B)[B

    move-result-object p0
    :try_end_6
    .catch Lin/dragonbra/javasteam/util/crypto/CryptoException; {:try_start_0 .. :try_end_6} :catch_7

    return-object p0

    :catch_7
    move-exception p0

    .line 30
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Unable to decrypt incoming packet"

    invoke-direct {p1, v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public processOutgoing([B)[B
    .registers 3

    .line 37
    :try_start_0
    iget-object p0, p0, Lin/dragonbra/javasteam/networking/steam3/NetFilterEncryption;->sessionKey:[B

    invoke-static {p1, p0}, Lin/dragonbra/javasteam/util/crypto/CryptoHelper;->symmetricEncrypt([B[B)[B

    move-result-object p0
    :try_end_6
    .catch Lin/dragonbra/javasteam/util/crypto/CryptoException; {:try_start_0 .. :try_end_6} :catch_7

    return-object p0

    :catch_7
    move-exception p0

    .line 39
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Unable to encrypt outgoing packet"

    invoke-direct {p1, v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method
