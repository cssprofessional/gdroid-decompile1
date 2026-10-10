package in.dragonbra.javasteam.enums;

/* JADX INFO: loaded from: classes.dex */
public enum EChatRoomJoinState {
    Default(0),
    None(1),
    Joined(2),
    TestInvalid(99);

    private final int code;

    EChatRoomJoinState(int i) {
        this.code = i;
    }

    public int code() {
        return this.code;
    }

    public static EChatRoomJoinState from(int i) {
        for (EChatRoomJoinState eChatRoomJoinState : values()) {
            if (eChatRoomJoinState.code == i) {
                return eChatRoomJoinState;
            }
        }
        return null;
    }
}
