package in.dragonbra.javasteam.enums;

/* JADX INFO: loaded from: classes.dex */
public enum EClientStat {
    P2PConnectionsUDP(0),
    P2PConnectionsRelay(1),
    P2PGameConnections(2),
    P2PVoiceConnections(3),
    BytesDownloaded(4);

    private final int code;

    EClientStat(int i) {
        this.code = i;
    }

    public int code() {
        return this.code;
    }

    public static EClientStat from(int i) {
        for (EClientStat eClientStat : values()) {
            if (eClientStat.code == i) {
                return eClientStat;
            }
        }
        return null;
    }
}
