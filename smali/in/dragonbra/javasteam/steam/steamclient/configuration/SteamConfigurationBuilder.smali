###### Class in.dragonbra.javasteam.steam.steamclient.configuration.SteamConfigurationBuilder (in.dragonbra.javasteam.steam.steamclient.configuration.SteamConfigurationBuilder)
.class public final Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationBuilder;
.super Ljava/lang/Object;
.source "SteamConfigurationBuilder.kt"

# interfaces
.implements Lin/dragonbra/javasteam/steam/steamclient/configuration/ISteamConfigurationBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationBuilder$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationBuilder$Companion;


# instance fields
.field private final state:Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationState;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 0
    new-instance v0, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationBuilder$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationBuilder$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationBuilder;->Companion:Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationBuilder$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    sget-object v0, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationBuilder;->Companion:Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationBuilder$Companion;

    invoke-virtual {v0}, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationBuilder$Companion;->createDefaultState()Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationState;

    move-result-object v0

    iput-object v0, p0, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationBuilder;->state:Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationState;

    return-void
.end method

.method public static final createDefaultState()Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationState;
    .registers 1

    .line 0
    sget-object v0, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationBuilder;->Companion:Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationBuilder$Companion;

    invoke-virtual {v0}, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationBuilder$Companion;->createDefaultState()Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationState;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final build()Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfiguration;
    .registers 2

    .line 21
    new-instance v0, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfiguration;

    iget-object p0, p0, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationBuilder;->state:Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationState;

    invoke-direct {v0, p0}, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfiguration;-><init>(Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationState;)V

    return-object v0
.end method

.method public withCellID(I)Lin/dragonbra/javasteam/steam/steamclient/configuration/ISteamConfigurationBuilder;
    .registers 3

    .line 29
    iget-object v0, p0, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationBuilder;->state:Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationState;

    invoke-virtual {v0, p1}, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationState;->setCellID(I)V

    return-object p0
.end method

.method public withConnectionFactory(Lin/dragonbra/javasteam/networking/steam3/IConnectionFactory;)Lin/dragonbra/javasteam/steam/steamclient/configuration/ISteamConfigurationBuilder;
    .registers 3

    const-string v0, "connectionFactory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    iget-object v0, p0, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationBuilder;->state:Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationState;

    invoke-virtual {v0, p1}, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationState;->setConnectionFactory(Lin/dragonbra/javasteam/networking/steam3/IConnectionFactory;)V

    return-object p0
.end method

.method public withConnectionTimeout(J)Lin/dragonbra/javasteam/steam/steamclient/configuration/ISteamConfigurationBuilder;
    .registers 4

    .line 34
    iget-object v0, p0, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationBuilder;->state:Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationState;

    invoke-virtual {v0, p1, p2}, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationState;->setConnectionTimeout(J)V

    return-object p0
.end method

.method public withDefaultPersonaStateFlags(Lin/dragonbra/javasteam/enums/EClientPersonaStateFlag;)Lin/dragonbra/javasteam/steam/steamclient/configuration/ISteamConfigurationBuilder;
    .registers 4

    const-string v0, "personaStateFlags"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationBuilder;->state:Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationState;

    invoke-static {p1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object p1

    const-string v1, "of(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationState;->setDefaultPersonaStateFlags(Ljava/util/EnumSet;)V

    return-object p0
.end method

.method public withDefaultPersonaStateFlags(Ljava/util/EnumSet;)Lin/dragonbra/javasteam/steam/steamclient/configuration/ISteamConfigurationBuilder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet<",
            "Lin/dragonbra/javasteam/enums/EClientPersonaStateFlag;",
            ">;)",
            "Lin/dragonbra/javasteam/steam/steamclient/configuration/ISteamConfigurationBuilder;"
        }
    .end annotation

    const-string v0, "personaStateFlags"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    iget-object v0, p0, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationBuilder;->state:Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationState;

    invoke-virtual {v0, p1}, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationState;->setDefaultPersonaStateFlags(Ljava/util/EnumSet;)V

    return-object p0
.end method

.method public withDirectoryFetch(Z)Lin/dragonbra/javasteam/steam/steamclient/configuration/ISteamConfigurationBuilder;
    .registers 3

    .line 54
    iget-object v0, p0, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationBuilder;->state:Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationState;

    invoke-virtual {v0, p1}, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationState;->setAllowDirectoryFetch(Z)V

    return-object p0
.end method

.method public withHttpClient(Lokhttp3/OkHttpClient;)Lin/dragonbra/javasteam/steam/steamclient/configuration/ISteamConfigurationBuilder;
    .registers 3

    const-string v0, "httpClient"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationBuilder;->state:Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationState;

    invoke-virtual {v0, p1}, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationState;->setHttpClient(Lokhttp3/OkHttpClient;)V

    return-object p0
.end method

.method public withProtocolTypes(Lin/dragonbra/javasteam/networking/steam3/ProtocolTypes;)Lin/dragonbra/javasteam/steam/steamclient/configuration/ISteamConfigurationBuilder;
    .registers 4

    const-string v0, "protocolTypes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationBuilder;->state:Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationState;

    invoke-static {p1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object p1

    const-string v1, "of(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationState;->setProtocolTypes(Ljava/util/EnumSet;)V

    return-object p0
.end method

.method public withProtocolTypes(Ljava/util/EnumSet;)Lin/dragonbra/javasteam/steam/steamclient/configuration/ISteamConfigurationBuilder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet<",
            "Lin/dragonbra/javasteam/networking/steam3/ProtocolTypes;",
            ">;)",
            "Lin/dragonbra/javasteam/steam/steamclient/configuration/ISteamConfigurationBuilder;"
        }
    .end annotation

    const-string v0, "protocolTypes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationBuilder;->state:Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationState;

    invoke-virtual {v0, p1}, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationState;->setProtocolTypes(Ljava/util/EnumSet;)V

    return-object p0
.end method

.method public withServerListProvider(Lin/dragonbra/javasteam/steam/discovery/IServerListProvider;)Lin/dragonbra/javasteam/steam/steamclient/configuration/ISteamConfigurationBuilder;
    .registers 3

    const-string v0, "provider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationBuilder;->state:Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationState;

    invoke-virtual {v0, p1}, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationState;->setServerListProvider(Lin/dragonbra/javasteam/steam/discovery/IServerListProvider;)V

    return-object p0
.end method

.method public withUniverse(Lin/dragonbra/javasteam/enums/EUniverse;)Lin/dragonbra/javasteam/steam/steamclient/configuration/ISteamConfigurationBuilder;
    .registers 3

    const-string v0, "universe"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationBuilder;->state:Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationState;

    invoke-virtual {v0, p1}, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationState;->setUniverse(Lin/dragonbra/javasteam/enums/EUniverse;)V

    return-object p0
.end method

.method public withWebAPIBaseAddress(Ljava/lang/String;)Lin/dragonbra/javasteam/steam/steamclient/configuration/ISteamConfigurationBuilder;
    .registers 3

    const-string v0, "baseAddress"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationBuilder;->state:Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationState;

    invoke-virtual {v0, p1}, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationState;->setWebAPIBaseAddress(Ljava/lang/String;)V

    return-object p0
.end method

.method public withWebAPIKey(Ljava/lang/String;)Lin/dragonbra/javasteam/steam/steamclient/configuration/ISteamConfigurationBuilder;
    .registers 3

    const-string v0, "webApiKey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationBuilder;->state:Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationState;

    invoke-virtual {v0, p1}, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationState;->setWebAPIKey(Ljava/lang/String;)V

    return-object p0
.end method

###### Class in.dragonbra.javasteam.steam.steamclient.configuration.SteamConfigurationBuilder.Companion (in.dragonbra.javasteam.steam.steamclient.configuration.SteamConfigurationBuilder$Companion)
.class public final Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationBuilder$Companion;
.super Ljava/lang/Object;
.source "SteamConfigurationBuilder.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationBuilder$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final createDefaultState()Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationState;
    .registers 14

    .line 91
    sget-object v1, Lin/dragonbra/javasteam/networking/steam3/IConnectionFactory;->DEFAULT:Lin/dragonbra/javasteam/networking/steam3/IConnectionFactory;

    const-string p0, "DEFAULT"

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    sget-object p0, Lin/dragonbra/javasteam/enums/EClientPersonaStateFlag;->PlayerName:Lin/dragonbra/javasteam/enums/EClientPersonaStateFlag;

    .line 96
    sget-object v0, Lin/dragonbra/javasteam/enums/EClientPersonaStateFlag;->Presence:Lin/dragonbra/javasteam/enums/EClientPersonaStateFlag;

    .line 97
    sget-object v2, Lin/dragonbra/javasteam/enums/EClientPersonaStateFlag;->SourceID:Lin/dragonbra/javasteam/enums/EClientPersonaStateFlag;

    .line 98
    sget-object v3, Lin/dragonbra/javasteam/enums/EClientPersonaStateFlag;->GameExtraInfo:Lin/dragonbra/javasteam/enums/EClientPersonaStateFlag;

    .line 99
    sget-object v4, Lin/dragonbra/javasteam/enums/EClientPersonaStateFlag;->LastSeen:Lin/dragonbra/javasteam/enums/EClientPersonaStateFlag;

    .line 94
    invoke-static {p0, v0, v2, v3, v4}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v6

    const-string p0, "of(...)"

    invoke-static {v6, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    new-instance v7, Lokhttp3/OkHttpClient;

    invoke-direct {v7}, Lokhttp3/OkHttpClient;-><init>()V

    .line 102
    sget-object v0, Lin/dragonbra/javasteam/networking/steam3/ProtocolTypes;->TCP:Lin/dragonbra/javasteam/networking/steam3/ProtocolTypes;

    sget-object v2, Lin/dragonbra/javasteam/networking/steam3/ProtocolTypes;->WEB_SOCKET:Lin/dragonbra/javasteam/networking/steam3/ProtocolTypes;

    invoke-static {v0, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v8

    invoke-static {v8, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    new-instance v9, Lin/dragonbra/javasteam/steam/discovery/MemoryServerListProvider;

    invoke-direct {v9}, Lin/dragonbra/javasteam/steam/discovery/MemoryServerListProvider;-><init>()V

    .line 104
    sget-object v10, Lin/dragonbra/javasteam/enums/EUniverse;->Public:Lin/dragonbra/javasteam/enums/EUniverse;

    .line 90
    new-instance p0, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationState;

    .line 105
    const-string v11, "https://api.steampowered.com/"

    const/4 v12, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-wide/16 v4, 0x1388

    move-object v0, p0

    .line 90
    invoke-direct/range {v0 .. v12}, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationState;-><init>(Lin/dragonbra/javasteam/networking/steam3/IConnectionFactory;ZIJLjava/util/EnumSet;Lokhttp3/OkHttpClient;Ljava/util/EnumSet;Lin/dragonbra/javasteam/steam/discovery/IServerListProvider;Lin/dragonbra/javasteam/enums/EUniverse;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method
