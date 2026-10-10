###### Class in.dragonbra.javasteam.enums.EUdpPacketType (in.dragonbra.javasteam.enums.EUdpPacketType)
.class public final enum Lin/dragonbra/javasteam/enums/EUdpPacketType;
.super Ljava/lang/Enum;
.source "EUdpPacketType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lin/dragonbra/javasteam/enums/EUdpPacketType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lin/dragonbra/javasteam/enums/EUdpPacketType;

.field public static final enum Accept:Lin/dragonbra/javasteam/enums/EUdpPacketType;

.field public static final enum Challenge:Lin/dragonbra/javasteam/enums/EUdpPacketType;

.field public static final enum ChallengeReq:Lin/dragonbra/javasteam/enums/EUdpPacketType;

.field public static final enum Connect:Lin/dragonbra/javasteam/enums/EUdpPacketType;

.field public static final enum Data:Lin/dragonbra/javasteam/enums/EUdpPacketType;

.field public static final enum Datagram:Lin/dragonbra/javasteam/enums/EUdpPacketType;

.field public static final enum Disconnect:Lin/dragonbra/javasteam/enums/EUdpPacketType;

.field public static final enum Invalid:Lin/dragonbra/javasteam/enums/EUdpPacketType;

.field public static final enum Max:Lin/dragonbra/javasteam/enums/EUdpPacketType;


# instance fields
.field private final code:B


# direct methods
.method private static synthetic $values()[Lin/dragonbra/javasteam/enums/EUdpPacketType;
    .registers 9

    .line 4
    sget-object v0, Lin/dragonbra/javasteam/enums/EUdpPacketType;->Invalid:Lin/dragonbra/javasteam/enums/EUdpPacketType;

    sget-object v1, Lin/dragonbra/javasteam/enums/EUdpPacketType;->ChallengeReq:Lin/dragonbra/javasteam/enums/EUdpPacketType;

    sget-object v2, Lin/dragonbra/javasteam/enums/EUdpPacketType;->Challenge:Lin/dragonbra/javasteam/enums/EUdpPacketType;

    sget-object v3, Lin/dragonbra/javasteam/enums/EUdpPacketType;->Connect:Lin/dragonbra/javasteam/enums/EUdpPacketType;

    sget-object v4, Lin/dragonbra/javasteam/enums/EUdpPacketType;->Accept:Lin/dragonbra/javasteam/enums/EUdpPacketType;

    sget-object v5, Lin/dragonbra/javasteam/enums/EUdpPacketType;->Disconnect:Lin/dragonbra/javasteam/enums/EUdpPacketType;

    sget-object v6, Lin/dragonbra/javasteam/enums/EUdpPacketType;->Data:Lin/dragonbra/javasteam/enums/EUdpPacketType;

    sget-object v7, Lin/dragonbra/javasteam/enums/EUdpPacketType;->Datagram:Lin/dragonbra/javasteam/enums/EUdpPacketType;

    sget-object v8, Lin/dragonbra/javasteam/enums/EUdpPacketType;->Max:Lin/dragonbra/javasteam/enums/EUdpPacketType;

    filled-new-array/range {v0 .. v8}, [Lin/dragonbra/javasteam/enums/EUdpPacketType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 6
    new-instance v0, Lin/dragonbra/javasteam/enums/EUdpPacketType;

    const-string v1, "Invalid"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lin/dragonbra/javasteam/enums/EUdpPacketType;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lin/dragonbra/javasteam/enums/EUdpPacketType;->Invalid:Lin/dragonbra/javasteam/enums/EUdpPacketType;

    .line 8
    new-instance v0, Lin/dragonbra/javasteam/enums/EUdpPacketType;

    const-string v1, "ChallengeReq"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lin/dragonbra/javasteam/enums/EUdpPacketType;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lin/dragonbra/javasteam/enums/EUdpPacketType;->ChallengeReq:Lin/dragonbra/javasteam/enums/EUdpPacketType;

    .line 10
    new-instance v0, Lin/dragonbra/javasteam/enums/EUdpPacketType;

    const-string v1, "Challenge"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lin/dragonbra/javasteam/enums/EUdpPacketType;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lin/dragonbra/javasteam/enums/EUdpPacketType;->Challenge:Lin/dragonbra/javasteam/enums/EUdpPacketType;

    .line 12
    new-instance v0, Lin/dragonbra/javasteam/enums/EUdpPacketType;

    const-string v1, "Connect"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lin/dragonbra/javasteam/enums/EUdpPacketType;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lin/dragonbra/javasteam/enums/EUdpPacketType;->Connect:Lin/dragonbra/javasteam/enums/EUdpPacketType;

    .line 14
    new-instance v0, Lin/dragonbra/javasteam/enums/EUdpPacketType;

    const-string v1, "Accept"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v2}, Lin/dragonbra/javasteam/enums/EUdpPacketType;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lin/dragonbra/javasteam/enums/EUdpPacketType;->Accept:Lin/dragonbra/javasteam/enums/EUdpPacketType;

    .line 16
    new-instance v0, Lin/dragonbra/javasteam/enums/EUdpPacketType;

    const-string v1, "Disconnect"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v2}, Lin/dragonbra/javasteam/enums/EUdpPacketType;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lin/dragonbra/javasteam/enums/EUdpPacketType;->Disconnect:Lin/dragonbra/javasteam/enums/EUdpPacketType;

    .line 18
    new-instance v0, Lin/dragonbra/javasteam/enums/EUdpPacketType;

    const-string v1, "Data"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v2}, Lin/dragonbra/javasteam/enums/EUdpPacketType;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lin/dragonbra/javasteam/enums/EUdpPacketType;->Data:Lin/dragonbra/javasteam/enums/EUdpPacketType;

    .line 20
    new-instance v0, Lin/dragonbra/javasteam/enums/EUdpPacketType;

    const-string v1, "Datagram"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v2}, Lin/dragonbra/javasteam/enums/EUdpPacketType;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lin/dragonbra/javasteam/enums/EUdpPacketType;->Datagram:Lin/dragonbra/javasteam/enums/EUdpPacketType;

    .line 22
    new-instance v0, Lin/dragonbra/javasteam/enums/EUdpPacketType;

    const-string v1, "Max"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2, v2}, Lin/dragonbra/javasteam/enums/EUdpPacketType;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lin/dragonbra/javasteam/enums/EUdpPacketType;->Max:Lin/dragonbra/javasteam/enums/EUdpPacketType;

    .line 4
    invoke-static {}, Lin/dragonbra/javasteam/enums/EUdpPacketType;->$values()[Lin/dragonbra/javasteam/enums/EUdpPacketType;

    move-result-object v0

    sput-object v0, Lin/dragonbra/javasteam/enums/EUdpPacketType;->$VALUES:[Lin/dragonbra/javasteam/enums/EUdpPacketType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IB)V
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
            "(B)V"
        }
    .end annotation

    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 29
    iput-byte p3, p0, Lin/dragonbra/javasteam/enums/EUdpPacketType;->code:B

    return-void
.end method

.method public static from(B)Lin/dragonbra/javasteam/enums/EUdpPacketType;
    .registers 6

    .line 37
    invoke-static {}, Lin/dragonbra/javasteam/enums/EUdpPacketType;->values()[Lin/dragonbra/javasteam/enums/EUdpPacketType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_12

    aget-object v3, v0, v2

    .line 38
    iget-byte v4, v3, Lin/dragonbra/javasteam/enums/EUdpPacketType;->code:B

    if-ne v4, p0, :cond_f

    return-object v3

    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_12
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lin/dragonbra/javasteam/enums/EUdpPacketType;
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
    const-class v0, Lin/dragonbra/javasteam/enums/EUdpPacketType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lin/dragonbra/javasteam/enums/EUdpPacketType;

    return-object p0
.end method

.method public static values()[Lin/dragonbra/javasteam/enums/EUdpPacketType;
    .registers 1

    .line 4
    sget-object v0, Lin/dragonbra/javasteam/enums/EUdpPacketType;->$VALUES:[Lin/dragonbra/javasteam/enums/EUdpPacketType;

    invoke-virtual {v0}, [Lin/dragonbra/javasteam/enums/EUdpPacketType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lin/dragonbra/javasteam/enums/EUdpPacketType;

    return-object v0
.end method


# virtual methods
.method public code()B
    .registers 1

    .line 33
    iget-byte p0, p0, Lin/dragonbra/javasteam/enums/EUdpPacketType;->code:B

    return p0
.end method
