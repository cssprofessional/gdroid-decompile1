package in.dragonbra.javasteam.steam.discovery;

import in.dragonbra.javasteam.networking.steam3.ProtocolTypes;
import in.dragonbra.javasteam.steam.discovery.ServerRecord;
import in.dragonbra.javasteam.steam.steamclient.configuration.SteamConfiguration;
import in.dragonbra.javasteam.steam.webapi.SteamDirectory;
import in.dragonbra.javasteam.util.log.LogManager;
import in.dragonbra.javasteam.util.log.Logger;
import java.io.IOException;
import java.net.InetSocketAddress;
import java.time.Duration;
import java.time.Instant;
import java.time.temporal.TemporalAmount;
import java.util.ArrayList;
import java.util.EnumSet;
import java.util.Iterator;
import java.util.List;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Pair;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.comparisons.ComparisonsKt__ComparisonsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.sequences.SequencesKt___SequencesKt;

/* JADX INFO: compiled from: SmartCMServerList.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class SmartCMServerList {
    private Duration badConnectionMemoryTimeSpan;
    private final SteamConfiguration configuration;
    private Duration serverListBeforeRefreshTimeSpan;
    private final List<ServerInfo> servers;
    private Instant serversLastRefresh;
    public static final Companion Companion = new Companion(null);
    private static final Logger logger = LogManager.getLogger(SmartCMServerList.class);
    private static String defaultServerWebSocket = "cmp1-sea1.steamserver.net:443";
    private static String defaultServerNetFilter = "ext1-sea1.steamserver.net:27017";

    /* JADX INFO: compiled from: SmartCMServerList.kt */
    public static final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[ServerQuality.values().length];
            try {
                iArr[ServerQuality.GOOD.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ServerQuality.BAD.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public static /* synthetic */ void getBadConnectionMemoryTimeSpan$annotations() {
    }

    public static final String getDefaultServerNetFilter() {
        return Companion.getDefaultServerNetFilter();
    }

    public static final String getDefaultServerWebSocket() {
        return Companion.getDefaultServerWebSocket();
    }

    public static /* synthetic */ void getServerListBeforeRefreshTimeSpan$annotations() {
    }

    public static final void setDefaultServerNetFilter(String str) {
        Companion.setDefaultServerNetFilter(str);
    }

    public static final void setDefaultServerWebSocket(String str) {
        Companion.setDefaultServerWebSocket(str);
    }

    public final void replaceList(List<ServerRecord> endpointList) {
        Intrinsics.checkNotNullParameter(endpointList, "endpointList");
        replaceList$default(this, endpointList, false, null, 6, null);
    }

    public final void replaceList(List<ServerRecord> endpointList, boolean z) {
        Intrinsics.checkNotNullParameter(endpointList, "endpointList");
        replaceList$default(this, endpointList, z, null, 4, null);
    }

    public SmartCMServerList(SteamConfiguration configuration) {
        Intrinsics.checkNotNullParameter(configuration, "configuration");
        this.configuration = configuration;
        this.servers = new ArrayList();
        Instant MIN = Instant.MIN;
        Intrinsics.checkNotNullExpressionValue(MIN, "MIN");
        this.serversLastRefresh = MIN;
        Duration durationOfDays = Duration.ofDays(7L);
        Intrinsics.checkNotNullExpressionValue(durationOfDays, "ofDays(...)");
        this.serverListBeforeRefreshTimeSpan = durationOfDays;
        Duration durationOfMinutes = Duration.ofMinutes(5L);
        Intrinsics.checkNotNullExpressionValue(durationOfMinutes, "ofMinutes(...)");
        this.badConnectionMemoryTimeSpan = durationOfMinutes;
    }

    /* JADX INFO: compiled from: SmartCMServerList.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static /* synthetic */ void getDefaultServerNetFilter$annotations() {
        }

        public static /* synthetic */ void getDefaultServerWebSocket$annotations() {
        }

        private Companion() {
        }

        public final String getDefaultServerWebSocket() {
            return SmartCMServerList.defaultServerWebSocket;
        }

        public final void setDefaultServerWebSocket(String str) {
            Intrinsics.checkNotNullParameter(str, "<set-?>");
            SmartCMServerList.defaultServerWebSocket = str;
        }

        public final String getDefaultServerNetFilter() {
            return SmartCMServerList.defaultServerNetFilter;
        }

        public final void setDefaultServerNetFilter(String str) {
            Intrinsics.checkNotNullParameter(str, "<set-?>");
            SmartCMServerList.defaultServerNetFilter = str;
        }
    }

    public final Duration getServerListBeforeRefreshTimeSpan() {
        return this.serverListBeforeRefreshTimeSpan;
    }

    public final void setServerListBeforeRefreshTimeSpan(Duration duration) {
        Intrinsics.checkNotNullParameter(duration, "<set-?>");
        this.serverListBeforeRefreshTimeSpan = duration;
    }

    public final Duration getBadConnectionMemoryTimeSpan() {
        return this.badConnectionMemoryTimeSpan;
    }

    public final void setBadConnectionMemoryTimeSpan(Duration duration) {
        Intrinsics.checkNotNullParameter(duration, "<set-?>");
        this.badConnectionMemoryTimeSpan = duration;
    }

    private final void startFetchingServers() throws IOException {
        if (!this.servers.isEmpty()) {
            if (Duration.between(this.serversLastRefresh, Instant.now()).compareTo(this.serverListBeforeRefreshTimeSpan) >= 0) {
                resolveServerList(true);
                return;
            }
            return;
        }
        resolveServerList$default(this, false, 1, null);
    }

    public static /* synthetic */ void resolveServerList$default(SmartCMServerList smartCMServerList, boolean z, int i, Object obj) throws IOException {
        if ((i & 1) != 0) {
            z = false;
        }
        smartCMServerList.resolveServerList(z);
    }

    private final void resolveServerList(boolean z) throws IOException {
        boolean z2;
        Instant lastServerListRefresh = this.configuration.getServerListProvider().getLastServerListRefresh();
        if (!z && Duration.between(lastServerListRefresh, Instant.now()).compareTo(this.serverListBeforeRefreshTimeSpan) >= 0) {
            z = true;
        }
        if (z && this.configuration.isAllowDirectoryFetch()) {
            Logger logger2 = logger;
            Logger.debug$default(logger2, "Querying SteamDirectory for a fresh server list", null, 2, null);
            List<ServerRecord> listLoad$default = SteamDirectory.load$default(this.configuration, null, 2, null);
            if (!listLoad$default.isEmpty()) {
                Logger.debug$default(logger2, "Resolved " + listLoad$default.size() + " servers from SteamDirectory", null, 2, null);
                replaceList(listLoad$default, true, Instant.now());
                return;
            }
            Logger.debug$default(logger2, "Could not query SteamDirectory, falling back to provider", null, 2, null);
            z2 = true;
        } else {
            Logger.debug$default(logger, "Resolving server list using the provider", null, 2, null);
            z2 = false;
        }
        List<ServerRecord> list = CollectionsKt___CollectionsKt.toList(this.configuration.getServerListProvider().fetchServerList());
        if (!list.isEmpty()) {
            Logger.debug$default(logger, "Resolved " + list.size() + " servers from the provider", null, 2, null);
            replaceList(list, false, lastServerListRefresh);
            return;
        }
        if (!this.configuration.isAllowDirectoryFetch()) {
            Logger.debug$default(logger, "Server list provider had no entries, and SteamConfiguration.isAllowDirectoryFetch is false", null, 2, null);
            replaceList(CollectionsKt__CollectionsKt.emptyList(), false, Instant.MIN);
            return;
        }
        if (!z2) {
            Logger logger3 = logger;
            Logger.debug$default(logger3, "Server list provider had no entries, will query SteamDirectory", null, 2, null);
            List<ServerRecord> listLoad$default2 = SteamDirectory.load$default(this.configuration, null, 2, null);
            if (!listLoad$default2.isEmpty()) {
                Logger.debug$default(logger3, "Resolved " + listLoad$default2.size() + " servers from SteamDirectory", null, 2, null);
                replaceList(listLoad$default2, true, Instant.now());
                return;
            }
        }
        Logger.debug$default(logger, "Server list provider had no entries, SteamDirectory failed, falling back to default servers", null, 2, null);
        ServerRecord.Companion companion = ServerRecord.Companion;
        replaceList(CollectionsKt__CollectionsKt.listOfNotNull((Object[]) new ServerRecord[]{companion.createWebSocketServer(defaultServerWebSocket), companion.tryCreateSocketServer(defaultServerNetFilter)}), false, Instant.MIN);
    }

    public final void resetOldScores() {
        Instant instantMinus = Instant.now().minus((TemporalAmount) this.badConnectionMemoryTimeSpan);
        for (ServerInfo serverInfo : this.servers) {
            Instant lastBadConnectionTimeUtc = serverInfo.getLastBadConnectionTimeUtc();
            if (lastBadConnectionTimeUtc != null && lastBadConnectionTimeUtc.isBefore(instantMinus)) {
                serverInfo.setLastBadConnectionTimeUtc(null);
            }
        }
    }

    public static /* synthetic */ void replaceList$default(SmartCMServerList smartCMServerList, List list, boolean z, Instant instant, int i, Object obj) {
        if ((i & 2) != 0) {
            z = true;
        }
        if ((i & 4) != 0) {
            instant = null;
        }
        smartCMServerList.replaceList(list, z, instant);
    }

    public final void replaceList(List<ServerRecord> endpointList, boolean z, Instant instant) {
        Intrinsics.checkNotNullParameter(endpointList, "endpointList");
        List<ServerRecord> listDistinct = CollectionsKt___CollectionsKt.distinct(endpointList);
        if (instant == null) {
            instant = Instant.now();
            Intrinsics.checkNotNullExpressionValue(instant, "now(...)");
        }
        this.serversLastRefresh = instant;
        this.servers.clear();
        Iterator it = listDistinct.iterator();
        while (it.hasNext()) {
            addCore((ServerRecord) it.next());
        }
        if (z) {
            this.configuration.getServerListProvider().updateServerList(listDistinct);
        }
    }

    private final void addCore(ServerRecord serverRecord) {
        for (ProtocolTypes protocolTypes : serverRecord.getProtocolTypes()) {
            Intrinsics.checkNotNull(protocolTypes);
            this.servers.add(new ServerInfo(serverRecord, protocolTypes));
        }
    }

    public final void resetBadServers() {
        Iterator<T> it = this.servers.iterator();
        while (it.hasNext()) {
            ((ServerInfo) it.next()).setLastBadConnectionTimeUtc(null);
        }
    }

    public final boolean tryMark(InetSocketAddress inetSocketAddress, ProtocolTypes protocolTypes, ServerQuality quality) {
        Intrinsics.checkNotNullParameter(quality, "quality");
        return tryMark(inetSocketAddress, protocolTypes != null ? EnumSet.of(protocolTypes) : null, quality);
    }

    public final boolean tryMark(InetSocketAddress inetSocketAddress, EnumSet<ProtocolTypes> enumSet, ServerQuality quality) {
        ArrayList<ServerInfo> arrayList;
        Intrinsics.checkNotNullParameter(quality, "quality");
        if (inetSocketAddress == null || enumSet == null) {
            Logger.error$default(logger, "Couldn't mark an endpoint " + quality.name() + ", skipping it", null, 2, null);
            return false;
        }
        if (quality == ServerQuality.GOOD) {
            List<ServerInfo> list = this.servers;
            arrayList = new ArrayList();
            for (Object obj : list) {
                ServerInfo serverInfo = (ServerInfo) obj;
                if (Intrinsics.areEqual(serverInfo.getRecord().getEndpoint(), inetSocketAddress) && enumSet.contains(serverInfo.getProtocol())) {
                    arrayList.add(obj);
                }
            }
        } else {
            String hostString = inetSocketAddress.getHostString();
            List<ServerInfo> list2 = this.servers;
            arrayList = new ArrayList();
            for (Object obj2 : list2) {
                if (Intrinsics.areEqual(((ServerInfo) obj2).getRecord().getHost(), hostString)) {
                    arrayList.add(obj2);
                }
            }
        }
        if (arrayList.isEmpty()) {
            return false;
        }
        for (ServerInfo serverInfo2 : arrayList) {
            Logger.debug$default(logger, "Marking " + serverInfo2.getRecord().getEndpoint() + " - " + serverInfo2.getProtocol() + " as " + quality, null, 2, null);
            markServerCore(serverInfo2, quality);
        }
        return true;
    }

    private final void markServerCore(ServerInfo serverInfo, ServerQuality serverQuality) {
        int i = WhenMappings.$EnumSwitchMapping$0[serverQuality.ordinal()];
        if (i == 1) {
            serverInfo.setLastBadConnectionTimeUtc(null);
        } else {
            if (i != 2) {
                throw new NoWhenBranchMatchedException();
            }
            serverInfo.setLastBadConnectionTimeUtc(Instant.now());
        }
    }

    private final ServerRecord getNextServerCandidateInternal(final EnumSet<ProtocolTypes> enumSet) {
        resetOldScores();
        ServerInfo serverInfo = (ServerInfo) SequencesKt___SequencesKt.firstOrNull(SequencesKt___SequencesKt.map(SequencesKt___SequencesKt.sortedWith(SequencesKt___SequencesKt.mapIndexed(SequencesKt___SequencesKt.filter(CollectionsKt___CollectionsKt.asSequence(this.servers), new Function1() { // from class: in.dragonbra.javasteam.steam.discovery.SmartCMServerList$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return Boolean.valueOf(SmartCMServerList.getNextServerCandidateInternal$lambda$0(enumSet, (ServerInfo) obj));
            }
        }), new Function2() { // from class: in.dragonbra.javasteam.steam.discovery.SmartCMServerList$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return SmartCMServerList.getNextServerCandidateInternal$lambda$1(((Integer) obj).intValue(), (ServerInfo) obj2);
            }
        }), ComparisonsKt__ComparisonsKt.compareBy(new Function1() { // from class: in.dragonbra.javasteam.steam.discovery.SmartCMServerList$$ExternalSyntheticLambda2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return SmartCMServerList.getNextServerCandidateInternal$lambda$2((Pair) obj);
            }
        }, new Function1() { // from class: in.dragonbra.javasteam.steam.discovery.SmartCMServerList$$ExternalSyntheticLambda3
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return SmartCMServerList.getNextServerCandidateInternal$lambda$3((Pair) obj);
            }
        })), new Function1() { // from class: in.dragonbra.javasteam.steam.discovery.SmartCMServerList$$ExternalSyntheticLambda4
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return SmartCMServerList.getNextServerCandidateInternal$lambda$4((Pair) obj);
            }
        }));
        if (serverInfo == null) {
            return null;
        }
        Logger.debug$default(logger, "Next server candidate: " + serverInfo.getRecord().getEndpoint() + " (" + serverInfo.getProtocol() + ")", null, 2, null);
        return new ServerRecord(serverInfo.getRecord().getEndpoint(), serverInfo.getProtocol());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean getNextServerCandidateInternal$lambda$0(EnumSet enumSet, ServerInfo it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return enumSet.contains(it.getProtocol());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Pair getNextServerCandidateInternal$lambda$1(int i, ServerInfo server) {
        Intrinsics.checkNotNullParameter(server, "server");
        return TuplesKt.to(server, Integer.valueOf(i));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Comparable getNextServerCandidateInternal$lambda$2(Pair it) {
        Intrinsics.checkNotNullParameter(it, "it");
        Instant lastBadConnectionTimeUtc = ((ServerInfo) it.getFirst()).getLastBadConnectionTimeUtc();
        return lastBadConnectionTimeUtc != null ? lastBadConnectionTimeUtc : Instant.EPOCH;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Comparable getNextServerCandidateInternal$lambda$3(Pair it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (Comparable) it.getSecond();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ServerInfo getNextServerCandidateInternal$lambda$4(Pair it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (ServerInfo) it.getFirst();
    }

    public final ServerRecord getNextServerCandidate(EnumSet<ProtocolTypes> supportedProtocolTypes) {
        Object objM8149constructorimpl;
        Intrinsics.checkNotNullParameter(supportedProtocolTypes, "supportedProtocolTypes");
        try {
            Result.Companion companion = Result.Companion;
            startFetchingServers();
            objM8149constructorimpl = Result.m8149constructorimpl(Unit.INSTANCE);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.Companion;
            objM8149constructorimpl = Result.m8149constructorimpl(ResultKt.createFailure(th));
        }
        Throwable thM8150exceptionOrNullimpl = Result.m8150exceptionOrNullimpl(objM8149constructorimpl);
        if (thM8150exceptionOrNullimpl == null) {
            return getNextServerCandidateInternal(supportedProtocolTypes);
        }
        logger.error("Error while fetching servers", thM8150exceptionOrNullimpl);
        return null;
    }

    public final ServerRecord getNextServerCandidate(ProtocolTypes supportedProtocolTypes) {
        Intrinsics.checkNotNullParameter(supportedProtocolTypes, "supportedProtocolTypes");
        EnumSet<ProtocolTypes> enumSetOf = EnumSet.of(supportedProtocolTypes);
        Intrinsics.checkNotNullExpressionValue(enumSetOf, "of(...)");
        return getNextServerCandidate(enumSetOf);
    }

    public final List<ServerRecord> getAllEndPoints() {
        Object objM8149constructorimpl;
        try {
            Result.Companion companion = Result.Companion;
            startFetchingServers();
            objM8149constructorimpl = Result.m8149constructorimpl(Unit.INSTANCE);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.Companion;
            objM8149constructorimpl = Result.m8149constructorimpl(ResultKt.createFailure(th));
        }
        Throwable thM8150exceptionOrNullimpl = Result.m8150exceptionOrNullimpl(objM8149constructorimpl);
        if (thM8150exceptionOrNullimpl == null) {
            List<ServerInfo> list = this.servers;
            ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10));
            Iterator<T> it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(((ServerInfo) it.next()).getRecord());
            }
            return CollectionsKt___CollectionsKt.distinct(arrayList);
        }
        logger.error("Failed to fetch end points", thM8150exceptionOrNullimpl);
        return CollectionsKt__CollectionsKt.emptyList();
    }

    public final boolean forceRefreshServerList() {
        Object objM8149constructorimpl;
        try {
            Result.Companion companion = Result.Companion;
            resolveServerList(true);
            objM8149constructorimpl = Result.m8149constructorimpl(Unit.INSTANCE);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.Companion;
            objM8149constructorimpl = Result.m8149constructorimpl(ResultKt.createFailure(th));
        }
        Throwable thM8150exceptionOrNullimpl = Result.m8150exceptionOrNullimpl(objM8149constructorimpl);
        if (thM8150exceptionOrNullimpl == null) {
            return true;
        }
        logger.error(thM8150exceptionOrNullimpl);
        return false;
    }
}
