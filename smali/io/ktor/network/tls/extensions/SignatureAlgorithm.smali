###### Class io.ktor.network.tls.extensions.SignatureAlgorithm (io.ktor.network.tls.extensions.SignatureAlgorithm)
.class public final enum Lio/ktor/network/tls/extensions/SignatureAlgorithm;
.super Ljava/lang/Enum;
.source "SignatureAlgorithm.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/ktor/network/tls/extensions/SignatureAlgorithm$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/ktor/network/tls/extensions/SignatureAlgorithm;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lio/ktor/network/tls/extensions/SignatureAlgorithm;

.field public static final enum ANON:Lio/ktor/network/tls/extensions/SignatureAlgorithm;

.field public static final Companion:Lio/ktor/network/tls/extensions/SignatureAlgorithm$Companion;

.field public static final enum DSA:Lio/ktor/network/tls/extensions/SignatureAlgorithm;

.field public static final enum ECDSA:Lio/ktor/network/tls/extensions/SignatureAlgorithm;

.field public static final enum ED25519:Lio/ktor/network/tls/extensions/SignatureAlgorithm;

.field public static final enum ED448:Lio/ktor/network/tls/extensions/SignatureAlgorithm;

.field public static final enum RSA:Lio/ktor/network/tls/extensions/SignatureAlgorithm;


# instance fields
.field private final code:B


# direct methods
.method private static final synthetic $values()[Lio/ktor/network/tls/extensions/SignatureAlgorithm;
    .registers 6

    .line 0
    sget-object v0, Lio/ktor/network/tls/extensions/SignatureAlgorithm;->ANON:Lio/ktor/network/tls/extensions/SignatureAlgorithm;

    sget-object v1, Lio/ktor/network/tls/extensions/SignatureAlgorithm;->RSA:Lio/ktor/network/tls/extensions/SignatureAlgorithm;

    sget-object v2, Lio/ktor/network/tls/extensions/SignatureAlgorithm;->DSA:Lio/ktor/network/tls/extensions/SignatureAlgorithm;

    sget-object v3, Lio/ktor/network/tls/extensions/SignatureAlgorithm;->ECDSA:Lio/ktor/network/tls/extensions/SignatureAlgorithm;

    sget-object v4, Lio/ktor/network/tls/extensions/SignatureAlgorithm;->ED25519:Lio/ktor/network/tls/extensions/SignatureAlgorithm;

    sget-object v5, Lio/ktor/network/tls/extensions/SignatureAlgorithm;->ED448:Lio/ktor/network/tls/extensions/SignatureAlgorithm;

    filled-new-array/range {v0 .. v5}, [Lio/ktor/network/tls/extensions/SignatureAlgorithm;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 4

    .line 53
    new-instance v0, Lio/ktor/network/tls/extensions/SignatureAlgorithm;

    const-string v1, "ANON"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lio/ktor/network/tls/extensions/SignatureAlgorithm;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lio/ktor/network/tls/extensions/SignatureAlgorithm;->ANON:Lio/ktor/network/tls/extensions/SignatureAlgorithm;

    .line 54
    new-instance v0, Lio/ktor/network/tls/extensions/SignatureAlgorithm;

    const-string v1, "RSA"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lio/ktor/network/tls/extensions/SignatureAlgorithm;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lio/ktor/network/tls/extensions/SignatureAlgorithm;->RSA:Lio/ktor/network/tls/extensions/SignatureAlgorithm;

    .line 55
    new-instance v0, Lio/ktor/network/tls/extensions/SignatureAlgorithm;

    const-string v1, "DSA"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lio/ktor/network/tls/extensions/SignatureAlgorithm;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lio/ktor/network/tls/extensions/SignatureAlgorithm;->DSA:Lio/ktor/network/tls/extensions/SignatureAlgorithm;

    .line 56
    new-instance v0, Lio/ktor/network/tls/extensions/SignatureAlgorithm;

    const-string v1, "ECDSA"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lio/ktor/network/tls/extensions/SignatureAlgorithm;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lio/ktor/network/tls/extensions/SignatureAlgorithm;->ECDSA:Lio/ktor/network/tls/extensions/SignatureAlgorithm;

    .line 58
    new-instance v0, Lio/ktor/network/tls/extensions/SignatureAlgorithm;

    const/4 v1, 0x4

    const/4 v2, 0x7

    const-string v3, "ED25519"

    invoke-direct {v0, v3, v1, v2}, Lio/ktor/network/tls/extensions/SignatureAlgorithm;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lio/ktor/network/tls/extensions/SignatureAlgorithm;->ED25519:Lio/ktor/network/tls/extensions/SignatureAlgorithm;

    .line 59
    new-instance v0, Lio/ktor/network/tls/extensions/SignatureAlgorithm;

    const/4 v1, 0x5

    const/16 v2, 0x8

    const-string v3, "ED448"

    invoke-direct {v0, v3, v1, v2}, Lio/ktor/network/tls/extensions/SignatureAlgorithm;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lio/ktor/network/tls/extensions/SignatureAlgorithm;->ED448:Lio/ktor/network/tls/extensions/SignatureAlgorithm;

    invoke-static {}, Lio/ktor/network/tls/extensions/SignatureAlgorithm;->$values()[Lio/ktor/network/tls/extensions/SignatureAlgorithm;

    move-result-object v0

    sput-object v0, Lio/ktor/network/tls/extensions/SignatureAlgorithm;->$VALUES:[Lio/ktor/network/tls/extensions/SignatureAlgorithm;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lio/ktor/network/tls/extensions/SignatureAlgorithm;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v0, Lio/ktor/network/tls/extensions/SignatureAlgorithm$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/ktor/network/tls/extensions/SignatureAlgorithm$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/ktor/network/tls/extensions/SignatureAlgorithm;->Companion:Lio/ktor/network/tls/extensions/SignatureAlgorithm$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IB)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(B)V"
        }
    .end annotation

    .line 52
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-byte p3, p0, Lio/ktor/network/tls/extensions/SignatureAlgorithm;->code:B

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lio/ktor/network/tls/extensions/SignatureAlgorithm;",
            ">;"
        }
    .end annotation

    .line 0
    sget-object v0, Lio/ktor/network/tls/extensions/SignatureAlgorithm;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/ktor/network/tls/extensions/SignatureAlgorithm;
    .registers 2

    .line 0
    const-class v0, Lio/ktor/network/tls/extensions/SignatureAlgorithm;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/ktor/network/tls/extensions/SignatureAlgorithm;

    return-object p0
.end method

.method public static values()[Lio/ktor/network/tls/extensions/SignatureAlgorithm;
    .registers 1

    .line 0
    sget-object v0, Lio/ktor/network/tls/extensions/SignatureAlgorithm;->$VALUES:[Lio/ktor/network/tls/extensions/SignatureAlgorithm;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/ktor/network/tls/extensions/SignatureAlgorithm;

    return-object v0
.end method


# virtual methods
.method public final getCode()B
    .registers 1

    .line 52
    iget-byte p0, p0, Lio/ktor/network/tls/extensions/SignatureAlgorithm;->code:B

    return p0
.end method

###### Class io.ktor.network.tls.extensions.SignatureAlgorithm.Companion (io.ktor.network.tls.extensions.SignatureAlgorithm$Companion)
.class public final Lio/ktor/network/tls/extensions/SignatureAlgorithm$Companion;
.super Ljava/lang/Object;
.source "SignatureAlgorithm.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/network/tls/extensions/SignatureAlgorithm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSignatureAlgorithm.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SignatureAlgorithm.kt\nio/ktor/network/tls/extensions/SignatureAlgorithm$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,144:1\n1#2:145\n*E\n"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lio/ktor/network/tls/extensions/SignatureAlgorithm$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final byCode(B)Lio/ktor/network/tls/extensions/SignatureAlgorithm;
    .registers 4

    .line 69
    invoke-static {}, Lio/ktor/network/tls/extensions/SignatureAlgorithm;->getEntries()Lkotlin/enums/EnumEntries;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lio/ktor/network/tls/extensions/SignatureAlgorithm;

    invoke-virtual {v1}, Lio/ktor/network/tls/extensions/SignatureAlgorithm;->getCode()B

    move-result v1

    if-ne v1, p1, :cond_8

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    :goto_1d
    check-cast v0, Lio/ktor/network/tls/extensions/SignatureAlgorithm;

    return-object v0
.end method
