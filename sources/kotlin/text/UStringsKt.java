package kotlin.text;

import in.dragonbra.javasteam.types.SteamID;
import kotlin.UByte;
import kotlin.UInt;
import kotlin.ULong;
import kotlin.UShort;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: UStrings.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class UStringsKt {
    public static final UByte toUByteOrNull(String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        return toUByteOrNull(str, 10);
    }

    public static final UByte toUByteOrNull(String str, int i) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        UInt uIntOrNull = toUIntOrNull(str, i);
        if (uIntOrNull == null) {
            return null;
        }
        int iM8176unboximpl = uIntOrNull.m8176unboximpl();
        if (Integer.compareUnsigned(iM8176unboximpl, UInt.m8172constructorimpl(255)) > 0) {
            return null;
        }
        return UByte.m8153boximpl(UByte.m8154constructorimpl((byte) iM8176unboximpl));
    }

    public static final UShort toUShortOrNull(String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        return toUShortOrNull(str, 10);
    }

    public static final UShort toUShortOrNull(String str, int i) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        UInt uIntOrNull = toUIntOrNull(str, i);
        if (uIntOrNull == null) {
            return null;
        }
        int iM8176unboximpl = uIntOrNull.m8176unboximpl();
        if (Integer.compareUnsigned(iM8176unboximpl, UInt.m8172constructorimpl(65535)) > 0) {
            return null;
        }
        return UShort.m8205boximpl(UShort.m8206constructorimpl((short) iM8176unboximpl));
    }

    public static final UInt toUIntOrNull(String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        return toUIntOrNull(str, 10);
    }

    public static final UInt toUIntOrNull(String str, int i) {
        int i2;
        Intrinsics.checkNotNullParameter(str, "<this>");
        CharsKt__CharJVMKt.checkRadix(i);
        int length = str.length();
        if (length == 0) {
            return null;
        }
        int i3 = 0;
        char cCharAt = str.charAt(0);
        if (Intrinsics.compare((int) cCharAt, 48) < 0) {
            i2 = 1;
            if (length == 1 || cCharAt != '+') {
                return null;
            }
        } else {
            i2 = 0;
        }
        int iM8172constructorimpl = UInt.m8172constructorimpl(i);
        int iDivideUnsigned = 119304647;
        while (i2 < length) {
            int iDigitOf = CharsKt__CharJVMKt.digitOf(str.charAt(i2), i);
            if (iDigitOf < 0) {
                return null;
            }
            if (Integer.compareUnsigned(i3, iDivideUnsigned) > 0) {
                if (iDivideUnsigned == 119304647) {
                    iDivideUnsigned = Integer.divideUnsigned(-1, iM8172constructorimpl);
                    if (Integer.compareUnsigned(i3, iDivideUnsigned) > 0) {
                    }
                }
                return null;
            }
            int iM8172constructorimpl2 = UInt.m8172constructorimpl(i3 * iM8172constructorimpl);
            int iM8172constructorimpl3 = UInt.m8172constructorimpl(UInt.m8172constructorimpl(iDigitOf) + iM8172constructorimpl2);
            if (Integer.compareUnsigned(iM8172constructorimpl3, iM8172constructorimpl2) < 0) {
                return null;
            }
            i2++;
            i3 = iM8172constructorimpl3;
        }
        return UInt.m8171boximpl(i3);
    }

    public static final ULong toULongOrNull(String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        return toULongOrNull(str, 10);
    }

    public static final ULong toULongOrNull(String str, int i) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        CharsKt__CharJVMKt.checkRadix(i);
        int length = str.length();
        if (length == 0) {
            return null;
        }
        int i2 = 0;
        char cCharAt = str.charAt(0);
        if (Intrinsics.compare((int) cCharAt, 48) < 0) {
            i2 = 1;
            if (length == 1 || cCharAt != '+') {
                return null;
            }
        }
        long jM8189constructorimpl = ULong.m8189constructorimpl(i);
        long j = 0;
        long jDivideUnsigned = 512409557603043100L;
        while (i2 < length) {
            int iDigitOf = CharsKt__CharJVMKt.digitOf(str.charAt(i2), i);
            if (iDigitOf < 0) {
                return null;
            }
            if (Long.compareUnsigned(j, jDivideUnsigned) > 0) {
                if (jDivideUnsigned == 512409557603043100L) {
                    jDivideUnsigned = Long.divideUnsigned(-1L, jM8189constructorimpl);
                    if (Long.compareUnsigned(j, jDivideUnsigned) > 0) {
                    }
                }
                return null;
            }
            long jM8189constructorimpl2 = ULong.m8189constructorimpl(j * jM8189constructorimpl);
            long jM8189constructorimpl3 = ULong.m8189constructorimpl(ULong.m8189constructorimpl(((long) UInt.m8172constructorimpl(iDigitOf)) & SteamID.ACCOUNT_ID_MASK) + jM8189constructorimpl2);
            if (Long.compareUnsigned(jM8189constructorimpl3, jM8189constructorimpl2) < 0) {
                return null;
            }
            i2++;
            j = jM8189constructorimpl3;
        }
        return ULong.m8188boximpl(j);
    }
}
