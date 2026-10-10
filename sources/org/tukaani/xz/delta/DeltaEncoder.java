package org.tukaani.xz.delta;

/* JADX INFO: loaded from: classes3.dex */
public class DeltaEncoder extends DeltaCoder {
    static final /* synthetic */ boolean $assertionsDisabled = false;

    public DeltaEncoder(int i) {
        super(i);
    }

    public void encode(byte[] bArr, int i, int i2, byte[] bArr2) {
        int iMin = Math.min(i2, this.distance);
        int i3 = 0;
        while (i3 < iMin) {
            bArr2[i3] = (byte) (bArr[i + i3] - this.history[i3]);
            i3++;
        }
        int i4 = this.distance;
        if (i2 >= i4) {
            System.arraycopy(bArr, (i + i2) - i4, this.history, 0, i4);
        } else {
            byte[] bArr3 = this.history;
            System.arraycopy(bArr3, i3, bArr3, 0, i4 - i3);
            System.arraycopy(bArr, i, this.history, this.distance - i3, i2);
        }
        while (i3 < i2) {
            int i5 = i + i3;
            bArr2[i3] = (byte) (bArr[i5] - bArr[i5 - this.distance]);
            i3++;
        }
    }
}
