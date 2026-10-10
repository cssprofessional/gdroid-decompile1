package in.dragonbra.javasteam.types;

import in.dragonbra.javasteam.enums.EDepotFileFlag;
import in.dragonbra.javasteam.util.stream.BinaryReader;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Date;
import java.util.EnumSet;
import java.util.List;
import kotlin.NotImplementedError;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: Steam3Manifest.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class Steam3Manifest {
    private static final int CURRENT_VERSION = 4;
    public static final Companion Companion = new Companion(null);
    public static final int MAGIC = 372545409;
    private boolean areFileNamesEncrypted;
    private int chunkCount;
    private int decryptedCRC;
    private int depotID;
    private int encryptedCRC;
    private int fileEntryCount;
    private int fileMappingSize;
    private int flags;
    private int magic;
    private long manifestGID;
    private long totalCompressedSize;
    private long totalUncompressedSize;
    private int version;
    private Date creationTime = new Date();
    private List<FileMapping> mapping = new ArrayList();

    /* JADX INFO: compiled from: Steam3Manifest.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    /* JADX INFO: compiled from: Steam3Manifest.kt */
    public static final class FileMapping {
        private Chunk[] chunks;
        private String fileName;
        private EnumSet<EDepotFileFlag> flags;
        private byte[] hashContent;
        private byte[] hashFileName;
        private int numChunks;
        private long totalSize;

        public FileMapping() {
            EnumSet<EDepotFileFlag> enumSetNoneOf = EnumSet.noneOf(EDepotFileFlag.class);
            Intrinsics.checkNotNullExpressionValue(enumSetNoneOf, "noneOf(...)");
            this.flags = enumSetNoneOf;
            this.chunks = new Chunk[0];
        }

        /* JADX INFO: compiled from: Steam3Manifest.kt */
        public static final class Chunk {
            private int checksum;
            private byte[] chunkGID;
            private int compressedSize;
            private int decompressedSize;
            private long offset;

            public final byte[] getChunkGID() {
                return this.chunkGID;
            }

            public final void setChunkGID(byte[] bArr) {
                this.chunkGID = bArr;
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

            public final int getDecompressedSize() {
                return this.decompressedSize;
            }

            public final void setDecompressedSize(int i) {
                this.decompressedSize = i;
            }

            public final int getCompressedSize() {
                return this.compressedSize;
            }

            public final void setCompressedSize(int i) {
                this.compressedSize = i;
            }

            public final void deserialize$javasteam(BinaryReader ds) {
                Intrinsics.checkNotNullParameter(ds, "ds");
                this.chunkGID = ds.readBytes(20);
                this.checksum = ds.readInt();
                this.offset = ds.readLong();
                this.decompressedSize = ds.readInt();
                this.compressedSize = ds.readInt();
            }
        }

        public final String getFileName() {
            return this.fileName;
        }

        public final void setFileName(String str) {
            this.fileName = str;
        }

        public final long getTotalSize() {
            return this.totalSize;
        }

        public final void setTotalSize(long j) {
            this.totalSize = j;
        }

        public final EnumSet<EDepotFileFlag> getFlags() {
            return this.flags;
        }

        public final void setFlags(EnumSet<EDepotFileFlag> enumSet) {
            Intrinsics.checkNotNullParameter(enumSet, "<set-?>");
            this.flags = enumSet;
        }

        public final byte[] getHashFileName() {
            return this.hashFileName;
        }

        public final void setHashFileName(byte[] bArr) {
            this.hashFileName = bArr;
        }

        public final byte[] getHashContent() {
            return this.hashContent;
        }

        public final void setHashContent(byte[] bArr) {
            this.hashContent = bArr;
        }

        public final int getNumChunks() {
            return this.numChunks;
        }

        public final void setNumChunks(int i) {
            this.numChunks = i;
        }

        public final Chunk[] getChunks() {
            return this.chunks;
        }

        public final void deserialize$javasteam(BinaryReader ds) throws IOException {
            Intrinsics.checkNotNullParameter(ds, "ds");
            this.fileName = ds.readNullTermString(StandardCharsets.UTF_8);
            this.totalSize = ds.readLong();
            EnumSet<EDepotFileFlag> enumSetFrom = EDepotFileFlag.from(ds.readInt());
            Intrinsics.checkNotNullExpressionValue(enumSetFrom, "from(...)");
            this.flags = enumSetFrom;
            this.hashContent = ds.readBytes(20);
            this.hashFileName = ds.readBytes(20);
            int i = ds.readInt();
            this.numChunks = i;
            Chunk[] chunkArr = new Chunk[i];
            for (int i2 = 0; i2 < i; i2++) {
                chunkArr[i2] = new Chunk();
            }
            this.chunks = chunkArr;
            int length = chunkArr.length;
            for (int i3 = 0; i3 < length; i3++) {
                this.chunks[i3].deserialize$javasteam(ds);
            }
        }
    }

    public final int getMagic() {
        return this.magic;
    }

    public final void setMagic(int i) {
        this.magic = i;
    }

    public final int getVersion() {
        return this.version;
    }

    public final void setVersion(int i) {
        this.version = i;
    }

    public final int getDepotID() {
        return this.depotID;
    }

    public final void setDepotID(int i) {
        this.depotID = i;
    }

    public final long getManifestGID() {
        return this.manifestGID;
    }

    public final void setManifestGID(long j) {
        this.manifestGID = j;
    }

    public final Date getCreationTime() {
        return this.creationTime;
    }

    public final void setCreationTime(Date date) {
        Intrinsics.checkNotNullParameter(date, "<set-?>");
        this.creationTime = date;
    }

    public final boolean getAreFileNamesEncrypted() {
        return this.areFileNamesEncrypted;
    }

    public final void setAreFileNamesEncrypted(boolean z) {
        this.areFileNamesEncrypted = z;
    }

    public final long getTotalUncompressedSize() {
        return this.totalUncompressedSize;
    }

    public final void setTotalUncompressedSize(long j) {
        this.totalUncompressedSize = j;
    }

    public final long getTotalCompressedSize() {
        return this.totalCompressedSize;
    }

    public final void setTotalCompressedSize(long j) {
        this.totalCompressedSize = j;
    }

    public final int getChunkCount() {
        return this.chunkCount;
    }

    public final void setChunkCount(int i) {
        this.chunkCount = i;
    }

    public final int getFileEntryCount() {
        return this.fileEntryCount;
    }

    public final void setFileEntryCount(int i) {
        this.fileEntryCount = i;
    }

    public final int getFileMappingSize() {
        return this.fileMappingSize;
    }

    public final void setFileMappingSize(int i) {
        this.fileMappingSize = i;
    }

    public final int getEncryptedCRC() {
        return this.encryptedCRC;
    }

    public final void setEncryptedCRC(int i) {
        this.encryptedCRC = i;
    }

    public final int getDecryptedCRC() {
        return this.decryptedCRC;
    }

    public final void setDecryptedCRC(int i) {
        this.decryptedCRC = i;
    }

    public final int getFlags() {
        return this.flags;
    }

    public final void setFlags(int i) {
        this.flags = i;
    }

    public final List<FileMapping> getMapping() {
        return this.mapping;
    }

    public final void setMapping(List<FileMapping> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.mapping = list;
    }

    public final void deserialize$javasteam(BinaryReader ds) throws IOException {
        Intrinsics.checkNotNullParameter(ds, "ds");
        int i = ds.readInt();
        this.version = i;
        if (i != 4) {
            throw new NotImplementedError("Only version 4 is supported.");
        }
        this.depotID = ds.readInt();
        this.manifestGID = ds.readLong();
        this.creationTime = new Date(((long) ds.readInt()) * 1000);
        this.areFileNamesEncrypted = ds.readInt() != 0;
        this.totalUncompressedSize = ds.readLong();
        this.totalCompressedSize = ds.readLong();
        this.chunkCount = ds.readInt();
        this.fileEntryCount = ds.readInt();
        this.fileMappingSize = ds.readInt();
        this.mapping = new ArrayList(this.fileMappingSize);
        this.encryptedCRC = ds.readInt();
        this.decryptedCRC = ds.readInt();
        this.flags = ds.readInt();
        int position = this.fileMappingSize;
        while (position > 0) {
            long position2 = ds.getPosition();
            FileMapping fileMapping = new FileMapping();
            fileMapping.deserialize$javasteam(ds);
            this.mapping.add(fileMapping);
            position -= ds.getPosition() - ((int) position2);
        }
    }
}
