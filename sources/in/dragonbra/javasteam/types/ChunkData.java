package in.dragonbra.javasteam.types;

import java.util.Arrays;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ChunkData.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class ChunkData {
    private int checksum;
    private byte[] chunkID;
    private int compressedLength;
    private long offset;
    private int uncompressedLength;

    public ChunkData() {
        this(null, 0, 0L, 0, 0, 31, null);
    }

    public static /* synthetic */ ChunkData copy$default(ChunkData chunkData, byte[] bArr, int i, long j, int i2, int i3, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            bArr = chunkData.chunkID;
        }
        if ((i4 & 2) != 0) {
            i = chunkData.checksum;
        }
        int i5 = i;
        if ((i4 & 4) != 0) {
            j = chunkData.offset;
        }
        long j2 = j;
        if ((i4 & 8) != 0) {
            i2 = chunkData.compressedLength;
        }
        int i6 = i2;
        if ((i4 & 16) != 0) {
            i3 = chunkData.uncompressedLength;
        }
        return chunkData.copy(bArr, i5, j2, i6, i3);
    }

    public final byte[] component1() {
        return this.chunkID;
    }

    public final int component2() {
        return this.checksum;
    }

    public final long component3() {
        return this.offset;
    }

    public final int component4() {
        return this.compressedLength;
    }

    public final int component5() {
        return this.uncompressedLength;
    }

    public final ChunkData copy(byte[] bArr, int i, long j, int i2, int i3) {
        return new ChunkData(bArr, i, j, i2, i3);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ChunkData)) {
            return false;
        }
        ChunkData chunkData = (ChunkData) obj;
        return Intrinsics.areEqual(this.chunkID, chunkData.chunkID) && this.checksum == chunkData.checksum && this.offset == chunkData.offset && this.compressedLength == chunkData.compressedLength && this.uncompressedLength == chunkData.uncompressedLength;
    }

    public int hashCode() {
        byte[] bArr = this.chunkID;
        return ((((((((bArr == null ? 0 : Arrays.hashCode(bArr)) * 31) + Integer.hashCode(this.checksum)) * 31) + Long.hashCode(this.offset)) * 31) + Integer.hashCode(this.compressedLength)) * 31) + Integer.hashCode(this.uncompressedLength);
    }

    public String toString() {
        return "ChunkData(chunkID=" + Arrays.toString(this.chunkID) + ", checksum=" + this.checksum + ", offset=" + this.offset + ", compressedLength=" + this.compressedLength + ", uncompressedLength=" + this.uncompressedLength + ")";
    }

    public ChunkData(byte[] bArr, int i, long j, int i2, int i3) {
        this.chunkID = bArr;
        this.checksum = i;
        this.offset = j;
        this.compressedLength = i2;
        this.uncompressedLength = i3;
    }

    public /* synthetic */ ChunkData(byte[] bArr, int i, long j, int i2, int i3, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this((i4 & 1) != 0 ? null : bArr, (i4 & 2) != 0 ? 0 : i, (i4 & 4) != 0 ? 0L : j, (i4 & 8) != 0 ? 0 : i2, (i4 & 16) == 0 ? i3 : 0);
    }

    public final byte[] getChunkID() {
        return this.chunkID;
    }

    public final void setChunkID(byte[] bArr) {
        this.chunkID = bArr;
    }

    public final int getChecksum() {
        return this.checksum;
    }

    public final void setChecksum(int i) {
        this.checksum = i;
    }

    public final long getOffset() {
        return this.offset;
    }

    public final void setOffset(long j) {
        this.offset = j;
    }

    public final int getCompressedLength() {
        return this.compressedLength;
    }

    public final void setCompressedLength(int i) {
        this.compressedLength = i;
    }

    public final int getUncompressedLength() {
        return this.uncompressedLength;
    }

    public final void setUncompressedLength(int i) {
        this.uncompressedLength = i;
    }
}
