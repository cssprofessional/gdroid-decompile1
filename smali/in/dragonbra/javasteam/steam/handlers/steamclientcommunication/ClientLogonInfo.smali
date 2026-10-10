###### Class in.dragonbra.javasteam.steam.handlers.steamclientcommunication.ClientLogonInfo (in.dragonbra.javasteam.steam.handlers.steamclientcommunication.ClientLogonInfo)
.class public final Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientLogonInfo;
.super Ljava/lang/Object;
.source "ClientLogonInfo.kt"


# instance fields
.field private final machineName:Ljava/lang/String;

.field private final os:Ljava/lang/String;

.field private final protocolVersion:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .registers 5

    const-string v0, "os"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "machineName"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientLogonInfo;->protocolVersion:I

    .line 11
    iput-object p2, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientLogonInfo;->os:Ljava/lang/String;

    .line 12
    iput-object p3, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientLogonInfo;->machineName:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientLogonInfo;ILjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientLogonInfo;
    .registers 6

    .line 0
    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_6

    iget p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientLogonInfo;->protocolVersion:I

    :cond_6
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_c

    iget-object p2, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientLogonInfo;->os:Ljava/lang/String;

    :cond_c
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_12

    iget-object p3, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientLogonInfo;->machineName:Ljava/lang/String;

    :cond_12
    invoke-virtual {p0, p1, p2, p3}, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientLogonInfo;->copy(ILjava/lang/String;Ljava/lang/String;)Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientLogonInfo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .registers 1

    .line 0
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientLogonInfo;->protocolVersion:I

    return p0
.end method

.method public final component2()Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientLogonInfo;->os:Ljava/lang/String;

    return-object p0
.end method

.method public final component3()Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientLogonInfo;->machineName:Ljava/lang/String;

    return-object p0
.end method

.method public final copy(ILjava/lang/String;Ljava/lang/String;)Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientLogonInfo;
    .registers 4

    .line 0
    const-string p0, "os"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "machineName"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientLogonInfo;

    invoke-direct {p0, p1, p2, p3}, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientLogonInfo;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientLogonInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientLogonInfo;

    iget v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientLogonInfo;->protocolVersion:I

    iget v3, p1, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientLogonInfo;->protocolVersion:I

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget-object v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientLogonInfo;->os:Ljava/lang/String;

    iget-object v3, p1, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientLogonInfo;->os:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    return v2

    :cond_1e
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientLogonInfo;->machineName:Ljava/lang/String;

    iget-object p1, p1, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientLogonInfo;->machineName:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_29

    return v2

    :cond_29
    return v0
.end method

.method public final getMachineName()Ljava/lang/String;
    .registers 1

    .line 12
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientLogonInfo;->machineName:Ljava/lang/String;

    return-object p0
.end method

.method public final getOs()Ljava/lang/String;
    .registers 1

    .line 11
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientLogonInfo;->os:Ljava/lang/String;

    return-object p0
.end method

.method public final getProtocolVersion()I
    .registers 1

    .line 10
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientLogonInfo;->protocolVersion:I

    return p0
.end method

.method public hashCode()I
    .registers 3

    .line 0
    iget v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientLogonInfo;->protocolVersion:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientLogonInfo;->os:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientLogonInfo;->machineName:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 0
    iget v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientLogonInfo;->protocolVersion:I

    iget-object v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientLogonInfo;->os:Ljava/lang/String;

    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientLogonInfo;->machineName:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ClientLogonInfo(protocolVersion="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", os="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", machineName="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
