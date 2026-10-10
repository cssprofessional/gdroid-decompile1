package org.tukaani.xz.lzma;

import java.io.IOException;
import java.lang.reflect.Array;
import org.tukaani.xz.ArrayCache;
import org.tukaani.xz.lz.LZEncoder;
import org.tukaani.xz.lz.Matches;
import org.tukaani.xz.lzma.LZMACoder;
import org.tukaani.xz.rangecoder.RangeEncoder;

/* JADX INFO: loaded from: classes3.dex */
public abstract class LZMAEncoder extends LZMACoder {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final int ALIGN_PRICE_UPDATE_INTERVAL = 16;
    private static final int DIST_PRICE_UPDATE_INTERVAL = 128;
    private static final int LZMA2_COMPRESSED_LIMIT = 65510;
    private static final int LZMA2_UNCOMPRESSED_LIMIT = 2096879;
    public static final int MODE_FAST = 1;
    public static final int MODE_NORMAL = 2;
    private int alignPriceCount;
    private final int[] alignPrices;
    int back;
    private int distPriceCount;
    private final int[][] distSlotPrices;
    private final int distSlotPricesSize;
    private final int[][] fullDistPrices;
    final LiteralEncoder literalEncoder;
    final LZEncoder lz;
    final LengthEncoder matchLenEncoder;
    final int niceLen;
    private final RangeEncoder rc;
    int readAhead;
    final LengthEncoder repLenEncoder;
    private int uncompressedSize;

    public abstract int getNextSymbol();

    public static int getMemoryUsage(int i, int i2, int i3, int i4) {
        int memoryUsage;
        if (i == 1) {
            memoryUsage = LZMAEncoderFast.getMemoryUsage(i2, i3, i4);
        } else if (i == 2) {
            memoryUsage = LZMAEncoderNormal.getMemoryUsage(i2, i3, i4);
        } else {
            throw new IllegalArgumentException();
        }
        return memoryUsage + 80;
    }

    public static LZMAEncoder getInstance(RangeEncoder rangeEncoder, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, ArrayCache arrayCache) {
        if (i4 == 1) {
            return new LZMAEncoderFast(rangeEncoder, i, i2, i3, i5, i6, i7, i8, i9, arrayCache);
        }
        if (i4 == 2) {
            return new LZMAEncoderNormal(rangeEncoder, i, i2, i3, i5, i6, i7, i8, i9, arrayCache);
        }
        throw new IllegalArgumentException();
    }

    public void putArraysToCache(ArrayCache arrayCache) {
        this.lz.putArraysToCache(arrayCache);
    }

    public static int getDistSlot(int i) {
        if (i <= 4 && i >= 0) {
            return i;
        }
        int iNumberOfLeadingZeros = Integer.numberOfLeadingZeros(i);
        return ((31 - iNumberOfLeadingZeros) << 1) + ((i >>> (30 - iNumberOfLeadingZeros)) & 1);
    }

    public LZMAEncoder(RangeEncoder rangeEncoder, LZEncoder lZEncoder, int i, int i2, int i3, int i4, int i5) {
        super(i3);
        this.distPriceCount = 0;
        this.alignPriceCount = 0;
        Class cls = Integer.TYPE;
        this.fullDistPrices = (int[][]) Array.newInstance((Class<?>) cls, 4, 128);
        this.alignPrices = new int[16];
        this.back = 0;
        this.readAhead = -1;
        this.uncompressedSize = 0;
        this.rc = rangeEncoder;
        this.lz = lZEncoder;
        this.niceLen = i5;
        this.literalEncoder = new LiteralEncoder(i, i2);
        this.matchLenEncoder = new LengthEncoder(i3, i5);
        this.repLenEncoder = new LengthEncoder(i3, i5);
        int distSlot = getDistSlot(i4 - 1) + 1;
        this.distSlotPricesSize = distSlot;
        this.distSlotPrices = (int[][]) Array.newInstance((Class<?>) cls, 4, distSlot);
        reset();
    }

    public LZEncoder getLZEncoder() {
        return this.lz;
    }

    @Override // org.tukaani.xz.lzma.LZMACoder
    public void reset() {
        super.reset();
        this.literalEncoder.reset();
        this.matchLenEncoder.reset();
        this.repLenEncoder.reset();
        this.distPriceCount = 0;
        this.alignPriceCount = 0;
        this.uncompressedSize += this.readAhead + 1;
        this.readAhead = -1;
    }

    public int getUncompressedSize() {
        return this.uncompressedSize;
    }

    public void resetUncompressedSize() {
        this.uncompressedSize = 0;
    }

    public void encodeForLZMA1() throws IOException {
        if (this.lz.isStarted() || encodeInit()) {
            while (encodeSymbol()) {
            }
        }
    }

    public void encodeLZMA1EndMarker() throws IOException {
        int pos = (this.lz.getPos() - this.readAhead) & this.posMask;
        this.rc.encodeBit(this.isMatch[this.state.get()], pos, 1);
        this.rc.encodeBit(this.isRep, this.state.get(), 0);
        encodeMatch(-1, 2, pos);
    }

    public boolean encodeForLZMA2() {
        try {
            if (!this.lz.isStarted() && !encodeInit()) {
                return false;
            }
            while (this.uncompressedSize <= LZMA2_UNCOMPRESSED_LIMIT && this.rc.getPendingSize() <= LZMA2_COMPRESSED_LIMIT) {
                if (!encodeSymbol()) {
                    return false;
                }
            }
            return true;
        } catch (IOException unused) {
            throw new Error();
        }
    }

    private boolean encodeInit() throws IOException {
        if (!this.lz.hasEnoughData(0)) {
            return false;
        }
        skip(1);
        this.rc.encodeBit(this.isMatch[this.state.get()], 0, 0);
        this.literalEncoder.encodeInit();
        this.readAhead--;
        this.uncompressedSize++;
        return true;
    }

    private boolean encodeSymbol() throws IOException {
        if (!this.lz.hasEnoughData(this.readAhead + 1)) {
            return false;
        }
        int nextSymbol = getNextSymbol();
        int pos = (this.lz.getPos() - this.readAhead) & this.posMask;
        if (this.back == -1) {
            this.rc.encodeBit(this.isMatch[this.state.get()], pos, 0);
            this.literalEncoder.encode();
        } else {
            this.rc.encodeBit(this.isMatch[this.state.get()], pos, 1);
            if (this.back < 4) {
                this.rc.encodeBit(this.isRep, this.state.get(), 1);
                encodeRepMatch(this.back, nextSymbol, pos);
            } else {
                this.rc.encodeBit(this.isRep, this.state.get(), 0);
                encodeMatch(this.back - 4, nextSymbol, pos);
            }
        }
        this.readAhead -= nextSymbol;
        this.uncompressedSize += nextSymbol;
        return true;
    }

    private void encodeMatch(int i, int i2, int i3) throws IOException {
        this.state.updateMatch();
        this.matchLenEncoder.encode(i2, i3);
        int distSlot = getDistSlot(i);
        this.rc.encodeBitTree(this.distSlots[LZMACoder.getDistState(i2)], distSlot);
        if (distSlot >= 4) {
            int i4 = distSlot >>> 1;
            int i5 = i - (((distSlot & 1) | 2) << (i4 - 1));
            if (distSlot < 14) {
                this.rc.encodeReverseBitTree(this.distSpecial[distSlot - 4], i5);
            } else {
                this.rc.encodeDirectBits(i5 >>> 4, i4 - 5);
                this.rc.encodeReverseBitTree(this.distAlign, i5 & 15);
                this.alignPriceCount--;
            }
        }
        int[] iArr = this.reps;
        iArr[3] = iArr[2];
        iArr[2] = iArr[1];
        iArr[1] = iArr[0];
        iArr[0] = i;
        this.distPriceCount--;
    }

    private void encodeRepMatch(int i, int i2, int i3) throws IOException {
        if (i == 0) {
            this.rc.encodeBit(this.isRep0, this.state.get(), 0);
            this.rc.encodeBit(this.isRep0Long[this.state.get()], i3, i2 != 1 ? 1 : 0);
        } else {
            int i4 = this.reps[i];
            this.rc.encodeBit(this.isRep0, this.state.get(), 1);
            if (i == 1) {
                this.rc.encodeBit(this.isRep1, this.state.get(), 0);
            } else {
                this.rc.encodeBit(this.isRep1, this.state.get(), 1);
                this.rc.encodeBit(this.isRep2, this.state.get(), i - 2);
                if (i == 3) {
                    int[] iArr = this.reps;
                    iArr[3] = iArr[2];
                }
                int[] iArr2 = this.reps;
                iArr2[2] = iArr2[1];
            }
            int[] iArr3 = this.reps;
            iArr3[1] = iArr3[0];
            iArr3[0] = i4;
        }
        if (i2 == 1) {
            this.state.updateShortRep();
        } else {
            this.repLenEncoder.encode(i2, i3);
            this.state.updateLongRep();
        }
    }

    public Matches getMatches() {
        this.readAhead++;
        return this.lz.getMatches();
    }

    public void skip(int i) {
        this.readAhead += i;
        this.lz.skip(i);
    }

    public int getAnyMatchPrice(State state, int i) {
        return RangeEncoder.getBitPrice(this.isMatch[state.get()][i], 1);
    }

    public int getNormalMatchPrice(int i, State state) {
        return i + RangeEncoder.getBitPrice(this.isRep[state.get()], 0);
    }

    public int getAnyRepPrice(int i, State state) {
        return i + RangeEncoder.getBitPrice(this.isRep[state.get()], 1);
    }

    public int getShortRepPrice(int i, State state, int i2) {
        return i + RangeEncoder.getBitPrice(this.isRep0[state.get()], 0) + RangeEncoder.getBitPrice(this.isRep0Long[state.get()][i2], 0);
    }

    public int getLongRepPrice(int i, int i2, State state, int i3) {
        if (i2 == 0) {
            return i + RangeEncoder.getBitPrice(this.isRep0[state.get()], 0) + RangeEncoder.getBitPrice(this.isRep0Long[state.get()][i3], 1);
        }
        int bitPrice = i + RangeEncoder.getBitPrice(this.isRep0[state.get()], 1);
        if (i2 == 1) {
            return bitPrice + RangeEncoder.getBitPrice(this.isRep1[state.get()], 0);
        }
        return bitPrice + RangeEncoder.getBitPrice(this.isRep1[state.get()], 1) + RangeEncoder.getBitPrice(this.isRep2[state.get()], i2 - 2);
    }

    public int getLongRepAndLenPrice(int i, int i2, State state, int i3) {
        return getLongRepPrice(getAnyRepPrice(getAnyMatchPrice(state, i3), state), i, state, i3) + this.repLenEncoder.getPrice(i2, i3);
    }

    public int getMatchAndLenPrice(int i, int i2, int i3, int i4) {
        int price = i + this.matchLenEncoder.getPrice(i3, i4);
        int distState = LZMACoder.getDistState(i3);
        if (i2 < 128) {
            return price + this.fullDistPrices[distState][i2];
        }
        return price + this.distSlotPrices[distState][getDistSlot(i2)] + this.alignPrices[i2 & 15];
    }

    private void updateDistPrices() {
        this.distPriceCount = 128;
        int i = 0;
        while (true) {
            if (i >= 4) {
                break;
            }
            for (int i2 = 0; i2 < this.distSlotPricesSize; i2++) {
                this.distSlotPrices[i][i2] = RangeEncoder.getBitTreePrice(this.distSlots[i], i2);
            }
            for (int i3 = 14; i3 < this.distSlotPricesSize; i3++) {
                int[] iArr = this.distSlotPrices[i];
                iArr[i3] = iArr[i3] + RangeEncoder.getDirectBitsPrice((i3 >>> 1) - 5);
            }
            for (int i4 = 0; i4 < 4; i4++) {
                this.fullDistPrices[i][i4] = this.distSlotPrices[i][i4];
            }
            i++;
        }
        int i5 = 4;
        for (int i6 = 4; i6 < 14; i6++) {
            int i7 = ((i6 & 1) | 2) << ((i6 >>> 1) - 1);
            int i8 = i6 - 4;
            int length = this.distSpecial[i8].length;
            for (int i9 = 0; i9 < length; i9++) {
                int reverseBitTreePrice = RangeEncoder.getReverseBitTreePrice(this.distSpecial[i8], i5 - i7);
                for (int i10 = 0; i10 < 4; i10++) {
                    this.fullDistPrices[i10][i5] = this.distSlotPrices[i10][i6] + reverseBitTreePrice;
                }
                i5++;
            }
        }
    }

    private void updateAlignPrices() {
        this.alignPriceCount = 16;
        for (int i = 0; i < 16; i++) {
            this.alignPrices[i] = RangeEncoder.getReverseBitTreePrice(this.distAlign, i);
        }
    }

    public void updatePrices() {
        if (this.distPriceCount <= 0) {
            updateDistPrices();
        }
        if (this.alignPriceCount <= 0) {
            updateAlignPrices();
        }
        this.matchLenEncoder.updatePrices();
        this.repLenEncoder.updatePrices();
    }

    public class LiteralEncoder extends LZMACoder.LiteralCoder {
        static final /* synthetic */ boolean $assertionsDisabled = false;
        private final LiteralSubencoder[] subencoders;

        public LiteralEncoder(int i, int i2) {
            super(i, i2);
            this.subencoders = new LiteralSubencoder[1 << (i + i2)];
            int i3 = 0;
            while (true) {
                LiteralSubencoder[] literalSubencoderArr = this.subencoders;
                if (i3 >= literalSubencoderArr.length) {
                    return;
                }
                literalSubencoderArr[i3] = new LiteralSubencoder();
                i3++;
            }
        }

        public void reset() {
            int i = 0;
            while (true) {
                LiteralSubencoder[] literalSubencoderArr = this.subencoders;
                if (i >= literalSubencoderArr.length) {
                    return;
                }
                literalSubencoderArr[i].reset();
                i++;
            }
        }

        public void encodeInit() throws IOException {
            this.subencoders[0].encode();
        }

        public void encode() throws IOException {
            LZMAEncoder lZMAEncoder = LZMAEncoder.this;
            this.subencoders[getSubcoderIndex(lZMAEncoder.lz.getByte(lZMAEncoder.readAhead + 1), LZMAEncoder.this.lz.getPos() - LZMAEncoder.this.readAhead)].encode();
        }

        public int getPrice(int i, int i2, int i3, int i4, State state) {
            int matchedPrice;
            int bitPrice = RangeEncoder.getBitPrice(LZMAEncoder.this.isMatch[state.get()][LZMAEncoder.this.posMask & i4], 0);
            int subcoderIndex = getSubcoderIndex(i3, i4);
            if (state.isLiteral()) {
                matchedPrice = this.subencoders[subcoderIndex].getNormalPrice(i);
            } else {
                matchedPrice = this.subencoders[subcoderIndex].getMatchedPrice(i, i2);
            }
            return bitPrice + matchedPrice;
        }

        public class LiteralSubencoder extends LZMACoder.LiteralCoder.LiteralSubcoder {
            private LiteralSubencoder() {
                super();
            }

            public void encode() throws IOException {
                LZMAEncoder lZMAEncoder = LZMAEncoder.this;
                int i = 256;
                int i2 = lZMAEncoder.lz.getByte(lZMAEncoder.readAhead) | 256;
                if (LZMAEncoder.this.state.isLiteral()) {
                    do {
                        LZMAEncoder.this.rc.encodeBit(this.probs, i2 >>> 8, (i2 >>> 7) & 1);
                        i2 <<= 1;
                    } while (i2 < 65536);
                } else {
                    LZMAEncoder lZMAEncoder2 = LZMAEncoder.this;
                    int i3 = lZMAEncoder2.lz.getByte(lZMAEncoder2.reps[0] + 1 + lZMAEncoder2.readAhead);
                    do {
                        i3 <<= 1;
                        LZMAEncoder.this.rc.encodeBit(this.probs, (i3 & i) + i + (i2 >>> 8), (i2 >>> 7) & 1);
                        i2 <<= 1;
                        i &= ~(i3 ^ i2);
                    } while (i2 < 65536);
                }
                LZMAEncoder.this.state.updateLiteral();
            }

            public int getNormalPrice(int i) {
                int i2 = i | 256;
                int bitPrice = 0;
                do {
                    bitPrice += RangeEncoder.getBitPrice(this.probs[i2 >>> 8], (i2 >>> 7) & 1);
                    i2 <<= 1;
                } while (i2 < 65536);
                return bitPrice;
            }

            public int getMatchedPrice(int i, int i2) {
                int i3 = 256;
                int i4 = i | 256;
                int bitPrice = 0;
                do {
                    i2 <<= 1;
                    bitPrice += RangeEncoder.getBitPrice(this.probs[(i2 & i3) + i3 + (i4 >>> 8)], (i4 >>> 7) & 1);
                    i4 <<= 1;
                    i3 &= ~(i2 ^ i4);
                } while (i4 < 65536);
                return bitPrice;
            }
        }
    }

    public class LengthEncoder extends LZMACoder.LengthCoder {
        private static final int PRICE_UPDATE_INTERVAL = 32;
        private final int[] counters;
        private final int[][] prices;

        public LengthEncoder(int i, int i2) {
            super();
            int i3 = 1 << i;
            this.counters = new int[i3];
            this.prices = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, i3, Math.max(i2 - 1, 16));
        }

        @Override // org.tukaani.xz.lzma.LZMACoder.LengthCoder
        public void reset() {
            super.reset();
            int i = 0;
            while (true) {
                int[] iArr = this.counters;
                if (i >= iArr.length) {
                    return;
                }
                iArr[i] = 0;
                i++;
            }
        }

        public void encode(int i, int i2) throws IOException {
            int i3 = i - 2;
            if (i3 < 8) {
                LZMAEncoder.this.rc.encodeBit(this.choice, 0, 0);
                LZMAEncoder.this.rc.encodeBitTree(this.low[i2], i3);
            } else {
                LZMAEncoder.this.rc.encodeBit(this.choice, 0, 1);
                int i4 = i - 10;
                if (i4 < 8) {
                    LZMAEncoder.this.rc.encodeBit(this.choice, 1, 0);
                    LZMAEncoder.this.rc.encodeBitTree(this.mid[i2], i4);
                } else {
                    LZMAEncoder.this.rc.encodeBit(this.choice, 1, 1);
                    LZMAEncoder.this.rc.encodeBitTree(this.high, i - 18);
                }
            }
            int[] iArr = this.counters;
            iArr[i2] = iArr[i2] - 1;
        }

        public int getPrice(int i, int i2) {
            return this.prices[i2][i - 2];
        }

        public void updatePrices() {
            int i = 0;
            while (true) {
                int[] iArr = this.counters;
                if (i >= iArr.length) {
                    return;
                }
                if (iArr[i] <= 0) {
                    iArr[i] = 32;
                    updatePrices(i);
                }
                i++;
            }
        }

        private void updatePrices(int i) {
            int bitPrice = RangeEncoder.getBitPrice(this.choice[0], 0);
            int i2 = 0;
            while (i2 < 8) {
                this.prices[i][i2] = RangeEncoder.getBitTreePrice(this.low[i], i2) + bitPrice;
                i2++;
            }
            int bitPrice2 = RangeEncoder.getBitPrice(this.choice[0], 1);
            int bitPrice3 = RangeEncoder.getBitPrice(this.choice[1], 0);
            while (i2 < 16) {
                this.prices[i][i2] = bitPrice2 + bitPrice3 + RangeEncoder.getBitTreePrice(this.mid[i], i2 - 8);
                i2++;
            }
            int bitPrice4 = RangeEncoder.getBitPrice(this.choice[1], 1);
            while (true) {
                int[] iArr = this.prices[i];
                if (i2 >= iArr.length) {
                    return;
                }
                iArr[i2] = bitPrice2 + bitPrice4 + RangeEncoder.getBitTreePrice(this.high, i2 - 16);
                i2++;
            }
        }
    }
}
