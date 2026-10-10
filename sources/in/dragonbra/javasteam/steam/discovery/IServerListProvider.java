package in.dragonbra.javasteam.steam.discovery;

import java.time.Instant;
import java.util.List;

/* JADX INFO: compiled from: IServerListProvider.kt */
/* JADX INFO: loaded from: classes2.dex */
public interface IServerListProvider {
    List<ServerRecord> fetchServerList();

    Instant getLastServerListRefresh();

    void updateServerList(List<ServerRecord> list);
}
