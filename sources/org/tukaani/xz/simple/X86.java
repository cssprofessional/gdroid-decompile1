package org.tukaani.xz.simple;

import org.tukaani.xz.common.ByteArrayView;

/* JADX INFO: loaded from: classes3.dex */
public final class X86 implements SimpleFilter {
    private static final boolean[] MASK_TO_ALLOWED_STATUS = {true, true, true, false, true, false, false, false};
    private static final int[] MASK_TO_BIT_NUMBER = {0, 1, 2, 2, 3, 3, 3, 3};
    private final boolean isEncoder;
    private int pos;
    private int prevMask = 0;

    private static boolean test86MSByte(byte b) {
        int i = b & 255;
        return i == 0 || i == 255;
    }

    public X86(boolean z, int i) {
        this.isEncoder = z;
        this.pos = i + 5;
    }

    @Override // org.tukaani.xz.simple.SimpleFilter
    public int code(byte[] bArr, int i, int i2) {
        int i3;
        int i4 = i - 1;
        int i5 = (i2 + i) - 5;
        int i6 = i;
        while (true) {
            if (i6 > i5) {
                break;
            }
            if ((bArr[i6] & 254) == 232) {
                int i7 = i6 - i4;
                if ((i7 & (-4)) != 0) {
                    this.prevMask = 0;
                } else {
                    int i8 = (this.prevMask << (i7 - 1)) & 7;
                    this.prevMask = i8;
                    if (i8 != 0 && (!MASK_TO_ALLOWED_STATUS[i8] || test86MSByte(bArr[(i6 + 4) - MASK_TO_BIT_NUMBER[i8]]))) {
                        this.prevMask = (this.prevMask << 1) | 1;
                    }
                    i4 = i6;
                }
                int i9 = i6 + 4;
                if (test86MSByte(bArr[i9])) {
                    int i10 = i6 + 1;
                    int intLE = ByteArrayView.getIntLE(bArr, i10);
                    while (true) {
                        if (this.isEncoder) {
                            i3 = intLE + ((this.pos + i6) - i);
                        } else {
                            i3 = intLE - ((this.pos + i6) - i);
                        }
                        int i11 = this.prevMask;
                        if (i11 == 0) {
                            break;
                        }
                        int i12 = MASK_TO_BIT_NUMBER[i11] * 8;
                        if (!test86MSByte((byte) (i3 >>> (24 - i12)))) {
                            break;
                        }
                        intLE = i3 ^ ((1 << (32 - i12)) - 1);
                    }
                    ByteArrayView.setIntLE(bArr, i10, (i3 << 7) >> 7);
                    int i13 = i6;
                    i6 = i9;
                    i4 = i13;
                } else {
                    this.prevMask = (this.prevMask << 1) | 1;
                    i4 = i6;
                }
            }
            i6++;
        }
        int i14 = i6 - i4;
        this.prevMask = (i14 & (-4)) == 0 ? this.prevMask << (i14 - 1) : 0;
        int i15 = i6 - i;
        this.pos += i15;
        return i15;
    }
}
