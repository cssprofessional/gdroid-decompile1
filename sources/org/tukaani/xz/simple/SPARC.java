package org.tukaani.xz.simple;

import in.dragonbra.javasteam.protobufs.steamclient.Enums;
import org.tukaani.xz.common.ByteArrayView;

/* JADX INFO: loaded from: classes3.dex */
public final class SPARC implements SimpleFilter {
    private final boolean isEncoder;
    private int pos;

    public SPARC(boolean z, int i) {
        this.isEncoder = z;
        this.pos = i;
    }

    @Override // org.tukaani.xz.simple.SimpleFilter
    public int code(byte[] bArr, int i, int i2) {
        int i3 = (i2 + i) - 4;
        int i4 = i;
        while (i4 <= i3) {
            byte b = bArr[i4];
            if ((b == 64 && (bArr[i4 + 1] & 192) == 0) || (b == 127 && (bArr[i4 + 1] & 192) == 192)) {
                int intBE = ByteArrayView.getIntBE(bArr, i4);
                int i5 = ((this.pos + i4) - i) >>> 2;
                if (!this.isEncoder) {
                    i5 = -i5;
                }
                ByteArrayView.setIntBE(bArr, i4, ((((intBE + i5) << 9) >> 9) & 1073741823) | Enums.EProtoAppType.k_EAppTypeShortcut_VALUE);
            }
            i4 += 4;
        }
        int i6 = i4 - i;
        this.pos += i6;
        return i6;
    }
}
