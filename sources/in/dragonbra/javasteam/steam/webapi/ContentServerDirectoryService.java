package in.dragonbra.javasteam.steam.webapi;

import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesContentsystemSteamclient;
import in.dragonbra.javasteam.steam.cdn.Server;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ContentServerDirectoryService.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class ContentServerDirectoryService {
    public static final ContentServerDirectoryService INSTANCE = new ContentServerDirectoryService();

    private ContentServerDirectoryService() {
    }

    public static final List<Server> convertServerList$javasteam(SteammessagesContentsystemSteamclient.CContentServerDirectory_GetServersForSteamPipe_Response response) {
        Server.ConnectionProtocol connectionProtocol;
        Intrinsics.checkNotNullParameter(response, "response");
        List<SteammessagesContentsystemSteamclient.CContentServerDirectory_ServerInfo> serversList = response.getServersList();
        Intrinsics.checkNotNullExpressionValue(serversList, "getServersList(...)");
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(serversList, 10));
        for (SteammessagesContentsystemSteamclient.CContentServerDirectory_ServerInfo cContentServerDirectory_ServerInfo : serversList) {
            if (Intrinsics.areEqual(cContentServerDirectory_ServerInfo.getHttpsSupport(), "mandatory")) {
                connectionProtocol = Server.ConnectionProtocol.HTTPS;
            } else {
                connectionProtocol = Server.ConnectionProtocol.HTTP;
            }
            Server server = new Server();
            server.setProtocol$javasteam(connectionProtocol);
            server.setHost$javasteam(cContentServerDirectory_ServerInfo.getHost());
            server.setVHost$javasteam(cContentServerDirectory_ServerInfo.getVhost());
            server.setPort$javasteam(connectionProtocol == Server.ConnectionProtocol.HTTPS ? 443 : 80);
            server.setType$javasteam(cContentServerDirectory_ServerInfo.getType());
            server.setSourceId$javasteam(cContentServerDirectory_ServerInfo.getSourceId());
            server.setCellId$javasteam(cContentServerDirectory_ServerInfo.getCellId());
            server.setLoad$javasteam(cContentServerDirectory_ServerInfo.getLoad());
            server.setWeightedLoad$javasteam(cContentServerDirectory_ServerInfo.getWeightedLoad());
            server.setNumEntries$javasteam(cContentServerDirectory_ServerInfo.getNumEntriesInClientList());
            server.setSteamChinaOnly$javasteam(cContentServerDirectory_ServerInfo.getSteamChinaOnly());
            server.setUseAsProxy$javasteam(cContentServerDirectory_ServerInfo.getUseAsProxy());
            server.setProxyRequestPathTemplate$javasteam(cContentServerDirectory_ServerInfo.getProxyRequestPathTemplate());
            List<Integer> allowedAppIdsList = cContentServerDirectory_ServerInfo.getAllowedAppIdsList();
            Intrinsics.checkNotNullExpressionValue(allowedAppIdsList, "getAllowedAppIdsList(...)");
            server.setAllowedAppIds$javasteam(CollectionsKt___CollectionsKt.toIntArray(allowedAppIdsList));
            arrayList.add(server);
        }
        return arrayList;
    }
}
