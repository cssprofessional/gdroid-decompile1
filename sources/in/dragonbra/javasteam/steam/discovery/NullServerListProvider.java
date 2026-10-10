package in.dragonbra.javasteam.steam.discovery;

import java.time.Instant;
import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: NullServerListProvider.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class NullServerListProvider implements IServerListProvider {
    @Override // in.dragonbra.javasteam.steam.discovery.IServerListProvider
    public void updateServerList(List<ServerRecord> endpoints) {
        Intrinsics.checkNotNullParameter(endpoints, "endpoints");
    }

    @Override // in.dragonbra.javasteam.steam.discovery.IServerListProvider
    public Instant getLastServerListRefresh() {
        Instant MIN = Instant.MIN;
        Intrinsics.checkNotNullExpressionValue(MIN, "MIN");
        return MIN;
    }

    @Override // in.dragonbra.javasteam.steam.discovery.IServerListProvider
    public List<ServerRecord> fetchServerList() {
        return CollectionsKt__CollectionsKt.emptyList();
    }
}
