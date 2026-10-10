package in.dragonbra.javasteam.enums;

/* JADX INFO: loaded from: classes.dex */
public enum EPublishedFileInappropriateResult {
    NotScanned(0),
    VeryUnlikely(1),
    Unlikely(30),
    Possible(50),
    Likely(75),
    VeryLikely(100);

    private final int code;

    EPublishedFileInappropriateResult(int i) {
        this.code = i;
    }

    public int code() {
        return this.code;
    }

    public static EPublishedFileInappropriateResult from(int i) {
        for (EPublishedFileInappropriateResult ePublishedFileInappropriateResult : values()) {
            if (ePublishedFileInappropriateResult.code == i) {
                return ePublishedFileInappropriateResult;
            }
        }
        return null;
    }
}
