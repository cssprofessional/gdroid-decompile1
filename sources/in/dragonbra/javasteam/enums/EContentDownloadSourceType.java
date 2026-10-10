package in.dragonbra.javasteam.enums;

/* JADX INFO: loaded from: classes.dex */
public enum EContentDownloadSourceType {
    Invalid(0),
    CS(1),
    CDN(2),
    LCS(3),
    ProxyCache(4),
    LANPeer(5),
    SLS(6),
    SteamCache(7),
    OpenCache(8),
    LANCache(9);

    private final int code;

    EContentDownloadSourceType(int i) {
        this.code = i;
    }

    public int code() {
        return this.code;
    }

    public static EContentDownloadSourceType from(int i) {
        for (EContentDownloadSourceType eContentDownloadSourceType : values()) {
            if (eContentDownloadSourceType.code == i) {
                return eContentDownloadSourceType;
            }
        }
        return null;
    }
}
