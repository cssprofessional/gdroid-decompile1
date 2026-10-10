###### Class io.ktor.network.tls.KeysKt (io.ktor.network.tls.KeysKt)
.class public final Lio/ktor/network/tls/KeysKt;
.super Ljava/lang/Object;
.source "Keys.kt"


# static fields
.field public static final CLIENT_FINISHED_LABEL:[B

.field public static final KEY_EXPANSION_LABEL:[B

.field public static final MASTER_SECRET_LABEL:[B

.field public static final SERVER_FINISHED_LABEL:[B


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 10
    sget-object v0, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    const-string v1, "master secret"

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    const-string v2, "getBytes(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v1, Lio/ktor/network/tls/KeysKt;->MASTER_SECRET_LABEL:[B

    .line 11
    const-string v1, "key expansion"

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v1, Lio/ktor/network/tls/KeysKt;->KEY_EXPANSION_LABEL:[B

    .line 13
    const-string v1, "client finished"

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v1, Lio/ktor/network/tls/KeysKt;->CLIENT_FINISHED_LABEL:[B

    .line 14
    const-string v1, "server finished"

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lio/ktor/network/tls/KeysKt;->SERVER_FINISHED_LABEL:[B

    return-void
.end method

.method public static final clientIV([BLio/ktor/network/tls/CipherSuite;)[B
    .registers 5

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "suite"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    invoke-virtual {p1}, Lio/ktor/network/tls/CipherSuite;->getMacStrengthInBytes()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    invoke-virtual {p1}, Lio/ktor/network/tls/CipherSuite;->getKeyStrengthInBytes()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 46
    invoke-virtual {p1}, Lio/ktor/network/tls/CipherSuite;->getMacStrengthInBytes()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    invoke-virtual {p1}, Lio/ktor/network/tls/CipherSuite;->getKeyStrengthInBytes()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    invoke-virtual {p1}, Lio/ktor/network/tls/CipherSuite;->getFixedIvLength()I

    move-result p1

    add-int/2addr v1, p1

    invoke-static {p0, v0, v1}, Lkotlin/collections/ArraysKt___ArraysJvmKt;->copyOfRange([BII)[B

    move-result-object p0

    return-object p0
.end method

.method public static final clientKey([BLio/ktor/network/tls/CipherSuite;)Ljavax/crypto/spec/SecretKeySpec;
    .registers 8

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "suite"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    .line 39
    invoke-virtual {p1}, Lio/ktor/network/tls/CipherSuite;->getMacStrengthInBytes()I

    move-result v1

    const/4 v2, 0x2

    mul-int/2addr v1, v2

    .line 40
    invoke-virtual {p1}, Lio/ktor/network/tls/CipherSuite;->getKeyStrengthInBytes()I

    move-result v3

    .line 41
    invoke-virtual {p1}, Lio/ktor/network/tls/CipherSuite;->getJdkCipherName()Ljava/lang/String;

    move-result-object p1

    const-string v4, "/"

    const/4 v5, 0x0

    invoke-static {p1, v4, v5, v2, v5}, Lkotlin/text/StringsKt__StringsKt;->substringBefore$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 37
    invoke-direct {v0, p0, v1, v3, p1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BIILjava/lang/String;)V

    return-object v0
.end method

.method public static final clientMacKey([BLio/ktor/network/tls/CipherSuite;)Ljavax/crypto/spec/SecretKeySpec;
    .registers 5

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "suite"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    .line 19
    invoke-virtual {p1}, Lio/ktor/network/tls/CipherSuite;->getMacStrengthInBytes()I

    move-result v1

    .line 20
    invoke-virtual {p1}, Lio/ktor/network/tls/CipherSuite;->getHash()Lio/ktor/network/tls/extensions/HashAlgorithm;

    move-result-object p1

    invoke-virtual {p1}, Lio/ktor/network/tls/extensions/HashAlgorithm;->getMacName()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    .line 16
    invoke-direct {v0, p0, v2, v1, p1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BIILjava/lang/String;)V

    return-object v0
.end method

.method public static final getCLIENT_FINISHED_LABEL()[B
    .registers 1

    .line 13
    sget-object v0, Lio/ktor/network/tls/KeysKt;->CLIENT_FINISHED_LABEL:[B

    return-object v0
.end method

.method public static final getSERVER_FINISHED_LABEL()[B
    .registers 1

    .line 14
    sget-object v0, Lio/ktor/network/tls/KeysKt;->SERVER_FINISHED_LABEL:[B

    return-object v0
.end method

.method public static final keyMaterial(Ljavax/crypto/SecretKey;[BIII)[B
    .registers 6

    const-string v0, "masterSecret"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "seed"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    mul-int/lit8 p3, p3, 0x2

    mul-int/lit8 p2, p2, 0x2

    add-int/2addr p3, p2

    mul-int/lit8 p4, p4, 0x2

    add-int/2addr p3, p4

    .line 62
    sget-object p2, Lio/ktor/network/tls/KeysKt;->KEY_EXPANSION_LABEL:[B

    invoke-static {p0, p2, p1, p3}, Lio/ktor/network/tls/HashesKt;->PRF(Ljavax/crypto/SecretKey;[B[BI)[B

    move-result-object p0

    return-object p0
.end method

.method public static final masterSecret(Ljavax/crypto/SecretKey;[B[B)Ljavax/crypto/spec/SecretKeySpec;
    .registers 5

    const-string v0, "preMasterSecret"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clientRandom"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serverRandom"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    .line 70
    sget-object v1, Lio/ktor/network/tls/KeysKt;->MASTER_SECRET_LABEL:[B

    invoke-static {p1, p2}, Lkotlin/collections/ArraysKt___ArraysJvmKt;->plus([B[B)[B

    move-result-object p1

    const/16 p2, 0x30

    invoke-static {p0, v1, p1, p2}, Lio/ktor/network/tls/HashesKt;->PRF(Ljavax/crypto/SecretKey;[B[BI)[B

    move-result-object p1

    .line 71
    invoke-interface {p0}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object p0

    .line 69
    invoke-direct {v0, p1, p0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method public static final serverIV([BLio/ktor/network/tls/CipherSuite;)[B
    .registers 5

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "suite"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    invoke-virtual {p1}, Lio/ktor/network/tls/CipherSuite;->getMacStrengthInBytes()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    invoke-virtual {p1}, Lio/ktor/network/tls/CipherSuite;->getKeyStrengthInBytes()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    invoke-virtual {p1}, Lio/ktor/network/tls/CipherSuite;->getFixedIvLength()I

    move-result v1

    add-int/2addr v0, v1

    .line 51
    invoke-virtual {p1}, Lio/ktor/network/tls/CipherSuite;->getMacStrengthInBytes()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    invoke-virtual {p1}, Lio/ktor/network/tls/CipherSuite;->getKeyStrengthInBytes()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    invoke-virtual {p1}, Lio/ktor/network/tls/CipherSuite;->getFixedIvLength()I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    add-int/2addr v1, p1

    invoke-static {p0, v0, v1}, Lkotlin/collections/ArraysKt___ArraysJvmKt;->copyOfRange([BII)[B

    move-result-object p0

    return-object p0
.end method

.method public static final serverKey([BLio/ktor/network/tls/CipherSuite;)Ljavax/crypto/spec/SecretKeySpec;
    .registers 8

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "suite"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    .line 32
    invoke-virtual {p1}, Lio/ktor/network/tls/CipherSuite;->getMacStrengthInBytes()I

    move-result v1

    const/4 v2, 0x2

    mul-int/2addr v1, v2

    invoke-virtual {p1}, Lio/ktor/network/tls/CipherSuite;->getKeyStrengthInBytes()I

    move-result v3

    add-int/2addr v1, v3

    .line 33
    invoke-virtual {p1}, Lio/ktor/network/tls/CipherSuite;->getKeyStrengthInBytes()I

    move-result v3

    .line 34
    invoke-virtual {p1}, Lio/ktor/network/tls/CipherSuite;->getJdkCipherName()Ljava/lang/String;

    move-result-object p1

    const-string v4, "/"

    const/4 v5, 0x0

    invoke-static {p1, v4, v5, v2, v5}, Lkotlin/text/StringsKt__StringsKt;->substringBefore$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 30
    invoke-direct {v0, p0, v1, v3, p1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BIILjava/lang/String;)V

    return-object v0
.end method

.method public static final serverMacKey([BLio/ktor/network/tls/CipherSuite;)Ljavax/crypto/spec/SecretKeySpec;
    .registers 5

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "suite"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    .line 25
    invoke-virtual {p1}, Lio/ktor/network/tls/CipherSuite;->getMacStrengthInBytes()I

    move-result v1

    .line 26
    invoke-virtual {p1}, Lio/ktor/network/tls/CipherSuite;->getMacStrengthInBytes()I

    move-result v2

    .line 27
    invoke-virtual {p1}, Lio/ktor/network/tls/CipherSuite;->getHash()Lio/ktor/network/tls/extensions/HashAlgorithm;

    move-result-object p1

    invoke-virtual {p1}, Lio/ktor/network/tls/extensions/HashAlgorithm;->getMacName()Ljava/lang/String;

    move-result-object p1

    .line 23
    invoke-direct {v0, p0, v1, v2, p1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BIILjava/lang/String;)V

    return-object v0
.end method
