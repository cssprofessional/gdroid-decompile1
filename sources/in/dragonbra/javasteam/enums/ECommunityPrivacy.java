package in.dragonbra.javasteam.enums;

/* JADX INFO: loaded from: classes.dex */
public enum ECommunityPrivacy {
    Invalid(0),
    Private(1),
    FriendsOnly(2),
    Public(3);

    private final int code;

    ECommunityPrivacy(int i) {
        this.code = i;
    }

    public int code() {
        return this.code;
    }

    public static ECommunityPrivacy from(int i) {
        for (ECommunityPrivacy eCommunityPrivacy : values()) {
            if (eCommunityPrivacy.code == i) {
                return eCommunityPrivacy;
            }
        }
        return null;
    }
}
