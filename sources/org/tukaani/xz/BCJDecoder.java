package org.tukaani.xz;

import java.io.InputStream;
import org.tukaani.xz.simple.ARM;
import org.tukaani.xz.simple.ARM64;
import org.tukaani.xz.simple.ARMThumb;
import org.tukaani.xz.simple.IA64;
import org.tukaani.xz.simple.PowerPC;
import org.tukaani.xz.simple.RISCVDecoder;
import org.tukaani.xz.simple.SPARC;
import org.tukaani.xz.simple.SimpleFilter;
import org.tukaani.xz.simple.X86;

/* JADX INFO: loaded from: classes3.dex */
class BCJDecoder extends BCJCoder implements FilterDecoder {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private final long filterID;
    private final int startOffset;

    public BCJDecoder(long j, byte[] bArr) throws UnsupportedOptionsException {
        this.filterID = j;
        if (bArr.length == 0) {
            this.startOffset = 0;
            return;
        }
        if (bArr.length == 4) {
            int i = 0;
            for (int i2 = 0; i2 < 4; i2++) {
                i |= (bArr[i2] & 255) << (i2 * 8);
            }
            this.startOffset = i;
            return;
        }
        throw new UnsupportedOptionsException("Unsupported BCJ filter properties");
    }

    @Override // org.tukaani.xz.FilterDecoder
    public int getMemoryUsage() {
        return SimpleInputStream.getMemoryUsage();
    }

    @Override // org.tukaani.xz.FilterDecoder
    public InputStream getInputStream(InputStream inputStream, ArrayCache arrayCache) {
        SimpleFilter rISCVDecoder;
        long j = this.filterID;
        if (j == 4) {
            rISCVDecoder = new X86(false, this.startOffset);
        } else if (j == 5) {
            rISCVDecoder = new PowerPC(false, this.startOffset);
        } else if (j == 6) {
            rISCVDecoder = new IA64(false, this.startOffset);
        } else if (j == 7) {
            rISCVDecoder = new ARM(false, this.startOffset);
        } else if (j == 8) {
            rISCVDecoder = new ARMThumb(false, this.startOffset);
        } else if (j == 9) {
            rISCVDecoder = new SPARC(false, this.startOffset);
        } else if (j == 10) {
            rISCVDecoder = new ARM64(false, this.startOffset);
        } else {
            rISCVDecoder = j == 11 ? new RISCVDecoder(this.startOffset) : null;
        }
        return new SimpleInputStream(inputStream, rISCVDecoder);
    }
}
