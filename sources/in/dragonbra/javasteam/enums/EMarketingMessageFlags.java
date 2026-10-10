package in.dragonbra.javasteam.enums;

import java.util.EnumSet;
import java.util.Iterator;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v2 in.dragonbra.javasteam.enums.EMarketingMessageFlags, still in use, count: 1, list:
  (r0v2 in.dragonbra.javasteam.enums.EMarketingMessageFlags) from 0x003a: INVOKE 
  (r0v2 in.dragonbra.javasteam.enums.EMarketingMessageFlags)
  (r1v3 in.dragonbra.javasteam.enums.EMarketingMessageFlags)
  (r2v4 in.dragonbra.javasteam.enums.EMarketingMessageFlags)
 STATIC call: java.util.EnumSet.of(java.lang.Enum, java.lang.Enum, java.lang.Enum):java.util.EnumSet A[MD:<E extends java.lang.Enum<E>>:(E extends java.lang.Enum<E>, E extends java.lang.Enum<E>, E extends java.lang.Enum<E>):java.util.EnumSet<E extends java.lang.Enum<E>> (c), WRAPPED] (LINE:19)
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
public final class EMarketingMessageFlags {
    None(0),
    HighPriority(1),
    PlatformWindows(2),
    PlatformMac(4),
    PlatformLinux(8);

    public static final EnumSet<EMarketingMessageFlags> PlatformRestrictions = EnumSet.of(new EMarketingMessageFlags(2), new EMarketingMessageFlags(4), new EMarketingMessageFlags(8));
    private final int code;

    public static EMarketingMessageFlags valueOf(String str) {
        return (EMarketingMessageFlags) Enum.valueOf(EMarketingMessageFlags.class, str);
    }

    public static EMarketingMessageFlags[] values() {
        return (EMarketingMessageFlags[]) $VALUES.clone();
    }

    static {
    }

    private EMarketingMessageFlags(int i) {
        this.code = i;
    }

    public int code() {
        return this.code;
    }

    public static EnumSet<EMarketingMessageFlags> from(int i) {
        EnumSet<EMarketingMessageFlags> enumSetNoneOf = EnumSet.noneOf(EMarketingMessageFlags.class);
        for (EMarketingMessageFlags eMarketingMessageFlags : values()) {
            int i2 = eMarketingMessageFlags.code;
            if ((i2 & i) == i2) {
                enumSetNoneOf.add(eMarketingMessageFlags);
            }
        }
        return enumSetNoneOf;
    }

    public static int code(EnumSet<EMarketingMessageFlags> enumSet) {
        Iterator<EMarketingMessageFlags> it = enumSet.iterator();
        int i = 0;
        while (it.hasNext()) {
            i |= it.next().code;
        }
        return i;
    }
}
