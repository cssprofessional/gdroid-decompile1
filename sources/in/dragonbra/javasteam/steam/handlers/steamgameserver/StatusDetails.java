package in.dragonbra.javasteam.steam.handlers.steamgameserver;

import in.dragonbra.javasteam.enums.EServerFlags;
import java.net.InetAddress;
import java.util.EnumSet;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: StatusDetails.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class StatusDetails {
    private InetAddress address;
    private int appID;
    private String gameDirectory;
    private int port;
    private int queryPort;
    private EnumSet<EServerFlags> serverFlags;
    private String version;

    public StatusDetails(int i, EnumSet<EServerFlags> serverFlags, String str, InetAddress inetAddress, int i2, int i3, String str2) {
        Intrinsics.checkNotNullParameter(serverFlags, "serverFlags");
        this.appID = i;
        this.serverFlags = serverFlags;
        this.gameDirectory = str;
        this.address = inetAddress;
        this.port = i2;
        this.queryPort = i3;
        this.version = str2;
    }

    public final int getAppID() {
        return this.appID;
    }

    public final void setAppID(int i) {
        this.appID = i;
    }

    public final EnumSet<EServerFlags> getServerFlags() {
        return this.serverFlags;
    }

    public final void setServerFlags(EnumSet<EServerFlags> enumSet) {
        Intrinsics.checkNotNullParameter(enumSet, "<set-?>");
        this.serverFlags = enumSet;
    }

    public final String getGameDirectory() {
        return this.gameDirectory;
    }

    public final void setGameDirectory(String str) {
        this.gameDirectory = str;
    }

    public final InetAddress getAddress() {
        return this.address;
    }

    public final void setAddress(InetAddress inetAddress) {
        this.address = inetAddress;
    }

    public final int getPort() {
        return this.port;
    }

    public final void setPort(int i) {
        this.port = i;
    }

    public final int getQueryPort() {
        return this.queryPort;
    }

    public final void setQueryPort(int i) {
        this.queryPort = i;
    }

    public final String getVersion() {
        return this.version;
    }

    public final void setVersion(String str) {
        this.version = str;
    }
}
