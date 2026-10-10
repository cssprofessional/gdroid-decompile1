###### Class in.dragonbra.javasteam.steam.steamclient.configuration.ISteamConfigurationBuilder (in.dragonbra.javasteam.steam.steamclient.configuration.ISteamConfigurationBuilder)
.class public interface abstract Lin/dragonbra/javasteam/steam/steamclient/configuration/ISteamConfigurationBuilder;
.super Ljava/lang/Object;
.source "ISteamConfigurationBuilder.kt"


# virtual methods
.method public abstract withCellID(I)Lin/dragonbra/javasteam/steam/steamclient/configuration/ISteamConfigurationBuilder;
.end method

.method public abstract withConnectionFactory(Lin/dragonbra/javasteam/networking/steam3/IConnectionFactory;)Lin/dragonbra/javasteam/steam/steamclient/configuration/ISteamConfigurationBuilder;
.end method

.method public abstract withConnectionTimeout(J)Lin/dragonbra/javasteam/steam/steamclient/configuration/ISteamConfigurationBuilder;
.end method

.method public abstract withDefaultPersonaStateFlags(Lin/dragonbra/javasteam/enums/EClientPersonaStateFlag;)Lin/dragonbra/javasteam/steam/steamclient/configuration/ISteamConfigurationBuilder;
.end method

.method public abstract withDefaultPersonaStateFlags(Ljava/util/EnumSet;)Lin/dragonbra/javasteam/steam/steamclient/configuration/ISteamConfigurationBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet<",
            "Lin/dragonbra/javasteam/enums/EClientPersonaStateFlag;",
            ">;)",
            "Lin/dragonbra/javasteam/steam/steamclient/configuration/ISteamConfigurationBuilder;"
        }
    .end annotation
.end method

.method public abstract withDirectoryFetch(Z)Lin/dragonbra/javasteam/steam/steamclient/configuration/ISteamConfigurationBuilder;
.end method

.method public abstract withHttpClient(Lokhttp3/OkHttpClient;)Lin/dragonbra/javasteam/steam/steamclient/configuration/ISteamConfigurationBuilder;
.end method

.method public abstract withProtocolTypes(Lin/dragonbra/javasteam/networking/steam3/ProtocolTypes;)Lin/dragonbra/javasteam/steam/steamclient/configuration/ISteamConfigurationBuilder;
.end method

.method public abstract withProtocolTypes(Ljava/util/EnumSet;)Lin/dragonbra/javasteam/steam/steamclient/configuration/ISteamConfigurationBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet<",
            "Lin/dragonbra/javasteam/networking/steam3/ProtocolTypes;",
            ">;)",
            "Lin/dragonbra/javasteam/steam/steamclient/configuration/ISteamConfigurationBuilder;"
        }
    .end annotation
.end method

.method public abstract withServerListProvider(Lin/dragonbra/javasteam/steam/discovery/IServerListProvider;)Lin/dragonbra/javasteam/steam/steamclient/configuration/ISteamConfigurationBuilder;
.end method

.method public abstract withUniverse(Lin/dragonbra/javasteam/enums/EUniverse;)Lin/dragonbra/javasteam/steam/steamclient/configuration/ISteamConfigurationBuilder;
.end method

.method public abstract withWebAPIBaseAddress(Ljava/lang/String;)Lin/dragonbra/javasteam/steam/steamclient/configuration/ISteamConfigurationBuilder;
.end method

.method public abstract withWebAPIKey(Ljava/lang/String;)Lin/dragonbra/javasteam/steam/steamclient/configuration/ISteamConfigurationBuilder;
.end method
