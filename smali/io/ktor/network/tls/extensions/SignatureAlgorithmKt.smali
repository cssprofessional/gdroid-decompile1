###### Class io.ktor.network.tls.extensions.SignatureAlgorithmKt (io.ktor.network.tls.extensions.SignatureAlgorithmKt)
.class public final Lio/ktor/network/tls/extensions/SignatureAlgorithmKt;
.super Ljava/lang/Object;
.source "SignatureAlgorithm.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSignatureAlgorithm.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SignatureAlgorithm.kt\nio/ktor/network/tls/extensions/SignatureAlgorithmKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,144:1\n1#2:145\n*E\n"
.end annotation


# static fields
.field public static final SupportedSignatureAlgorithms:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/ktor/network/tls/extensions/HashAndSign;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .line 109
    new-instance v0, Lio/ktor/network/tls/extensions/HashAndSign;

    sget-object v1, Lio/ktor/network/tls/extensions/HashAlgorithm;->SHA384:Lio/ktor/network/tls/extensions/HashAlgorithm;

    sget-object v2, Lio/ktor/network/tls/extensions/SignatureAlgorithm;->ECDSA:Lio/ktor/network/tls/extensions/SignatureAlgorithm;

    sget-object v3, Lio/ktor/network/tls/OID;->Companion:Lio/ktor/network/tls/OID$Companion;

    invoke-virtual {v3}, Lio/ktor/network/tls/OID$Companion;->getECDSAwithSHA384Encryption()Lio/ktor/network/tls/OID;

    move-result-object v4

    invoke-direct {v0, v1, v2, v4}, Lio/ktor/network/tls/extensions/HashAndSign;-><init>(Lio/ktor/network/tls/extensions/HashAlgorithm;Lio/ktor/network/tls/extensions/SignatureAlgorithm;Lio/ktor/network/tls/OID;)V

    .line 110
    new-instance v4, Lio/ktor/network/tls/extensions/HashAndSign;

    sget-object v5, Lio/ktor/network/tls/extensions/HashAlgorithm;->SHA256:Lio/ktor/network/tls/extensions/HashAlgorithm;

    invoke-virtual {v3}, Lio/ktor/network/tls/OID$Companion;->getECDSAwithSHA256Encryption()Lio/ktor/network/tls/OID;

    move-result-object v6

    invoke-direct {v4, v5, v2, v6}, Lio/ktor/network/tls/extensions/HashAndSign;-><init>(Lio/ktor/network/tls/extensions/HashAlgorithm;Lio/ktor/network/tls/extensions/SignatureAlgorithm;Lio/ktor/network/tls/OID;)V

    .line 112
    new-instance v2, Lio/ktor/network/tls/extensions/HashAndSign;

    sget-object v6, Lio/ktor/network/tls/extensions/HashAlgorithm;->SHA512:Lio/ktor/network/tls/extensions/HashAlgorithm;

    sget-object v7, Lio/ktor/network/tls/extensions/SignatureAlgorithm;->RSA:Lio/ktor/network/tls/extensions/SignatureAlgorithm;

    invoke-virtual {v3}, Lio/ktor/network/tls/OID$Companion;->getRSAwithSHA512Encryption()Lio/ktor/network/tls/OID;

    move-result-object v8

    invoke-direct {v2, v6, v7, v8}, Lio/ktor/network/tls/extensions/HashAndSign;-><init>(Lio/ktor/network/tls/extensions/HashAlgorithm;Lio/ktor/network/tls/extensions/SignatureAlgorithm;Lio/ktor/network/tls/OID;)V

    .line 113
    new-instance v6, Lio/ktor/network/tls/extensions/HashAndSign;

    invoke-virtual {v3}, Lio/ktor/network/tls/OID$Companion;->getRSAwithSHA384Encryption()Lio/ktor/network/tls/OID;

    move-result-object v8

    invoke-direct {v6, v1, v7, v8}, Lio/ktor/network/tls/extensions/HashAndSign;-><init>(Lio/ktor/network/tls/extensions/HashAlgorithm;Lio/ktor/network/tls/extensions/SignatureAlgorithm;Lio/ktor/network/tls/OID;)V

    .line 114
    new-instance v8, Lio/ktor/network/tls/extensions/HashAndSign;

    invoke-virtual {v3}, Lio/ktor/network/tls/OID$Companion;->getRSAwithSHA256Encryption()Lio/ktor/network/tls/OID;

    move-result-object v1

    invoke-direct {v8, v5, v7, v1}, Lio/ktor/network/tls/extensions/HashAndSign;-><init>(Lio/ktor/network/tls/extensions/HashAlgorithm;Lio/ktor/network/tls/extensions/SignatureAlgorithm;Lio/ktor/network/tls/OID;)V

    .line 115
    new-instance v5, Lio/ktor/network/tls/extensions/HashAndSign;

    sget-object v1, Lio/ktor/network/tls/extensions/HashAlgorithm;->SHA1:Lio/ktor/network/tls/extensions/HashAlgorithm;

    invoke-virtual {v3}, Lio/ktor/network/tls/OID$Companion;->getRSAwithSHA1Encryption()Lio/ktor/network/tls/OID;

    move-result-object v3

    invoke-direct {v5, v1, v7, v3}, Lio/ktor/network/tls/extensions/HashAndSign;-><init>(Lio/ktor/network/tls/extensions/HashAlgorithm;Lio/ktor/network/tls/extensions/SignatureAlgorithm;Lio/ktor/network/tls/OID;)V

    move-object v1, v4

    move-object v3, v6

    move-object v4, v8

    filled-new-array/range {v0 .. v5}, [Lio/ktor/network/tls/extensions/HashAndSign;

    move-result-object v0

    .line 108
    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lio/ktor/network/tls/extensions/SignatureAlgorithmKt;->SupportedSignatureAlgorithms:Ljava/util/List;

    return-void
.end method

.method public static final HashAndSign(BBLjava/lang/String;)Lio/ktor/network/tls/extensions/HashAndSign;
    .registers 4

    .line 96
    sget-object v0, Lio/ktor/network/tls/extensions/HashAlgorithm;->Companion:Lio/ktor/network/tls/extensions/HashAlgorithm$Companion;

    invoke-virtual {v0, p0}, Lio/ktor/network/tls/extensions/HashAlgorithm$Companion;->byCode(B)Lio/ktor/network/tls/extensions/HashAlgorithm;

    move-result-object p0

    .line 97
    sget-object v0, Lio/ktor/network/tls/extensions/SignatureAlgorithm;->Companion:Lio/ktor/network/tls/extensions/SignatureAlgorithm$Companion;

    invoke-virtual {v0, p1}, Lio/ktor/network/tls/extensions/SignatureAlgorithm$Companion;->byCode(B)Lio/ktor/network/tls/extensions/SignatureAlgorithm;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_10

    return-object v0

    :cond_10
    if-eqz p2, :cond_17

    .line 98
    new-instance v0, Lio/ktor/network/tls/OID;

    invoke-direct {v0, p2}, Lio/ktor/network/tls/OID;-><init>(Ljava/lang/String;)V

    .line 100
    :cond_17
    new-instance p2, Lio/ktor/network/tls/extensions/HashAndSign;

    invoke-direct {p2, p0, p1, v0}, Lio/ktor/network/tls/extensions/HashAndSign;-><init>(Lio/ktor/network/tls/extensions/HashAlgorithm;Lio/ktor/network/tls/extensions/SignatureAlgorithm;Lio/ktor/network/tls/OID;)V

    return-object p2
.end method

.method public static synthetic HashAndSign$default(BBLjava/lang/String;ILjava/lang/Object;)Lio/ktor/network/tls/extensions/HashAndSign;
    .registers 5

    and-int/lit8 p3, p3, 0x4

    if-eqz p3, :cond_5

    const/4 p2, 0x0

    .line 95
    :cond_5
    invoke-static {p0, p1, p2}, Lio/ktor/network/tls/extensions/SignatureAlgorithmKt;->HashAndSign(BBLjava/lang/String;)Lio/ktor/network/tls/extensions/HashAndSign;

    move-result-object p0

    return-object p0
.end method

.method public static final byCode(Lio/ktor/network/tls/extensions/HashAndSign$Companion;BB)Lio/ktor/network/tls/extensions/HashAndSign;
    .registers 7

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    sget-object p0, Lio/ktor/network/tls/extensions/SignatureAlgorithm;->ANON:Lio/ktor/network/tls/extensions/SignatureAlgorithm;

    invoke-virtual {p0}, Lio/ktor/network/tls/extensions/SignatureAlgorithm;->getCode()B

    move-result p0

    if-eq p2, p0, :cond_41

    .line 142
    sget-object p0, Lio/ktor/network/tls/extensions/SignatureAlgorithmKt;->SupportedSignatureAlgorithms:Ljava/util/List;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_13
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_36

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lio/ktor/network/tls/extensions/HashAndSign;

    invoke-virtual {v2}, Lio/ktor/network/tls/extensions/HashAndSign;->getHash()Lio/ktor/network/tls/extensions/HashAlgorithm;

    move-result-object v3

    invoke-virtual {v3}, Lio/ktor/network/tls/extensions/HashAlgorithm;->getCode()B

    move-result v3

    if-ne v3, p1, :cond_13

    invoke-virtual {v2}, Lio/ktor/network/tls/extensions/HashAndSign;->getSign()Lio/ktor/network/tls/extensions/SignatureAlgorithm;

    move-result-object v2

    invoke-virtual {v2}, Lio/ktor/network/tls/extensions/SignatureAlgorithm;->getCode()B

    move-result v2

    if-ne v2, p2, :cond_13

    goto :goto_37

    :cond_36
    move-object v0, v1

    :goto_37
    check-cast v0, Lio/ktor/network/tls/extensions/HashAndSign;

    if-nez v0, :cond_40

    const/4 p0, 0x4

    invoke-static {p1, p2, v1, p0, v1}, Lio/ktor/network/tls/extensions/SignatureAlgorithmKt;->HashAndSign$default(BBLjava/lang/String;ILjava/lang/Object;)Lio/ktor/network/tls/extensions/HashAndSign;

    move-result-object v0

    :cond_40
    return-object v0

    .line 140
    :cond_41
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Anonymous signature not allowed."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final getSupportedSignatureAlgorithms()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/ktor/network/tls/extensions/HashAndSign;",
            ">;"
        }
    .end annotation

    .line 108
    sget-object v0, Lio/ktor/network/tls/extensions/SignatureAlgorithmKt;->SupportedSignatureAlgorithms:Ljava/util/List;

    return-object v0
.end method

.method public static final parseSignatureAlgorithms(Lkotlinx/io/Source;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/io/Source;",
            ")",
            "Ljava/util/List<",
            "Lio/ktor/network/tls/extensions/HashAndSign;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    invoke-interface {p0}, Lkotlinx/io/Source;->readShort()S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    .line 121
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 122
    :goto_12
    invoke-static {p0}, Lio/ktor/utils/io/core/ByteReadPacketKt;->getRemaining(Lkotlinx/io/Source;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_27

    .line 123
    invoke-static {p0}, Lio/ktor/network/tls/extensions/SignatureAlgorithmKt;->readHashAndSign(Lkotlinx/io/Source;)Lio/ktor/network/tls/extensions/HashAndSign;

    move-result-object v2

    if-nez v2, :cond_23

    goto :goto_12

    :cond_23
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_12

    .line 126
    :cond_27
    invoke-static {p0}, Lio/ktor/utils/io/core/ByteReadPacketKt;->getRemaining(Lkotlinx/io/Source;)J

    move-result-wide v2

    long-to-int p0, v2

    if-ne p0, v0, :cond_2f

    return-object v1

    .line 127
    :cond_2f
    new-instance p0, Lio/ktor/network/tls/TLSException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid hash and sign packet size: expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", actual "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, v1, v2}, Lio/ktor/network/tls/TLSException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw p0
.end method

.method public static final readHashAndSign(Lkotlinx/io/Source;)Lio/ktor/network/tls/extensions/HashAndSign;
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    invoke-interface {p0}, Lkotlinx/io/Source;->readByte()B

    move-result v0

    .line 135
    invoke-interface {p0}, Lkotlinx/io/Source;->readByte()B

    move-result p0

    .line 136
    sget-object v1, Lio/ktor/network/tls/extensions/HashAndSign;->Companion:Lio/ktor/network/tls/extensions/HashAndSign$Companion;

    invoke-static {v1, v0, p0}, Lio/ktor/network/tls/extensions/SignatureAlgorithmKt;->byCode(Lio/ktor/network/tls/extensions/HashAndSign$Companion;BB)Lio/ktor/network/tls/extensions/HashAndSign;

    move-result-object p0

    return-object p0
.end method
