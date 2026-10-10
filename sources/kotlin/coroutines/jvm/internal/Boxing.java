package kotlin.coroutines.jvm.internal;

/* JADX INFO: compiled from: boxing.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class Boxing {
    public static final Boolean boxBoolean(boolean z) {
        return Boolean.valueOf(z);
    }

    public static final Byte boxByte(byte b) {
        return Byte.valueOf(b);
    }

    public static final Integer boxInt(int i) {
        return new Integer(i);
    }

    public static final Long boxLong(long j) {
        return new Long(j);
    }
}
