package org.tukaani.xz.simple;

import org.tukaani.xz.common.ByteArrayView;

/* JADX INFO: loaded from: classes3.dex */
public final class PowerPC implements SimpleFilter {
    private final boolean isEncoder;
    private int pos;

    public PowerPC(boolean z, int i) {
        this.isEncoder = z;
        this.pos = i;
    }

    @Override // org.tukaani.xz.simple.SimpleFilter
    public int code(byte[] bArr, int i, int i2) {
        int i3 = (i2 + i) - 4;
        int i4 = i;
        while (i4 <= i3) {
            if ((bArr[i4] & 252) == 72 && (bArr[i4 + 3] & 3) == 1) {
                int intBE = ByteArrayView.getIntBE(bArr, i4);
                int i5 = (this.pos + i4) - i;
                if (!this.isEncoder) {
                    i5 = -i5;
                }
                ByteArrayView.setIntBE(bArr, i4, ((intBE + i5) & 67108860) | 1207959553);
            }
            i4 += 4;
        }
        int i6 = i4 - i;
        this.pos += i6;
        return i6;
    }
}
