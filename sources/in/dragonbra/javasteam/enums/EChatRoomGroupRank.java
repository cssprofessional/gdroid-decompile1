package in.dragonbra.javasteam.enums;

/* JADX INFO: loaded from: classes.dex */
public enum EChatRoomGroupRank {
    Default(0),
    Viewer(10),
    Guest(15),
    Member(20),
    Moderator(30),
    Officer(40),
    Owner(50),
    TestInvalid(99);

    private final int code;

    EChatRoomGroupRank(int i) {
        this.code = i;
    }

    public int code() {
        return this.code;
    }

    public static EChatRoomGroupRank from(int i) {
        for (EChatRoomGroupRank eChatRoomGroupRank : values()) {
            if (eChatRoomGroupRank.code == i) {
                return eChatRoomGroupRank;
            }
        }
        return null;
    }
}
