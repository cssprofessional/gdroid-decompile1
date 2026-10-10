package in.dragonbra.javasteam.steam.handlers.steammasterserver;

import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers;
import in.dragonbra.javasteam.util.NetHelpers;
import java.net.InetSocketAddress;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: Server.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class Server {
    private final int authedPlayers;
    private final InetSocketAddress endPoint;

    public Server(SteammessagesClientserverGameservers.CMsgGMSClientServerQueryResponse.Server server) {
        Intrinsics.checkNotNullParameter(server, "server");
        this.endPoint = new InetSocketAddress(NetHelpers.getIPAddress(server.getServerIp().getV4()), server.getQueryPort());
        this.authedPlayers = server.getAuthPlayers();
    }

    public final InetSocketAddress getEndPoint() {
        return this.endPoint;
    }

    public final int getAuthedPlayers() {
        return this.authedPlayers;
    }
}
