package in.dragonbra.javasteam.steam.steamclient.configuration;

import in.dragonbra.javasteam.enums.EClientPersonaStateFlag;
import in.dragonbra.javasteam.enums.EUniverse;
import in.dragonbra.javasteam.networking.steam3.IConnectionFactory;
import in.dragonbra.javasteam.networking.steam3.ProtocolTypes;
import in.dragonbra.javasteam.steam.discovery.IServerListProvider;
import java.util.EnumSet;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.OkHttpClient;

/* JADX INFO: compiled from: SteamConfigurationState.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class SteamConfigurationState {
    private int cellID;
    private IConnectionFactory connectionFactory;
    private long connectionTimeout;
    private EnumSet<EClientPersonaStateFlag> defaultPersonaStateFlags;
    private OkHttpClient httpClient;
    private boolean isAllowDirectoryFetch;
    private EnumSet<ProtocolTypes> protocolTypes;
    private IServerListProvider serverListProvider;
    private EUniverse universe;
    private String webAPIBaseAddress;
    private String webAPIKey;

    public final IConnectionFactory component1() {
        return this.connectionFactory;
    }

    public final String component10() {
        return this.webAPIBaseAddress;
    }

    public final String component11() {
        return this.webAPIKey;
    }

    public final boolean component2() {
        return this.isAllowDirectoryFetch;
    }

    public final int component3() {
        return this.cellID;
    }

    public final long component4() {
        return this.connectionTimeout;
    }

    public final EnumSet<EClientPersonaStateFlag> component5() {
        return this.defaultPersonaStateFlags;
    }

    public final OkHttpClient component6() {
        return this.httpClient;
    }

    public final EnumSet<ProtocolTypes> component7() {
        return this.protocolTypes;
    }

    public final IServerListProvider component8() {
        return this.serverListProvider;
    }

    public final EUniverse component9() {
        return this.universe;
    }

    public final SteamConfigurationState copy(IConnectionFactory connectionFactory, boolean z, int i, long j, EnumSet<EClientPersonaStateFlag> defaultPersonaStateFlags, OkHttpClient httpClient, EnumSet<ProtocolTypes> protocolTypes, IServerListProvider serverListProvider, EUniverse universe, String webAPIBaseAddress, String str) {
        Intrinsics.checkNotNullParameter(connectionFactory, "connectionFactory");
        Intrinsics.checkNotNullParameter(defaultPersonaStateFlags, "defaultPersonaStateFlags");
        Intrinsics.checkNotNullParameter(httpClient, "httpClient");
        Intrinsics.checkNotNullParameter(protocolTypes, "protocolTypes");
        Intrinsics.checkNotNullParameter(serverListProvider, "serverListProvider");
        Intrinsics.checkNotNullParameter(universe, "universe");
        Intrinsics.checkNotNullParameter(webAPIBaseAddress, "webAPIBaseAddress");
        return new SteamConfigurationState(connectionFactory, z, i, j, defaultPersonaStateFlags, httpClient, protocolTypes, serverListProvider, universe, webAPIBaseAddress, str);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SteamConfigurationState)) {
            return false;
        }
        SteamConfigurationState steamConfigurationState = (SteamConfigurationState) obj;
        return Intrinsics.areEqual(this.connectionFactory, steamConfigurationState.connectionFactory) && this.isAllowDirectoryFetch == steamConfigurationState.isAllowDirectoryFetch && this.cellID == steamConfigurationState.cellID && this.connectionTimeout == steamConfigurationState.connectionTimeout && Intrinsics.areEqual(this.defaultPersonaStateFlags, steamConfigurationState.defaultPersonaStateFlags) && Intrinsics.areEqual(this.httpClient, steamConfigurationState.httpClient) && Intrinsics.areEqual(this.protocolTypes, steamConfigurationState.protocolTypes) && Intrinsics.areEqual(this.serverListProvider, steamConfigurationState.serverListProvider) && this.universe == steamConfigurationState.universe && Intrinsics.areEqual(this.webAPIBaseAddress, steamConfigurationState.webAPIBaseAddress) && Intrinsics.areEqual(this.webAPIKey, steamConfigurationState.webAPIKey);
    }

    public int hashCode() {
        int iHashCode = ((((((((((((((((((this.connectionFactory.hashCode() * 31) + Boolean.hashCode(this.isAllowDirectoryFetch)) * 31) + Integer.hashCode(this.cellID)) * 31) + Long.hashCode(this.connectionTimeout)) * 31) + this.defaultPersonaStateFlags.hashCode()) * 31) + this.httpClient.hashCode()) * 31) + this.protocolTypes.hashCode()) * 31) + this.serverListProvider.hashCode()) * 31) + this.universe.hashCode()) * 31) + this.webAPIBaseAddress.hashCode()) * 31;
        String str = this.webAPIKey;
        return iHashCode + (str == null ? 0 : str.hashCode());
    }

    public String toString() {
        return "SteamConfigurationState(connectionFactory=" + this.connectionFactory + ", isAllowDirectoryFetch=" + this.isAllowDirectoryFetch + ", cellID=" + this.cellID + ", connectionTimeout=" + this.connectionTimeout + ", defaultPersonaStateFlags=" + this.defaultPersonaStateFlags + ", httpClient=" + this.httpClient + ", protocolTypes=" + this.protocolTypes + ", serverListProvider=" + this.serverListProvider + ", universe=" + this.universe + ", webAPIBaseAddress=" + this.webAPIBaseAddress + ", webAPIKey=" + this.webAPIKey + ")";
    }

    public SteamConfigurationState(IConnectionFactory connectionFactory, boolean z, int i, long j, EnumSet<EClientPersonaStateFlag> defaultPersonaStateFlags, OkHttpClient httpClient, EnumSet<ProtocolTypes> protocolTypes, IServerListProvider serverListProvider, EUniverse universe, String webAPIBaseAddress, String str) {
        Intrinsics.checkNotNullParameter(connectionFactory, "connectionFactory");
        Intrinsics.checkNotNullParameter(defaultPersonaStateFlags, "defaultPersonaStateFlags");
        Intrinsics.checkNotNullParameter(httpClient, "httpClient");
        Intrinsics.checkNotNullParameter(protocolTypes, "protocolTypes");
        Intrinsics.checkNotNullParameter(serverListProvider, "serverListProvider");
        Intrinsics.checkNotNullParameter(universe, "universe");
        Intrinsics.checkNotNullParameter(webAPIBaseAddress, "webAPIBaseAddress");
        this.connectionFactory = connectionFactory;
        this.isAllowDirectoryFetch = z;
        this.cellID = i;
        this.connectionTimeout = j;
        this.defaultPersonaStateFlags = defaultPersonaStateFlags;
        this.httpClient = httpClient;
        this.protocolTypes = protocolTypes;
        this.serverListProvider = serverListProvider;
        this.universe = universe;
        this.webAPIBaseAddress = webAPIBaseAddress;
        this.webAPIKey = str;
    }

    public final IConnectionFactory getConnectionFactory() {
        return this.connectionFactory;
    }

    public final void setConnectionFactory(IConnectionFactory iConnectionFactory) {
        Intrinsics.checkNotNullParameter(iConnectionFactory, "<set-?>");
        this.connectionFactory = iConnectionFactory;
    }

    public final boolean isAllowDirectoryFetch() {
        return this.isAllowDirectoryFetch;
    }

    public final void setAllowDirectoryFetch(boolean z) {
        this.isAllowDirectoryFetch = z;
    }

    public final int getCellID() {
        return this.cellID;
    }

    public final void setCellID(int i) {
        this.cellID = i;
    }

    public final long getConnectionTimeout() {
        return this.connectionTimeout;
    }

    public final void setConnectionTimeout(long j) {
        this.connectionTimeout = j;
    }

    public final EnumSet<EClientPersonaStateFlag> getDefaultPersonaStateFlags() {
        return this.defaultPersonaStateFlags;
    }

    public final void setDefaultPersonaStateFlags(EnumSet<EClientPersonaStateFlag> enumSet) {
        Intrinsics.checkNotNullParameter(enumSet, "<set-?>");
        this.defaultPersonaStateFlags = enumSet;
    }

    public final OkHttpClient getHttpClient() {
        return this.httpClient;
    }

    public final void setHttpClient(OkHttpClient okHttpClient) {
        Intrinsics.checkNotNullParameter(okHttpClient, "<set-?>");
        this.httpClient = okHttpClient;
    }

    public final EnumSet<ProtocolTypes> getProtocolTypes() {
        return this.protocolTypes;
    }

    public final void setProtocolTypes(EnumSet<ProtocolTypes> enumSet) {
        Intrinsics.checkNotNullParameter(enumSet, "<set-?>");
        this.protocolTypes = enumSet;
    }

    public final IServerListProvider getServerListProvider() {
        return this.serverListProvider;
    }

    public final void setServerListProvider(IServerListProvider iServerListProvider) {
        Intrinsics.checkNotNullParameter(iServerListProvider, "<set-?>");
        this.serverListProvider = iServerListProvider;
    }

    public final EUniverse getUniverse() {
        return this.universe;
    }

    public final void setUniverse(EUniverse eUniverse) {
        Intrinsics.checkNotNullParameter(eUniverse, "<set-?>");
        this.universe = eUniverse;
    }

    public final String getWebAPIBaseAddress() {
        return this.webAPIBaseAddress;
    }

    public final void setWebAPIBaseAddress(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.webAPIBaseAddress = str;
    }

    public final String getWebAPIKey() {
        return this.webAPIKey;
    }

    public final void setWebAPIKey(String str) {
        this.webAPIKey = str;
    }
}
