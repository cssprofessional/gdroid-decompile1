package in.dragonbra.javasteam.steam.handlers.steamcontent;

/* JADX INFO: compiled from: DepotPatchInfo.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class DepotPatchInfo {
    private final boolean isAvailable;
    private final long patchSize;
    private final long patchedChunksSize;

    public static /* synthetic */ DepotPatchInfo copy$default(DepotPatchInfo depotPatchInfo, boolean z, long j, long j2, int i, Object obj) {
        if ((i & 1) != 0) {
            z = depotPatchInfo.isAvailable;
        }
        if ((i & 2) != 0) {
            j = depotPatchInfo.patchSize;
        }
        long j3 = j;
        if ((i & 4) != 0) {
            j2 = depotPatchInfo.patchedChunksSize;
        }
        return depotPatchInfo.copy(z, j3, j2);
    }

    public final boolean component1() {
        return this.isAvailable;
    }

    public final long component2() {
        return this.patchSize;
    }

    public final long component3() {
        return this.patchedChunksSize;
    }

    public final DepotPatchInfo copy(boolean z, long j, long j2) {
        return new DepotPatchInfo(z, j, j2);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof DepotPatchInfo)) {
            return false;
        }
        DepotPatchInfo depotPatchInfo = (DepotPatchInfo) obj;
        return this.isAvailable == depotPatchInfo.isAvailable && this.patchSize == depotPatchInfo.patchSize && this.patchedChunksSize == depotPatchInfo.patchedChunksSize;
    }

    public int hashCode() {
        return (((Boolean.hashCode(this.isAvailable) * 31) + Long.hashCode(this.patchSize)) * 31) + Long.hashCode(this.patchedChunksSize);
    }

    public DepotPatchInfo(boolean z, long j, long j2) {
        this.isAvailable = z;
        this.patchSize = j;
        this.patchedChunksSize = j2;
    }

    public final boolean isAvailable() {
        return this.isAvailable;
    }

    public final long getPatchSize() {
        return this.patchSize;
    }

    public final long getPatchedChunksSize() {
        return this.patchedChunksSize;
    }

    public String toString() {
        return "DepotPatchInfo(isAvailable=" + this.isAvailable + ", patchSize=" + this.patchSize + ", patchedChunksSize=" + this.patchedChunksSize + ")";
    }
}
