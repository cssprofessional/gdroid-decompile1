###### Class in.dragonbra.javasteam.steam.steamclient.configuration.SteamConfiguration (in.dragonbra.javasteam.steam.steamclient.configuration.SteamConfiguration)
.class public final Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfiguration;
.super Ljava/lang/Object;
.source "SteamConfiguration.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfiguration$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfiguration$Companion;


# instance fields
.field private final serverList:Lin/dragonbra/javasteam/steam/discovery/SmartCMServerList;

.field private final state:Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationState;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 0
    new-instance v0, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfiguration$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfiguration$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfiguration;->Companion:Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfiguration$Companion;

    return-void
.end method

.method public constructor <init>(Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationState;)V
    .registers 3

    const-string v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfiguration;->state:Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationState;

    .line 102
    new-instance p1, Lin/dragonbra/javasteam/steam/discovery/SmartCMServerList;

    invoke-direct {p1, p0}, Lin/dragonbra/javasteam/steam/discovery/SmartCMServerList;-><init>(Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfiguration;)V

    iput-object p1, p0, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfiguration;->serverList:Lin/dragonbra/javasteam/steam/discovery/SmartCMServerList;

    return-void
.end method

.method public static final create(Lin/dragonbra/javasteam/util/compat/Consumer;)Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfiguration;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lin/dragonbra/javasteam/util/compat/Consumer<",
            "Lin/dragonbra/javasteam/steam/steamclient/configuration/ISteamConfigurationBuilder;",
            ">;)",
            "Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfiguration;"
        }
    .end annotation

    .line 0
    sget-object v0, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfiguration;->Companion:Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfiguration$Companion;

    invoke-virtual {v0, p0}, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfiguration$Companion;->create(Lin/dragonbra/javasteam/util/compat/Consumer;)Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfiguration;

    move-result-object p0

    return-object p0
.end method

.method public static final createDefault()Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfiguration;
    .registers 1

    .line 0
    sget-object v0, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfiguration;->Companion:Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfiguration$Companion;

    invoke-virtual {v0}, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfiguration$Companion;->createDefault()Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfiguration;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final getCellID()I
    .registers 1

    .line 49
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfiguration;->state:Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationState;

    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationState;->getCellID()I

    move-result p0

    return p0
.end method

.method public final getConnectionFactory()Lin/dragonbra/javasteam/networking/steam3/IConnectionFactory;
    .registers 1

    .line 37
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfiguration;->state:Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationState;

    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationState;->getConnectionFactory()Lin/dragonbra/javasteam/networking/steam3/IConnectionFactory;

    move-result-object p0

    return-object p0
.end method

.method public final getConnectionTimeout()J
    .registers 3

    .line 55
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfiguration;->state:Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationState;

    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationState;->getConnectionTimeout()J

    move-result-wide v0

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

    .line 67
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfiguration;->state:Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationState;

    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationState;->getDefaultPersonaStateFlags()Ljava/util/EnumSet;

    move-result-object p0

    return-object p0
.end method

.method public final getHttpClient()Lokhttp3/OkHttpClient;
    .registers 1

    .line 61
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfiguration;->state:Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationState;

    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationState;->getHttpClient()Lokhttp3/OkHttpClient;

    move-result-object p0

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

    .line 73
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfiguration;->state:Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationState;

    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationState;->getProtocolTypes()Ljava/util/EnumSet;

    move-result-object p0

    return-object p0
.end method

.method public final getServerList()Lin/dragonbra/javasteam/steam/discovery/SmartCMServerList;
    .registers 1

    .line 102
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfiguration;->serverList:Lin/dragonbra/javasteam/steam/discovery/SmartCMServerList;

    return-object p0
.end method

.method public final getServerListProvider()Lin/dragonbra/javasteam/steam/discovery/IServerListProvider;
    .registers 1

    .line 79
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfiguration;->state:Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationState;

    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationState;->getServerListProvider()Lin/dragonbra/javasteam/steam/discovery/IServerListProvider;

    move-result-object p0

    return-object p0
.end method

.method public final getUniverse()Lin/dragonbra/javasteam/enums/EUniverse;
    .registers 1

    .line 85
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfiguration;->state:Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationState;

    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationState;->getUniverse()Lin/dragonbra/javasteam/enums/EUniverse;

    move-result-object p0

    return-object p0
.end method

.method public final getWebAPI(Ljava/lang/String;)Lin/dragonbra/javasteam/steam/webapi/WebAPI;
    .registers 5

    const-string v0, "interface"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    new-instance v0, Lin/dragonbra/javasteam/steam/webapi/WebAPI;

    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfiguration;->getHttpClient()Lokhttp3/OkHttpClient;

    move-result-object v1

    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfiguration;->getWebAPIBaseAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfiguration;->getWebAPIKey()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, v2, p1, p0}, Lin/dragonbra/javasteam/steam/webapi/WebAPI;-><init>(Lokhttp3/OkHttpClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getWebAPIBaseAddress()Ljava/lang/String;
    .registers 1

    .line 91
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfiguration;->state:Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationState;

    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationState;->getWebAPIBaseAddress()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getWebAPIKey()Ljava/lang/String;
    .registers 1

    .line 97
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfiguration;->state:Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationState;

    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationState;->getWebAPIKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final isAllowDirectoryFetch()Z
    .registers 1

    .line 43
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfiguration;->state:Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationState;

    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationState;->isAllowDirectoryFetch()Z

    move-result p0

    return p0
.end method

###### Class in.dragonbra.javasteam.steam.steamclient.configuration.SteamConfiguration.Companion (in.dragonbra.javasteam.steam.steamclient.configuration.SteamConfiguration$Companion)
.class public final Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfiguration$Companion;
.super Ljava/lang/Object;
.source "SteamConfiguration.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfiguration$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(Lin/dragonbra/javasteam/util/compat/Consumer;)Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfiguration;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lin/dragonbra/javasteam/util/compat/Consumer<",
            "Lin/dragonbra/javasteam/steam/steamclient/configuration/ISteamConfigurationBuilder;",
            ">;)",
            "Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfiguration;"
        }
    .end annotation

    const-string p0, "configurator"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    new-instance p0, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationBuilder;

    invoke-direct {p0}, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationBuilder;-><init>()V

    .line 123
    invoke-interface {p1, p0}, Lin/dragonbra/javasteam/util/compat/Consumer;->accept(Ljava/lang/Object;)V

    .line 125
    invoke-virtual {p0}, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationBuilder;->build()Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfiguration;

    move-result-object p0

    return-object p0
.end method

.method public final createDefault()Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfiguration;
    .registers 2

    .line 129
    new-instance p0, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfiguration;

    sget-object v0, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationBuilder;->Companion:Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationBuilder$Companion;

    invoke-virtual {v0}, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationBuilder$Companion;->createDefaultState()Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationState;

    move-result-object v0

    invoke-direct {p0, v0}, Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfiguration;-><init>(Lin/dragonbra/javasteam/steam/steamclient/configuration/SteamConfigurationState;)V

    return-object p0
.end method
