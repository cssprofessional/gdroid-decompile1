package in.dragonbra.javasteam.enums;

import java.util.EnumSet;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public enum EDepotFileFlag {
    UserConfig(1),
    VersionedUserConfig(2),
    Encrypted(4),
    ReadOnly(8),
    Hidden(16),
    Executable(32),
    Directory(64),
    CustomExecutable(128),
    InstallScript(256),
    Symlink(512);

    private final int code;

    EDepotFileFlag(int i) {
        this.code = i;
    }

    public int code() {
        return this.code;
    }

    public static EnumSet<EDepotFileFlag> from(int i) {
        EnumSet<EDepotFileFlag> enumSetNoneOf = EnumSet.noneOf(EDepotFileFlag.class);
        for (EDepotFileFlag eDepotFileFlag : values()) {
            int i2 = eDepotFileFlag.code;
            if ((i2 & i) == i2) {
                enumSetNoneOf.add(eDepotFileFlag);
            }
        }
        return enumSetNoneOf;
    }

    public static int code(EnumSet<EDepotFileFlag> enumSet) {
        Iterator<EDepotFileFlag> it = enumSet.iterator();
        int i = 0;
        while (it.hasNext()) {
            i |= it.next().code;
        }
        return i;
    }
}
