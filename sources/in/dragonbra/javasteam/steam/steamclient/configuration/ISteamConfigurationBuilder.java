package in.dragonbra.javasteam.steam.steamclient.configuration;

import in.dragonbra.javasteam.enums.EClientPersonaStateFlag;
import in.dragonbra.javasteam.enums.EUniverse;
import in.dragonbra.javasteam.networking.steam3.IConnectionFactory;
import in.dragonbra.javasteam.networking.steam3.ProtocolTypes;
import in.dragonbra.javasteam.steam.discovery.IServerListProvider;
import java.util.EnumSet;
import okhttp3.OkHttpClient;

/* JADX INFO: compiled from: ISteamConfigurationBuilder.kt */
/* JADX INFO: loaded from: classes2.dex */
public interface ISteamConfigurationBuilder {
    ISteamConfigurationBuilder withCellID(int i);

    ISteamConfigurationBuilder withConnectionFactory(IConnectionFactory iConnectionFactory);

    ISteamConfigurationBuilder withConnectionTimeout(long j);

    ISteamConfigurationBuilder withDefaultPersonaStateFlags(EClientPersonaStateFlag eClientPersonaStateFlag);

    ISteamConfigurationBuilder withDefaultPersonaStateFlags(EnumSet<EClientPersonaStateFlag> enumSet);

    ISteamConfigurationBuilder withDirectoryFetch(boolean z);

    ISteamConfigurationBuilder withHttpClient(OkHttpClient okHttpClient);

    ISteamConfigurationBuilder withProtocolTypes(ProtocolTypes protocolTypes);

    ISteamConfigurationBuilder withProtocolTypes(EnumSet<ProtocolTypes> enumSet);

    ISteamConfigurationBuilder withServerListProvider(IServerListProvider iServerListProvider);

    ISteamConfigurationBuilder withUniverse(EUniverse eUniverse);

    ISteamConfigurationBuilder withWebAPIBaseAddress(String str);

    ISteamConfigurationBuilder withWebAPIKey(String str);
}
