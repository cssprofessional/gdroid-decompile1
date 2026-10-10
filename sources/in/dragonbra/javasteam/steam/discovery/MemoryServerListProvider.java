package in.dragonbra.javasteam.steam.discovery;

import java.time.Instant;
import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: MemoryServerListProvider.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class MemoryServerListProvider implements IServerListProvider {
    private Instant lastUpdated;
    private List<ServerRecord> servers = CollectionsKt__CollectionsKt.emptyList();

    public MemoryServerListProvider() {
        Instant MIN = Instant.MIN;
        Intrinsics.checkNotNullExpressionValue(MIN, "MIN");
        this.lastUpdated = MIN;
    }

    @Override // in.dragonbra.javasteam.steam.discovery.IServerListProvider
    public Instant getLastServerListRefresh() {
        return this.lastUpdated;
    }

    @Override // in.dragonbra.javasteam.steam.discovery.IServerListProvider
    public List<ServerRecord> fetchServerList() {
        return this.servers;
    }

    @Override // in.dragonbra.javasteam.steam.discovery.IServerListProvider
    public void updateServerList(List<ServerRecord> endpoints) {
        Intrinsics.checkNotNullParameter(endpoints, "endpoints");
        this.servers = endpoints;
        Instant instantNow = Instant.now();
        Intrinsics.checkNotNullExpressionValue(instantNow, "now(...)");
        this.lastUpdated = instantNow;
    }
}
