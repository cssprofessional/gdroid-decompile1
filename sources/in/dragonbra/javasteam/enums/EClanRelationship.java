package in.dragonbra.javasteam.enums;

/* JADX INFO: loaded from: classes.dex */
public enum EClanRelationship {
    None(0),
    Blocked(1),
    Invited(2),
    Member(3),
    Kicked(4),
    KickAcknowledged(5),
    PendingApproval(6),
    RequestDenied(7);

    private final int code;

    EClanRelationship(int i) {
        this.code = i;
    }

    public int code() {
        return this.code;
    }

    public static EClanRelationship from(int i) {
        for (EClanRelationship eClanRelationship : values()) {
            if (eClanRelationship.code == i) {
                return eClanRelationship;
            }
        }
        return null;
    }
}
