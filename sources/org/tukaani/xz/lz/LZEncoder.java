package org.tukaani.xz.lz;

import java.io.IOException;
import java.io.OutputStream;
import org.tukaani.xz.ArrayCache;

/* JADX INFO: loaded from: classes3.dex */
public abstract class LZEncoder {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    public static final int MF_BT4 = 20;
    public static final int MF_HC4 = 4;
    final byte[] buf;
    final int bufSize;
    private final int keepSizeAfter;
    private final int keepSizeBefore;
    final int matchLenMax;
    final int niceLen;
    int readPos = -1;
    private int readLimit = -1;
    private boolean finishing = false;
    private int writePos = 0;
    private int pendingSize = 0;

    public abstract Matches getMatches();

    public abstract void skip(int i);

    public static void normalize(int[] iArr, int i, int i2) {
        for (int i3 = 0; i3 < i; i3++) {
            int i4 = iArr[i3];
            if (i4 <= i2) {
                iArr[i3] = 0;
            } else {
                iArr[i3] = i4 - i2;
            }
        }
    }

    private static int getBufSize(int i, int i2, int i3, int i4) {
        return i2 + i + i3 + i4 + Math.min((i / 2) + 262144, 536870912);
    }

    public static int getMemoryUsage(int i, int i2, int i3, int i4, int i5) {
        int memoryUsage;
        int bufSize = (getBufSize(i, i2, i3, i4) / 1024) + 10;
        if (i5 == 4) {
            memoryUsage = HC4.getMemoryUsage(i);
        } else if (i5 == 20) {
            memoryUsage = BT4.getMemoryUsage(i);
        } else {
            throw new IllegalArgumentException();
        }
        return bufSize + memoryUsage;
    }

    public static LZEncoder getInstance(int i, int i2, int i3, int i4, int i5, int i6, int i7, ArrayCache arrayCache) {
        if (i6 == 4) {
            return new HC4(i, i2, i3, i4, i5, i7, arrayCache);
        }
        if (i6 == 20) {
            return new BT4(i, i2, i3, i4, i5, i7, arrayCache);
        }
        throw new IllegalArgumentException();
    }

    public LZEncoder(int i, int i2, int i3, int i4, int i5, ArrayCache arrayCache) {
        int bufSize = getBufSize(i, i2, i3, i5);
        this.bufSize = bufSize;
        this.buf = arrayCache.getByteArray(bufSize, false);
        this.keepSizeBefore = i2 + i;
        this.keepSizeAfter = i3 + i5;
        this.matchLenMax = i5;
        this.niceLen = i4;
    }

    public void putArraysToCache(ArrayCache arrayCache) {
        arrayCache.putArray(this.buf);
    }

    public void setPresetDict(int i, byte[] bArr) {
        if (bArr != null) {
            int iMin = Math.min(bArr.length, i);
            System.arraycopy(bArr, bArr.length - iMin, this.buf, 0, iMin);
            this.writePos += iMin;
            skip(iMin);
        }
    }

    private void moveWindow() {
        int i = ((this.readPos + 1) - this.keepSizeBefore) & (-16);
        int i2 = this.writePos - i;
        byte[] bArr = this.buf;
        System.arraycopy(bArr, i, bArr, 0, i2);
        this.readPos -= i;
        this.readLimit -= i;
        this.writePos -= i;
    }

    public int fillWindow(byte[] bArr, int i, int i2) {
        if (this.readPos >= this.bufSize - this.keepSizeAfter) {
            moveWindow();
        }
        int i3 = this.bufSize;
        int i4 = this.writePos;
        if (i2 > i3 - i4) {
            i2 = i3 - i4;
        }
        System.arraycopy(bArr, i, this.buf, i4, i2);
        int i5 = this.writePos + i2;
        this.writePos = i5;
        int i6 = this.keepSizeAfter;
        if (i5 >= i6) {
            this.readLimit = i5 - i6;
        }
        processPendingBytes();
        return i2;
    }

    private void processPendingBytes() {
        int i;
        int i2 = this.pendingSize;
        if (i2 <= 0 || (i = this.readPos) >= this.readLimit) {
            return;
        }
        this.readPos = i - i2;
        this.pendingSize = 0;
        skip(i2);
    }

    public boolean isStarted() {
        return this.readPos != -1;
    }

    public void setFlushing() {
        this.readLimit = this.writePos - 1;
        processPendingBytes();
    }

    public void setFinishing() {
        this.readLimit = this.writePos - 1;
        this.finishing = true;
        processPendingBytes();
    }

    public boolean hasEnoughData(int i) {
        return this.readPos - i < this.readLimit;
    }

    public void copyUncompressed(OutputStream outputStream, int i, int i2) throws IOException {
        outputStream.write(this.buf, (this.readPos + 1) - i, i2);
    }

    public int getAvail() {
        return this.writePos - this.readPos;
    }

    public int getPos() {
        return this.readPos;
    }

    public int getByte(int i) {
        return this.buf[this.readPos - i] & 255;
    }

    public int getByte(int i, int i2) {
        return this.buf[(this.readPos + i) - i2] & 255;
    }

    public int getMatchLen(int i, int i2) {
        return MatchLength.getLen(this.buf, this.readPos, i + 1, 0, i2);
    }

    public int getMatchLen(int i, int i2, int i3) {
        return MatchLength.getLen(this.buf, this.readPos + i, i2 + 1, 0, i3);
    }

    public boolean verifyMatches(Matches matches) {
        int iMin = Math.min(getAvail(), this.matchLenMax);
        for (int i = 0; i < matches.count; i++) {
            if (getMatchLen(matches.dist[i], iMin) != matches.len[i]) {
                return false;
            }
        }
        return true;
    }

    public int movePos(int i, int i2) {
        int i3 = this.readPos + 1;
        this.readPos = i3;
        int i4 = this.writePos - i3;
        if (i4 >= i) {
            return i4;
        }
        if (i4 >= i2 && this.finishing) {
            return i4;
        }
        this.pendingSize++;
        return 0;
    }
}
