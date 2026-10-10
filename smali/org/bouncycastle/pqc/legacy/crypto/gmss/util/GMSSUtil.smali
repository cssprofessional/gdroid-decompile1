###### Class org.bouncycastle.pqc.legacy.crypto.gmss.util.GMSSUtil (org.bouncycastle.pqc.legacy.crypto.gmss.util.GMSSUtil)
.class public Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/GMSSUtil;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bytesToIntLittleEndian([B)I
    .registers 3

    .line 0
    const/4 p0, 0x0

    aget-byte p0, p1, p0

    and-int/lit16 p0, p0, 0xff

    const/4 v0, 0x1

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr p0, v0

    const/4 v0, 0x2

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr p0, v0

    const/4 v0, 0x3

    aget-byte p1, p1, v0

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x18

    or-int/2addr p0, p1

    return p0
.end method

.method public bytesToIntLittleEndian([BI)I
    .registers 5

    .line 0
    add-int/lit8 p0, p2, 0x1

    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p2, 0x2

    aget-byte p0, p1, p0

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x8

    or-int/2addr p0, v0

    add-int/lit8 p2, p2, 0x3

    aget-byte v0, p1, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr p0, v0

    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x18

    or-int/2addr p0, p1

    return p0
.end method

.method public concatenateArray([[B)[B
    .registers 7

    .line 0
    array-length p0, p1

    const/4 v0, 0x0

    aget-object v1, p1, v0

    array-length v1, v1

    mul-int/2addr p0, v1

    new-array p0, p0, [B

    move v1, v0

    move v2, v1

    :goto_a
    array-length v3, p1

    if-ge v1, v3, :cond_1a

    aget-object v3, p1, v1

    array-length v4, v3

    invoke-static {v3, v0, p0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-object v3, p1, v1

    array-length v3, v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_1a
    return-object p0
.end method

.method public getLog(I)I
    .registers 3

    .line 0
    const/4 p0, 0x1

    const/4 v0, 0x2

    :goto_2
    if-ge v0, p1, :cond_9

    shl-int/lit8 v0, v0, 0x1

    add-int/lit8 p0, p0, 0x1

    goto :goto_2

    :cond_9
    return p0
.end method

.method public intToBytesLittleEndian(I)[B
    .registers 6

    .line 0
    and-int/lit16 p0, p1, 0xff

    int-to-byte p0, p0

    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    shr-int/lit8 v1, p1, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    shr-int/lit8 p1, p1, 0x18

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    const/4 v2, 0x4

    new-array v2, v2, [B

    const/4 v3, 0x0

    aput-byte p0, v2, v3

    const/4 p0, 0x1

    aput-byte v0, v2, p0

    const/4 p0, 0x2

    aput-byte v1, v2, p0

    const/4 p0, 0x3

    aput-byte p1, v2, p0

    return-object v2
.end method

.method public printArray(Ljava/lang/String;[B)V
    .registers 6

    .line 0
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 p0, 0x0

    move p1, p0

    :goto_7
    array-length v0, p2

    if-ge p0, v0, :cond_2a

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v2, p2, p0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 p0, p0, 0x1

    goto :goto_7

    :cond_2a
    return-void
.end method

.method public printArray(Ljava/lang/String;[[B)V
    .registers 8

    .line 0
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 p0, 0x0

    move p1, p0

    move v0, p1

    :goto_8
    array-length v1, p2

    if-ge p1, v1, :cond_36

    move v1, p0

    :goto_c
    aget-object v2, p2, p0

    array-length v2, v2

    if-ge v1, v2, :cond_33

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "; "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, p2, p1

    aget-byte v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_33
    add-int/lit8 p1, p1, 0x1

    goto :goto_8

    :cond_36
    return-void
.end method

.method public testPowerOfTwo(I)Z
    .registers 3

    .line 0
    const/4 p0, 0x1

    move v0, p0

    :goto_2
    if-ge v0, p1, :cond_7

    shl-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_7
    if-ne p1, v0, :cond_a

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method
