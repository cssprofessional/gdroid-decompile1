###### Class io.ktor.network.tls.ParserKt (io.ktor.network.tls.ParserKt)
.class public final Lio/ktor/network/tls/ParserKt;
.super Ljava/lang/Object;
.source "Parser.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/ktor/network/tls/ParserKt$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nParser.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Parser.kt\nio/ktor/network/tls/ParserKt\n+ 2 Builder.kt\nio/ktor/utils/io/core/BuilderKt\n*L\n1#1,153:1\n21#2,3:154\n21#2,3:157\n*S KotlinDebug\n*F\n+ 1 Parser.kt\nio/ktor/network/tls/ParserKt\n*L\n33#1:154,3\n78#1:157,3\n*E\n"
.end annotation


# direct methods
.method public static final synthetic access$readTLSVersion(Lio/ktor/utils/io/ByteReadChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lio/ktor/network/tls/ParserKt;->readTLSVersion(Lio/ktor/utils/io/ByteReadChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final readCurveParams(Lkotlinx/io/Source;)Lio/ktor/network/tls/extensions/NamedCurve;
    .registers 4

    .line 94
    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    invoke-interface {p0}, Lkotlinx/io/Source;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 87
    sget-object v1, Lio/ktor/network/tls/ServerKeyExchangeType;->Companion:Lio/ktor/network/tls/ServerKeyExchangeType$Companion;

    invoke-virtual {v1, v0}, Lio/ktor/network/tls/ServerKeyExchangeType$Companion;->byCode(I)Lio/ktor/network/tls/ServerKeyExchangeType;

    move-result-object v0

    sget-object v1, Lio/ktor/network/tls/ParserKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq v0, v1, :cond_38

    if-eq v0, v2, :cond_30

    const/4 p0, 0x3

    if-eq v0, p0, :cond_28

    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    .line 94
    :cond_28
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 95
    const-string v0, "ExplicitChar server key exchange type is not yet supported"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 91
    :cond_30
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 94
    const-string v0, "ExplicitPrime server key exchange type is not yet supported"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 89
    :cond_38
    invoke-interface {p0}, Lkotlinx/io/Source;->readShort()S

    move-result p0

    .line 91
    sget-object v0, Lio/ktor/network/tls/extensions/NamedCurve;->Companion:Lio/ktor/network/tls/extensions/NamedCurve$Companion;

    invoke-virtual {v0, p0}, Lio/ktor/network/tls/extensions/NamedCurve$Companion;->fromCode(S)Lio/ktor/network/tls/extensions/NamedCurve;

    move-result-object p0

    if-eqz p0, :cond_45

    return-object p0

    :cond_45
    new-instance p0, Lio/ktor/network/tls/TLSException;

    const-string v0, "Unknown EC id"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v2, v1}, Lio/ktor/network/tls/TLSException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw p0
.end method

.method public static final readECPoint(Lkotlinx/io/Source;I)Ljava/security/spec/ECPoint;
    .registers 7

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    invoke-interface {p0}, Lkotlinx/io/Source;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 126
    invoke-interface {p0}, Lkotlinx/io/Source;->readByte()B

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-ne v1, v2, :cond_3d

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 129
    div-int/2addr v0, v3

    add-int/lit8 p1, p1, 0x7

    ushr-int/lit8 p1, p1, 0x3

    if-ne p1, v0, :cond_35

    .line 132
    new-instance p1, Ljava/security/spec/ECPoint;

    .line 133
    new-instance v2, Ljava/math/BigInteger;

    invoke-static {p0, v0}, Lkotlinx/io/SourcesKt;->readByteArray(Lkotlinx/io/Source;I)[B

    move-result-object v3

    invoke-direct {v2, v1, v3}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 134
    new-instance v3, Ljava/math/BigInteger;

    invoke-static {p0, v0}, Lkotlinx/io/SourcesKt;->readByteArray(Lkotlinx/io/Source;I)[B

    move-result-object p0

    invoke-direct {v3, v1, p0}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 132
    invoke-direct {p1, v2, v3}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object p1

    .line 130
    :cond_35
    new-instance p0, Lio/ktor/network/tls/TLSException;

    const-string p1, "Invalid point component length"

    invoke-direct {p0, p1, v4, v3, v4}, Lio/ktor/network/tls/TLSException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw p0

    .line 127
    :cond_3d
    new-instance p0, Lio/ktor/network/tls/TLSException;

    const-string p1, "Point should be uncompressed"

    invoke-direct {p0, p1, v4, v3, v4}, Lio/ktor/network/tls/TLSException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw p0
.end method

.method public static final readShortCompatible(Lio/ktor/utils/io/ByteReadChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/ByteReadChannel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lio/ktor/network/tls/ParserKt$readShortCompatible$1;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lio/ktor/network/tls/ParserKt$readShortCompatible$1;

    iget v1, v0, Lio/ktor/network/tls/ParserKt$readShortCompatible$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lio/ktor/network/tls/ParserKt$readShortCompatible$1;->label:I

    goto :goto_18

    :cond_13
    new-instance v0, Lio/ktor/network/tls/ParserKt$readShortCompatible$1;

    invoke-direct {v0, p1}, Lio/ktor/network/tls/ParserKt$readShortCompatible$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p1, v0, Lio/ktor/network/tls/ParserKt$readShortCompatible$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 147
    iget v2, v0, Lio/ktor/network/tls/ParserKt$readShortCompatible$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_42

    if-eq v2, v4, :cond_3a

    if-ne v2, v3, :cond_32

    iget p0, v0, Lio/ktor/network/tls/ParserKt$readShortCompatible$1;->I$0:I

    iget-object v0, v0, Lio/ktor/network/tls/ParserKt$readShortCompatible$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lio/ktor/utils/io/ByteReadChannel;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_6c

    :cond_32
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3a
    iget-object p0, v0, Lio/ktor/network/tls/ParserKt$readShortCompatible$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lio/ktor/utils/io/ByteReadChannel;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_50

    :cond_42
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 148
    iput-object p0, v0, Lio/ktor/network/tls/ParserKt$readShortCompatible$1;->L$0:Ljava/lang/Object;

    iput v4, v0, Lio/ktor/network/tls/ParserKt$readShortCompatible$1;->label:I

    invoke-static {p0, v0}, Lio/ktor/utils/io/ByteReadChannelOperationsKt;->readByte(Lio/ktor/utils/io/ByteReadChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_50

    return-object v1

    :cond_50
    :goto_50
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->byteValue()B

    move-result p1

    and-int/lit16 p1, p1, 0xff

    .line 149
    invoke-static {p0}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v0, Lio/ktor/network/tls/ParserKt$readShortCompatible$1;->L$0:Ljava/lang/Object;

    iput p1, v0, Lio/ktor/network/tls/ParserKt$readShortCompatible$1;->I$0:I

    iput v3, v0, Lio/ktor/network/tls/ParserKt$readShortCompatible$1;->label:I

    invoke-static {p0, v0}, Lio/ktor/utils/io/ByteReadChannelOperationsKt;->readByte(Lio/ktor/utils/io/ByteReadChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_69

    return-object v1

    :cond_69
    move v5, p1

    move-object p1, p0

    move p0, v5

    :goto_6c
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->byteValue()B

    move-result p1

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p0, p0, 0x8

    add-int/2addr p0, p1

    .line 151
    invoke-static {p0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static final readTLSCertificate(Lkotlinx/io/Source;)Ljava/util/List;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/io/Source;",
            ")",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    invoke-static {p0}, Lio/ktor/network/tls/ParserKt;->readTripleByteLength(Lkotlinx/io/Source;)I

    move-result v0

    .line 102
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 103
    const-string v2, "X.509"

    invoke-static {v2}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v3, 0x0

    :goto_18
    if-ge v3, v0, :cond_56

    .line 106
    invoke-static {p0}, Lio/ktor/network/tls/ParserKt;->readTripleByteLength(Lkotlinx/io/Source;)I

    move-result v4

    sub-int v5, v0, v3

    const/4 v6, 0x2

    .line 107
    const-string v7, "Certificate length is too big"

    const/4 v8, 0x0

    if-gt v4, v5, :cond_50

    int-to-long v9, v4

    .line 110
    invoke-static {p0}, Lio/ktor/utils/io/core/ByteReadPacketKt;->getRemaining(Lkotlinx/io/Source;)J

    move-result-wide v11

    cmp-long v5, v9, v11

    if-gtz v5, :cond_4a

    .line 112
    new-array v5, v4, [B

    const/4 v13, 0x6

    const/4 v14, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v9, p0

    move-object v10, v5

    .line 113
    invoke-static/range {v9 .. v14}, Lio/ktor/utils/io/core/ByteReadPacketKt;->readFully$default(Lkotlinx/io/Source;[BIIILjava/lang/Object;)V

    add-int/lit8 v4, v4, 0x3

    add-int/2addr v3, v4

    .line 116
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v2, v4}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v4

    .line 117
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_18

    .line 110
    :cond_4a
    new-instance p0, Lio/ktor/network/tls/TLSException;

    invoke-direct {p0, v7, v8, v6, v8}, Lio/ktor/network/tls/TLSException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw p0

    .line 108
    :cond_50
    new-instance p0, Lio/ktor/network/tls/TLSException;

    invoke-direct {p0, v7, v8, v6, v8}, Lio/ktor/network/tls/TLSException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw p0

    :cond_56
    return-object v1
.end method

.method public static final readTLSHandshake(Lkotlinx/io/Source;)Lio/ktor/network/tls/TLSHandshake;
    .registers 10

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    new-instance v0, Lio/ktor/network/tls/TLSHandshake;

    invoke-direct {v0}, Lio/ktor/network/tls/TLSHandshake;-><init>()V

    .line 30
    invoke-interface {p0}, Lkotlinx/io/Source;->readInt()I

    move-result v1

    .line 31
    sget-object v2, Lio/ktor/network/tls/TLSHandshakeType;->Companion:Lio/ktor/network/tls/TLSHandshakeType$Companion;

    ushr-int/lit8 v3, v1, 0x18

    invoke-virtual {v2, v3}, Lio/ktor/network/tls/TLSHandshakeType$Companion;->byCode(I)Lio/ktor/network/tls/TLSHandshakeType;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/ktor/network/tls/TLSHandshake;->setType(Lio/ktor/network/tls/TLSHandshakeType;)V

    const v2, 0xffffff

    and-int/2addr v1, v2

    .line 21
    new-instance v8, Lkotlinx/io/Buffer;

    invoke-direct {v8}, Lkotlinx/io/Buffer;-><init>()V

    .line 34
    invoke-static {p0, v1}, Lkotlinx/io/SourcesKt;->readByteArray(Lkotlinx/io/Source;I)[B

    move-result-object v3

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, v8

    invoke-static/range {v2 .. v7}, Lio/ktor/utils/io/core/BytePacketBuilderKt;->writeFully$default(Lkotlinx/io/Sink;[BIIILjava/lang/Object;)V

    .line 33
    invoke-virtual {v0, v8}, Lio/ktor/network/tls/TLSHandshake;->setPacket(Lkotlinx/io/Source;)V

    return-object v0
.end method

.method public static final readTLSRecord(Lio/ktor/utils/io/ByteReadChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/ByteReadChannel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ktor/network/tls/TLSRecord;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lio/ktor/network/tls/ParserKt$readTLSRecord$1;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lio/ktor/network/tls/ParserKt$readTLSRecord$1;

    iget v1, v0, Lio/ktor/network/tls/ParserKt$readTLSRecord$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lio/ktor/network/tls/ParserKt$readTLSRecord$1;->label:I

    goto :goto_18

    :cond_13
    new-instance v0, Lio/ktor/network/tls/ParserKt$readTLSRecord$1;

    invoke-direct {v0, p1}, Lio/ktor/network/tls/ParserKt$readTLSRecord$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p1, v0, Lio/ktor/network/tls/ParserKt$readTLSRecord$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 18
    iget v2, v0, Lio/ktor/network/tls/ParserKt$readTLSRecord$1;->label:I

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x1

    const/4 v6, 0x2

    if-eqz v2, :cond_6f

    if-eq v2, v5, :cond_63

    if-eq v2, v6, :cond_57

    if-eq v2, v4, :cond_47

    if-ne v2, v3, :cond_3f

    iget-object p0, v0, Lio/ktor/network/tls/ParserKt$readTLSRecord$1;->L$2:Ljava/lang/Object;

    check-cast p0, Lio/ktor/network/tls/TLSVersion;

    iget-object v1, v0, Lio/ktor/network/tls/ParserKt$readTLSRecord$1;->L$1:Ljava/lang/Object;

    check-cast v1, Lio/ktor/network/tls/TLSRecordType;

    iget-object v0, v0, Lio/ktor/network/tls/ParserKt$readTLSRecord$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lio/ktor/utils/io/ByteReadChannel;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_d8

    :cond_3f
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_47
    iget-object p0, v0, Lio/ktor/network/tls/ParserKt$readTLSRecord$1;->L$2:Ljava/lang/Object;

    check-cast p0, Lio/ktor/network/tls/TLSVersion;

    iget-object v2, v0, Lio/ktor/network/tls/ParserKt$readTLSRecord$1;->L$1:Ljava/lang/Object;

    check-cast v2, Lio/ktor/network/tls/TLSRecordType;

    iget-object v4, v0, Lio/ktor/network/tls/ParserKt$readTLSRecord$1;->L$0:Ljava/lang/Object;

    check-cast v4, Lio/ktor/utils/io/ByteReadChannel;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_b4

    :cond_57
    iget-object p0, v0, Lio/ktor/network/tls/ParserKt$readTLSRecord$1;->L$1:Ljava/lang/Object;

    check-cast p0, Lio/ktor/network/tls/TLSRecordType;

    iget-object v2, v0, Lio/ktor/network/tls/ParserKt$readTLSRecord$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lio/ktor/utils/io/ByteReadChannel;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_9e

    :cond_63
    iget-object p0, v0, Lio/ktor/network/tls/ParserKt$readTLSRecord$1;->L$1:Ljava/lang/Object;

    check-cast p0, Lio/ktor/network/tls/TLSRecordType$Companion;

    iget-object v2, v0, Lio/ktor/network/tls/ParserKt$readTLSRecord$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lio/ktor/utils/io/ByteReadChannel;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_85

    :cond_6f
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 19
    sget-object p1, Lio/ktor/network/tls/TLSRecordType;->Companion:Lio/ktor/network/tls/TLSRecordType$Companion;

    iput-object p0, v0, Lio/ktor/network/tls/ParserKt$readTLSRecord$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lio/ktor/network/tls/ParserKt$readTLSRecord$1;->L$1:Ljava/lang/Object;

    iput v5, v0, Lio/ktor/network/tls/ParserKt$readTLSRecord$1;->label:I

    invoke-static {p0, v0}, Lio/ktor/utils/io/ByteReadChannelOperationsKt;->readByte(Lio/ktor/utils/io/ByteReadChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_81

    return-object v1

    :cond_81
    move-object v7, v2

    move-object v2, p0

    move-object p0, p1

    move-object p1, v7

    :goto_85
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->byteValue()B

    move-result p1

    and-int/lit16 p1, p1, 0xff

    invoke-virtual {p0, p1}, Lio/ktor/network/tls/TLSRecordType$Companion;->byCode(I)Lio/ktor/network/tls/TLSRecordType;

    move-result-object p0

    .line 20
    iput-object v2, v0, Lio/ktor/network/tls/ParserKt$readTLSRecord$1;->L$0:Ljava/lang/Object;

    iput-object p0, v0, Lio/ktor/network/tls/ParserKt$readTLSRecord$1;->L$1:Ljava/lang/Object;

    iput v6, v0, Lio/ktor/network/tls/ParserKt$readTLSRecord$1;->label:I

    invoke-static {v2, v0}, Lio/ktor/network/tls/ParserKt;->readTLSVersion(Lio/ktor/utils/io/ByteReadChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_9e

    return-object v1

    .line 18
    :cond_9e
    :goto_9e
    check-cast p1, Lio/ktor/network/tls/TLSVersion;

    .line 22
    iput-object v2, v0, Lio/ktor/network/tls/ParserKt$readTLSRecord$1;->L$0:Ljava/lang/Object;

    iput-object p0, v0, Lio/ktor/network/tls/ParserKt$readTLSRecord$1;->L$1:Ljava/lang/Object;

    iput-object p1, v0, Lio/ktor/network/tls/ParserKt$readTLSRecord$1;->L$2:Ljava/lang/Object;

    iput v4, v0, Lio/ktor/network/tls/ParserKt$readTLSRecord$1;->label:I

    invoke-static {v2, v0}, Lio/ktor/network/tls/ParserKt;->readShortCompatible(Lio/ktor/utils/io/ByteReadChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v1, :cond_af

    return-object v1

    :cond_af
    move-object v7, v2

    move-object v2, p0

    move-object p0, p1

    move-object p1, v4

    move-object v4, v7

    :goto_b4
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    const v5, 0xffff

    and-int/2addr p1, v5

    const/16 v5, 0x4800

    if-gt p1, v5, :cond_e0

    .line 25
    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v0, Lio/ktor/network/tls/ParserKt$readTLSRecord$1;->L$0:Ljava/lang/Object;

    iput-object v2, v0, Lio/ktor/network/tls/ParserKt$readTLSRecord$1;->L$1:Ljava/lang/Object;

    iput-object p0, v0, Lio/ktor/network/tls/ParserKt$readTLSRecord$1;->L$2:Ljava/lang/Object;

    iput p1, v0, Lio/ktor/network/tls/ParserKt$readTLSRecord$1;->I$0:I

    iput v3, v0, Lio/ktor/network/tls/ParserKt$readTLSRecord$1;->label:I

    invoke-static {v4, p1, v0}, Lio/ktor/utils/io/ByteReadChannelOperationsKt;->readPacket(Lio/ktor/utils/io/ByteReadChannel;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_d7

    return-object v1

    :cond_d7
    move-object v1, v2

    .line 18
    :goto_d8
    check-cast p1, Lkotlinx/io/Source;

    .line 26
    new-instance v0, Lio/ktor/network/tls/TLSRecord;

    invoke-direct {v0, v1, p0, p1}, Lio/ktor/network/tls/TLSRecord;-><init>(Lio/ktor/network/tls/TLSRecordType;Lio/ktor/network/tls/TLSVersion;Lkotlinx/io/Source;)V

    return-object v0

    .line 23
    :cond_e0
    new-instance p0, Lio/ktor/network/tls/TLSException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal TLS frame size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v6, v0}, Lio/ktor/network/tls/TLSException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw p0
.end method

.method public static final readTLSServerHello(Lkotlinx/io/Source;)Lio/ktor/network/tls/TLSServerHello;
    .registers 18

    move-object/from16 v6, p0

    const-string v0, "<this>"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-static/range {p0 .. p0}, Lio/ktor/network/tls/ParserKt;->readTLSVersion(Lkotlinx/io/Source;)Lio/ktor/network/tls/TLSVersion;

    move-result-object v7

    const/16 v8, 0x20

    .line 41
    new-array v9, v8, [B

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object v1, v9

    .line 42
    invoke-static/range {v0 .. v5}, Lio/ktor/utils/io/core/ByteReadPacketKt;->readFully$default(Lkotlinx/io/Source;[BIIILjava/lang/Object;)V

    .line 43
    invoke-interface/range {p0 .. p0}, Lkotlinx/io/Source;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-gt v0, v8, :cond_e3

    .line 49
    new-array v4, v8, [B

    const/4 v3, 0x0

    .line 50
    invoke-static {v6, v4, v3, v0}, Lio/ktor/utils/io/core/ByteReadPacketKt;->readFully(Lkotlinx/io/Source;[BII)V

    .line 52
    invoke-interface/range {p0 .. p0}, Lkotlinx/io/Source;->readShort()S

    move-result v5

    .line 54
    invoke-interface/range {p0 .. p0}, Lkotlinx/io/Source;->readByte()B

    move-result v0

    int-to-short v0, v0

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    if-nez v0, :cond_c7

    .line 61
    invoke-static/range {p0 .. p0}, Lio/ktor/utils/io/core/ByteReadPacketKt;->getRemaining(Lkotlinx/io/Source;)J

    move-result-wide v10

    long-to-int v3, v10

    if-nez v3, :cond_4e

    new-instance v10, Lio/ktor/network/tls/TLSServerHello;

    const/16 v8, 0x20

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v1, v10

    move-object v2, v7

    move-object v3, v9

    move v6, v0

    move-object v7, v12

    move-object v9, v11

    invoke-direct/range {v1 .. v9}, Lio/ktor/network/tls/TLSServerHello;-><init>(Lio/ktor/network/tls/TLSVersion;[B[BSSLjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v10

    .line 64
    :cond_4e
    invoke-interface/range {p0 .. p0}, Lkotlinx/io/Source;->readShort()S

    move-result v3

    const v8, 0xffff

    and-int/2addr v3, v8

    .line 66
    invoke-static/range {p0 .. p0}, Lio/ktor/utils/io/core/ByteReadPacketKt;->getRemaining(Lkotlinx/io/Source;)J

    move-result-wide v10

    long-to-int v10, v10

    if-ne v10, v3, :cond_a4

    .line 70
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 71
    :goto_62
    invoke-static/range {p0 .. p0}, Lio/ktor/utils/io/core/ByteReadPacketKt;->getRemaining(Lkotlinx/io/Source;)J

    move-result-wide v1

    const-wide/16 v11, 0x0

    cmp-long v1, v1, v11

    if-lez v1, :cond_99

    .line 72
    invoke-interface/range {p0 .. p0}, Lkotlinx/io/Source;->readShort()S

    move-result v1

    and-int/2addr v1, v8

    .line 73
    invoke-interface/range {p0 .. p0}, Lkotlinx/io/Source;->readShort()S

    move-result v2

    and-int/2addr v2, v8

    .line 76
    sget-object v3, Lio/ktor/network/tls/extensions/TLSExtensionType;->Companion:Lio/ktor/network/tls/extensions/TLSExtensionType$Companion;

    invoke-virtual {v3, v1}, Lio/ktor/network/tls/extensions/TLSExtensionType$Companion;->byCode(I)Lio/ktor/network/tls/extensions/TLSExtensionType;

    move-result-object v1

    .line 21
    new-instance v3, Lkotlinx/io/Buffer;

    invoke-direct {v3}, Lkotlinx/io/Buffer;-><init>()V

    .line 78
    invoke-static {v6, v2}, Lkotlinx/io/SourcesKt;->readByteArray(Lkotlinx/io/Source;I)[B

    move-result-object v12

    const/4 v15, 0x6

    const/16 v16, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v11, v3

    invoke-static/range {v11 .. v16}, Lio/ktor/utils/io/core/BytePacketBuilderKt;->writeFully$default(Lkotlinx/io/Sink;[BIIILjava/lang/Object;)V

    sget-object v11, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 75
    new-instance v11, Lio/ktor/network/tls/extensions/TLSExtension;

    invoke-direct {v11, v1, v2, v3}, Lio/ktor/network/tls/extensions/TLSExtension;-><init>(Lio/ktor/network/tls/extensions/TLSExtensionType;ILkotlinx/io/Source;)V

    invoke-interface {v10, v11}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_62

    .line 82
    :cond_99
    new-instance v8, Lio/ktor/network/tls/TLSServerHello;

    move-object v1, v8

    move-object v2, v7

    move-object v3, v9

    move v6, v0

    move-object v7, v10

    invoke-direct/range {v1 .. v7}, Lio/ktor/network/tls/TLSServerHello;-><init>(Lio/ktor/network/tls/TLSVersion;[B[BSSLjava/util/List;)V

    return-object v8

    .line 67
    :cond_a4
    new-instance v0, Lio/ktor/network/tls/TLSException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid extensions size: requested "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", available "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p0 .. p0}, Lio/ktor/utils/io/core/ByteReadPacketKt;->getRemaining(Lkotlinx/io/Source;)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3, v2, v1, v2}, Lio/ktor/network/tls/TLSException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v0

    .line 56
    :cond_c7
    new-instance v3, Lio/ktor/network/tls/TLSException;

    .line 57
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unsupported TLS compression method "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " (only null 0 compression method is supported)"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 56
    invoke-direct {v3, v0, v2, v1, v2}, Lio/ktor/network/tls/TLSException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v3

    .line 46
    :cond_e3
    new-instance v3, Lio/ktor/network/tls/TLSException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sessionId length limit of 32 bytes exceeded: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " specified"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0, v2, v1, v2}, Lio/ktor/network/tls/TLSException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v3
.end method

.method public static final readTLSVersion(Lkotlinx/io/Source;)Lio/ktor/network/tls/TLSVersion;
    .registers 3

    .line 142
    sget-object v0, Lio/ktor/network/tls/TLSVersion;->Companion:Lio/ktor/network/tls/TLSVersion$Companion;

    invoke-interface {p0}, Lkotlinx/io/Source;->readShort()S

    move-result p0

    const v1, 0xffff

    and-int/2addr p0, v1

    invoke-virtual {v0, p0}, Lio/ktor/network/tls/TLSVersion$Companion;->byCode(I)Lio/ktor/network/tls/TLSVersion;

    move-result-object p0

    return-object p0
.end method

.method public static final readTLSVersion(Lio/ktor/utils/io/ByteReadChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/ByteReadChannel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ktor/network/tls/TLSVersion;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lio/ktor/network/tls/ParserKt$readTLSVersion$1;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lio/ktor/network/tls/ParserKt$readTLSVersion$1;

    iget v1, v0, Lio/ktor/network/tls/ParserKt$readTLSVersion$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lio/ktor/network/tls/ParserKt$readTLSVersion$1;->label:I

    goto :goto_18

    :cond_13
    new-instance v0, Lio/ktor/network/tls/ParserKt$readTLSVersion$1;

    invoke-direct {v0, p1}, Lio/ktor/network/tls/ParserKt$readTLSVersion$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p1, v0, Lio/ktor/network/tls/ParserKt$readTLSVersion$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 138
    iget v2, v0, Lio/ktor/network/tls/ParserKt$readTLSVersion$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_39

    if-ne v2, v3, :cond_31

    iget-object p0, v0, Lio/ktor/network/tls/ParserKt$readTLSVersion$1;->L$1:Ljava/lang/Object;

    check-cast p0, Lio/ktor/network/tls/TLSVersion$Companion;

    iget-object v0, v0, Lio/ktor/network/tls/ParserKt$readTLSVersion$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lio/ktor/utils/io/ByteReadChannel;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_52

    :cond_31
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_39
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 139
    sget-object p1, Lio/ktor/network/tls/TLSVersion;->Companion:Lio/ktor/network/tls/TLSVersion$Companion;

    invoke-static {p0}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v0, Lio/ktor/network/tls/ParserKt$readTLSVersion$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lio/ktor/network/tls/ParserKt$readTLSVersion$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Lio/ktor/network/tls/ParserKt$readTLSVersion$1;->label:I

    invoke-static {p0, v0}, Lio/ktor/network/tls/ParserKt;->readShortCompatible(Lio/ktor/utils/io/ByteReadChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_4f

    return-object v1

    :cond_4f
    move-object v4, p1

    move-object p1, p0

    move-object p0, v4

    :goto_52
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    const v0, 0xffff

    and-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lio/ktor/network/tls/TLSVersion$Companion;->byCode(I)Lio/ktor/network/tls/TLSVersion;

    move-result-object p0

    return-object p0
.end method

.method public static final readTripleByteLength(Lkotlinx/io/Source;)I
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    invoke-interface {p0}, Lkotlinx/io/Source;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    .line 145
    invoke-interface {p0}, Lkotlinx/io/Source;->readShort()S

    move-result p0

    const v1, 0xffff

    and-int/2addr p0, v1

    or-int/2addr p0, v0

    return p0
.end method

###### Class io.ktor.network.tls.ParserKt.WhenMappings (io.ktor.network.tls.ParserKt$WhenMappings)
.class public final synthetic Lio/ktor/network/tls/ParserKt$WhenMappings;
.super Ljava/lang/Object;
.source "Parser.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/network/tls/ParserKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1019
    name = "WhenMappings"
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 0
    invoke-static {}, Lio/ktor/network/tls/ServerKeyExchangeType;->values()[Lio/ktor/network/tls/ServerKeyExchangeType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_7
    sget-object v1, Lio/ktor/network/tls/ServerKeyExchangeType;->NamedCurve:Lio/ktor/network/tls/ServerKeyExchangeType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_10} :catch_10

    :catch_10
    :try_start_10
    sget-object v1, Lio/ktor/network/tls/ServerKeyExchangeType;->ExplicitPrime:Lio/ktor/network/tls/ServerKeyExchangeType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_19} :catch_19

    :catch_19
    :try_start_19
    sget-object v1, Lio/ktor/network/tls/ServerKeyExchangeType;->ExplicitChar:Lio/ktor/network/tls/ServerKeyExchangeType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_22} :catch_22

    :catch_22
    sput-object v0, Lio/ktor/network/tls/ParserKt$WhenMappings;->$EnumSwitchMapping$0:[I

    return-void
.end method

###### Class io.ktor.network.tls.ParserKt.AnonymousClass1 (io.ktor.network.tls.ParserKt$readShortCompatible$1)
.class public final Lio/ktor/network/tls/ParserKt$readShortCompatible$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "Parser.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/network/tls/ParserKt;->readShortCompatible(Lio/ktor/utils/io/ByteReadChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "io.ktor.network.tls.ParserKt"
    f = "Parser.kt"
    l = {
        0x94,
        0x95
    }
    m = "readShortCompatible"
    v = 0x1
.end annotation


# instance fields
.field public I$0:I

.field public L$0:Ljava/lang/Object;

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
            "Lio/ktor/network/tls/ParserKt$readShortCompatible$1;",
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
    iput-object p1, p0, Lio/ktor/network/tls/ParserKt$readShortCompatible$1;->result:Ljava/lang/Object;

    iget p1, p0, Lio/ktor/network/tls/ParserKt$readShortCompatible$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lio/ktor/network/tls/ParserKt$readShortCompatible$1;->label:I

    const/4 p1, 0x0

    invoke-static {p1, p0}, Lio/ktor/network/tls/ParserKt;->readShortCompatible(Lio/ktor/utils/io/ByteReadChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

###### Class io.ktor.network.tls.ParserKt.C00541 (io.ktor.network.tls.ParserKt$readTLSRecord$1)
.class public final Lio/ktor/network/tls/ParserKt$readTLSRecord$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "Parser.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/network/tls/ParserKt;->readTLSRecord(Lio/ktor/utils/io/ByteReadChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "io.ktor.network.tls.ParserKt"
    f = "Parser.kt"
    l = {
        0x13,
        0x14,
        0x16,
        0x19
    }
    m = "readTLSRecord"
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
            "Lio/ktor/network/tls/ParserKt$readTLSRecord$1;",
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
    iput-object p1, p0, Lio/ktor/network/tls/ParserKt$readTLSRecord$1;->result:Ljava/lang/Object;

    iget p1, p0, Lio/ktor/network/tls/ParserKt$readTLSRecord$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lio/ktor/network/tls/ParserKt$readTLSRecord$1;->label:I

    const/4 p1, 0x0

    invoke-static {p1, p0}, Lio/ktor/network/tls/ParserKt;->readTLSRecord(Lio/ktor/utils/io/ByteReadChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

###### Class io.ktor.network.tls.ParserKt.C00551 (io.ktor.network.tls.ParserKt$readTLSVersion$1)
.class public final Lio/ktor/network/tls/ParserKt$readTLSVersion$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "Parser.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/network/tls/ParserKt;->readTLSVersion(Lio/ktor/utils/io/ByteReadChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "io.ktor.network.tls.ParserKt"
    f = "Parser.kt"
    l = {
        0x8b
    }
    m = "readTLSVersion"
    v = 0x1
.end annotation


# instance fields
.field public L$0:Ljava/lang/Object;

.field public L$1:Ljava/lang/Object;

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
            "Lio/ktor/network/tls/ParserKt$readTLSVersion$1;",
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
    iput-object p1, p0, Lio/ktor/network/tls/ParserKt$readTLSVersion$1;->result:Ljava/lang/Object;

    iget p1, p0, Lio/ktor/network/tls/ParserKt$readTLSVersion$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lio/ktor/network/tls/ParserKt$readTLSVersion$1;->label:I

    const/4 p1, 0x0

    invoke-static {p1, p0}, Lio/ktor/network/tls/ParserKt;->access$readTLSVersion(Lio/ktor/utils/io/ByteReadChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
