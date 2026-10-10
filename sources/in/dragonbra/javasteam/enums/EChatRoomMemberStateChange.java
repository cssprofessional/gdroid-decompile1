package in.dragonbra.javasteam.enums;

/* JADX INFO: loaded from: classes.dex */
public enum EChatRoomMemberStateChange {
    Invalid(0),
    Joined(1),
    Parted(2),
    Kicked(3),
    Invited(4),
    RankChanged(7),
    InviteDismissed(8),
    Muted(9),
    Banned(10),
    RolesChanged(12);

    private final int code;

    EChatRoomMemberStateChange(int i) {
        this.code = i;
    }

    public int code() {
        return this.code;
    }

    public static EChatRoomMemberStateChange from(int i) {
        for (EChatRoomMemberStateChange eChatRoomMemberStateChange : values()) {
            if (eChatRoomMemberStateChange.code == i) {
                return eChatRoomMemberStateChange;
            }
        }
        return null;
    }
}
