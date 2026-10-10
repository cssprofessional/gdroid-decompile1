###### Class io.ktor.network.tls.TLSRecordType (io.ktor.network.tls.TLSRecordType)
.class public final enum Lio/ktor/network/tls/TLSRecordType;
.super Ljava/lang/Enum;
.source "TLSRecordType.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/ktor/network/tls/TLSRecordType$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/ktor/network/tls/TLSRecordType;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTLSRecordType.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TLSRecordType.kt\nio/ktor/network/tls/TLSRecordType\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,35:1\n295#2,2:36\n*S KotlinDebug\n*F\n+ 1 TLSRecordType.kt\nio/ktor/network/tls/TLSRecordType\n*L\n22#1:36,2\n*E\n"
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lio/ktor/network/tls/TLSRecordType;

.field public static final enum Alert:Lio/ktor/network/tls/TLSRecordType;

.field public static final enum ApplicationData:Lio/ktor/network/tls/TLSRecordType;

.field public static final enum ChangeCipherSpec:Lio/ktor/network/tls/TLSRecordType;

.field public static final Companion:Lio/ktor/network/tls/TLSRecordType$Companion;

.field public static final enum Handshake:Lio/ktor/network/tls/TLSRecordType;

.field private static final byCode:[Lio/ktor/network/tls/TLSRecordType;


# instance fields
.field private final code:I


# direct methods
.method private static final synthetic $values()[Lio/ktor/network/tls/TLSRecordType;
    .registers 4

    .line 0
    sget-object v0, Lio/ktor/network/tls/TLSRecordType;->ChangeCipherSpec:Lio/ktor/network/tls/TLSRecordType;

    sget-object v1, Lio/ktor/network/tls/TLSRecordType;->Alert:Lio/ktor/network/tls/TLSRecordType;

    sget-object v2, Lio/ktor/network/tls/TLSRecordType;->Handshake:Lio/ktor/network/tls/TLSRecordType;

    sget-object v3, Lio/ktor/network/tls/TLSRecordType;->ApplicationData:Lio/ktor/network/tls/TLSRecordType;

    filled-new-array {v0, v1, v2, v3}, [Lio/ktor/network/tls/TLSRecordType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 7

    .line 16
    new-instance v0, Lio/ktor/network/tls/TLSRecordType;

    const/16 v1, 0x14

    const-string v2, "ChangeCipherSpec"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lio/ktor/network/tls/TLSRecordType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/ktor/network/tls/TLSRecordType;->ChangeCipherSpec:Lio/ktor/network/tls/TLSRecordType;

    .line 17
    new-instance v0, Lio/ktor/network/tls/TLSRecordType;

    const/4 v1, 0x1

    const/16 v2, 0x15

    const-string v4, "Alert"

    invoke-direct {v0, v4, v1, v2}, Lio/ktor/network/tls/TLSRecordType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/ktor/network/tls/TLSRecordType;->Alert:Lio/ktor/network/tls/TLSRecordType;

    .line 18
    new-instance v0, Lio/ktor/network/tls/TLSRecordType;

    const/4 v1, 0x2

    const/16 v2, 0x16

    const-string v4, "Handshake"

    invoke-direct {v0, v4, v1, v2}, Lio/ktor/network/tls/TLSRecordType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/ktor/network/tls/TLSRecordType;->Handshake:Lio/ktor/network/tls/TLSRecordType;

    .line 19
    new-instance v0, Lio/ktor/network/tls/TLSRecordType;

    const/4 v1, 0x3

    const/16 v2, 0x17

    const-string v4, "ApplicationData"

    invoke-direct {v0, v4, v1, v2}, Lio/ktor/network/tls/TLSRecordType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/ktor/network/tls/TLSRecordType;->ApplicationData:Lio/ktor/network/tls/TLSRecordType;

    invoke-static {}, Lio/ktor/network/tls/TLSRecordType;->$values()[Lio/ktor/network/tls/TLSRecordType;

    move-result-object v0

    sput-object v0, Lio/ktor/network/tls/TLSRecordType;->$VALUES:[Lio/ktor/network/tls/TLSRecordType;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lio/ktor/network/tls/TLSRecordType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v0, Lio/ktor/network/tls/TLSRecordType$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/ktor/network/tls/TLSRecordType$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/ktor/network/tls/TLSRecordType;->Companion:Lio/ktor/network/tls/TLSRecordType$Companion;

    const/16 v0, 0x100

    .line 22
    new-array v2, v0, [Lio/ktor/network/tls/TLSRecordType;

    :goto_48
    if-ge v3, v0, :cond_6a

    invoke-static {}, Lio/ktor/network/tls/TLSRecordType;->getEntries()Lkotlin/enums/EnumEntries;

    move-result-object v4

    .line 295
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_52
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_64

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lio/ktor/network/tls/TLSRecordType;

    .line 22
    iget v6, v6, Lio/ktor/network/tls/TLSRecordType;->code:I

    if-ne v6, v3, :cond_52

    goto :goto_65

    :cond_64
    move-object v5, v1

    .line 296
    :goto_65
    aput-object v5, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_48

    .line 22
    :cond_6a
    sput-object v2, Lio/ktor/network/tls/TLSRecordType;->byCode:[Lio/ktor/network/tls/TLSRecordType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lio/ktor/network/tls/TLSRecordType;->code:I

    return-void
.end method

.method public static final synthetic access$getByCode$cp()[Lio/ktor/network/tls/TLSRecordType;
    .registers 1

    .line 15
    sget-object v0, Lio/ktor/network/tls/TLSRecordType;->byCode:[Lio/ktor/network/tls/TLSRecordType;

    return-object v0
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lio/ktor/network/tls/TLSRecordType;",
            ">;"
        }
    .end annotation

    .line 0
    sget-object v0, Lio/ktor/network/tls/TLSRecordType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/ktor/network/tls/TLSRecordType;
    .registers 2

    .line 0
    const-class v0, Lio/ktor/network/tls/TLSRecordType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/ktor/network/tls/TLSRecordType;

    return-object p0
.end method

.method public static values()[Lio/ktor/network/tls/TLSRecordType;
    .registers 1

    .line 0
    sget-object v0, Lio/ktor/network/tls/TLSRecordType;->$VALUES:[Lio/ktor/network/tls/TLSRecordType;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/ktor/network/tls/TLSRecordType;

    return-object v0
.end method


# virtual methods
.method public final getCode()I
    .registers 1

    .line 15
    iget p0, p0, Lio/ktor/network/tls/TLSRecordType;->code:I

    return p0
.end method

###### Class io.ktor.network.tls.TLSRecordType.Companion (io.ktor.network.tls.TLSRecordType$Companion)
.class public final Lio/ktor/network/tls/TLSRecordType$Companion;
.super Ljava/lang/Object;
.source "TLSRecordType.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/network/tls/TLSRecordType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lio/ktor/network/tls/TLSRecordType$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final byCode(I)Lio/ktor/network/tls/TLSRecordType;
    .registers 4

    if-ltz p1, :cond_d

    const/16 p0, 0x100

    if-ge p1, p0, :cond_d

    .line 30
    invoke-static {}, Lio/ktor/network/tls/TLSRecordType;->access$getByCode$cp()[Lio/ktor/network/tls/TLSRecordType;

    move-result-object p0

    aget-object p0, p0, p1

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    if-eqz p0, :cond_11

    return-object p0

    .line 32
    :cond_11
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid TLS record type code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
