package org.tukaani.xz.simple;

/* JADX INFO: loaded from: classes3.dex */
public final class ARMThumb implements SimpleFilter {
    private final boolean isEncoder;
    private int pos;

    public ARMThumb(boolean z, int i) {
        this.isEncoder = z;
        this.pos = i + 4;
    }

    @Override // org.tukaani.xz.simple.SimpleFilter
    public int code(byte[] bArr, int i, int i2) {
        int i3;
        int i4 = (i2 + i) - 4;
        int i5 = i;
        while (i5 <= i4) {
            int i6 = i5 + 1;
            int i7 = bArr[i6];
            if ((i7 & 248) == 240) {
                int i8 = i5 + 3;
                int i9 = bArr[i8];
                if ((i9 & 248) == 248) {
                    int i10 = ((i7 & 7) << 19) | ((bArr[i5] & 255) << 11) | ((i9 & 7) << 8);
                    int i11 = i5 + 2;
                    int i12 = (i10 | (bArr[i11] & 255)) << 1;
                    if (this.isEncoder) {
                        i3 = i12 + ((this.pos + i5) - i);
                    } else {
                        i3 = i12 - ((this.pos + i5) - i);
                    }
                    bArr[i6] = (byte) (240 | ((i3 >>> 20) & 7));
                    bArr[i5] = (byte) (i3 >>> 12);
                    bArr[i8] = (byte) (((i3 >>> 9) & 7) | 248);
                    bArr[i11] = (byte) (i3 >>> 1);
                    i5 = i11;
                }
            }
            i5 += 2;
        }
        int i13 = i5 - i;
        this.pos += i13;
        return i13;
    }
}
