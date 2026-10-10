package in.dragonbra.javasteam.steam.discovery;

import in.dragonbra.javasteam.networking.steam3.ProtocolTypes;
import in.dragonbra.javasteam.util.NetHelpers;
import in.dragonbra.javasteam.util.log.LogManager;
import in.dragonbra.javasteam.util.log.Logger;
import java.net.InetSocketAddress;
import java.util.EnumSet;
import java.util.List;
import java.util.ListIterator;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex;

/* JADX INFO: compiled from: ServerRecord.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class ServerRecord {
    public static final Companion Companion = new Companion(null);
    private static final Logger logger = LogManager.getLogger(ServerRecord.class);
    private final InetSocketAddress endpoint;
    private final String host;
    private final int port;
    private final EnumSet<ProtocolTypes> protocolTypes;

    public /* synthetic */ ServerRecord(InetSocketAddress inetSocketAddress, EnumSet enumSet, DefaultConstructorMarker defaultConstructorMarker) {
        this(inetSocketAddress, (EnumSet<ProtocolTypes>) enumSet);
    }

    public static final ServerRecord createServer(String str, int i, ProtocolTypes protocolTypes) {
        return Companion.createServer(str, i, protocolTypes);
    }

    public static final ServerRecord createServer(String str, int i, EnumSet<ProtocolTypes> enumSet) {
        return Companion.createServer(str, i, enumSet);
    }

    public static final ServerRecord createSocketServer(InetSocketAddress inetSocketAddress) {
        return Companion.createSocketServer(inetSocketAddress);
    }

    public static final ServerRecord createWebSocketServer(String str) {
        return Companion.createWebSocketServer(str);
    }

    public static final ServerRecord tryCreateSocketServer(String str) {
        return Companion.tryCreateSocketServer(str);
    }

    private ServerRecord(InetSocketAddress inetSocketAddress, EnumSet<ProtocolTypes> enumSet) {
        this.endpoint = inetSocketAddress;
        this.protocolTypes = enumSet;
        String hostString = inetSocketAddress.getHostString();
        Intrinsics.checkNotNullExpressionValue(hostString, "getHostString(...)");
        this.host = hostString;
        this.port = inetSocketAddress.getPort();
    }

    public final InetSocketAddress getEndpoint() {
        return this.endpoint;
    }

    public final EnumSet<ProtocolTypes> getProtocolTypes() {
        return this.protocolTypes;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public ServerRecord(InetSocketAddress endpoint, ProtocolTypes protocolTypes) {
        Intrinsics.checkNotNullParameter(endpoint, "endpoint");
        Intrinsics.checkNotNullParameter(protocolTypes, "protocolTypes");
        EnumSet enumSetOf = EnumSet.of(protocolTypes);
        Intrinsics.checkNotNullExpressionValue(enumSetOf, "of(...)");
        this(endpoint, (EnumSet<ProtocolTypes>) enumSetOf);
    }

    public final String getHost() {
        return this.host;
    }

    public final int getPort() {
        return this.port;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof ServerRecord)) {
            return false;
        }
        ServerRecord serverRecord = (ServerRecord) obj;
        return Intrinsics.areEqual(this.endpoint, serverRecord.endpoint) && Intrinsics.areEqual(this.protocolTypes, serverRecord.protocolTypes);
    }

    public int hashCode() {
        return this.protocolTypes.hashCode() ^ this.endpoint.hashCode();
    }

    /* JADX INFO: compiled from: ServerRecord.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final ServerRecord createServer(String host, int i, ProtocolTypes protocolTypes) {
            Intrinsics.checkNotNullParameter(host, "host");
            Intrinsics.checkNotNullParameter(protocolTypes, "protocolTypes");
            EnumSet<ProtocolTypes> enumSetOf = EnumSet.of(protocolTypes);
            Intrinsics.checkNotNullExpressionValue(enumSetOf, "of(...)");
            return createServer(host, i, enumSetOf);
        }

        public final ServerRecord createServer(String host, int i, EnumSet<ProtocolTypes> protocolTypes) {
            Intrinsics.checkNotNullParameter(host, "host");
            Intrinsics.checkNotNullParameter(protocolTypes, "protocolTypes");
            return new ServerRecord(new InetSocketAddress(host, i), protocolTypes, null);
        }

        public final ServerRecord createSocketServer(InetSocketAddress endpoint) {
            Intrinsics.checkNotNullParameter(endpoint, "endpoint");
            EnumSet enumSetOf = EnumSet.of(ProtocolTypes.TCP, ProtocolTypes.UDP);
            Intrinsics.checkNotNullExpressionValue(enumSetOf, "of(...)");
            return new ServerRecord(endpoint, enumSetOf, null);
        }

        public final ServerRecord tryCreateSocketServer(String address) {
            Intrinsics.checkNotNullParameter(address, "address");
            InetSocketAddress inetSocketAddressTryParseIPEndPoint = NetHelpers.tryParseIPEndPoint(address);
            DefaultConstructorMarker defaultConstructorMarker = null;
            if (inetSocketAddressTryParseIPEndPoint == null) {
                Logger.error$default(ServerRecord.logger, "Unable to create socket server for: " + address, null, 2, null);
                return null;
            }
            EnumSet enumSetOf = EnumSet.of(ProtocolTypes.TCP, ProtocolTypes.UDP);
            Intrinsics.checkNotNullExpressionValue(enumSetOf, "of(...)");
            return new ServerRecord(inetSocketAddressTryParseIPEndPoint, enumSetOf, defaultConstructorMarker);
        }

        public final ServerRecord createWebSocketServer(String address) {
            List listEmptyList;
            InetSocketAddress inetSocketAddress;
            Intrinsics.checkNotNullParameter(address, "address");
            List<String> listSplit = new Regex(":").split(address, 0);
            if (!listSplit.isEmpty()) {
                ListIterator<String> listIterator = listSplit.listIterator(listSplit.size());
                while (listIterator.hasPrevious()) {
                    if (listIterator.previous().length() != 0) {
                        listEmptyList = CollectionsKt___CollectionsKt.take(listSplit, listIterator.nextIndex() + 1);
                        break;
                    }
                }
                listEmptyList = CollectionsKt__CollectionsKt.emptyList();
            } else {
                listEmptyList = CollectionsKt__CollectionsKt.emptyList();
            }
            String[] strArr = (String[]) listEmptyList.toArray(new String[0]);
            if (strArr.length > 1) {
                inetSocketAddress = new InetSocketAddress(strArr[0], Integer.parseInt(strArr[1]));
            } else {
                inetSocketAddress = new InetSocketAddress(address, 443);
            }
            return new ServerRecord(inetSocketAddress, ProtocolTypes.WEB_SOCKET);
        }
    }
}
