package in.dragonbra.javasteam.enums;

/* JADX INFO: loaded from: classes.dex */
public enum EChatRoomGroupAction {
    Default(0),
    CreateRenameDeleteChannel(1),
    Kick(2),
    Ban(3),
    Invite(4),
    ChangeTaglineAvatarName(5),
    Chat(6),
    ViewHistory(7),
    ChangeGroupRoles(8),
    ChangeUserRoles(9),
    MentionAll(10),
    SetWatchingBroadcast(11);

    private final int code;

    EChatRoomGroupAction(int i) {
        this.code = i;
    }

    public int code() {
        return this.code;
    }

    public static EChatRoomGroupAction from(int i) {
        for (EChatRoomGroupAction eChatRoomGroupAction : values()) {
            if (eChatRoomGroupAction.code == i) {
                return eChatRoomGroupAction;
            }
        }
        return null;
    }
}
