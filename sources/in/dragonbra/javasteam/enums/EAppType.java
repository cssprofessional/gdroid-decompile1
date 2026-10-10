package in.dragonbra.javasteam.enums;

import in.dragonbra.javasteam.protobufs.steamclient.Enums;
import java.util.EnumSet;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public enum EAppType {
    Invalid(0),
    Game(1),
    Application(2),
    Tool(4),
    Demo(8),
    Deprected(16),
    DLC(32),
    Guide(64),
    Driver(128),
    Config(256),
    Hardware(512),
    Franchise(1024),
    Video(2048),
    Plugin(4096),
    Music(Enums.EProtoAppType.k_EAppTypeMusicAlbum_VALUE),
    Series(Enums.EProtoAppType.k_EAppTypeSeries_VALUE),
    Comic(32768),
    Beta(Enums.EProtoAppType.k_EAppTypeBeta_VALUE),
    Shortcut(Enums.EProtoAppType.k_EAppTypeShortcut_VALUE);

    private final int code;

    EAppType(int i) {
        this.code = i;
    }

    public int code() {
        return this.code;
    }

    public static EnumSet<EAppType> from(int i) {
        EnumSet<EAppType> enumSetNoneOf = EnumSet.noneOf(EAppType.class);
        for (EAppType eAppType : values()) {
            int i2 = eAppType.code;
            if ((i2 & i) == i2) {
                enumSetNoneOf.add(eAppType);
            }
        }
        return enumSetNoneOf;
    }

    public static int code(EnumSet<EAppType> enumSet) {
        Iterator<EAppType> it = enumSet.iterator();
        int i = 0;
        while (it.hasNext()) {
            i |= it.next().code;
        }
        return i;
    }
}
