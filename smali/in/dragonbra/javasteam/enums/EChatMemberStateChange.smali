###### Class in.dragonbra.javasteam.enums.EChatMemberStateChange (in.dragonbra.javasteam.enums.EChatMemberStateChange)
.class public final enum Lin/dragonbra/javasteam/enums/EChatMemberStateChange;
.super Ljava/lang/Enum;
.source "EChatMemberStateChange.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lin/dragonbra/javasteam/enums/EChatMemberStateChange;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lin/dragonbra/javasteam/enums/EChatMemberStateChange;

.field public static final enum Banned:Lin/dragonbra/javasteam/enums/EChatMemberStateChange;

.field public static final enum Disconnected:Lin/dragonbra/javasteam/enums/EChatMemberStateChange;

.field public static final enum Entered:Lin/dragonbra/javasteam/enums/EChatMemberStateChange;

.field public static final enum Kicked:Lin/dragonbra/javasteam/enums/EChatMemberStateChange;

.field public static final enum Left:Lin/dragonbra/javasteam/enums/EChatMemberStateChange;

.field public static final enum VoiceDoneSpeaking:Lin/dragonbra/javasteam/enums/EChatMemberStateChange;

.field public static final enum VoiceSpeaking:Lin/dragonbra/javasteam/enums/EChatMemberStateChange;


# instance fields
.field private final code:I


# direct methods
.method private static synthetic $values()[Lin/dragonbra/javasteam/enums/EChatMemberStateChange;
    .registers 7

    .line 5
    sget-object v0, Lin/dragonbra/javasteam/enums/EChatMemberStateChange;->Entered:Lin/dragonbra/javasteam/enums/EChatMemberStateChange;

    sget-object v1, Lin/dragonbra/javasteam/enums/EChatMemberStateChange;->Left:Lin/dragonbra/javasteam/enums/EChatMemberStateChange;

    sget-object v2, Lin/dragonbra/javasteam/enums/EChatMemberStateChange;->Disconnected:Lin/dragonbra/javasteam/enums/EChatMemberStateChange;

    sget-object v3, Lin/dragonbra/javasteam/enums/EChatMemberStateChange;->Kicked:Lin/dragonbra/javasteam/enums/EChatMemberStateChange;

    sget-object v4, Lin/dragonbra/javasteam/enums/EChatMemberStateChange;->Banned:Lin/dragonbra/javasteam/enums/EChatMemberStateChange;

    sget-object v5, Lin/dragonbra/javasteam/enums/EChatMemberStateChange;->VoiceSpeaking:Lin/dragonbra/javasteam/enums/EChatMemberStateChange;

    sget-object v6, Lin/dragonbra/javasteam/enums/EChatMemberStateChange;->VoiceDoneSpeaking:Lin/dragonbra/javasteam/enums/EChatMemberStateChange;

    filled-new-array/range {v0 .. v6}, [Lin/dragonbra/javasteam/enums/EChatMemberStateChange;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 5

    .line 7
    new-instance v0, Lin/dragonbra/javasteam/enums/EChatMemberStateChange;

    const-string v1, "Entered"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lin/dragonbra/javasteam/enums/EChatMemberStateChange;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/enums/EChatMemberStateChange;->Entered:Lin/dragonbra/javasteam/enums/EChatMemberStateChange;

    .line 9
    new-instance v0, Lin/dragonbra/javasteam/enums/EChatMemberStateChange;

    const-string v1, "Left"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v3, v2}, Lin/dragonbra/javasteam/enums/EChatMemberStateChange;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/enums/EChatMemberStateChange;->Left:Lin/dragonbra/javasteam/enums/EChatMemberStateChange;

    .line 11
    new-instance v0, Lin/dragonbra/javasteam/enums/EChatMemberStateChange;

    const-string v1, "Disconnected"

    const/4 v3, 0x4

    invoke-direct {v0, v1, v2, v3}, Lin/dragonbra/javasteam/enums/EChatMemberStateChange;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/enums/EChatMemberStateChange;->Disconnected:Lin/dragonbra/javasteam/enums/EChatMemberStateChange;

    .line 13
    new-instance v0, Lin/dragonbra/javasteam/enums/EChatMemberStateChange;

    const/4 v1, 0x3

    const/16 v2, 0x8

    const-string v4, "Kicked"

    invoke-direct {v0, v4, v1, v2}, Lin/dragonbra/javasteam/enums/EChatMemberStateChange;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/enums/EChatMemberStateChange;->Kicked:Lin/dragonbra/javasteam/enums/EChatMemberStateChange;

    .line 15
    new-instance v0, Lin/dragonbra/javasteam/enums/EChatMemberStateChange;

    const-string v1, "Banned"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v3, v2}, Lin/dragonbra/javasteam/enums/EChatMemberStateChange;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/enums/EChatMemberStateChange;->Banned:Lin/dragonbra/javasteam/enums/EChatMemberStateChange;

    .line 17
    new-instance v0, Lin/dragonbra/javasteam/enums/EChatMemberStateChange;

    const/4 v1, 0x5

    const/16 v2, 0x1000

    const-string v3, "VoiceSpeaking"

    invoke-direct {v0, v3, v1, v2}, Lin/dragonbra/javasteam/enums/EChatMemberStateChange;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/enums/EChatMemberStateChange;->VoiceSpeaking:Lin/dragonbra/javasteam/enums/EChatMemberStateChange;

    .line 19
    new-instance v0, Lin/dragonbra/javasteam/enums/EChatMemberStateChange;

    const/4 v1, 0x6

    const/16 v2, 0x2000

    const-string v3, "VoiceDoneSpeaking"

    invoke-direct {v0, v3, v1, v2}, Lin/dragonbra/javasteam/enums/EChatMemberStateChange;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/enums/EChatMemberStateChange;->VoiceDoneSpeaking:Lin/dragonbra/javasteam/enums/EChatMemberStateChange;

    .line 5
    invoke-static {}, Lin/dragonbra/javasteam/enums/EChatMemberStateChange;->$values()[Lin/dragonbra/javasteam/enums/EChatMemberStateChange;

    move-result-object v0

    sput-object v0, Lin/dragonbra/javasteam/enums/EChatMemberStateChange;->$VALUES:[Lin/dragonbra/javasteam/enums/EChatMemberStateChange;

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

    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 26
    iput p3, p0, Lin/dragonbra/javasteam/enums/EChatMemberStateChange;->code:I

    return-void
.end method

.method public static code(Ljava/util/EnumSet;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet<",
            "Lin/dragonbra/javasteam/enums/EChatMemberStateChange;",
            ">;)I"
        }
    .end annotation

    .line 45
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lin/dragonbra/javasteam/enums/EChatMemberStateChange;

    .line 46
    iget v1, v1, Lin/dragonbra/javasteam/enums/EChatMemberStateChange;->code:I

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
            "Lin/dragonbra/javasteam/enums/EChatMemberStateChange;",
            ">;"
        }
    .end annotation

    .line 34
    const-class v0, Lin/dragonbra/javasteam/enums/EChatMemberStateChange;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    .line 35
    invoke-static {}, Lin/dragonbra/javasteam/enums/EChatMemberStateChange;->values()[Lin/dragonbra/javasteam/enums/EChatMemberStateChange;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_c
    if-ge v3, v2, :cond_1c

    aget-object v4, v1, v3

    .line 36
    iget v5, v4, Lin/dragonbra/javasteam/enums/EChatMemberStateChange;->code:I

    and-int v6, v5, p0

    if-ne v6, v5, :cond_19

    .line 37
    invoke-virtual {v0, v4}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_19
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_1c
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lin/dragonbra/javasteam/enums/EChatMemberStateChange;
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
    const-class v0, Lin/dragonbra/javasteam/enums/EChatMemberStateChange;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lin/dragonbra/javasteam/enums/EChatMemberStateChange;

    return-object p0
.end method

.method public static values()[Lin/dragonbra/javasteam/enums/EChatMemberStateChange;
    .registers 1

    .line 5
    sget-object v0, Lin/dragonbra/javasteam/enums/EChatMemberStateChange;->$VALUES:[Lin/dragonbra/javasteam/enums/EChatMemberStateChange;

    invoke-virtual {v0}, [Lin/dragonbra/javasteam/enums/EChatMemberStateChange;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lin/dragonbra/javasteam/enums/EChatMemberStateChange;

    return-object v0
.end method


# virtual methods
.method public code()I
    .registers 1

    .line 30
    iget p0, p0, Lin/dragonbra/javasteam/enums/EChatMemberStateChange;->code:I

    return p0
.end method
