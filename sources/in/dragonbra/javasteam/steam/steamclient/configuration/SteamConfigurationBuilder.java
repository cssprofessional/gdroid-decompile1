package in.dragonbra.javasteam.steam.steamclient.configuration;

import in.dragonbra.javasteam.enums.EClientPersonaStateFlag;
import in.dragonbra.javasteam.enums.EUniverse;
import in.dragonbra.javasteam.networking.steam3.IConnectionFactory;
import in.dragonbra.javasteam.networking.steam3.ProtocolTypes;
import in.dragonbra.javasteam.steam.discovery.IServerListProvider;
import in.dragonbra.javasteam.steam.discovery.MemoryServerListProvider;
import in.dragonbra.javasteam.steam.webapi.WebAPI;
import java.util.EnumSet;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.OkHttpClient;

/* JADX INFO: compiled from: SteamConfigurationBuilder.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class SteamConfigurationBuilder implements ISteamConfigurationBuilder {
    public static final Companion Companion = new Companion(null);
    private final SteamConfigurationState state = Companion.createDefaultState();

    public static final SteamConfigurationState createDefaultState() {
        return Companion.createDefaultState();
    }

    public final SteamConfiguration build() {
        return new SteamConfiguration(this.state);
    }

    @Override // in.dragonbra.javasteam.steam.steamclient.configuration.ISteamConfigurationBuilder
    public ISteamConfigurationBuilder withConnectionFactory(IConnectionFactory connectionFactory) {
        Intrinsics.checkNotNullParameter(connectionFactory, "connectionFactory");
        this.state.setConnectionFactory(connectionFactory);
        return this;
    }

    @Override // in.dragonbra.javasteam.steam.steamclient.configuration.ISteamConfigurationBuilder
    public ISteamConfigurationBuilder withCellID(int i) {
        this.state.setCellID(i);
        return this;
    }

    @Override // in.dragonbra.javasteam.steam.steamclient.configuration.ISteamConfigurationBuilder
    public ISteamConfigurationBuilder withConnectionTimeout(long j) {
        this.state.setConnectionTimeout(j);
        return this;
    }

    @Override // in.dragonbra.javasteam.steam.steamclient.configuration.ISteamConfigurationBuilder
    public ISteamConfigurationBuilder withHttpClient(OkHttpClient httpClient) {
        Intrinsics.checkNotNullParameter(httpClient, "httpClient");
        this.state.setHttpClient(httpClient);
        return this;
    }

    @Override // in.dragonbra.javasteam.steam.steamclient.configuration.ISteamConfigurationBuilder
    public ISteamConfigurationBuilder withDefaultPersonaStateFlags(EnumSet<EClientPersonaStateFlag> personaStateFlags) {
        Intrinsics.checkNotNullParameter(personaStateFlags, "personaStateFlags");
        this.state.setDefaultPersonaStateFlags(personaStateFlags);
        return this;
    }

    @Override // in.dragonbra.javasteam.steam.steamclient.configuration.ISteamConfigurationBuilder
    public ISteamConfigurationBuilder withDefaultPersonaStateFlags(EClientPersonaStateFlag personaStateFlags) {
        Intrinsics.checkNotNullParameter(personaStateFlags, "personaStateFlags");
        SteamConfigurationState steamConfigurationState = this.state;
        EnumSet<EClientPersonaStateFlag> enumSetOf = EnumSet.of(personaStateFlags);
        Intrinsics.checkNotNullExpressionValue(enumSetOf, "of(...)");
        steamConfigurationState.setDefaultPersonaStateFlags(enumSetOf);
        return this;
    }

    @Override // in.dragonbra.javasteam.steam.steamclient.configuration.ISteamConfigurationBuilder
    public ISteamConfigurationBuilder withDirectoryFetch(boolean z) {
        this.state.setAllowDirectoryFetch(z);
        return this;
    }

    @Override // in.dragonbra.javasteam.steam.steamclient.configuration.ISteamConfigurationBuilder
    public ISteamConfigurationBuilder withProtocolTypes(EnumSet<ProtocolTypes> protocolTypes) {
        Intrinsics.checkNotNullParameter(protocolTypes, "protocolTypes");
        this.state.setProtocolTypes(protocolTypes);
        return this;
    }

    @Override // in.dragonbra.javasteam.steam.steamclient.configuration.ISteamConfigurationBuilder
    public ISteamConfigurationBuilder withProtocolTypes(ProtocolTypes protocolTypes) {
        Intrinsics.checkNotNullParameter(protocolTypes, "protocolTypes");
        SteamConfigurationState steamConfigurationState = this.state;
        EnumSet<ProtocolTypes> enumSetOf = EnumSet.of(protocolTypes);
        Intrinsics.checkNotNullExpressionValue(enumSetOf, "of(...)");
        steamConfigurationState.setProtocolTypes(enumSetOf);
        return this;
    }

    @Override // in.dragonbra.javasteam.steam.steamclient.configuration.ISteamConfigurationBuilder
    public ISteamConfigurationBuilder withServerListProvider(IServerListProvider provider) {
        Intrinsics.checkNotNullParameter(provider, "provider");
        this.state.setServerListProvider(provider);
        return this;
    }

    @Override // in.dragonbra.javasteam.steam.steamclient.configuration.ISteamConfigurationBuilder
    public ISteamConfigurationBuilder withUniverse(EUniverse universe) {
        Intrinsics.checkNotNullParameter(universe, "universe");
        this.state.setUniverse(universe);
        return this;
    }

    @Override // in.dragonbra.javasteam.steam.steamclient.configuration.ISteamConfigurationBuilder
    public ISteamConfigurationBuilder withWebAPIBaseAddress(String baseAddress) {
        Intrinsics.checkNotNullParameter(baseAddress, "baseAddress");
        this.state.setWebAPIBaseAddress(baseAddress);
        return this;
    }

    @Override // in.dragonbra.javasteam.steam.steamclient.configuration.ISteamConfigurationBuilder
    public ISteamConfigurationBuilder withWebAPIKey(String webApiKey) {
        Intrinsics.checkNotNullParameter(webApiKey, "webApiKey");
        this.state.setWebAPIKey(webApiKey);
        return this;
    }

    /* JADX INFO: compiled from: SteamConfigurationBuilder.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final SteamConfigurationState createDefaultState() {
            IConnectionFactory DEFAULT = IConnectionFactory.DEFAULT;
            Intrinsics.checkNotNullExpressionValue(DEFAULT, "DEFAULT");
            EnumSet enumSetOf = EnumSet.of(EClientPersonaStateFlag.PlayerName, EClientPersonaStateFlag.Presence, EClientPersonaStateFlag.SourceID, EClientPersonaStateFlag.GameExtraInfo, EClientPersonaStateFlag.LastSeen);
            Intrinsics.checkNotNullExpressionValue(enumSetOf, "of(...)");
            OkHttpClient okHttpClient = new OkHttpClient();
            EnumSet enumSetOf2 = EnumSet.of(ProtocolTypes.TCP, ProtocolTypes.WEB_SOCKET);
            Intrinsics.checkNotNullExpressionValue(enumSetOf2, "of(...)");
            return new SteamConfigurationState(DEFAULT, true, 0, 5000L, enumSetOf, okHttpClient, enumSetOf2, new MemoryServerListProvider(), EUniverse.Public, WebAPI.DEFAULT_BASE_ADDRESS, null);
        }
    }
}
