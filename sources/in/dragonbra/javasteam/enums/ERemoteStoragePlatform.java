package in.dragonbra.javasteam.enums;

import java.util.EnumSet;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public enum ERemoteStoragePlatform {
    None(0),
    Windows(1),
    OSX(2),
    PS3(4),
    Linux(8),
    Switch(16),
    Android(32),
    IPhoneOS(64),
    All(-1);

    private final int code;

    ERemoteStoragePlatform(int i) {
        this.code = i;
    }

    public int code() {
        return this.code;
    }

    public static EnumSet<ERemoteStoragePlatform> from(int i) {
        EnumSet<ERemoteStoragePlatform> enumSetNoneOf = EnumSet.noneOf(ERemoteStoragePlatform.class);
        for (ERemoteStoragePlatform eRemoteStoragePlatform : values()) {
            int i2 = eRemoteStoragePlatform.code;
            if ((i2 & i) == i2) {
                enumSetNoneOf.add(eRemoteStoragePlatform);
            }
        }
        return enumSetNoneOf;
    }

    public static int code(EnumSet<ERemoteStoragePlatform> enumSet) {
        Iterator<ERemoteStoragePlatform> it = enumSet.iterator();
        int i = 0;
        while (it.hasNext()) {
            i |= it.next().code;
        }
        return i;
    }
}
