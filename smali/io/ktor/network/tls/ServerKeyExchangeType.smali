###### Class io.ktor.network.tls.ServerKeyExchangeType (io.ktor.network.tls.ServerKeyExchangeType)
.class public final enum Lio/ktor/network/tls/ServerKeyExchangeType;
.super Ljava/lang/Enum;
.source "TLSHandshakeType.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/ktor/network/tls/ServerKeyExchangeType$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/ktor/network/tls/ServerKeyExchangeType;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTLSHandshakeType.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TLSHandshakeType.kt\nio/ktor/network/tls/ServerKeyExchangeType\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,100:1\n295#2,2:101\n*S KotlinDebug\n*F\n+ 1 TLSHandshakeType.kt\nio/ktor/network/tls/ServerKeyExchangeType\n*L\n58#1:101,2\n*E\n"
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lio/ktor/network/tls/ServerKeyExchangeType;

.field public static final Companion:Lio/ktor/network/tls/ServerKeyExchangeType$Companion;

.field public static final enum ExplicitChar:Lio/ktor/network/tls/ServerKeyExchangeType;

.field public static final enum ExplicitPrime:Lio/ktor/network/tls/ServerKeyExchangeType;

.field public static final enum NamedCurve:Lio/ktor/network/tls/ServerKeyExchangeType;

.field private static final byCode:[Lio/ktor/network/tls/ServerKeyExchangeType;


# instance fields
.field private final code:I


# direct methods
.method private static final synthetic $values()[Lio/ktor/network/tls/ServerKeyExchangeType;
    .registers 3

    .line 0
    sget-object v0, Lio/ktor/network/tls/ServerKeyExchangeType;->ExplicitPrime:Lio/ktor/network/tls/ServerKeyExchangeType;

    sget-object v1, Lio/ktor/network/tls/ServerKeyExchangeType;->ExplicitChar:Lio/ktor/network/tls/ServerKeyExchangeType;

    sget-object v2, Lio/ktor/network/tls/ServerKeyExchangeType;->NamedCurve:Lio/ktor/network/tls/ServerKeyExchangeType;

    filled-new-array {v0, v1, v2}, [Lio/ktor/network/tls/ServerKeyExchangeType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 7

    .line 53
    new-instance v0, Lio/ktor/network/tls/ServerKeyExchangeType;

    const-string v1, "ExplicitPrime"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lio/ktor/network/tls/ServerKeyExchangeType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/ktor/network/tls/ServerKeyExchangeType;->ExplicitPrime:Lio/ktor/network/tls/ServerKeyExchangeType;

    .line 54
    new-instance v0, Lio/ktor/network/tls/ServerKeyExchangeType;

    const-string v1, "ExplicitChar"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v3, v4}, Lio/ktor/network/tls/ServerKeyExchangeType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/ktor/network/tls/ServerKeyExchangeType;->ExplicitChar:Lio/ktor/network/tls/ServerKeyExchangeType;

    .line 55
    new-instance v0, Lio/ktor/network/tls/ServerKeyExchangeType;

    const-string v1, "NamedCurve"

    const/4 v3, 0x3

    invoke-direct {v0, v1, v4, v3}, Lio/ktor/network/tls/ServerKeyExchangeType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/ktor/network/tls/ServerKeyExchangeType;->NamedCurve:Lio/ktor/network/tls/ServerKeyExchangeType;

    invoke-static {}, Lio/ktor/network/tls/ServerKeyExchangeType;->$values()[Lio/ktor/network/tls/ServerKeyExchangeType;

    move-result-object v0

    sput-object v0, Lio/ktor/network/tls/ServerKeyExchangeType;->$VALUES:[Lio/ktor/network/tls/ServerKeyExchangeType;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lio/ktor/network/tls/ServerKeyExchangeType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v0, Lio/ktor/network/tls/ServerKeyExchangeType$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/ktor/network/tls/ServerKeyExchangeType$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/ktor/network/tls/ServerKeyExchangeType;->Companion:Lio/ktor/network/tls/ServerKeyExchangeType$Companion;

    const/16 v0, 0x100

    .line 58
    new-array v3, v0, [Lio/ktor/network/tls/ServerKeyExchangeType;

    :goto_37
    if-ge v2, v0, :cond_59

    invoke-static {}, Lio/ktor/network/tls/ServerKeyExchangeType;->getEntries()Lkotlin/enums/EnumEntries;

    move-result-object v4

    .line 295
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_41
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_53

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lio/ktor/network/tls/ServerKeyExchangeType;

    .line 58
    iget v6, v6, Lio/ktor/network/tls/ServerKeyExchangeType;->code:I

    if-ne v6, v2, :cond_41

    goto :goto_54

    :cond_53
    move-object v5, v1

    .line 296
    :goto_54
    aput-object v5, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_37

    .line 58
    :cond_59
    sput-object v3, Lio/ktor/network/tls/ServerKeyExchangeType;->byCode:[Lio/ktor/network/tls/ServerKeyExchangeType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 52
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lio/ktor/network/tls/ServerKeyExchangeType;->code:I

    return-void
.end method

.method public static final synthetic access$getByCode$cp()[Lio/ktor/network/tls/ServerKeyExchangeType;
    .registers 1

    .line 52
    sget-object v0, Lio/ktor/network/tls/ServerKeyExchangeType;->byCode:[Lio/ktor/network/tls/ServerKeyExchangeType;

    return-object v0
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lio/ktor/network/tls/ServerKeyExchangeType;",
            ">;"
        }
    .end annotation

    .line 0
    sget-object v0, Lio/ktor/network/tls/ServerKeyExchangeType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/ktor/network/tls/ServerKeyExchangeType;
    .registers 2

    .line 0
    const-class v0, Lio/ktor/network/tls/ServerKeyExchangeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/ktor/network/tls/ServerKeyExchangeType;

    return-object p0
.end method

.method public static values()[Lio/ktor/network/tls/ServerKeyExchangeType;
    .registers 1

    .line 0
    sget-object v0, Lio/ktor/network/tls/ServerKeyExchangeType;->$VALUES:[Lio/ktor/network/tls/ServerKeyExchangeType;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/ktor/network/tls/ServerKeyExchangeType;

    return-object v0
.end method


# virtual methods
.method public final getCode()I
    .registers 1

    .line 52
    iget p0, p0, Lio/ktor/network/tls/ServerKeyExchangeType;->code:I

    return p0
.end method

###### Class io.ktor.network.tls.ServerKeyExchangeType.Companion (io.ktor.network.tls.ServerKeyExchangeType$Companion)
.class public final Lio/ktor/network/tls/ServerKeyExchangeType$Companion;
.super Ljava/lang/Object;
.source "TLSHandshakeType.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/network/tls/ServerKeyExchangeType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lio/ktor/network/tls/ServerKeyExchangeType$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final byCode(I)Lio/ktor/network/tls/ServerKeyExchangeType;
    .registers 4

    if-ltz p1, :cond_d

    const/16 p0, 0x100

    if-ge p1, p0, :cond_d

    .line 66
    invoke-static {}, Lio/ktor/network/tls/ServerKeyExchangeType;->access$getByCode$cp()[Lio/ktor/network/tls/ServerKeyExchangeType;

    move-result-object p0

    aget-object p0, p0, p1

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    if-eqz p0, :cond_11

    return-object p0

    .line 67
    :cond_11
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid TLS ServerKeyExchange type code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
