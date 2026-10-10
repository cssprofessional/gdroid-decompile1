package in.dragonbra.javasteam.steam.handlers.steamcontent;

import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__IndentKt;

/* JADX INFO: compiled from: RequestPeerContentServer.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class RequestPeerContentServer {
    private final long accessToken;
    private final List<Integer> installedDepots;
    private final int serverPort;

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ RequestPeerContentServer copy$default(RequestPeerContentServer requestPeerContentServer, int i, List list, long j, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = requestPeerContentServer.serverPort;
        }
        if ((i2 & 2) != 0) {
            list = requestPeerContentServer.installedDepots;
        }
        if ((i2 & 4) != 0) {
            j = requestPeerContentServer.accessToken;
        }
        return requestPeerContentServer.copy(i, list, j);
    }

    public final int component1() {
        return this.serverPort;
    }

    public final List<Integer> component2() {
        return this.installedDepots;
    }

    public final long component3() {
        return this.accessToken;
    }

    public final RequestPeerContentServer copy(int i, List<Integer> installedDepots, long j) {
        Intrinsics.checkNotNullParameter(installedDepots, "installedDepots");
        return new RequestPeerContentServer(i, installedDepots, j);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof RequestPeerContentServer)) {
            return false;
        }
        RequestPeerContentServer requestPeerContentServer = (RequestPeerContentServer) obj;
        return this.serverPort == requestPeerContentServer.serverPort && Intrinsics.areEqual(this.installedDepots, requestPeerContentServer.installedDepots) && this.accessToken == requestPeerContentServer.accessToken;
    }

    public int hashCode() {
        return (((Integer.hashCode(this.serverPort) * 31) + this.installedDepots.hashCode()) * 31) + Long.hashCode(this.accessToken);
    }

    public RequestPeerContentServer(int i, List<Integer> installedDepots, long j) {
        Intrinsics.checkNotNullParameter(installedDepots, "installedDepots");
        this.serverPort = i;
        this.installedDepots = installedDepots;
        this.accessToken = j;
    }

    public final int getServerPort() {
        return this.serverPort;
    }

    public final List<Integer> getInstalledDepots() {
        return this.installedDepots;
    }

    public final long getAccessToken() {
        return this.accessToken;
    }

    public String toString() {
        return StringsKt__IndentKt.trimIndent("\n            RequestPeerContentServer(\n                serverPort=" + this.serverPort + ",\n                installedDepots=" + this.installedDepots + ",\n                accessToken=" + this.accessToken + "\n            )\n    ");
    }
}
