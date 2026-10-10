###### Class in.dragonbra.javasteam.util.WebHelpers (in.dragonbra.javasteam.util.WebHelpers)
.class public Lin/dragonbra/javasteam/util/WebHelpers;
.super Ljava/lang/Object;
.source "WebHelpers.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isUrlSafeChar(C)Z
    .registers 2

    .line 0
    const/16 v0, 0x61

    if-lt p0, v0, :cond_8

    const/16 v0, 0x7a

    if-le p0, v0, :cond_27

    :cond_8
    const/16 v0, 0x41

    if-lt p0, v0, :cond_10

    const/16 v0, 0x5a

    if-le p0, v0, :cond_27

    :cond_10
    const/16 v0, 0x30

    if-lt p0, v0, :cond_18

    const/16 v0, 0x39

    if-le p0, v0, :cond_27

    :cond_18
    const/16 v0, 0x2d

    if-eq p0, v0, :cond_27

    const/16 v0, 0x2e

    if-eq p0, v0, :cond_27

    const/16 v0, 0x5f

    if-ne p0, v0, :cond_25

    goto :goto_27

    :cond_25
    const/4 p0, 0x0

    goto :goto_28

    :cond_27
    :goto_27
    const/4 p0, 0x1

    :goto_28
    return p0
.end method

.method public static urlEncode(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 21
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-static {p0}, Lin/dragonbra/javasteam/util/WebHelpers;->urlEncode([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static urlEncode([B)Ljava/lang/String;
    .registers 7

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 27
    array-length v1, p0

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_37

    aget-byte v3, p0, v2

    int-to-char v4, v3

    .line 30
    invoke-static {v4}, Lin/dragonbra/javasteam/util/WebHelpers;->isUrlSafeChar(C)Z

    move-result v5

    if-eqz v5, :cond_19

    .line 31
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_34

    :cond_19
    const/16 v5, 0x20

    if-ne v4, v5, :cond_23

    const/16 v3, 0x2b

    .line 33
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_34

    .line 35
    :cond_23
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "%%%02X"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_34
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 39
    :cond_37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
