package in.dragonbra.javasteam.steam.steamclient.configuration;

import in.dragonbra.javasteam.enums.EClientPersonaStateFlag;
import in.dragonbra.javasteam.enums.EUniverse;
import in.dragonbra.javasteam.networking.steam3.IConnectionFactory;
import in.dragonbra.javasteam.networking.steam3.ProtocolTypes;
import in.dragonbra.javasteam.steam.discovery.IServerListProvider;
import in.dragonbra.javasteam.steam.discovery.SmartCMServerList;
import in.dragonbra.javasteam.steam.webapi.WebAPI;
import in.dragonbra.javasteam.util.compat.Consumer;
import java.util.EnumSet;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.OkHttpClient;

/* JADX INFO: compiled from: SteamConfiguration.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class SteamConfiguration {
    public static final Companion Companion = new Companion(null);
    private final SmartCMServerList serverList;
    private final SteamConfigurationState state;

    public static final SteamConfiguration create(Consumer<ISteamConfigurationBuilder> consumer) {
        return Companion.create(consumer);
    }

    public static final SteamConfiguration createDefault() {
        return Companion.createDefault();
    }

    public SteamConfiguration(SteamConfigurationState state) {
        Intrinsics.checkNotNullParameter(state, "state");
        this.state = state;
        this.serverList = new SmartCMServerList(this);
    }

    public final IConnectionFactory getConnectionFactory() {
        return this.state.getConnectionFactory();
    }

    public final boolean isAllowDirectoryFetch() {
        return this.state.isAllowDirectoryFetch();
    }

    public final int getCellID() {
        return this.state.getCellID();
    }

    public final long getConnectionTimeout() {
        return this.state.getConnectionTimeout();
    }

    public final OkHttpClient getHttpClient() {
        return this.state.getHttpClient();
    }

    public final EnumSet<EClientPersonaStateFlag> getDefaultPersonaStateFlags() {
        return this.state.getDefaultPersonaStateFlags();
    }

    public final EnumSet<ProtocolTypes> getProtocolTypes() {
        return this.state.getProtocolTypes();
    }

    public final IServerListProvider getServerListProvider() {
        return this.state.getServerListProvider();
    }

    public final EUniverse getUniverse() {
        return this.state.getUniverse();
    }

    public final String getWebAPIBaseAddress() {
        return this.state.getWebAPIBaseAddress();
    }

    public final String getWebAPIKey() {
        return this.state.getWebAPIKey();
    }

    public final SmartCMServerList getServerList() {
        return this.serverList;
    }

    public final WebAPI getWebAPI(String str) {
        Intrinsics.checkNotNullParameter(str, "interface");
        return new WebAPI(getHttpClient(), getWebAPIBaseAddress(), str, getWebAPIKey());
    }

    /* JADX INFO: compiled from: SteamConfiguration.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final SteamConfiguration create(Consumer<ISteamConfigurationBuilder> configurator) {
            Intrinsics.checkNotNullParameter(configurator, "configurator");
            SteamConfigurationBuilder steamConfigurationBuilder = new SteamConfigurationBuilder();
            configurator.accept(steamConfigurationBuilder);
            return steamConfigurationBuilder.build();
        }

        public final SteamConfiguration createDefault() {
            return new SteamConfiguration(SteamConfigurationBuilder.Companion.createDefaultState());
        }
    }
}
