package in.dragonbra.javasteam.steam.handlers.steammasterserver.callback;

import com.google.protobuf.AbstractMessage;
import in.dragonbra.javasteam.base.ClientMsgProtobuf;
import in.dragonbra.javasteam.base.IPacketMsg;
import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers;
import in.dragonbra.javasteam.steam.handlers.steammasterserver.Server;
import in.dragonbra.javasteam.steam.steamclient.callbackmgr.CallbackMsg;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: QueryCallback.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class QueryCallback extends CallbackMsg {
    private final List<Server> servers;

    public QueryCallback(IPacketMsg packetMsg) {
        Intrinsics.checkNotNullParameter(packetMsg, "packetMsg");
        ClientMsgProtobuf clientMsgProtobuf = new ClientMsgProtobuf((Class<? extends AbstractMessage>) SteammessagesClientserverGameservers.CMsgGMSClientServerQueryResponse.class, packetMsg);
        SteammessagesClientserverGameservers.CMsgGMSClientServerQueryResponse.Builder builder = (SteammessagesClientserverGameservers.CMsgGMSClientServerQueryResponse.Builder) clientMsgProtobuf.getBody();
        setJobID(clientMsgProtobuf.getTargetJobID());
        List<SteammessagesClientserverGameservers.CMsgGMSClientServerQueryResponse.Server> serversList = builder.getServersList();
        Intrinsics.checkNotNullExpressionValue(serversList, "getServersList(...)");
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(serversList, 10));
        for (SteammessagesClientserverGameservers.CMsgGMSClientServerQueryResponse.Server server : serversList) {
            Intrinsics.checkNotNull(server);
            arrayList.add(new Server(server));
        }
        this.servers = arrayList;
    }

    public final List<Server> getServers() {
        return this.servers;
    }
}
