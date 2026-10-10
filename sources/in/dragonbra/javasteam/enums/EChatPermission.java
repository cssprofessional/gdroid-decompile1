package in.dragonbra.javasteam.enums;

import java.util.EnumSet;
import java.util.Iterator;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r6v0 in.dragonbra.javasteam.enums.EChatPermission, still in use, count: 1, list:
  (r6v0 in.dragonbra.javasteam.enums.EChatPermission) from 0x0093: FILLED_NEW_ARRAY 
  (r0v7 in.dragonbra.javasteam.enums.EChatPermission)
  (r1v4 in.dragonbra.javasteam.enums.EChatPermission)
  (r7v1 in.dragonbra.javasteam.enums.EChatPermission)
  (r3v0 in.dragonbra.javasteam.enums.EChatPermission)
  (r4v0 in.dragonbra.javasteam.enums.EChatPermission)
  (r5v0 in.dragonbra.javasteam.enums.EChatPermission)
  (r6v0 in.dragonbra.javasteam.enums.EChatPermission)
 A[WRAPPED] (LINE:37) elemType: in.dragonbra.javasteam.enums.EChatPermission
	at jadx.core.utils.InsnRemover.removeSsaVar(InsnRemover.java:162)
	at jadx.core.utils.InsnRemover.unbindResult(InsnRemover.java:127)
	at jadx.core.utils.InsnRemover.lambda$unbindInsns$1(InsnRemover.java:99)
	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
	at jadx.core.utils.InsnRemover.unbindInsns(InsnRemover.java:98)
	at jadx.core.utils.InsnRemover.removeAllAndUnbind(InsnRemover.java:252)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:180)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX INFO: loaded from: classes.dex */
public final class EChatPermission {
    Close(1),
    Invite(2),
    Talk(8),
    Kick(16),
    Mute(32),
    SetMetadata(64),
    ChangePermissions(128),
    Ban(256),
    ChangeAccess(512),
    Mask(1019);

    public static final EnumSet<EChatPermission> EveryoneDefault;
    public static final EnumSet<EChatPermission> EveryoneNotInClanDefault;
    public static final EnumSet<EChatPermission> MemberDefault;
    public static final EnumSet<EChatPermission> OfficerDefault;
    public static final EnumSet<EChatPermission> OwnerDefault;
    private final int code;

    public static EChatPermission valueOf(String str) {
        return (EChatPermission) Enum.valueOf(EChatPermission.class, str);
    }

    public static EChatPermission[] values() {
        return (EChatPermission[]) $VALUES.clone();
    }

    static {
        EChatPermission eChatPermission = Invite;
        EChatPermission eChatPermission2 = Talk;
        EChatPermission eChatPermission3 = Kick;
        EChatPermission eChatPermission4 = Ban;
        EveryoneNotInClanDefault = EnumSet.of(eChatPermission2);
        EveryoneDefault = EnumSet.of(eChatPermission2, eChatPermission);
        MemberDefault = EnumSet.of(eChatPermission4, eChatPermission3, eChatPermission2, eChatPermission);
        OfficerDefault = EnumSet.of(eChatPermission4, eChatPermission3, eChatPermission2, eChatPermission);
        OwnerDefault = EnumSet.of(eChatPermission, eChatPermission4, eChatPermission, eChatPermission, eChatPermission3, eChatPermission2, eChatPermission, eChatPermission);
    }

    private EChatPermission(int i) {
        this.code = i;
    }

    public int code() {
        return this.code;
    }

    public static EnumSet<EChatPermission> from(int i) {
        EnumSet<EChatPermission> enumSetNoneOf = EnumSet.noneOf(EChatPermission.class);
        for (EChatPermission eChatPermission : values()) {
            int i2 = eChatPermission.code;
            if ((i2 & i) == i2) {
                enumSetNoneOf.add(eChatPermission);
            }
        }
        return enumSetNoneOf;
    }

    public static int code(EnumSet<EChatPermission> enumSet) {
        Iterator<EChatPermission> it = enumSet.iterator();
        int i = 0;
        while (it.hasNext()) {
            i |= it.next().code;
        }
        return i;
    }
}
