###### Class org.bouncycastle.crypto.params.Argon2Parameters (org.bouncycastle.crypto.params.Argon2Parameters)
.class public Lorg/bouncycastle/crypto/params/Argon2Parameters;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/crypto/params/Argon2Parameters$Builder;
    }
.end annotation


# static fields
.field public static final ARGON2_VERSION_10:I = 0x10

.field public static final ARGON2_VERSION_13:I = 0x13

.field public static final ARGON2_d:I = 0x0

.field public static final ARGON2_i:I = 0x1

.field public static final ARGON2_id:I = 0x2

.field private static final DEFAULT_ITERATIONS:I = 0x3

.field private static final DEFAULT_LANES:I = 0x1

.field private static final DEFAULT_MEMORY_COST:I = 0xc

.field private static final DEFAULT_TYPE:I = 0x1

.field private static final DEFAULT_VERSION:I = 0x13


# instance fields
.field private final additional:[B

.field private final converter:Lorg/bouncycastle/crypto/CharToByteConverter;

.field private final iterations:I

.field private final lanes:I

.field private final memory:I

.field private final salt:[B

.field private final secret:[B

.field private final type:I

.field private final version:I


# direct methods
.method private constructor <init>(I[B[B[BIIIILorg/bouncycastle/crypto/CharToByteConverter;)V
    .registers 10

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p2

    iput-object p2, p0, Lorg/bouncycastle/crypto/params/Argon2Parameters;->salt:[B

    invoke-static {p3}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p2

    iput-object p2, p0, Lorg/bouncycastle/crypto/params/Argon2Parameters;->secret:[B

    invoke-static {p4}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p2

    iput-object p2, p0, Lorg/bouncycastle/crypto/params/Argon2Parameters;->additional:[B

    iput p5, p0, Lorg/bouncycastle/crypto/params/Argon2Parameters;->iterations:I

    iput p6, p0, Lorg/bouncycastle/crypto/params/Argon2Parameters;->memory:I

    iput p7, p0, Lorg/bouncycastle/crypto/params/Argon2Parameters;->lanes:I

    iput p8, p0, Lorg/bouncycastle/crypto/params/Argon2Parameters;->version:I

    iput p1, p0, Lorg/bouncycastle/crypto/params/Argon2Parameters;->type:I

    iput-object p9, p0, Lorg/bouncycastle/crypto/params/Argon2Parameters;->converter:Lorg/bouncycastle/crypto/CharToByteConverter;

    return-void
.end method

.method public synthetic constructor <init>(I[B[B[BIIIILorg/bouncycastle/crypto/CharToByteConverter;Lorg/bouncycastle/crypto/params/Argon2Parameters$1;)V
    .registers 11

    .line 0
    invoke-direct/range {p0 .. p9}, Lorg/bouncycastle/crypto/params/Argon2Parameters;-><init>(I[B[B[BIIIILorg/bouncycastle/crypto/CharToByteConverter;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/crypto/params/Argon2Parameters;->salt:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clear([B)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/params/Argon2Parameters;->secret:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clear([B)V

    iget-object p0, p0, Lorg/bouncycastle/crypto/params/Argon2Parameters;->additional:[B

    invoke-static {p0}, Lorg/bouncycastle/util/Arrays;->clear([B)V

    return-void
.end method

.method public getAdditional()[B
    .registers 1

    .line 0
    iget-object p0, p0, Lorg/bouncycastle/crypto/params/Argon2Parameters;->additional:[B

    invoke-static {p0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p0

    return-object p0
.end method

.method public getCharToByteConverter()Lorg/bouncycastle/crypto/CharToByteConverter;
    .registers 1

    .line 0
    iget-object p0, p0, Lorg/bouncycastle/crypto/params/Argon2Parameters;->converter:Lorg/bouncycastle/crypto/CharToByteConverter;

    return-object p0
.end method

.method public getIterations()I
    .registers 1

    .line 0
    iget p0, p0, Lorg/bouncycastle/crypto/params/Argon2Parameters;->iterations:I

    return p0
.end method

.method public getLanes()I
    .registers 1

    .line 0
    iget p0, p0, Lorg/bouncycastle/crypto/params/Argon2Parameters;->lanes:I

    return p0
.end method

.method public getMemory()I
    .registers 1

    .line 0
    iget p0, p0, Lorg/bouncycastle/crypto/params/Argon2Parameters;->memory:I

    return p0
.end method

.method public getSalt()[B
    .registers 1

    .line 0
    iget-object p0, p0, Lorg/bouncycastle/crypto/params/Argon2Parameters;->salt:[B

    invoke-static {p0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p0

    return-object p0
.end method

.method public getSecret()[B
    .registers 1

    .line 0
    iget-object p0, p0, Lorg/bouncycastle/crypto/params/Argon2Parameters;->secret:[B

    invoke-static {p0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p0

    return-object p0
.end method

.method public getType()I
    .registers 1

    .line 0
    iget p0, p0, Lorg/bouncycastle/crypto/params/Argon2Parameters;->type:I

    return p0
.end method

.method public getVersion()I
    .registers 1

    .line 0
    iget p0, p0, Lorg/bouncycastle/crypto/params/Argon2Parameters;->version:I

    return p0
.end method

###### Class org.bouncycastle.crypto.params.Argon2Parameters.AnonymousClass1 (org.bouncycastle.crypto.params.Argon2Parameters$1)
.class synthetic Lorg/bouncycastle/crypto/params/Argon2Parameters$1;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/params/Argon2Parameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation

###### Class org.bouncycastle.crypto.params.Argon2Parameters.Builder (org.bouncycastle.crypto.params.Argon2Parameters$Builder)
.class public Lorg/bouncycastle/crypto/params/Argon2Parameters$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/params/Argon2Parameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private additional:[B

.field private converter:Lorg/bouncycastle/crypto/CharToByteConverter;

.field private iterations:I

.field private lanes:I

.field private memory:I

.field private salt:[B

.field private secret:[B

.field private final type:I

.field private version:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/params/Argon2Parameters$Builder;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lorg/bouncycastle/crypto/PasswordConverter;->UTF8:Lorg/bouncycastle/crypto/PasswordConverter;

    iput-object v0, p0, Lorg/bouncycastle/crypto/params/Argon2Parameters$Builder;->converter:Lorg/bouncycastle/crypto/CharToByteConverter;

    iput p1, p0, Lorg/bouncycastle/crypto/params/Argon2Parameters$Builder;->type:I

    const/4 p1, 0x1

    iput p1, p0, Lorg/bouncycastle/crypto/params/Argon2Parameters$Builder;->lanes:I

    const/16 p1, 0x1000

    iput p1, p0, Lorg/bouncycastle/crypto/params/Argon2Parameters$Builder;->memory:I

    const/4 p1, 0x3

    iput p1, p0, Lorg/bouncycastle/crypto/params/Argon2Parameters$Builder;->iterations:I

    const/16 p1, 0x13

    iput p1, p0, Lorg/bouncycastle/crypto/params/Argon2Parameters$Builder;->version:I

    return-void
.end method


# virtual methods
.method public build()Lorg/bouncycastle/crypto/params/Argon2Parameters;
    .registers 13

    .line 0
    new-instance v11, Lorg/bouncycastle/crypto/params/Argon2Parameters;

    iget v1, p0, Lorg/bouncycastle/crypto/params/Argon2Parameters$Builder;->type:I

    iget-object v2, p0, Lorg/bouncycastle/crypto/params/Argon2Parameters$Builder;->salt:[B

    iget-object v3, p0, Lorg/bouncycastle/crypto/params/Argon2Parameters$Builder;->secret:[B

    iget-object v4, p0, Lorg/bouncycastle/crypto/params/Argon2Parameters$Builder;->additional:[B

    iget v5, p0, Lorg/bouncycastle/crypto/params/Argon2Parameters$Builder;->iterations:I

    iget v6, p0, Lorg/bouncycastle/crypto/params/Argon2Parameters$Builder;->memory:I

    iget v7, p0, Lorg/bouncycastle/crypto/params/Argon2Parameters$Builder;->lanes:I

    iget v8, p0, Lorg/bouncycastle/crypto/params/Argon2Parameters$Builder;->version:I

    iget-object v9, p0, Lorg/bouncycastle/crypto/params/Argon2Parameters$Builder;->converter:Lorg/bouncycastle/crypto/CharToByteConverter;

    const/4 v10, 0x0

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Lorg/bouncycastle/crypto/params/Argon2Parameters;-><init>(I[B[B[BIIIILorg/bouncycastle/crypto/CharToByteConverter;Lorg/bouncycastle/crypto/params/Argon2Parameters$1;)V

    return-object v11
.end method

.method public clear()V
    .registers 2

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/crypto/params/Argon2Parameters$Builder;->salt:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clear([B)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/params/Argon2Parameters$Builder;->secret:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clear([B)V

    iget-object p0, p0, Lorg/bouncycastle/crypto/params/Argon2Parameters$Builder;->additional:[B

    invoke-static {p0}, Lorg/bouncycastle/util/Arrays;->clear([B)V

    return-void
.end method

.method public withAdditional([B)Lorg/bouncycastle/crypto/params/Argon2Parameters$Builder;
    .registers 2

    .line 0
    invoke-static {p1}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/params/Argon2Parameters$Builder;->additional:[B

    return-object p0
.end method

.method public withCharToByteConverter(Lorg/bouncycastle/crypto/CharToByteConverter;)Lorg/bouncycastle/crypto/params/Argon2Parameters$Builder;
    .registers 2

    .line 0
    iput-object p1, p0, Lorg/bouncycastle/crypto/params/Argon2Parameters$Builder;->converter:Lorg/bouncycastle/crypto/CharToByteConverter;

    return-object p0
.end method

.method public withIterations(I)Lorg/bouncycastle/crypto/params/Argon2Parameters$Builder;
    .registers 2

    .line 0
    iput p1, p0, Lorg/bouncycastle/crypto/params/Argon2Parameters$Builder;->iterations:I

    return-object p0
.end method

.method public withMemoryAsKB(I)Lorg/bouncycastle/crypto/params/Argon2Parameters$Builder;
    .registers 2

    .line 0
    iput p1, p0, Lorg/bouncycastle/crypto/params/Argon2Parameters$Builder;->memory:I

    return-object p0
.end method

.method public withMemoryPowOfTwo(I)Lorg/bouncycastle/crypto/params/Argon2Parameters$Builder;
    .registers 3

    .line 0
    const/4 v0, 0x1

    shl-int p1, v0, p1

    iput p1, p0, Lorg/bouncycastle/crypto/params/Argon2Parameters$Builder;->memory:I

    return-object p0
.end method

.method public withParallelism(I)Lorg/bouncycastle/crypto/params/Argon2Parameters$Builder;
    .registers 2

    .line 0
    iput p1, p0, Lorg/bouncycastle/crypto/params/Argon2Parameters$Builder;->lanes:I

    return-object p0
.end method

.method public withSalt([B)Lorg/bouncycastle/crypto/params/Argon2Parameters$Builder;
    .registers 2

    .line 0
    invoke-static {p1}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/params/Argon2Parameters$Builder;->salt:[B

    return-object p0
.end method

.method public withSecret([B)Lorg/bouncycastle/crypto/params/Argon2Parameters$Builder;
    .registers 2

    .line 0
    invoke-static {p1}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/params/Argon2Parameters$Builder;->secret:[B

    return-object p0
.end method

.method public withVersion(I)Lorg/bouncycastle/crypto/params/Argon2Parameters$Builder;
    .registers 2

    .line 0
    iput p1, p0, Lorg/bouncycastle/crypto/params/Argon2Parameters$Builder;->version:I

    return-object p0
.end method
