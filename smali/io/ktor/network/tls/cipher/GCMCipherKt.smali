###### Class io.ktor.network.tls.cipher.GCMCipherKt (io.ktor.network.tls.cipher.GCMCipherKt)
.class public final Lio/ktor/network/tls/cipher/GCMCipherKt;
.super Ljava/lang/Object;
.source "GCMCipher.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGCMCipher.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GCMCipher.kt\nio/ktor/network/tls/cipher/GCMCipherKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,123:1\n1#2:124\n*E\n"
.end annotation


# direct methods
.method public static final synthetic access$gcmDecryptCipher(Lio/ktor/network/tls/CipherSuite;[BLio/ktor/network/tls/TLSRecordType;IJJ)Ljavax/crypto/Cipher;
    .registers 8

    .line 1
    invoke-static/range {p0 .. p7}, Lio/ktor/network/tls/cipher/GCMCipherKt;->gcmDecryptCipher(Lio/ktor/network/tls/CipherSuite;[BLio/ktor/network/tls/TLSRecordType;IJJ)Ljavax/crypto/Cipher;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$gcmEncryptCipher(Lio/ktor/network/tls/CipherSuite;[BLio/ktor/network/tls/TLSRecordType;IJJ)Ljavax/crypto/Cipher;
    .registers 8

    .line 1
    invoke-static/range {p0 .. p7}, Lio/ktor/network/tls/cipher/GCMCipherKt;->gcmEncryptCipher(Lio/ktor/network/tls/CipherSuite;[BLio/ktor/network/tls/TLSRecordType;IJJ)Ljavax/crypto/Cipher;

    move-result-object p0

    return-object p0
.end method

.method public static final gcmDecryptCipher(Lio/ktor/network/tls/CipherSuite;[BLio/ktor/network/tls/TLSRecordType;IJJ)Ljavax/crypto/Cipher;
    .registers 11

    .line 96
    invoke-virtual {p0}, Lio/ktor/network/tls/CipherSuite;->getJdkCipherName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 98
    invoke-static {p1, p0}, Lio/ktor/network/tls/KeysKt;->serverKey([BLio/ktor/network/tls/CipherSuite;)Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v1

    .line 99
    invoke-static {p1, p0}, Lio/ktor/network/tls/KeysKt;->serverIV([BLio/ktor/network/tls/CipherSuite;)[B

    move-result-object p1

    .line 100
    invoke-virtual {p0}, Lio/ktor/network/tls/CipherSuite;->getIvLength()I

    move-result v2

    invoke-static {p1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    const-string v2, "copyOf(...)"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    invoke-virtual {p0}, Lio/ktor/network/tls/CipherSuite;->getFixedIvLength()I

    move-result v2

    invoke-static {p1, v2, p4, p5}, Lio/ktor/network/tls/cipher/CipherKt;->set([BIJ)V

    .line 105
    new-instance p4, Ljavax/crypto/spec/GCMParameterSpec;

    invoke-virtual {p0}, Lio/ktor/network/tls/CipherSuite;->getCipherTagSizeInBytes()I

    move-result p5

    const/16 v2, 0x8

    mul-int/2addr p5, v2

    invoke-direct {p4, p5, p1}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[B)V

    const/4 p1, 0x2

    .line 107
    invoke-virtual {v0, p1, v1, p4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 109
    invoke-virtual {p0}, Lio/ktor/network/tls/CipherSuite;->getIvLength()I

    move-result p1

    invoke-virtual {p0}, Lio/ktor/network/tls/CipherSuite;->getFixedIvLength()I

    move-result p4

    sub-int/2addr p1, p4

    sub-int/2addr p3, p1

    invoke-virtual {p0}, Lio/ktor/network/tls/CipherSuite;->getCipherTagSizeInBytes()I

    move-result p0

    sub-int/2addr p3, p0

    const/high16 p0, 0x10000

    if-ge p3, p0, :cond_6c

    const/16 p0, 0xd

    .line 112
    new-array p0, p0, [B

    const/4 p1, 0x0

    .line 113
    invoke-static {p0, p1, p6, p7}, Lio/ktor/network/tls/cipher/CipherKt;->set([BIJ)V

    .line 114
    invoke-virtual {p2}, Lio/ktor/network/tls/TLSRecordType;->getCode()I

    move-result p1

    int-to-byte p1, p1

    aput-byte p1, p0, v2

    const/16 p1, 0x9

    const/4 p2, 0x3

    .line 115
    aput-byte p2, p0, p1

    const/16 p1, 0xa

    .line 116
    aput-byte p2, p0, p1

    const/16 p1, 0xb

    int-to-short p2, p3

    .line 117
    invoke-static {p0, p1, p2}, Lio/ktor/network/tls/cipher/CipherKt;->set([BIS)V

    .line 120
    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->updateAAD([B)V

    return-object v0

    .line 110
    :cond_6c
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Content size should fit in 2 bytes, actual: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static final gcmEncryptCipher(Lio/ktor/network/tls/CipherSuite;[BLio/ktor/network/tls/TLSRecordType;IJJ)Ljavax/crypto/Cipher;
    .registers 11

    .line 65
    invoke-virtual {p0}, Lio/ktor/network/tls/CipherSuite;->getJdkCipherName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 67
    invoke-static {p1, p0}, Lio/ktor/network/tls/KeysKt;->clientKey([BLio/ktor/network/tls/CipherSuite;)Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v1

    .line 68
    invoke-static {p1, p0}, Lio/ktor/network/tls/KeysKt;->clientIV([BLio/ktor/network/tls/CipherSuite;)[B

    move-result-object p1

    .line 69
    invoke-virtual {p0}, Lio/ktor/network/tls/CipherSuite;->getIvLength()I

    move-result v2

    invoke-static {p1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    const-string v2, "copyOf(...)"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    invoke-virtual {p0}, Lio/ktor/network/tls/CipherSuite;->getFixedIvLength()I

    move-result v2

    invoke-static {p1, v2, p4, p5}, Lio/ktor/network/tls/cipher/CipherKt;->set([BIJ)V

    .line 73
    new-instance p4, Ljavax/crypto/spec/GCMParameterSpec;

    invoke-virtual {p0}, Lio/ktor/network/tls/CipherSuite;->getCipherTagSizeInBytes()I

    move-result p0

    const/16 p5, 0x8

    mul-int/2addr p0, p5

    invoke-direct {p4, p0, p1}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[B)V

    const/4 p0, 0x1

    .line 74
    invoke-virtual {v0, p0, v1, p4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    const/16 p0, 0xd

    .line 76
    new-array p0, p0, [B

    const/4 p1, 0x0

    .line 77
    invoke-static {p0, p1, p6, p7}, Lio/ktor/network/tls/cipher/CipherKt;->set([BIJ)V

    .line 78
    invoke-virtual {p2}, Lio/ktor/network/tls/TLSRecordType;->getCode()I

    move-result p1

    int-to-byte p1, p1

    aput-byte p1, p0, p5

    const/16 p1, 0x9

    const/4 p2, 0x3

    .line 79
    aput-byte p2, p0, p1

    const/16 p1, 0xa

    .line 80
    aput-byte p2, p0, p1

    const/16 p1, 0xb

    int-to-short p2, p3

    .line 81
    invoke-static {p0, p1, p2}, Lio/ktor/network/tls/cipher/CipherKt;->set([BIS)V

    .line 84
    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->updateAAD([B)V

    return-object v0
.end method
