package in.dragonbra.javasteam.networking.steam3;

import java.util.EnumSet;
import java.util.Iterator;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v0 in.dragonbra.javasteam.networking.steam3.ProtocolTypes, still in use, count: 1, list:
  (r0v0 in.dragonbra.javasteam.networking.steam3.ProtocolTypes) from 0x0025: INVOKE 
  (r0v0 in.dragonbra.javasteam.networking.steam3.ProtocolTypes)
  (r1v1 in.dragonbra.javasteam.networking.steam3.ProtocolTypes)
  (r2v2 in.dragonbra.javasteam.networking.steam3.ProtocolTypes)
 STATIC call: java.util.EnumSet.of(java.lang.Enum, java.lang.Enum, java.lang.Enum):java.util.EnumSet A[MD:<E extends java.lang.Enum<E>>:(E extends java.lang.Enum<E>, E extends java.lang.Enum<E>, E extends java.lang.Enum<E>):java.util.EnumSet<E extends java.lang.Enum<E>> (c), WRAPPED] (LINE:17)
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
public final class ProtocolTypes {
    TCP(1),
    UDP(2),
    WEB_SOCKET(4);

    public static final EnumSet<ProtocolTypes> ALL = EnumSet.of(new ProtocolTypes(1), new ProtocolTypes(2), new ProtocolTypes(4));
    private final int code;

    public static ProtocolTypes valueOf(String str) {
        return (ProtocolTypes) Enum.valueOf(ProtocolTypes.class, str);
    }

    public static ProtocolTypes[] values() {
        return (ProtocolTypes[]) $VALUES.clone();
    }

    static {
    }

    private ProtocolTypes(int i) {
        this.code = i;
    }

    public int code() {
        return this.code;
    }

    public static EnumSet<ProtocolTypes> from(int i) {
        EnumSet<ProtocolTypes> enumSetNoneOf = EnumSet.noneOf(ProtocolTypes.class);
        for (ProtocolTypes protocolTypes : values()) {
            int i2 = protocolTypes.code;
            if ((i2 & i) == i2) {
                enumSetNoneOf.add(protocolTypes);
            }
        }
        return enumSetNoneOf;
    }

    public static int code(EnumSet<ProtocolTypes> enumSet) {
        Iterator<ProtocolTypes> it = enumSet.iterator();
        int i = 0;
        while (it.hasNext()) {
            i |= it.next().code;
        }
        return i;
    }
}
