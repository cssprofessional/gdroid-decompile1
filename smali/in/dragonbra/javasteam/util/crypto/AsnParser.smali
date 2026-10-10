###### Class in.dragonbra.javasteam.util.crypto.AsnParser (in.dragonbra.javasteam.util.crypto.AsnParser)
.class Lin/dragonbra/javasteam/util/crypto/AsnParser;
.super Ljava/lang/Object;
.source "AsnParser.java"


# instance fields
.field private final initialCount:I

.field private final octets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Collection;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lin/dragonbra/javasteam/util/crypto/AsnParser;->octets:Ljava/util/List;

    .line 17
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 18
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lin/dragonbra/javasteam/util/crypto/AsnParser;->initialCount:I

    return-void
.end method

.method private getOctets(I)[B
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lin/dragonbra/javasteam/util/crypto/BerDecodeException;
        }
    .end annotation

    .line 80
    invoke-virtual {p0}, Lin/dragonbra/javasteam/util/crypto/AsnParser;->currentPosition()I

    move-result v0

    .line 82
    invoke-virtual {p0}, Lin/dragonbra/javasteam/util/crypto/AsnParser;->remainingBytes()I

    move-result v1

    if-gt p1, v1, :cond_22

    .line 86
    new-array v0, p1, [B

    const/4 v1, 0x0

    move v2, v1

    :goto_e
    if-ge v2, p1, :cond_21

    .line 89
    iget-object v3, p0, Lin/dragonbra/javasteam/util/crypto/AsnParser;->octets:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Byte;

    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    aput-byte v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_21
    return-object v0

    .line 83
    :cond_22
    new-instance v1, Lin/dragonbra/javasteam/util/crypto/BerDecodeException;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0}, Lin/dragonbra/javasteam/util/crypto/AsnParser;->remainingBytes()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p1, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "Incorrect size. Specified: %d, Remaining: %d"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Lin/dragonbra/javasteam/util/crypto/BerDecodeException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method


# virtual methods
.method public currentPosition()I
    .registers 2

    .line 22
    iget v0, p0, Lin/dragonbra/javasteam/util/crypto/AsnParser;->initialCount:I

    iget-object p0, p0, Lin/dragonbra/javasteam/util/crypto/AsnParser;->octets:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    sub-int/2addr v0, p0

    return v0
.end method

.method public getLength()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lin/dragonbra/javasteam/util/crypto/BerDecodeException;
        }
    .end annotation

    .line 33
    invoke-virtual {p0}, Lin/dragonbra/javasteam/util/crypto/AsnParser;->currentPosition()I

    move-result v0

    .line 35
    invoke-virtual {p0}, Lin/dragonbra/javasteam/util/crypto/AsnParser;->getNextOctet()B

    move-result v1

    and-int/lit8 v2, v1, 0x7f

    if-ne v1, v2, :cond_d

    return v1

    :cond_d
    const/4 v1, 0x4

    if-gt v2, v1, :cond_21

    const/4 v0, 0x0

    :goto_11
    add-int/lit8 v1, v2, -0x1

    if-eqz v2, :cond_1e

    shl-int/lit8 v0, v0, 0x8

    .line 50
    invoke-virtual {p0}, Lin/dragonbra/javasteam/util/crypto/AsnParser;->getNextOctet()B

    move-result v2

    or-int/2addr v0, v2

    move v2, v1

    goto :goto_11

    :cond_1e
    and-int/lit16 p0, v0, 0xff

    return p0

    .line 43
    :cond_21
    new-instance p0, Lin/dragonbra/javasteam/util/crypto/BerDecodeException;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Invalid Length Encoding. Length uses %d _octets"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lin/dragonbra/javasteam/util/crypto/BerDecodeException;-><init>(Ljava/lang/String;I)V

    throw p0
.end method

.method public getNextOctet()B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lin/dragonbra/javasteam/util/crypto/BerDecodeException;
        }
    .end annotation

    .line 70
    invoke-virtual {p0}, Lin/dragonbra/javasteam/util/crypto/AsnParser;->currentPosition()I

    move-result v0

    .line 72
    invoke-virtual {p0}, Lin/dragonbra/javasteam/util/crypto/AsnParser;->remainingBytes()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_13

    .line 76
    invoke-direct {p0, v2}, Lin/dragonbra/javasteam/util/crypto/AsnParser;->getOctets(I)[B

    move-result-object p0

    const/4 v0, 0x0

    aget-byte p0, p0, v0

    return p0

    .line 73
    :cond_13
    new-instance v1, Lin/dragonbra/javasteam/util/crypto/BerDecodeException;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0}, Lin/dragonbra/javasteam/util/crypto/AsnParser;->remainingBytes()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v2, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v2, "Incorrect size. Specified: %d, Remaining: %d"

    invoke-static {v2, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Lin/dragonbra/javasteam/util/crypto/BerDecodeException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method public isNextBitString()Z
    .registers 3

    .line 157
    iget-object p0, p0, Lin/dragonbra/javasteam/util/crypto/AsnParser;->octets:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Byte;

    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result p0

    const/4 v1, 0x3

    if-ne v1, p0, :cond_11

    const/4 v0, 0x1

    :cond_11
    return v0
.end method

.method public isNextInteger()Z
    .registers 3

    .line 183
    iget-object p0, p0, Lin/dragonbra/javasteam/util/crypto/AsnParser;->octets:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Byte;

    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result p0

    const/4 v1, 0x2

    if-ne v1, p0, :cond_11

    const/4 v0, 0x1

    :cond_11
    return v0
.end method

.method public isNextNull()Z
    .registers 3

    .line 96
    iget-object p0, p0, Lin/dragonbra/javasteam/util/crypto/AsnParser;->octets:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Byte;

    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result p0

    const/4 v1, 0x5

    if-ne v1, p0, :cond_11

    const/4 v0, 0x1

    :cond_11
    return v0
.end method

.method public isNextOctetString()Z
    .registers 3

    .line 137
    iget-object p0, p0, Lin/dragonbra/javasteam/util/crypto/AsnParser;->octets:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Byte;

    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result p0

    const/4 v1, 0x4

    if-ne v1, p0, :cond_11

    const/4 v0, 0x1

    :cond_11
    return v0
.end method

.method public isNextSequence()Z
    .registers 3

    .line 117
    iget-object p0, p0, Lin/dragonbra/javasteam/util/crypto/AsnParser;->octets:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Byte;

    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result p0

    const/16 v1, 0x30

    if-ne v1, p0, :cond_12

    const/4 v0, 0x1

    :cond_12
    return v0
.end method

.method public next()[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lin/dragonbra/javasteam/util/crypto/BerDecodeException;
        }
    .end annotation

    .line 57
    invoke-virtual {p0}, Lin/dragonbra/javasteam/util/crypto/AsnParser;->currentPosition()I

    move-result v0

    .line 59
    invoke-virtual {p0}, Lin/dragonbra/javasteam/util/crypto/AsnParser;->getNextOctet()B

    .line 61
    invoke-virtual {p0}, Lin/dragonbra/javasteam/util/crypto/AsnParser;->getLength()I

    move-result v1

    .line 62
    invoke-virtual {p0}, Lin/dragonbra/javasteam/util/crypto/AsnParser;->remainingBytes()I

    move-result v2

    if-gt v1, v2, :cond_16

    .line 66
    invoke-direct {p0, v1}, Lin/dragonbra/javasteam/util/crypto/AsnParser;->getOctets(I)[B

    move-result-object p0

    return-object p0

    .line 63
    :cond_16
    new-instance v2, Lin/dragonbra/javasteam/util/crypto/BerDecodeException;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Lin/dragonbra/javasteam/util/crypto/AsnParser;->remainingBytes()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "Incorrect Size. Specified: %d, Remaining: %d"

    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0, v0}, Lin/dragonbra/javasteam/util/crypto/BerDecodeException;-><init>(Ljava/lang/String;I)V

    throw v2
.end method

.method public nextBitString()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lin/dragonbra/javasteam/util/crypto/BerDecodeException;
        }
    .end annotation

    .line 161
    invoke-virtual {p0}, Lin/dragonbra/javasteam/util/crypto/AsnParser;->currentPosition()I

    move-result v0

    .line 163
    invoke-virtual {p0}, Lin/dragonbra/javasteam/util/crypto/AsnParser;->getNextOctet()B

    move-result v1

    const/4 v2, 0x3

    if-ne v2, v1, :cond_2e

    .line 168
    invoke-virtual {p0}, Lin/dragonbra/javasteam/util/crypto/AsnParser;->getLength()I

    move-result v1

    .line 171
    iget-object v2, p0, Lin/dragonbra/javasteam/util/crypto/AsnParser;->octets:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    .line 172
    iget-object p0, p0, Lin/dragonbra/javasteam/util/crypto/AsnParser;->octets:Ljava/util/List;

    invoke-interface {p0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    if-nez v2, :cond_26

    return v1

    .line 176
    :cond_26
    new-instance p0, Lin/dragonbra/javasteam/util/crypto/BerDecodeException;

    const-string v1, "The first octet of BitString must be 0"

    invoke-direct {p0, v1, v0}, Lin/dragonbra/javasteam/util/crypto/BerDecodeException;-><init>(Ljava/lang/String;I)V

    throw p0

    .line 165
    :cond_2e
    new-instance p0, Lin/dragonbra/javasteam/util/crypto/BerDecodeException;

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Expected Bit String. Specified Identifier: %d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lin/dragonbra/javasteam/util/crypto/BerDecodeException;-><init>(Ljava/lang/String;I)V

    throw p0
.end method

.method public nextInteger()[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lin/dragonbra/javasteam/util/crypto/BerDecodeException;
        }
    .end annotation

    .line 187
    invoke-virtual {p0}, Lin/dragonbra/javasteam/util/crypto/AsnParser;->currentPosition()I

    move-result v0

    .line 189
    invoke-virtual {p0}, Lin/dragonbra/javasteam/util/crypto/AsnParser;->getNextOctet()B

    move-result v1

    const/4 v2, 0x2

    if-ne v2, v1, :cond_36

    .line 194
    invoke-virtual {p0}, Lin/dragonbra/javasteam/util/crypto/AsnParser;->getLength()I

    move-result v1

    .line 195
    invoke-virtual {p0}, Lin/dragonbra/javasteam/util/crypto/AsnParser;->remainingBytes()I

    move-result v2

    if-gt v1, v2, :cond_1a

    .line 199
    invoke-direct {p0, v1}, Lin/dragonbra/javasteam/util/crypto/AsnParser;->getOctets(I)[B

    move-result-object p0

    return-object p0

    .line 196
    :cond_1a
    new-instance v2, Lin/dragonbra/javasteam/util/crypto/BerDecodeException;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Lin/dragonbra/javasteam/util/crypto/AsnParser;->remainingBytes()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "Incorrect Integer Size. Specified: %d, Remaining: %d"

    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0, v0}, Lin/dragonbra/javasteam/util/crypto/BerDecodeException;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 191
    :cond_36
    new-instance p0, Lin/dragonbra/javasteam/util/crypto/BerDecodeException;

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Expected Integer. Specified Identifier: %d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lin/dragonbra/javasteam/util/crypto/BerDecodeException;-><init>(Ljava/lang/String;I)V

    throw p0
.end method

.method public nextNull()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lin/dragonbra/javasteam/util/crypto/BerDecodeException;
        }
    .end annotation

    .line 100
    invoke-virtual {p0}, Lin/dragonbra/javasteam/util/crypto/AsnParser;->currentPosition()I

    move-result v0

    .line 102
    invoke-virtual {p0}, Lin/dragonbra/javasteam/util/crypto/AsnParser;->getNextOctet()B

    move-result v1

    const/4 v2, 0x5

    if-ne v2, v1, :cond_27

    .line 108
    invoke-virtual {p0}, Lin/dragonbra/javasteam/util/crypto/AsnParser;->getNextOctet()B

    move-result p0

    if-nez p0, :cond_13

    const/4 p0, 0x0

    return p0

    .line 110
    :cond_13
    new-instance v1, Lin/dragonbra/javasteam/util/crypto/BerDecodeException;

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v2, "Null has non-zero size. Size: %d"

    invoke-static {v2, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Lin/dragonbra/javasteam/util/crypto/BerDecodeException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 104
    :cond_27
    new-instance p0, Lin/dragonbra/javasteam/util/crypto/BerDecodeException;

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Expected Null. Specified Identifier: %d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lin/dragonbra/javasteam/util/crypto/BerDecodeException;-><init>(Ljava/lang/String;I)V

    throw p0
.end method

.method public nextOID()[B
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lin/dragonbra/javasteam/util/crypto/BerDecodeException;
        }
    .end annotation

    .line 203
    invoke-virtual {p0}, Lin/dragonbra/javasteam/util/crypto/AsnParser;->currentPosition()I

    move-result v0

    .line 205
    invoke-virtual {p0}, Lin/dragonbra/javasteam/util/crypto/AsnParser;->getNextOctet()B

    move-result v1

    const/4 v2, 0x6

    if-ne v2, v1, :cond_49

    .line 210
    invoke-virtual {p0}, Lin/dragonbra/javasteam/util/crypto/AsnParser;->getLength()I

    move-result v1

    .line 211
    invoke-virtual {p0}, Lin/dragonbra/javasteam/util/crypto/AsnParser;->remainingBytes()I

    move-result v2

    if-gt v1, v2, :cond_2d

    .line 215
    new-array v0, v1, [B

    const/4 v2, 0x0

    move v3, v2

    :goto_19
    if-ge v3, v1, :cond_2c

    .line 218
    iget-object v4, p0, Lin/dragonbra/javasteam/util/crypto/AsnParser;->octets:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Byte;

    invoke-virtual {v4}, Ljava/lang/Byte;->byteValue()B

    move-result v4

    aput-byte v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    :cond_2c
    return-object v0

    .line 212
    :cond_2d
    new-instance v2, Lin/dragonbra/javasteam/util/crypto/BerDecodeException;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Lin/dragonbra/javasteam/util/crypto/AsnParser;->remainingBytes()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "Incorrect Object Identifier Size. Specified: %d, Remaining: %d"

    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0, v0}, Lin/dragonbra/javasteam/util/crypto/BerDecodeException;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 207
    :cond_49
    new-instance p0, Lin/dragonbra/javasteam/util/crypto/BerDecodeException;

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Expected Object Identifier. Specified Identifier: %d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lin/dragonbra/javasteam/util/crypto/BerDecodeException;-><init>(Ljava/lang/String;I)V

    throw p0
.end method

.method public nextOctetString()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lin/dragonbra/javasteam/util/crypto/BerDecodeException;
        }
    .end annotation

    .line 141
    invoke-virtual {p0}, Lin/dragonbra/javasteam/util/crypto/AsnParser;->currentPosition()I

    move-result v0

    .line 143
    invoke-virtual {p0}, Lin/dragonbra/javasteam/util/crypto/AsnParser;->getNextOctet()B

    move-result v1

    const/4 v2, 0x4

    if-ne v2, v1, :cond_32

    .line 148
    invoke-virtual {p0}, Lin/dragonbra/javasteam/util/crypto/AsnParser;->getLength()I

    move-result v1

    .line 149
    invoke-virtual {p0}, Lin/dragonbra/javasteam/util/crypto/AsnParser;->remainingBytes()I

    move-result v2

    if-gt v1, v2, :cond_16

    return v1

    .line 150
    :cond_16
    new-instance v2, Lin/dragonbra/javasteam/util/crypto/BerDecodeException;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Lin/dragonbra/javasteam/util/crypto/AsnParser;->remainingBytes()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "Incorrect Octet String Size. Specified: %d, Remaining: %d"

    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0, v0}, Lin/dragonbra/javasteam/util/crypto/BerDecodeException;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 145
    :cond_32
    new-instance p0, Lin/dragonbra/javasteam/util/crypto/BerDecodeException;

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Expected Octet String.Specified Identifier: %d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lin/dragonbra/javasteam/util/crypto/BerDecodeException;-><init>(Ljava/lang/String;I)V

    throw p0
.end method

.method public nextSequence()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lin/dragonbra/javasteam/util/crypto/BerDecodeException;
        }
    .end annotation

    .line 121
    invoke-virtual {p0}, Lin/dragonbra/javasteam/util/crypto/AsnParser;->currentPosition()I

    move-result v0

    .line 123
    invoke-virtual {p0}, Lin/dragonbra/javasteam/util/crypto/AsnParser;->getNextOctet()B

    move-result v1

    const/16 v2, 0x30

    if-ne v2, v1, :cond_33

    .line 128
    invoke-virtual {p0}, Lin/dragonbra/javasteam/util/crypto/AsnParser;->getLength()I

    move-result v1

    .line 129
    invoke-virtual {p0}, Lin/dragonbra/javasteam/util/crypto/AsnParser;->remainingBytes()I

    move-result v2

    if-gt v1, v2, :cond_17

    return v1

    .line 130
    :cond_17
    new-instance v2, Lin/dragonbra/javasteam/util/crypto/BerDecodeException;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Lin/dragonbra/javasteam/util/crypto/AsnParser;->remainingBytes()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "Incorrect Sequence Size. Specified: %d, Remaining: %d"

    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0, v0}, Lin/dragonbra/javasteam/util/crypto/BerDecodeException;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 125
    :cond_33
    new-instance p0, Lin/dragonbra/javasteam/util/crypto/BerDecodeException;

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Expected Sequence. Specified Identifier: %d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lin/dragonbra/javasteam/util/crypto/BerDecodeException;-><init>(Ljava/lang/String;I)V

    throw p0
.end method

.method public remainingBytes()I
    .registers 1

    .line 26
    iget-object p0, p0, Lin/dragonbra/javasteam/util/crypto/AsnParser;->octets:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method
