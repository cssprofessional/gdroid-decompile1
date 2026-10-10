package in.dragonbra.javasteam.enums;

/* JADX INFO: loaded from: classes.dex */
public enum EChatEntryType {
    Invalid(0),
    ChatMsg(1),
    Typing(2),
    InviteGame(3),
    LeftConversation(6),
    Entered(7),
    WasKicked(8),
    WasBanned(9),
    Disconnected(10),
    HistoricalChat(11),
    Reserved1(12),
    Reserved2(13),
    LinkBlocked(14);

    private final int code;

    EChatEntryType(int i) {
        this.code = i;
    }

    public int code() {
        return this.code;
    }

    public static EChatEntryType from(int i) {
        for (EChatEntryType eChatEntryType : values()) {
            if (eChatEntryType.code == i) {
                return eChatEntryType;
            }
        }
        return null;
    }
}
