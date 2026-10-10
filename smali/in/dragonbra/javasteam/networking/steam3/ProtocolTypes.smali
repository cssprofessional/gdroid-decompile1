###### Class in.dragonbra.javasteam.networking.steam3.ProtocolTypes (in.dragonbra.javasteam.networking.steam3.ProtocolTypes)
.class public final enum Lin/dragonbra/javasteam/networking/steam3/ProtocolTypes;
.super Ljava/lang/Enum;
.source "ProtocolTypes.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lin/dragonbra/javasteam/networking/steam3/ProtocolTypes;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lin/dragonbra/javasteam/networking/steam3/ProtocolTypes;

.field public static final ALL:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lin/dragonbra/javasteam/networking/steam3/ProtocolTypes;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum TCP:Lin/dragonbra/javasteam/networking/steam3/ProtocolTypes;

.field public static final enum UDP:Lin/dragonbra/javasteam/networking/steam3/ProtocolTypes;

.field public static final enum WEB_SOCKET:Lin/dragonbra/javasteam/networking/steam3/ProtocolTypes;


# instance fields
.field private final code:I


# direct methods
.method private static synthetic $values()[Lin/dragonbra/javasteam/networking/steam3/ProtocolTypes;
    .registers 3

    .line 9
    sget-object v0, Lin/dragonbra/javasteam/networking/steam3/ProtocolTypes;->TCP:Lin/dragonbra/javasteam/networking/steam3/ProtocolTypes;

    sget-object v1, Lin/dragonbra/javasteam/networking/steam3/ProtocolTypes;->UDP:Lin/dragonbra/javasteam/networking/steam3/ProtocolTypes;

    sget-object v2, Lin/dragonbra/javasteam/networking/steam3/ProtocolTypes;->WEB_SOCKET:Lin/dragonbra/javasteam/networking/steam3/ProtocolTypes;

    filled-new-array {v0, v1, v2}, [Lin/dragonbra/javasteam/networking/steam3/ProtocolTypes;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 6

    .line 11
    new-instance v0, Lin/dragonbra/javasteam/networking/steam3/ProtocolTypes;

    const-string v1, "TCP"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lin/dragonbra/javasteam/networking/steam3/ProtocolTypes;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/networking/steam3/ProtocolTypes;->TCP:Lin/dragonbra/javasteam/networking/steam3/ProtocolTypes;

    .line 13
    new-instance v1, Lin/dragonbra/javasteam/networking/steam3/ProtocolTypes;

    const-string v2, "UDP"

    const/4 v4, 0x2

    invoke-direct {v1, v2, v3, v4}, Lin/dragonbra/javasteam/networking/steam3/ProtocolTypes;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lin/dragonbra/javasteam/networking/steam3/ProtocolTypes;->UDP:Lin/dragonbra/javasteam/networking/steam3/ProtocolTypes;

    .line 15
    new-instance v2, Lin/dragonbra/javasteam/networking/steam3/ProtocolTypes;

    const-string v3, "WEB_SOCKET"

    const/4 v5, 0x4

    invoke-direct {v2, v3, v4, v5}, Lin/dragonbra/javasteam/networking/steam3/ProtocolTypes;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lin/dragonbra/javasteam/networking/steam3/ProtocolTypes;->WEB_SOCKET:Lin/dragonbra/javasteam/networking/steam3/ProtocolTypes;

    .line 9
    invoke-static {}, Lin/dragonbra/javasteam/networking/steam3/ProtocolTypes;->$values()[Lin/dragonbra/javasteam/networking/steam3/ProtocolTypes;

    move-result-object v3

    sput-object v3, Lin/dragonbra/javasteam/networking/steam3/ProtocolTypes;->$VALUES:[Lin/dragonbra/javasteam/networking/steam3/ProtocolTypes;

    .line 17
    invoke-static {v0, v1, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lin/dragonbra/javasteam/networking/steam3/ProtocolTypes;->ALL:Ljava/util/EnumSet;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 22
    iput p3, p0, Lin/dragonbra/javasteam/networking/steam3/ProtocolTypes;->code:I

    return-void
.end method

.method public static code(Ljava/util/EnumSet;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet<",
            "Lin/dragonbra/javasteam/networking/steam3/ProtocolTypes;",
            ">;)I"
        }
    .end annotation

    .line 41
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lin/dragonbra/javasteam/networking/steam3/ProtocolTypes;

    .line 42
    iget v1, v1, Lin/dragonbra/javasteam/networking/steam3/ProtocolTypes;->code:I

    or-int/2addr v0, v1

    goto :goto_5

    :cond_15
    return v0
.end method

.method public static from(I)Ljava/util/EnumSet;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/EnumSet<",
            "Lin/dragonbra/javasteam/networking/steam3/ProtocolTypes;",
            ">;"
        }
    .end annotation

    .line 30
    const-class v0, Lin/dragonbra/javasteam/networking/steam3/ProtocolTypes;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    .line 31
    invoke-static {}, Lin/dragonbra/javasteam/networking/steam3/ProtocolTypes;->values()[Lin/dragonbra/javasteam/networking/steam3/ProtocolTypes;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_c
    if-ge v3, v2, :cond_1c

    aget-object v4, v1, v3

    .line 32
    iget v5, v4, Lin/dragonbra/javasteam/networking/steam3/ProtocolTypes;->code:I

    and-int v6, v5, p0

    if-ne v6, v5, :cond_19

    .line 33
    invoke-virtual {v0, v4}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_19
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_1c
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lin/dragonbra/javasteam/networking/steam3/ProtocolTypes;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 9
    const-class v0, Lin/dragonbra/javasteam/networking/steam3/ProtocolTypes;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lin/dragonbra/javasteam/networking/steam3/ProtocolTypes;

    return-object p0
.end method

.method public static values()[Lin/dragonbra/javasteam/networking/steam3/ProtocolTypes;
    .registers 1

    .line 9
    sget-object v0, Lin/dragonbra/javasteam/networking/steam3/ProtocolTypes;->$VALUES:[Lin/dragonbra/javasteam/networking/steam3/ProtocolTypes;

    invoke-virtual {v0}, [Lin/dragonbra/javasteam/networking/steam3/ProtocolTypes;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lin/dragonbra/javasteam/networking/steam3/ProtocolTypes;

    return-object v0
.end method


# virtual methods
.method public code()I
    .registers 1

    .line 26
    iget p0, p0, Lin/dragonbra/javasteam/networking/steam3/ProtocolTypes;->code:I

    return p0
.end method
