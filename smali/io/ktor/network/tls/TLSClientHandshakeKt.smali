###### Class io.ktor.network.tls.TLSClientHandshakeKt (io.ktor.network.tls.TLSClientHandshakeKt)
.class public final Lio/ktor/network/tls/TLSClientHandshakeKt;
.super Ljava/lang/Object;
.source "TLSClientHandshake.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTLSClientHandshake.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TLSClientHandshake.kt\nio/ktor/network/tls/TLSClientHandshakeKt\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,567:1\n37#2,2:568\n*S KotlinDebug\n*F\n+ 1 TLSClientHandshake.kt\nio/ktor/network/tls/TLSClientHandshakeKt\n*L\n563#1:568,2\n*E\n"
.end annotation


# direct methods
.method public static final synthetic access$generateClientSeed(Ljava/security/SecureRandom;)[B
    .registers 1

    .line 1
    invoke-static {p0}, Lio/ktor/network/tls/TLSClientHandshakeKt;->generateClientSeed(Ljava/security/SecureRandom;)[B

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$generateECKeys(Lio/ktor/network/tls/extensions/NamedCurve;Ljava/security/spec/ECPoint;)Lio/ktor/network/tls/EncryptionInfo;
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lio/ktor/network/tls/TLSClientHandshakeKt;->generateECKeys(Lio/ktor/network/tls/extensions/NamedCurve;Ljava/security/spec/ECPoint;)Lio/ktor/network/tls/EncryptionInfo;

    move-result-object p0

    return-object p0
.end method

.method public static final generateClientSeed(Ljava/security/SecureRandom;)[B
    .registers 6

    const/16 v0, 0x20

    .line 503
    new-array v0, v0, [B

    .line 504
    invoke-virtual {p0, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 506
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    const/16 p0, 0x18

    shr-long v3, v1, p0

    long-to-int p0, v3

    int-to-byte p0, p0

    const/4 v3, 0x0

    .line 507
    aput-byte p0, v0, v3

    const/16 p0, 0x10

    shr-long v3, v1, p0

    long-to-int p0, v3

    int-to-byte p0, p0

    const/4 v3, 0x1

    .line 508
    aput-byte p0, v0, v3

    const/16 p0, 0x8

    shr-long v3, v1, p0

    long-to-int p0, v3

    int-to-byte p0, p0

    const/4 v3, 0x2

    .line 509
    aput-byte p0, v0, v3

    long-to-int p0, v1

    int-to-byte p0, p0

    const/4 v1, 0x3

    .line 510
    aput-byte p0, v0, v1

    return-object v0
.end method

.method public static final generateECKeys(Lio/ktor/network/tls/extensions/NamedCurve;Ljava/security/spec/ECPoint;)Lio/ktor/network/tls/EncryptionInfo;
    .registers 5

    .line 515
    const-string v0, "EC"

    invoke-static {v0}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 516
    new-instance v2, Ljava/security/spec/ECGenParameterSpec;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/security/spec/ECGenParameterSpec;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 517
    invoke-virtual {v1}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 520
    invoke-virtual {p0}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type java.security.interfaces.ECPublicKey"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/security/interfaces/ECPublicKey;

    .line 521
    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 522
    new-instance v2, Ljava/security/spec/ECPublicKeySpec;

    invoke-interface {v1}, Ljava/security/interfaces/ECKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v2, p1, v1}, Ljava/security/spec/ECPublicKeySpec;-><init>(Ljava/security/spec/ECPoint;Ljava/security/spec/ECParameterSpec;)V

    invoke-virtual {v0, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 524
    new-instance v0, Lio/ktor/network/tls/EncryptionInfo;

    invoke-virtual {p0}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v1

    const-string v2, "getPublic(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object p0

    const-string v2, "getPrivate(...)"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p1, v1, p0}, Lio/ktor/network/tls/EncryptionInfo;-><init>(Ljava/security/PublicKey;Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    return-object v0
.end method

.method public static final readClientCertificateRequest(Lkotlinx/io/Source;)Lio/ktor/network/tls/CertificateInfo;
    .registers 10

    const-string v0, "packet"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 538
    invoke-interface {p0}, Lkotlinx/io/Source;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 539
    invoke-static {p0, v0}, Lkotlinx/io/SourcesKt;->readByteArray(Lkotlinx/io/Source;I)[B

    move-result-object v0

    .line 541
    invoke-interface {p0}, Lkotlinx/io/Source;->readShort()S

    move-result v1

    const v2, 0xffff

    and-int/2addr v1, v2

    .line 542
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 544
    div-int/lit8 v1, v1, 0x2

    const/4 v4, 0x0

    move v5, v4

    :goto_20
    if-ge v5, v1, :cond_39

    .line 545
    invoke-interface {p0}, Lkotlinx/io/Source;->readByte()B

    move-result v6

    .line 546
    invoke-interface {p0}, Lkotlinx/io/Source;->readByte()B

    move-result v7

    .line 547
    sget-object v8, Lio/ktor/network/tls/extensions/HashAndSign;->Companion:Lio/ktor/network/tls/extensions/HashAndSign$Companion;

    invoke-static {v8, v6, v7}, Lio/ktor/network/tls/extensions/SignatureAlgorithmKt;->byCode(Lio/ktor/network/tls/extensions/HashAndSign$Companion;BB)Lio/ktor/network/tls/extensions/HashAndSign;

    move-result-object v6

    if-nez v6, :cond_33

    goto :goto_36

    :cond_33
    invoke-interface {v3, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :goto_36
    add-int/lit8 v5, v5, 0x1

    goto :goto_20

    .line 550
    :cond_39
    invoke-interface {p0}, Lkotlinx/io/Source;->readShort()S

    move-result v1

    and-int/2addr v1, v2

    .line 551
    new-instance v5, Ljava/util/LinkedHashSet;

    invoke-direct {v5}, Ljava/util/LinkedHashSet;-><init>()V

    move v6, v4

    :goto_44
    if-ge v6, v1, :cond_5b

    .line 555
    invoke-interface {p0}, Lkotlinx/io/Source;->readShort()S

    move-result v7

    and-int/2addr v7, v2

    add-int/lit8 v8, v7, 0x2

    add-int/2addr v6, v8

    .line 559
    invoke-static {p0, v7}, Lkotlinx/io/SourcesKt;->readByteArray(Lkotlinx/io/Source;I)[B

    move-result-object v7

    .line 560
    new-instance v8, Ljavax/security/auth/x500/X500Principal;

    invoke-direct {v8, v7}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V

    invoke-interface {v5, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_44

    .line 563
    :cond_5b
    new-instance v1, Lio/ktor/network/tls/CertificateInfo;

    .line 38
    new-array v2, v4, [Lio/ktor/network/tls/extensions/HashAndSign;

    invoke-interface {v3, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lio/ktor/network/tls/extensions/HashAndSign;

    .line 563
    invoke-direct {v1, v0, v2, v5}, Lio/ktor/network/tls/CertificateInfo;-><init>([B[Lio/ktor/network/tls/extensions/HashAndSign;Ljava/util/Set;)V

    .line 564
    invoke-interface {p0}, Lkotlinx/io/Source;->exhausted()Z

    move-result p0

    if-eqz p0, :cond_6f

    return-object v1

    :cond_6f
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Check failed."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
