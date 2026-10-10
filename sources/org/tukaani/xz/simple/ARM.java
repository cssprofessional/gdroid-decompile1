package org.tukaani.xz.simple;

/* JADX INFO: loaded from: classes3.dex */
public final class ARM implements SimpleFilter {
    private final boolean isEncoder;
    private int pos;

    public ARM(boolean z, int i) {
        this.isEncoder = z;
        this.pos = i + 8;
    }

    @Override // org.tukaani.xz.simple.SimpleFilter
    public int code(byte[] bArr, int i, int i2) {
        int i3;
        int i4 = (i2 + i) - 4;
        int i5 = i;
        while (i5 <= i4) {
            if ((bArr[i5 + 3] & 255) == 235) {
                int i6 = i5 + 2;
                int i7 = i5 + 1;
                int i8 = ((((bArr[i6] & 255) << 16) | ((bArr[i7] & 255) << 8)) | (bArr[i5] & 255)) << 2;
                if (this.isEncoder) {
                    i3 = i8 + ((this.pos + i5) - i);
                } else {
                    i3 = i8 - ((this.pos + i5) - i);
                }
                bArr[i6] = (byte) (i3 >>> 18);
                bArr[i7] = (byte) (i3 >>> 10);
                bArr[i5] = (byte) (i3 >>> 2);
            }
            i5 += 4;
        }
        int i9 = i5 - i;
        this.pos += i9;
        return i9;
    }
}
