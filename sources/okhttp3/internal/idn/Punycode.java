package okhttp3.internal.idn;

import in.dragonbra.javasteam.protobufs.steamclient.Enums;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntProgression;
import kotlin.ranges.RangesKt___RangesKt;
import kotlin.text.CharsKt__CharKt;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;
import okio.Buffer;
import okio.ByteString;

/* JADX INFO: compiled from: Punycode.kt */
/* JADX INFO: loaded from: classes3.dex */
public final class Punycode {
    public static final Punycode INSTANCE = new Punycode();
    public static final String PREFIX_STRING = "xn--";
    public static final ByteString PREFIX = ByteString.Companion.encodeUtf8("xn--");

    public final String encode(String string) {
        int iIndexOf$default;
        Intrinsics.checkNotNullParameter(string, "string");
        int length = string.length();
        Buffer buffer = new Buffer();
        for (int i = 0; i < length; i = iIndexOf$default + 1) {
            iIndexOf$default = StringsKt__StringsKt.indexOf$default((CharSequence) string, '.', i, false, 4, (Object) null);
            if (iIndexOf$default == -1) {
                iIndexOf$default = length;
            }
            if (!encodeLabel(string, i, iIndexOf$default, buffer)) {
                return null;
            }
            if (iIndexOf$default >= length) {
                break;
            }
            buffer.writeByte(46);
        }
        return buffer.readUtf8();
    }

    public final boolean encodeLabel(String str, int i, int i2, Buffer buffer) {
        int i3;
        int i4;
        if (!requiresEncode(str, i, i2)) {
            buffer.writeUtf8(str, i, i2);
            return true;
        }
        buffer.write(PREFIX);
        List<Integer> listCodePoints = codePoints(str, i, i2);
        Iterator<Integer> it = listCodePoints.iterator();
        boolean z = false;
        int i5 = 0;
        while (true) {
            i3 = 128;
            if (!it.hasNext()) {
                break;
            }
            int iIntValue = it.next().intValue();
            if (iIntValue < 128) {
                buffer.writeByte(iIntValue);
                i5++;
            }
        }
        if (i5 > 0) {
            buffer.writeByte(45);
        }
        int iAdapt = 72;
        int i6 = 0;
        int i7 = i5;
        while (i7 < listCodePoints.size()) {
            Iterator<T> it2 = listCodePoints.iterator();
            if (!it2.hasNext()) {
                throw new NoSuchElementException();
            }
            Object next = it2.next();
            if (it2.hasNext()) {
                int iIntValue2 = ((Number) next).intValue();
                if (iIntValue2 < i3) {
                    iIntValue2 = Integer.MAX_VALUE;
                }
                do {
                    Object next2 = it2.next();
                    int iIntValue3 = ((Number) next2).intValue();
                    if (iIntValue3 < i3) {
                        iIntValue3 = Integer.MAX_VALUE;
                    }
                    if (iIntValue2 > iIntValue3) {
                        next = next2;
                        iIntValue2 = iIntValue3;
                    }
                } while (it2.hasNext());
            }
            int iIntValue4 = ((Number) next).intValue();
            int i8 = (iIntValue4 - i3) * (i7 + 1);
            if (i6 > Integer.MAX_VALUE - i8) {
                return z;
            }
            int i9 = i6 + i8;
            Iterator<Integer> it3 = listCodePoints.iterator();
            while (it3.hasNext()) {
                int iIntValue5 = it3.next().intValue();
                if (iIntValue5 < iIntValue4) {
                    if (i9 == Integer.MAX_VALUE) {
                        return z;
                    }
                    i9++;
                } else if (iIntValue5 == iIntValue4) {
                    IntProgression intProgressionStep = RangesKt___RangesKt.step(RangesKt___RangesKt.until(36, Integer.MAX_VALUE), 36);
                    int first = intProgressionStep.getFirst();
                    int last = intProgressionStep.getLast();
                    int step = intProgressionStep.getStep();
                    if ((step > 0 && first <= last) || (step < 0 && last <= first)) {
                        i4 = i9;
                        while (true) {
                            int i10 = first <= iAdapt ? 1 : first >= iAdapt + 26 ? 26 : first - iAdapt;
                            if (i4 < i10) {
                                break;
                            }
                            int i11 = i4 - i10;
                            int i12 = 36 - i10;
                            buffer.writeByte(getPunycodeDigit(i10 + (i11 % i12)));
                            i4 = i11 / i12;
                            if (first == last) {
                                break;
                            }
                            first += step;
                        }
                    } else {
                        i4 = i9;
                    }
                    buffer.writeByte(getPunycodeDigit(i4));
                    int i13 = i7 + 1;
                    boolean z2 = i7 == i5;
                    i7 = i13;
                    iAdapt = adapt(i9, i13, z2);
                    z = false;
                    i9 = 0;
                }
            }
            i6 = i9 + 1;
            i3 = iIntValue4 + 1;
            z = false;
        }
        return true;
    }

    public final String decode(String string) {
        int iIndexOf$default;
        Intrinsics.checkNotNullParameter(string, "string");
        int length = string.length();
        Buffer buffer = new Buffer();
        for (int i = 0; i < length; i = iIndexOf$default + 1) {
            iIndexOf$default = StringsKt__StringsKt.indexOf$default((CharSequence) string, '.', i, false, 4, (Object) null);
            if (iIndexOf$default == -1) {
                iIndexOf$default = length;
            }
            if (!decodeLabel(string, i, iIndexOf$default, buffer)) {
                return null;
            }
            if (iIndexOf$default >= length) {
                break;
            }
            buffer.writeByte(46);
        }
        return buffer.readUtf8();
    }

    public final boolean decodeLabel(String str, int i, int i2, Buffer buffer) {
        int i3;
        int i4;
        boolean z = true;
        if (!StringsKt__StringsJVMKt.regionMatches(str, i, PREFIX_STRING, 0, 4, true)) {
            buffer.writeUtf8(str, i, i2);
            return true;
        }
        int i5 = i + 4;
        ArrayList arrayList = new ArrayList();
        int iLastIndexOf$default = StringsKt__StringsKt.lastIndexOf$default((CharSequence) str, '-', i2, false, 4, (Object) null);
        char c = '[';
        char c2 = '{';
        char c3 = 'A';
        if (iLastIndexOf$default >= i5) {
            while (i5 < iLastIndexOf$default) {
                int i6 = i5 + 1;
                char cCharAt = str.charAt(i5);
                if (('a' > cCharAt || cCharAt >= '{') && (('A' > cCharAt || cCharAt >= '[') && (('0' > cCharAt || cCharAt >= ':') && cCharAt != '-'))) {
                    return false;
                }
                arrayList.add(Integer.valueOf(cCharAt));
                i5 = i6;
            }
            i5++;
        }
        int i7 = 128;
        int iAdapt = 72;
        int i8 = 0;
        while (i5 < i2) {
            IntProgression intProgressionStep = RangesKt___RangesKt.step(RangesKt___RangesKt.until(36, Integer.MAX_VALUE), 36);
            int first = intProgressionStep.getFirst();
            int last = intProgressionStep.getLast();
            int step = intProgressionStep.getStep();
            if ((step > 0 && first <= last) || (step < 0 && last <= first)) {
                i3 = i8;
                int i9 = 1;
                while (i5 != i2) {
                    int i10 = i5 + 1;
                    char cCharAt2 = str.charAt(i5);
                    if ('a' <= cCharAt2 && cCharAt2 < c2) {
                        i4 = cCharAt2 - 'a';
                    } else if (c3 <= cCharAt2 && cCharAt2 < c) {
                        i4 = cCharAt2 - 'A';
                    } else {
                        if ('0' > cCharAt2 || cCharAt2 >= ':') {
                            return false;
                        }
                        i4 = cCharAt2 - 22;
                    }
                    int i11 = i9;
                    int i12 = i4 * i11;
                    int i13 = i3;
                    if (i13 > Integer.MAX_VALUE - i12) {
                        return false;
                    }
                    i3 = i13 + i12;
                    int i14 = first <= iAdapt ? 1 : first >= iAdapt + 26 ? 26 : first - iAdapt;
                    if (i4 >= i14) {
                        int i15 = 36 - i14;
                        if (i11 > Integer.MAX_VALUE / i15) {
                            return false;
                        }
                        i9 = i11 * i15;
                        if (first != last) {
                            first += step;
                            i5 = i10;
                            c = '[';
                            c2 = '{';
                            c3 = 'A';
                        }
                    }
                    i5 = i10;
                }
                return false;
            }
            i3 = i8;
            iAdapt = adapt(i3 - i8, arrayList.size() + 1, i8 == 0);
            int size = i3 / (arrayList.size() + 1);
            if (i7 > Integer.MAX_VALUE - size) {
                return false;
            }
            i7 += size;
            int size2 = i3 % (arrayList.size() + 1);
            if (i7 > 1114111) {
                return false;
            }
            arrayList.add(size2, Integer.valueOf(i7));
            i8 = size2 + 1;
            z = true;
            c = '[';
            c2 = '{';
            c3 = 'A';
        }
        boolean z2 = z;
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            buffer.writeUtf8CodePoint(((Number) it.next()).intValue());
        }
        return z2;
    }

    public final int adapt(int i, int i2, boolean z) {
        int i3;
        if (z) {
            i3 = i / 700;
        } else {
            i3 = i / 2;
        }
        int i4 = i3 + (i3 / i2);
        int i5 = 0;
        while (i4 > 455) {
            i4 /= 35;
            i5 += 36;
        }
        return i5 + ((i4 * 36) / (i4 + 38));
    }

    public final boolean requiresEncode(String str, int i, int i2) {
        while (i < i2) {
            if (str.charAt(i) >= 128) {
                return true;
            }
            i++;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [char] */
    /* JADX WARN: Type inference failed for: r0v3 */
    /* JADX WARN: Type inference failed for: r0v6, types: [int] */
    public final List<Integer> codePoints(String str, int i, int i2) {
        ArrayList arrayList = new ArrayList();
        while (i < i2) {
            int iCharAt = str.charAt(i);
            if (CharsKt__CharKt.isSurrogate(iCharAt)) {
                int i3 = i + 1;
                char cCharAt = i3 < i2 ? str.charAt(i3) : (char) 0;
                if (Character.isLowSurrogate(iCharAt) || !Character.isLowSurrogate(cCharAt)) {
                    iCharAt = 63;
                } else {
                    iCharAt = Enums.EProtoAppType.k_EAppTypeBeta_VALUE + (((iCharAt & 1023) << 10) | (cCharAt & 1023));
                    i = i3;
                }
            }
            arrayList.add(Integer.valueOf(iCharAt));
            i++;
        }
        return arrayList;
    }

    public final int getPunycodeDigit(int i) {
        if (i < 26) {
            return i + 97;
        }
        if (i < 36) {
            return i + 22;
        }
        throw new IllegalStateException(("unexpected digit: " + i).toString());
    }
}
