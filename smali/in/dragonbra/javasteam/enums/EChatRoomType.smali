###### Class in.dragonbra.javasteam.enums.EChatRoomType (in.dragonbra.javasteam.enums.EChatRoomType)
.class public final enum Lin/dragonbra/javasteam/enums/EChatRoomType;
.super Ljava/lang/Enum;
.source "EChatRoomType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lin/dragonbra/javasteam/enums/EChatRoomType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lin/dragonbra/javasteam/enums/EChatRoomType;

.field public static final enum Friend:Lin/dragonbra/javasteam/enums/EChatRoomType;

.field public static final enum Lobby:Lin/dragonbra/javasteam/enums/EChatRoomType;

.field public static final enum MUC:Lin/dragonbra/javasteam/enums/EChatRoomType;


# instance fields
.field private final code:I


# direct methods
.method private static synthetic $values()[Lin/dragonbra/javasteam/enums/EChatRoomType;
    .registers 3

    .line 4
    sget-object v0, Lin/dragonbra/javasteam/enums/EChatRoomType;->Friend:Lin/dragonbra/javasteam/enums/EChatRoomType;

    sget-object v1, Lin/dragonbra/javasteam/enums/EChatRoomType;->MUC:Lin/dragonbra/javasteam/enums/EChatRoomType;

    sget-object v2, Lin/dragonbra/javasteam/enums/EChatRoomType;->Lobby:Lin/dragonbra/javasteam/enums/EChatRoomType;

    filled-new-array {v0, v1, v2}, [Lin/dragonbra/javasteam/enums/EChatRoomType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 4

    .line 6
    new-instance v0, Lin/dragonbra/javasteam/enums/EChatRoomType;

    const-string v1, "Friend"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lin/dragonbra/javasteam/enums/EChatRoomType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/enums/EChatRoomType;->Friend:Lin/dragonbra/javasteam/enums/EChatRoomType;

    .line 8
    new-instance v0, Lin/dragonbra/javasteam/enums/EChatRoomType;

    const-string v1, "MUC"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v3, v2}, Lin/dragonbra/javasteam/enums/EChatRoomType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/enums/EChatRoomType;->MUC:Lin/dragonbra/javasteam/enums/EChatRoomType;

    .line 10
    new-instance v0, Lin/dragonbra/javasteam/enums/EChatRoomType;

    const-string v1, "Lobby"

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lin/dragonbra/javasteam/enums/EChatRoomType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/enums/EChatRoomType;->Lobby:Lin/dragonbra/javasteam/enums/EChatRoomType;

    .line 4
    invoke-static {}, Lin/dragonbra/javasteam/enums/EChatRoomType;->$values()[Lin/dragonbra/javasteam/enums/EChatRoomType;

    move-result-object v0

    sput-object v0, Lin/dragonbra/javasteam/enums/EChatRoomType;->$VALUES:[Lin/dragonbra/javasteam/enums/EChatRoomType;

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

    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 17
    iput p3, p0, Lin/dragonbra/javasteam/enums/EChatRoomType;->code:I

    return-void
.end method

.method public static from(I)Lin/dragonbra/javasteam/enums/EChatRoomType;
    .registers 6

    .line 25
    invoke-static {}, Lin/dragonbra/javasteam/enums/EChatRoomType;->values()[Lin/dragonbra/javasteam/enums/EChatRoomType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_12

    aget-object v3, v0, v2

    .line 26
    iget v4, v3, Lin/dragonbra/javasteam/enums/EChatRoomType;->code:I

    if-ne v4, p0, :cond_f

    return-object v3

    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_12
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lin/dragonbra/javasteam/enums/EChatRoomType;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 4
    const-class v0, Lin/dragonbra/javasteam/enums/EChatRoomType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lin/dragonbra/javasteam/enums/EChatRoomType;

    return-object p0
.end method

.method public static values()[Lin/dragonbra/javasteam/enums/EChatRoomType;
    .registers 1

    .line 4
    sget-object v0, Lin/dragonbra/javasteam/enums/EChatRoomType;->$VALUES:[Lin/dragonbra/javasteam/enums/EChatRoomType;

    invoke-virtual {v0}, [Lin/dragonbra/javasteam/enums/EChatRoomType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lin/dragonbra/javasteam/enums/EChatRoomType;

    return-object v0
.end method


# virtual methods
.method public code()I
    .registers 1

    .line 21
    iget p0, p0, Lin/dragonbra/javasteam/enums/EChatRoomType;->code:I

    return p0
.end method
