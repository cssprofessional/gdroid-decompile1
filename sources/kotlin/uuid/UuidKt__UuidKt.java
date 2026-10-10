package kotlin.uuid;

import kotlin.jvm.internal.Intrinsics;
import kotlin.text.HexExtensionsKt;

/* JADX INFO: compiled from: Uuid.kt */
/* JADX INFO: loaded from: classes3.dex */
public class UuidKt__UuidKt extends UuidKt__UuidJVMKt {
    public static final void formatBytesIntoCommonImpl(long j, byte[] dst, int i, int i2, int i3) {
        Intrinsics.checkNotNullParameter(dst, "dst");
        int i4 = 7 - i2;
        int i5 = 8 - i3;
        if (i5 > i4) {
            return;
        }
        while (true) {
            int i6 = HexExtensionsKt.getBYTE_TO_LOWER_CASE_HEX_DIGITS()[(int) ((j >> (i4 << 3)) & 255)];
            int i7 = i + 1;
            dst[i] = (byte) (i6 >> 8);
            i += 2;
            dst[i7] = (byte) i6;
            if (i4 == i5) {
                return;
            } else {
                i4--;
            }
        }
    }
}
