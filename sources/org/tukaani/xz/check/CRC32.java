package org.tukaani.xz.check;

import org.tukaani.xz.common.ByteArrayView;

/* JADX INFO: loaded from: classes3.dex */
public class CRC32 extends Check {
    private final java.util.zip.CRC32 state = new java.util.zip.CRC32();

    public CRC32() {
        this.size = 4;
        this.name = "CRC32";
    }

    @Override // org.tukaani.xz.check.Check
    public void update(byte[] bArr, int i, int i2) {
        this.state.update(bArr, i, i2);
    }

    @Override // org.tukaani.xz.check.Check
    public byte[] finish() {
        byte[] bArr = new byte[4];
        ByteArrayView.setIntLE(bArr, 0, (int) this.state.getValue());
        this.state.reset();
        return bArr;
    }
}
