package in.dragonbra.javasteam.enums;

import java.util.EnumSet;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public enum EChatFlags {
    Locked(1),
    InvisibleToFriends(2),
    Moderated(4),
    Unjoinable(8);

    private final int code;

    EChatFlags(int i) {
        this.code = i;
    }

    public int code() {
        return this.code;
    }

    public static EnumSet<EChatFlags> from(int i) {
        EnumSet<EChatFlags> enumSetNoneOf = EnumSet.noneOf(EChatFlags.class);
        for (EChatFlags eChatFlags : values()) {
            int i2 = eChatFlags.code;
            if ((i2 & i) == i2) {
                enumSetNoneOf.add(eChatFlags);
            }
        }
        return enumSetNoneOf;
    }

    public static int code(EnumSet<EChatFlags> enumSet) {
        Iterator<EChatFlags> it = enumSet.iterator();
        int i = 0;
        while (it.hasNext()) {
            i |= it.next().code;
        }
        return i;
    }
}
