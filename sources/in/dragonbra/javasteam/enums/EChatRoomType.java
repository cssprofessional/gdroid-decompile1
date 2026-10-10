package in.dragonbra.javasteam.enums;

/* JADX INFO: loaded from: classes.dex */
public enum EChatRoomType {
    Friend(1),
    MUC(2),
    Lobby(3);

    private final int code;

    EChatRoomType(int i) {
        this.code = i;
    }

    public int code() {
        return this.code;
    }

    public static EChatRoomType from(int i) {
        for (EChatRoomType eChatRoomType : values()) {
            if (eChatRoomType.code == i) {
                return eChatRoomType;
            }
        }
        return null;
    }
}
