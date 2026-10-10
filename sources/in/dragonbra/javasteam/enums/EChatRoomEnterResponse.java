package in.dragonbra.javasteam.enums;

/* JADX INFO: loaded from: classes.dex */
public enum EChatRoomEnterResponse {
    Success(1),
    DoesntExist(2),
    NotAllowed(3),
    Full(4),
    Error(5),
    Banned(6),
    Limited(7),
    ClanDisabled(8),
    CommunityBan(9),
    MemberBlockedYou(10),
    YouBlockedMember(11);

    private final int code;

    EChatRoomEnterResponse(int i) {
        this.code = i;
    }

    public int code() {
        return this.code;
    }

    public static EChatRoomEnterResponse from(int i) {
        for (EChatRoomEnterResponse eChatRoomEnterResponse : values()) {
            if (eChatRoomEnterResponse.code == i) {
                return eChatRoomEnterResponse;
            }
        }
        return null;
    }
}
