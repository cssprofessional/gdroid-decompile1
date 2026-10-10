package in.dragonbra.javasteam.enums;

import in.dragonbra.javasteam.protobufs.steamclient.Enums;
import java.util.EnumSet;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public enum EPersonaStateFlag {
    HasRichPresence(1),
    InJoinableGame(2),
    Golden(4),
    RemotePlayTogether(8),
    ClientTypeWeb(256),
    ClientTypeMobile(512),
    ClientTypeTenfoot(1024),
    ClientTypeVR(2048),
    LaunchTypeGamepad(4096),
    LaunchTypeCompatTool(Enums.EProtoAppType.k_EAppTypeMusicAlbum_VALUE);

    private final int code;

    EPersonaStateFlag(int i) {
        this.code = i;
    }

    public int code() {
        return this.code;
    }

    public static EnumSet<EPersonaStateFlag> from(int i) {
        EnumSet<EPersonaStateFlag> enumSetNoneOf = EnumSet.noneOf(EPersonaStateFlag.class);
        for (EPersonaStateFlag ePersonaStateFlag : values()) {
            int i2 = ePersonaStateFlag.code;
            if ((i2 & i) == i2) {
                enumSetNoneOf.add(ePersonaStateFlag);
            }
        }
        return enumSetNoneOf;
    }

    public static int code(EnumSet<EPersonaStateFlag> enumSet) {
        Iterator<EPersonaStateFlag> it = enumSet.iterator();
        int i = 0;
        while (it.hasNext()) {
            i |= it.next().code;
        }
        return i;
    }
}
