package in.dragonbra.javasteam.enums;

import in.dragonbra.javasteam.protobufs.steamclient.Enums;
import java.util.EnumSet;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public enum EClientPersonaStateFlag {
    Status(1),
    PlayerName(2),
    QueryPort(4),
    SourceID(8),
    Presence(16),
    LastSeen(64),
    UserClanRank(128),
    GameExtraInfo(256),
    GameDataBlob(512),
    ClanData(1024),
    Facebook(2048),
    RichPresence(4096),
    Broadcast(Enums.EProtoAppType.k_EAppTypeMusicAlbum_VALUE),
    Watching(Enums.EProtoAppType.k_EAppTypeSeries_VALUE);

    private final int code;

    EClientPersonaStateFlag(int i) {
        this.code = i;
    }

    public int code() {
        return this.code;
    }

    public static EnumSet<EClientPersonaStateFlag> from(int i) {
        EnumSet<EClientPersonaStateFlag> enumSetNoneOf = EnumSet.noneOf(EClientPersonaStateFlag.class);
        for (EClientPersonaStateFlag eClientPersonaStateFlag : values()) {
            int i2 = eClientPersonaStateFlag.code;
            if ((i2 & i) == i2) {
                enumSetNoneOf.add(eClientPersonaStateFlag);
            }
        }
        return enumSetNoneOf;
    }

    public static int code(EnumSet<EClientPersonaStateFlag> enumSet) {
        Iterator<EClientPersonaStateFlag> it = enumSet.iterator();
        int i = 0;
        while (it.hasNext()) {
            i |= it.next().code;
        }
        return i;
    }
}
