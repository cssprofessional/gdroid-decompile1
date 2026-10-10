package in.dragonbra.javasteam.enums;

import in.dragonbra.javasteam.protobufs.steamclient.Enums;
import java.util.EnumSet;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public enum EChatMemberStateChange {
    Entered(1),
    Left(2),
    Disconnected(4),
    Kicked(8),
    Banned(16),
    VoiceSpeaking(4096),
    VoiceDoneSpeaking(Enums.EProtoAppType.k_EAppTypeMusicAlbum_VALUE);

    private final int code;

    EChatMemberStateChange(int i) {
        this.code = i;
    }

    public int code() {
        return this.code;
    }

    public static EnumSet<EChatMemberStateChange> from(int i) {
        EnumSet<EChatMemberStateChange> enumSetNoneOf = EnumSet.noneOf(EChatMemberStateChange.class);
        for (EChatMemberStateChange eChatMemberStateChange : values()) {
            int i2 = eChatMemberStateChange.code;
            if ((i2 & i) == i2) {
                enumSetNoneOf.add(eChatMemberStateChange);
            }
        }
        return enumSetNoneOf;
    }

    public static int code(EnumSet<EChatMemberStateChange> enumSet) {
        Iterator<EChatMemberStateChange> it = enumSet.iterator();
        int i = 0;
        while (it.hasNext()) {
            i |= it.next().code;
        }
        return i;
    }
}
