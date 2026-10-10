###### Class in.dragonbra.javasteam.enums.EChatEntryType (in.dragonbra.javasteam.enums.EChatEntryType)
.class public final enum Lin/dragonbra/javasteam/enums/EChatEntryType;
.super Ljava/lang/Enum;
.source "EChatEntryType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lin/dragonbra/javasteam/enums/EChatEntryType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lin/dragonbra/javasteam/enums/EChatEntryType;

.field public static final enum ChatMsg:Lin/dragonbra/javasteam/enums/EChatEntryType;

.field public static final enum Disconnected:Lin/dragonbra/javasteam/enums/EChatEntryType;

.field public static final enum Entered:Lin/dragonbra/javasteam/enums/EChatEntryType;

.field public static final enum HistoricalChat:Lin/dragonbra/javasteam/enums/EChatEntryType;

.field public static final enum Invalid:Lin/dragonbra/javasteam/enums/EChatEntryType;

.field public static final enum InviteGame:Lin/dragonbra/javasteam/enums/EChatEntryType;

.field public static final enum LeftConversation:Lin/dragonbra/javasteam/enums/EChatEntryType;

.field public static final enum LinkBlocked:Lin/dragonbra/javasteam/enums/EChatEntryType;

.field public static final enum Reserved1:Lin/dragonbra/javasteam/enums/EChatEntryType;

.field public static final enum Reserved2:Lin/dragonbra/javasteam/enums/EChatEntryType;

.field public static final enum Typing:Lin/dragonbra/javasteam/enums/EChatEntryType;

.field public static final enum WasBanned:Lin/dragonbra/javasteam/enums/EChatEntryType;

.field public static final enum WasKicked:Lin/dragonbra/javasteam/enums/EChatEntryType;


# instance fields
.field private final code:I


# direct methods
.method private static synthetic $values()[Lin/dragonbra/javasteam/enums/EChatEntryType;
    .registers 13

    .line 4
    sget-object v0, Lin/dragonbra/javasteam/enums/EChatEntryType;->Invalid:Lin/dragonbra/javasteam/enums/EChatEntryType;

    sget-object v1, Lin/dragonbra/javasteam/enums/EChatEntryType;->ChatMsg:Lin/dragonbra/javasteam/enums/EChatEntryType;

    sget-object v2, Lin/dragonbra/javasteam/enums/EChatEntryType;->Typing:Lin/dragonbra/javasteam/enums/EChatEntryType;

    sget-object v3, Lin/dragonbra/javasteam/enums/EChatEntryType;->InviteGame:Lin/dragonbra/javasteam/enums/EChatEntryType;

    sget-object v4, Lin/dragonbra/javasteam/enums/EChatEntryType;->LeftConversation:Lin/dragonbra/javasteam/enums/EChatEntryType;

    sget-object v5, Lin/dragonbra/javasteam/enums/EChatEntryType;->Entered:Lin/dragonbra/javasteam/enums/EChatEntryType;

    sget-object v6, Lin/dragonbra/javasteam/enums/EChatEntryType;->WasKicked:Lin/dragonbra/javasteam/enums/EChatEntryType;

    sget-object v7, Lin/dragonbra/javasteam/enums/EChatEntryType;->WasBanned:Lin/dragonbra/javasteam/enums/EChatEntryType;

    sget-object v8, Lin/dragonbra/javasteam/enums/EChatEntryType;->Disconnected:Lin/dragonbra/javasteam/enums/EChatEntryType;

    sget-object v9, Lin/dragonbra/javasteam/enums/EChatEntryType;->HistoricalChat:Lin/dragonbra/javasteam/enums/EChatEntryType;

    sget-object v10, Lin/dragonbra/javasteam/enums/EChatEntryType;->Reserved1:Lin/dragonbra/javasteam/enums/EChatEntryType;

    sget-object v11, Lin/dragonbra/javasteam/enums/EChatEntryType;->Reserved2:Lin/dragonbra/javasteam/enums/EChatEntryType;

    sget-object v12, Lin/dragonbra/javasteam/enums/EChatEntryType;->LinkBlocked:Lin/dragonbra/javasteam/enums/EChatEntryType;

    filled-new-array/range {v0 .. v12}, [Lin/dragonbra/javasteam/enums/EChatEntryType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 5

    .line 6
    new-instance v0, Lin/dragonbra/javasteam/enums/EChatEntryType;

    const-string v1, "Invalid"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lin/dragonbra/javasteam/enums/EChatEntryType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/enums/EChatEntryType;->Invalid:Lin/dragonbra/javasteam/enums/EChatEntryType;

    .line 8
    new-instance v0, Lin/dragonbra/javasteam/enums/EChatEntryType;

    const-string v1, "ChatMsg"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lin/dragonbra/javasteam/enums/EChatEntryType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/enums/EChatEntryType;->ChatMsg:Lin/dragonbra/javasteam/enums/EChatEntryType;

    .line 10
    new-instance v0, Lin/dragonbra/javasteam/enums/EChatEntryType;

    const-string v1, "Typing"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lin/dragonbra/javasteam/enums/EChatEntryType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/enums/EChatEntryType;->Typing:Lin/dragonbra/javasteam/enums/EChatEntryType;

    .line 12
    new-instance v0, Lin/dragonbra/javasteam/enums/EChatEntryType;

    const-string v1, "InviteGame"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lin/dragonbra/javasteam/enums/EChatEntryType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/enums/EChatEntryType;->InviteGame:Lin/dragonbra/javasteam/enums/EChatEntryType;

    .line 14
    new-instance v0, Lin/dragonbra/javasteam/enums/EChatEntryType;

    const-string v1, "LeftConversation"

    const/4 v2, 0x4

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lin/dragonbra/javasteam/enums/EChatEntryType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/enums/EChatEntryType;->LeftConversation:Lin/dragonbra/javasteam/enums/EChatEntryType;

    .line 16
    new-instance v0, Lin/dragonbra/javasteam/enums/EChatEntryType;

    const-string v1, "Entered"

    const/4 v2, 0x5

    const/4 v4, 0x7

    invoke-direct {v0, v1, v2, v4}, Lin/dragonbra/javasteam/enums/EChatEntryType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/enums/EChatEntryType;->Entered:Lin/dragonbra/javasteam/enums/EChatEntryType;

    .line 18
    new-instance v0, Lin/dragonbra/javasteam/enums/EChatEntryType;

    const-string v1, "WasKicked"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v3, v2}, Lin/dragonbra/javasteam/enums/EChatEntryType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/enums/EChatEntryType;->WasKicked:Lin/dragonbra/javasteam/enums/EChatEntryType;

    .line 20
    new-instance v0, Lin/dragonbra/javasteam/enums/EChatEntryType;

    const-string v1, "WasBanned"

    const/16 v3, 0x9

    invoke-direct {v0, v1, v4, v3}, Lin/dragonbra/javasteam/enums/EChatEntryType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/enums/EChatEntryType;->WasBanned:Lin/dragonbra/javasteam/enums/EChatEntryType;

    .line 22
    new-instance v0, Lin/dragonbra/javasteam/enums/EChatEntryType;

    const-string v1, "Disconnected"

    const/16 v4, 0xa

    invoke-direct {v0, v1, v2, v4}, Lin/dragonbra/javasteam/enums/EChatEntryType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/enums/EChatEntryType;->Disconnected:Lin/dragonbra/javasteam/enums/EChatEntryType;

    .line 24
    new-instance v0, Lin/dragonbra/javasteam/enums/EChatEntryType;

    const-string v1, "HistoricalChat"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v3, v2}, Lin/dragonbra/javasteam/enums/EChatEntryType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/enums/EChatEntryType;->HistoricalChat:Lin/dragonbra/javasteam/enums/EChatEntryType;

    .line 26
    new-instance v0, Lin/dragonbra/javasteam/enums/EChatEntryType;

    const-string v1, "Reserved1"

    const/16 v3, 0xc

    invoke-direct {v0, v1, v4, v3}, Lin/dragonbra/javasteam/enums/EChatEntryType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/enums/EChatEntryType;->Reserved1:Lin/dragonbra/javasteam/enums/EChatEntryType;

    .line 28
    new-instance v0, Lin/dragonbra/javasteam/enums/EChatEntryType;

    const-string v1, "Reserved2"

    const/16 v4, 0xd

    invoke-direct {v0, v1, v2, v4}, Lin/dragonbra/javasteam/enums/EChatEntryType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/enums/EChatEntryType;->Reserved2:Lin/dragonbra/javasteam/enums/EChatEntryType;

    .line 30
    new-instance v0, Lin/dragonbra/javasteam/enums/EChatEntryType;

    const-string v1, "LinkBlocked"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v3, v2}, Lin/dragonbra/javasteam/enums/EChatEntryType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/enums/EChatEntryType;->LinkBlocked:Lin/dragonbra/javasteam/enums/EChatEntryType;

    .line 4
    invoke-static {}, Lin/dragonbra/javasteam/enums/EChatEntryType;->$values()[Lin/dragonbra/javasteam/enums/EChatEntryType;

    move-result-object v0

    sput-object v0, Lin/dragonbra/javasteam/enums/EChatEntryType;->$VALUES:[Lin/dragonbra/javasteam/enums/EChatEntryType;

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

    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 37
    iput p3, p0, Lin/dragonbra/javasteam/enums/EChatEntryType;->code:I

    return-void
.end method

.method public static from(I)Lin/dragonbra/javasteam/enums/EChatEntryType;
    .registers 6

    .line 45
    invoke-static {}, Lin/dragonbra/javasteam/enums/EChatEntryType;->values()[Lin/dragonbra/javasteam/enums/EChatEntryType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_12

    aget-object v3, v0, v2

    .line 46
    iget v4, v3, Lin/dragonbra/javasteam/enums/EChatEntryType;->code:I

    if-ne v4, p0, :cond_f

    return-object v3

    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_12
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lin/dragonbra/javasteam/enums/EChatEntryType;
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
    const-class v0, Lin/dragonbra/javasteam/enums/EChatEntryType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lin/dragonbra/javasteam/enums/EChatEntryType;

    return-object p0
.end method

.method public static values()[Lin/dragonbra/javasteam/enums/EChatEntryType;
    .registers 1

    .line 4
    sget-object v0, Lin/dragonbra/javasteam/enums/EChatEntryType;->$VALUES:[Lin/dragonbra/javasteam/enums/EChatEntryType;

    invoke-virtual {v0}, [Lin/dragonbra/javasteam/enums/EChatEntryType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lin/dragonbra/javasteam/enums/EChatEntryType;

    return-object v0
.end method


# virtual methods
.method public code()I
    .registers 1

    .line 41
    iget p0, p0, Lin/dragonbra/javasteam/enums/EChatEntryType;->code:I

    return p0
.end method
