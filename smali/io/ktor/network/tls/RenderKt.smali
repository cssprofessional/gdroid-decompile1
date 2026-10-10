###### Class io.ktor.network.tls.RenderKt (io.ktor.network.tls.RenderKt)
.class public final Lio/ktor/network/tls/RenderKt;
.super Ljava/lang/Object;
.source "Render.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRender.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Render.kt\nio/ktor/network/tls/RenderKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Builder.kt\nio/ktor/utils/io/core/BuilderKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 5 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,209:1\n1#2:210\n21#3,3:211\n21#3,3:214\n21#3,3:217\n21#3,2:220\n23#3:224\n21#3,3:225\n21#3,2:228\n23#3:232\n21#3,2:233\n23#3:237\n1869#4,2:222\n1869#4,2:230\n1869#4,2:235\n1784#5,6:238\n*S KotlinDebug\n*F\n+ 1 Render.kt\nio/ktor/network/tls/RenderKt\n*L\n75#1:211,3\n104#1:214,3\n122#1:217,3\n134#1:220,2\n134#1:224\n149#1:225,3\n164#1:228,2\n164#1:232\n182#1:233,2\n182#1:237\n141#1:222,2\n175#1:230,2\n189#1:235,2\n196#1:238,6\n*E\n"
.end annotation


# direct methods
.method public static final buildECCurvesExtension(Ljava/util/List;)Lkotlinx/io/Source;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lio/ktor/network/tls/extensions/NamedCurve;",
            ">;)",
            "Lkotlinx/io/Source;"
        }
    .end annotation

    .line 21
    new-instance v0, Lkotlinx/io/Buffer;

    invoke-direct {v0}, Lkotlinx/io/Buffer;-><init>()V

    .line 165
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x3ffe

    if-gt v1, v2, :cond_3f

    .line 169
    sget-object v1, Lio/ktor/network/tls/extensions/TLSExtensionType;->ELLIPTIC_CURVES:Lio/ktor/network/tls/extensions/TLSExtensionType;

    invoke-virtual {v1}, Lio/ktor/network/tls/extensions/TLSExtensionType;->getCode()S

    move-result v1

    invoke-interface {v0, v1}, Lkotlinx/io/Sink;->writeShort(S)V

    .line 170
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v2, v1, 0x2

    int-to-short v2, v2

    .line 172
    invoke-interface {v0, v2}, Lkotlinx/io/Sink;->writeShort(S)V

    int-to-short v1, v1

    .line 173
    invoke-interface {v0, v1}, Lkotlinx/io/Sink;->writeShort(S)V

    .line 1869
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/ktor/network/tls/extensions/NamedCurve;

    .line 176
    invoke-virtual {v1}, Lio/ktor/network/tls/extensions/NamedCurve;->getCode()S

    move-result v1

    invoke-interface {v0, v1}, Lkotlinx/io/Sink;->writeShort(S)V

    goto :goto_2a

    :cond_3e
    return-object v0

    .line 165
    :cond_3f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Too many named curves provided: at most 16382 could be provided"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic buildECCurvesExtension$default(Ljava/util/List;ILjava/lang/Object;)Lkotlinx/io/Source;
    .registers 3

    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_8

    .line 164
    invoke-static {}, Lio/ktor/network/tls/extensions/NamedCurvesKt;->getSupportedNamedCurves()Ljava/util/List;

    move-result-object p0

    :cond_8
    invoke-static {p0}, Lio/ktor/network/tls/RenderKt;->buildECCurvesExtension(Ljava/util/List;)Lkotlinx/io/Source;

    move-result-object p0

    return-object p0
.end method

.method public static final buildECPointFormatExtension(Ljava/util/List;)Lkotlinx/io/Source;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lio/ktor/network/tls/extensions/PointFormat;",
            ">;)",
            "Lkotlinx/io/Source;"
        }
    .end annotation

    .line 21
    new-instance v0, Lkotlinx/io/Buffer;

    invoke-direct {v0}, Lkotlinx/io/Buffer;-><init>()V

    .line 183
    sget-object v1, Lio/ktor/network/tls/extensions/TLSExtensionType;->EC_POINT_FORMAT:Lio/ktor/network/tls/extensions/TLSExtensionType;

    invoke-virtual {v1}, Lio/ktor/network/tls/extensions/TLSExtensionType;->getCode()S

    move-result v1

    invoke-interface {v0, v1}, Lkotlinx/io/Sink;->writeShort(S)V

    .line 185
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    int-to-short v2, v2

    .line 186
    invoke-interface {v0, v2}, Lkotlinx/io/Sink;->writeShort(S)V

    int-to-byte v1, v1

    .line 188
    invoke-interface {v0, v1}, Lkotlinx/io/Sink;->writeByte(B)V

    .line 1869
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_20
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/ktor/network/tls/extensions/PointFormat;

    .line 190
    invoke-virtual {v1}, Lio/ktor/network/tls/extensions/PointFormat;->getCode()B

    move-result v1

    invoke-interface {v0, v1}, Lkotlinx/io/Sink;->writeByte(B)V

    goto :goto_20

    :cond_34
    return-object v0
.end method

.method public static synthetic buildECPointFormatExtension$default(Ljava/util/List;ILjava/lang/Object;)Lkotlinx/io/Source;
    .registers 3

    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_8

    .line 181
    invoke-static {}, Lio/ktor/network/tls/extensions/PointFormatKt;->getSupportedPointFormats()Ljava/util/List;

    move-result-object p0

    .line 180
    :cond_8
    invoke-static {p0}, Lio/ktor/network/tls/RenderKt;->buildECPointFormatExtension(Ljava/util/List;)Lkotlinx/io/Source;

    move-result-object p0

    return-object p0
.end method

.method public static final buildServerNameExtension(Ljava/lang/String;)Lkotlinx/io/Source;
    .registers 9

    .line 21
    new-instance v7, Lkotlinx/io/Buffer;

    invoke-direct {v7}, Lkotlinx/io/Buffer;-><init>()V

    .line 150
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x7ffa

    if-ge v0, v1, :cond_42

    .line 154
    sget-object v0, Lio/ktor/network/tls/extensions/TLSExtensionType;->SERVER_NAME:Lio/ktor/network/tls/extensions/TLSExtensionType;

    invoke-virtual {v0}, Lio/ktor/network/tls/extensions/TLSExtensionType;->getCode()S

    move-result v0

    invoke-interface {v7, v0}, Lkotlinx/io/Sink;->writeShort(S)V

    .line 155
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    int-to-short v0, v0

    invoke-interface {v7, v0}, Lkotlinx/io/Sink;->writeShort(S)V

    .line 156
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x3

    int-to-short v0, v0

    invoke-interface {v7, v0}, Lkotlinx/io/Sink;->writeShort(S)V

    const/4 v0, 0x0

    .line 157
    invoke-interface {v7, v0}, Lkotlinx/io/Sink;->writeByte(B)V

    .line 158
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    int-to-short v0, v0

    invoke-interface {v7, v0}, Lkotlinx/io/Sink;->writeShort(S)V

    const/16 v5, 0xe

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, v7

    move-object v1, p0

    .line 159
    invoke-static/range {v0 .. v6}, Lio/ktor/utils/io/core/StringsKt;->writeText$default(Lkotlinx/io/Sink;Ljava/lang/CharSequence;IILjava/nio/charset/Charset;ILjava/lang/Object;)V

    return-object v7

    .line 150
    :cond_42
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Server name length limit exceeded: at most 32762 characters allowed"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final buildSignatureAlgorithmsExtension(Ljava/util/List;)Lkotlinx/io/Source;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/ktor/network/tls/extensions/HashAndSign;",
            ">;)",
            "Lkotlinx/io/Source;"
        }
    .end annotation

    .line 21
    new-instance v0, Lkotlinx/io/Buffer;

    invoke-direct {v0}, Lkotlinx/io/Buffer;-><init>()V

    .line 135
    sget-object v1, Lio/ktor/network/tls/extensions/TLSExtensionType;->SIGNATURE_ALGORITHMS:Lio/ktor/network/tls/extensions/TLSExtensionType;

    invoke-virtual {v1}, Lio/ktor/network/tls/extensions/TLSExtensionType;->getCode()S

    move-result v1

    invoke-interface {v0, v1}, Lkotlinx/io/Sink;->writeShort(S)V

    .line 137
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v2, v1, 0x2

    int-to-short v2, v2

    .line 138
    invoke-interface {v0, v2}, Lkotlinx/io/Sink;->writeShort(S)V

    int-to-short v1, v1

    .line 139
    invoke-interface {v0, v1}, Lkotlinx/io/Sink;->writeShort(S)V

    .line 1869
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_22
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_45

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/ktor/network/tls/extensions/HashAndSign;

    .line 142
    invoke-virtual {v1}, Lio/ktor/network/tls/extensions/HashAndSign;->getHash()Lio/ktor/network/tls/extensions/HashAlgorithm;

    move-result-object v2

    invoke-virtual {v2}, Lio/ktor/network/tls/extensions/HashAlgorithm;->getCode()B

    move-result v2

    invoke-interface {v0, v2}, Lkotlinx/io/Sink;->writeByte(B)V

    .line 143
    invoke-virtual {v1}, Lio/ktor/network/tls/extensions/HashAndSign;->getSign()Lio/ktor/network/tls/extensions/SignatureAlgorithm;

    move-result-object v1

    invoke-virtual {v1}, Lio/ktor/network/tls/extensions/SignatureAlgorithm;->getCode()B

    move-result v1

    invoke-interface {v0, v1}, Lkotlinx/io/Sink;->writeByte(B)V

    goto :goto_22

    :cond_45
    return-object v0
.end method

.method public static synthetic buildSignatureAlgorithmsExtension$default(Ljava/util/List;ILjava/lang/Object;)Lkotlinx/io/Source;
    .registers 3

    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_8

    .line 133
    invoke-static {}, Lio/ktor/network/tls/extensions/SignatureAlgorithmKt;->getSupportedSignatureAlgorithms()Ljava/util/List;

    move-result-object p0

    .line 132
    :cond_8
    invoke-static {p0}, Lio/ktor/network/tls/RenderKt;->buildSignatureAlgorithmsExtension(Ljava/util/List;)Lkotlinx/io/Source;

    move-result-object p0

    return-object p0
.end method

.method public static final finished([BLjavax/crypto/SecretKey;)Lkotlinx/io/Source;
    .registers 9

    const-string v0, "digest"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "secretKey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    new-instance v0, Lkotlinx/io/Buffer;

    invoke-direct {v0}, Lkotlinx/io/Buffer;-><init>()V

    .line 105
    invoke-static {}, Lio/ktor/network/tls/KeysKt;->getCLIENT_FINISHED_LABEL()[B

    move-result-object v1

    const/16 v2, 0xc

    invoke-static {p1, v1, p0, v2}, Lio/ktor/network/tls/HashesKt;->PRF(Ljavax/crypto/SecretKey;[B[BI)[B

    move-result-object v2

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, v0

    .line 106
    invoke-static/range {v1 .. v6}, Lio/ktor/utils/io/core/BytePacketBuilderKt;->writeFully$default(Lkotlinx/io/Sink;[BIIILjava/lang/Object;)V

    return-object v0
.end method

.method public static final serverFinished([BLjavax/crypto/SecretKey;I)[B
    .registers 4

    const-string v0, "handshakeHash"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "secretKey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    invoke-static {}, Lio/ktor/network/tls/KeysKt;->getSERVER_FINISHED_LABEL()[B

    move-result-object v0

    invoke-static {p1, v0, p0, p2}, Lio/ktor/network/tls/HashesKt;->PRF(Ljavax/crypto/SecretKey;[B[BI)[B

    move-result-object p0

    return-object p0
.end method

.method public static final writeAligned(Lkotlinx/io/Sink;[BI)V
    .registers 11

    add-int/lit8 p2, p2, 0x7

    ushr-int/lit8 p2, p2, 0x3

    .line 1784
    array-length v0, p1

    const/4 v1, 0x0

    :goto_6
    if-ge v1, v0, :cond_10

    .line 1785
    aget-byte v2, p1, v1

    if-eqz v2, :cond_d

    goto :goto_11

    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_10
    const/4 v1, -0x1

    .line 197
    :goto_11
    array-length v0, p1

    sub-int/2addr v0, v1

    sub-int/2addr p2, v0

    if-lez p2, :cond_20

    .line 199
    new-array v3, p2, [B

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Lio/ktor/utils/io/core/BytePacketBuilderKt;->writeFully$default(Lkotlinx/io/Sink;[BIIILjava/lang/Object;)V

    .line 200
    :cond_20
    array-length p2, p1

    sub-int/2addr p2, v1

    invoke-static {p0, p1, v1, p2}, Lio/ktor/utils/io/core/BytePacketBuilderKt;->writeFully(Lkotlinx/io/Sink;[BII)V

    return-void
.end method

.method public static final writeECPoint(Lkotlinx/io/Sink;Ljava/security/spec/ECPoint;I)V
    .registers 6

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "point"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    new-instance v0, Lkotlinx/io/Buffer;

    invoke-direct {v0}, Lkotlinx/io/Buffer;-><init>()V

    const/4 v1, 0x4

    .line 123
    invoke-interface {v0, v1}, Lkotlinx/io/Sink;->writeByte(B)V

    .line 124
    invoke-virtual {p1}, Ljava/security/spec/ECPoint;->getAffineX()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    const-string v2, "toByteArray(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v1, p2}, Lio/ktor/network/tls/RenderKt;->writeAligned(Lkotlinx/io/Sink;[BI)V

    .line 125
    invoke-virtual {p1}, Ljava/security/spec/ECPoint;->getAffineY()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1, p2}, Lio/ktor/network/tls/RenderKt;->writeAligned(Lkotlinx/io/Sink;[BI)V

    .line 128
    invoke-static {v0}, Lio/ktor/utils/io/core/ByteReadPacketKt;->getRemaining(Lkotlinx/io/Source;)J

    move-result-wide p1

    long-to-int p1, p1

    int-to-byte p1, p1

    invoke-interface {p0, p1}, Lkotlinx/io/Sink;->writeByte(B)V

    .line 129
    invoke-static {p0, v0}, Lio/ktor/utils/io/core/BytePacketBuilderKt;->writePacket(Lkotlinx/io/Sink;Lkotlinx/io/Source;)V

    return-void
.end method

.method public static final writeEncryptedPreMasterSecret(Lkotlinx/io/Sink;[BLjava/security/PublicKey;Ljava/security/SecureRandom;)V
    .registers 12

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "preSecret"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "publicKey"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "random"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    array-length v0, p1

    const/16 v1, 0x30

    if-ne v0, v1, :cond_4b

    .line 94
    const-string v0, "RSA/ECB/PKCS1Padding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v1, 0x1

    .line 95
    invoke-virtual {v0, v1, p2, p3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/SecureRandom;)V

    .line 96
    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v3

    .line 98
    array-length p1, v3

    const p2, 0xffff

    if-gt p1, p2, :cond_41

    .line 100
    array-length p1, v3

    int-to-short p1, p1

    invoke-interface {p0, p1}, Lkotlinx/io/Sink;->writeShort(S)V

    .line 101
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Lio/ktor/utils/io/core/BytePacketBuilderKt;->writeFully$default(Lkotlinx/io/Sink;[BIIILjava/lang/Object;)V

    return-void

    .line 98
    :cond_41
    new-instance p0, Lio/ktor/network/tls/TLSException;

    const-string p1, "Encrypted premaster secret is too long"

    const/4 p2, 0x2

    const/4 p3, 0x0

    invoke-direct {p0, p1, p3, p2, p3}, Lio/ktor/network/tls/TLSException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw p0

    .line 92
    :cond_4b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Failed requirement."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final writePublicKeyUncompressed(Lkotlinx/io/Sink;Ljava/security/PublicKey;)V
    .registers 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    instance-of v0, p1, Ljava/security/interfaces/ECPublicKey;

    if-eqz v0, :cond_2d

    .line 114
    check-cast p1, Ljava/security/interfaces/ECPublicKey;

    invoke-interface {p1}, Ljava/security/interfaces/ECKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/spec/EllipticCurve;->getField()Ljava/security/spec/ECField;

    move-result-object v0

    invoke-interface {v0}, Ljava/security/spec/ECField;->getFieldSize()I

    move-result v0

    .line 115
    invoke-interface {p1}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object p1

    const-string v1, "getW(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1, v0}, Lio/ktor/network/tls/RenderKt;->writeECPoint(Lkotlinx/io/Sink;Ljava/security/spec/ECPoint;I)V

    return-void

    .line 118
    :cond_2d
    new-instance p0, Lio/ktor/network/tls/TLSException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported public key type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0, v1}, Lio/ktor/network/tls/TLSException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw p0
.end method

.method public static final writeRecord(Lio/ktor/utils/io/ByteWriteChannel;Lio/ktor/network/tls/TLSRecord;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/ByteWriteChannel;",
            "Lio/ktor/network/tls/TLSRecord;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lio/ktor/network/tls/RenderKt$writeRecord$1;

    if-eqz v0, :cond_13

    move-object v0, p2

    check-cast v0, Lio/ktor/network/tls/RenderKt$writeRecord$1;

    iget v1, v0, Lio/ktor/network/tls/RenderKt$writeRecord$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lio/ktor/network/tls/RenderKt$writeRecord$1;->label:I

    goto :goto_18

    :cond_13
    new-instance v0, Lio/ktor/network/tls/RenderKt$writeRecord$1;

    invoke-direct {v0, p2}, Lio/ktor/network/tls/RenderKt$writeRecord$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p2, v0, Lio/ktor/network/tls/RenderKt$writeRecord$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 17
    iget v2, v0, Lio/ktor/network/tls/RenderKt$writeRecord$1;->label:I

    packed-switch v2, :pswitch_data_162

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_2b
    iget-object p0, v0, Lio/ktor/network/tls/RenderKt$writeRecord$1;->L$2:Ljava/lang/Object;

    check-cast p0, Lio/ktor/network/tls/TLSRecord;

    iget-object p0, v0, Lio/ktor/network/tls/RenderKt$writeRecord$1;->L$1:Ljava/lang/Object;

    check-cast p0, Lio/ktor/network/tls/TLSRecord;

    iget-object p0, v0, Lio/ktor/network/tls/RenderKt$writeRecord$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lio/ktor/utils/io/ByteWriteChannel;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_15f

    :pswitch_3c
    iget p0, v0, Lio/ktor/network/tls/RenderKt$writeRecord$1;->I$0:I

    iget-object p1, v0, Lio/ktor/network/tls/RenderKt$writeRecord$1;->L$2:Ljava/lang/Object;

    check-cast p1, Lio/ktor/network/tls/TLSRecord;

    iget-object v2, v0, Lio/ktor/network/tls/RenderKt$writeRecord$1;->L$1:Ljava/lang/Object;

    check-cast v2, Lio/ktor/network/tls/TLSRecord;

    iget-object v3, v0, Lio/ktor/network/tls/RenderKt$writeRecord$1;->L$0:Ljava/lang/Object;

    check-cast v3, Lio/ktor/utils/io/ByteWriteChannel;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_141

    :pswitch_4f
    iget p0, v0, Lio/ktor/network/tls/RenderKt$writeRecord$1;->I$0:I

    iget-object p1, v0, Lio/ktor/network/tls/RenderKt$writeRecord$1;->L$2:Ljava/lang/Object;

    check-cast p1, Lio/ktor/network/tls/TLSRecord;

    iget-object v2, v0, Lio/ktor/network/tls/RenderKt$writeRecord$1;->L$1:Ljava/lang/Object;

    check-cast v2, Lio/ktor/network/tls/TLSRecord;

    iget-object v3, v0, Lio/ktor/network/tls/RenderKt$writeRecord$1;->L$0:Ljava/lang/Object;

    check-cast v3, Lio/ktor/utils/io/ByteWriteChannel;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_123

    :pswitch_62
    iget p0, v0, Lio/ktor/network/tls/RenderKt$writeRecord$1;->I$0:I

    iget-object p1, v0, Lio/ktor/network/tls/RenderKt$writeRecord$1;->L$2:Ljava/lang/Object;

    check-cast p1, Lio/ktor/network/tls/TLSRecord;

    iget-object v2, v0, Lio/ktor/network/tls/RenderKt$writeRecord$1;->L$1:Ljava/lang/Object;

    check-cast v2, Lio/ktor/network/tls/TLSRecord;

    iget-object v3, v0, Lio/ktor/network/tls/RenderKt$writeRecord$1;->L$0:Ljava/lang/Object;

    check-cast v3, Lio/ktor/utils/io/ByteWriteChannel;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_103

    :pswitch_75
    iget p0, v0, Lio/ktor/network/tls/RenderKt$writeRecord$1;->I$0:I

    iget-object p1, v0, Lio/ktor/network/tls/RenderKt$writeRecord$1;->L$2:Ljava/lang/Object;

    check-cast p1, Lio/ktor/network/tls/TLSRecord;

    iget-object v2, v0, Lio/ktor/network/tls/RenderKt$writeRecord$1;->L$1:Ljava/lang/Object;

    check-cast v2, Lio/ktor/network/tls/TLSRecord;

    iget-object v3, v0, Lio/ktor/network/tls/RenderKt$writeRecord$1;->L$0:Ljava/lang/Object;

    check-cast v3, Lio/ktor/utils/io/ByteWriteChannel;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_e4

    :pswitch_87
    iget p0, v0, Lio/ktor/network/tls/RenderKt$writeRecord$1;->I$0:I

    iget-object p1, v0, Lio/ktor/network/tls/RenderKt$writeRecord$1;->L$2:Ljava/lang/Object;

    check-cast p1, Lio/ktor/network/tls/TLSRecord;

    iget-object v2, v0, Lio/ktor/network/tls/RenderKt$writeRecord$1;->L$1:Ljava/lang/Object;

    check-cast v2, Lio/ktor/network/tls/TLSRecord;

    iget-object v3, v0, Lio/ktor/network/tls/RenderKt$writeRecord$1;->L$0:Ljava/lang/Object;

    check-cast v3, Lio/ktor/utils/io/ByteWriteChannel;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p2, v2

    move v2, p0

    move-object p0, v3

    goto :goto_c0

    :pswitch_9c
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 18
    invoke-virtual {p1}, Lio/ktor/network/tls/TLSRecord;->getType()Lio/ktor/network/tls/TLSRecordType;

    move-result-object p2

    invoke-virtual {p2}, Lio/ktor/network/tls/TLSRecordType;->getCode()I

    move-result p2

    int-to-byte p2, p2

    iput-object p0, v0, Lio/ktor/network/tls/RenderKt$writeRecord$1;->L$0:Ljava/lang/Object;

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v0, Lio/ktor/network/tls/RenderKt$writeRecord$1;->L$1:Ljava/lang/Object;

    iput-object p1, v0, Lio/ktor/network/tls/RenderKt$writeRecord$1;->L$2:Ljava/lang/Object;

    const/4 v2, 0x0

    iput v2, v0, Lio/ktor/network/tls/RenderKt$writeRecord$1;->I$0:I

    const/4 v3, 0x1

    iput v3, v0, Lio/ktor/network/tls/RenderKt$writeRecord$1;->label:I

    invoke-static {p0, p2, v0}, Lio/ktor/utils/io/ByteWriteChannelOperationsKt;->writeByte(Lio/ktor/utils/io/ByteWriteChannel;BLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_bf

    return-object v1

    :cond_bf
    move-object p2, p1

    .line 19
    :goto_c0
    invoke-virtual {p1}, Lio/ktor/network/tls/TLSRecord;->getVersion()Lio/ktor/network/tls/TLSVersion;

    move-result-object v3

    invoke-virtual {v3}, Lio/ktor/network/tls/TLSVersion;->getCode()I

    move-result v3

    shr-int/lit8 v3, v3, 0x8

    int-to-byte v3, v3

    iput-object p0, v0, Lio/ktor/network/tls/RenderKt$writeRecord$1;->L$0:Ljava/lang/Object;

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, v0, Lio/ktor/network/tls/RenderKt$writeRecord$1;->L$1:Ljava/lang/Object;

    iput-object p1, v0, Lio/ktor/network/tls/RenderKt$writeRecord$1;->L$2:Ljava/lang/Object;

    iput v2, v0, Lio/ktor/network/tls/RenderKt$writeRecord$1;->I$0:I

    const/4 v4, 0x2

    iput v4, v0, Lio/ktor/network/tls/RenderKt$writeRecord$1;->label:I

    invoke-static {p0, v3, v0}, Lio/ktor/utils/io/ByteWriteChannelOperationsKt;->writeByte(Lio/ktor/utils/io/ByteWriteChannel;BLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v1, :cond_e1

    return-object v1

    :cond_e1
    move-object v3, p0

    move p0, v2

    move-object v2, p2

    .line 20
    :goto_e4
    invoke-virtual {p1}, Lio/ktor/network/tls/TLSRecord;->getVersion()Lio/ktor/network/tls/TLSVersion;

    move-result-object p2

    invoke-virtual {p2}, Lio/ktor/network/tls/TLSVersion;->getCode()I

    move-result p2

    int-to-byte p2, p2

    iput-object v3, v0, Lio/ktor/network/tls/RenderKt$writeRecord$1;->L$0:Ljava/lang/Object;

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, v0, Lio/ktor/network/tls/RenderKt$writeRecord$1;->L$1:Ljava/lang/Object;

    iput-object p1, v0, Lio/ktor/network/tls/RenderKt$writeRecord$1;->L$2:Ljava/lang/Object;

    iput p0, v0, Lio/ktor/network/tls/RenderKt$writeRecord$1;->I$0:I

    const/4 v4, 0x3

    iput v4, v0, Lio/ktor/network/tls/RenderKt$writeRecord$1;->label:I

    invoke-static {v3, p2, v0}, Lio/ktor/utils/io/ByteWriteChannelOperationsKt;->writeByte(Lio/ktor/utils/io/ByteWriteChannel;BLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_103

    return-object v1

    .line 21
    :cond_103
    :goto_103
    invoke-virtual {p1}, Lio/ktor/network/tls/TLSRecord;->getPacket()Lkotlinx/io/Source;

    move-result-object p2

    invoke-static {p2}, Lio/ktor/utils/io/core/ByteReadPacketKt;->getRemaining(Lkotlinx/io/Source;)J

    move-result-wide v4

    long-to-int p2, v4

    int-to-short p2, p2

    iput-object v3, v0, Lio/ktor/network/tls/RenderKt$writeRecord$1;->L$0:Ljava/lang/Object;

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, v0, Lio/ktor/network/tls/RenderKt$writeRecord$1;->L$1:Ljava/lang/Object;

    iput-object p1, v0, Lio/ktor/network/tls/RenderKt$writeRecord$1;->L$2:Ljava/lang/Object;

    iput p0, v0, Lio/ktor/network/tls/RenderKt$writeRecord$1;->I$0:I

    const/4 v4, 0x4

    iput v4, v0, Lio/ktor/network/tls/RenderKt$writeRecord$1;->label:I

    invoke-static {v3, p2, v0}, Lio/ktor/utils/io/ByteWriteChannelOperationsKt;->writeShort(Lio/ktor/utils/io/ByteWriteChannel;SLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_123

    return-object v1

    .line 22
    :cond_123
    :goto_123
    invoke-virtual {p1}, Lio/ktor/network/tls/TLSRecord;->getPacket()Lkotlinx/io/Source;

    move-result-object p2

    iput-object v3, v0, Lio/ktor/network/tls/RenderKt$writeRecord$1;->L$0:Ljava/lang/Object;

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, v0, Lio/ktor/network/tls/RenderKt$writeRecord$1;->L$1:Ljava/lang/Object;

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, v0, Lio/ktor/network/tls/RenderKt$writeRecord$1;->L$2:Ljava/lang/Object;

    iput p0, v0, Lio/ktor/network/tls/RenderKt$writeRecord$1;->I$0:I

    const/4 v4, 0x5

    iput v4, v0, Lio/ktor/network/tls/RenderKt$writeRecord$1;->label:I

    invoke-static {v3, p2, v0}, Lio/ktor/utils/io/ByteWriteChannelOperationsKt;->writePacket(Lio/ktor/utils/io/ByteWriteChannel;Lkotlinx/io/Source;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_141

    return-object v1

    .line 23
    :cond_141
    :goto_141
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    iput-object p2, v0, Lio/ktor/network/tls/RenderKt$writeRecord$1;->L$0:Ljava/lang/Object;

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    iput-object p2, v0, Lio/ktor/network/tls/RenderKt$writeRecord$1;->L$1:Ljava/lang/Object;

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v0, Lio/ktor/network/tls/RenderKt$writeRecord$1;->L$2:Ljava/lang/Object;

    iput p0, v0, Lio/ktor/network/tls/RenderKt$writeRecord$1;->I$0:I

    const/4 p0, 0x6

    iput p0, v0, Lio/ktor/network/tls/RenderKt$writeRecord$1;->label:I

    invoke-interface {v3, v0}, Lio/ktor/utils/io/ByteWriteChannel;->flush(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_15f

    return-object v1

    .line 17
    :cond_15f
    :goto_15f
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_data_162
    .packed-switch 0x0
        :pswitch_9c
        :pswitch_87
        :pswitch_75
        :pswitch_62
        :pswitch_4f
        :pswitch_3c
        :pswitch_2b
    .end packed-switch
.end method

.method public static final writeTLSCertificates(Lkotlinx/io/Sink;[Ljava/security/cert/X509Certificate;)V
    .registers 11

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "certificates"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    new-instance v0, Lkotlinx/io/Buffer;

    invoke-direct {v0}, Lkotlinx/io/Buffer;-><init>()V

    .line 76
    array-length v7, p1

    const/4 v1, 0x0

    move v8, v1

    :goto_12
    if-ge v8, v7, :cond_2c

    aget-object v1, p1, v8

    .line 77
    invoke-virtual {v1}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 78
    array-length v1, v2

    invoke-static {v0, v1}, Lio/ktor/network/tls/RenderKt;->writeTripleByteLength(Lkotlinx/io/Sink;I)V

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, v0

    .line 79
    invoke-static/range {v1 .. v6}, Lio/ktor/utils/io/core/BytePacketBuilderKt;->writeFully$default(Lkotlinx/io/Sink;[BIIILjava/lang/Object;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_12

    .line 83
    :cond_2c
    invoke-static {v0}, Lio/ktor/utils/io/core/ByteReadPacketKt;->getRemaining(Lkotlinx/io/Source;)J

    move-result-wide v1

    long-to-int p1, v1

    invoke-static {p0, p1}, Lio/ktor/network/tls/RenderKt;->writeTripleByteLength(Lkotlinx/io/Sink;I)V

    .line 84
    invoke-static {p0, v0}, Lio/ktor/utils/io/core/BytePacketBuilderKt;->writePacket(Lkotlinx/io/Sink;Lkotlinx/io/Source;)V

    return-void
.end method

.method public static final writeTLSClientHello(Lkotlinx/io/Sink;Lio/ktor/network/tls/TLSVersion;Ljava/util/List;[B[BLjava/lang/String;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/io/Sink;",
            "Lio/ktor/network/tls/TLSVersion;",
            "Ljava/util/List<",
            "Lio/ktor/network/tls/CipherSuite;",
            ">;[B[B",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "version"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "suites"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "random"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sessionId"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-virtual {p1}, Lio/ktor/network/tls/TLSVersion;->getCode()I

    move-result p1

    int-to-short p1, p1

    invoke-interface {p0, p1}, Lkotlinx/io/Sink;->writeShort(S)V

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p3

    .line 40
    invoke-static/range {v0 .. v5}, Lio/ktor/utils/io/core/BytePacketBuilderKt;->writeFully$default(Lkotlinx/io/Sink;[BIIILjava/lang/Object;)V

    .line 42
    array-length p1, p4

    const/4 p3, 0x2

    const/4 v0, 0x0

    if-ltz p1, :cond_c3

    const/16 v1, 0xff

    if-gt p1, v1, :cond_c3

    .line 43
    array-length v1, p4

    if-gt p1, v1, :cond_c3

    int-to-byte v1, p1

    .line 47
    invoke-interface {p0, v1}, Lkotlinx/io/Sink;->writeByte(B)V

    const/4 v1, 0x0

    .line 48
    invoke-static {p0, p4, v1, p1}, Lio/ktor/utils/io/core/BytePacketBuilderKt;->writeFully(Lkotlinx/io/Sink;[BII)V

    .line 50
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    mul-int/2addr p1, p3

    int-to-short p1, p1

    invoke-interface {p0, p1}, Lkotlinx/io/Sink;->writeShort(S)V

    .line 51
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/ktor/network/tls/CipherSuite;

    .line 52
    invoke-virtual {p2}, Lio/ktor/network/tls/CipherSuite;->getCode()S

    move-result p2

    invoke-interface {p0, p2}, Lkotlinx/io/Sink;->writeShort(S)V

    goto :goto_4b

    :cond_5f
    const/4 p1, 0x1

    .line 56
    invoke-interface {p0, p1}, Lkotlinx/io/Sink;->writeByte(B)V

    .line 57
    invoke-interface {p0, v1}, Lkotlinx/io/Sink;->writeByte(B)V

    .line 59
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 60
    invoke-static {v0, p1, v0}, Lio/ktor/network/tls/RenderKt;->buildSignatureAlgorithmsExtension$default(Ljava/util/List;ILjava/lang/Object;)Lkotlinx/io/Source;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 61
    invoke-static {v0, p1, v0}, Lio/ktor/network/tls/RenderKt;->buildECCurvesExtension$default(Ljava/util/List;ILjava/lang/Object;)Lkotlinx/io/Source;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 62
    invoke-static {v0, p1, v0}, Lio/ktor/network/tls/RenderKt;->buildECPointFormatExtension$default(Ljava/util/List;ILjava/lang/Object;)Lkotlinx/io/Source;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    if-eqz p5, :cond_89

    .line 65
    invoke-static {p5}, Lio/ktor/network/tls/RenderKt;->buildServerNameExtension(Ljava/lang/String;)Lkotlinx/io/Source;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 68
    :cond_89
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_8d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_a0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lkotlinx/io/Source;

    invoke-static {p3}, Lio/ktor/utils/io/core/ByteReadPacketKt;->getRemaining(Lkotlinx/io/Source;)J

    move-result-wide p3

    long-to-int p3, p3

    add-int/2addr v1, p3

    goto :goto_8d

    :cond_a0
    int-to-short p1, v1

    invoke-interface {p0, p1}, Lkotlinx/io/Sink;->writeShort(S)V

    .line 69
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-string p2, "iterator(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_ad
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_c2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    const-string p3, "next(...)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lkotlinx/io/Source;

    .line 70
    invoke-static {p0, p2}, Lio/ktor/utils/io/core/BytePacketBuilderKt;->writePacket(Lkotlinx/io/Sink;Lkotlinx/io/Source;)V

    goto :goto_ad

    :cond_c2
    return-void

    .line 44
    :cond_c3
    new-instance p0, Lio/ktor/network/tls/TLSException;

    const-string p1, "Illegal sessionIdLength"

    invoke-direct {p0, p1, v0, p3, v0}, Lio/ktor/network/tls/TLSException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw p0
.end method

.method public static final writeTLSHandshakeType(Lkotlinx/io/Sink;Lio/ktor/network/tls/TLSHandshakeType;I)V
    .registers 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0xffffff

    if-gt p2, v0, :cond_1a

    .line 28
    invoke-virtual {p1}, Lio/ktor/network/tls/TLSHandshakeType;->getCode()I

    move-result p1

    shl-int/lit8 p1, p1, 0x18

    or-int/2addr p1, p2

    .line 29
    invoke-interface {p0, p1}, Lkotlinx/io/Sink;->writeInt(I)V

    return-void

    .line 27
    :cond_1a
    new-instance p0, Lio/ktor/network/tls/TLSException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "TLS handshake size limit exceeded: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x2

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, v0}, Lio/ktor/network/tls/TLSException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw p0
.end method

.method public static final writeTripleByteLength(Lkotlinx/io/Sink;I)V
    .registers 4

    ushr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    const v1, 0xffff

    and-int/2addr p1, v1

    int-to-byte v0, v0

    .line 206
    invoke-interface {p0, v0}, Lkotlinx/io/Sink;->writeByte(B)V

    int-to-short p1, p1

    .line 207
    invoke-interface {p0, p1}, Lkotlinx/io/Sink;->writeShort(S)V

    return-void
.end method

###### Class io.ktor.network.tls.RenderKt.AnonymousClass1 (io.ktor.network.tls.RenderKt$writeRecord$1)
.class public final Lio/ktor/network/tls/RenderKt$writeRecord$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "Render.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/network/tls/RenderKt;->writeRecord(Lio/ktor/utils/io/ByteWriteChannel;Lio/ktor/network/tls/TLSRecord;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "io.ktor.network.tls.RenderKt"
    f = "Render.kt"
    l = {
        0x12,
        0x13,
        0x14,
        0x15,
        0x16,
        0x17
    }
    m = "writeRecord"
    v = 0x1
.end annotation


# instance fields
.field public I$0:I

.field public L$0:Ljava/lang/Object;

.field public L$1:Ljava/lang/Object;

.field public L$2:Ljava/lang/Object;

.field public label:I

.field public synthetic result:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/Continuation;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ktor/network/tls/RenderKt$writeRecord$1;",
            ">;)V"
        }
    .end annotation

    .line 0
    invoke-direct {p0, p1}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    iput-object p1, p0, Lio/ktor/network/tls/RenderKt$writeRecord$1;->result:Ljava/lang/Object;

    iget p1, p0, Lio/ktor/network/tls/RenderKt$writeRecord$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lio/ktor/network/tls/RenderKt$writeRecord$1;->label:I

    const/4 p1, 0x0

    invoke-static {p1, p1, p0}, Lio/ktor/network/tls/RenderKt;->writeRecord(Lio/ktor/utils/io/ByteWriteChannel;Lio/ktor/network/tls/TLSRecord;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
