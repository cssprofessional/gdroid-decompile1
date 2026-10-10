###### Class io.ktor.websocket.CloseReason (io.ktor.websocket.CloseReason)
.class public final Lio/ktor/websocket/CloseReason;
.super Ljava/lang/Object;
.source "CloseReason.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/ktor/websocket/CloseReason$Codes;
    }
.end annotation


# instance fields
.field public final code:S

.field public final message:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lio/ktor/websocket/CloseReason$Codes;Ljava/lang/String;)V
    .registers 4

    const-string v0, "code"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-virtual {p1}, Lio/ktor/websocket/CloseReason$Codes;->getCode()S

    move-result p1

    invoke-direct {p0, p1, p2}, Lio/ktor/websocket/CloseReason;-><init>(SLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(SLjava/lang/String;)V
    .registers 4

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-short p1, p0, Lio/ktor/websocket/CloseReason;->code:S

    iput-object p2, p0, Lio/ktor/websocket/CloseReason;->message:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lio/ktor/websocket/CloseReason;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lio/ktor/websocket/CloseReason;

    iget-short v1, p0, Lio/ktor/websocket/CloseReason;->code:S

    iget-short v3, p1, Lio/ktor/websocket/CloseReason;->code:S

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget-object p0, p0, Lio/ktor/websocket/CloseReason;->message:Ljava/lang/String;

    iget-object p1, p1, Lio/ktor/websocket/CloseReason;->message:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1e

    return v2

    :cond_1e
    return v0
.end method

.method public final getCode()S
    .registers 1

    .line 18
    iget-short p0, p0, Lio/ktor/websocket/CloseReason;->code:S

    return p0
.end method

.method public final getKnownReason()Lio/ktor/websocket/CloseReason$Codes;
    .registers 2

    .line 27
    sget-object v0, Lio/ktor/websocket/CloseReason$Codes;->Companion:Lio/ktor/websocket/CloseReason$Codes$Companion;

    iget-short p0, p0, Lio/ktor/websocket/CloseReason;->code:S

    invoke-virtual {v0, p0}, Lio/ktor/websocket/CloseReason$Codes$Companion;->byCode(S)Lio/ktor/websocket/CloseReason$Codes;

    move-result-object p0

    return-object p0
.end method

.method public final getMessage()Ljava/lang/String;
    .registers 1

    .line 18
    iget-object p0, p0, Lio/ktor/websocket/CloseReason;->message:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .registers 2

    .line 0
    iget-short v0, p0, Lio/ktor/websocket/CloseReason;->code:S

    invoke-static {v0}, Ljava/lang/Short;->hashCode(S)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lio/ktor/websocket/CloseReason;->message:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CloseReason(reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/ktor/websocket/CloseReason;->getKnownReason()Lio/ktor/websocket/CloseReason$Codes;

    move-result-object v1

    if-nez v1, :cond_16

    iget-short v1, p0, Lio/ktor/websocket/CloseReason;->code:S

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    :cond_16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lio/ktor/websocket/CloseReason;->message:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

###### Class io.ktor.websocket.CloseReason.Codes (io.ktor.websocket.CloseReason$Codes)
.class public final enum Lio/ktor/websocket/CloseReason$Codes;
.super Ljava/lang/Enum;
.source "CloseReason.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/websocket/CloseReason;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Codes"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/ktor/websocket/CloseReason$Codes$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/ktor/websocket/CloseReason$Codes;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCloseReason.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CloseReason.kt\nio/ktor/websocket/CloseReason$Codes\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,83:1\n1208#2,2:84\n1236#2,4:86\n*S KotlinDebug\n*F\n+ 1 CloseReason.kt\nio/ktor/websocket/CloseReason$Codes\n*L\n58#1:84,2\n58#1:86,4\n*E\n"
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lio/ktor/websocket/CloseReason$Codes;

.field public static final enum CANNOT_ACCEPT:Lio/ktor/websocket/CloseReason$Codes;

.field public static final enum CLOSED_ABNORMALLY:Lio/ktor/websocket/CloseReason$Codes;

.field public static final Companion:Lio/ktor/websocket/CloseReason$Codes$Companion;

.field public static final enum GOING_AWAY:Lio/ktor/websocket/CloseReason$Codes;

.field public static final enum INTERNAL_ERROR:Lio/ktor/websocket/CloseReason$Codes;

.field public static final enum NORMAL:Lio/ktor/websocket/CloseReason$Codes;

.field public static final enum NOT_CONSISTENT:Lio/ktor/websocket/CloseReason$Codes;

.field public static final enum NO_EXTENSION:Lio/ktor/websocket/CloseReason$Codes;

.field public static final enum PROTOCOL_ERROR:Lio/ktor/websocket/CloseReason$Codes;

.field public static final enum SERVICE_RESTART:Lio/ktor/websocket/CloseReason$Codes;

.field public static final enum TOO_BIG:Lio/ktor/websocket/CloseReason$Codes;

.field public static final enum TRY_AGAIN_LATER:Lio/ktor/websocket/CloseReason$Codes;

.field public static final UNEXPECTED_CONDITION:Lio/ktor/websocket/CloseReason$Codes;

.field public static final enum VIOLATED_POLICY:Lio/ktor/websocket/CloseReason$Codes;

.field private static final byCodeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Short;",
            "Lio/ktor/websocket/CloseReason$Codes;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final code:S


# direct methods
.method private static final synthetic $values()[Lio/ktor/websocket/CloseReason$Codes;
    .registers 12

    .line 0
    sget-object v0, Lio/ktor/websocket/CloseReason$Codes;->NORMAL:Lio/ktor/websocket/CloseReason$Codes;

    sget-object v1, Lio/ktor/websocket/CloseReason$Codes;->GOING_AWAY:Lio/ktor/websocket/CloseReason$Codes;

    sget-object v2, Lio/ktor/websocket/CloseReason$Codes;->PROTOCOL_ERROR:Lio/ktor/websocket/CloseReason$Codes;

    sget-object v3, Lio/ktor/websocket/CloseReason$Codes;->CANNOT_ACCEPT:Lio/ktor/websocket/CloseReason$Codes;

    sget-object v4, Lio/ktor/websocket/CloseReason$Codes;->CLOSED_ABNORMALLY:Lio/ktor/websocket/CloseReason$Codes;

    sget-object v5, Lio/ktor/websocket/CloseReason$Codes;->NOT_CONSISTENT:Lio/ktor/websocket/CloseReason$Codes;

    sget-object v6, Lio/ktor/websocket/CloseReason$Codes;->VIOLATED_POLICY:Lio/ktor/websocket/CloseReason$Codes;

    sget-object v7, Lio/ktor/websocket/CloseReason$Codes;->TOO_BIG:Lio/ktor/websocket/CloseReason$Codes;

    sget-object v8, Lio/ktor/websocket/CloseReason$Codes;->NO_EXTENSION:Lio/ktor/websocket/CloseReason$Codes;

    sget-object v9, Lio/ktor/websocket/CloseReason$Codes;->INTERNAL_ERROR:Lio/ktor/websocket/CloseReason$Codes;

    sget-object v10, Lio/ktor/websocket/CloseReason$Codes;->SERVICE_RESTART:Lio/ktor/websocket/CloseReason$Codes;

    sget-object v11, Lio/ktor/websocket/CloseReason$Codes;->TRY_AGAIN_LATER:Lio/ktor/websocket/CloseReason$Codes;

    filled-new-array/range {v0 .. v11}, [Lio/ktor/websocket/CloseReason$Codes;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 5

    .line 41
    new-instance v0, Lio/ktor/websocket/CloseReason$Codes;

    const/4 v1, 0x0

    const/16 v2, 0x3e8

    const-string v3, "NORMAL"

    invoke-direct {v0, v3, v1, v2}, Lio/ktor/websocket/CloseReason$Codes;-><init>(Ljava/lang/String;IS)V

    sput-object v0, Lio/ktor/websocket/CloseReason$Codes;->NORMAL:Lio/ktor/websocket/CloseReason$Codes;

    .line 42
    new-instance v0, Lio/ktor/websocket/CloseReason$Codes;

    const/4 v1, 0x1

    const/16 v2, 0x3e9

    const-string v3, "GOING_AWAY"

    invoke-direct {v0, v3, v1, v2}, Lio/ktor/websocket/CloseReason$Codes;-><init>(Ljava/lang/String;IS)V

    sput-object v0, Lio/ktor/websocket/CloseReason$Codes;->GOING_AWAY:Lio/ktor/websocket/CloseReason$Codes;

    .line 43
    new-instance v0, Lio/ktor/websocket/CloseReason$Codes;

    const/4 v1, 0x2

    const/16 v2, 0x3ea

    const-string v3, "PROTOCOL_ERROR"

    invoke-direct {v0, v3, v1, v2}, Lio/ktor/websocket/CloseReason$Codes;-><init>(Ljava/lang/String;IS)V

    sput-object v0, Lio/ktor/websocket/CloseReason$Codes;->PROTOCOL_ERROR:Lio/ktor/websocket/CloseReason$Codes;

    .line 44
    new-instance v0, Lio/ktor/websocket/CloseReason$Codes;

    const/4 v1, 0x3

    const/16 v2, 0x3eb

    const-string v3, "CANNOT_ACCEPT"

    invoke-direct {v0, v3, v1, v2}, Lio/ktor/websocket/CloseReason$Codes;-><init>(Ljava/lang/String;IS)V

    sput-object v0, Lio/ktor/websocket/CloseReason$Codes;->CANNOT_ACCEPT:Lio/ktor/websocket/CloseReason$Codes;

    .line 48
    new-instance v0, Lio/ktor/websocket/CloseReason$Codes;

    const/4 v1, 0x4

    const/16 v2, 0x3ee

    const-string v3, "CLOSED_ABNORMALLY"

    invoke-direct {v0, v3, v1, v2}, Lio/ktor/websocket/CloseReason$Codes;-><init>(Ljava/lang/String;IS)V

    sput-object v0, Lio/ktor/websocket/CloseReason$Codes;->CLOSED_ABNORMALLY:Lio/ktor/websocket/CloseReason$Codes;

    .line 49
    new-instance v0, Lio/ktor/websocket/CloseReason$Codes;

    const/4 v1, 0x5

    const/16 v2, 0x3ef

    const-string v3, "NOT_CONSISTENT"

    invoke-direct {v0, v3, v1, v2}, Lio/ktor/websocket/CloseReason$Codes;-><init>(Ljava/lang/String;IS)V

    sput-object v0, Lio/ktor/websocket/CloseReason$Codes;->NOT_CONSISTENT:Lio/ktor/websocket/CloseReason$Codes;

    .line 50
    new-instance v0, Lio/ktor/websocket/CloseReason$Codes;

    const/4 v1, 0x6

    const/16 v2, 0x3f0

    const-string v3, "VIOLATED_POLICY"

    invoke-direct {v0, v3, v1, v2}, Lio/ktor/websocket/CloseReason$Codes;-><init>(Ljava/lang/String;IS)V

    sput-object v0, Lio/ktor/websocket/CloseReason$Codes;->VIOLATED_POLICY:Lio/ktor/websocket/CloseReason$Codes;

    .line 51
    new-instance v0, Lio/ktor/websocket/CloseReason$Codes;

    const/4 v1, 0x7

    const/16 v2, 0x3f1

    const-string v3, "TOO_BIG"

    invoke-direct {v0, v3, v1, v2}, Lio/ktor/websocket/CloseReason$Codes;-><init>(Ljava/lang/String;IS)V

    sput-object v0, Lio/ktor/websocket/CloseReason$Codes;->TOO_BIG:Lio/ktor/websocket/CloseReason$Codes;

    .line 52
    new-instance v0, Lio/ktor/websocket/CloseReason$Codes;

    const/16 v1, 0x8

    const/16 v2, 0x3f2

    const-string v3, "NO_EXTENSION"

    invoke-direct {v0, v3, v1, v2}, Lio/ktor/websocket/CloseReason$Codes;-><init>(Ljava/lang/String;IS)V

    sput-object v0, Lio/ktor/websocket/CloseReason$Codes;->NO_EXTENSION:Lio/ktor/websocket/CloseReason$Codes;

    .line 53
    new-instance v0, Lio/ktor/websocket/CloseReason$Codes;

    const/16 v1, 0x9

    const/16 v2, 0x3f3

    const-string v3, "INTERNAL_ERROR"

    invoke-direct {v0, v3, v1, v2}, Lio/ktor/websocket/CloseReason$Codes;-><init>(Ljava/lang/String;IS)V

    sput-object v0, Lio/ktor/websocket/CloseReason$Codes;->INTERNAL_ERROR:Lio/ktor/websocket/CloseReason$Codes;

    .line 54
    new-instance v0, Lio/ktor/websocket/CloseReason$Codes;

    const/16 v1, 0x3f4

    const-string v2, "SERVICE_RESTART"

    const/16 v3, 0xa

    invoke-direct {v0, v2, v3, v1}, Lio/ktor/websocket/CloseReason$Codes;-><init>(Ljava/lang/String;IS)V

    sput-object v0, Lio/ktor/websocket/CloseReason$Codes;->SERVICE_RESTART:Lio/ktor/websocket/CloseReason$Codes;

    .line 55
    new-instance v0, Lio/ktor/websocket/CloseReason$Codes;

    const/16 v1, 0xb

    const/16 v2, 0x3f5

    const-string v4, "TRY_AGAIN_LATER"

    invoke-direct {v0, v4, v1, v2}, Lio/ktor/websocket/CloseReason$Codes;-><init>(Ljava/lang/String;IS)V

    sput-object v0, Lio/ktor/websocket/CloseReason$Codes;->TRY_AGAIN_LATER:Lio/ktor/websocket/CloseReason$Codes;

    invoke-static {}, Lio/ktor/websocket/CloseReason$Codes;->$values()[Lio/ktor/websocket/CloseReason$Codes;

    move-result-object v0

    sput-object v0, Lio/ktor/websocket/CloseReason$Codes;->$VALUES:[Lio/ktor/websocket/CloseReason$Codes;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lio/ktor/websocket/CloseReason$Codes;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v0, Lio/ktor/websocket/CloseReason$Codes$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/ktor/websocket/CloseReason$Codes$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/ktor/websocket/CloseReason$Codes;->Companion:Lio/ktor/websocket/CloseReason$Codes$Companion;

    .line 58
    invoke-static {}, Lio/ktor/websocket/CloseReason$Codes;->getEntries()Lkotlin/enums/EnumEntries;

    move-result-object v0

    .line 1208
    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-static {v1}, Lkotlin/collections/MapsKt__MapsJVMKt;->mapCapacity(I)I

    move-result v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Lkotlin/ranges/RangesKt___RangesKt;->coerceAtLeast(II)I

    move-result v1

    .line 1209
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 1236
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_da

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1237
    move-object v3, v1

    check-cast v3, Lio/ktor/websocket/CloseReason$Codes;

    .line 58
    iget-short v3, v3, Lio/ktor/websocket/CloseReason$Codes;->code:S

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    .line 1237
    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c3

    .line 58
    :cond_da
    sput-object v2, Lio/ktor/websocket/CloseReason$Codes;->byCodeMap:Ljava/util/Map;

    .line 70
    sget-object v0, Lio/ktor/websocket/CloseReason$Codes;->INTERNAL_ERROR:Lio/ktor/websocket/CloseReason$Codes;

    sput-object v0, Lio/ktor/websocket/CloseReason$Codes;->UNEXPECTED_CONDITION:Lio/ktor/websocket/CloseReason$Codes;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IS)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(S)V"
        }
    .end annotation

    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-short p3, p0, Lio/ktor/websocket/CloseReason$Codes;->code:S

    return-void
.end method

.method public static final synthetic access$getByCodeMap$cp()Ljava/util/Map;
    .registers 1

    .line 40
    sget-object v0, Lio/ktor/websocket/CloseReason$Codes;->byCodeMap:Ljava/util/Map;

    return-object v0
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lio/ktor/websocket/CloseReason$Codes;",
            ">;"
        }
    .end annotation

    .line 0
    sget-object v0, Lio/ktor/websocket/CloseReason$Codes;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/ktor/websocket/CloseReason$Codes;
    .registers 2

    .line 0
    const-class v0, Lio/ktor/websocket/CloseReason$Codes;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/ktor/websocket/CloseReason$Codes;

    return-object p0
.end method

.method public static values()[Lio/ktor/websocket/CloseReason$Codes;
    .registers 1

    .line 0
    sget-object v0, Lio/ktor/websocket/CloseReason$Codes;->$VALUES:[Lio/ktor/websocket/CloseReason$Codes;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/ktor/websocket/CloseReason$Codes;

    return-object v0
.end method


# virtual methods
.method public final getCode()S
    .registers 1

    .line 40
    iget-short p0, p0, Lio/ktor/websocket/CloseReason$Codes;->code:S

    return p0
.end method

###### Class io.ktor.websocket.CloseReason.Codes.Companion (io.ktor.websocket.CloseReason$Codes$Companion)
.class public final Lio/ktor/websocket/CloseReason$Codes$Companion;
.super Ljava/lang/Object;
.source "CloseReason.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/websocket/CloseReason$Codes;
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
    invoke-direct {p0}, Lio/ktor/websocket/CloseReason$Codes$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final byCode(S)Lio/ktor/websocket/CloseReason$Codes;
    .registers 2

    .line 79
    invoke-static {}, Lio/ktor/websocket/CloseReason$Codes;->access$getByCodeMap$cp()Ljava/util/Map;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/ktor/websocket/CloseReason$Codes;

    return-object p0
.end method
