package in.dragonbra.javasteam.enums;

/* JADX INFO: loaded from: classes.dex */
public enum EChatroomNotificationLevel {
    Invalid(0),
    None(1),
    MentionMe(2),
    MentionAll(3),
    AllMessages(4);

    private final int code;

    EChatroomNotificationLevel(int i) {
        this.code = i;
    }

    public int code() {
        return this.code;
    }

    public static EChatroomNotificationLevel from(int i) {
        for (EChatroomNotificationLevel eChatroomNotificationLevel : values()) {
            if (eChatroomNotificationLevel.code == i) {
                return eChatroomNotificationLevel;
            }
        }
        return null;
    }
}
