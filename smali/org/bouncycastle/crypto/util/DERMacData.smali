###### Class org.bouncycastle.crypto.util.DERMacData (org.bouncycastle.crypto.util.DERMacData)
.class public final Lorg/bouncycastle/crypto/util/DERMacData;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/crypto/util/DERMacData$Builder;,
        Lorg/bouncycastle/crypto/util/DERMacData$Type;
    }
.end annotation


# instance fields
.field private final macData:[B


# direct methods
.method private constructor <init>([B)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/crypto/util/DERMacData;->macData:[B

    return-void
.end method

.method public synthetic constructor <init>([BLorg/bouncycastle/crypto/util/DERMacData$1;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/util/DERMacData;-><init>([B)V

    return-void
.end method


# virtual methods
.method public getMacData()[B
    .registers 1

    .line 0
    iget-object p0, p0, Lorg/bouncycastle/crypto/util/DERMacData;->macData:[B

    invoke-static {p0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p0

    return-object p0
.end method

###### Class org.bouncycastle.crypto.util.DERMacData.AnonymousClass1 (org.bouncycastle.crypto.util.DERMacData$1)
.class synthetic Lorg/bouncycastle/crypto/util/DERMacData$1;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/util/DERMacData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$org$bouncycastle$crypto$util$DERMacData$Type:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 0
    invoke-static {}, Lorg/bouncycastle/crypto/util/DERMacData$Type;->values()[Lorg/bouncycastle/crypto/util/DERMacData$Type;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/bouncycastle/crypto/util/DERMacData$1;->$SwitchMap$org$bouncycastle$crypto$util$DERMacData$Type:[I

    :try_start_9
    sget-object v1, Lorg/bouncycastle/crypto/util/DERMacData$Type;->UNILATERALU:Lorg/bouncycastle/crypto/util/DERMacData$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lorg/bouncycastle/crypto/util/DERMacData$1;->$SwitchMap$org$bouncycastle$crypto$util$DERMacData$Type:[I

    sget-object v1, Lorg/bouncycastle/crypto/util/DERMacData$Type;->BILATERALU:Lorg/bouncycastle/crypto/util/DERMacData$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Lorg/bouncycastle/crypto/util/DERMacData$1;->$SwitchMap$org$bouncycastle$crypto$util$DERMacData$Type:[I

    sget-object v1, Lorg/bouncycastle/crypto/util/DERMacData$Type;->UNILATERALV:Lorg/bouncycastle/crypto/util/DERMacData$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    :try_start_28
    sget-object v0, Lorg/bouncycastle/crypto/util/DERMacData$1;->$SwitchMap$org$bouncycastle$crypto$util$DERMacData$Type:[I

    sget-object v1, Lorg/bouncycastle/crypto/util/DERMacData$Type;->BILATERALV:Lorg/bouncycastle/crypto/util/DERMacData$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_33

    :catch_33
    return-void
.end method

###### Class org.bouncycastle.crypto.util.DERMacData.Builder (org.bouncycastle.crypto.util.DERMacData$Builder)
.class public final Lorg/bouncycastle/crypto/util/DERMacData$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/util/DERMacData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private ephemDataU:Lorg/bouncycastle/asn1/ASN1OctetString;

.field private ephemDataV:Lorg/bouncycastle/asn1/ASN1OctetString;

.field private idU:Lorg/bouncycastle/asn1/ASN1OctetString;

.field private idV:Lorg/bouncycastle/asn1/ASN1OctetString;

.field private text:[B

.field private final type:Lorg/bouncycastle/crypto/util/DERMacData$Type;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/util/DERMacData$Type;[B[B[B[B)V
    .registers 6

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/crypto/util/DERMacData$Builder;->type:Lorg/bouncycastle/crypto/util/DERMacData$Type;

    invoke-static {p2}, Lorg/bouncycastle/crypto/util/DerUtil;->getOctetString([B)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/util/DERMacData$Builder;->idU:Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-static {p3}, Lorg/bouncycastle/crypto/util/DerUtil;->getOctetString([B)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/util/DERMacData$Builder;->idV:Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-static {p4}, Lorg/bouncycastle/crypto/util/DerUtil;->getOctetString([B)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/util/DERMacData$Builder;->ephemDataU:Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-static {p5}, Lorg/bouncycastle/crypto/util/DerUtil;->getOctetString([B)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/util/DERMacData$Builder;->ephemDataV:Lorg/bouncycastle/asn1/ASN1OctetString;

    return-void
.end method

.method private concatenate([B[B[B[B[B[B)[B
    .registers 7

    .line 0
    invoke-static {p1, p2, p3}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B[B)[B

    move-result-object p0

    invoke-static {p4, p5, p6}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B[B)[B

    move-result-object p1

    invoke-static {p0, p1}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public build()Lorg/bouncycastle/crypto/util/DERMacData;
    .registers 11

    .line 0
    sget-object v0, Lorg/bouncycastle/crypto/util/DERMacData$1;->$SwitchMap$org$bouncycastle$crypto$util$DERMacData$Type:[I

    iget-object v1, p0, Lorg/bouncycastle/crypto/util/DERMacData$Builder;->type:Lorg/bouncycastle/crypto/util/DERMacData$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_4b

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4b

    const/4 v1, 0x3

    if-eq v0, v1, :cond_20

    const/4 v1, 0x4

    if-ne v0, v1, :cond_18

    goto :goto_20

    :cond_18
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Unknown type encountered in build"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_20
    :goto_20
    new-instance v0, Lorg/bouncycastle/crypto/util/DERMacData;

    iget-object v1, p0, Lorg/bouncycastle/crypto/util/DERMacData$Builder;->type:Lorg/bouncycastle/crypto/util/DERMacData$Type;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/util/DERMacData$Type;->getHeader()[B

    move-result-object v4

    iget-object v1, p0, Lorg/bouncycastle/crypto/util/DERMacData$Builder;->idV:Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-static {v1}, Lorg/bouncycastle/crypto/util/DerUtil;->toByteArray(Lorg/bouncycastle/asn1/ASN1Primitive;)[B

    move-result-object v5

    iget-object v1, p0, Lorg/bouncycastle/crypto/util/DERMacData$Builder;->idU:Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-static {v1}, Lorg/bouncycastle/crypto/util/DerUtil;->toByteArray(Lorg/bouncycastle/asn1/ASN1Primitive;)[B

    move-result-object v6

    iget-object v1, p0, Lorg/bouncycastle/crypto/util/DERMacData$Builder;->ephemDataV:Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-static {v1}, Lorg/bouncycastle/crypto/util/DerUtil;->toByteArray(Lorg/bouncycastle/asn1/ASN1Primitive;)[B

    move-result-object v7

    iget-object v1, p0, Lorg/bouncycastle/crypto/util/DERMacData$Builder;->ephemDataU:Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-static {v1}, Lorg/bouncycastle/crypto/util/DerUtil;->toByteArray(Lorg/bouncycastle/asn1/ASN1Primitive;)[B

    move-result-object v8

    iget-object v9, p0, Lorg/bouncycastle/crypto/util/DERMacData$Builder;->text:[B

    move-object v3, p0

    invoke-direct/range {v3 .. v9}, Lorg/bouncycastle/crypto/util/DERMacData$Builder;->concatenate([B[B[B[B[B[B)[B

    move-result-object p0

    invoke-direct {v0, p0, v2}, Lorg/bouncycastle/crypto/util/DERMacData;-><init>([BLorg/bouncycastle/crypto/util/DERMacData$1;)V

    return-object v0

    :cond_4b
    new-instance v0, Lorg/bouncycastle/crypto/util/DERMacData;

    iget-object v1, p0, Lorg/bouncycastle/crypto/util/DERMacData$Builder;->type:Lorg/bouncycastle/crypto/util/DERMacData$Type;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/util/DERMacData$Type;->getHeader()[B

    move-result-object v4

    iget-object v1, p0, Lorg/bouncycastle/crypto/util/DERMacData$Builder;->idU:Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-static {v1}, Lorg/bouncycastle/crypto/util/DerUtil;->toByteArray(Lorg/bouncycastle/asn1/ASN1Primitive;)[B

    move-result-object v5

    iget-object v1, p0, Lorg/bouncycastle/crypto/util/DERMacData$Builder;->idV:Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-static {v1}, Lorg/bouncycastle/crypto/util/DerUtil;->toByteArray(Lorg/bouncycastle/asn1/ASN1Primitive;)[B

    move-result-object v6

    iget-object v1, p0, Lorg/bouncycastle/crypto/util/DERMacData$Builder;->ephemDataU:Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-static {v1}, Lorg/bouncycastle/crypto/util/DerUtil;->toByteArray(Lorg/bouncycastle/asn1/ASN1Primitive;)[B

    move-result-object v7

    iget-object v1, p0, Lorg/bouncycastle/crypto/util/DERMacData$Builder;->ephemDataV:Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-static {v1}, Lorg/bouncycastle/crypto/util/DerUtil;->toByteArray(Lorg/bouncycastle/asn1/ASN1Primitive;)[B

    move-result-object v8

    iget-object v9, p0, Lorg/bouncycastle/crypto/util/DERMacData$Builder;->text:[B

    move-object v3, p0

    invoke-direct/range {v3 .. v9}, Lorg/bouncycastle/crypto/util/DERMacData$Builder;->concatenate([B[B[B[B[B[B)[B

    move-result-object p0

    invoke-direct {v0, p0, v2}, Lorg/bouncycastle/crypto/util/DERMacData;-><init>([BLorg/bouncycastle/crypto/util/DERMacData$1;)V

    return-object v0
.end method

.method public withText([B)Lorg/bouncycastle/crypto/util/DERMacData$Builder;
    .registers 4

    .line 0
    new-instance v0, Lorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v1, 0x0

    invoke-static {p1}, Lorg/bouncycastle/crypto/util/DerUtil;->getOctetString([B)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object p1

    invoke-direct {v0, v1, v1, p1}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-static {v0}, Lorg/bouncycastle/crypto/util/DerUtil;->toByteArray(Lorg/bouncycastle/asn1/ASN1Primitive;)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/util/DERMacData$Builder;->text:[B

    return-object p0
.end method

###### Class org.bouncycastle.crypto.util.DERMacData.Type (org.bouncycastle.crypto.util.DERMacData$Type)
.class public final enum Lorg/bouncycastle/crypto/util/DERMacData$Type;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/util/DERMacData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/bouncycastle/crypto/util/DERMacData$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/bouncycastle/crypto/util/DERMacData$Type;

.field public static final enum BILATERALU:Lorg/bouncycastle/crypto/util/DERMacData$Type;

.field public static final enum BILATERALV:Lorg/bouncycastle/crypto/util/DERMacData$Type;

.field public static final enum UNILATERALU:Lorg/bouncycastle/crypto/util/DERMacData$Type;

.field public static final enum UNILATERALV:Lorg/bouncycastle/crypto/util/DERMacData$Type;


# instance fields
.field private final enc:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lorg/bouncycastle/crypto/util/DERMacData$Type;
    .registers 4

    .line 0
    sget-object v0, Lorg/bouncycastle/crypto/util/DERMacData$Type;->UNILATERALU:Lorg/bouncycastle/crypto/util/DERMacData$Type;

    sget-object v1, Lorg/bouncycastle/crypto/util/DERMacData$Type;->UNILATERALV:Lorg/bouncycastle/crypto/util/DERMacData$Type;

    sget-object v2, Lorg/bouncycastle/crypto/util/DERMacData$Type;->BILATERALU:Lorg/bouncycastle/crypto/util/DERMacData$Type;

    sget-object v3, Lorg/bouncycastle/crypto/util/DERMacData$Type;->BILATERALV:Lorg/bouncycastle/crypto/util/DERMacData$Type;

    filled-new-array {v0, v1, v2, v3}, [Lorg/bouncycastle/crypto/util/DERMacData$Type;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 4

    .line 0
    new-instance v0, Lorg/bouncycastle/crypto/util/DERMacData$Type;

    const/4 v1, 0x0

    const-string v2, "KC_1_U"

    const-string v3, "UNILATERALU"

    invoke-direct {v0, v3, v1, v2}, Lorg/bouncycastle/crypto/util/DERMacData$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/crypto/util/DERMacData$Type;->UNILATERALU:Lorg/bouncycastle/crypto/util/DERMacData$Type;

    new-instance v0, Lorg/bouncycastle/crypto/util/DERMacData$Type;

    const/4 v1, 0x1

    const-string v2, "KC_1_V"

    const-string v3, "UNILATERALV"

    invoke-direct {v0, v3, v1, v2}, Lorg/bouncycastle/crypto/util/DERMacData$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/crypto/util/DERMacData$Type;->UNILATERALV:Lorg/bouncycastle/crypto/util/DERMacData$Type;

    new-instance v0, Lorg/bouncycastle/crypto/util/DERMacData$Type;

    const/4 v1, 0x2

    const-string v2, "KC_2_U"

    const-string v3, "BILATERALU"

    invoke-direct {v0, v3, v1, v2}, Lorg/bouncycastle/crypto/util/DERMacData$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/crypto/util/DERMacData$Type;->BILATERALU:Lorg/bouncycastle/crypto/util/DERMacData$Type;

    new-instance v0, Lorg/bouncycastle/crypto/util/DERMacData$Type;

    const/4 v1, 0x3

    const-string v2, "KC_2_V"

    const-string v3, "BILATERALV"

    invoke-direct {v0, v3, v1, v2}, Lorg/bouncycastle/crypto/util/DERMacData$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/crypto/util/DERMacData$Type;->BILATERALV:Lorg/bouncycastle/crypto/util/DERMacData$Type;

    invoke-static {}, Lorg/bouncycastle/crypto/util/DERMacData$Type;->$values()[Lorg/bouncycastle/crypto/util/DERMacData$Type;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/crypto/util/DERMacData$Type;->$VALUES:[Lorg/bouncycastle/crypto/util/DERMacData$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 0
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lorg/bouncycastle/crypto/util/DERMacData$Type;->enc:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/bouncycastle/crypto/util/DERMacData$Type;
    .registers 2

    .line 0
    const-class v0, Lorg/bouncycastle/crypto/util/DERMacData$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/crypto/util/DERMacData$Type;

    return-object p0
.end method

.method public static values()[Lorg/bouncycastle/crypto/util/DERMacData$Type;
    .registers 1

    .line 0
    sget-object v0, Lorg/bouncycastle/crypto/util/DERMacData$Type;->$VALUES:[Lorg/bouncycastle/crypto/util/DERMacData$Type;

    invoke-virtual {v0}, [Lorg/bouncycastle/crypto/util/DERMacData$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/bouncycastle/crypto/util/DERMacData$Type;

    return-object v0
.end method


# virtual methods
.method public getHeader()[B
    .registers 1

    .line 0
    iget-object p0, p0, Lorg/bouncycastle/crypto/util/DERMacData$Type;->enc:Ljava/lang/String;

    invoke-static {p0}, Lorg/bouncycastle/util/Strings;->toByteArray(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method
