package org.tukaani.xz;

/* JADX INFO: loaded from: classes3.dex */
abstract class BCJOptions extends FilterOptions {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private final int alignment;
    int startOffset = 0;

    public BCJOptions(int i) {
        this.alignment = i;
    }

    public void setStartOffset(int i) throws UnsupportedOptionsException {
        if (((this.alignment - 1) & i) != 0) {
            throw new UnsupportedOptionsException("Start offset must be a multiple of " + this.alignment);
        }
        this.startOffset = i;
    }

    public int getStartOffset() {
        return this.startOffset;
    }

    @Override // org.tukaani.xz.FilterOptions
    public int getEncoderMemoryUsage() {
        return SimpleOutputStream.getMemoryUsage();
    }

    @Override // org.tukaani.xz.FilterOptions
    public int getDecoderMemoryUsage() {
        return SimpleInputStream.getMemoryUsage();
    }

    public Object clone() {
        try {
            return super.clone();
        } catch (CloneNotSupportedException unused) {
            throw new RuntimeException();
        }
    }
}
