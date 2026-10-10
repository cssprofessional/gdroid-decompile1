###### Class in.dragonbra.javasteam.steam.steamclient.configuration.SteamConfigurationState (in.dragonbra.javasteam.steam.steamclient.configuration.SteamConfigurationState)
.class public final Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationState;
.super Ljava/lang/Object;
.source "SteamConfigurationState.kt"


# instance fields
.field private cellID:I

.field private connectionFactory:Lin/dragonbra/javasteam/networking/steam3/IConnectionFactory;

.field private connectionTimeout:J

.field private defaultPersonaStateFlags:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lin/dragonbra/javasteam/enums/EClientPersonaStateFlag;",
            ">;"
        }
    .end annotation
.end field

.field private httpClient:Lokhttp3/OkHttpClient;

.field private isAllowDirectoryFetch:Z

.field private protocolTypes:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lin/dragonbra/javasteam/networking/steam3/ProtocolTypes;",
            ">;"
        }
    .end annotation
.end field

.field private serverListProvider:Lin/dragonbra/javasteam/steam/discovery/IServerListProvider;

.field private universe:Lin/dragonbra/javasteam/enums/EUniverse;

.field private webAPIBaseAddress:Ljava/lang/String;

.field private webAPIKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lin/dragonbra/javasteam/networking/steam3/IConnectionFactory;ZIJLjava/util/EnumSet;Lokhttp3/OkHttpClient;Ljava/util/EnumSet;Lin/dragonbra/javasteam/steam/discovery/IServerListProvider;Lin/dragonbra/javasteam/enums/EUniverse;Ljava/lang/String;Ljava/lang/String;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lin/dragonbra/javasteam/networking/steam3/IConnectionFactory;",
            "ZIJ",
            "Ljava/util/EnumSet<",
            "Lin/dragonbra/javasteam/enums/EClientPersonaStateFlag;",
            ">;",
            "Lokhttp3/OkHttpClient;",
            "Ljava/util/EnumSet<",
            "Lin/dragonbra/javasteam/networking/steam3/ProtocolTypes;",
            ">;",
            "Lin/dragonbra/javasteam/steam/discovery/IServerListProvider;",
            "Lin/dragonbra/javasteam/enums/EUniverse;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "connectionFactory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "defaultPersonaStateFlags"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "httpClient"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "protocolTypes"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serverListProvider"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "universe"

    invoke-static {p10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "webAPIBaseAddress"

    invoke-static {p11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationState;->connectionFactory:Lin/dragonbra/javasteam/networking/steam3/IConnectionFactory;

    .line 17
    iput-boolean p2, p0, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationState;->isAllowDirectoryFetch:Z

    .line 18
    iput p3, p0, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationState;->cellID:I

    .line 19
    iput-wide p4, p0, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationState;->connectionTimeout:J

    .line 20
    iput-object p6, p0, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationState;->defaultPersonaStateFlags:Ljava/util/EnumSet;

    .line 21
    iput-object p7, p0, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationState;->httpClient:Lokhttp3/OkHttpClient;

    .line 22
    iput-object p8, p0, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationState;->protocolTypes:Ljava/util/EnumSet;

    .line 23
    iput-object p9, p0, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationState;->serverListProvider:Lin/dragonbra/javasteam/steam/discovery/IServerListProvider;

    .line 24
    iput-object p10, p0, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationState;->universe:Lin/dragonbra/javasteam/enums/EUniverse;

    .line 25
    iput-object p11, p0, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationState;->webAPIBaseAddress:Ljava/lang/String;

    .line 26
    iput-object p12, p0, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationState;->webAPIKey:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationState;Lin/dragonbra/javasteam/networking/steam3/IConnectionFactory;ZIJLjava/util/EnumSet;Lokhttp3/OkHttpClient;Ljava/util/EnumSet;Lin/dragonbra/javasteam/steam/discovery/IServerListProvider;Lin/dragonbra/javasteam/enums/EUniverse;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationState;
    .registers 28

    .line 0
    move-object v0, p0

    move/from16 v1, p13

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_a

    iget-object v2, v0, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationState;->connectionFactory:Lin/dragonbra/javasteam/networking/steam3/IConnectionFactory;

    goto :goto_b

    :cond_a
    move-object v2, p1

    :goto_b
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_12

    iget-boolean v3, v0, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationState;->isAllowDirectoryFetch:Z

    goto :goto_13

    :cond_12
    move v3, p2

    :goto_13
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_1a

    iget v4, v0, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationState;->cellID:I

    goto :goto_1c

    :cond_1a
    move/from16 v4, p3

    :goto_1c
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_23

    iget-wide v5, v0, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationState;->connectionTimeout:J

    goto :goto_25

    :cond_23
    move-wide/from16 v5, p4

    :goto_25
    and-int/lit8 v7, v1, 0x10

    if-eqz v7, :cond_2c

    iget-object v7, v0, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationState;->defaultPersonaStateFlags:Ljava/util/EnumSet;

    goto :goto_2e

    :cond_2c
    move-object/from16 v7, p6

    :goto_2e
    and-int/lit8 v8, v1, 0x20

    if-eqz v8, :cond_35

    iget-object v8, v0, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationState;->httpClient:Lokhttp3/OkHttpClient;

    goto :goto_37

    :cond_35
    move-object/from16 v8, p7

    :goto_37
    and-int/lit8 v9, v1, 0x40

    if-eqz v9, :cond_3e

    iget-object v9, v0, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationState;->protocolTypes:Ljava/util/EnumSet;

    goto :goto_40

    :cond_3e
    move-object/from16 v9, p8

    :goto_40
    and-int/lit16 v10, v1, 0x80

    if-eqz v10, :cond_47

    iget-object v10, v0, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationState;->serverListProvider:Lin/dragonbra/javasteam/steam/discovery/IServerListProvider;

    goto :goto_49

    :cond_47
    move-object/from16 v10, p9

    :goto_49
    and-int/lit16 v11, v1, 0x100

    if-eqz v11, :cond_50

    iget-object v11, v0, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationState;->universe:Lin/dragonbra/javasteam/enums/EUniverse;

    goto :goto_52

    :cond_50
    move-object/from16 v11, p10

    :goto_52
    and-int/lit16 v12, v1, 0x200

    if-eqz v12, :cond_59

    iget-object v12, v0, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationState;->webAPIBaseAddress:Ljava/lang/String;

    goto :goto_5b

    :cond_59
    move-object/from16 v12, p11

    :goto_5b
    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_62

    iget-object v1, v0, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationState;->webAPIKey:Ljava/lang/String;

    goto :goto_64

    :cond_62
    move-object/from16 v1, p12

    :goto_64
    move-object p1, v2

    move p2, v3

    move/from16 p3, v4

    move-wide/from16 p4, v5

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v11

    move-object/from16 p11, v12

    move-object/from16 p12, v1

    invoke-virtual/range {p0 .. p12}, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationState;->copy(Lin/dragonbra/javasteam/networking/steam3/IConnectionFactory;ZIJLjava/util/EnumSet;Lokhttp3/OkHttpClient;Ljava/util/EnumSet;Lin/dragonbra/javasteam/steam/discovery/IServerListProvider;Lin/dragonbra/javasteam/enums/EUniverse;Ljava/lang/String;Ljava/lang/String;)Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationState;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Lin/dragonbra/javasteam/networking/steam3/IConnectionFactory;
    .registers 1

    .line 0
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationState;->connectionFactory:Lin/dragonbra/javasteam/networking/steam3/IConnectionFactory;

    return-object p0
.end method

.method public final component10()Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationState;->webAPIBaseAddress:Ljava/lang/String;

    return-object p0
.end method

.method public final component11()Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationState;->webAPIKey:Ljava/lang/String;

    return-object p0
.end method

.method public final component2()Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationState;->isAllowDirectoryFetch:Z

    return p0
.end method

.method public final component3()I
    .registers 1

    .line 0
    iget p0, p0, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationState;->cellID:I

    return p0
.end method

.method public final component4()J
    .registers 3

    .line 0
    iget-wide v0, p0, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationState;->connectionTimeout:J

    return-wide v0
.end method

.method public final component5()Ljava/util/EnumSet;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet<",
            "Lin/dragonbra/javasteam/enums/EClientPersonaStateFlag;",
            ">;"
        }
    .end annotation

    .line 0
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationState;->defaultPersonaStateFlags:Ljava/util/EnumSet;

    return-object p0
.end method

.method public final component6()Lokhttp3/OkHttpClient;
    .registers 1

    .line 0
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationState;->httpClient:Lokhttp3/OkHttpClient;

    return-object p0
.end method

.method public final component7()Ljava/util/EnumSet;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet<",
            "Lin/dragonbra/javasteam/networking/steam3/ProtocolTypes;",
            ">;"
        }
    .end annotation

    .line 0
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationState;->protocolTypes:Ljava/util/EnumSet;

    return-object p0
.end method

.method public final component8()Lin/dragonbra/javasteam/steam/discovery/IServerListProvider;
    .registers 1

    .line 0
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationState;->serverListProvider:Lin/dragonbra/javasteam/steam/discovery/IServerListProvider;

    return-object p0
.end method

.method public final component9()Lin/dragonbra/javasteam/enums/EUniverse;
    .registers 1

    .line 0
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationState;->universe:Lin/dragonbra/javasteam/enums/EUniverse;

    return-object p0
.end method

.method public final copy(Lin/dragonbra/javasteam/networking/steam3/IConnectionFactory;ZIJLjava/util/EnumSet;Lokhttp3/OkHttpClient;Ljava/util/EnumSet;Lin/dragonbra/javasteam/steam/discovery/IServerListProvider;Lin/dragonbra/javasteam/enums/EUniverse;Ljava/lang/String;Ljava/lang/String;)Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationState;
    .registers 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lin/dragonbra/javasteam/networking/steam3/IConnectionFactory;",
            "ZIJ",
            "Ljava/util/EnumSet<",
            "Lin/dragonbra/javasteam/enums/EClientPersonaStateFlag;",
            ">;",
            "Lokhttp3/OkHttpClient;",
            "Ljava/util/EnumSet<",
            "Lin/dragonbra/javasteam/networking/steam3/ProtocolTypes;",
            ">;",
            "Lin/dragonbra/javasteam/steam/discovery/IServerListProvider;",
            "Lin/dragonbra/javasteam/enums/EUniverse;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationState;"
        }
    .end annotation

    .line 0
    const-string v0, "connectionFactory"

    move-object v2, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "defaultPersonaStateFlags"

    move-object/from16 v7, p6

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "httpClient"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "protocolTypes"

    move-object/from16 v9, p8

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serverListProvider"

    move-object/from16 v10, p9

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "universe"

    move-object/from16 v11, p10

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "webAPIBaseAddress"

    move-object/from16 v12, p11

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationState;

    move-object v1, v0

    move/from16 v3, p2

    move/from16 v4, p3

    move-wide/from16 v5, p4

    move-object/from16 v13, p12

    invoke-direct/range {v1 .. v13}, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationState;-><init>(Lin/dragonbra/javasteam/networking/steam3/IConnectionFactory;ZIJLjava/util/EnumSet;Lokhttp3/OkHttpClient;Ljava/util/EnumSet;Lin/dragonbra/javasteam/steam/discovery/IServerListProvider;Lin/dragonbra/javasteam/enums/EUniverse;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationState;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationState;

    iget-object v1, p0, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationState;->connectionFactory:Lin/dragonbra/javasteam/networking/steam3/IConnectionFactory;

    iget-object v3, p1, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationState;->connectionFactory:Lin/dragonbra/javasteam/networking/steam3/IConnectionFactory;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-boolean v1, p0, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationState;->isAllowDirectoryFetch:Z

    iget-boolean v3, p1, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationState;->isAllowDirectoryFetch:Z

    if-eq v1, v3, :cond_1e

    return v2

    :cond_1e
    iget v1, p0, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationState;->cellID:I

    iget v3, p1, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationState;->cellID:I

    if-eq v1, v3, :cond_25

    return v2

    :cond_25
    iget-wide v3, p0, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationState;->connectionTimeout:J

    iget-wide v5, p1, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationState;->connectionTimeout:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2e

    return v2

    :cond_2e
    iget-object v1, p0, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationState;->defaultPersonaStateFlags:Ljava/util/EnumSet;

    iget-object v3, p1, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationState;->defaultPersonaStateFlags:Ljava/util/EnumSet;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_39

    return v2

    :cond_39
    iget-object v1, p0, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationState;->httpClient:Lokhttp3/OkHttpClient;

    iget-object v3, p1, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationState;->httpClient:Lokhttp3/OkHttpClient;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_44

    return v2

    :cond_44
    iget-object v1, p0, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationState;->protocolTypes:Ljava/util/EnumSet;

    iget-object v3, p1, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationState;->protocolTypes:Ljava/util/EnumSet;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4f

    return v2

    :cond_4f
    iget-object v1, p0, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationState;->serverListProvider:Lin/dragonbra/javasteam/steam/discovery/IServerListProvider;

    iget-object v3, p1, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationState;->serverListProvider:Lin/dragonbra/javasteam/steam/discovery/IServerListProvider;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5a

    return v2

    :cond_5a
    iget-object v1, p0, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationState;->universe:Lin/dragonbra/javasteam/enums/EUniverse;

    iget-object v3, p1, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationState;->universe:Lin/dragonbra/javasteam/enums/EUniverse;

    if-eq v1, v3, :cond_61

    return v2

    :cond_61
    iget-object v1, p0, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationState;->webAPIBaseAddress:Ljava/lang/String;

    iget-object v3, p1, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationState;->webAPIBaseAddress:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6c

    return v2

    :cond_6c
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationState;->webAPIKey:Ljava/lang/String;

    iget-object p1, p1, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationState;->webAPIKey:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_77

    return v2

    :cond_77
    return v0
.end method

.method public final getCellID()I
    .registers 1

    .line 18
    iget p0, p0, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationState;->cellID:I

    return p0
.end method

.method public final getConnectionFactory()Lin/dragonbra/javasteam/networking/steam3/IConnectionFactory;
    .registers 1

    .line 16
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationState;->connectionFactory:Lin/dragonbra/javasteam/networking/steam3/IConnectionFactory;

    return-object p0
.end method

.method public final getConnectionTimeout()J
    .registers 3

    .line 19
    iget-wide v0, p0, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationState;->connectionTimeout:J

    return-wide v0
.end method

.method public final getDefaultPersonaStateFlags()Ljava/util/EnumSet;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet<",
            "Lin/dragonbra/javasteam/enums/EClientPersonaStateFlag;",
            ">;"
        }
    .end annotation

    .line 20
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationState;->defaultPersonaStateFlags:Ljava/util/EnumSet;

    return-object p0
.end method

.method public final getHttpClient()Lokhttp3/OkHttpClient;
    .registers 1

    .line 21
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationState;->httpClient:Lokhttp3/OkHttpClient;

    return-object p0
.end method

.method public final getProtocolTypes()Ljava/util/EnumSet;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet<",
            "Lin/dragonbra/javasteam/networking/steam3/ProtocolTypes;",
            ">;"
        }
    .end annotation

    .line 22
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationState;->protocolTypes:Ljava/util/EnumSet;

    return-object p0
.end method

.method public final getServerListProvider()Lin/dragonbra/javasteam/steam/discovery/IServerListProvider;
    .registers 1

    .line 23
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationState;->serverListProvider:Lin/dragonbra/javasteam/steam/discovery/IServerListProvider;

    return-object p0
.end method

.method public final getUniverse()Lin/dragonbra/javasteam/enums/EUniverse;
    .registers 1

    .line 24
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationState;->universe:Lin/dragonbra/javasteam/enums/EUniverse;

    return-object p0
.end method

.method public final getWebAPIBaseAddress()Ljava/lang/String;
    .registers 1

    .line 25
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationState;->webAPIBaseAddress:Ljava/lang/String;

    return-object p0
.end method

.method public final getWebAPIKey()Ljava/lang/String;
    .registers 1

    .line 26
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationState;->webAPIKey:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .registers 4

    .line 0
    iget-object v0, p0, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationState;->connectionFactory:Lin/dragonbra/javasteam/networking/steam3/IConnectionFactory;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationState;->isAllowDirectoryFetch:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationState;->cellID:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationState;->connectionTimeout:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationState;->defaultPersonaStateFlags:Ljava/util/EnumSet;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationState;->httpClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationState;->protocolTypes:Ljava/util/EnumSet;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationState;->serverListProvider:Lin/dragonbra/javasteam/steam/discovery/IServerListProvider;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationState;->universe:Lin/dragonbra/javasteam/enums/EUniverse;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationState;->webAPIBaseAddress:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationState;->webAPIKey:Ljava/lang/String;

    if-nez p0, :cond_5f

    const/4 p0, 0x0

    goto :goto_63

    :cond_5f
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    :goto_63
    add-int/2addr v0, p0

    return v0
.end method

.method public final isAllowDirectoryFetch()Z
    .registers 1

    .line 17
    iget-boolean p0, p0, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationState;->isAllowDirectoryFetch:Z

    return p0
.end method

.method public final setAllowDirectoryFetch(Z)V
    .registers 2

    .line 17
    iput-boolean p1, p0, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationState;->isAllowDirectoryFetch:Z

    return-void
.end method

.method public final setCellID(I)V
    .registers 2

    .line 18
    iput p1, p0, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationState;->cellID:I

    return-void
.end method

.method public final setConnectionFactory(Lin/dragonbra/javasteam/networking/steam3/IConnectionFactory;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    iput-object p1, p0, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationState;->connectionFactory:Lin/dragonbra/javasteam/networking/steam3/IConnectionFactory;

    return-void
.end method

.method public final setConnectionTimeout(J)V
    .registers 3

    .line 19
    iput-wide p1, p0, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationState;->connectionTimeout:J

    return-void
.end method

.method public final setDefaultPersonaStateFlags(Ljava/util/EnumSet;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet<",
            "Lin/dragonbra/javasteam/enums/EClientPersonaStateFlag;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    iput-object p1, p0, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationState;->defaultPersonaStateFlags:Ljava/util/EnumSet;

    return-void
.end method

.method public final setHttpClient(Lokhttp3/OkHttpClient;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    iput-object p1, p0, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationState;->httpClient:Lokhttp3/OkHttpClient;

    return-void
.end method

.method public final setProtocolTypes(Ljava/util/EnumSet;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet<",
            "Lin/dragonbra/javasteam/networking/steam3/ProtocolTypes;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    iput-object p1, p0, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationState;->protocolTypes:Ljava/util/EnumSet;

    return-void
.end method

.method public final setServerListProvider(Lin/dragonbra/javasteam/steam/discovery/IServerListProvider;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    iput-object p1, p0, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationState;->serverListProvider:Lin/dragonbra/javasteam/steam/discovery/IServerListProvider;

    return-void
.end method

.method public final setUniverse(Lin/dragonbra/javasteam/enums/EUniverse;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    iput-object p1, p0, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationState;->universe:Lin/dragonbra/javasteam/enums/EUniverse;

    return-void
.end method

.method public final setWebAPIBaseAddress(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    iput-object p1, p0, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationState;->webAPIBaseAddress:Ljava/lang/String;

    return-void
.end method

.method public final setWebAPIKey(Ljava/lang/String;)V
    .registers 2

    .line 26
    iput-object p1, p0, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationState;->webAPIKey:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 14

    .line 0
    iget-object v0, p0, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationState;->connectionFactory:Lin/dragonbra/javasteam/networking/steam3/IConnectionFactory;

    iget-boolean v1, p0, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationState;->isAllowDirectoryFetch:Z

    iget v2, p0, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationState;->cellID:I

    iget-wide v3, p0, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationState;->connectionTimeout:J

    iget-object v5, p0, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationState;->defaultPersonaStateFlags:Ljava/util/EnumSet;

    iget-object v6, p0, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationState;->httpClient:Lokhttp3/OkHttpClient;

    iget-object v7, p0, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationState;->protocolTypes:Ljava/util/EnumSet;

    iget-object v8, p0, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationState;->serverListProvider:Lin/dragonbra/javasteam/steam/discovery/IServerListProvider;

    iget-object v9, p0, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationState;->universe:Lin/dragonbra/javasteam/enums/EUniverse;

    iget-object v10, p0, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationState;->webAPIBaseAddress:Ljava/lang/String;

    iget-object p0, p0, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationState;->webAPIKey:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SteamConfigurationState(connectionFactory="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", isAllowDirectoryFetch="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", cellID="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", connectionTimeout="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", defaultPersonaStateFlags="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", httpClient="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", protocolTypes="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", serverListProvider="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", universe="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", webAPIBaseAddress="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", webAPIKey="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
