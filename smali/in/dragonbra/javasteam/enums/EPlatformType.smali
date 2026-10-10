###### Class in.dragonbra.javasteam.enums.EPlatformType (in.dragonbra.javasteam.enums.EPlatformType)
.class public final enum Lin/dragonbra/javasteam/enums/EPlatformType;
.super Ljava/lang/Enum;
.source "EPlatformType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lin/dragonbra/javasteam/enums/EPlatformType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lin/dragonbra/javasteam/enums/EPlatformType;

.field public static final enum Android32:Lin/dragonbra/javasteam/enums/EPlatformType;

.field public static final enum Android64:Lin/dragonbra/javasteam/enums/EPlatformType;

.field public static final enum Browser:Lin/dragonbra/javasteam/enums/EPlatformType;

.field public static final enum EmbeddedClient:Lin/dragonbra/javasteam/enums/EPlatformType;

.field public static final enum IOS32:Lin/dragonbra/javasteam/enums/EPlatformType;

.field public static final enum IOS64:Lin/dragonbra/javasteam/enums/EPlatformType;

.field public static final enum Linux32:Lin/dragonbra/javasteam/enums/EPlatformType;

.field public static final enum Linux64:Lin/dragonbra/javasteam/enums/EPlatformType;

.field public static final enum OSX:Lin/dragonbra/javasteam/enums/EPlatformType;

.field public static final enum PS3:Lin/dragonbra/javasteam/enums/EPlatformType;

.field public static final enum TVOS:Lin/dragonbra/javasteam/enums/EPlatformType;

.field public static final enum Unknown:Lin/dragonbra/javasteam/enums/EPlatformType;

.field public static final enum Win32:Lin/dragonbra/javasteam/enums/EPlatformType;

.field public static final enum Win64:Lin/dragonbra/javasteam/enums/EPlatformType;


# instance fields
.field private final code:I


# direct methods
.method private static synthetic $values()[Lin/dragonbra/javasteam/enums/EPlatformType;
    .registers 14

    .line 4
    sget-object v0, Lin/dragonbra/javasteam/enums/EPlatformType;->Unknown:Lin/dragonbra/javasteam/enums/EPlatformType;

    sget-object v1, Lin/dragonbra/javasteam/enums/EPlatformType;->Win32:Lin/dragonbra/javasteam/enums/EPlatformType;

    sget-object v2, Lin/dragonbra/javasteam/enums/EPlatformType;->Win64:Lin/dragonbra/javasteam/enums/EPlatformType;

    sget-object v3, Lin/dragonbra/javasteam/enums/EPlatformType;->Linux64:Lin/dragonbra/javasteam/enums/EPlatformType;

    sget-object v4, Lin/dragonbra/javasteam/enums/EPlatformType;->OSX:Lin/dragonbra/javasteam/enums/EPlatformType;

    sget-object v5, Lin/dragonbra/javasteam/enums/EPlatformType;->PS3:Lin/dragonbra/javasteam/enums/EPlatformType;

    sget-object v6, Lin/dragonbra/javasteam/enums/EPlatformType;->Linux32:Lin/dragonbra/javasteam/enums/EPlatformType;

    sget-object v7, Lin/dragonbra/javasteam/enums/EPlatformType;->Android32:Lin/dragonbra/javasteam/enums/EPlatformType;

    sget-object v8, Lin/dragonbra/javasteam/enums/EPlatformType;->Android64:Lin/dragonbra/javasteam/enums/EPlatformType;

    sget-object v9, Lin/dragonbra/javasteam/enums/EPlatformType;->IOS32:Lin/dragonbra/javasteam/enums/EPlatformType;

    sget-object v10, Lin/dragonbra/javasteam/enums/EPlatformType;->IOS64:Lin/dragonbra/javasteam/enums/EPlatformType;

    sget-object v11, Lin/dragonbra/javasteam/enums/EPlatformType;->TVOS:Lin/dragonbra/javasteam/enums/EPlatformType;

    sget-object v12, Lin/dragonbra/javasteam/enums/EPlatformType;->EmbeddedClient:Lin/dragonbra/javasteam/enums/EPlatformType;

    sget-object v13, Lin/dragonbra/javasteam/enums/EPlatformType;->Browser:Lin/dragonbra/javasteam/enums/EPlatformType;

    filled-new-array/range {v0 .. v13}, [Lin/dragonbra/javasteam/enums/EPlatformType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 6
    new-instance v0, Lin/dragonbra/javasteam/enums/EPlatformType;

    const-string v1, "Unknown"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lin/dragonbra/javasteam/enums/EPlatformType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/enums/EPlatformType;->Unknown:Lin/dragonbra/javasteam/enums/EPlatformType;

    .line 8
    new-instance v0, Lin/dragonbra/javasteam/enums/EPlatformType;

    const-string v1, "Win32"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lin/dragonbra/javasteam/enums/EPlatformType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/enums/EPlatformType;->Win32:Lin/dragonbra/javasteam/enums/EPlatformType;

    .line 10
    new-instance v0, Lin/dragonbra/javasteam/enums/EPlatformType;

    const-string v1, "Win64"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lin/dragonbra/javasteam/enums/EPlatformType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/enums/EPlatformType;->Win64:Lin/dragonbra/javasteam/enums/EPlatformType;

    .line 12
    new-instance v0, Lin/dragonbra/javasteam/enums/EPlatformType;

    const-string v1, "Linux64"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lin/dragonbra/javasteam/enums/EPlatformType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/enums/EPlatformType;->Linux64:Lin/dragonbra/javasteam/enums/EPlatformType;

    .line 14
    new-instance v0, Lin/dragonbra/javasteam/enums/EPlatformType;

    const-string v1, "OSX"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v2}, Lin/dragonbra/javasteam/enums/EPlatformType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/enums/EPlatformType;->OSX:Lin/dragonbra/javasteam/enums/EPlatformType;

    .line 16
    new-instance v0, Lin/dragonbra/javasteam/enums/EPlatformType;

    const-string v1, "PS3"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v2}, Lin/dragonbra/javasteam/enums/EPlatformType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/enums/EPlatformType;->PS3:Lin/dragonbra/javasteam/enums/EPlatformType;

    .line 18
    new-instance v0, Lin/dragonbra/javasteam/enums/EPlatformType;

    const-string v1, "Linux32"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v2}, Lin/dragonbra/javasteam/enums/EPlatformType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/enums/EPlatformType;->Linux32:Lin/dragonbra/javasteam/enums/EPlatformType;

    .line 20
    new-instance v0, Lin/dragonbra/javasteam/enums/EPlatformType;

    const-string v1, "Android32"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v2}, Lin/dragonbra/javasteam/enums/EPlatformType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/enums/EPlatformType;->Android32:Lin/dragonbra/javasteam/enums/EPlatformType;

    .line 22
    new-instance v0, Lin/dragonbra/javasteam/enums/EPlatformType;

    const-string v1, "Android64"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2, v2}, Lin/dragonbra/javasteam/enums/EPlatformType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/enums/EPlatformType;->Android64:Lin/dragonbra/javasteam/enums/EPlatformType;

    .line 24
    new-instance v0, Lin/dragonbra/javasteam/enums/EPlatformType;

    const-string v1, "IOS32"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2, v2}, Lin/dragonbra/javasteam/enums/EPlatformType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/enums/EPlatformType;->IOS32:Lin/dragonbra/javasteam/enums/EPlatformType;

    .line 26
    new-instance v0, Lin/dragonbra/javasteam/enums/EPlatformType;

    const-string v1, "IOS64"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2, v2}, Lin/dragonbra/javasteam/enums/EPlatformType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/enums/EPlatformType;->IOS64:Lin/dragonbra/javasteam/enums/EPlatformType;

    .line 28
    new-instance v0, Lin/dragonbra/javasteam/enums/EPlatformType;

    const-string v1, "TVOS"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2, v2}, Lin/dragonbra/javasteam/enums/EPlatformType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/enums/EPlatformType;->TVOS:Lin/dragonbra/javasteam/enums/EPlatformType;

    .line 30
    new-instance v0, Lin/dragonbra/javasteam/enums/EPlatformType;

    const-string v1, "EmbeddedClient"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2, v2}, Lin/dragonbra/javasteam/enums/EPlatformType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/enums/EPlatformType;->EmbeddedClient:Lin/dragonbra/javasteam/enums/EPlatformType;

    .line 32
    new-instance v0, Lin/dragonbra/javasteam/enums/EPlatformType;

    const-string v1, "Browser"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2, v2}, Lin/dragonbra/javasteam/enums/EPlatformType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/enums/EPlatformType;->Browser:Lin/dragonbra/javasteam/enums/EPlatformType;

    .line 4
    invoke-static {}, Lin/dragonbra/javasteam/enums/EPlatformType;->$values()[Lin/dragonbra/javasteam/enums/EPlatformType;

    move-result-object v0

    sput-object v0, Lin/dragonbra/javasteam/enums/EPlatformType;->$VALUES:[Lin/dragonbra/javasteam/enums/EPlatformType;

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

    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 39
    iput p3, p0, Lin/dragonbra/javasteam/enums/EPlatformType;->code:I

    return-void
.end method

.method public static from(I)Lin/dragonbra/javasteam/enums/EPlatformType;
    .registers 6

    .line 47
    invoke-static {}, Lin/dragonbra/javasteam/enums/EPlatformType;->values()[Lin/dragonbra/javasteam/enums/EPlatformType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_12

    aget-object v3, v0, v2

    .line 48
    iget v4, v3, Lin/dragonbra/javasteam/enums/EPlatformType;->code:I

    if-ne v4, p0, :cond_f

    return-object v3

    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_12
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lin/dragonbra/javasteam/enums/EPlatformType;
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
    const-class v0, Lin/dragonbra/javasteam/enums/EPlatformType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lin/dragonbra/javasteam/enums/EPlatformType;

    return-object p0
.end method

.method public static values()[Lin/dragonbra/javasteam/enums/EPlatformType;
    .registers 1

    .line 4
    sget-object v0, Lin/dragonbra/javasteam/enums/EPlatformType;->$VALUES:[Lin/dragonbra/javasteam/enums/EPlatformType;

    invoke-virtual {v0}, [Lin/dragonbra/javasteam/enums/EPlatformType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lin/dragonbra/javasteam/enums/EPlatformType;

    return-object v0
.end method


# virtual methods
.method public code()I
    .registers 1

    .line 43
    iget p0, p0, Lin/dragonbra/javasteam/enums/EPlatformType;->code:I

    return p0
.end method
