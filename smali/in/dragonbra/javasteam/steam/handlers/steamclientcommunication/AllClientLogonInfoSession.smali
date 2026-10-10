###### Class in.dragonbra.javasteam.steam.handlers.steamclientcommunication.AllClientLogonInfoSession (in.dragonbra.javasteam.steam.handlers.steamclientcommunication.AllClientLogonInfoSession)
.class public final Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/AllClientLogonInfoSession;
.super Ljava/lang/Object;
.source "AllClientLogonInfoSession.kt"


# instance fields
.field private final clientInstanceId:J

.field private final deviceType:Lin/dragonbra/javasteam/enums/EGamingDeviceType;

.field private final machineName:Ljava/lang/String;

.field private final osName:Ljava/lang/String;

.field private final osType:Lin/dragonbra/javasteam/enums/EOSType;

.field private final protocolVersion:I

.field private final realm:Lin/dragonbra/javasteam/enums/ESteamRealm;


# direct methods
.method public constructor <init>(JILjava/lang/String;Ljava/lang/String;Lin/dragonbra/javasteam/enums/EOSType;Lin/dragonbra/javasteam/enums/EGamingDeviceType;Lin/dragonbra/javasteam/enums/ESteamRealm;)V
    .registers 10

    const-string v0, "osName"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "machineName"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "osType"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceType"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "realm"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-wide p1, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/AllClientLogonInfoSession;->clientInstanceId:J

    .line 21
    iput p3, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/AllClientLogonInfoSession;->protocolVersion:I

    .line 22
    iput-object p4, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/AllClientLogonInfoSession;->osName:Ljava/lang/String;

    .line 23
    iput-object p5, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/AllClientLogonInfoSession;->machineName:Ljava/lang/String;

    .line 24
    iput-object p6, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/AllClientLogonInfoSession;->osType:Lin/dragonbra/javasteam/enums/EOSType;

    .line 25
    iput-object p7, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/AllClientLogonInfoSession;->deviceType:Lin/dragonbra/javasteam/enums/EGamingDeviceType;

    .line 26
    iput-object p8, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/AllClientLogonInfoSession;->realm:Lin/dragonbra/javasteam/enums/ESteamRealm;

    return-void
.end method

.method public static synthetic copy$default(Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/AllClientLogonInfoSession;JILjava/lang/String;Ljava/lang/String;Lin/dragonbra/javasteam/enums/EOSType;Lin/dragonbra/javasteam/enums/EGamingDeviceType;Lin/dragonbra/javasteam/enums/ESteamRealm;ILjava/lang/Object;)Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/AllClientLogonInfoSession;
    .registers 20

    .line 0
    move-object v0, p0

    and-int/lit8 v1, p9, 0x1

    if-eqz v1, :cond_8

    iget-wide v1, v0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/AllClientLogonInfoSession;->clientInstanceId:J

    goto :goto_9

    :cond_8
    move-wide v1, p1

    :goto_9
    and-int/lit8 v3, p9, 0x2

    if-eqz v3, :cond_10

    iget v3, v0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/AllClientLogonInfoSession;->protocolVersion:I

    goto :goto_11

    :cond_10
    move v3, p3

    :goto_11
    and-int/lit8 v4, p9, 0x4

    if-eqz v4, :cond_18

    iget-object v4, v0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/AllClientLogonInfoSession;->osName:Ljava/lang/String;

    goto :goto_19

    :cond_18
    move-object v4, p4

    :goto_19
    and-int/lit8 v5, p9, 0x8

    if-eqz v5, :cond_20

    iget-object v5, v0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/AllClientLogonInfoSession;->machineName:Ljava/lang/String;

    goto :goto_21

    :cond_20
    move-object v5, p5

    :goto_21
    and-int/lit8 v6, p9, 0x10

    if-eqz v6, :cond_28

    iget-object v6, v0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/AllClientLogonInfoSession;->osType:Lin/dragonbra/javasteam/enums/EOSType;

    goto :goto_29

    :cond_28
    move-object v6, p6

    :goto_29
    and-int/lit8 v7, p9, 0x20

    if-eqz v7, :cond_30

    iget-object v7, v0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/AllClientLogonInfoSession;->deviceType:Lin/dragonbra/javasteam/enums/EGamingDeviceType;

    goto :goto_32

    :cond_30
    move-object/from16 v7, p7

    :goto_32
    and-int/lit8 v8, p9, 0x40

    if-eqz v8, :cond_39

    iget-object v8, v0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/AllClientLogonInfoSession;->realm:Lin/dragonbra/javasteam/enums/ESteamRealm;

    goto :goto_3b

    :cond_39
    move-object/from16 v8, p8

    :goto_3b
    move-wide p1, v1

    move p3, v3

    move-object p4, v4

    move-object p5, v5

    move-object p6, v6

    move-object/from16 p7, v7

    move-object/from16 p8, v8

    invoke-virtual/range {p0 .. p8}, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/AllClientLogonInfoSession;->copy(JILjava/lang/String;Ljava/lang/String;Lin/dragonbra/javasteam/enums/EOSType;Lin/dragonbra/javasteam/enums/EGamingDeviceType;Lin/dragonbra/javasteam/enums/ESteamRealm;)Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/AllClientLogonInfoSession;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()J
    .registers 3

    .line 0
    iget-wide v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/AllClientLogonInfoSession;->clientInstanceId:J

    return-wide v0
.end method

.method public final component2()I
    .registers 1

    .line 0
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/AllClientLogonInfoSession;->protocolVersion:I

    return p0
.end method

.method public final component3()Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/AllClientLogonInfoSession;->osName:Ljava/lang/String;

    return-object p0
.end method

.method public final component4()Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/AllClientLogonInfoSession;->machineName:Ljava/lang/String;

    return-object p0
.end method

.method public final component5()Lin/dragonbra/javasteam/enums/EOSType;
    .registers 1

    .line 0
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/AllClientLogonInfoSession;->osType:Lin/dragonbra/javasteam/enums/EOSType;

    return-object p0
.end method

.method public final component6()Lin/dragonbra/javasteam/enums/EGamingDeviceType;
    .registers 1

    .line 0
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/AllClientLogonInfoSession;->deviceType:Lin/dragonbra/javasteam/enums/EGamingDeviceType;

    return-object p0
.end method

.method public final component7()Lin/dragonbra/javasteam/enums/ESteamRealm;
    .registers 1

    .line 0
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/AllClientLogonInfoSession;->realm:Lin/dragonbra/javasteam/enums/ESteamRealm;

    return-object p0
.end method

.method public final copy(JILjava/lang/String;Ljava/lang/String;Lin/dragonbra/javasteam/enums/EOSType;Lin/dragonbra/javasteam/enums/EGamingDeviceType;Lin/dragonbra/javasteam/enums/ESteamRealm;)Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/AllClientLogonInfoSession;
    .registers 19

    .line 0
    const-string v0, "osName"

    move-object v5, p4

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "machineName"

    move-object v6, p5

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "osType"

    move-object/from16 v7, p6

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceType"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "realm"

    move-object/from16 v9, p8

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/AllClientLogonInfoSession;

    move-object v1, v0

    move-wide v2, p1

    move v4, p3

    invoke-direct/range {v1 .. v9}, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/AllClientLogonInfoSession;-><init>(JILjava/lang/String;Ljava/lang/String;Lin/dragonbra/javasteam/enums/EOSType;Lin/dragonbra/javasteam/enums/EGamingDeviceType;Lin/dragonbra/javasteam/enums/ESteamRealm;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/AllClientLogonInfoSession;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/AllClientLogonInfoSession;

    iget-wide v3, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/AllClientLogonInfoSession;->clientInstanceId:J

    iget-wide v5, p1, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/AllClientLogonInfoSession;->clientInstanceId:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_15

    return v2

    :cond_15
    iget v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/AllClientLogonInfoSession;->protocolVersion:I

    iget v3, p1, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/AllClientLogonInfoSession;->protocolVersion:I

    if-eq v1, v3, :cond_1c

    return v2

    :cond_1c
    iget-object v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/AllClientLogonInfoSession;->osName:Ljava/lang/String;

    iget-object v3, p1, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/AllClientLogonInfoSession;->osName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    return v2

    :cond_27
    iget-object v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/AllClientLogonInfoSession;->machineName:Ljava/lang/String;

    iget-object v3, p1, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/AllClientLogonInfoSession;->machineName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_32

    return v2

    :cond_32
    iget-object v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/AllClientLogonInfoSession;->osType:Lin/dragonbra/javasteam/enums/EOSType;

    iget-object v3, p1, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/AllClientLogonInfoSession;->osType:Lin/dragonbra/javasteam/enums/EOSType;

    if-eq v1, v3, :cond_39

    return v2

    :cond_39
    iget-object v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/AllClientLogonInfoSession;->deviceType:Lin/dragonbra/javasteam/enums/EGamingDeviceType;

    iget-object v3, p1, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/AllClientLogonInfoSession;->deviceType:Lin/dragonbra/javasteam/enums/EGamingDeviceType;

    if-eq v1, v3, :cond_40

    return v2

    :cond_40
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/AllClientLogonInfoSession;->realm:Lin/dragonbra/javasteam/enums/ESteamRealm;

    iget-object p1, p1, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/AllClientLogonInfoSession;->realm:Lin/dragonbra/javasteam/enums/ESteamRealm;

    if-eq p0, p1, :cond_47

    return v2

    :cond_47
    return v0
.end method

.method public final getClientInstanceId()J
    .registers 3

    .line 20
    iget-wide v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/AllClientLogonInfoSession;->clientInstanceId:J

    return-wide v0
.end method

.method public final getDeviceType()Lin/dragonbra/javasteam/enums/EGamingDeviceType;
    .registers 1

    .line 25
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/AllClientLogonInfoSession;->deviceType:Lin/dragonbra/javasteam/enums/EGamingDeviceType;

    return-object p0
.end method

.method public final getMachineName()Ljava/lang/String;
    .registers 1

    .line 23
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/AllClientLogonInfoSession;->machineName:Ljava/lang/String;

    return-object p0
.end method

.method public final getOsName()Ljava/lang/String;
    .registers 1

    .line 22
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/AllClientLogonInfoSession;->osName:Ljava/lang/String;

    return-object p0
.end method

.method public final getOsType()Lin/dragonbra/javasteam/enums/EOSType;
    .registers 1

    .line 24
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/AllClientLogonInfoSession;->osType:Lin/dragonbra/javasteam/enums/EOSType;

    return-object p0
.end method

.method public final getProtocolVersion()I
    .registers 1

    .line 21
    iget p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/AllClientLogonInfoSession;->protocolVersion:I

    return p0
.end method

.method public final getRealm()Lin/dragonbra/javasteam/enums/ESteamRealm;
    .registers 1

    .line 26
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/AllClientLogonInfoSession;->realm:Lin/dragonbra/javasteam/enums/ESteamRealm;

    return-object p0
.end method

.method public hashCode()I
    .registers 3

    .line 0
    iget-wide v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/AllClientLogonInfoSession;->clientInstanceId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/AllClientLogonInfoSession;->protocolVersion:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/AllClientLogonInfoSession;->osName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/AllClientLogonInfoSession;->machineName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/AllClientLogonInfoSession;->osType:Lin/dragonbra/javasteam/enums/EOSType;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/AllClientLogonInfoSession;->deviceType:Lin/dragonbra/javasteam/enums/EGamingDeviceType;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/AllClientLogonInfoSession;->realm:Lin/dragonbra/javasteam/enums/ESteamRealm;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 10

    .line 30
    iget-wide v0, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/AllClientLogonInfoSession;->clientInstanceId:J

    .line 31
    iget v2, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/AllClientLogonInfoSession;->protocolVersion:I

    .line 32
    iget-object v3, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/AllClientLogonInfoSession;->osName:Ljava/lang/String;

    .line 33
    iget-object v4, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/AllClientLogonInfoSession;->machineName:Ljava/lang/String;

    .line 34
    iget-object v5, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/AllClientLogonInfoSession;->osType:Lin/dragonbra/javasteam/enums/EOSType;

    .line 35
    iget-object v6, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/AllClientLogonInfoSession;->deviceType:Lin/dragonbra/javasteam/enums/EGamingDeviceType;

    .line 36
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/handlers/steamclientcommunication/AllClientLogonInfoSession;->realm:Lin/dragonbra/javasteam/enums/ESteamRealm;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\n           AllClientLogonInfoSession(\n                clientInstanceId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ",\n                protocolVersion="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",\n                osName=\'"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\',\n                machineName=\'"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\',\n                osType="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ",\n                deviceType="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ",\n                realm="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "\n           )\n    "

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 38
    invoke-static {p0}, Lkotlin/text/StringsKt__IndentKt;->trimIndent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
