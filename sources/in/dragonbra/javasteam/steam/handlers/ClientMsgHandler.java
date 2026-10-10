package in.dragonbra.javasteam.steam.handlers;

import in.dragonbra.javasteam.base.IPacketMsg;
import in.dragonbra.javasteam.steam.steamclient.SteamClient;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ClientMsgHandler.kt */
/* JADX INFO: loaded from: classes2.dex */
public abstract class ClientMsgHandler {
    protected SteamClient client;

    public abstract void handleMsg(IPacketMsg iPacketMsg);

    public final SteamClient getClient() {
        SteamClient steamClient = this.client;
        if (steamClient != null) {
            return steamClient;
        }
        Intrinsics.throwUninitializedPropertyAccessException("client");
        return null;
    }

    public final void setClient(SteamClient steamClient) {
        Intrinsics.checkNotNullParameter(steamClient, "<set-?>");
        this.client = steamClient;
    }

    public final void setup(SteamClient client) {
        Intrinsics.checkNotNullParameter(client, "client");
        setClient(client);
    }

    public final boolean isExpectDisconnection() {
        return getClient().isExpectDisconnection();
    }

    public final void setExpectDisconnection(boolean z) {
        getClient().setExpectDisconnection(z);
    }
}
