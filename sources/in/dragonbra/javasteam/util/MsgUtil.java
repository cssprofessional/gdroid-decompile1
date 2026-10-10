package in.dragonbra.javasteam.util;

import in.dragonbra.javasteam.enums.EMsg;

/* JADX INFO: loaded from: classes2.dex */
public class MsgUtil {
    private static final int EMSG_MASK = Integer.MAX_VALUE;
    private static final int PROTO_MASK = Integer.MIN_VALUE;

    public static int getGCMsg(int i) {
        return i & Integer.MAX_VALUE;
    }

    public static boolean isProtoBuf(int i) {
        return (((long) i) & 2147483648L) > 0;
    }

    public static int makeGCMsg(int i, boolean z) {
        return z ? i | Integer.MIN_VALUE : i;
    }

    public static int makeMsg(int i, boolean z) {
        return z ? i | Integer.MIN_VALUE : i;
    }

    public static EMsg getMsg(int i) {
        return EMsg.from(i & Integer.MAX_VALUE);
    }
}
