###### Class in.dragonbra.javasteam.util.crypto.AsnKeyParser (in.dragonbra.javasteam.util.crypto.AsnKeyParser)
.class public Lin/dragonbra/javasteam/util/crypto/AsnKeyParser;
.super Ljava/lang/Object;
.source "AsnKeyParser.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final logger:Lin/dragonbra/javasteam/util/log/Logger;


# instance fields
.field private final _parser:Lin/dragonbra/javasteam/util/crypto/AsnParser;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 14
    const-class v0, Lin/dragonbra/javasteam/util/crypto/AsnKeyParser;

    invoke-static {v0}, Lin/dragonbra/javasteam/util/log/LogManager;->getLogger(Ljava/lang/Class;)Lin/dragonbra/javasteam/util/log/Logger;

    move-result-object v0

    sput-object v0, Lin/dragonbra/javasteam/util/crypto/AsnKeyParser;->logger:Lin/dragonbra/javasteam/util/log/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Lin/dragonbra/javasteam/util/crypto/AsnParser;

    invoke-direct {v0, p1}, Lin/dragonbra/javasteam/util/crypto/AsnParser;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lin/dragonbra/javasteam/util/crypto/AsnKeyParser;->_parser:Lin/dragonbra/javasteam/util/crypto/AsnParser;

    return-void
.end method

.method public static equalOid([B[B)Z
    .registers 6

    .line 36
    array-length v0, p0

    array-length v1, p1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_6

    return v2

    :cond_6
    move v0, v2

    .line 40
    :goto_7
    array-length v1, p0

    if-ge v0, v1, :cond_14

    .line 41
    aget-byte v1, p0, v0

    aget-byte v3, p1, v0

    if-eq v1, v3, :cond_11

    return v2

    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_14
    const/4 p0, 0x1

    return p0
.end method

.method public static trimLeadingZero([B)[B
    .registers 5

    const/4 v0, 0x0

    .line 24
    aget-byte v1, p0, v0

    if-nez v1, :cond_13

    array-length v1, p0

    const/4 v2, 0x1

    if-le v1, v2, :cond_13

    .line 25
    array-length v1, p0

    sub-int/2addr v1, v2

    new-array v1, v1, [B

    .line 26
    array-length v3, p0

    sub-int/2addr v3, v2

    invoke-static {p0, v2, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1a

    .line 28
    :cond_13
    array-length v1, p0

    new-array v1, v1, [B

    .line 29
    array-length v2, p0

    invoke-static {p0, v0, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_1a
    return-object v1
.end method


# virtual methods
.method public parseRSAPublicKey()[Ljava/math/BigInteger;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lin/dragonbra/javasteam/util/crypto/BerDecodeException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 57
    iget-object v1, p0, Lin/dragonbra/javasteam/util/crypto/AsnKeyParser;->_parser:Lin/dragonbra/javasteam/util/crypto/AsnParser;

    invoke-virtual {v1}, Lin/dragonbra/javasteam/util/crypto/AsnParser;->currentPosition()I

    move-result v1

    .line 60
    iget-object v2, p0, Lin/dragonbra/javasteam/util/crypto/AsnKeyParser;->_parser:Lin/dragonbra/javasteam/util/crypto/AsnParser;

    invoke-virtual {v2}, Lin/dragonbra/javasteam/util/crypto/AsnParser;->nextSequence()I

    move-result v2

    .line 61
    iget-object v3, p0, Lin/dragonbra/javasteam/util/crypto/AsnKeyParser;->_parser:Lin/dragonbra/javasteam/util/crypto/AsnParser;

    invoke-virtual {v3}, Lin/dragonbra/javasteam/util/crypto/AsnParser;->remainingBytes()I

    move-result v3

    if-ne v2, v3, :cond_102

    .line 66
    iget-object v1, p0, Lin/dragonbra/javasteam/util/crypto/AsnKeyParser;->_parser:Lin/dragonbra/javasteam/util/crypto/AsnParser;

    invoke-virtual {v1}, Lin/dragonbra/javasteam/util/crypto/AsnParser;->currentPosition()I

    move-result v1

    .line 69
    iget-object v2, p0, Lin/dragonbra/javasteam/util/crypto/AsnKeyParser;->_parser:Lin/dragonbra/javasteam/util/crypto/AsnParser;

    invoke-virtual {v2}, Lin/dragonbra/javasteam/util/crypto/AsnParser;->nextSequence()I

    move-result v2

    .line 70
    iget-object v3, p0, Lin/dragonbra/javasteam/util/crypto/AsnKeyParser;->_parser:Lin/dragonbra/javasteam/util/crypto/AsnParser;

    invoke-virtual {v3}, Lin/dragonbra/javasteam/util/crypto/AsnParser;->remainingBytes()I

    move-result v3

    if-gt v2, v3, :cond_e4

    .line 75
    iget-object v1, p0, Lin/dragonbra/javasteam/util/crypto/AsnKeyParser;->_parser:Lin/dragonbra/javasteam/util/crypto/AsnParser;

    invoke-virtual {v1}, Lin/dragonbra/javasteam/util/crypto/AsnParser;->currentPosition()I

    move-result v1

    .line 77
    iget-object v2, p0, Lin/dragonbra/javasteam/util/crypto/AsnKeyParser;->_parser:Lin/dragonbra/javasteam/util/crypto/AsnParser;

    invoke-virtual {v2}, Lin/dragonbra/javasteam/util/crypto/AsnParser;->nextOID()[B

    move-result-object v2

    const/16 v3, 0x9

    .line 78
    new-array v3, v3, [B

    fill-array-data v3, :array_120

    .line 79
    invoke-static {v2, v3}, Lin/dragonbra/javasteam/util/crypto/AsnKeyParser;->equalOid([B[B)Z

    move-result v2

    if-eqz v2, :cond_dc

    .line 84
    iget-object v1, p0, Lin/dragonbra/javasteam/util/crypto/AsnKeyParser;->_parser:Lin/dragonbra/javasteam/util/crypto/AsnParser;

    invoke-virtual {v1}, Lin/dragonbra/javasteam/util/crypto/AsnParser;->isNextNull()Z

    move-result v1

    if-eqz v1, :cond_50

    .line 85
    iget-object v1, p0, Lin/dragonbra/javasteam/util/crypto/AsnKeyParser;->_parser:Lin/dragonbra/javasteam/util/crypto/AsnParser;

    invoke-virtual {v1}, Lin/dragonbra/javasteam/util/crypto/AsnParser;->nextNull()I

    goto :goto_55

    .line 89
    :cond_50
    iget-object v1, p0, Lin/dragonbra/javasteam/util/crypto/AsnKeyParser;->_parser:Lin/dragonbra/javasteam/util/crypto/AsnParser;

    invoke-virtual {v1}, Lin/dragonbra/javasteam/util/crypto/AsnParser;->next()[B

    .line 93
    :goto_55
    iget-object v1, p0, Lin/dragonbra/javasteam/util/crypto/AsnKeyParser;->_parser:Lin/dragonbra/javasteam/util/crypto/AsnParser;

    invoke-virtual {v1}, Lin/dragonbra/javasteam/util/crypto/AsnParser;->currentPosition()I

    move-result v1

    .line 96
    iget-object v2, p0, Lin/dragonbra/javasteam/util/crypto/AsnKeyParser;->_parser:Lin/dragonbra/javasteam/util/crypto/AsnParser;

    invoke-virtual {v2}, Lin/dragonbra/javasteam/util/crypto/AsnParser;->nextBitString()I

    move-result v2

    .line 97
    iget-object v3, p0, Lin/dragonbra/javasteam/util/crypto/AsnKeyParser;->_parser:Lin/dragonbra/javasteam/util/crypto/AsnParser;

    invoke-virtual {v3}, Lin/dragonbra/javasteam/util/crypto/AsnParser;->remainingBytes()I

    move-result v3

    if-gt v2, v3, :cond_be

    .line 102
    iget-object v1, p0, Lin/dragonbra/javasteam/util/crypto/AsnKeyParser;->_parser:Lin/dragonbra/javasteam/util/crypto/AsnParser;

    invoke-virtual {v1}, Lin/dragonbra/javasteam/util/crypto/AsnParser;->currentPosition()I

    move-result v1

    .line 105
    iget-object v2, p0, Lin/dragonbra/javasteam/util/crypto/AsnKeyParser;->_parser:Lin/dragonbra/javasteam/util/crypto/AsnParser;

    invoke-virtual {v2}, Lin/dragonbra/javasteam/util/crypto/AsnParser;->nextSequence()I

    move-result v2

    .line 106
    iget-object v3, p0, Lin/dragonbra/javasteam/util/crypto/AsnKeyParser;->_parser:Lin/dragonbra/javasteam/util/crypto/AsnParser;

    invoke-virtual {v3}, Lin/dragonbra/javasteam/util/crypto/AsnParser;->remainingBytes()I

    move-result v3

    if-lt v2, v3, :cond_a0

    .line 110
    new-instance v1, Ljava/math/BigInteger;

    iget-object v2, p0, Lin/dragonbra/javasteam/util/crypto/AsnKeyParser;->_parser:Lin/dragonbra/javasteam/util/crypto/AsnParser;

    invoke-virtual {v2}, Lin/dragonbra/javasteam/util/crypto/AsnParser;->nextInteger()[B

    move-result-object v2

    invoke-static {v2}, Lin/dragonbra/javasteam/util/crypto/AsnKeyParser;->trimLeadingZero([B)[B

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 111
    new-instance v2, Ljava/math/BigInteger;

    iget-object p0, p0, Lin/dragonbra/javasteam/util/crypto/AsnKeyParser;->_parser:Lin/dragonbra/javasteam/util/crypto/AsnParser;

    invoke-virtual {p0}, Lin/dragonbra/javasteam/util/crypto/AsnParser;->nextInteger()[B

    move-result-object p0

    invoke-static {p0}, Lin/dragonbra/javasteam/util/crypto/AsnKeyParser;->trimLeadingZero([B)[B

    move-result-object p0

    invoke-direct {v2, v0, p0}, Ljava/math/BigInteger;-><init>(I[B)V

    filled-new-array {v1, v2}, [Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    .line 107
    :cond_a0
    new-instance v0, Lin/dragonbra/javasteam/util/crypto/BerDecodeException;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object p0, p0, Lin/dragonbra/javasteam/util/crypto/AsnKeyParser;->_parser:Lin/dragonbra/javasteam/util/crypto/AsnParser;

    invoke-virtual {p0}, Lin/dragonbra/javasteam/util/crypto/AsnParser;->remainingBytes()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v2, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v2, "Incorrect RSAPublicKey Size. Specified: %d, Remaining: %d"

    invoke-static {v2, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, v1}, Lin/dragonbra/javasteam/util/crypto/BerDecodeException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 98
    :cond_be
    new-instance v0, Lin/dragonbra/javasteam/util/crypto/BerDecodeException;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object p0, p0, Lin/dragonbra/javasteam/util/crypto/AsnKeyParser;->_parser:Lin/dragonbra/javasteam/util/crypto/AsnParser;

    invoke-virtual {p0}, Lin/dragonbra/javasteam/util/crypto/AsnParser;->remainingBytes()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v2, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v2, "Incorrect PublicKey Size. Specified: %d, Remaining: %d"

    invoke-static {v2, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, v1}, Lin/dragonbra/javasteam/util/crypto/BerDecodeException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 80
    :cond_dc
    new-instance p0, Lin/dragonbra/javasteam/util/crypto/BerDecodeException;

    const-string v0, "Expected OID 1.2.840.113549.1.1.1"

    invoke-direct {p0, v0, v1}, Lin/dragonbra/javasteam/util/crypto/BerDecodeException;-><init>(Ljava/lang/String;I)V

    throw p0

    .line 71
    :cond_e4
    new-instance v0, Lin/dragonbra/javasteam/util/crypto/BerDecodeException;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object p0, p0, Lin/dragonbra/javasteam/util/crypto/AsnKeyParser;->_parser:Lin/dragonbra/javasteam/util/crypto/AsnParser;

    invoke-virtual {p0}, Lin/dragonbra/javasteam/util/crypto/AsnParser;->remainingBytes()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v2, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v2, "Incorrect AlgorithmIdentifier Size. Specified: %d, Remaining: %d"

    invoke-static {v2, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, v1}, Lin/dragonbra/javasteam/util/crypto/BerDecodeException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 62
    :cond_102
    new-instance v0, Lin/dragonbra/javasteam/util/crypto/BerDecodeException;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object p0, p0, Lin/dragonbra/javasteam/util/crypto/AsnKeyParser;->_parser:Lin/dragonbra/javasteam/util/crypto/AsnParser;

    invoke-virtual {p0}, Lin/dragonbra/javasteam/util/crypto/AsnParser;->remainingBytes()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v2, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v2, "Incorrect Sequence Size. Specified: %d, Remaining: %d"

    invoke-static {v2, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, v1}, Lin/dragonbra/javasteam/util/crypto/BerDecodeException;-><init>(Ljava/lang/String;I)V

    throw v0

    :array_120
    .array-data 1
        0x2at
        -0x7at
        0x48t
        -0x7at
        -0x9t
        0xdt
        0x1t
        0x1t
        0x1t
    .end array-data
.end method
