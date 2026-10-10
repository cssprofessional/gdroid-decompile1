###### Class io.ktor.network.tls.cipher.CBCCipher (io.ktor.network.tls.cipher.CBCCipher)
.class public final Lio/ktor/network/tls/cipher/CBCCipher;
.super Ljava/lang/Object;
.source "CBCCipher.kt"

# interfaces
.implements Lio/ktor/network/tls/cipher/TLSCipher;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCBCCipher.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CBCCipher.kt\nio/ktor/network/tls/cipher/CBCCipher\n+ 2 Builder.kt\nio/ktor/utils/io/core/BuilderKt\n*L\n1#1,127:1\n21#2,3:128\n21#2,3:131\n*S KotlinDebug\n*F\n+ 1 CBCCipher.kt\nio/ktor/network/tls/cipher/CBCCipher\n*L\n36#1:128,3\n63#1:131,3\n*E\n"
.end annotation


# instance fields
.field public inputCounter:J

.field public final keyMaterial:[B

.field public outputCounter:J

.field public final receiveCipher:Ljavax/crypto/Cipher;

.field public final receiveKey:Ljavax/crypto/spec/SecretKeySpec;

.field public final receiveMac:Ljavax/crypto/Mac;

.field public final sendCipher:Ljavax/crypto/Cipher;

.field public final sendKey:Ljavax/crypto/spec/SecretKeySpec;

.field public final sendMac:Ljavax/crypto/Mac;

.field public final suite:Lio/ktor/network/tls/CipherSuite;


# direct methods
.method public static synthetic $r8$lambda$u14MrtElC3wzYnnVQh14RN64sd0(Lio/ktor/network/tls/cipher/CBCCipher;Lkotlinx/io/Sink;)Lkotlin/Unit;
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lio/ktor/network/tls/cipher/CBCCipher;->encrypt$lambda$1(Lio/ktor/network/tls/cipher/CBCCipher;Lkotlinx/io/Sink;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lio/ktor/network/tls/CipherSuite;[B)V
    .registers 4

    const-string v0, "suite"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "keyMaterial"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lio/ktor/network/tls/cipher/CBCCipher;->suite:Lio/ktor/network/tls/CipherSuite;

    .line 17
    iput-object p2, p0, Lio/ktor/network/tls/cipher/CBCCipher;->keyMaterial:[B

    .line 19
    invoke-virtual {p1}, Lio/ktor/network/tls/CipherSuite;->getJdkCipherName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/ktor/network/tls/cipher/CBCCipher;->sendCipher:Ljavax/crypto/Cipher;

    .line 20
    invoke-static {p2, p1}, Lio/ktor/network/tls/KeysKt;->clientKey([BLio/ktor/network/tls/CipherSuite;)Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v0

    iput-object v0, p0, Lio/ktor/network/tls/cipher/CBCCipher;->sendKey:Ljavax/crypto/spec/SecretKeySpec;

    .line 21
    invoke-virtual {p1}, Lio/ktor/network/tls/CipherSuite;->getMacName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/ktor/network/tls/cipher/CBCCipher;->sendMac:Ljavax/crypto/Mac;

    .line 23
    invoke-virtual {p1}, Lio/ktor/network/tls/CipherSuite;->getJdkCipherName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/ktor/network/tls/cipher/CBCCipher;->receiveCipher:Ljavax/crypto/Cipher;

    .line 24
    invoke-static {p2, p1}, Lio/ktor/network/tls/KeysKt;->serverKey([BLio/ktor/network/tls/CipherSuite;)Ljavax/crypto/spec/SecretKeySpec;

    move-result-object p2

    iput-object p2, p0, Lio/ktor/network/tls/cipher/CBCCipher;->receiveKey:Ljavax/crypto/spec/SecretKeySpec;

    .line 25
    invoke-virtual {p1}, Lio/ktor/network/tls/CipherSuite;->getMacName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iput-object p1, p0, Lio/ktor/network/tls/cipher/CBCCipher;->receiveMac:Ljavax/crypto/Mac;

    return-void
.end method

.method public static final encrypt$lambda$1(Lio/ktor/network/tls/cipher/CBCCipher;Lkotlinx/io/Sink;)Lkotlin/Unit;
    .registers 8

    const-string v0, "$this$cipherLoop"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    iget-object p0, p0, Lio/ktor/network/tls/cipher/CBCCipher;->sendCipher:Ljavax/crypto/Cipher;

    invoke-virtual {p0}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object v1

    const-string p0, "getIV(...)"

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lio/ktor/utils/io/core/BytePacketBuilderKt;->writeFully$default(Lkotlinx/io/Sink;[BIIILjava/lang/Object;)V

    .line 44
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public decrypt(Lio/ktor/network/tls/TLSRecord;)Lio/ktor/network/tls/TLSRecord;
    .registers 7

    const-string v0, "record"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    invoke-virtual {p1}, Lio/ktor/network/tls/TLSRecord;->getPacket()Lkotlinx/io/Source;

    move-result-object v0

    .line 51
    iget-object v1, p0, Lio/ktor/network/tls/cipher/CBCCipher;->suite:Lio/ktor/network/tls/CipherSuite;

    invoke-virtual {v1}, Lio/ktor/network/tls/CipherSuite;->getFixedIvLength()I

    move-result v1

    invoke-static {v0, v1}, Lkotlinx/io/SourcesKt;->readByteArray(Lkotlinx/io/Source;I)[B

    move-result-object v1

    .line 52
    iget-object v2, p0, Lio/ktor/network/tls/cipher/CBCCipher;->receiveCipher:Ljavax/crypto/Cipher;

    iget-object v3, p0, Lio/ktor/network/tls/cipher/CBCCipher;->receiveKey:Ljavax/crypto/spec/SecretKeySpec;

    new-instance v4, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v4, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const/4 v1, 0x2

    invoke-virtual {v2, v1, v3, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 54
    iget-object v2, p0, Lio/ktor/network/tls/cipher/CBCCipher;->receiveCipher:Ljavax/crypto/Cipher;

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1, v3}, Lio/ktor/network/tls/cipher/CipherUtilsKt;->cipherLoop$default(Lkotlinx/io/Source;Ljavax/crypto/Cipher;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlinx/io/Source;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/io/SourcesKt;->readByteArray(Lkotlinx/io/Source;)[B

    move-result-object v0

    .line 56
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    .line 57
    array-length v2, v0

    sub-int/2addr v2, v1

    add-int/lit8 v2, v2, -0x1

    .line 58
    iget-object v1, p0, Lio/ktor/network/tls/cipher/CBCCipher;->suite:Lio/ktor/network/tls/CipherSuite;

    invoke-virtual {v1}, Lio/ktor/network/tls/CipherSuite;->getMacStrengthInBytes()I

    move-result v1

    sub-int v1, v2, v1

    .line 60
    invoke-virtual {p0, v0, v2}, Lio/ktor/network/tls/cipher/CBCCipher;->validatePadding([BI)V

    .line 61
    invoke-virtual {p0, p1, v0, v1}, Lio/ktor/network/tls/cipher/CBCCipher;->validateMac(Lio/ktor/network/tls/TLSRecord;[BI)V

    .line 21
    new-instance p0, Lkotlinx/io/Buffer;

    invoke-direct {p0}, Lkotlinx/io/Buffer;-><init>()V

    const/4 v2, 0x0

    .line 64
    invoke-static {p0, v0, v2, v1}, Lio/ktor/utils/io/core/BytePacketBuilderKt;->writeFully(Lkotlinx/io/Sink;[BII)V

    .line 67
    new-instance v0, Lio/ktor/network/tls/TLSRecord;

    invoke-virtual {p1}, Lio/ktor/network/tls/TLSRecord;->getType()Lio/ktor/network/tls/TLSRecordType;

    move-result-object v1

    invoke-virtual {p1}, Lio/ktor/network/tls/TLSRecord;->getVersion()Lio/ktor/network/tls/TLSVersion;

    move-result-object p1

    invoke-direct {v0, v1, p1, p0}, Lio/ktor/network/tls/TLSRecord;-><init>(Lio/ktor/network/tls/TLSRecordType;Lio/ktor/network/tls/TLSVersion;Lkotlinx/io/Source;)V

    return-object v0
.end method

.method public encrypt(Lio/ktor/network/tls/TLSRecord;)Lio/ktor/network/tls/TLSRecord;
    .registers 12

    const-string v0, "record"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    iget-object v0, p0, Lio/ktor/network/tls/cipher/CBCCipher;->sendCipher:Ljavax/crypto/Cipher;

    iget-object v1, p0, Lio/ktor/network/tls/cipher/CBCCipher;->sendKey:Ljavax/crypto/spec/SecretKeySpec;

    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    iget-object v3, p0, Lio/ktor/network/tls/cipher/CBCCipher;->suite:Lio/ktor/network/tls/CipherSuite;

    invoke-virtual {v3}, Lio/ktor/network/tls/CipherSuite;->getFixedIvLength()I

    move-result v3

    invoke-static {v3}, Lio/ktor/util/CryptoKt;->generateNonce(I)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 33
    invoke-virtual {p1}, Lio/ktor/network/tls/TLSRecord;->getPacket()Lkotlinx/io/Source;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/io/SourcesKt;->readByteArray(Lkotlinx/io/Source;)[B

    move-result-object v2

    .line 34
    invoke-virtual {p0, p1, v2}, Lio/ktor/network/tls/cipher/CBCCipher;->prepareMac(Lio/ktor/network/tls/TLSRecord;[B)[B

    move-result-object v0

    .line 21
    new-instance v9, Lkotlinx/io/Buffer;

    invoke-direct {v9}, Lkotlinx/io/Buffer;-><init>()V

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, v9

    .line 37
    invoke-static/range {v1 .. v6}, Lio/ktor/utils/io/core/BytePacketBuilderKt;->writeFully$default(Lkotlinx/io/Sink;[BIIILjava/lang/Object;)V

    const/4 v7, 0x6

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, v9

    move-object v4, v0

    .line 38
    invoke-static/range {v3 .. v8}, Lio/ktor/utils/io/core/BytePacketBuilderKt;->writeFully$default(Lkotlinx/io/Sink;[BIIILjava/lang/Object;)V

    .line 39
    invoke-virtual {p0, v9}, Lio/ktor/network/tls/cipher/CBCCipher;->writePadding(Lkotlinx/io/Sink;)V

    .line 42
    iget-object v0, p0, Lio/ktor/network/tls/cipher/CBCCipher;->sendCipher:Ljavax/crypto/Cipher;

    new-instance v1, Lio/ktor/network/tls/cipher/CBCCipher$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lio/ktor/network/tls/cipher/CBCCipher$$ExternalSyntheticLambda0;-><init>(Lio/ktor/network/tls/cipher/CBCCipher;)V

    invoke-static {v9, v0, v1}, Lio/ktor/network/tls/cipher/CipherUtilsKt;->cipherLoop(Lkotlinx/io/Source;Ljavax/crypto/Cipher;Lkotlin/jvm/functions/Function1;)Lkotlinx/io/Source;

    move-result-object v5

    .line 46
    new-instance p0, Lio/ktor/network/tls/TLSRecord;

    invoke-virtual {p1}, Lio/ktor/network/tls/TLSRecord;->getType()Lio/ktor/network/tls/TLSRecordType;

    move-result-object v3

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v4, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lio/ktor/network/tls/TLSRecord;-><init>(Lio/ktor/network/tls/TLSRecordType;Lio/ktor/network/tls/TLSVersion;Lkotlinx/io/Source;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p0
.end method

.method public final prepareMac(Lio/ktor/network/tls/TLSRecord;[B)[B
    .registers 8

    .line 71
    iget-object v0, p0, Lio/ktor/network/tls/cipher/CBCCipher;->sendMac:Ljavax/crypto/Mac;

    invoke-virtual {v0}, Ljavax/crypto/Mac;->reset()V

    .line 72
    iget-object v0, p0, Lio/ktor/network/tls/cipher/CBCCipher;->sendMac:Ljavax/crypto/Mac;

    iget-object v1, p0, Lio/ktor/network/tls/cipher/CBCCipher;->keyMaterial:[B

    iget-object v2, p0, Lio/ktor/network/tls/cipher/CBCCipher;->suite:Lio/ktor/network/tls/CipherSuite;

    invoke-static {v1, v2}, Lio/ktor/network/tls/KeysKt;->clientMacKey([BLio/ktor/network/tls/CipherSuite;)Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    const/16 v0, 0xd

    .line 74
    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 75
    iget-wide v2, p0, Lio/ktor/network/tls/cipher/CBCCipher;->outputCounter:J

    invoke-static {v0, v1, v2, v3}, Lio/ktor/network/tls/cipher/CipherKt;->set([BIJ)V

    .line 76
    invoke-virtual {p1}, Lio/ktor/network/tls/TLSRecord;->getType()Lio/ktor/network/tls/TLSRecordType;

    move-result-object p1

    invoke-virtual {p1}, Lio/ktor/network/tls/TLSRecordType;->getCode()I

    move-result p1

    int-to-byte p1, p1

    const/16 v1, 0x8

    aput-byte p1, v0, v1

    const/16 p1, 0x9

    const/4 v1, 0x3

    .line 77
    aput-byte v1, v0, p1

    const/16 p1, 0xa

    .line 78
    aput-byte v1, v0, p1

    .line 79
    array-length p1, p2

    int-to-short p1, p1

    const/16 v1, 0xb

    invoke-static {v0, v1, p1}, Lio/ktor/network/tls/cipher/CipherKt;->set([BIS)V

    .line 82
    iget-wide v1, p0, Lio/ktor/network/tls/cipher/CBCCipher;->outputCounter:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lio/ktor/network/tls/cipher/CBCCipher;->outputCounter:J

    .line 84
    iget-object p1, p0, Lio/ktor/network/tls/cipher/CBCCipher;->sendMac:Ljavax/crypto/Mac;

    invoke-virtual {p1, v0}, Ljavax/crypto/Mac;->update([B)V

    .line 85
    iget-object p0, p0, Lio/ktor/network/tls/cipher/CBCCipher;->sendMac:Ljavax/crypto/Mac;

    invoke-virtual {p0, p2}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object p0

    const-string p1, "doFinal(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final validateMac(Lio/ktor/network/tls/TLSRecord;[BI)V
    .registers 10

    .line 106
    iget-object v0, p0, Lio/ktor/network/tls/cipher/CBCCipher;->receiveMac:Ljavax/crypto/Mac;

    invoke-virtual {v0}, Ljavax/crypto/Mac;->reset()V

    .line 107
    iget-object v0, p0, Lio/ktor/network/tls/cipher/CBCCipher;->receiveMac:Ljavax/crypto/Mac;

    iget-object v1, p0, Lio/ktor/network/tls/cipher/CBCCipher;->keyMaterial:[B

    iget-object v2, p0, Lio/ktor/network/tls/cipher/CBCCipher;->suite:Lio/ktor/network/tls/CipherSuite;

    invoke-static {v1, v2}, Lio/ktor/network/tls/KeysKt;->serverMacKey([BLio/ktor/network/tls/CipherSuite;)Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    const/16 v0, 0xd

    .line 109
    new-array v0, v0, [B

    .line 110
    iget-wide v1, p0, Lio/ktor/network/tls/cipher/CBCCipher;->inputCounter:J

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Lio/ktor/network/tls/cipher/CipherKt;->set([BIJ)V

    .line 111
    invoke-virtual {p1}, Lio/ktor/network/tls/TLSRecord;->getType()Lio/ktor/network/tls/TLSRecordType;

    move-result-object p1

    invoke-virtual {p1}, Lio/ktor/network/tls/TLSRecordType;->getCode()I

    move-result p1

    int-to-byte p1, p1

    const/16 v1, 0x8

    aput-byte p1, v0, v1

    const/16 p1, 0x9

    const/4 v1, 0x3

    .line 112
    aput-byte v1, v0, p1

    const/16 p1, 0xa

    .line 113
    aput-byte v1, v0, p1

    const/16 p1, 0xb

    int-to-short v1, p3

    .line 114
    invoke-static {v0, p1, v1}, Lio/ktor/network/tls/cipher/CipherKt;->set([BIS)V

    .line 117
    iget-wide v1, p0, Lio/ktor/network/tls/cipher/CBCCipher;->inputCounter:J

    const-wide/16 v4, 0x1

    add-long/2addr v1, v4

    iput-wide v1, p0, Lio/ktor/network/tls/cipher/CBCCipher;->inputCounter:J

    .line 119
    iget-object p1, p0, Lio/ktor/network/tls/cipher/CBCCipher;->receiveMac:Ljavax/crypto/Mac;

    invoke-virtual {p1, v0}, Ljavax/crypto/Mac;->update([B)V

    .line 120
    iget-object p1, p0, Lio/ktor/network/tls/cipher/CBCCipher;->receiveMac:Ljavax/crypto/Mac;

    invoke-virtual {p1, p2, v3, p3}, Ljavax/crypto/Mac;->update([BII)V

    .line 122
    iget-object p1, p0, Lio/ktor/network/tls/cipher/CBCCipher;->receiveMac:Ljavax/crypto/Mac;

    invoke-virtual {p1}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 123
    iget-object p0, p0, Lio/ktor/network/tls/cipher/CBCCipher;->suite:Lio/ktor/network/tls/CipherSuite;

    invoke-virtual {p0}, Lio/ktor/network/tls/CipherSuite;->getMacStrengthInBytes()I

    move-result p0

    add-int/2addr p0, p3

    invoke-static {p3, p0}, Lkotlin/ranges/RangesKt___RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object p0

    invoke-static {p2, p0}, Lkotlin/collections/ArraysKt___ArraysKt;->sliceArray([BLkotlin/ranges/IntRange;)[B

    move-result-object p0

    .line 124
    invoke-static {p1, p0}, Ljava/security/MessageDigest;->isEqual([B[B)Z

    move-result p0

    if-eqz p0, :cond_68

    return-void

    :cond_68
    new-instance p0, Lio/ktor/network/tls/TLSException;

    const-string p1, "Failed to verify MAC content"

    const/4 p2, 0x2

    const/4 p3, 0x0

    invoke-direct {p0, p1, p3, p2, p3}, Lio/ktor/network/tls/TLSException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw p0
.end method

.method public final validatePadding([BI)V
    .registers 5

    .line 98
    array-length p0, p1

    add-int/lit8 p0, p0, -0x1

    aget-byte p0, p1, p0

    and-int/lit16 p0, p0, 0xff

    .line 99
    array-length v0, p1

    :goto_8
    if-ge p2, v0, :cond_34

    .line 100
    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xff

    if-ne p0, v1, :cond_13

    add-int/lit8 p2, p2, 0x1

    goto :goto_8

    .line 101
    :cond_13
    new-instance p1, Lio/ktor/network/tls/TLSException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Padding invalid: expected "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", actual "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p2, 0x2

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0, p2, v0}, Lio/ktor/network/tls/TLSException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw p1

    :cond_34
    return-void
.end method

.method public final writePadding(Lkotlinx/io/Sink;)V
    .registers 4

    .line 89
    invoke-static {p1}, Lio/ktor/utils/io/core/BytePacketBuilderKt;->getSize(Lkotlinx/io/Sink;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lio/ktor/network/tls/cipher/CBCCipher;->sendCipher:Ljavax/crypto/Cipher;

    invoke-virtual {v1}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v1

    rem-int/2addr v0, v1

    .line 90
    iget-object p0, p0, Lio/ktor/network/tls/cipher/CBCCipher;->sendCipher:Ljavax/crypto/Cipher;

    invoke-virtual {p0}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result p0

    sub-int/2addr p0, v0

    int-to-byte p0, p0

    add-int/lit8 v0, p0, 0x1

    const/4 v1, 0x0

    :goto_18
    if-ge v1, v0, :cond_20

    .line 93
    invoke-interface {p1, p0}, Lkotlinx/io/Sink;->writeByte(B)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    :cond_20
    return-void
.end method

###### Class io.ktor.network.tls.cipher.CBCCipher$$ExternalSyntheticLambda0 (io.ktor.network.tls.cipher.CBCCipher$$ExternalSyntheticLambda0)
.class public final synthetic Lio/ktor/network/tls/cipher/CBCCipher$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lio/ktor/network/tls/cipher/CBCCipher;


# direct methods
.method public synthetic constructor <init>(Lio/ktor/network/tls/cipher/CBCCipher;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/ktor/network/tls/cipher/CBCCipher$$ExternalSyntheticLambda0;->f$0:Lio/ktor/network/tls/cipher/CBCCipher;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object p0, p0, Lio/ktor/network/tls/cipher/CBCCipher$$ExternalSyntheticLambda0;->f$0:Lio/ktor/network/tls/cipher/CBCCipher;

    check-cast p1, Lkotlinx/io/Sink;

    invoke-static {p0, p1}, Lio/ktor/network/tls/cipher/CBCCipher;->$r8$lambda$u14MrtElC3wzYnnVQh14RN64sd0(Lio/ktor/network/tls/cipher/CBCCipher;Lkotlinx/io/Sink;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method
