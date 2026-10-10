package in.dragonbra.javasteam.steam.cdn;

import java.net.InetSocketAddress;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: Server.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class Server {
    public static final Companion Companion = new Companion(null);
    private int cellId;
    private String host;
    private int load;
    private int numEntries;
    private int port;
    private String proxyRequestPathTemplate;
    private int sourceId;
    private boolean steamChinaOnly;
    private String type;
    private boolean useAsProxy;
    private String vHost;
    private float weightedLoad;
    private ConnectionProtocol protocol = ConnectionProtocol.HTTP;
    private int[] allowedAppIds = new int[0];

    public static final Server fromHostAndPort(String str, int i) {
        return Companion.fromHostAndPort(str, i);
    }

    public static final Server fromInetSocketAddress(InetSocketAddress inetSocketAddress) {
        return Companion.fromInetSocketAddress(inetSocketAddress);
    }

    /* JADX INFO: compiled from: Server.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final Server fromInetSocketAddress(InetSocketAddress endPoint) {
            Intrinsics.checkNotNullParameter(endPoint, "endPoint");
            Server server = new Server();
            server.setProtocol$javasteam(endPoint.getPort() == 443 ? ConnectionProtocol.HTTPS : ConnectionProtocol.HTTP);
            server.setHost$javasteam(endPoint.getAddress().getHostAddress());
            server.setVHost$javasteam(endPoint.getAddress().getHostAddress());
            server.setPort$javasteam(endPoint.getPort());
            return server;
        }

        public final Server fromHostAndPort(String hostname, int i) {
            Intrinsics.checkNotNullParameter(hostname, "hostname");
            Server server = new Server();
            server.setProtocol$javasteam(i == 443 ? ConnectionProtocol.HTTPS : ConnectionProtocol.HTTP);
            server.setHost$javasteam(hostname);
            server.setVHost$javasteam(hostname);
            server.setPort$javasteam(i);
            return server;
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* JADX INFO: compiled from: Server.kt */
    public static final class ConnectionProtocol {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ ConnectionProtocol[] $VALUES;
        public static final ConnectionProtocol HTTP = new ConnectionProtocol("HTTP", 0);
        public static final ConnectionProtocol HTTPS = new ConnectionProtocol("HTTPS", 1);

        private static final /* synthetic */ ConnectionProtocol[] $values() {
            return new ConnectionProtocol[]{HTTP, HTTPS};
        }

        public static EnumEntries<ConnectionProtocol> getEntries() {
            return $ENTRIES;
        }

        public static ConnectionProtocol valueOf(String str) {
            return (ConnectionProtocol) Enum.valueOf(ConnectionProtocol.class, str);
        }

        public static ConnectionProtocol[] values() {
            return (ConnectionProtocol[]) $VALUES.clone();
        }

        private ConnectionProtocol(String str, int i) {
        }

        static {
            ConnectionProtocol[] connectionProtocolArr$values = $values();
            $VALUES = connectionProtocolArr$values;
            $ENTRIES = EnumEntriesKt.enumEntries(connectionProtocolArr$values);
        }
    }

    public final ConnectionProtocol getProtocol() {
        return this.protocol;
    }

    public final void setProtocol$javasteam(ConnectionProtocol connectionProtocol) {
        Intrinsics.checkNotNullParameter(connectionProtocol, "<set-?>");
        this.protocol = connectionProtocol;
    }

    public final String getHost() {
        return this.host;
    }

    public final void setHost$javasteam(String str) {
        this.host = str;
    }

    public final String getVHost() {
        return this.vHost;
    }

    public final void setVHost$javasteam(String str) {
        this.vHost = str;
    }

    public final int getPort() {
        return this.port;
    }

    public final void setPort$javasteam(int i) {
        this.port = i;
    }

    public final String getType() {
        return this.type;
    }

    public final void setType$javasteam(String str) {
        this.type = str;
    }

    public final int getSourceId() {
        return this.sourceId;
    }

    public final void setSourceId$javasteam(int i) {
        this.sourceId = i;
    }

    public final int getCellId() {
        return this.cellId;
    }

    public final void setCellId$javasteam(int i) {
        this.cellId = i;
    }

    public final int getLoad() {
        return this.load;
    }

    public final void setLoad$javasteam(int i) {
        this.load = i;
    }

    public final float getWeightedLoad() {
        return this.weightedLoad;
    }

    public final void setWeightedLoad$javasteam(float f) {
        this.weightedLoad = f;
    }

    public final int getNumEntries() {
        return this.numEntries;
    }

    public final void setNumEntries$javasteam(int i) {
        this.numEntries = i;
    }

    public final boolean getSteamChinaOnly() {
        return this.steamChinaOnly;
    }

    public final void setSteamChinaOnly$javasteam(boolean z) {
        this.steamChinaOnly = z;
    }

    public final boolean getUseAsProxy() {
        return this.useAsProxy;
    }

    public final void setUseAsProxy$javasteam(boolean z) {
        this.useAsProxy = z;
    }

    public final String getProxyRequestPathTemplate() {
        return this.proxyRequestPathTemplate;
    }

    public final void setProxyRequestPathTemplate$javasteam(String str) {
        this.proxyRequestPathTemplate = str;
    }

    public final int[] getAllowedAppIds() {
        return this.allowedAppIds;
    }

    public final void setAllowedAppIds$javasteam(int[] iArr) {
        Intrinsics.checkNotNullParameter(iArr, "<set-?>");
        this.allowedAppIds = iArr;
    }

    public String toString() {
        return this.host + ":" + this.port + " (" + this.type + ")";
    }
}
