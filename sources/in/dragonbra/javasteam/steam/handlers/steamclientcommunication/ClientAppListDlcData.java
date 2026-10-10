package in.dragonbra.javasteam.steam.handlers.steamclientcommunication;

import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__IndentKt;

/* JADX INFO: compiled from: ClientAppListDlcData.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class ClientAppListDlcData {
    private final String app;
    private final int appId;
    private final int installed;

    public static /* synthetic */ ClientAppListDlcData copy$default(ClientAppListDlcData clientAppListDlcData, int i, String str, int i2, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            i = clientAppListDlcData.appId;
        }
        if ((i3 & 2) != 0) {
            str = clientAppListDlcData.app;
        }
        if ((i3 & 4) != 0) {
            i2 = clientAppListDlcData.installed;
        }
        return clientAppListDlcData.copy(i, str, i2);
    }

    public final int component1() {
        return this.appId;
    }

    public final String component2() {
        return this.app;
    }

    public final int component3() {
        return this.installed;
    }

    public final ClientAppListDlcData copy(int i, String app, int i2) {
        Intrinsics.checkNotNullParameter(app, "app");
        return new ClientAppListDlcData(i, app, i2);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ClientAppListDlcData)) {
            return false;
        }
        ClientAppListDlcData clientAppListDlcData = (ClientAppListDlcData) obj;
        return this.appId == clientAppListDlcData.appId && Intrinsics.areEqual(this.app, clientAppListDlcData.app) && this.installed == clientAppListDlcData.installed;
    }

    public int hashCode() {
        return (((Integer.hashCode(this.appId) * 31) + this.app.hashCode()) * 31) + Integer.hashCode(this.installed);
    }

    public ClientAppListDlcData(int i, String app, int i2) {
        Intrinsics.checkNotNullParameter(app, "app");
        this.appId = i;
        this.app = app;
        this.installed = i2;
    }

    public final int getAppId() {
        return this.appId;
    }

    public final String getApp() {
        return this.app;
    }

    public final int getInstalled() {
        return this.installed;
    }

    public String toString() {
        return StringsKt__IndentKt.trimIndent("\n           ClientAppListDlcData(\n                appId=" + this.appId + ",\n                app='" + this.app + "',\n                installed=" + this.installed + "\n           )\n    ");
    }
}
