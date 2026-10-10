package org.tukaani.xz.index;

import java.io.EOFException;
import java.io.IOException;
import java.util.zip.CRC32;
import java.util.zip.CheckedInputStream;
import org.tukaani.xz.CorruptedInputException;
import org.tukaani.xz.MemoryLimitException;
import org.tukaani.xz.SeekableInputStream;
import org.tukaani.xz.UnsupportedOptionsException;
import org.tukaani.xz.common.DecoderUtil;
import org.tukaani.xz.common.StreamFlags;

/* JADX INFO: loaded from: classes3.dex */
public final class IndexDecoder extends IndexBase {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private long compressedOffset;
    private long largestBlockSize;
    private final int memoryUsage;
    private int recordOffset;
    private final StreamFlags streamFlags;
    private final long streamPadding;
    private final long[] uncompressed;
    private long uncompressedOffset;
    private final long[] unpadded;

    @Override // org.tukaani.xz.index.IndexBase
    public /* bridge */ /* synthetic */ long getIndexSize() {
        return super.getIndexSize();
    }

    @Override // org.tukaani.xz.index.IndexBase
    public /* bridge */ /* synthetic */ long getStreamSize() {
        return super.getStreamSize();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v1 */
    /* JADX WARN: Type inference failed for: r1v13 */
    /* JADX WARN: Type inference failed for: r1v14 */
    /* JADX WARN: Type inference failed for: r1v3, types: [int] */
    public IndexDecoder(SeekableInputStream seekableInputStream, StreamFlags streamFlags, long j, int i) throws IOException {
        String str;
        long jDecodeVLI;
        String str2;
        super(new CorruptedInputException("XZ Index is corrupt"));
        String str3 = "XZ Index is corrupt";
        this.largestBlockSize = 0L;
        this.recordOffset = 0;
        this.compressedOffset = 0L;
        this.uncompressedOffset = 0L;
        this.streamFlags = streamFlags;
        this.streamPadding = j;
        long jPosition = (seekableInputStream.position() + streamFlags.backwardSize) - 4;
        CRC32 crc32 = new CRC32();
        CheckedInputStream checkedInputStream = new CheckedInputStream(seekableInputStream, crc32);
        if (checkedInputStream.read() != 0) {
            throw new CorruptedInputException("XZ Index is corrupt");
        }
        try {
            jDecodeVLI = DecoderUtil.decodeVLI(checkedInputStream);
            str = (jDecodeVLI > (streamFlags.backwardSize / 2) ? 1 : (jDecodeVLI == (streamFlags.backwardSize / 2) ? 0 : -1));
        } catch (EOFException unused) {
            str = "XZ Index is corrupt";
        }
        if (str >= 0) {
            throw new CorruptedInputException("XZ Index is corrupt");
        }
        if (jDecodeVLI > 2147483647L) {
            throw new UnsupportedOptionsException("XZ Index has over 2147483647 Records");
        }
        int i2 = ((int) (((16 * jDecodeVLI) + 1023) / 1024)) + 1;
        this.memoryUsage = i2;
        if (i >= 0 && i2 > i) {
            throw new MemoryLimitException(i2, i);
        }
        int i3 = (int) jDecodeVLI;
        this.unpadded = new long[i3];
        this.uncompressed = new long[i3];
        int i4 = 0;
        while (i3 > 0) {
            long jDecodeVLI2 = DecoderUtil.decodeVLI(checkedInputStream);
            long jDecodeVLI3 = DecoderUtil.decodeVLI(checkedInputStream);
            if (seekableInputStream.position() > jPosition) {
                str2 = str3;
                throw new CorruptedInputException(str2);
            }
            String str4 = str3;
            try {
                this.unpadded[i4] = this.blocksSum + jDecodeVLI2;
                str2 = str4;
                try {
                    this.uncompressed[i4] = this.uncompressedSum + jDecodeVLI3;
                    i4++;
                    super.add(jDecodeVLI2, jDecodeVLI3);
                    if (this.largestBlockSize < jDecodeVLI3) {
                        this.largestBlockSize = jDecodeVLI3;
                    }
                    i3--;
                    str3 = str2;
                } catch (EOFException unused2) {
                    str = str2;
                }
            } catch (EOFException unused3) {
                str = str4;
            }
            str = str2;
            throw new CorruptedInputException(str);
        }
        String str5 = str3;
        int indexPaddingSize = getIndexPaddingSize();
        if (seekableInputStream.position() + ((long) indexPaddingSize) != jPosition) {
            throw new CorruptedInputException(str5);
        }
        while (true) {
            int i5 = indexPaddingSize - 1;
            if (indexPaddingSize > 0) {
                if (checkedInputStream.read() != 0) {
                    throw new CorruptedInputException(str5);
                }
                indexPaddingSize = i5;
            } else {
                long value = crc32.getValue();
                for (int i6 = 0; i6 < 4; i6++) {
                    if (((value >>> (i6 * 8)) & 255) != seekableInputStream.read()) {
                        throw new CorruptedInputException(str5);
                    }
                }
                return;
            }
        }
    }

    public void setOffsets(IndexDecoder indexDecoder) {
        this.recordOffset = indexDecoder.recordOffset + ((int) indexDecoder.recordCount);
        this.compressedOffset = indexDecoder.compressedOffset + indexDecoder.getStreamSize() + indexDecoder.streamPadding;
        this.uncompressedOffset = indexDecoder.uncompressedOffset + indexDecoder.uncompressedSum;
    }

    public int getMemoryUsage() {
        return this.memoryUsage;
    }

    public StreamFlags getStreamFlags() {
        return this.streamFlags;
    }

    public int getRecordCount() {
        return (int) this.recordCount;
    }

    public long getUncompressedSize() {
        return this.uncompressedSum;
    }

    public long getLargestBlockSize() {
        return this.largestBlockSize;
    }

    public boolean hasUncompressedOffset(long j) {
        long j2 = this.uncompressedOffset;
        return j >= j2 && j < j2 + this.uncompressedSum;
    }

    public boolean hasRecord(int i) {
        int i2 = this.recordOffset;
        return i >= i2 && ((long) i) < ((long) i2) + this.recordCount;
    }

    public void locateBlock(BlockInfo blockInfo, long j) {
        long j2 = j - this.uncompressedOffset;
        int length = this.unpadded.length - 1;
        int i = 0;
        while (i < length) {
            int i2 = ((length - i) / 2) + i;
            if (this.uncompressed[i2] <= j2) {
                i = i2 + 1;
            } else {
                length = i2;
            }
        }
        setBlockInfo(blockInfo, this.recordOffset + i);
    }

    public void setBlockInfo(BlockInfo blockInfo, int i) {
        blockInfo.index = this;
        blockInfo.blockNumber = i;
        int i2 = i - this.recordOffset;
        if (i2 == 0) {
            blockInfo.compressedOffset = 0L;
            blockInfo.uncompressedOffset = 0L;
        } else {
            int i3 = i2 - 1;
            blockInfo.compressedOffset = (this.unpadded[i3] + 3) & (-4);
            blockInfo.uncompressedOffset = this.uncompressed[i3];
        }
        long j = this.unpadded[i2];
        long j2 = blockInfo.compressedOffset;
        blockInfo.unpaddedSize = j - j2;
        long j3 = this.uncompressed[i2];
        long j4 = blockInfo.uncompressedOffset;
        blockInfo.uncompressedSize = j3 - j4;
        blockInfo.compressedOffset = j2 + this.compressedOffset + 12;
        blockInfo.uncompressedOffset = j4 + this.uncompressedOffset;
    }
}
