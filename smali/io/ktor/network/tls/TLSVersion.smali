###### Class io.ktor.network.tls.TLSVersion (io.ktor.network.tls.TLSVersion)
.class public final enum Lio/ktor/network/tls/TLSVersion;
.super Ljava/lang/Enum;
.source "TLSVersion.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/ktor/network/tls/TLSVersion$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/ktor/network/tls/TLSVersion;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lio/ktor/network/tls/TLSVersion;

.field public static final Companion:Lio/ktor/network/tls/TLSVersion$Companion;

.field public static final enum SSL3:Lio/ktor/network/tls/TLSVersion;

.field public static final enum TLS10:Lio/ktor/network/tls/TLSVersion;

.field public static final enum TLS11:Lio/ktor/network/tls/TLSVersion;

.field public static final enum TLS12:Lio/ktor/network/tls/TLSVersion;

.field private static final byOrdinal:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/ktor/network/tls/TLSVersion;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final code:I


# direct methods
.method private static final synthetic $values()[Lio/ktor/network/tls/TLSVersion;
    .registers 4

    .line 0
    sget-object v0, Lio/ktor/network/tls/TLSVersion;->SSL3:Lio/ktor/network/tls/TLSVersion;

    sget-object v1, Lio/ktor/network/tls/TLSVersion;->TLS10:Lio/ktor/network/tls/TLSVersion;

    sget-object v2, Lio/ktor/network/tls/TLSVersion;->TLS11:Lio/ktor/network/tls/TLSVersion;

    sget-object v3, Lio/ktor/network/tls/TLSVersion;->TLS12:Lio/ktor/network/tls/TLSVersion;

    filled-new-array {v0, v1, v2, v3}, [Lio/ktor/network/tls/TLSVersion;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 4

    .line 17
    new-instance v0, Lio/ktor/network/tls/TLSVersion;

    const/4 v1, 0x0

    const/16 v2, 0x300

    const-string v3, "SSL3"

    invoke-direct {v0, v3, v1, v2}, Lio/ktor/network/tls/TLSVersion;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/ktor/network/tls/TLSVersion;->SSL3:Lio/ktor/network/tls/TLSVersion;

    .line 18
    new-instance v0, Lio/ktor/network/tls/TLSVersion;

    const/4 v1, 0x1

    const/16 v2, 0x301

    const-string v3, "TLS10"

    invoke-direct {v0, v3, v1, v2}, Lio/ktor/network/tls/TLSVersion;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/ktor/network/tls/TLSVersion;->TLS10:Lio/ktor/network/tls/TLSVersion;

    .line 19
    new-instance v0, Lio/ktor/network/tls/TLSVersion;

    const/4 v1, 0x2

    const/16 v2, 0x302

    const-string v3, "TLS11"

    invoke-direct {v0, v3, v1, v2}, Lio/ktor/network/tls/TLSVersion;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/ktor/network/tls/TLSVersion;->TLS11:Lio/ktor/network/tls/TLSVersion;

    .line 20
    new-instance v0, Lio/ktor/network/tls/TLSVersion;

    const/4 v1, 0x3

    const/16 v2, 0x303

    const-string v3, "TLS12"

    invoke-direct {v0, v3, v1, v2}, Lio/ktor/network/tls/TLSVersion;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/ktor/network/tls/TLSVersion;->TLS12:Lio/ktor/network/tls/TLSVersion;

    invoke-static {}, Lio/ktor/network/tls/TLSVersion;->$values()[Lio/ktor/network/tls/TLSVersion;

    move-result-object v0

    sput-object v0, Lio/ktor/network/tls/TLSVersion;->$VALUES:[Lio/ktor/network/tls/TLSVersion;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lio/ktor/network/tls/TLSVersion;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v0, Lio/ktor/network/tls/TLSVersion$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/ktor/network/tls/TLSVersion$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/ktor/network/tls/TLSVersion;->Companion:Lio/ktor/network/tls/TLSVersion$Companion;

    .line 23
    invoke-static {}, Lio/ktor/network/tls/TLSVersion;->getEntries()Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lio/ktor/network/tls/TLSVersion;->byOrdinal:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lio/ktor/network/tls/TLSVersion;->code:I

    return-void
.end method

.method public static final synthetic access$getByOrdinal$cp()Ljava/util/List;
    .registers 1

    .line 16
    sget-object v0, Lio/ktor/network/tls/TLSVersion;->byOrdinal:Ljava/util/List;

    return-object v0
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lio/ktor/network/tls/TLSVersion;",
            ">;"
        }
    .end annotation

    .line 0
    sget-object v0, Lio/ktor/network/tls/TLSVersion;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/ktor/network/tls/TLSVersion;
    .registers 2

    .line 0
    const-class v0, Lio/ktor/network/tls/TLSVersion;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/ktor/network/tls/TLSVersion;

    return-object p0
.end method

.method public static values()[Lio/ktor/network/tls/TLSVersion;
    .registers 1

    .line 0
    sget-object v0, Lio/ktor/network/tls/TLSVersion;->$VALUES:[Lio/ktor/network/tls/TLSVersion;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/ktor/network/tls/TLSVersion;

    return-object v0
.end method


# virtual methods
.method public final getCode()I
    .registers 1

    .line 16
    iget p0, p0, Lio/ktor/network/tls/TLSVersion;->code:I

    return p0
.end method

###### Class io.ktor.network.tls.TLSVersion.Companion (io.ktor.network.tls.TLSVersion$Companion)
.class public final Lio/ktor/network/tls/TLSVersion$Companion;
.super Ljava/lang/Object;
.source "TLSVersion.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/network/tls/TLSVersion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
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
    invoke-direct {p0}, Lio/ktor/network/tls/TLSVersion$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final byCode(I)Lio/ktor/network/tls/TLSVersion;
    .registers 4

    const/16 p0, 0x300

    if-gt p0, p1, :cond_14

    const/16 v0, 0x304

    if-ge p1, v0, :cond_14

    .line 31
    invoke-static {}, Lio/ktor/network/tls/TLSVersion;->access$getByOrdinal$cp()Ljava/util/List;

    move-result-object v0

    sub-int/2addr p1, p0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/ktor/network/tls/TLSVersion;

    return-object p0

    .line 32
    :cond_14
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid TLS version code "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
