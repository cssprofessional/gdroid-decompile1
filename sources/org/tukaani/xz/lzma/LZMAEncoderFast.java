package org.tukaani.xz.lzma;

import org.tukaani.xz.ArrayCache;
import org.tukaani.xz.LZMA2Options;
import org.tukaani.xz.lz.LZEncoder;
import org.tukaani.xz.lz.Matches;
import org.tukaani.xz.rangecoder.RangeEncoder;

/* JADX INFO: loaded from: classes3.dex */
final class LZMAEncoderFast extends LZMAEncoder {
    private static final int EXTRA_SIZE_AFTER = 272;
    private static final int EXTRA_SIZE_BEFORE = 1;
    private Matches matches;

    private boolean changePair(int i, int i2) {
        return i < (i2 >>> 7);
    }

    public static int getMemoryUsage(int i, int i2, int i3) {
        return LZEncoder.getMemoryUsage(i, Math.max(i2, 1), EXTRA_SIZE_AFTER, LZMA2Options.NICE_LEN_MAX, i3);
    }

    public LZMAEncoderFast(RangeEncoder rangeEncoder, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, ArrayCache arrayCache) {
        super(rangeEncoder, LZEncoder.getInstance(i4, Math.max(i5, 1), EXTRA_SIZE_AFTER, i6, LZMA2Options.NICE_LEN_MAX, i7, i8, arrayCache), i, i2, i3, i4, i6);
        this.matches = null;
    }

    @Override // org.tukaani.xz.lzma.LZMAEncoder
    public int getNextSymbol() {
        int i;
        int i2;
        int i3;
        if (this.readAhead == -1) {
            this.matches = getMatches();
        }
        this.back = -1;
        int iMin = Math.min(this.lz.getAvail(), LZMA2Options.NICE_LEN_MAX);
        if (iMin < 2) {
            return 1;
        }
        int i4 = 0;
        int i5 = 0;
        for (int i6 = 0; i6 < 4; i6++) {
            int matchLen = this.lz.getMatchLen(this.reps[i6], iMin);
            if (matchLen >= 2) {
                if (matchLen >= this.niceLen) {
                    this.back = i6;
                    skip(matchLen - 1);
                    return matchLen;
                }
                if (matchLen > i4) {
                    i5 = i6;
                    i4 = matchLen;
                }
            }
        }
        Matches matches = this.matches;
        int i7 = matches.count;
        if (i7 > 0) {
            i2 = matches.len[i7 - 1];
            i = matches.dist[i7 - 1];
            if (i2 >= this.niceLen) {
                this.back = i + 4;
                skip(i2 - 1);
                return i2;
            }
            while (true) {
                Matches matches2 = this.matches;
                int i8 = matches2.count;
                if (i8 <= 1 || i2 != matches2.len[i8 - 2] + 1 || !changePair(matches2.dist[i8 - 2], i)) {
                    break;
                }
                Matches matches3 = this.matches;
                int i9 = matches3.count;
                matches3.count = i9 - 1;
                i2 = matches3.len[i9 - 2];
                i = matches3.dist[i9 - 2];
            }
            if (i2 == 2 && i >= 128) {
                i2 = 1;
            }
        } else {
            i = 0;
            i2 = 0;
        }
        if (i4 >= 2 && (i4 + 1 >= i2 || ((i4 + 2 >= i2 && i >= 512) || (i4 + 3 >= i2 && i >= 32768)))) {
            this.back = i5;
            skip(i4 - 1);
            return i4;
        }
        if (i2 < 2 || iMin <= 2) {
            return 1;
        }
        Matches matches4 = getMatches();
        this.matches = matches4;
        int i10 = matches4.count;
        if (i10 > 0) {
            int i11 = matches4.len[i10 - 1];
            int i12 = matches4.dist[i10 - 1];
            if ((i11 >= i2 && i12 < i) || ((i11 == (i3 = i2 + 1) && !changePair(i, i12)) || i11 > i3 || (i11 + 1 >= i2 && i2 >= 3 && changePair(i12, i)))) {
                return 1;
            }
        }
        int iMax = Math.max(i2 - 1, 2);
        for (int i13 = 0; i13 < 4; i13++) {
            if (this.lz.getMatchLen(this.reps[i13], iMax) == iMax) {
                return 1;
            }
        }
        this.back = i + 4;
        skip(i2 - 2);
        return i2;
    }
}
