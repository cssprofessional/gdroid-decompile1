###### Class io.ktor.network.tls.extensions.PointFormat (io.ktor.network.tls.extensions.PointFormat)
.class public final enum Lio/ktor/network/tls/extensions/PointFormat;
.super Ljava/lang/Enum;
.source "PointFormat.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/ktor/network/tls/extensions/PointFormat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lio/ktor/network/tls/extensions/PointFormat;

.field public static final enum ANSIX962_COMPRESSED_CHAR2:Lio/ktor/network/tls/extensions/PointFormat;

.field public static final enum ANSIX962_COMPRESSED_PRIME:Lio/ktor/network/tls/extensions/PointFormat;

.field public static final enum UNCOMPRESSED:Lio/ktor/network/tls/extensions/PointFormat;


# instance fields
.field private final code:B


# direct methods
.method private static final synthetic $values()[Lio/ktor/network/tls/extensions/PointFormat;
    .registers 3

    .line 0
    sget-object v0, Lio/ktor/network/tls/extensions/PointFormat;->UNCOMPRESSED:Lio/ktor/network/tls/extensions/PointFormat;

    sget-object v1, Lio/ktor/network/tls/extensions/PointFormat;->ANSIX962_COMPRESSED_PRIME:Lio/ktor/network/tls/extensions/PointFormat;

    sget-object v2, Lio/ktor/network/tls/extensions/PointFormat;->ANSIX962_COMPRESSED_CHAR2:Lio/ktor/network/tls/extensions/PointFormat;

    filled-new-array {v0, v1, v2}, [Lio/ktor/network/tls/extensions/PointFormat;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 20
    new-instance v0, Lio/ktor/network/tls/extensions/PointFormat;

    const-string v1, "UNCOMPRESSED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lio/ktor/network/tls/extensions/PointFormat;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lio/ktor/network/tls/extensions/PointFormat;->UNCOMPRESSED:Lio/ktor/network/tls/extensions/PointFormat;

    .line 27
    new-instance v0, Lio/ktor/network/tls/extensions/PointFormat;

    const-string v1, "ANSIX962_COMPRESSED_PRIME"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lio/ktor/network/tls/extensions/PointFormat;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lio/ktor/network/tls/extensions/PointFormat;->ANSIX962_COMPRESSED_PRIME:Lio/ktor/network/tls/extensions/PointFormat;

    .line 34
    new-instance v0, Lio/ktor/network/tls/extensions/PointFormat;

    const-string v1, "ANSIX962_COMPRESSED_CHAR2"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lio/ktor/network/tls/extensions/PointFormat;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lio/ktor/network/tls/extensions/PointFormat;->ANSIX962_COMPRESSED_CHAR2:Lio/ktor/network/tls/extensions/PointFormat;

    invoke-static {}, Lio/ktor/network/tls/extensions/PointFormat;->$values()[Lio/ktor/network/tls/extensions/PointFormat;

    move-result-object v0

    sput-object v0, Lio/ktor/network/tls/extensions/PointFormat;->$VALUES:[Lio/ktor/network/tls/extensions/PointFormat;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lio/ktor/network/tls/extensions/PointFormat;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IB)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(B)V"
        }
    .end annotation

    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-byte p3, p0, Lio/ktor/network/tls/extensions/PointFormat;->code:B

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lio/ktor/network/tls/extensions/PointFormat;",
            ">;"
        }
    .end annotation

    .line 0
    sget-object v0, Lio/ktor/network/tls/extensions/PointFormat;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/ktor/network/tls/extensions/PointFormat;
    .registers 2

    .line 0
    const-class v0, Lio/ktor/network/tls/extensions/PointFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/ktor/network/tls/extensions/PointFormat;

    return-object p0
.end method

.method public static values()[Lio/ktor/network/tls/extensions/PointFormat;
    .registers 1

    .line 0
    sget-object v0, Lio/ktor/network/tls/extensions/PointFormat;->$VALUES:[Lio/ktor/network/tls/extensions/PointFormat;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/ktor/network/tls/extensions/PointFormat;

    return-object v0
.end method


# virtual methods
.method public final getCode()B
    .registers 1

    .line 14
    iget-byte p0, p0, Lio/ktor/network/tls/extensions/PointFormat;->code:B

    return p0
.end method
