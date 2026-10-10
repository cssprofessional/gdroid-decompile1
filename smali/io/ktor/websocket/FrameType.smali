###### Class io.ktor.websocket.FrameType (io.ktor.websocket.FrameType)
.class public final enum Lio/ktor/websocket/FrameType;
.super Ljava/lang/Enum;
.source "FrameType.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/ktor/websocket/FrameType$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/ktor/websocket/FrameType;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFrameType.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FrameType.kt\nio/ktor/websocket/FrameType\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,66:1\n1999#2,14:67\n669#2,11:81\n*S KotlinDebug\n*F\n+ 1 FrameType.kt\nio/ktor/websocket/FrameType\n*L\n52#1:67,14\n54#1:81,11\n*E\n"
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lio/ktor/websocket/FrameType;

.field public static final enum BINARY:Lio/ktor/websocket/FrameType;

.field public static final enum CLOSE:Lio/ktor/websocket/FrameType;

.field public static final Companion:Lio/ktor/websocket/FrameType$Companion;

.field public static final enum PING:Lio/ktor/websocket/FrameType;

.field public static final enum PONG:Lio/ktor/websocket/FrameType;

.field public static final enum TEXT:Lio/ktor/websocket/FrameType;

.field private static final byOpcodeArray:[Lio/ktor/websocket/FrameType;

.field private static final maxOpcode:I


# instance fields
.field private final controlFrame:Z

.field private final opcode:I


# direct methods
.method private static final synthetic $values()[Lio/ktor/websocket/FrameType;
    .registers 5

    .line 0
    sget-object v0, Lio/ktor/websocket/FrameType;->TEXT:Lio/ktor/websocket/FrameType;

    sget-object v1, Lio/ktor/websocket/FrameType;->BINARY:Lio/ktor/websocket/FrameType;

    sget-object v2, Lio/ktor/websocket/FrameType;->CLOSE:Lio/ktor/websocket/FrameType;

    sget-object v3, Lio/ktor/websocket/FrameType;->PING:Lio/ktor/websocket/FrameType;

    sget-object v4, Lio/ktor/websocket/FrameType;->PONG:Lio/ktor/websocket/FrameType;

    filled-new-array {v0, v1, v2, v3, v4}, [Lio/ktor/websocket/FrameType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 11

    .line 21
    new-instance v0, Lio/ktor/websocket/FrameType;

    const-string v1, "TEXT"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v2, v3}, Lio/ktor/websocket/FrameType;-><init>(Ljava/lang/String;IZI)V

    sput-object v0, Lio/ktor/websocket/FrameType;->TEXT:Lio/ktor/websocket/FrameType;

    .line 28
    new-instance v0, Lio/ktor/websocket/FrameType;

    const-string v1, "BINARY"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v3, v2, v4}, Lio/ktor/websocket/FrameType;-><init>(Ljava/lang/String;IZI)V

    sput-object v0, Lio/ktor/websocket/FrameType;->BINARY:Lio/ktor/websocket/FrameType;

    .line 35
    new-instance v0, Lio/ktor/websocket/FrameType;

    const-string v1, "CLOSE"

    const/16 v5, 0x8

    invoke-direct {v0, v1, v4, v3, v5}, Lio/ktor/websocket/FrameType;-><init>(Ljava/lang/String;IZI)V

    sput-object v0, Lio/ktor/websocket/FrameType;->CLOSE:Lio/ktor/websocket/FrameType;

    .line 42
    new-instance v0, Lio/ktor/websocket/FrameType;

    const/4 v1, 0x3

    const/16 v4, 0x9

    const-string v5, "PING"

    invoke-direct {v0, v5, v1, v3, v4}, Lio/ktor/websocket/FrameType;-><init>(Ljava/lang/String;IZI)V

    sput-object v0, Lio/ktor/websocket/FrameType;->PING:Lio/ktor/websocket/FrameType;

    .line 49
    new-instance v0, Lio/ktor/websocket/FrameType;

    const/4 v1, 0x4

    const/16 v4, 0xa

    const-string v5, "PONG"

    invoke-direct {v0, v5, v1, v3, v4}, Lio/ktor/websocket/FrameType;-><init>(Ljava/lang/String;IZI)V

    sput-object v0, Lio/ktor/websocket/FrameType;->PONG:Lio/ktor/websocket/FrameType;

    invoke-static {}, Lio/ktor/websocket/FrameType;->$values()[Lio/ktor/websocket/FrameType;

    move-result-object v0

    sput-object v0, Lio/ktor/websocket/FrameType;->$VALUES:[Lio/ktor/websocket/FrameType;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lio/ktor/websocket/FrameType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v0, Lio/ktor/websocket/FrameType$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/ktor/websocket/FrameType$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/ktor/websocket/FrameType;->Companion:Lio/ktor/websocket/FrameType$Companion;

    .line 52
    invoke-static {}, Lio/ktor/websocket/FrameType;->getEntries()Lkotlin/enums/EnumEntries;

    move-result-object v0

    .line 1999
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2000
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_5c

    move-object v4, v1

    goto :goto_7f

    .line 2001
    :cond_5c
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 2002
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_67

    goto :goto_7f

    .line 2003
    :cond_67
    move-object v5, v4

    check-cast v5, Lio/ktor/websocket/FrameType;

    .line 52
    iget v5, v5, Lio/ktor/websocket/FrameType;->opcode:I

    .line 2005
    :cond_6c
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 2006
    move-object v7, v6

    check-cast v7, Lio/ktor/websocket/FrameType;

    .line 52
    iget v7, v7, Lio/ktor/websocket/FrameType;->opcode:I

    if-ge v5, v7, :cond_79

    move-object v4, v6

    move v5, v7

    .line 2011
    :cond_79
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_6c

    .line 2012
    :goto_7f
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v4, Lio/ktor/websocket/FrameType;

    iget v0, v4, Lio/ktor/websocket/FrameType;->opcode:I

    .line 52
    sput v0, Lio/ktor/websocket/FrameType;->maxOpcode:I

    add-int/2addr v0, v3

    .line 54
    new-array v4, v0, [Lio/ktor/websocket/FrameType;

    move v5, v2

    :goto_8c
    if-ge v5, v0, :cond_b8

    invoke-static {}, Lio/ktor/websocket/FrameType;->getEntries()Lkotlin/enums/EnumEntries;

    move-result-object v6

    .line 671
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v8, v1

    move v7, v2

    :cond_98
    :goto_98
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_b0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .line 672
    move-object v10, v9

    check-cast v10, Lio/ktor/websocket/FrameType;

    .line 54
    iget v10, v10, Lio/ktor/websocket/FrameType;->opcode:I

    if-ne v10, v5, :cond_98

    if-eqz v7, :cond_ad

    :goto_ab
    move-object v8, v1

    goto :goto_b3

    :cond_ad
    move v7, v3

    move-object v8, v9

    goto :goto_98

    :cond_b0
    if-nez v7, :cond_b3

    goto :goto_ab

    .line 679
    :cond_b3
    :goto_b3
    aput-object v8, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_8c

    .line 54
    :cond_b8
    sput-object v4, Lio/ktor/websocket/FrameType;->byOpcodeArray:[Lio/ktor/websocket/FrameType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZI)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI)V"
        }
    .end annotation

    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-boolean p3, p0, Lio/ktor/websocket/FrameType;->controlFrame:Z

    iput p4, p0, Lio/ktor/websocket/FrameType;->opcode:I

    return-void
.end method

.method public static final synthetic access$getByOpcodeArray$cp()[Lio/ktor/websocket/FrameType;
    .registers 1

    .line 15
    sget-object v0, Lio/ktor/websocket/FrameType;->byOpcodeArray:[Lio/ktor/websocket/FrameType;

    return-object v0
.end method

.method public static final synthetic access$getMaxOpcode$cp()I
    .registers 1

    .line 15
    sget v0, Lio/ktor/websocket/FrameType;->maxOpcode:I

    return v0
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lio/ktor/websocket/FrameType;",
            ">;"
        }
    .end annotation

    .line 0
    sget-object v0, Lio/ktor/websocket/FrameType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/ktor/websocket/FrameType;
    .registers 2

    .line 0
    const-class v0, Lio/ktor/websocket/FrameType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/ktor/websocket/FrameType;

    return-object p0
.end method

.method public static values()[Lio/ktor/websocket/FrameType;
    .registers 1

    .line 0
    sget-object v0, Lio/ktor/websocket/FrameType;->$VALUES:[Lio/ktor/websocket/FrameType;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/ktor/websocket/FrameType;

    return-object v0
.end method


# virtual methods
.method public final getControlFrame()Z
    .registers 1

    .line 15
    iget-boolean p0, p0, Lio/ktor/websocket/FrameType;->controlFrame:Z

    return p0
.end method

.method public final getOpcode()I
    .registers 1

    .line 15
    iget p0, p0, Lio/ktor/websocket/FrameType;->opcode:I

    return p0
.end method

###### Class io.ktor.websocket.FrameType.Companion (io.ktor.websocket.FrameType$Companion)
.class public final Lio/ktor/websocket/FrameType$Companion;
.super Ljava/lang/Object;
.source "FrameType.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/websocket/FrameType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lio/ktor/websocket/FrameType$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final get(I)Lio/ktor/websocket/FrameType;
    .registers 2

    if-ltz p1, :cond_f

    .line 63
    invoke-static {}, Lio/ktor/websocket/FrameType;->access$getMaxOpcode$cp()I

    move-result p0

    if-gt p1, p0, :cond_f

    invoke-static {}, Lio/ktor/websocket/FrameType;->access$getByOpcodeArray$cp()[Lio/ktor/websocket/FrameType;

    move-result-object p0

    aget-object p0, p0, p1

    goto :goto_10

    :cond_f
    const/4 p0, 0x0

    :goto_10
    return-object p0
.end method
