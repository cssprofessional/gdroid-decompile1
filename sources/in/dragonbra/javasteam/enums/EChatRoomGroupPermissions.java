package in.dragonbra.javasteam.enums;

import java.util.EnumSet;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public enum EChatRoomGroupPermissions {
    Default(0),
    Valid(1),
    CanInvite(2),
    CanKick(4),
    CanBan(8),
    CanAdminChannel(16);

    private final int code;

    EChatRoomGroupPermissions(int i) {
        this.code = i;
    }

    public int code() {
        return this.code;
    }

    public static EnumSet<EChatRoomGroupPermissions> from(int i) {
        EnumSet<EChatRoomGroupPermissions> enumSetNoneOf = EnumSet.noneOf(EChatRoomGroupPermissions.class);
        for (EChatRoomGroupPermissions eChatRoomGroupPermissions : values()) {
            int i2 = eChatRoomGroupPermissions.code;
            if ((i2 & i) == i2) {
                enumSetNoneOf.add(eChatRoomGroupPermissions);
            }
        }
        return enumSetNoneOf;
    }

    public static int code(EnumSet<EChatRoomGroupPermissions> enumSet) {
        Iterator<EChatRoomGroupPermissions> it = enumSet.iterator();
        int i = 0;
        while (it.hasNext()) {
            i |= it.next().code;
        }
        return i;
    }
}
