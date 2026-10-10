package in.dragonbra.javasteam.enums;

import java.util.EnumSet;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public enum EDRMBlobDownloadType {
    Error(0),
    File(1),
    Parts(2),
    Compressed(4),
    AllMask(7),
    IsJob(8),
    HighPriority(16),
    AddTimestamp(32),
    LowPriority(64);

    private final int code;

    EDRMBlobDownloadType(int i) {
        this.code = i;
    }

    public int code() {
        return this.code;
    }

    public static EnumSet<EDRMBlobDownloadType> from(int i) {
        EnumSet<EDRMBlobDownloadType> enumSetNoneOf = EnumSet.noneOf(EDRMBlobDownloadType.class);
        for (EDRMBlobDownloadType eDRMBlobDownloadType : values()) {
            int i2 = eDRMBlobDownloadType.code;
            if ((i2 & i) == i2) {
                enumSetNoneOf.add(eDRMBlobDownloadType);
            }
        }
        return enumSetNoneOf;
    }

    public static int code(EnumSet<EDRMBlobDownloadType> enumSet) {
        Iterator<EDRMBlobDownloadType> it = enumSet.iterator();
        int i = 0;
        while (it.hasNext()) {
            i |= it.next().code;
        }
        return i;
    }
}
