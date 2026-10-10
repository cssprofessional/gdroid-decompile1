package org.tukaani.xz.lz;

/* JADX INFO: loaded from: classes3.dex */
final class MatchLength {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    static final int EXTRA_SIZE = 0;

    public static int getLen(byte[] bArr, int i, int i2, int i3, int i4) {
        int i5 = i4 + i;
        int i6 = i3 + i;
        while (i6 < i5 && bArr[i6] == bArr[i6 - i2]) {
            i6++;
        }
        return i6 - i;
    }
}
