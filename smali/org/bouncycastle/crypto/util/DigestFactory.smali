###### Class org.bouncycastle.crypto.util.DigestFactory (org.bouncycastle.crypto.util.DigestFactory)
.class public final Lorg/bouncycastle/crypto/util/DigestFactory;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/crypto/util/DigestFactory$Cloner;
    }
.end annotation


# static fields
.field private static final cloneMap:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/bouncycastle/crypto/util/DigestFactory;->cloneMap:Ljava/util/Map;

    invoke-static {}, Lorg/bouncycastle/crypto/util/DigestFactory;->createMD5()Lorg/bouncycastle/crypto/Digest;

    move-result-object v1

    invoke-interface {v1}, Lorg/bouncycastle/crypto/Digest;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/bouncycastle/crypto/util/DigestFactory$1;

    invoke-direct {v2}, Lorg/bouncycastle/crypto/util/DigestFactory$1;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lorg/bouncycastle/crypto/util/DigestFactory;->createSHA1()Lorg/bouncycastle/crypto/Digest;

    move-result-object v1

    invoke-interface {v1}, Lorg/bouncycastle/crypto/Digest;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/bouncycastle/crypto/util/DigestFactory$2;

    invoke-direct {v2}, Lorg/bouncycastle/crypto/util/DigestFactory$2;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lorg/bouncycastle/crypto/util/DigestFactory;->createSHA224()Lorg/bouncycastle/crypto/Digest;

    move-result-object v1

    invoke-interface {v1}, Lorg/bouncycastle/crypto/Digest;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/bouncycastle/crypto/util/DigestFactory$3;

    invoke-direct {v2}, Lorg/bouncycastle/crypto/util/DigestFactory$3;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lorg/bouncycastle/crypto/util/DigestFactory;->createSHA256()Lorg/bouncycastle/crypto/Digest;

    move-result-object v1

    invoke-interface {v1}, Lorg/bouncycastle/crypto/Digest;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/bouncycastle/crypto/util/DigestFactory$4;

    invoke-direct {v2}, Lorg/bouncycastle/crypto/util/DigestFactory$4;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lorg/bouncycastle/crypto/util/DigestFactory;->createSHA384()Lorg/bouncycastle/crypto/Digest;

    move-result-object v1

    invoke-interface {v1}, Lorg/bouncycastle/crypto/Digest;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/bouncycastle/crypto/util/DigestFactory$5;

    invoke-direct {v2}, Lorg/bouncycastle/crypto/util/DigestFactory$5;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lorg/bouncycastle/crypto/util/DigestFactory;->createSHA512()Lorg/bouncycastle/crypto/Digest;

    move-result-object v1

    invoke-interface {v1}, Lorg/bouncycastle/crypto/Digest;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/bouncycastle/crypto/util/DigestFactory$6;

    invoke-direct {v2}, Lorg/bouncycastle/crypto/util/DigestFactory$6;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lorg/bouncycastle/crypto/util/DigestFactory;->createSHA3_224()Lorg/bouncycastle/crypto/Digest;

    move-result-object v1

    invoke-interface {v1}, Lorg/bouncycastle/crypto/Digest;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/bouncycastle/crypto/util/DigestFactory$7;

    invoke-direct {v2}, Lorg/bouncycastle/crypto/util/DigestFactory$7;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lorg/bouncycastle/crypto/util/DigestFactory;->createSHA3_256()Lorg/bouncycastle/crypto/Digest;

    move-result-object v1

    invoke-interface {v1}, Lorg/bouncycastle/crypto/Digest;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/bouncycastle/crypto/util/DigestFactory$8;

    invoke-direct {v2}, Lorg/bouncycastle/crypto/util/DigestFactory$8;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lorg/bouncycastle/crypto/util/DigestFactory;->createSHA3_384()Lorg/bouncycastle/crypto/Digest;

    move-result-object v1

    invoke-interface {v1}, Lorg/bouncycastle/crypto/Digest;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/bouncycastle/crypto/util/DigestFactory$9;

    invoke-direct {v2}, Lorg/bouncycastle/crypto/util/DigestFactory$9;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lorg/bouncycastle/crypto/util/DigestFactory;->createSHA3_512()Lorg/bouncycastle/crypto/Digest;

    move-result-object v1

    invoke-interface {v1}, Lorg/bouncycastle/crypto/Digest;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/bouncycastle/crypto/util/DigestFactory$10;

    invoke-direct {v2}, Lorg/bouncycastle/crypto/util/DigestFactory$10;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lorg/bouncycastle/crypto/util/DigestFactory;->createSHAKE128()Lorg/bouncycastle/crypto/Digest;

    move-result-object v1

    invoke-interface {v1}, Lorg/bouncycastle/crypto/Digest;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/bouncycastle/crypto/util/DigestFactory$11;

    invoke-direct {v2}, Lorg/bouncycastle/crypto/util/DigestFactory$11;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lorg/bouncycastle/crypto/util/DigestFactory;->createSHAKE256()Lorg/bouncycastle/crypto/Digest;

    move-result-object v1

    invoke-interface {v1}, Lorg/bouncycastle/crypto/Digest;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/bouncycastle/crypto/util/DigestFactory$12;

    invoke-direct {v2}, Lorg/bouncycastle/crypto/util/DigestFactory$12;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cloneDigest(Lorg/bouncycastle/crypto/Digest;)Lorg/bouncycastle/crypto/Digest;
    .registers 3

    .line 0
    sget-object v0, Lorg/bouncycastle/crypto/util/DigestFactory;->cloneMap:Ljava/util/Map;

    invoke-interface {p0}, Lorg/bouncycastle/crypto/Digest;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/crypto/util/DigestFactory$Cloner;

    invoke-interface {v0, p0}, Lorg/bouncycastle/crypto/util/DigestFactory$Cloner;->createClone(Lorg/bouncycastle/crypto/Digest;)Lorg/bouncycastle/crypto/Digest;

    move-result-object p0

    return-object p0
.end method

.method public static createMD5()Lorg/bouncycastle/crypto/Digest;
    .registers 1

    .line 0
    new-instance v0, Lorg/bouncycastle/crypto/digests/MD5Digest;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/digests/MD5Digest;-><init>()V

    return-object v0
.end method

.method public static createMD5PRF()Lorg/bouncycastle/crypto/Digest;
    .registers 1

    .line 0
    new-instance v0, Lorg/bouncycastle/crypto/digests/MD5Digest;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/digests/MD5Digest;-><init>()V

    return-object v0
.end method

.method public static createSHA1()Lorg/bouncycastle/crypto/Digest;
    .registers 1

    .line 0
    new-instance v0, Lorg/bouncycastle/crypto/digests/SHA1Digest;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/digests/SHA1Digest;-><init>()V

    return-object v0
.end method

.method public static createSHA1PRF()Lorg/bouncycastle/crypto/Digest;
    .registers 2

    .line 0
    new-instance v0, Lorg/bouncycastle/crypto/digests/SHA1Digest;

    sget-object v1, Lorg/bouncycastle/crypto/CryptoServicePurpose;->PRF:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/digests/SHA1Digest;-><init>(Lorg/bouncycastle/crypto/CryptoServicePurpose;)V

    return-object v0
.end method

.method public static createSHA224()Lorg/bouncycastle/crypto/Digest;
    .registers 1

    .line 0
    new-instance v0, Lorg/bouncycastle/crypto/digests/SHA224Digest;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/digests/SHA224Digest;-><init>()V

    return-object v0
.end method

.method public static createSHA224PRF()Lorg/bouncycastle/crypto/Digest;
    .registers 2

    .line 0
    new-instance v0, Lorg/bouncycastle/crypto/digests/SHA224Digest;

    sget-object v1, Lorg/bouncycastle/crypto/CryptoServicePurpose;->PRF:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/digests/SHA224Digest;-><init>(Lorg/bouncycastle/crypto/CryptoServicePurpose;)V

    return-object v0
.end method

.method public static createSHA256()Lorg/bouncycastle/crypto/Digest;
    .registers 1

    .line 0
    invoke-static {}, Lorg/bouncycastle/crypto/digests/SHA256Digest;->newInstance()Lorg/bouncycastle/crypto/SavableDigest;

    move-result-object v0

    return-object v0
.end method

.method public static createSHA256PRF()Lorg/bouncycastle/crypto/Digest;
    .registers 2

    .line 0
    new-instance v0, Lorg/bouncycastle/crypto/digests/SHA256Digest;

    sget-object v1, Lorg/bouncycastle/crypto/CryptoServicePurpose;->PRF:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/digests/SHA256Digest;-><init>(Lorg/bouncycastle/crypto/CryptoServicePurpose;)V

    return-object v0
.end method

.method public static createSHA384()Lorg/bouncycastle/crypto/Digest;
    .registers 1

    .line 0
    new-instance v0, Lorg/bouncycastle/crypto/digests/SHA384Digest;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/digests/SHA384Digest;-><init>()V

    return-object v0
.end method

.method public static createSHA384PRF()Lorg/bouncycastle/crypto/Digest;
    .registers 2

    .line 0
    new-instance v0, Lorg/bouncycastle/crypto/digests/SHA384Digest;

    sget-object v1, Lorg/bouncycastle/crypto/CryptoServicePurpose;->PRF:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/digests/SHA384Digest;-><init>(Lorg/bouncycastle/crypto/CryptoServicePurpose;)V

    return-object v0
.end method

.method public static createSHA3_224()Lorg/bouncycastle/crypto/Digest;
    .registers 2

    .line 0
    new-instance v0, Lorg/bouncycastle/crypto/digests/SHA3Digest;

    const/16 v1, 0xe0

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/digests/SHA3Digest;-><init>(I)V

    return-object v0
.end method

.method public static createSHA3_224PRF()Lorg/bouncycastle/crypto/Digest;
    .registers 3

    .line 0
    new-instance v0, Lorg/bouncycastle/crypto/digests/SHA3Digest;

    const/16 v1, 0xe0

    sget-object v2, Lorg/bouncycastle/crypto/CryptoServicePurpose;->PRF:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/crypto/digests/SHA3Digest;-><init>(ILorg/bouncycastle/crypto/CryptoServicePurpose;)V

    return-object v0
.end method

.method public static createSHA3_256()Lorg/bouncycastle/crypto/Digest;
    .registers 2

    .line 0
    new-instance v0, Lorg/bouncycastle/crypto/digests/SHA3Digest;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/digests/SHA3Digest;-><init>(I)V

    return-object v0
.end method

.method public static createSHA3_256PRF()Lorg/bouncycastle/crypto/Digest;
    .registers 3

    .line 0
    new-instance v0, Lorg/bouncycastle/crypto/digests/SHA3Digest;

    const/16 v1, 0x100

    sget-object v2, Lorg/bouncycastle/crypto/CryptoServicePurpose;->PRF:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/crypto/digests/SHA3Digest;-><init>(ILorg/bouncycastle/crypto/CryptoServicePurpose;)V

    return-object v0
.end method

.method public static createSHA3_384()Lorg/bouncycastle/crypto/Digest;
    .registers 2

    .line 0
    new-instance v0, Lorg/bouncycastle/crypto/digests/SHA3Digest;

    const/16 v1, 0x180

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/digests/SHA3Digest;-><init>(I)V

    return-object v0
.end method

.method public static createSHA3_384PRF()Lorg/bouncycastle/crypto/Digest;
    .registers 3

    .line 0
    new-instance v0, Lorg/bouncycastle/crypto/digests/SHA3Digest;

    const/16 v1, 0x180

    sget-object v2, Lorg/bouncycastle/crypto/CryptoServicePurpose;->PRF:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/crypto/digests/SHA3Digest;-><init>(ILorg/bouncycastle/crypto/CryptoServicePurpose;)V

    return-object v0
.end method

.method public static createSHA3_512()Lorg/bouncycastle/crypto/Digest;
    .registers 2

    .line 0
    new-instance v0, Lorg/bouncycastle/crypto/digests/SHA3Digest;

    const/16 v1, 0x200

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/digests/SHA3Digest;-><init>(I)V

    return-object v0
.end method

.method public static createSHA3_512PRF()Lorg/bouncycastle/crypto/Digest;
    .registers 3

    .line 0
    new-instance v0, Lorg/bouncycastle/crypto/digests/SHA3Digest;

    const/16 v1, 0x200

    sget-object v2, Lorg/bouncycastle/crypto/CryptoServicePurpose;->PRF:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/crypto/digests/SHA3Digest;-><init>(ILorg/bouncycastle/crypto/CryptoServicePurpose;)V

    return-object v0
.end method

.method public static createSHA512()Lorg/bouncycastle/crypto/Digest;
    .registers 1

    .line 0
    new-instance v0, Lorg/bouncycastle/crypto/digests/SHA512Digest;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/digests/SHA512Digest;-><init>()V

    return-object v0
.end method

.method public static createSHA512PRF()Lorg/bouncycastle/crypto/Digest;
    .registers 2

    .line 0
    new-instance v0, Lorg/bouncycastle/crypto/digests/SHA512Digest;

    sget-object v1, Lorg/bouncycastle/crypto/CryptoServicePurpose;->PRF:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/digests/SHA512Digest;-><init>(Lorg/bouncycastle/crypto/CryptoServicePurpose;)V

    return-object v0
.end method

.method public static createSHA512_224()Lorg/bouncycastle/crypto/Digest;
    .registers 2

    .line 0
    new-instance v0, Lorg/bouncycastle/crypto/digests/SHA512tDigest;

    const/16 v1, 0xe0

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/digests/SHA512tDigest;-><init>(I)V

    return-object v0
.end method

.method public static createSHA512_224PRF()Lorg/bouncycastle/crypto/Digest;
    .registers 3

    .line 0
    new-instance v0, Lorg/bouncycastle/crypto/digests/SHA512tDigest;

    const/16 v1, 0xe0

    sget-object v2, Lorg/bouncycastle/crypto/CryptoServicePurpose;->PRF:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/crypto/digests/SHA512tDigest;-><init>(ILorg/bouncycastle/crypto/CryptoServicePurpose;)V

    return-object v0
.end method

.method public static createSHA512_256()Lorg/bouncycastle/crypto/Digest;
    .registers 2

    .line 0
    new-instance v0, Lorg/bouncycastle/crypto/digests/SHA512tDigest;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/digests/SHA512tDigest;-><init>(I)V

    return-object v0
.end method

.method public static createSHA512_256PRF()Lorg/bouncycastle/crypto/Digest;
    .registers 3

    .line 0
    new-instance v0, Lorg/bouncycastle/crypto/digests/SHA512tDigest;

    const/16 v1, 0x100

    sget-object v2, Lorg/bouncycastle/crypto/CryptoServicePurpose;->PRF:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/crypto/digests/SHA512tDigest;-><init>(ILorg/bouncycastle/crypto/CryptoServicePurpose;)V

    return-object v0
.end method

.method public static createSHAKE128()Lorg/bouncycastle/crypto/Digest;
    .registers 2

    .line 0
    new-instance v0, Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;-><init>(I)V

    return-object v0
.end method

.method public static createSHAKE256()Lorg/bouncycastle/crypto/Digest;
    .registers 2

    .line 0
    new-instance v0, Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;-><init>(I)V

    return-object v0
.end method

###### Class org.bouncycastle.crypto.util.DigestFactory.AnonymousClass1 (org.bouncycastle.crypto.util.DigestFactory$1)
.class Lorg/bouncycastle/crypto/util/DigestFactory$1;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/util/DigestFactory$Cloner;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/util/DigestFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createClone(Lorg/bouncycastle/crypto/Digest;)Lorg/bouncycastle/crypto/Digest;
    .registers 2

    .line 0
    new-instance p0, Lorg/bouncycastle/crypto/digests/MD5Digest;

    check-cast p1, Lorg/bouncycastle/crypto/digests/MD5Digest;

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/digests/MD5Digest;-><init>(Lorg/bouncycastle/crypto/digests/MD5Digest;)V

    return-object p0
.end method

###### Class org.bouncycastle.crypto.util.DigestFactory.AnonymousClass10 (org.bouncycastle.crypto.util.DigestFactory$10)
.class Lorg/bouncycastle/crypto/util/DigestFactory$10;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/util/DigestFactory$Cloner;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/util/DigestFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createClone(Lorg/bouncycastle/crypto/Digest;)Lorg/bouncycastle/crypto/Digest;
    .registers 2

    .line 0
    new-instance p0, Lorg/bouncycastle/crypto/digests/SHA3Digest;

    check-cast p1, Lorg/bouncycastle/crypto/digests/SHA3Digest;

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/digests/SHA3Digest;-><init>(Lorg/bouncycastle/crypto/digests/SHA3Digest;)V

    return-object p0
.end method

###### Class org.bouncycastle.crypto.util.DigestFactory.AnonymousClass11 (org.bouncycastle.crypto.util.DigestFactory$11)
.class Lorg/bouncycastle/crypto/util/DigestFactory$11;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/util/DigestFactory$Cloner;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/util/DigestFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createClone(Lorg/bouncycastle/crypto/Digest;)Lorg/bouncycastle/crypto/Digest;
    .registers 2

    .line 0
    new-instance p0, Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    check-cast p1, Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;-><init>(Lorg/bouncycastle/crypto/digests/SHAKEDigest;)V

    return-object p0
.end method

###### Class org.bouncycastle.crypto.util.DigestFactory.AnonymousClass12 (org.bouncycastle.crypto.util.DigestFactory$12)
.class Lorg/bouncycastle/crypto/util/DigestFactory$12;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/util/DigestFactory$Cloner;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/util/DigestFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createClone(Lorg/bouncycastle/crypto/Digest;)Lorg/bouncycastle/crypto/Digest;
    .registers 2

    .line 0
    new-instance p0, Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    check-cast p1, Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;-><init>(Lorg/bouncycastle/crypto/digests/SHAKEDigest;)V

    return-object p0
.end method

###### Class org.bouncycastle.crypto.util.DigestFactory.AnonymousClass2 (org.bouncycastle.crypto.util.DigestFactory$2)
.class Lorg/bouncycastle/crypto/util/DigestFactory$2;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/util/DigestFactory$Cloner;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/util/DigestFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createClone(Lorg/bouncycastle/crypto/Digest;)Lorg/bouncycastle/crypto/Digest;
    .registers 2

    .line 0
    new-instance p0, Lorg/bouncycastle/crypto/digests/MD5Digest;

    check-cast p1, Lorg/bouncycastle/crypto/digests/MD5Digest;

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/digests/MD5Digest;-><init>(Lorg/bouncycastle/crypto/digests/MD5Digest;)V

    return-object p0
.end method

###### Class org.bouncycastle.crypto.util.DigestFactory.AnonymousClass3 (org.bouncycastle.crypto.util.DigestFactory$3)
.class Lorg/bouncycastle/crypto/util/DigestFactory$3;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/util/DigestFactory$Cloner;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/util/DigestFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createClone(Lorg/bouncycastle/crypto/Digest;)Lorg/bouncycastle/crypto/Digest;
    .registers 2

    .line 0
    new-instance p0, Lorg/bouncycastle/crypto/digests/SHA224Digest;

    check-cast p1, Lorg/bouncycastle/crypto/digests/SHA224Digest;

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/digests/SHA224Digest;-><init>(Lorg/bouncycastle/crypto/digests/SHA224Digest;)V

    return-object p0
.end method

###### Class org.bouncycastle.crypto.util.DigestFactory.AnonymousClass4 (org.bouncycastle.crypto.util.DigestFactory$4)
.class Lorg/bouncycastle/crypto/util/DigestFactory$4;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/util/DigestFactory$Cloner;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/util/DigestFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createClone(Lorg/bouncycastle/crypto/Digest;)Lorg/bouncycastle/crypto/Digest;
    .registers 2

    .line 0
    invoke-static {p1}, Lorg/bouncycastle/crypto/digests/SHA256Digest;->newInstance(Lorg/bouncycastle/crypto/Digest;)Lorg/bouncycastle/crypto/SavableDigest;

    move-result-object p0

    return-object p0
.end method

###### Class org.bouncycastle.crypto.util.DigestFactory.AnonymousClass5 (org.bouncycastle.crypto.util.DigestFactory$5)
.class Lorg/bouncycastle/crypto/util/DigestFactory$5;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/util/DigestFactory$Cloner;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/util/DigestFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createClone(Lorg/bouncycastle/crypto/Digest;)Lorg/bouncycastle/crypto/Digest;
    .registers 2

    .line 0
    new-instance p0, Lorg/bouncycastle/crypto/digests/SHA384Digest;

    check-cast p1, Lorg/bouncycastle/crypto/digests/SHA384Digest;

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/digests/SHA384Digest;-><init>(Lorg/bouncycastle/crypto/digests/SHA384Digest;)V

    return-object p0
.end method

###### Class org.bouncycastle.crypto.util.DigestFactory.AnonymousClass6 (org.bouncycastle.crypto.util.DigestFactory$6)
.class Lorg/bouncycastle/crypto/util/DigestFactory$6;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/util/DigestFactory$Cloner;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/util/DigestFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createClone(Lorg/bouncycastle/crypto/Digest;)Lorg/bouncycastle/crypto/Digest;
    .registers 2

    .line 0
    new-instance p0, Lorg/bouncycastle/crypto/digests/SHA512Digest;

    check-cast p1, Lorg/bouncycastle/crypto/digests/SHA512Digest;

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/digests/SHA512Digest;-><init>(Lorg/bouncycastle/crypto/digests/SHA512Digest;)V

    return-object p0
.end method

###### Class org.bouncycastle.crypto.util.DigestFactory.AnonymousClass7 (org.bouncycastle.crypto.util.DigestFactory$7)
.class Lorg/bouncycastle/crypto/util/DigestFactory$7;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/util/DigestFactory$Cloner;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/util/DigestFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createClone(Lorg/bouncycastle/crypto/Digest;)Lorg/bouncycastle/crypto/Digest;
    .registers 2

    .line 0
    new-instance p0, Lorg/bouncycastle/crypto/digests/SHA3Digest;

    check-cast p1, Lorg/bouncycastle/crypto/digests/SHA3Digest;

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/digests/SHA3Digest;-><init>(Lorg/bouncycastle/crypto/digests/SHA3Digest;)V

    return-object p0
.end method

###### Class org.bouncycastle.crypto.util.DigestFactory.AnonymousClass8 (org.bouncycastle.crypto.util.DigestFactory$8)
.class Lorg/bouncycastle/crypto/util/DigestFactory$8;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/util/DigestFactory$Cloner;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/util/DigestFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createClone(Lorg/bouncycastle/crypto/Digest;)Lorg/bouncycastle/crypto/Digest;
    .registers 2

    .line 0
    new-instance p0, Lorg/bouncycastle/crypto/digests/SHA3Digest;

    check-cast p1, Lorg/bouncycastle/crypto/digests/SHA3Digest;

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/digests/SHA3Digest;-><init>(Lorg/bouncycastle/crypto/digests/SHA3Digest;)V

    return-object p0
.end method

###### Class org.bouncycastle.crypto.util.DigestFactory.AnonymousClass9 (org.bouncycastle.crypto.util.DigestFactory$9)
.class Lorg/bouncycastle/crypto/util/DigestFactory$9;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/util/DigestFactory$Cloner;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/util/DigestFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createClone(Lorg/bouncycastle/crypto/Digest;)Lorg/bouncycastle/crypto/Digest;
    .registers 2

    .line 0
    new-instance p0, Lorg/bouncycastle/crypto/digests/SHA3Digest;

    check-cast p1, Lorg/bouncycastle/crypto/digests/SHA3Digest;

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/digests/SHA3Digest;-><init>(Lorg/bouncycastle/crypto/digests/SHA3Digest;)V

    return-object p0
.end method

###### Class org.bouncycastle.crypto.util.DigestFactory.Cloner (org.bouncycastle.crypto.util.DigestFactory$Cloner)
.class interface abstract Lorg/bouncycastle/crypto/util/DigestFactory$Cloner;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/util/DigestFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Cloner"
.end annotation


# virtual methods
.method public abstract createClone(Lorg/bouncycastle/crypto/Digest;)Lorg/bouncycastle/crypto/Digest;
.end method
