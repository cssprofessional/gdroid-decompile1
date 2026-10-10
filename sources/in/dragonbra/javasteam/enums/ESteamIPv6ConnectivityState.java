package in.dragonbra.javasteam.enums;

/* JADX INFO: loaded from: classes.dex */
public enum ESteamIPv6ConnectivityState {
    Unknown(0),
    Good(1),
    Bad(2);

    private final int code;

    ESteamIPv6ConnectivityState(int i) {
        this.code = i;
    }

    public int code() {
        return this.code;
    }

    public static ESteamIPv6ConnectivityState from(int i) {
        for (ESteamIPv6ConnectivityState eSteamIPv6ConnectivityState : values()) {
            if (eSteamIPv6ConnectivityState.code == i) {
                return eSteamIPv6ConnectivityState;
            }
        }
        return null;
    }
}
