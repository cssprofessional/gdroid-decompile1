package in.dragonbra.javasteam.steam.webapi;

import in.dragonbra.javasteam.steam.discovery.ServerRecord;
import in.dragonbra.javasteam.steam.steamclient.configuration.SteamConfiguration;
import in.dragonbra.javasteam.types.KeyValue;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: SteamDirectory.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class SteamDirectory {
    public static final SteamDirectory INSTANCE = new SteamDirectory();

    public static final List<ServerRecord> load(SteamConfiguration configuration) throws IOException {
        Intrinsics.checkNotNullParameter(configuration, "configuration");
        return load$default(configuration, null, 2, null);
    }

    private SteamDirectory() {
    }

    public static /* synthetic */ List load$default(SteamConfiguration steamConfiguration, Integer num, int i, Object obj) throws IOException {
        if ((i & 2) != 0) {
            num = null;
        }
        return load(steamConfiguration, num);
    }

    public static final List<ServerRecord> load(SteamConfiguration configuration, Integer num) throws IOException {
        Intrinsics.checkNotNullParameter(configuration, "configuration");
        return INSTANCE.loadCore(configuration, num);
    }

    private final List<ServerRecord> loadCore(SteamConfiguration steamConfiguration, Integer num) throws IOException {
        ServerRecord serverRecordTryCreateSocketServer;
        WebAPI webAPI = steamConfiguration.getWebAPI("ISteamDirectory");
        HashMap map = new HashMap();
        map.put("cellid", String.valueOf(steamConfiguration.getCellID()));
        if (num != null) {
            map.put("maxcount", String.valueOf(num.intValue()));
        }
        KeyValue keyValueCall = webAPI.call("GetCMListForConnect", map);
        if (!KeyValue.asBoolean$default(keyValueCall.get("success"), false, 1, null)) {
            String strAsString = keyValueCall.get("message").asString();
            if (strAsString == null) {
                strAsString = "unknown";
            }
            throw new IOException("Steam Web API returned EResult." + strAsString);
        }
        KeyValue keyValue = keyValueCall.get("serverlist");
        ArrayList arrayList = new ArrayList(keyValue.getChildren().size());
        for (KeyValue keyValue2 : keyValue.getChildren()) {
            String value = keyValue2.get("endPoint").getValue();
            if (value != null) {
                String value2 = keyValue2.get("type").getValue();
                if (Intrinsics.areEqual(value2, "websockets")) {
                    serverRecordTryCreateSocketServer = ServerRecord.Companion.createWebSocketServer(value);
                } else {
                    serverRecordTryCreateSocketServer = Intrinsics.areEqual(value2, "netfilter") ? ServerRecord.Companion.tryCreateSocketServer(value) : null;
                }
                if (serverRecordTryCreateSocketServer != null) {
                    arrayList.add(serverRecordTryCreateSocketServer);
                }
            }
        }
        return arrayList;
    }
}
