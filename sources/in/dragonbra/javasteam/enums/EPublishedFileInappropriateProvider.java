package in.dragonbra.javasteam.enums;

/* JADX INFO: loaded from: classes.dex */
public enum EPublishedFileInappropriateProvider {
    Invalid(0),
    Google(1),
    Amazon(2);

    private final int code;

    EPublishedFileInappropriateProvider(int i) {
        this.code = i;
    }

    public int code() {
        return this.code;
    }

    public static EPublishedFileInappropriateProvider from(int i) {
        for (EPublishedFileInappropriateProvider ePublishedFileInappropriateProvider : values()) {
            if (ePublishedFileInappropriateProvider.code == i) {
                return ePublishedFileInappropriateProvider;
            }
        }
        return null;
    }
}
