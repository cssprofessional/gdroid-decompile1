package in.dragonbra.javasteam.enums;

/* JADX INFO: loaded from: classes.dex */
public enum EPublishedFileVisibility {
    Public(0),
    FriendsOnly(1),
    Private(2),
    Unlisted(3);

    private final int code;

    EPublishedFileVisibility(int i) {
        this.code = i;
    }

    public int code() {
        return this.code;
    }

    public static EPublishedFileVisibility from(int i) {
        for (EPublishedFileVisibility ePublishedFileVisibility : values()) {
            if (ePublishedFileVisibility.code == i) {
                return ePublishedFileVisibility;
            }
        }
        return null;
    }
}
