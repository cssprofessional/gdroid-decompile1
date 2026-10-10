package in.dragonbra.javasteam.enums;

/* JADX INFO: loaded from: classes.dex */
public enum EChatActionResult {
    Success(1),
    Error(2),
    NotPermitted(3),
    NotAllowedOnClanMember(4),
    NotAllowedOnBannedUser(5),
    NotAllowedOnChatOwner(6),
    NotAllowedOnSelf(7),
    ChatDoesntExist(8),
    ChatFull(9),
    VoiceSlotsFull(10);

    private final int code;

    EChatActionResult(int i) {
        this.code = i;
    }

    public int code() {
        return this.code;
    }

    public static EChatActionResult from(int i) {
        for (EChatActionResult eChatActionResult : values()) {
            if (eChatActionResult.code == i) {
                return eChatActionResult;
            }
        }
        return null;
    }
}
