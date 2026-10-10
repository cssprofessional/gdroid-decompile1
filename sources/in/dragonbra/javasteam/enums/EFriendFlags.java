package in.dragonbra.javasteam.enums;

import java.util.EnumSet;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public enum EFriendFlags {
    None(0),
    Blocked(1),
    FriendshipRequested(2),
    Immediate(4),
    ClanMember(8),
    OnGameServer(16),
    RequestingFriendship(128),
    RequestingInfo(256),
    Ignored(512),
    IgnoredFriend(1024),
    Suggested(2048),
    ChatMember(4096),
    FlagAll(65535);

    private final int code;

    EFriendFlags(int i) {
        this.code = i;
    }

    public int code() {
        return this.code;
    }

    public static EnumSet<EFriendFlags> from(int i) {
        EnumSet<EFriendFlags> enumSetNoneOf = EnumSet.noneOf(EFriendFlags.class);
        for (EFriendFlags eFriendFlags : values()) {
            int i2 = eFriendFlags.code;
            if ((i2 & i) == i2) {
                enumSetNoneOf.add(eFriendFlags);
            }
        }
        return enumSetNoneOf;
    }

    public static int code(EnumSet<EFriendFlags> enumSet) {
        Iterator<EFriendFlags> it = enumSet.iterator();
        int i = 0;
        while (it.hasNext()) {
            i |= it.next().code;
        }
        return i;
    }
}
