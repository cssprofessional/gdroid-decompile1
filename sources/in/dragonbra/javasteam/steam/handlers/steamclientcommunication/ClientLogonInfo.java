package in.dragonbra.javasteam.steam.handlers.steamclientcommunication;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ClientLogonInfo.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class ClientLogonInfo {
    private final String machineName;
    private final String os;
    private final int protocolVersion;

    public static /* synthetic */ ClientLogonInfo copy$default(ClientLogonInfo clientLogonInfo, int i, String str, String str2, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = clientLogonInfo.protocolVersion;
        }
        if ((i2 & 2) != 0) {
            str = clientLogonInfo.os;
        }
        if ((i2 & 4) != 0) {
            str2 = clientLogonInfo.machineName;
        }
        return clientLogonInfo.copy(i, str, str2);
    }

    public final int component1() {
        return this.protocolVersion;
    }

    public final String component2() {
        return this.os;
    }

    public final String component3() {
        return this.machineName;
    }

    public final ClientLogonInfo copy(int i, String os, String machineName) {
        Intrinsics.checkNotNullParameter(os, "os");
        Intrinsics.checkNotNullParameter(machineName, "machineName");
        return new ClientLogonInfo(i, os, machineName);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ClientLogonInfo)) {
            return false;
        }
        ClientLogonInfo clientLogonInfo = (ClientLogonInfo) obj;
        return this.protocolVersion == clientLogonInfo.protocolVersion && Intrinsics.areEqual(this.os, clientLogonInfo.os) && Intrinsics.areEqual(this.machineName, clientLogonInfo.machineName);
    }

    public int hashCode() {
        return (((Integer.hashCode(this.protocolVersion) * 31) + this.os.hashCode()) * 31) + this.machineName.hashCode();
    }

    public String toString() {
        return "ClientLogonInfo(protocolVersion=" + this.protocolVersion + ", os=" + this.os + ", machineName=" + this.machineName + ")";
    }

    public ClientLogonInfo(int i, String os, String machineName) {
        Intrinsics.checkNotNullParameter(os, "os");
        Intrinsics.checkNotNullParameter(machineName, "machineName");
        this.protocolVersion = i;
        this.os = os;
        this.machineName = machineName;
    }

    public final int getProtocolVersion() {
        return this.protocolVersion;
    }

    public final String getOs() {
        return this.os;
    }

    public final String getMachineName() {
        return this.machineName;
    }
}
