package in.dragonbra.javasteam.enums;

/* JADX INFO: loaded from: classes.dex */
public enum ESteamIPv6ConnectivityProtocol {
    Invalid(0),
    Http(1),
    Udp(2);

    private final int code;

    ESteamIPv6ConnectivityProtocol(int i) {
        this.code = i;
    }

    public int code() {
        return this.code;
    }

    public static ESteamIPv6ConnectivityProtocol from(int i) {
        for (ESteamIPv6ConnectivityProtocol eSteamIPv6ConnectivityProtocol : values()) {
            if (eSteamIPv6ConnectivityProtocol.code == i) {
                return eSteamIPv6ConnectivityProtocol;
            }
        }
        return null;
    }
}
