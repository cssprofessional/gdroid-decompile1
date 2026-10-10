###### Class in.dragonbra.javasteam.enums.EChatAction (in.dragonbra.javasteam.enums.EChatAction)
.class public final enum Lin/dragonbra/javasteam/enums/EChatAction;
.super Ljava/lang/Enum;
.source "EChatAction.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lin/dragonbra/javasteam/enums/EChatAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lin/dragonbra/javasteam/enums/EChatAction;

.field public static final enum Ban:Lin/dragonbra/javasteam/enums/EChatAction;

.field public static final enum CloseChat:Lin/dragonbra/javasteam/enums/EChatAction;

.field public static final enum EndVoiceSpeak:Lin/dragonbra/javasteam/enums/EChatAction;

.field public static final enum InviteChat:Lin/dragonbra/javasteam/enums/EChatAction;

.field public static final enum Kick:Lin/dragonbra/javasteam/enums/EChatAction;

.field public static final enum LockChat:Lin/dragonbra/javasteam/enums/EChatAction;

.field public static final enum SetInvisibleToFriends:Lin/dragonbra/javasteam/enums/EChatAction;

.field public static final enum SetJoinable:Lin/dragonbra/javasteam/enums/EChatAction;

.field public static final enum SetModerated:Lin/dragonbra/javasteam/enums/EChatAction;

.field public static final enum SetOwner:Lin/dragonbra/javasteam/enums/EChatAction;

.field public static final enum SetUnjoinable:Lin/dragonbra/javasteam/enums/EChatAction;

.field public static final enum SetUnmoderated:Lin/dragonbra/javasteam/enums/EChatAction;

.field public static final enum SetVisibleToFriends:Lin/dragonbra/javasteam/enums/EChatAction;

.field public static final enum StartVoiceSpeak:Lin/dragonbra/javasteam/enums/EChatAction;

.field public static final enum UnBan:Lin/dragonbra/javasteam/enums/EChatAction;

.field public static final enum UnlockChat:Lin/dragonbra/javasteam/enums/EChatAction;


# instance fields
.field private final code:I


# direct methods
.method private static synthetic $values()[Lin/dragonbra/javasteam/enums/EChatAction;
    .registers 16

    .line 4
    sget-object v0, Lin/dragonbra/javasteam/enums/EChatAction;->InviteChat:Lin/dragonbra/javasteam/enums/EChatAction;

    sget-object v1, Lin/dragonbra/javasteam/enums/EChatAction;->Kick:Lin/dragonbra/javasteam/enums/EChatAction;

    sget-object v2, Lin/dragonbra/javasteam/enums/EChatAction;->Ban:Lin/dragonbra/javasteam/enums/EChatAction;

    sget-object v3, Lin/dragonbra/javasteam/enums/EChatAction;->UnBan:Lin/dragonbra/javasteam/enums/EChatAction;

    sget-object v4, Lin/dragonbra/javasteam/enums/EChatAction;->StartVoiceSpeak:Lin/dragonbra/javasteam/enums/EChatAction;

    sget-object v5, Lin/dragonbra/javasteam/enums/EChatAction;->EndVoiceSpeak:Lin/dragonbra/javasteam/enums/EChatAction;

    sget-object v6, Lin/dragonbra/javasteam/enums/EChatAction;->LockChat:Lin/dragonbra/javasteam/enums/EChatAction;

    sget-object v7, Lin/dragonbra/javasteam/enums/EChatAction;->UnlockChat:Lin/dragonbra/javasteam/enums/EChatAction;

    sget-object v8, Lin/dragonbra/javasteam/enums/EChatAction;->CloseChat:Lin/dragonbra/javasteam/enums/EChatAction;

    sget-object v9, Lin/dragonbra/javasteam/enums/EChatAction;->SetJoinable:Lin/dragonbra/javasteam/enums/EChatAction;

    sget-object v10, Lin/dragonbra/javasteam/enums/EChatAction;->SetUnjoinable:Lin/dragonbra/javasteam/enums/EChatAction;

    sget-object v11, Lin/dragonbra/javasteam/enums/EChatAction;->SetOwner:Lin/dragonbra/javasteam/enums/EChatAction;

    sget-object v12, Lin/dragonbra/javasteam/enums/EChatAction;->SetInvisibleToFriends:Lin/dragonbra/javasteam/enums/EChatAction;

    sget-object v13, Lin/dragonbra/javasteam/enums/EChatAction;->SetVisibleToFriends:Lin/dragonbra/javasteam/enums/EChatAction;

    sget-object v14, Lin/dragonbra/javasteam/enums/EChatAction;->SetModerated:Lin/dragonbra/javasteam/enums/EChatAction;

    sget-object v15, Lin/dragonbra/javasteam/enums/EChatAction;->SetUnmoderated:Lin/dragonbra/javasteam/enums/EChatAction;

    filled-new-array/range {v0 .. v15}, [Lin/dragonbra/javasteam/enums/EChatAction;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 4

    .line 6
    new-instance v0, Lin/dragonbra/javasteam/enums/EChatAction;

    const-string v1, "InviteChat"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lin/dragonbra/javasteam/enums/EChatAction;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/enums/EChatAction;->InviteChat:Lin/dragonbra/javasteam/enums/EChatAction;

    .line 8
    new-instance v0, Lin/dragonbra/javasteam/enums/EChatAction;

    const-string v1, "Kick"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v3, v2}, Lin/dragonbra/javasteam/enums/EChatAction;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/enums/EChatAction;->Kick:Lin/dragonbra/javasteam/enums/EChatAction;

    .line 10
    new-instance v0, Lin/dragonbra/javasteam/enums/EChatAction;

    const-string v1, "Ban"

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lin/dragonbra/javasteam/enums/EChatAction;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/enums/EChatAction;->Ban:Lin/dragonbra/javasteam/enums/EChatAction;

    .line 12
    new-instance v0, Lin/dragonbra/javasteam/enums/EChatAction;

    const-string v1, "UnBan"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v3, v2}, Lin/dragonbra/javasteam/enums/EChatAction;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/enums/EChatAction;->UnBan:Lin/dragonbra/javasteam/enums/EChatAction;

    .line 14
    new-instance v0, Lin/dragonbra/javasteam/enums/EChatAction;

    const-string v1, "StartVoiceSpeak"

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lin/dragonbra/javasteam/enums/EChatAction;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/enums/EChatAction;->StartVoiceSpeak:Lin/dragonbra/javasteam/enums/EChatAction;

    .line 16
    new-instance v0, Lin/dragonbra/javasteam/enums/EChatAction;

    const-string v1, "EndVoiceSpeak"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v3, v2}, Lin/dragonbra/javasteam/enums/EChatAction;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/enums/EChatAction;->EndVoiceSpeak:Lin/dragonbra/javasteam/enums/EChatAction;

    .line 18
    new-instance v0, Lin/dragonbra/javasteam/enums/EChatAction;

    const-string v1, "LockChat"

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lin/dragonbra/javasteam/enums/EChatAction;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/enums/EChatAction;->LockChat:Lin/dragonbra/javasteam/enums/EChatAction;

    .line 20
    new-instance v0, Lin/dragonbra/javasteam/enums/EChatAction;

    const-string v1, "UnlockChat"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v3, v2}, Lin/dragonbra/javasteam/enums/EChatAction;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/enums/EChatAction;->UnlockChat:Lin/dragonbra/javasteam/enums/EChatAction;

    .line 22
    new-instance v0, Lin/dragonbra/javasteam/enums/EChatAction;

    const-string v1, "CloseChat"

    const/16 v3, 0x9

    invoke-direct {v0, v1, v2, v3}, Lin/dragonbra/javasteam/enums/EChatAction;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/enums/EChatAction;->CloseChat:Lin/dragonbra/javasteam/enums/EChatAction;

    .line 24
    new-instance v0, Lin/dragonbra/javasteam/enums/EChatAction;

    const-string v1, "SetJoinable"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v3, v2}, Lin/dragonbra/javasteam/enums/EChatAction;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/enums/EChatAction;->SetJoinable:Lin/dragonbra/javasteam/enums/EChatAction;

    .line 26
    new-instance v0, Lin/dragonbra/javasteam/enums/EChatAction;

    const-string v1, "SetUnjoinable"

    const/16 v3, 0xb

    invoke-direct {v0, v1, v2, v3}, Lin/dragonbra/javasteam/enums/EChatAction;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/enums/EChatAction;->SetUnjoinable:Lin/dragonbra/javasteam/enums/EChatAction;

    .line 28
    new-instance v0, Lin/dragonbra/javasteam/enums/EChatAction;

    const-string v1, "SetOwner"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v3, v2}, Lin/dragonbra/javasteam/enums/EChatAction;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/enums/EChatAction;->SetOwner:Lin/dragonbra/javasteam/enums/EChatAction;

    .line 30
    new-instance v0, Lin/dragonbra/javasteam/enums/EChatAction;

    const-string v1, "SetInvisibleToFriends"

    const/16 v3, 0xd

    invoke-direct {v0, v1, v2, v3}, Lin/dragonbra/javasteam/enums/EChatAction;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/enums/EChatAction;->SetInvisibleToFriends:Lin/dragonbra/javasteam/enums/EChatAction;

    .line 32
    new-instance v0, Lin/dragonbra/javasteam/enums/EChatAction;

    const-string v1, "SetVisibleToFriends"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v3, v2}, Lin/dragonbra/javasteam/enums/EChatAction;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/enums/EChatAction;->SetVisibleToFriends:Lin/dragonbra/javasteam/enums/EChatAction;

    .line 34
    new-instance v0, Lin/dragonbra/javasteam/enums/EChatAction;

    const-string v1, "SetModerated"

    const/16 v3, 0xf

    invoke-direct {v0, v1, v2, v3}, Lin/dragonbra/javasteam/enums/EChatAction;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/enums/EChatAction;->SetModerated:Lin/dragonbra/javasteam/enums/EChatAction;

    .line 36
    new-instance v0, Lin/dragonbra/javasteam/enums/EChatAction;

    const-string v1, "SetUnmoderated"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v3, v2}, Lin/dragonbra/javasteam/enums/EChatAction;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lin/dragonbra/javasteam/enums/EChatAction;->SetUnmoderated:Lin/dragonbra/javasteam/enums/EChatAction;

    .line 4
    invoke-static {}, Lin/dragonbra/javasteam/enums/EChatAction;->$values()[Lin/dragonbra/javasteam/enums/EChatAction;

    move-result-object v0

    sput-object v0, Lin/dragonbra/javasteam/enums/EChatAction;->$VALUES:[Lin/dragonbra/javasteam/enums/EChatAction;

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

    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 43
    iput p3, p0, Lin/dragonbra/javasteam/enums/EChatAction;->code:I

    return-void
.end method

.method public static from(I)Lin/dragonbra/javasteam/enums/EChatAction;
    .registers 6

    .line 51
    invoke-static {}, Lin/dragonbra/javasteam/enums/EChatAction;->values()[Lin/dragonbra/javasteam/enums/EChatAction;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_12

    aget-object v3, v0, v2

    .line 52
    iget v4, v3, Lin/dragonbra/javasteam/enums/EChatAction;->code:I

    if-ne v4, p0, :cond_f

    return-object v3

    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_12
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lin/dragonbra/javasteam/enums/EChatAction;
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
    const-class v0, Lin/dragonbra/javasteam/enums/EChatAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lin/dragonbra/javasteam/enums/EChatAction;

    return-object p0
.end method

.method public static values()[Lin/dragonbra/javasteam/enums/EChatAction;
    .registers 1

    .line 4
    sget-object v0, Lin/dragonbra/javasteam/enums/EChatAction;->$VALUES:[Lin/dragonbra/javasteam/enums/EChatAction;

    invoke-virtual {v0}, [Lin/dragonbra/javasteam/enums/EChatAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lin/dragonbra/javasteam/enums/EChatAction;

    return-object v0
.end method


# virtual methods
.method public code()I
    .registers 1

    .line 47
    iget p0, p0, Lin/dragonbra/javasteam/enums/EChatAction;->code:I

    return p0
.end method
