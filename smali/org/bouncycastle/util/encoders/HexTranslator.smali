###### Class org.bouncycastle.util.encoders.HexTranslator (org.bouncycastle.util.encoders.HexTranslator)
.class public Lorg/bouncycastle/util/encoders/HexTranslator;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/util/encoders/Translator;


# static fields
.field private static final hexTable:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lorg/bouncycastle/util/encoders/HexTranslator;->hexTable:[B

    return-void

    :array_a
    .array-data 1
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public decode([BII[BI)I
    .registers 9

    .line 0
    div-int/lit8 p3, p3, 0x2

    const/4 p0, 0x0

    :goto_3
    if-ge p0, p3, :cond_3b

    mul-int/lit8 v0, p0, 0x2

    add-int/2addr v0, p2

    aget-byte v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    aget-byte v0, p1, v0

    const/16 v2, 0x61

    if-ge v1, v2, :cond_1a

    add-int/lit8 v1, v1, -0x30

    shl-int/lit8 v1, v1, 0x4

    int-to-byte v1, v1

    aput-byte v1, p4, p5

    goto :goto_21

    :cond_1a
    add-int/lit8 v1, v1, -0x57

    shl-int/lit8 v1, v1, 0x4

    int-to-byte v1, v1

    aput-byte v1, p4, p5

    :goto_21
    if-ge v0, v2, :cond_2d

    aget-byte v1, p4, p5

    add-int/lit8 v0, v0, -0x30

    int-to-byte v0, v0

    add-int/2addr v1, v0

    int-to-byte v0, v1

    aput-byte v0, p4, p5

    goto :goto_36

    :cond_2d
    aget-byte v1, p4, p5

    add-int/lit8 v0, v0, -0x57

    int-to-byte v0, v0

    add-int/2addr v1, v0

    int-to-byte v0, v1

    aput-byte v0, p4, p5

    :goto_36
    add-int/lit8 p5, p5, 0x1

    add-int/lit8 p0, p0, 0x1

    goto :goto_3

    :cond_3b
    return p3
.end method

.method public encode([BII[BI)I
    .registers 10

    .line 0
    const/4 p0, 0x0

    move v0, p2

    move p2, p0

    :goto_3
    if-ge p0, p3, :cond_24

    add-int v1, p5, p2

    sget-object v2, Lorg/bouncycastle/util/encoders/HexTranslator;->hexTable:[B

    aget-byte v3, p1, v0

    shr-int/lit8 v3, v3, 0x4

    and-int/lit8 v3, v3, 0xf

    aget-byte v3, v2, v3

    aput-byte v3, p4, v1

    add-int/lit8 v1, v1, 0x1

    aget-byte v3, p1, v0

    and-int/lit8 v3, v3, 0xf

    aget-byte v2, v2, v3

    aput-byte v2, p4, v1

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 p0, p0, 0x1

    add-int/lit8 p2, p2, 0x2

    goto :goto_3

    :cond_24
    mul-int/lit8 p3, p3, 0x2

    return p3
.end method

.method public getDecodedBlockSize()I
    .registers 1

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public getEncodedBlockSize()I
    .registers 1

    .line 0
    const/4 p0, 0x2

    return p0
.end method
