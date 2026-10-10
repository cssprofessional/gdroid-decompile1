package in.dragonbra.javasteam.types;

import in.dragonbra.javasteam.enums.EDepotFileFlag;
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.EnumSet;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;

/* JADX INFO: compiled from: FileData.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class FileData {
    private List<ChunkData> chunks;
    private byte[] fileHash;
    private String fileName;
    private byte[] fileNameHash;
    private EnumSet<EDepotFileFlag> flags;
    private String linkTarget;
    private long totalSize;

    public FileData() {
        this(null, null, null, null, 0L, null, null, 127, null);
    }

    public final String component1() {
        return this.fileName;
    }

    public final byte[] component2() {
        return this.fileNameHash;
    }

    public final List<ChunkData> component3() {
        return this.chunks;
    }

    public final EnumSet<EDepotFileFlag> component4() {
        return this.flags;
    }

    public final long component5() {
        return this.totalSize;
    }

    public final byte[] component6() {
        return this.fileHash;
    }

    public final String component7() {
        return this.linkTarget;
    }

    public final FileData copy(String fileName, byte[] fileNameHash, List<ChunkData> chunks, EnumSet<EDepotFileFlag> flags, long j, byte[] fileHash, String str) {
        Intrinsics.checkNotNullParameter(fileName, "fileName");
        Intrinsics.checkNotNullParameter(fileNameHash, "fileNameHash");
        Intrinsics.checkNotNullParameter(chunks, "chunks");
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(fileHash, "fileHash");
        return new FileData(fileName, fileNameHash, chunks, flags, j, fileHash, str);
    }

    public String toString() {
        return "FileData(fileName=" + this.fileName + ", fileNameHash=" + Arrays.toString(this.fileNameHash) + ", chunks=" + this.chunks + ", flags=" + this.flags + ", totalSize=" + this.totalSize + ", fileHash=" + Arrays.toString(this.fileHash) + ", linkTarget=" + this.linkTarget + ")";
    }

    public FileData(String fileName, byte[] fileNameHash, List<ChunkData> chunks, EnumSet<EDepotFileFlag> flags, long j, byte[] fileHash, String str) {
        Intrinsics.checkNotNullParameter(fileName, "fileName");
        Intrinsics.checkNotNullParameter(fileNameHash, "fileNameHash");
        Intrinsics.checkNotNullParameter(chunks, "chunks");
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(fileHash, "fileHash");
        this.fileName = fileName;
        this.fileNameHash = fileNameHash;
        this.chunks = chunks;
        this.flags = flags;
        this.totalSize = j;
        this.fileHash = fileHash;
        this.linkTarget = str;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public /* synthetic */ FileData(String str, byte[] bArr, List list, EnumSet enumSet, long j, byte[] bArr2, String str2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        EnumSet enumSetNoneOf;
        String str3 = (i & 1) != 0 ? "" : str;
        byte[] bArr3 = (i & 2) != 0 ? new byte[0] : bArr;
        List arrayList = (i & 4) != 0 ? new ArrayList() : list;
        if ((i & 8) != 0) {
            enumSetNoneOf = EnumSet.noneOf(EDepotFileFlag.class);
            Intrinsics.checkNotNullExpressionValue(enumSetNoneOf, "noneOf(...)");
        } else {
            enumSetNoneOf = enumSet;
        }
        this(str3, bArr3, arrayList, enumSetNoneOf, (i & 16) != 0 ? 0L : j, (i & 32) != 0 ? new byte[0] : bArr2, (i & 64) != 0 ? null : str2);
    }

    public final String getFileName() {
        return this.fileName;
    }

    public final void setFileName(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.fileName = str;
    }

    public final byte[] getFileNameHash() {
        return this.fileNameHash;
    }

    public final void setFileNameHash(byte[] bArr) {
        Intrinsics.checkNotNullParameter(bArr, "<set-?>");
        this.fileNameHash = bArr;
    }

    public final List<ChunkData> getChunks() {
        return this.chunks;
    }

    public final void setChunks(List<ChunkData> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.chunks = list;
    }

    public final EnumSet<EDepotFileFlag> getFlags() {
        return this.flags;
    }

    public final void setFlags(EnumSet<EDepotFileFlag> enumSet) {
        Intrinsics.checkNotNullParameter(enumSet, "<set-?>");
        this.flags = enumSet;
    }

    public final long getTotalSize() {
        return this.totalSize;
    }

    public final void setTotalSize(long j) {
        this.totalSize = j;
    }

    public final byte[] getFileHash() {
        return this.fileHash;
    }

    public final void setFileHash(byte[] bArr) {
        Intrinsics.checkNotNullParameter(bArr, "<set-?>");
        this.fileHash = bArr;
    }

    public final String getLinkTarget() {
        return this.linkTarget;
    }

    public final void setLinkTarget(String str) {
        this.linkTarget = str;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public FileData(String filename, byte[] filenameHash, EnumSet<EDepotFileFlag> flag, long j, byte[] hash, String linkTarget, boolean z, int i) {
        this(z ? filename : StringsKt__StringsJVMKt.replace$default(filename, '\\', File.separatorChar, false, 4, (Object) null), filenameHash, new ArrayList(i), flag, j, hash, linkTarget);
        Intrinsics.checkNotNullParameter(filename, "filename");
        Intrinsics.checkNotNullParameter(filenameHash, "filenameHash");
        Intrinsics.checkNotNullParameter(flag, "flag");
        Intrinsics.checkNotNullParameter(hash, "hash");
        Intrinsics.checkNotNullParameter(linkTarget, "linkTarget");
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!Intrinsics.areEqual(FileData.class, obj != null ? obj.getClass() : null)) {
            return false;
        }
        Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type in.dragonbra.javasteam.types.FileData");
        FileData fileData = (FileData) obj;
        return this.totalSize == fileData.totalSize && Intrinsics.areEqual(this.fileName, fileData.fileName) && Arrays.equals(this.fileNameHash, fileData.fileNameHash) && Intrinsics.areEqual(this.chunks, fileData.chunks) && Intrinsics.areEqual(this.flags, fileData.flags) && Arrays.equals(this.fileHash, fileData.fileHash) && Intrinsics.areEqual(this.linkTarget, fileData.linkTarget);
    }

    public int hashCode() {
        int iHashCode = ((((((((((Long.hashCode(this.totalSize) * 31) + this.fileName.hashCode()) * 31) + Arrays.hashCode(this.fileNameHash)) * 31) + this.chunks.hashCode()) * 31) + this.flags.hashCode()) * 31) + Arrays.hashCode(this.fileHash)) * 31;
        String str = this.linkTarget;
        return iHashCode + (str != null ? str.hashCode() : 0);
    }
}
