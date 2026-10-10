package in.dragonbra.javasteam.enums;

import java.util.EnumSet;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public enum EServerFlags {
    None(0),
    Active(1),
    Secure(2),
    Dedicated(4),
    Linux(8),
    Passworded(16),
    Private(32);

    private final int code;

    EServerFlags(int i) {
        this.code = i;
    }

    public int code() {
        return this.code;
    }

    public static EnumSet<EServerFlags> from(int i) {
        EnumSet<EServerFlags> enumSetNoneOf = EnumSet.noneOf(EServerFlags.class);
        for (EServerFlags eServerFlags : values()) {
            int i2 = eServerFlags.code;
            if ((i2 & i) == i2) {
                enumSetNoneOf.add(eServerFlags);
            }
        }
        return enumSetNoneOf;
    }

    public static int code(EnumSet<EServerFlags> enumSet) {
        Iterator<EServerFlags> it = enumSet.iterator();
        int i = 0;
        while (it.hasNext()) {
            i |= it.next().code;
        }
        return i;
    }
}
