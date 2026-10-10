package in.dragonbra.javasteam.steam.handlers.steamclientcommunication;

import in.dragonbra.javasteam.enums.EGamingDeviceType;
import in.dragonbra.javasteam.enums.EOSType;
import in.dragonbra.javasteam.enums.ESteamRealm;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__IndentKt;

/* JADX INFO: compiled from: AllClientLogonInfoSession.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class AllClientLogonInfoSession {
    private final long clientInstanceId;
    private final EGamingDeviceType deviceType;
    private final String machineName;
    private final String osName;
    private final EOSType osType;
    private final int protocolVersion;
    private final ESteamRealm realm;

    public final long component1() {
        return this.clientInstanceId;
    }

    public final int component2() {
        return this.protocolVersion;
    }

    public final String component3() {
        return this.osName;
    }

    public final String component4() {
        return this.machineName;
    }

    public final EOSType component5() {
        return this.osType;
    }

    public final EGamingDeviceType component6() {
        return this.deviceType;
    }

    public final ESteamRealm component7() {
        return this.realm;
    }

    public final AllClientLogonInfoSession copy(long j, int i, String osName, String machineName, EOSType osType, EGamingDeviceType deviceType, ESteamRealm realm) {
        Intrinsics.checkNotNullParameter(osName, "osName");
        Intrinsics.checkNotNullParameter(machineName, "machineName");
        Intrinsics.checkNotNullParameter(osType, "osType");
        Intrinsics.checkNotNullParameter(deviceType, "deviceType");
        Intrinsics.checkNotNullParameter(realm, "realm");
        return new AllClientLogonInfoSession(j, i, osName, machineName, osType, deviceType, realm);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AllClientLogonInfoSession)) {
            return false;
        }
        AllClientLogonInfoSession allClientLogonInfoSession = (AllClientLogonInfoSession) obj;
        return this.clientInstanceId == allClientLogonInfoSession.clientInstanceId && this.protocolVersion == allClientLogonInfoSession.protocolVersion && Intrinsics.areEqual(this.osName, allClientLogonInfoSession.osName) && Intrinsics.areEqual(this.machineName, allClientLogonInfoSession.machineName) && this.osType == allClientLogonInfoSession.osType && this.deviceType == allClientLogonInfoSession.deviceType && this.realm == allClientLogonInfoSession.realm;
    }

    public int hashCode() {
        return (((((((((((Long.hashCode(this.clientInstanceId) * 31) + Integer.hashCode(this.protocolVersion)) * 31) + this.osName.hashCode()) * 31) + this.machineName.hashCode()) * 31) + this.osType.hashCode()) * 31) + this.deviceType.hashCode()) * 31) + this.realm.hashCode();
    }

    public AllClientLogonInfoSession(long j, int i, String osName, String machineName, EOSType osType, EGamingDeviceType deviceType, ESteamRealm realm) {
        Intrinsics.checkNotNullParameter(osName, "osName");
        Intrinsics.checkNotNullParameter(machineName, "machineName");
        Intrinsics.checkNotNullParameter(osType, "osType");
        Intrinsics.checkNotNullParameter(deviceType, "deviceType");
        Intrinsics.checkNotNullParameter(realm, "realm");
        this.clientInstanceId = j;
        this.protocolVersion = i;
        this.osName = osName;
        this.machineName = machineName;
        this.osType = osType;
        this.deviceType = deviceType;
        this.realm = realm;
    }

    public final long getClientInstanceId() {
        return this.clientInstanceId;
    }

    public final int getProtocolVersion() {
        return this.protocolVersion;
    }

    public final String getOsName() {
        return this.osName;
    }

    public final String getMachineName() {
        return this.machineName;
    }

    public final EOSType getOsType() {
        return this.osType;
    }

    public final EGamingDeviceType getDeviceType() {
        return this.deviceType;
    }

    public final ESteamRealm getRealm() {
        return this.realm;
    }

    public String toString() {
        return StringsKt__IndentKt.trimIndent("\n           AllClientLogonInfoSession(\n                clientInstanceId=" + this.clientInstanceId + ",\n                protocolVersion=" + this.protocolVersion + ",\n                osName='" + this.osName + "',\n                machineName='" + this.machineName + "',\n                osType=" + this.osType + ",\n                deviceType=" + this.deviceType + ",\n                realm=" + this.realm + "\n           )\n    ");
    }
}
