package in.dragonbra.javasteam.steam.handlers.steamclientcommunication;

import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__IndentKt;

/* JADX INFO: compiled from: ClientAppList.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class ClientAppList {
    private final List<ClientAppListAppData> apps;
    private final long bytesAvailable;
    private final ClientInfo clientInfo;
    private final int refetchIntervalSecChanging;
    private final int refetchIntervalSecFull;
    private final int refetchIntervalSecUpdating;

    public final long component1() {
        return this.bytesAvailable;
    }

    public final List<ClientAppListAppData> component2() {
        return this.apps;
    }

    public final ClientInfo component3() {
        return this.clientInfo;
    }

    public final int component4() {
        return this.refetchIntervalSecFull;
    }

    public final int component5() {
        return this.refetchIntervalSecChanging;
    }

    public final int component6() {
        return this.refetchIntervalSecUpdating;
    }

    public final ClientAppList copy(long j, List<ClientAppListAppData> apps, ClientInfo clientInfo, int i, int i2, int i3) {
        Intrinsics.checkNotNullParameter(apps, "apps");
        Intrinsics.checkNotNullParameter(clientInfo, "clientInfo");
        return new ClientAppList(j, apps, clientInfo, i, i2, i3);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ClientAppList)) {
            return false;
        }
        ClientAppList clientAppList = (ClientAppList) obj;
        return this.bytesAvailable == clientAppList.bytesAvailable && Intrinsics.areEqual(this.apps, clientAppList.apps) && Intrinsics.areEqual(this.clientInfo, clientAppList.clientInfo) && this.refetchIntervalSecFull == clientAppList.refetchIntervalSecFull && this.refetchIntervalSecChanging == clientAppList.refetchIntervalSecChanging && this.refetchIntervalSecUpdating == clientAppList.refetchIntervalSecUpdating;
    }

    public int hashCode() {
        return (((((((((Long.hashCode(this.bytesAvailable) * 31) + this.apps.hashCode()) * 31) + this.clientInfo.hashCode()) * 31) + Integer.hashCode(this.refetchIntervalSecFull)) * 31) + Integer.hashCode(this.refetchIntervalSecChanging)) * 31) + Integer.hashCode(this.refetchIntervalSecUpdating);
    }

    public ClientAppList(long j, List<ClientAppListAppData> apps, ClientInfo clientInfo, int i, int i2, int i3) {
        Intrinsics.checkNotNullParameter(apps, "apps");
        Intrinsics.checkNotNullParameter(clientInfo, "clientInfo");
        this.bytesAvailable = j;
        this.apps = apps;
        this.clientInfo = clientInfo;
        this.refetchIntervalSecFull = i;
        this.refetchIntervalSecChanging = i2;
        this.refetchIntervalSecUpdating = i3;
    }

    public final long getBytesAvailable() {
        return this.bytesAvailable;
    }

    public final List<ClientAppListAppData> getApps() {
        return this.apps;
    }

    public final ClientInfo getClientInfo() {
        return this.clientInfo;
    }

    public final int getRefetchIntervalSecFull() {
        return this.refetchIntervalSecFull;
    }

    public final int getRefetchIntervalSecChanging() {
        return this.refetchIntervalSecChanging;
    }

    public final int getRefetchIntervalSecUpdating() {
        return this.refetchIntervalSecUpdating;
    }

    public String toString() {
        return StringsKt__IndentKt.trimIndent("\n            ClientAppList(\n                bytesAvailable=" + this.bytesAvailable + ",\n                apps=" + this.apps + ",\n                clientInfo=" + this.clientInfo + ",\n                refetchIntervalSecFull=" + this.refetchIntervalSecFull + ",\n                refetchIntervalSecChanging=" + this.refetchIntervalSecChanging + ",\n                refetchIntervalSecUpdating=" + this.refetchIntervalSecUpdating + "\n            )\n    ");
    }
}
