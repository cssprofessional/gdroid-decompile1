package kotlin.uuid;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: UuidJVM.kt */
/* JADX INFO: loaded from: classes3.dex */
public class UuidKt__UuidJVMKt {
    public static final Object serializedUuid(Uuid uuid) {
        Intrinsics.checkNotNullParameter(uuid, "uuid");
        return new UuidSerialized(uuid.getMostSignificantBits(), uuid.getLeastSignificantBits());
    }

    public static final void formatBytesInto(long j, byte[] dst, int i, int i2, int i3) {
        Intrinsics.checkNotNullParameter(dst, "dst");
        UuidKt__UuidKt.formatBytesIntoCommonImpl(j, dst, i, i2, i3);
    }
}
