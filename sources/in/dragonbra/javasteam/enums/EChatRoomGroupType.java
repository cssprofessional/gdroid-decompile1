package in.dragonbra.javasteam.enums;

/* JADX INFO: loaded from: classes.dex */
public enum EChatRoomGroupType {
    Default(0),
    Unmoderated(1);

    private final int code;

    EChatRoomGroupType(int i) {
        this.code = i;
    }

    public int code() {
        return this.code;
    }

    public static EChatRoomGroupType from(int i) {
        for (EChatRoomGroupType eChatRoomGroupType : values()) {
            if (eChatRoomGroupType.code == i) {
                return eChatRoomGroupType;
            }
        }
        return null;
    }
}
