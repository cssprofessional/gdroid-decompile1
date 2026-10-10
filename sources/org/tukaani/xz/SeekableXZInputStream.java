package org.tukaani.xz;

import java.io.DataInputStream;
import java.io.EOFException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import org.tukaani.xz.check.Check;
import org.tukaani.xz.common.DecoderUtil;
import org.tukaani.xz.common.StreamFlags;
import org.tukaani.xz.index.BlockInfo;
import org.tukaani.xz.index.IndexDecoder;

/* JADX INFO: loaded from: classes3.dex */
public class SeekableXZInputStream extends SeekableInputStream {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private final ArrayCache arrayCache;
    private int blockCount;
    private BlockInputStream blockDecoder;
    private Check check;
    private int checkTypes;
    private final BlockInfo curBlockInfo;
    private long curPos;
    private boolean endReached;
    private IOException exception;

    /* JADX INFO: renamed from: in, reason: collision with root package name */
    private SeekableInputStream f9in;
    private int indexMemoryUsage;
    private long largestBlockSize;
    private final int memoryLimit;
    private final BlockInfo queriedBlockInfo;
    private boolean seekNeeded;
    private long seekPos;
    private final ArrayList<IndexDecoder> streams;
    private final byte[] tempBuf;
    private long uncompressedSize;
    private final boolean verifyCheck;

    public SeekableXZInputStream(SeekableInputStream seekableInputStream) throws IOException {
        this(seekableInputStream, -1);
    }

    public SeekableXZInputStream(SeekableInputStream seekableInputStream, ArrayCache arrayCache) throws IOException {
        this(seekableInputStream, -1, arrayCache);
    }

    public SeekableXZInputStream(SeekableInputStream seekableInputStream, int i) throws IOException {
        this(seekableInputStream, i, true);
    }

    public SeekableXZInputStream(SeekableInputStream seekableInputStream, int i, ArrayCache arrayCache) throws IOException {
        this(seekableInputStream, i, true, arrayCache);
    }

    public SeekableXZInputStream(SeekableInputStream seekableInputStream, int i, boolean z) throws IOException {
        this(seekableInputStream, i, z, ArrayCache.getDefaultCache());
    }

    public SeekableXZInputStream(SeekableInputStream seekableInputStream, int i, boolean z, ArrayCache arrayCache) throws IOException {
        this.indexMemoryUsage = 0;
        this.streams = new ArrayList<>();
        this.checkTypes = 0;
        long j = 0;
        this.uncompressedSize = 0L;
        this.largestBlockSize = 0L;
        this.blockCount = 0;
        this.blockDecoder = null;
        this.curPos = 0L;
        this.seekNeeded = false;
        this.endReached = false;
        this.exception = null;
        int i2 = 1;
        this.tempBuf = new byte[1];
        this.arrayCache = arrayCache;
        this.verifyCheck = z;
        this.f9in = seekableInputStream;
        DataInputStream dataInputStream = new DataInputStream(seekableInputStream);
        seekableInputStream.seek(0L);
        byte[] bArr = XZ.HEADER_MAGIC;
        byte[] bArr2 = new byte[bArr.length];
        dataInputStream.readFully(bArr2);
        if (!Arrays.equals(bArr2, bArr)) {
            throw new XZFormatException();
        }
        long length = seekableInputStream.length();
        if ((3 & length) != 0) {
            throw new CorruptedInputException("XZ file size is not a multiple of 4 bytes");
        }
        byte[] bArr3 = new byte[12];
        int memoryUsage = i;
        while (true) {
            long j2 = j;
            while (length > j) {
                if (length < 12) {
                    throw new CorruptedInputException();
                }
                long j3 = length - 12;
                seekableInputStream.seek(j3);
                dataInputStream.readFully(bArr3);
                if (bArr3[8] == 0 && bArr3[9] == 0 && bArr3[10] == 0 && bArr3[11] == 0) {
                    j2 += 4;
                    length -= 4;
                    j = 0;
                } else {
                    StreamFlags streamFlagsDecodeStreamFooter = DecoderUtil.decodeStreamFooter(bArr3);
                    if (streamFlagsDecodeStreamFooter.backwardSize >= j3) {
                        throw new CorruptedInputException("Backward Size in XZ Stream Footer is too big");
                    }
                    this.check = Check.getInstance(streamFlagsDecodeStreamFooter.checkType);
                    this.checkTypes |= i2 << streamFlagsDecodeStreamFooter.checkType;
                    seekableInputStream.seek(j3 - streamFlagsDecodeStreamFooter.backwardSize);
                    try {
                        IndexDecoder indexDecoder = new IndexDecoder(seekableInputStream, streamFlagsDecodeStreamFooter, j2, memoryUsage);
                        this.indexMemoryUsage += indexDecoder.getMemoryUsage();
                        memoryUsage = memoryUsage >= 0 ? memoryUsage - indexDecoder.getMemoryUsage() : memoryUsage;
                        if (this.largestBlockSize < indexDecoder.getLargestBlockSize()) {
                            this.largestBlockSize = indexDecoder.getLargestBlockSize();
                        }
                        long streamSize = indexDecoder.getStreamSize() - 12;
                        if (j3 < streamSize) {
                            throw new CorruptedInputException("XZ Index indicates too big compressed size for the XZ Stream");
                        }
                        length = j3 - streamSize;
                        seekableInputStream.seek(length);
                        dataInputStream.readFully(bArr3);
                        if (!DecoderUtil.areStreamFlagsEqual(DecoderUtil.decodeStreamHeader(bArr3), streamFlagsDecodeStreamFooter)) {
                            throw new CorruptedInputException("XZ Stream Footer does not match Stream Header");
                        }
                        long uncompressedSize = this.uncompressedSize + indexDecoder.getUncompressedSize();
                        this.uncompressedSize = uncompressedSize;
                        if (uncompressedSize < 0) {
                            throw new UnsupportedOptionsException("XZ file is too big");
                        }
                        int recordCount = this.blockCount + indexDecoder.getRecordCount();
                        this.blockCount = recordCount;
                        if (recordCount < 0) {
                            throw new UnsupportedOptionsException("XZ file has over 2147483647 Blocks");
                        }
                        this.streams.add(indexDecoder);
                        j = 0;
                        i2 = 1;
                    } catch (MemoryLimitException e) {
                        int memoryNeeded = e.getMemoryNeeded();
                        int i3 = this.indexMemoryUsage;
                        throw new MemoryLimitException(memoryNeeded + i3, memoryUsage + i3);
                    }
                }
            }
            this.memoryLimit = memoryUsage;
            ArrayList<IndexDecoder> arrayList = this.streams;
            IndexDecoder indexDecoder2 = arrayList.get(arrayList.size() - 1);
            int size = this.streams.size() - 2;
            while (size >= 0) {
                IndexDecoder indexDecoder3 = this.streams.get(size);
                indexDecoder3.setOffsets(indexDecoder2);
                size--;
                indexDecoder2 = indexDecoder3;
            }
            ArrayList<IndexDecoder> arrayList2 = this.streams;
            IndexDecoder indexDecoder4 = arrayList2.get(arrayList2.size() - 1);
            this.curBlockInfo = new BlockInfo(indexDecoder4);
            this.queriedBlockInfo = new BlockInfo(indexDecoder4);
            return;
        }
    }

    public int getCheckTypes() {
        return this.checkTypes;
    }

    public int getIndexMemoryUsage() {
        return this.indexMemoryUsage;
    }

    public long getLargestBlockSize() {
        return this.largestBlockSize;
    }

    public int getStreamCount() {
        return this.streams.size();
    }

    public int getBlockCount() {
        return this.blockCount;
    }

    public long getBlockPos(int i) {
        locateBlockByNumber(this.queriedBlockInfo, i);
        return this.queriedBlockInfo.uncompressedOffset;
    }

    public long getBlockSize(int i) {
        locateBlockByNumber(this.queriedBlockInfo, i);
        return this.queriedBlockInfo.uncompressedSize;
    }

    public long getBlockCompPos(int i) {
        locateBlockByNumber(this.queriedBlockInfo, i);
        return this.queriedBlockInfo.compressedOffset;
    }

    public long getBlockCompSize(int i) {
        locateBlockByNumber(this.queriedBlockInfo, i);
        return (this.queriedBlockInfo.unpaddedSize + 3) & (-4);
    }

    public int getBlockCheckType(int i) {
        locateBlockByNumber(this.queriedBlockInfo, i);
        return this.queriedBlockInfo.getCheckType();
    }

    public int getBlockNumber(long j) {
        locateBlockByPos(this.queriedBlockInfo, j);
        return this.queriedBlockInfo.blockNumber;
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        if (read(this.tempBuf, 0, 1) == -1) {
            return -1;
        }
        return this.tempBuf[0] & 255;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        int i3;
        if (i < 0 || i2 < 0 || (i3 = i + i2) < 0 || i3 > bArr.length) {
            throw new IndexOutOfBoundsException();
        }
        int i4 = 0;
        if (i2 == 0) {
            return 0;
        }
        if (this.f9in == null) {
            throw new XZIOException("Stream closed");
        }
        IOException iOException = this.exception;
        if (iOException != null) {
            throw iOException;
        }
        try {
            if (this.seekNeeded) {
                seek();
            }
            if (this.endReached) {
                return -1;
            }
            while (i2 > 0) {
                if (this.blockDecoder == null) {
                    seek();
                    if (this.endReached) {
                        break;
                    }
                }
                int i5 = this.blockDecoder.read(bArr, i, i2);
                if (i5 > 0) {
                    this.curPos += (long) i5;
                    i4 += i5;
                    i += i5;
                    i2 -= i5;
                } else if (i5 == -1) {
                    this.blockDecoder = null;
                }
            }
        } catch (IOException e) {
            e = e;
            if (e instanceof EOFException) {
                e = new CorruptedInputException();
            }
            this.exception = e;
            if (i4 == 0) {
                throw e;
            }
        }
        return i4;
    }

    @Override // java.io.InputStream
    public int available() throws IOException {
        BlockInputStream blockInputStream;
        if (this.f9in == null) {
            throw new XZIOException("Stream closed");
        }
        IOException iOException = this.exception;
        if (iOException != null) {
            throw iOException;
        }
        if (this.endReached || this.seekNeeded || (blockInputStream = this.blockDecoder) == null) {
            return 0;
        }
        return blockInputStream.available();
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        close(true);
    }

    public void close(boolean z) throws IOException {
        if (this.f9in != null) {
            BlockInputStream blockInputStream = this.blockDecoder;
            if (blockInputStream != null) {
                blockInputStream.close();
                this.blockDecoder = null;
            }
            if (z) {
                try {
                    this.f9in.close();
                } finally {
                    this.f9in = null;
                }
            }
        }
    }

    @Override // org.tukaani.xz.SeekableInputStream
    public long length() {
        return this.uncompressedSize;
    }

    @Override // org.tukaani.xz.SeekableInputStream
    public long position() throws IOException {
        if (this.f9in != null) {
            return this.seekNeeded ? this.seekPos : this.curPos;
        }
        throw new XZIOException("Stream closed");
    }

    @Override // org.tukaani.xz.SeekableInputStream
    public void seek(long j) throws IOException {
        if (this.f9in == null) {
            throw new XZIOException("Stream closed");
        }
        if (j < 0) {
            throw new XZIOException("Negative seek position: " + j);
        }
        this.seekPos = j;
        this.seekNeeded = true;
    }

    public void seekToBlock(int i) throws IOException {
        if (this.f9in == null) {
            throw new XZIOException("Stream closed");
        }
        if (i < 0 || i >= this.blockCount) {
            throw new XZIOException("Invalid XZ Block number: " + i);
        }
        locateBlockByNumber(this.queriedBlockInfo, i);
        this.seekPos = this.queriedBlockInfo.uncompressedOffset;
        this.seekNeeded = true;
    }

    private void seek() throws IOException {
        if (!this.seekNeeded) {
            if (this.curBlockInfo.hasNext()) {
                this.curBlockInfo.setNext();
                initBlockDecoder();
                return;
            }
            this.seekPos = this.curPos;
        }
        this.seekNeeded = false;
        long j = this.seekPos;
        if (j >= this.uncompressedSize) {
            this.curPos = j;
            BlockInputStream blockInputStream = this.blockDecoder;
            if (blockInputStream != null) {
                blockInputStream.close();
                this.blockDecoder = null;
            }
            this.endReached = true;
            return;
        }
        this.endReached = false;
        locateBlockByPos(this.curBlockInfo, j);
        long j2 = this.curPos;
        BlockInfo blockInfo = this.curBlockInfo;
        if (j2 <= blockInfo.uncompressedOffset || j2 > this.seekPos) {
            this.f9in.seek(blockInfo.compressedOffset);
            this.check = Check.getInstance(this.curBlockInfo.getCheckType());
            initBlockDecoder();
            this.curPos = this.curBlockInfo.uncompressedOffset;
        }
        long j3 = this.seekPos;
        long j4 = this.curPos;
        if (j3 > j4) {
            long j5 = j3 - j4;
            if (this.blockDecoder.skip(j5) != j5) {
                throw new CorruptedInputException();
            }
            this.curPos = this.seekPos;
        }
    }

    private void locateBlockByPos(BlockInfo blockInfo, long j) {
        if (j < 0 || j >= this.uncompressedSize) {
            throw new IndexOutOfBoundsException("Invalid uncompressed position: " + j);
        }
        int i = 0;
        while (true) {
            IndexDecoder indexDecoder = this.streams.get(i);
            if (indexDecoder.hasUncompressedOffset(j)) {
                indexDecoder.locateBlock(blockInfo, j);
                return;
            }
            i++;
        }
    }

    private void locateBlockByNumber(BlockInfo blockInfo, int i) {
        if (i < 0 || i >= this.blockCount) {
            throw new IndexOutOfBoundsException("Invalid XZ Block number: " + i);
        }
        if (blockInfo.blockNumber == i) {
            return;
        }
        int i2 = 0;
        while (true) {
            IndexDecoder indexDecoder = this.streams.get(i2);
            if (indexDecoder.hasRecord(i)) {
                indexDecoder.setBlockInfo(blockInfo, i);
                return;
            }
            i2++;
        }
    }

    private void initBlockDecoder() throws IOException {
        try {
            BlockInputStream blockInputStream = this.blockDecoder;
            if (blockInputStream != null) {
                blockInputStream.close();
                this.blockDecoder = null;
            }
            SeekableInputStream seekableInputStream = this.f9in;
            Check check = this.check;
            boolean z = this.verifyCheck;
            int i = this.memoryLimit;
            BlockInfo blockInfo = this.curBlockInfo;
            this.blockDecoder = new BlockInputStream(seekableInputStream, check, z, i, blockInfo.unpaddedSize, blockInfo.uncompressedSize, this.arrayCache);
        } catch (IndexIndicatorException unused) {
            throw new CorruptedInputException();
        } catch (MemoryLimitException e) {
            int memoryNeeded = e.getMemoryNeeded();
            int i2 = this.indexMemoryUsage;
            throw new MemoryLimitException(memoryNeeded + i2, this.memoryLimit + i2);
        }
    }
}
