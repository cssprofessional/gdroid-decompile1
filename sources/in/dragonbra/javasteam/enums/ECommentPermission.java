package in.dragonbra.javasteam.enums;

/* JADX INFO: loaded from: classes.dex */
public enum ECommentPermission {
    Invalid(-1),
    FriendsOnly(0),
    Anyone(1),
    SelfOnly(2);

    private final int code;

    ECommentPermission(int i) {
        this.code = i;
    }

    public int code() {
        return this.code;
    }

    public static ECommentPermission from(int i) {
        for (ECommentPermission eCommentPermission : values()) {
            if (eCommentPermission.code == i) {
                return eCommentPermission;
            }
        }
        return null;
    }
}
