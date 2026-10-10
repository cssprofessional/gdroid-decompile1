package in.dragonbra.javasteam.steam.handlers.steamclientcommunication;

import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__IndentKt;

/* JADX INFO: compiled from: ClientInfo.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class ClientInfo {
    private final long bytesAvailable;
    private final int clientCommVersion;
    private final String ipPrivate;
    private final String ipPublic;
    private final List<Integer> localUsers;
    private final String machineName;
    private final String os;
    private final int packageVersion;
    private final int protocolVersion;
    private final List<RunningGames> runningGames;

    public final int component1() {
        return this.packageVersion;
    }

    public final List<Integer> component10() {
        return this.localUsers;
    }

    public final String component2() {
        return this.os;
    }

    public final String component3() {
        return this.machineName;
    }

    public final String component4() {
        return this.ipPublic;
    }

    public final String component5() {
        return this.ipPrivate;
    }

    public final long component6() {
        return this.bytesAvailable;
    }

    public final List<RunningGames> component7() {
        return this.runningGames;
    }

    public final int component8() {
        return this.protocolVersion;
    }

    public final int component9() {
        return this.clientCommVersion;
    }

    public final ClientInfo copy(int i, String os, String machineName, String ipPublic, String ipPrivate, long j, List<RunningGames> runningGames, int i2, int i3, List<Integer> localUsers) {
        Intrinsics.checkNotNullParameter(os, "os");
        Intrinsics.checkNotNullParameter(machineName, "machineName");
        Intrinsics.checkNotNullParameter(ipPublic, "ipPublic");
        Intrinsics.checkNotNullParameter(ipPrivate, "ipPrivate");
        Intrinsics.checkNotNullParameter(runningGames, "runningGames");
        Intrinsics.checkNotNullParameter(localUsers, "localUsers");
        return new ClientInfo(i, os, machineName, ipPublic, ipPrivate, j, runningGames, i2, i3, localUsers);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ClientInfo)) {
            return false;
        }
        ClientInfo clientInfo = (ClientInfo) obj;
        return this.packageVersion == clientInfo.packageVersion && Intrinsics.areEqual(this.os, clientInfo.os) && Intrinsics.areEqual(this.machineName, clientInfo.machineName) && Intrinsics.areEqual(this.ipPublic, clientInfo.ipPublic) && Intrinsics.areEqual(this.ipPrivate, clientInfo.ipPrivate) && this.bytesAvailable == clientInfo.bytesAvailable && Intrinsics.areEqual(this.runningGames, clientInfo.runningGames) && this.protocolVersion == clientInfo.protocolVersion && this.clientCommVersion == clientInfo.clientCommVersion && Intrinsics.areEqual(this.localUsers, clientInfo.localUsers);
    }

    public int hashCode() {
        return (((((((((((((((((Integer.hashCode(this.packageVersion) * 31) + this.os.hashCode()) * 31) + this.machineName.hashCode()) * 31) + this.ipPublic.hashCode()) * 31) + this.ipPrivate.hashCode()) * 31) + Long.hashCode(this.bytesAvailable)) * 31) + this.runningGames.hashCode()) * 31) + Integer.hashCode(this.protocolVersion)) * 31) + Integer.hashCode(this.clientCommVersion)) * 31) + this.localUsers.hashCode();
    }

    public ClientInfo(int i, String os, String machineName, String ipPublic, String ipPrivate, long j, List<RunningGames> runningGames, int i2, int i3, List<Integer> localUsers) {
        Intrinsics.checkNotNullParameter(os, "os");
        Intrinsics.checkNotNullParameter(machineName, "machineName");
        Intrinsics.checkNotNullParameter(ipPublic, "ipPublic");
        Intrinsics.checkNotNullParameter(ipPrivate, "ipPrivate");
        Intrinsics.checkNotNullParameter(runningGames, "runningGames");
        Intrinsics.checkNotNullParameter(localUsers, "localUsers");
        this.packageVersion = i;
        this.os = os;
        this.machineName = machineName;
        this.ipPublic = ipPublic;
        this.ipPrivate = ipPrivate;
        this.bytesAvailable = j;
        this.runningGames = runningGames;
        this.protocolVersion = i2;
        this.clientCommVersion = i3;
        this.localUsers = localUsers;
    }

    public final int getPackageVersion() {
        return this.packageVersion;
    }

    public final String getOs() {
        return this.os;
    }

    public final String getMachineName() {
        return this.machineName;
    }

    public final String getIpPublic() {
        return this.ipPublic;
    }

    public final String getIpPrivate() {
        return this.ipPrivate;
    }

    public final long getBytesAvailable() {
        return this.bytesAvailable;
    }

    public final List<RunningGames> getRunningGames() {
        return this.runningGames;
    }

    public final int getProtocolVersion() {
        return this.protocolVersion;
    }

    public final int getClientCommVersion() {
        return this.clientCommVersion;
    }

    public final List<Integer> getLocalUsers() {
        return this.localUsers;
    }

    public String toString() {
        return StringsKt__IndentKt.trimIndent("\n            ClientInfo(\n                packageVersion=" + this.packageVersion + ",\n                os='" + this.os + "',\n                machineName='" + this.machineName + "',\n                ipPublic='" + this.ipPublic + "',\n                ipPrivate='" + this.ipPrivate + "',\n                bytesAvailable=" + this.bytesAvailable + ",\n                runningGames=" + this.runningGames + ",\n                protocolVersion=" + this.protocolVersion + ",\n                clientCommVersion=" + this.clientCommVersion + ",\n                localUsers=" + this.localUsers + "\n            )\n    ");
    }
}
