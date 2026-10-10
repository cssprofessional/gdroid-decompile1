###### Class io.ktor.network.tls.extensions.HashAlgorithm (io.ktor.network.tls.extensions.HashAlgorithm)
.class public final enum Lio/ktor/network/tls/extensions/HashAlgorithm;
.super Ljava/lang/Enum;
.source "SignatureAlgorithm.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/ktor/network/tls/extensions/HashAlgorithm$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/ktor/network/tls/extensions/HashAlgorithm;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lio/ktor/network/tls/extensions/HashAlgorithm;

.field public static final Companion:Lio/ktor/network/tls/extensions/HashAlgorithm$Companion;

.field public static final enum INTRINSIC:Lio/ktor/network/tls/extensions/HashAlgorithm;

.field public static final enum MD5:Lio/ktor/network/tls/extensions/HashAlgorithm;

.field public static final enum NONE:Lio/ktor/network/tls/extensions/HashAlgorithm;

.field public static final enum SHA1:Lio/ktor/network/tls/extensions/HashAlgorithm;

.field public static final enum SHA224:Lio/ktor/network/tls/extensions/HashAlgorithm;

.field public static final enum SHA256:Lio/ktor/network/tls/extensions/HashAlgorithm;

.field public static final enum SHA384:Lio/ktor/network/tls/extensions/HashAlgorithm;

.field public static final enum SHA512:Lio/ktor/network/tls/extensions/HashAlgorithm;


# instance fields
.field private final code:B

.field private final macName:Ljava/lang/String;

.field private final openSSLName:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lio/ktor/network/tls/extensions/HashAlgorithm;
    .registers 8

    .line 0
    sget-object v0, Lio/ktor/network/tls/extensions/HashAlgorithm;->NONE:Lio/ktor/network/tls/extensions/HashAlgorithm;

    sget-object v1, Lio/ktor/network/tls/extensions/HashAlgorithm;->MD5:Lio/ktor/network/tls/extensions/HashAlgorithm;

    sget-object v2, Lio/ktor/network/tls/extensions/HashAlgorithm;->SHA1:Lio/ktor/network/tls/extensions/HashAlgorithm;

    sget-object v3, Lio/ktor/network/tls/extensions/HashAlgorithm;->SHA224:Lio/ktor/network/tls/extensions/HashAlgorithm;

    sget-object v4, Lio/ktor/network/tls/extensions/HashAlgorithm;->SHA256:Lio/ktor/network/tls/extensions/HashAlgorithm;

    sget-object v5, Lio/ktor/network/tls/extensions/HashAlgorithm;->SHA384:Lio/ktor/network/tls/extensions/HashAlgorithm;

    sget-object v6, Lio/ktor/network/tls/extensions/HashAlgorithm;->SHA512:Lio/ktor/network/tls/extensions/HashAlgorithm;

    sget-object v7, Lio/ktor/network/tls/extensions/HashAlgorithm;->INTRINSIC:Lio/ktor/network/tls/extensions/HashAlgorithm;

    filled-new-array/range {v0 .. v7}, [Lio/ktor/network/tls/extensions/HashAlgorithm;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 13

    .line 22
    new-instance v6, Lio/ktor/network/tls/extensions/HashAlgorithm;

    const-string v4, ""

    const-string v5, ""

    const-string v1, "NONE"

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lio/ktor/network/tls/extensions/HashAlgorithm;-><init>(Ljava/lang/String;IBLjava/lang/String;Ljava/lang/String;)V

    sput-object v6, Lio/ktor/network/tls/extensions/HashAlgorithm;->NONE:Lio/ktor/network/tls/extensions/HashAlgorithm;

    .line 23
    new-instance v0, Lio/ktor/network/tls/extensions/HashAlgorithm;

    const-string v11, "MD5"

    const-string v12, "HmacMD5"

    const-string v8, "MD5"

    const/4 v9, 0x1

    const/4 v10, 0x1

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lio/ktor/network/tls/extensions/HashAlgorithm;-><init>(Ljava/lang/String;IBLjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lio/ktor/network/tls/extensions/HashAlgorithm;->MD5:Lio/ktor/network/tls/extensions/HashAlgorithm;

    .line 24
    new-instance v0, Lio/ktor/network/tls/extensions/HashAlgorithm;

    const-string v5, "SHA-1"

    const-string v6, "HmacSHA1"

    const-string v2, "SHA1"

    const/4 v3, 0x2

    const/4 v4, 0x2

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lio/ktor/network/tls/extensions/HashAlgorithm;-><init>(Ljava/lang/String;IBLjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lio/ktor/network/tls/extensions/HashAlgorithm;->SHA1:Lio/ktor/network/tls/extensions/HashAlgorithm;

    .line 25
    new-instance v0, Lio/ktor/network/tls/extensions/HashAlgorithm;

    const-string v11, "SHA-224"

    const-string v12, "HmacSHA224"

    const-string v8, "SHA224"

    const/4 v9, 0x3

    const/4 v10, 0x3

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lio/ktor/network/tls/extensions/HashAlgorithm;-><init>(Ljava/lang/String;IBLjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lio/ktor/network/tls/extensions/HashAlgorithm;->SHA224:Lio/ktor/network/tls/extensions/HashAlgorithm;

    .line 26
    new-instance v0, Lio/ktor/network/tls/extensions/HashAlgorithm;

    const-string v5, "SHA-256"

    const-string v6, "HmacSHA256"

    const-string v2, "SHA256"

    const/4 v3, 0x4

    const/4 v4, 0x4

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lio/ktor/network/tls/extensions/HashAlgorithm;-><init>(Ljava/lang/String;IBLjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lio/ktor/network/tls/extensions/HashAlgorithm;->SHA256:Lio/ktor/network/tls/extensions/HashAlgorithm;

    .line 27
    new-instance v0, Lio/ktor/network/tls/extensions/HashAlgorithm;

    const-string v11, "SHA-384"

    const-string v12, "HmacSHA384"

    const-string v8, "SHA384"

    const/4 v9, 0x5

    const/4 v10, 0x5

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lio/ktor/network/tls/extensions/HashAlgorithm;-><init>(Ljava/lang/String;IBLjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lio/ktor/network/tls/extensions/HashAlgorithm;->SHA384:Lio/ktor/network/tls/extensions/HashAlgorithm;

    .line 28
    new-instance v0, Lio/ktor/network/tls/extensions/HashAlgorithm;

    const-string v5, "SHA-512"

    const-string v6, "HmacSHA512"

    const-string v2, "SHA512"

    const/4 v3, 0x6

    const/4 v4, 0x6

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lio/ktor/network/tls/extensions/HashAlgorithm;-><init>(Ljava/lang/String;IBLjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lio/ktor/network/tls/extensions/HashAlgorithm;->SHA512:Lio/ktor/network/tls/extensions/HashAlgorithm;

    .line 30
    new-instance v0, Lio/ktor/network/tls/extensions/HashAlgorithm;

    const-string v11, "INTRINSIC"

    const-string v12, "Intrinsic"

    const-string v8, "INTRINSIC"

    const/4 v9, 0x7

    const/16 v10, 0x8

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lio/ktor/network/tls/extensions/HashAlgorithm;-><init>(Ljava/lang/String;IBLjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lio/ktor/network/tls/extensions/HashAlgorithm;->INTRINSIC:Lio/ktor/network/tls/extensions/HashAlgorithm;

    invoke-static {}, Lio/ktor/network/tls/extensions/HashAlgorithm;->$values()[Lio/ktor/network/tls/extensions/HashAlgorithm;

    move-result-object v0

    sput-object v0, Lio/ktor/network/tls/extensions/HashAlgorithm;->$VALUES:[Lio/ktor/network/tls/extensions/HashAlgorithm;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lio/ktor/network/tls/extensions/HashAlgorithm;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v0, Lio/ktor/network/tls/extensions/HashAlgorithm$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/ktor/network/tls/extensions/HashAlgorithm$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/ktor/network/tls/extensions/HashAlgorithm;->Companion:Lio/ktor/network/tls/extensions/HashAlgorithm$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IBLjava/lang/String;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(B",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-byte p3, p0, Lio/ktor/network/tls/extensions/HashAlgorithm;->code:B

    iput-object p4, p0, Lio/ktor/network/tls/extensions/HashAlgorithm;->openSSLName:Ljava/lang/String;

    iput-object p5, p0, Lio/ktor/network/tls/extensions/HashAlgorithm;->macName:Ljava/lang/String;

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lio/ktor/network/tls/extensions/HashAlgorithm;",
            ">;"
        }
    .end annotation

    .line 0
    sget-object v0, Lio/ktor/network/tls/extensions/HashAlgorithm;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/ktor/network/tls/extensions/HashAlgorithm;
    .registers 2

    .line 0
    const-class v0, Lio/ktor/network/tls/extensions/HashAlgorithm;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/ktor/network/tls/extensions/HashAlgorithm;

    return-object p0
.end method

.method public static values()[Lio/ktor/network/tls/extensions/HashAlgorithm;
    .registers 1

    .line 0
    sget-object v0, Lio/ktor/network/tls/extensions/HashAlgorithm;->$VALUES:[Lio/ktor/network/tls/extensions/HashAlgorithm;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/ktor/network/tls/extensions/HashAlgorithm;

    return-object v0
.end method


# virtual methods
.method public final getCode()B
    .registers 1

    .line 21
    iget-byte p0, p0, Lio/ktor/network/tls/extensions/HashAlgorithm;->code:B

    return p0
.end method

.method public final getMacName()Ljava/lang/String;
    .registers 1

    .line 21
    iget-object p0, p0, Lio/ktor/network/tls/extensions/HashAlgorithm;->macName:Ljava/lang/String;

    return-object p0
.end method

.method public final getOpenSSLName()Ljava/lang/String;
    .registers 1

    .line 21
    iget-object p0, p0, Lio/ktor/network/tls/extensions/HashAlgorithm;->openSSLName:Ljava/lang/String;

    return-object p0
.end method

###### Class io.ktor.network.tls.extensions.HashAlgorithm.Companion (io.ktor.network.tls.extensions.HashAlgorithm$Companion)
.class public final Lio/ktor/network/tls/extensions/HashAlgorithm$Companion;
.super Ljava/lang/Object;
.source "SignatureAlgorithm.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/network/tls/extensions/HashAlgorithm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSignatureAlgorithm.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SignatureAlgorithm.kt\nio/ktor/network/tls/extensions/HashAlgorithm$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,144:1\n1#2:145\n*E\n"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lio/ktor/network/tls/extensions/HashAlgorithm$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final byCode(B)Lio/ktor/network/tls/extensions/HashAlgorithm;
    .registers 5

    .line 40
    invoke-static {}, Lio/ktor/network/tls/extensions/HashAlgorithm;->getEntries()Lkotlin/enums/EnumEntries;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lio/ktor/network/tls/extensions/HashAlgorithm;

    invoke-virtual {v2}, Lio/ktor/network/tls/extensions/HashAlgorithm;->getCode()B

    move-result v2

    if-ne v2, p1, :cond_8

    goto :goto_1e

    :cond_1d
    move-object v0, v1

    :goto_1e
    check-cast v0, Lio/ktor/network/tls/extensions/HashAlgorithm;

    if-eqz v0, :cond_23

    return-object v0

    .line 41
    :cond_23
    new-instance p0, Lio/ktor/network/tls/TLSException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown hash algorithm: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x2

    invoke-direct {p0, p1, v1, v0, v1}, Lio/ktor/network/tls/TLSException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw p0
.end method
