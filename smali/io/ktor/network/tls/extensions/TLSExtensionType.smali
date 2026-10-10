###### Class io.ktor.network.tls.extensions.TLSExtensionType (io.ktor.network.tls.extensions.TLSExtensionType)
.class public final enum Lio/ktor/network/tls/extensions/TLSExtensionType;
.super Ljava/lang/Enum;
.source "TLSExtension.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/ktor/network/tls/extensions/TLSExtensionType$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/ktor/network/tls/extensions/TLSExtensionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lio/ktor/network/tls/extensions/TLSExtensionType;

.field public static final enum CLIENT_CERTIFICATE_URL:Lio/ktor/network/tls/extensions/TLSExtensionType;

.field public static final Companion:Lio/ktor/network/tls/extensions/TLSExtensionType$Companion;

.field public static final enum EC_POINT_FORMAT:Lio/ktor/network/tls/extensions/TLSExtensionType;

.field public static final enum ELLIPTIC_CURVES:Lio/ktor/network/tls/extensions/TLSExtensionType;

.field public static final enum MAX_FRAGMENT_LENGTH:Lio/ktor/network/tls/extensions/TLSExtensionType;

.field public static final enum SERVER_NAME:Lio/ktor/network/tls/extensions/TLSExtensionType;

.field public static final enum SIGNATURE_ALGORITHMS:Lio/ktor/network/tls/extensions/TLSExtensionType;

.field public static final enum STATUS_REQUEST:Lio/ktor/network/tls/extensions/TLSExtensionType;

.field public static final enum TRUNCATED_HMAC:Lio/ktor/network/tls/extensions/TLSExtensionType;

.field public static final enum TRUSTED_CA_KEYS:Lio/ktor/network/tls/extensions/TLSExtensionType;


# instance fields
.field private final code:S


# direct methods
.method private static final synthetic $values()[Lio/ktor/network/tls/extensions/TLSExtensionType;
    .registers 9

    .line 0
    sget-object v0, Lio/ktor/network/tls/extensions/TLSExtensionType;->SERVER_NAME:Lio/ktor/network/tls/extensions/TLSExtensionType;

    sget-object v1, Lio/ktor/network/tls/extensions/TLSExtensionType;->MAX_FRAGMENT_LENGTH:Lio/ktor/network/tls/extensions/TLSExtensionType;

    sget-object v2, Lio/ktor/network/tls/extensions/TLSExtensionType;->CLIENT_CERTIFICATE_URL:Lio/ktor/network/tls/extensions/TLSExtensionType;

    sget-object v3, Lio/ktor/network/tls/extensions/TLSExtensionType;->TRUSTED_CA_KEYS:Lio/ktor/network/tls/extensions/TLSExtensionType;

    sget-object v4, Lio/ktor/network/tls/extensions/TLSExtensionType;->TRUNCATED_HMAC:Lio/ktor/network/tls/extensions/TLSExtensionType;

    sget-object v5, Lio/ktor/network/tls/extensions/TLSExtensionType;->STATUS_REQUEST:Lio/ktor/network/tls/extensions/TLSExtensionType;

    sget-object v6, Lio/ktor/network/tls/extensions/TLSExtensionType;->ELLIPTIC_CURVES:Lio/ktor/network/tls/extensions/TLSExtensionType;

    sget-object v7, Lio/ktor/network/tls/extensions/TLSExtensionType;->EC_POINT_FORMAT:Lio/ktor/network/tls/extensions/TLSExtensionType;

    sget-object v8, Lio/ktor/network/tls/extensions/TLSExtensionType;->SIGNATURE_ALGORITHMS:Lio/ktor/network/tls/extensions/TLSExtensionType;

    filled-new-array/range {v0 .. v8}, [Lio/ktor/network/tls/extensions/TLSExtensionType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 4

    .line 11
    new-instance v0, Lio/ktor/network/tls/extensions/TLSExtensionType;

    const-string v1, "SERVER_NAME"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lio/ktor/network/tls/extensions/TLSExtensionType;-><init>(Ljava/lang/String;IS)V

    sput-object v0, Lio/ktor/network/tls/extensions/TLSExtensionType;->SERVER_NAME:Lio/ktor/network/tls/extensions/TLSExtensionType;

    .line 12
    new-instance v0, Lio/ktor/network/tls/extensions/TLSExtensionType;

    const-string v1, "MAX_FRAGMENT_LENGTH"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lio/ktor/network/tls/extensions/TLSExtensionType;-><init>(Ljava/lang/String;IS)V

    sput-object v0, Lio/ktor/network/tls/extensions/TLSExtensionType;->MAX_FRAGMENT_LENGTH:Lio/ktor/network/tls/extensions/TLSExtensionType;

    .line 13
    new-instance v0, Lio/ktor/network/tls/extensions/TLSExtensionType;

    const-string v1, "CLIENT_CERTIFICATE_URL"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lio/ktor/network/tls/extensions/TLSExtensionType;-><init>(Ljava/lang/String;IS)V

    sput-object v0, Lio/ktor/network/tls/extensions/TLSExtensionType;->CLIENT_CERTIFICATE_URL:Lio/ktor/network/tls/extensions/TLSExtensionType;

    .line 14
    new-instance v0, Lio/ktor/network/tls/extensions/TLSExtensionType;

    const-string v1, "TRUSTED_CA_KEYS"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lio/ktor/network/tls/extensions/TLSExtensionType;-><init>(Ljava/lang/String;IS)V

    sput-object v0, Lio/ktor/network/tls/extensions/TLSExtensionType;->TRUSTED_CA_KEYS:Lio/ktor/network/tls/extensions/TLSExtensionType;

    .line 15
    new-instance v0, Lio/ktor/network/tls/extensions/TLSExtensionType;

    const-string v1, "TRUNCATED_HMAC"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v2}, Lio/ktor/network/tls/extensions/TLSExtensionType;-><init>(Ljava/lang/String;IS)V

    sput-object v0, Lio/ktor/network/tls/extensions/TLSExtensionType;->TRUNCATED_HMAC:Lio/ktor/network/tls/extensions/TLSExtensionType;

    .line 16
    new-instance v0, Lio/ktor/network/tls/extensions/TLSExtensionType;

    const-string v1, "STATUS_REQUEST"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v2}, Lio/ktor/network/tls/extensions/TLSExtensionType;-><init>(Ljava/lang/String;IS)V

    sput-object v0, Lio/ktor/network/tls/extensions/TLSExtensionType;->STATUS_REQUEST:Lio/ktor/network/tls/extensions/TLSExtensionType;

    .line 18
    new-instance v0, Lio/ktor/network/tls/extensions/TLSExtensionType;

    const/4 v1, 0x6

    const/16 v2, 0xa

    const-string v3, "ELLIPTIC_CURVES"

    invoke-direct {v0, v3, v1, v2}, Lio/ktor/network/tls/extensions/TLSExtensionType;-><init>(Ljava/lang/String;IS)V

    sput-object v0, Lio/ktor/network/tls/extensions/TLSExtensionType;->ELLIPTIC_CURVES:Lio/ktor/network/tls/extensions/TLSExtensionType;

    .line 19
    new-instance v0, Lio/ktor/network/tls/extensions/TLSExtensionType;

    const/4 v1, 0x7

    const/16 v2, 0xb

    const-string v3, "EC_POINT_FORMAT"

    invoke-direct {v0, v3, v1, v2}, Lio/ktor/network/tls/extensions/TLSExtensionType;-><init>(Ljava/lang/String;IS)V

    sput-object v0, Lio/ktor/network/tls/extensions/TLSExtensionType;->EC_POINT_FORMAT:Lio/ktor/network/tls/extensions/TLSExtensionType;

    .line 20
    new-instance v0, Lio/ktor/network/tls/extensions/TLSExtensionType;

    const/16 v1, 0x8

    const/16 v2, 0xd

    const-string v3, "SIGNATURE_ALGORITHMS"

    invoke-direct {v0, v3, v1, v2}, Lio/ktor/network/tls/extensions/TLSExtensionType;-><init>(Ljava/lang/String;IS)V

    sput-object v0, Lio/ktor/network/tls/extensions/TLSExtensionType;->SIGNATURE_ALGORITHMS:Lio/ktor/network/tls/extensions/TLSExtensionType;

    invoke-static {}, Lio/ktor/network/tls/extensions/TLSExtensionType;->$values()[Lio/ktor/network/tls/extensions/TLSExtensionType;

    move-result-object v0

    sput-object v0, Lio/ktor/network/tls/extensions/TLSExtensionType;->$VALUES:[Lio/ktor/network/tls/extensions/TLSExtensionType;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lio/ktor/network/tls/extensions/TLSExtensionType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v0, Lio/ktor/network/tls/extensions/TLSExtensionType$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/ktor/network/tls/extensions/TLSExtensionType$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/ktor/network/tls/extensions/TLSExtensionType;->Companion:Lio/ktor/network/tls/extensions/TLSExtensionType$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IS)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(S)V"
        }
    .end annotation

    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-short p3, p0, Lio/ktor/network/tls/extensions/TLSExtensionType;->code:S

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lio/ktor/network/tls/extensions/TLSExtensionType;",
            ">;"
        }
    .end annotation

    .line 0
    sget-object v0, Lio/ktor/network/tls/extensions/TLSExtensionType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/ktor/network/tls/extensions/TLSExtensionType;
    .registers 2

    .line 0
    const-class v0, Lio/ktor/network/tls/extensions/TLSExtensionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/ktor/network/tls/extensions/TLSExtensionType;

    return-object p0
.end method

.method public static values()[Lio/ktor/network/tls/extensions/TLSExtensionType;
    .registers 1

    .line 0
    sget-object v0, Lio/ktor/network/tls/extensions/TLSExtensionType;->$VALUES:[Lio/ktor/network/tls/extensions/TLSExtensionType;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/ktor/network/tls/extensions/TLSExtensionType;

    return-object v0
.end method


# virtual methods
.method public final getCode()S
    .registers 1

    .line 10
    iget-short p0, p0, Lio/ktor/network/tls/extensions/TLSExtensionType;->code:S

    return p0
.end method

###### Class io.ktor.network.tls.extensions.TLSExtensionType.Companion (io.ktor.network.tls.extensions.TLSExtensionType$Companion)
.class public final Lio/ktor/network/tls/extensions/TLSExtensionType$Companion;
.super Ljava/lang/Object;
.source "TLSExtension.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/network/tls/extensions/TLSExtensionType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTLSExtension.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TLSExtension.kt\nio/ktor/network/tls/extensions/TLSExtensionType$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,35:1\n1#2:36\n*E\n"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lio/ktor/network/tls/extensions/TLSExtensionType$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final byCode(I)Lio/ktor/network/tls/extensions/TLSExtensionType;
    .registers 6

    .line 24
    invoke-static {}, Lio/ktor/network/tls/extensions/TLSExtensionType;->getEntries()Lkotlin/enums/EnumEntries;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lio/ktor/network/tls/extensions/TLSExtensionType;

    invoke-virtual {v2}, Lio/ktor/network/tls/extensions/TLSExtensionType;->getCode()S

    move-result v2

    int-to-short v3, p1

    if-ne v2, v3, :cond_8

    goto :goto_1f

    :cond_1e
    move-object v0, v1

    :goto_1f
    check-cast v0, Lio/ktor/network/tls/extensions/TLSExtensionType;

    if-eqz v0, :cond_24

    return-object v0

    :cond_24
    new-instance p0, Lio/ktor/network/tls/TLSException;

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown server hello extension type: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x2

    .line 24
    invoke-direct {p0, p1, v1, v0, v1}, Lio/ktor/network/tls/TLSException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw p0
.end method
