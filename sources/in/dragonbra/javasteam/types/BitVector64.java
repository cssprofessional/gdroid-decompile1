package in.dragonbra.javasteam.types;

/* JADX INFO: compiled from: BitVector64.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class BitVector64 {
    private long data;

    public BitVector64(long j) {
        this.data = j;
    }

    public final long getData() {
        return this.data;
    }

    public final void setData(long j) {
        this.data = j;
    }

    public final long getMask(int i, long j) {
        return (this.data >> i) & j;
    }

    public final void setMask(int i, long j, long j2) {
        this.data = ((j & j2) << i) | (this.data & (~(j << i)));
    }
}
