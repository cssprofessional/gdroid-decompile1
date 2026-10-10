package in.dragonbra.javasteam.enums;

/* JADX INFO: loaded from: classes.dex */
public enum EFriendRelationship {
    None(0),
    Blocked(1),
    RequestRecipient(2),
    Friend(3),
    RequestInitiator(4),
    Ignored(5),
    IgnoredFriend(6);

    private final int code;

    EFriendRelationship(int i) {
        this.code = i;
    }

    public int code() {
        return this.code;
    }

    public static EFriendRelationship from(int i) {
        for (EFriendRelationship eFriendRelationship : values()) {
            if (eFriendRelationship.code == i) {
                return eFriendRelationship;
            }
        }
        return null;
    }
}
