package in.dragonbra.javasteam.steam.handlers.steammasterserver;

import in.dragonbra.javasteam.base.ClientMsgProtobuf;
import in.dragonbra.javasteam.base.IPacketMsg;
import in.dragonbra.javasteam.enums.EMsg;
import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverGameservers;
import in.dragonbra.javasteam.steam.handlers.ClientMsgHandler;
import in.dragonbra.javasteam.steam.handlers.steammasterserver.callback.QueryCallback;
import in.dragonbra.javasteam.steam.steamclient.callbackmgr.CallbackMsg;
import in.dragonbra.javasteam.types.AsyncJobSingle;
import in.dragonbra.javasteam.util.NetHelpers;
import java.net.InetAddress;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: SteamMasterServer.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class SteamMasterServer extends ClientMsgHandler {
    public static final Companion Companion = new Companion(null);

    public final AsyncJobSingle<QueryCallback> serverQuery(QueryDetails details) {
        Intrinsics.checkNotNullParameter(details, "details");
        ClientMsgProtobuf clientMsgProtobuf = new ClientMsgProtobuf(SteammessagesClientserverGameservers.CMsgClientGMSServerQuery.class, EMsg.ClientGMSServerQuery, 0, 4, null);
        clientMsgProtobuf.setSourceJobID(getClient().getNextJobID());
        ((SteammessagesClientserverGameservers.CMsgClientGMSServerQuery.Builder) clientMsgProtobuf.getBody()).setAppId(details.getAppID());
        if (details.getGeoLocatedIP() != null) {
            SteammessagesClientserverGameservers.CMsgClientGMSServerQuery.Builder builder = (SteammessagesClientserverGameservers.CMsgClientGMSServerQuery.Builder) clientMsgProtobuf.getBody();
            InetAddress geoLocatedIP = details.getGeoLocatedIP();
            Intrinsics.checkNotNull(geoLocatedIP);
            builder.setGeoLocationIp(NetHelpers.getIPAddress(geoLocatedIP));
        }
        ((SteammessagesClientserverGameservers.CMsgClientGMSServerQuery.Builder) clientMsgProtobuf.getBody()).setFilterText(details.getFilter());
        ((SteammessagesClientserverGameservers.CMsgClientGMSServerQuery.Builder) clientMsgProtobuf.getBody()).setRegionCode(details.getRegion().code());
        ((SteammessagesClientserverGameservers.CMsgClientGMSServerQuery.Builder) clientMsgProtobuf.getBody()).setMaxServers(details.getMaxServers());
        getClient().send(clientMsgProtobuf);
        return new AsyncJobSingle<>(getClient(), clientMsgProtobuf.getSourceJobID());
    }

    @Override // in.dragonbra.javasteam.steam.handlers.ClientMsgHandler
    public void handleMsg(IPacketMsg packetMsg) {
        Intrinsics.checkNotNullParameter(packetMsg, "packetMsg");
        CallbackMsg callback = Companion.getCallback(packetMsg);
        if (callback == null) {
            return;
        }
        getClient().postCallback(callback);
    }

    /* JADX INFO: compiled from: SteamMasterServer.kt */
    public static final class Companion {

        /* JADX INFO: compiled from: SteamMasterServer.kt */
        public static final /* synthetic */ class WhenMappings {
            public static final /* synthetic */ int[] $EnumSwitchMapping$0;

            static {
                int[] iArr = new int[EMsg.values().length];
                try {
                    iArr[EMsg.GMSClientServerQueryResponse.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                $EnumSwitchMapping$0 = iArr;
            }
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final CallbackMsg getCallback(IPacketMsg iPacketMsg) {
            if (WhenMappings.$EnumSwitchMapping$0[iPacketMsg.getMsgType().ordinal()] == 1) {
                return new QueryCallback(iPacketMsg);
            }
            return null;
        }
    }
}
