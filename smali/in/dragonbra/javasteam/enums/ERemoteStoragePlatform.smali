###### Class in.dragonbra.javasteam.enums.ERemoteStoragePlatform (in.dragonbra.javasteam.enums.ERemoteStoragePlatform)
.class public final enum Lin/dragonbra/javasteam/enums/ERemoteStoragePlatform;
.super Ljava/lang/Enum;
.source "ERemoteStoragePlatform.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lin/dragonbra/javasteam/enums/ERemoteStoragePlatform;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lin/dragonbra/javasteam/enums/ERemoteStoragePlatform;

.field public static final enum All:Lin/dragonbra/javasteam/enums/ERemoteStoragePlatform;

.field public static final enum Android:Lin/dragonbra/javasteam/enums/ERemoteStoragePlatform;

.field public static final enum IPhoneOS:Lin/dragonbra/javasteam/enums/ERemoteStoragePlatform;

.field public static final enum Linux:Lin/dragonbra/javasteam/enums/ERemoteStoragePlatform;

.field public static final enum None:Lin/dragonbra/javasteam/enums/ERemoteStoragePlatform;

.field public static final enum OSX:Lin/dragonbra/javasteam/enums/ERemoteStoragePlatform;

.field public static final enum PS3:Lin/dragonbra/javasteam/enums/ERemoteStoragePlatform;

.field public static final enum Switch:Lin/dragonbra/javasteam/enums/ERemoteStoragePlatform;

.field public static final enum Windows:Lin/dragonbra/javasteam/enums/ERemoteStoragePlatform;


# instance fields
.field private final code:I


# direct methods
.method private static synthetic $values()[Lin/dragonbra/javasteam/enums/ERemoteStoragePlatform;
    .registers 9

    .line 5
    sget-object v0, Lin/dragonbra/javasteam/enums/ERemoteStoragePlatform;->None:Lin/dragonbra/javasteam/enums/ERemoteStoragePlatform;

    sget-object v1, Lin/dragonbra/javasteam/enums/ERemoteStoragePlatform;->Windows:Lin/dragonbra/javasteam/enums/ERemoteStoragePlatform;

    sget-object v2, Lin/dragonbra/javasteam/enums/ERemoteStoragePlatform;->OSX:Lin/dragonbra/javasteam/enums/ERemoteStoragePlatform;

    sget-object v3, Lin/dragonbra/javasteam/enums/ERemoteStoragePlatform;->PS3:Lin/dragonbra/javasteam/enums/ERemoteStoragePlatform;

    sget-object v4, Lin/dragonbra/javasteam/enums/ERemoteStoragePlatform;->Linux:Lin/dragonbra/javasteam/enums/ERemoteStoragePlatform;

    sget-object v5, Lin/dragonbra/javasteam/enums/ERemoteStoragePlatform;->Switch:Lin/dragonbra/javasteam/enums/ERemoteStoragePlatform;

    sget-object v6, Lin/dragonbra/javasteam/enums/ERemoteStoragePlatform;->Android:Lin/dragonbra/javasteam/enums/ERemoteStoragePlatform;

    sget-object v7, Lin/dragonbra/javasteam/enums/ERemoteStoragePlatform;->IPhoneOS:Lin/dragonbra/javasteam/enums/ERemoteStoragePlatform;

    sget-object v8, Lin/dragonbra/javasteam/enums/ERemoteStoragePlatform;->All:Lin/dragonbra/javasteam/enums/ERemoteStoragePlatform;

    filled-new-array/range {v0 .. v8}, [Lin/dragonbra/javasteam/enums/ERemoteStoragePlatform;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 5

    .line 7
    new-instance v0, Lin/dragonbra/javasteam/enums/ERemoteStoragePlatform;

    const-string v1, "None"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lin/dragonbra/javasteam/enums/ERemoteStoragePlatform;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/enums/ERemoteStoragePlatform;->None:Lin/dragonbra/javasteam/enums/ERemoteStoragePlatform;

    .line 9
    new-instance v0, Lin/dragonbra/javasteam/enums/ERemoteStoragePlatform;

    const-string v1, "Windows"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lin/dragonbra/javasteam/enums/ERemoteStoragePlatform;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/enums/ERemoteStoragePlatform;->Windows:Lin/dragonbra/javasteam/enums/ERemoteStoragePlatform;

    .line 11
    new-instance v0, Lin/dragonbra/javasteam/enums/ERemoteStoragePlatform;

    const-string v1, "OSX"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lin/dragonbra/javasteam/enums/ERemoteStoragePlatform;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/enums/ERemoteStoragePlatform;->OSX:Lin/dragonbra/javasteam/enums/ERemoteStoragePlatform;

    .line 13
    new-instance v0, Lin/dragonbra/javasteam/enums/ERemoteStoragePlatform;

    const-string v1, "PS3"

    const/4 v2, 0x3

    const/4 v3, 0x4

    invoke-direct {v0, v1, v2, v3}, Lin/dragonbra/javasteam/enums/ERemoteStoragePlatform;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/enums/ERemoteStoragePlatform;->PS3:Lin/dragonbra/javasteam/enums/ERemoteStoragePlatform;

    .line 15
    new-instance v0, Lin/dragonbra/javasteam/enums/ERemoteStoragePlatform;

    const-string v1, "Linux"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v3, v2}, Lin/dragonbra/javasteam/enums/ERemoteStoragePlatform;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/enums/ERemoteStoragePlatform;->Linux:Lin/dragonbra/javasteam/enums/ERemoteStoragePlatform;

    .line 17
    new-instance v0, Lin/dragonbra/javasteam/enums/ERemoteStoragePlatform;

    const/4 v1, 0x5

    const/16 v3, 0x10

    const-string v4, "Switch"

    invoke-direct {v0, v4, v1, v3}, Lin/dragonbra/javasteam/enums/ERemoteStoragePlatform;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/enums/ERemoteStoragePlatform;->Switch:Lin/dragonbra/javasteam/enums/ERemoteStoragePlatform;

    .line 19
    new-instance v0, Lin/dragonbra/javasteam/enums/ERemoteStoragePlatform;

    const/4 v1, 0x6

    const/16 v3, 0x20

    const-string v4, "Android"

    invoke-direct {v0, v4, v1, v3}, Lin/dragonbra/javasteam/enums/ERemoteStoragePlatform;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/enums/ERemoteStoragePlatform;->Android:Lin/dragonbra/javasteam/enums/ERemoteStoragePlatform;

    .line 21
    new-instance v0, Lin/dragonbra/javasteam/enums/ERemoteStoragePlatform;

    const/4 v1, 0x7

    const/16 v3, 0x40

    const-string v4, "IPhoneOS"

    invoke-direct {v0, v4, v1, v3}, Lin/dragonbra/javasteam/enums/ERemoteStoragePlatform;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/enums/ERemoteStoragePlatform;->IPhoneOS:Lin/dragonbra/javasteam/enums/ERemoteStoragePlatform;

    .line 23
    new-instance v0, Lin/dragonbra/javasteam/enums/ERemoteStoragePlatform;

    const-string v1, "All"

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Lin/dragonbra/javasteam/enums/ERemoteStoragePlatform;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/enums/ERemoteStoragePlatform;->All:Lin/dragonbra/javasteam/enums/ERemoteStoragePlatform;

    .line 5
    invoke-static {}, Lin/dragonbra/javasteam/enums/ERemoteStoragePlatform;->$values()[Lin/dragonbra/javasteam/enums/ERemoteStoragePlatform;

    move-result-object v0

    sput-object v0, Lin/dragonbra/javasteam/enums/ERemoteStoragePlatform;->$VALUES:[Lin/dragonbra/javasteam/enums/ERemoteStoragePlatform;

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

    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 30
    iput p3, p0, Lin/dragonbra/javasteam/enums/ERemoteStoragePlatform;->code:I

    return-void
.end method

.method public static code(Ljava/util/EnumSet;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet<",
            "Lin/dragonbra/javasteam/enums/ERemoteStoragePlatform;",
            ">;)I"
        }
    .end annotation

    .line 49
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lin/dragonbra/javasteam/enums/ERemoteStoragePlatform;

    .line 50
    iget v1, v1, Lin/dragonbra/javasteam/enums/ERemoteStoragePlatform;->code:I

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
            "Lin/dragonbra/javasteam/enums/ERemoteStoragePlatform;",
            ">;"
        }
    .end annotation

    .line 38
    const-class v0, Lin/dragonbra/javasteam/enums/ERemoteStoragePlatform;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    .line 39
    invoke-static {}, Lin/dragonbra/javasteam/enums/ERemoteStoragePlatform;->values()[Lin/dragonbra/javasteam/enums/ERemoteStoragePlatform;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_c
    if-ge v3, v2, :cond_1c

    aget-object v4, v1, v3

    .line 40
    iget v5, v4, Lin/dragonbra/javasteam/enums/ERemoteStoragePlatform;->code:I

    and-int v6, v5, p0

    if-ne v6, v5, :cond_19

    .line 41
    invoke-virtual {v0, v4}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_19
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_1c
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lin/dragonbra/javasteam/enums/ERemoteStoragePlatform;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 5
    const-class v0, Lin/dragonbra/javasteam/enums/ERemoteStoragePlatform;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lin/dragonbra/javasteam/enums/ERemoteStoragePlatform;

    return-object p0
.end method

.method public static values()[Lin/dragonbra/javasteam/enums/ERemoteStoragePlatform;
    .registers 1

    .line 5
    sget-object v0, Lin/dragonbra/javasteam/enums/ERemoteStoragePlatform;->$VALUES:[Lin/dragonbra/javasteam/enums/ERemoteStoragePlatform;

    invoke-virtual {v0}, [Lin/dragonbra/javasteam/enums/ERemoteStoragePlatform;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lin/dragonbra/javasteam/enums/ERemoteStoragePlatform;

    return-object v0
.end method


# virtual methods
.method public code()I
    .registers 1

    .line 34
    iget p0, p0, Lin/dragonbra/javasteam/enums/ERemoteStoragePlatform;->code:I

    return p0
.end method
