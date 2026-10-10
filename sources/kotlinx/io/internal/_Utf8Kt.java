package kotlinx.io.internal;

import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;

/* JADX INFO: compiled from: -Utf8.kt */
/* JADX INFO: loaded from: classes3.dex */
public final class _Utf8Kt {
    public static /* synthetic */ String commonToUtf8String$default(byte[] bArr, int i, int i2, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            i = 0;
        }
        if ((i3 & 2) != 0) {
            i2 = bArr.length;
        }
        return commonToUtf8String(bArr, i, i2);
    }

    public static final String commonToUtf8String(byte[] bArr, int i, int i2) {
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10 = i;
        int i11 = 3;
        Intrinsics.checkNotNullParameter(bArr, "<this>");
        if (i10 < 0 || i2 > bArr.length || i10 > i2) {
            throw new IndexOutOfBoundsException("size=" + bArr.length + " beginIndex=" + i10 + " endIndex=" + i2);
        }
        char[] cArr = new char[i2 - i10];
        int i12 = 0;
        while (i10 < i2) {
            byte b = bArr[i10];
            if (b >= 0) {
                i8 = i12 + 1;
                cArr[i12] = (char) b;
                i10++;
                while (i10 < i2) {
                    byte b2 = bArr[i10];
                    if (b2 < 0) {
                        break;
                    }
                    i10++;
                    cArr[i8] = (char) b2;
                    i8++;
                }
                Unit unit = Unit.INSTANCE;
            } else if ((b >> 5) == -2) {
                int i13 = i10 + 1;
                if (i2 <= i13) {
                    i8 = i12 + 1;
                    cArr[i12] = (char) 65533;
                } else {
                    byte b3 = bArr[i13];
                    if ((b3 & 192) == 128) {
                        int i14 = (b << 6) ^ (b3 ^ 3968);
                        if (i14 < 128) {
                            i8 = i12 + 1;
                            cArr[i12] = (char) 65533;
                        } else {
                            i8 = i12 + 1;
                            cArr[i12] = (char) i14;
                        }
                        Unit unit2 = Unit.INSTANCE;
                        i9 = 2;
                        i10 += i9;
                    } else {
                        i8 = i12 + 1;
                        cArr[i12] = (char) 65533;
                    }
                }
                Unit unit3 = Unit.INSTANCE;
                i9 = 1;
                i10 += i9;
            } else {
                if ((b >> 4) == -2) {
                    int i15 = i10 + 2;
                    if (i2 <= i15) {
                        i5 = i12 + 1;
                        cArr[i12] = (char) 65533;
                        Unit unit4 = Unit.INSTANCE;
                        int i16 = i10 + 1;
                        i7 = (i2 <= i16 || (bArr[i16] & 192) != 128) ? 1 : 2;
                    } else {
                        byte b4 = bArr[i10 + 1];
                        if ((b4 & 192) == 128) {
                            byte b5 = bArr[i15];
                            if ((b5 & 192) == 128) {
                                int i17 = ((b5 ^ (-123008)) ^ (b4 << 6)) ^ (b << 12);
                                if (i17 < 2048) {
                                    i6 = i12 + 1;
                                    cArr[i12] = (char) 65533;
                                } else if (55296 > i17 || i17 >= 57344) {
                                    char c = (char) i17;
                                    i6 = i12 + 1;
                                    cArr[i12] = c;
                                } else {
                                    i6 = i12 + 1;
                                    cArr[i12] = (char) 65533;
                                }
                                Unit unit5 = Unit.INSTANCE;
                                i5 = i6;
                                i7 = i11;
                            } else {
                                i5 = i12 + 1;
                                cArr[i12] = (char) 65533;
                                Unit unit6 = Unit.INSTANCE;
                            }
                        } else {
                            i5 = i12 + 1;
                            cArr[i12] = (char) 65533;
                            Unit unit7 = Unit.INSTANCE;
                        }
                    }
                    i10 += i7;
                    i12 = i5;
                } else {
                    if ((b >> 3) == -2) {
                        int i18 = i10 + 3;
                        if (i2 <= i18) {
                            i3 = i12 + 1;
                            cArr[i12] = 65533;
                            Unit unit8 = Unit.INSTANCE;
                            int i19 = i10 + 1;
                            if (i2 <= i19 || (bArr[i19] & 192) != 128) {
                                i11 = 1;
                            } else {
                                int i20 = i10 + 2;
                                if (i2 <= i20 || (bArr[i20] & 192) != 128) {
                                    i11 = 2;
                                }
                            }
                            i10 += i11;
                        } else {
                            byte b6 = bArr[i10 + 1];
                            if ((b6 & 192) == 128) {
                                byte b7 = bArr[i10 + 2];
                                if ((b7 & 192) == 128) {
                                    byte b8 = bArr[i18];
                                    if ((b8 & 192) == 128) {
                                        int i21 = (((b8 ^ 3678080) ^ (b7 << 6)) ^ (b6 << 12)) ^ (b << 18);
                                        if (i21 > 1114111) {
                                            i3 = i12 + 1;
                                            cArr[i12] = 65533;
                                        } else if ((55296 > i21 || i21 >= 57344) && i21 >= 65536) {
                                            if (i21 != 65533) {
                                                cArr[i12] = (char) ((i21 >>> 10) + 55232);
                                                i4 = i12 + 2;
                                                cArr[i12 + 1] = (char) ((i21 & 1023) + 56320);
                                            } else {
                                                cArr[i12] = 65533;
                                                i4 = i12 + 1;
                                            }
                                            Unit unit9 = Unit.INSTANCE;
                                            i3 = i4;
                                            i11 = 4;
                                        } else {
                                            i3 = i12 + 1;
                                            cArr[i12] = 65533;
                                        }
                                        Unit unit10 = Unit.INSTANCE;
                                        i11 = 4;
                                    } else {
                                        i3 = i12 + 1;
                                        cArr[i12] = 65533;
                                        Unit unit11 = Unit.INSTANCE;
                                        i11 = 3;
                                    }
                                    i10 += i11;
                                } else {
                                    i3 = i12 + 1;
                                    cArr[i12] = 65533;
                                    Unit unit12 = Unit.INSTANCE;
                                    i11 = 2;
                                    i10 += i11;
                                }
                            } else {
                                i3 = i12 + 1;
                                cArr[i12] = 65533;
                                Unit unit13 = Unit.INSTANCE;
                                i11 = 1;
                                i10 += i11;
                            }
                        }
                    } else {
                        i3 = i12 + 1;
                        cArr[i12] = 65533;
                        i10++;
                    }
                    i12 = i3;
                }
                i11 = 3;
            }
            i12 = i8;
            i11 = 3;
        }
        return StringsKt__StringsJVMKt.concatToString(cArr, 0, i12);
    }
}
