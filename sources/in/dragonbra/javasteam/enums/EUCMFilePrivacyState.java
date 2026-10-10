package in.dragonbra.javasteam.enums;

import java.util.EnumSet;
import java.util.Iterator;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v1 in.dragonbra.javasteam.enums.EUCMFilePrivacyState, still in use, count: 1, list:
  (r0v1 in.dragonbra.javasteam.enums.EUCMFilePrivacyState) from 0x003d: INVOKE 
  (r2v3 in.dragonbra.javasteam.enums.EUCMFilePrivacyState)
  (r1v2 in.dragonbra.javasteam.enums.EUCMFilePrivacyState)
  (r0v1 in.dragonbra.javasteam.enums.EUCMFilePrivacyState)
  (r3v3 in.dragonbra.javasteam.enums.EUCMFilePrivacyState)
 STATIC call: java.util.EnumSet.of(java.lang.Enum, java.lang.Enum, java.lang.Enum, java.lang.Enum):java.util.EnumSet A[MD:<E extends java.lang.Enum<E>>:(E extends java.lang.Enum<E>, E extends java.lang.Enum<E>, E extends java.lang.Enum<E>, E extends java.lang.Enum<E>):java.util.EnumSet<E extends java.lang.Enum<E>> (c), WRAPPED] (LINE:19)
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
public final class EUCMFilePrivacyState {
    Invalid(-1),
    Private(2),
    FriendsOnly(4),
    Public(8),
    Unlisted(16);

    public static final EnumSet<EUCMFilePrivacyState> All;
    private final int code;

    public static EUCMFilePrivacyState valueOf(String str) {
        return (EUCMFilePrivacyState) Enum.valueOf(EUCMFilePrivacyState.class, str);
    }

    public static EUCMFilePrivacyState[] values() {
        return (EUCMFilePrivacyState[]) $VALUES.clone();
    }

    static {
        All = EnumSet.of(eUCMFilePrivacyState, eUCMFilePrivacyState, new EUCMFilePrivacyState(2), new EUCMFilePrivacyState(16));
    }

    private EUCMFilePrivacyState(int i) {
        this.code = i;
    }

    public int code() {
        return this.code;
    }

    public static EnumSet<EUCMFilePrivacyState> from(int i) {
        EnumSet<EUCMFilePrivacyState> enumSetNoneOf = EnumSet.noneOf(EUCMFilePrivacyState.class);
        for (EUCMFilePrivacyState eUCMFilePrivacyState : values()) {
            int i2 = eUCMFilePrivacyState.code;
            if ((i2 & i) == i2) {
                enumSetNoneOf.add(eUCMFilePrivacyState);
            }
        }
        return enumSetNoneOf;
    }

    public static int code(EnumSet<EUCMFilePrivacyState> enumSet) {
        Iterator<EUCMFilePrivacyState> it = enumSet.iterator();
        int i = 0;
        while (it.hasNext()) {
            i |= it.next().code;
        }
        return i;
    }
}
