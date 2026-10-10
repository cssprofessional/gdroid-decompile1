package in.dragonbra.javasteam.enums;

/* JADX INFO: loaded from: classes.dex */
public enum EChatRoomServerMsg {
    Invalid(0),
    RenameChatRoom(1),
    Joined(2),
    Parted(3),
    Kicked(4),
    Invited(5),
    InviteDismissed(8),
    ChatRoomTaglineChanged(9),
    ChatRoomAvatarChanged(10),
    AppCustom(11);

    private final int code;

    EChatRoomServerMsg(int i) {
        this.code = i;
    }

    public int code() {
        return this.code;
    }

    public static EChatRoomServerMsg from(int i) {
        for (EChatRoomServerMsg eChatRoomServerMsg : values()) {
            if (eChatRoomServerMsg.code == i) {
                return eChatRoomServerMsg;
            }
        }
        return null;
    }
}
