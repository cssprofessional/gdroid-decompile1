###### Class org.bouncycastle.crypto.util.ScryptConfig (org.bouncycastle.crypto.util.ScryptConfig)
.class public Lorg/bouncycastle/crypto/util/ScryptConfig;
.super Lorg/bouncycastle/crypto/util/PBKDFConfig;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/crypto/util/ScryptConfig$Builder;
    }
.end annotation


# instance fields
.field private final blockSize:I

.field private final costParameter:I

.field private final parallelizationParameter:I

.field private final saltLength:I


# direct methods
.method private constructor <init>(Lorg/bouncycastle/crypto/util/ScryptConfig$Builder;)V
    .registers 3

    .line 0
    sget-object v0, Lorg/bouncycastle/internal/asn1/misc/MiscObjectIdentifiers;->id_scrypt:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/util/PBKDFConfig;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    invoke-static {p1}, Lorg/bouncycastle/crypto/util/ScryptConfig$Builder;->access$100(Lorg/bouncycastle/crypto/util/ScryptConfig$Builder;)I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/crypto/util/ScryptConfig;->costParameter:I

    invoke-static {p1}, Lorg/bouncycastle/crypto/util/ScryptConfig$Builder;->access$200(Lorg/bouncycastle/crypto/util/ScryptConfig$Builder;)I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/crypto/util/ScryptConfig;->blockSize:I

    invoke-static {p1}, Lorg/bouncycastle/crypto/util/ScryptConfig$Builder;->access$300(Lorg/bouncycastle/crypto/util/ScryptConfig$Builder;)I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/crypto/util/ScryptConfig;->parallelizationParameter:I

    invoke-static {p1}, Lorg/bouncycastle/crypto/util/ScryptConfig$Builder;->access$400(Lorg/bouncycastle/crypto/util/ScryptConfig$Builder;)I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/crypto/util/ScryptConfig;->saltLength:I

    return-void
.end method

.method public synthetic constructor <init>(Lorg/bouncycastle/crypto/util/ScryptConfig$Builder;Lorg/bouncycastle/crypto/util/ScryptConfig$1;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/util/ScryptConfig;-><init>(Lorg/bouncycastle/crypto/util/ScryptConfig$Builder;)V

    return-void
.end method


# virtual methods
.method public getBlockSize()I
    .registers 1

    .line 0
    iget p0, p0, Lorg/bouncycastle/crypto/util/ScryptConfig;->blockSize:I

    return p0
.end method

.method public getCostParameter()I
    .registers 1

    .line 0
    iget p0, p0, Lorg/bouncycastle/crypto/util/ScryptConfig;->costParameter:I

    return p0
.end method

.method public getParallelizationParameter()I
    .registers 1

    .line 0
    iget p0, p0, Lorg/bouncycastle/crypto/util/ScryptConfig;->parallelizationParameter:I

    return p0
.end method

.method public getSaltLength()I
    .registers 1

    .line 0
    iget p0, p0, Lorg/bouncycastle/crypto/util/ScryptConfig;->saltLength:I

    return p0
.end method

###### Class org.bouncycastle.crypto.util.ScryptConfig.AnonymousClass1 (org.bouncycastle.crypto.util.ScryptConfig$1)
.class synthetic Lorg/bouncycastle/crypto/util/ScryptConfig$1;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/util/ScryptConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation

###### Class org.bouncycastle.crypto.util.ScryptConfig.Builder (org.bouncycastle.crypto.util.ScryptConfig$Builder)
.class public Lorg/bouncycastle/crypto/util/ScryptConfig$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/util/ScryptConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final blockSize:I

.field private final costParameter:I

.field private final parallelizationParameter:I

.field private saltLength:I


# direct methods
.method public constructor <init>(III)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    iput v0, p0, Lorg/bouncycastle/crypto/util/ScryptConfig$Builder;->saltLength:I

    const/4 v0, 0x1

    if-le p1, v0, :cond_17

    invoke-static {p1}, Lorg/bouncycastle/crypto/util/ScryptConfig$Builder;->isPowerOf2(I)Z

    move-result v0

    if-eqz v0, :cond_17

    iput p1, p0, Lorg/bouncycastle/crypto/util/ScryptConfig$Builder;->costParameter:I

    iput p2, p0, Lorg/bouncycastle/crypto/util/ScryptConfig$Builder;->blockSize:I

    iput p3, p0, Lorg/bouncycastle/crypto/util/ScryptConfig$Builder;->parallelizationParameter:I

    return-void

    :cond_17
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Cost parameter N must be > 1 and a power of 2"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic access$100(Lorg/bouncycastle/crypto/util/ScryptConfig$Builder;)I
    .registers 1

    .line 0
    iget p0, p0, Lorg/bouncycastle/crypto/util/ScryptConfig$Builder;->costParameter:I

    return p0
.end method

.method public static synthetic access$200(Lorg/bouncycastle/crypto/util/ScryptConfig$Builder;)I
    .registers 1

    .line 0
    iget p0, p0, Lorg/bouncycastle/crypto/util/ScryptConfig$Builder;->blockSize:I

    return p0
.end method

.method public static synthetic access$300(Lorg/bouncycastle/crypto/util/ScryptConfig$Builder;)I
    .registers 1

    .line 0
    iget p0, p0, Lorg/bouncycastle/crypto/util/ScryptConfig$Builder;->parallelizationParameter:I

    return p0
.end method

.method public static synthetic access$400(Lorg/bouncycastle/crypto/util/ScryptConfig$Builder;)I
    .registers 1

    .line 0
    iget p0, p0, Lorg/bouncycastle/crypto/util/ScryptConfig$Builder;->saltLength:I

    return p0
.end method

.method private static isPowerOf2(I)Z
    .registers 2

    .line 0
    add-int/lit8 v0, p0, -0x1

    and-int/2addr p0, v0

    if-nez p0, :cond_7

    const/4 p0, 0x1

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return p0
.end method


# virtual methods
.method public build()Lorg/bouncycastle/crypto/util/ScryptConfig;
    .registers 3

    .line 0
    new-instance v0, Lorg/bouncycastle/crypto/util/ScryptConfig;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/bouncycastle/crypto/util/ScryptConfig;-><init>(Lorg/bouncycastle/crypto/util/ScryptConfig$Builder;Lorg/bouncycastle/crypto/util/ScryptConfig$1;)V

    return-object v0
.end method

.method public withSaltLength(I)Lorg/bouncycastle/crypto/util/ScryptConfig$Builder;
    .registers 2

    .line 0
    iput p1, p0, Lorg/bouncycastle/crypto/util/ScryptConfig$Builder;->saltLength:I

    return-object p0
.end method
