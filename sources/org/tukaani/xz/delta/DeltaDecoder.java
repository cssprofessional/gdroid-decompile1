package org.tukaani.xz.delta;

/* JADX INFO: loaded from: classes3.dex */
public class DeltaDecoder extends DeltaCoder {
    static final /* synthetic */ boolean $assertionsDisabled = false;

    public DeltaDecoder(int i) {
        super(i);
    }

    public void decode(byte[] bArr, int i, int i2) {
        int iMin = Math.min(i2, this.distance);
        int i3 = 0;
        while (i3 < iMin) {
            int i4 = i + i3;
            bArr[i4] = (byte) (bArr[i4] + this.history[i3]);
            i3++;
        }
        while (i3 < i2) {
            int i5 = i + i3;
            bArr[i5] = (byte) (bArr[i5] + bArr[i5 - this.distance]);
            i3++;
        }
        int i6 = this.distance;
        if (i2 >= i6) {
            System.arraycopy(bArr, (i + i2) - i6, this.history, 0, i6);
            return;
        }
        byte[] bArr2 = this.history;
        System.arraycopy(bArr2, i3, bArr2, 0, i6 - i3);
        System.arraycopy(bArr, i, this.history, this.distance - i3, i2);
    }
}
