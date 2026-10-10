###### Class in.dragonbra.javasteam.steam.handlers.steamclientcommunication.ClientInfo (in.dragonbra.javasteam.steam.handlers.steamclientcommunication.ClientInfo)
.class public final Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientInfo;
.super Ljava/lang/Object;
.source "ClientInfo.kt"


# instance fields
.field private final bytesAvailable:J

.field private final clientCommVersion:I

.field private final ipPrivate:Ljava/lang/String;

.field private final ipPublic:Ljava/lang/String;

.field private final localUsers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final machineName:Ljava/lang/String;

.field private final os:Ljava/lang/String;

.field private final packageVersion:I

.field private final protocolVersion:I

.field private final runningGames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/RunningGames;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/List;IILjava/util/List;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/List<",
            "Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/RunningGames;",
            ">;II",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "os"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "machineName"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ipPublic"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ipPrivate"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "runningGames"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "localUsers"

    invoke-static {p11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientInfo;->packageVersion:I

    .line 21
    iput-object p2, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientInfo;->os:Ljava/lang/String;

    .line 22
    iput-object p3, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientInfo;->machineName:Ljava/lang/String;

    .line 23
    iput-object p4, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientInfo;->ipPublic:Ljava/lang/String;

    .line 24
    iput-object p5, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientInfo;->ipPrivate:Ljava/lang/String;

    .line 25
    iput-wide p6, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientInfo;->bytesAvailable:J

    .line 26
    iput-object p8, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientInfo;->runningGames:Ljava/util/List;

    .line 27
    iput p9, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientInfo;->protocolVersion:I

    .line 28
    iput p10, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientInfo;->clientCommVersion:I

    .line 29
    iput-object p11, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientInfo;->localUsers:Ljava/util/List;

    return-void
.end method

.method public static synthetic copy$default(Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientInfo;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/List;IILjava/util/List;ILjava/lang/Object;)Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientInfo;
    .registers 26

    .line 0
    move-object v0, p0

    move/from16 v1, p12

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_a

    iget v2, v0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientInfo;->packageVersion:I

    goto :goto_b

    :cond_a
    move v2, p1

    :goto_b
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_12

    iget-object v3, v0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientInfo;->os:Ljava/lang/String;

    goto :goto_13

    :cond_12
    move-object v3, p2

    :goto_13
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_1a

    iget-object v4, v0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientInfo;->machineName:Ljava/lang/String;

    goto :goto_1b

    :cond_1a
    move-object v4, p3

    :goto_1b
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_22

    iget-object v5, v0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientInfo;->ipPublic:Ljava/lang/String;

    goto :goto_24

    :cond_22
    move-object/from16 v5, p4

    :goto_24
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_2b

    iget-object v6, v0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientInfo;->ipPrivate:Ljava/lang/String;

    goto :goto_2d

    :cond_2b
    move-object/from16 v6, p5

    :goto_2d
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_34

    iget-wide v7, v0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientInfo;->bytesAvailable:J

    goto :goto_36

    :cond_34
    move-wide/from16 v7, p6

    :goto_36
    and-int/lit8 v9, v1, 0x40

    if-eqz v9, :cond_3d

    iget-object v9, v0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientInfo;->runningGames:Ljava/util/List;

    goto :goto_3f

    :cond_3d
    move-object/from16 v9, p8

    :goto_3f
    and-int/lit16 v10, v1, 0x80

    if-eqz v10, :cond_46

    iget v10, v0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientInfo;->protocolVersion:I

    goto :goto_48

    :cond_46
    move/from16 v10, p9

    :goto_48
    and-int/lit16 v11, v1, 0x100

    if-eqz v11, :cond_4f

    iget v11, v0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientInfo;->clientCommVersion:I

    goto :goto_51

    :cond_4f
    move/from16 v11, p10

    :goto_51
    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_58

    iget-object v1, v0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientInfo;->localUsers:Ljava/util/List;

    goto :goto_5a

    :cond_58
    move-object/from16 v1, p11

    :goto_5a
    move p1, v2

    move-object p2, v3

    move-object p3, v4

    move-object/from16 p4, v5

    move-object/from16 p5, v6

    move-wide/from16 p6, v7

    move-object/from16 p8, v9

    move/from16 p9, v10

    move/from16 p10, v11

    move-object/from16 p11, v1

    invoke-virtual/range {p0 .. p11}, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientInfo;->copy(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/List;IILjava/util/List;)Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientInfo;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()I
    .registers 1

    .line 0
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientInfo;->packageVersion:I

    return p0
.end method

.method public final component10()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 0
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientInfo;->localUsers:Ljava/util/List;

    return-object p0
.end method

.method public final component2()Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientInfo;->os:Ljava/lang/String;

    return-object p0
.end method

.method public final component3()Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientInfo;->machineName:Ljava/lang/String;

    return-object p0
.end method

.method public final component4()Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientInfo;->ipPublic:Ljava/lang/String;

    return-object p0
.end method

.method public final component5()Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientInfo;->ipPrivate:Ljava/lang/String;

    return-object p0
.end method

.method public final component6()J
    .registers 3

    .line 0
    iget-wide v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientInfo;->bytesAvailable:J

    return-wide v0
.end method

.method public final component7()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/RunningGames;",
            ">;"
        }
    .end annotation

    .line 0
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientInfo;->runningGames:Ljava/util/List;

    return-object p0
.end method

.method public final component8()I
    .registers 1

    .line 0
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientInfo;->protocolVersion:I

    return p0
.end method

.method public final component9()I
    .registers 1

    .line 0
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientInfo;->clientCommVersion:I

    return p0
.end method

.method public final copy(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/List;IILjava/util/List;)Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientInfo;
    .registers 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/List<",
            "Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/RunningGames;",
            ">;II",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientInfo;"
        }
    .end annotation

    .line 0
    const-string v0, "os"

    move-object v3, p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "machineName"

    move-object/from16 v4, p3

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ipPublic"

    move-object/from16 v5, p4

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ipPrivate"

    move-object/from16 v6, p5

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "runningGames"

    move-object/from16 v9, p8

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "localUsers"

    move-object/from16 v12, p11

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientInfo;

    move-object v1, v0

    move v2, p1

    move-wide/from16 v7, p6

    move/from16 v10, p9

    move/from16 v11, p10

    invoke-direct/range {v1 .. v12}, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/List;IILjava/util/List;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientInfo;

    iget v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientInfo;->packageVersion:I

    iget v3, p1, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientInfo;->packageVersion:I

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget-object v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientInfo;->os:Ljava/lang/String;

    iget-object v3, p1, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientInfo;->os:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    return v2

    :cond_1e
    iget-object v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientInfo;->machineName:Ljava/lang/String;

    iget-object v3, p1, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientInfo;->machineName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    return v2

    :cond_29
    iget-object v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientInfo;->ipPublic:Ljava/lang/String;

    iget-object v3, p1, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientInfo;->ipPublic:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_34

    return v2

    :cond_34
    iget-object v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientInfo;->ipPrivate:Ljava/lang/String;

    iget-object v3, p1, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientInfo;->ipPrivate:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3f

    return v2

    :cond_3f
    iget-wide v3, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientInfo;->bytesAvailable:J

    iget-wide v5, p1, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientInfo;->bytesAvailable:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_48

    return v2

    :cond_48
    iget-object v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientInfo;->runningGames:Ljava/util/List;

    iget-object v3, p1, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientInfo;->runningGames:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_53

    return v2

    :cond_53
    iget v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientInfo;->protocolVersion:I

    iget v3, p1, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientInfo;->protocolVersion:I

    if-eq v1, v3, :cond_5a

    return v2

    :cond_5a
    iget v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientInfo;->clientCommVersion:I

    iget v3, p1, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientInfo;->clientCommVersion:I

    if-eq v1, v3, :cond_61

    return v2

    :cond_61
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientInfo;->localUsers:Ljava/util/List;

    iget-object p1, p1, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientInfo;->localUsers:Ljava/util/List;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6c

    return v2

    :cond_6c
    return v0
.end method

.method public final getBytesAvailable()J
    .registers 3

    .line 25
    iget-wide v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientInfo;->bytesAvailable:J

    return-wide v0
.end method

.method public final getClientCommVersion()I
    .registers 1

    .line 28
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientInfo;->clientCommVersion:I

    return p0
.end method

.method public final getIpPrivate()Ljava/lang/String;
    .registers 1

    .line 24
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientInfo;->ipPrivate:Ljava/lang/String;

    return-object p0
.end method

.method public final getIpPublic()Ljava/lang/String;
    .registers 1

    .line 23
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientInfo;->ipPublic:Ljava/lang/String;

    return-object p0
.end method

.method public final getLocalUsers()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 29
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientInfo;->localUsers:Ljava/util/List;

    return-object p0
.end method

.method public final getMachineName()Ljava/lang/String;
    .registers 1

    .line 22
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientInfo;->machineName:Ljava/lang/String;

    return-object p0
.end method

.method public final getOs()Ljava/lang/String;
    .registers 1

    .line 21
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientInfo;->os:Ljava/lang/String;

    return-object p0
.end method

.method public final getPackageVersion()I
    .registers 1

    .line 20
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientInfo;->packageVersion:I

    return p0
.end method

.method public final getProtocolVersion()I
    .registers 1

    .line 27
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientInfo;->protocolVersion:I

    return p0
.end method

.method public final getRunningGames()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/RunningGames;",
            ">;"
        }
    .end annotation

    .line 26
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientInfo;->runningGames:Ljava/util/List;

    return-object p0
.end method

.method public hashCode()I
    .registers 4

    .line 0
    iget v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientInfo;->packageVersion:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientInfo;->os:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientInfo;->machineName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientInfo;->ipPublic:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientInfo;->ipPrivate:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientInfo;->bytesAvailable:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientInfo;->runningGames:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientInfo;->protocolVersion:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientInfo;->clientCommVersion:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientInfo;->localUsers:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 13

    .line 33
    iget v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientInfo;->packageVersion:I

    .line 34
    iget-object v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientInfo;->os:Ljava/lang/String;

    .line 35
    iget-object v2, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientInfo;->machineName:Ljava/lang/String;

    .line 36
    iget-object v3, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientInfo;->ipPublic:Ljava/lang/String;

    .line 37
    iget-object v4, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientInfo;->ipPrivate:Ljava/lang/String;

    .line 38
    iget-wide v5, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientInfo;->bytesAvailable:J

    .line 39
    iget-object v7, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientInfo;->runningGames:Ljava/util/List;

    .line 40
    iget v8, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientInfo;->protocolVersion:I

    .line 41
    iget v9, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientInfo;->clientCommVersion:I

    .line 42
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/ClientInfo;->localUsers:Ljava/util/List;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\n            ClientInfo(\n                packageVersion="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",\n                os=\'"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\',\n                machineName=\'"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\',\n                ipPublic=\'"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\',\n                ipPrivate=\'"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\',\n                bytesAvailable="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ",\n                runningGames="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ",\n                protocolVersion="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",\n                clientCommVersion="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",\n                localUsers="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "\n            )\n    "

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 44
    invoke-static {p0}, Lkotlin/text/StringsKt__IndentKt;->trimIndent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
