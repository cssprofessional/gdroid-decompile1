package org.tukaani.xz.lzma;

import org.tukaani.xz.ArrayCache;
import org.tukaani.xz.LZMA2Options;
import org.tukaani.xz.lz.LZEncoder;
import org.tukaani.xz.lz.Matches;
import org.tukaani.xz.rangecoder.RangeEncoder;

/* JADX INFO: loaded from: classes3.dex */
final class LZMAEncoderNormal extends LZMAEncoder {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final int EXTRA_SIZE_AFTER = 4096;
    private static final int EXTRA_SIZE_BEFORE = 4096;
    private static final int OPTS = 4096;
    private Matches matches;
    private final State nextState;
    private int optCur;
    private int optEnd;
    private final Optimum[] opts;
    private final int[] repLens;

    public static int getMemoryUsage(int i, int i2, int i3) {
        return LZEncoder.getMemoryUsage(i, Math.max(i2, 4096), 4096, LZMA2Options.NICE_LEN_MAX, i3) + 256;
    }

    public LZMAEncoderNormal(RangeEncoder rangeEncoder, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, ArrayCache arrayCache) {
        super(rangeEncoder, LZEncoder.getInstance(i4, Math.max(i5, 4096), 4096, i6, LZMA2Options.NICE_LEN_MAX, i7, i8, arrayCache), i, i2, i3, i4, i6);
        this.opts = new Optimum[4096];
        this.optCur = 0;
        this.optEnd = 0;
        this.repLens = new int[4];
        this.nextState = new State();
        for (int i9 = 0; i9 < 4096; i9++) {
            this.opts[i9] = new Optimum();
        }
    }

    @Override // org.tukaani.xz.lzma.LZMAEncoder, org.tukaani.xz.lzma.LZMACoder
    public void reset() {
        this.optCur = 0;
        this.optEnd = 0;
        super.reset();
    }

    private int convertOpts() {
        int i = this.optCur;
        this.optEnd = i;
        int i2 = this.opts[i].optPrev;
        while (true) {
            Optimum[] optimumArr = this.opts;
            int i3 = this.optCur;
            Optimum optimum = optimumArr[i3];
            if (optimum.prev1IsLiteral) {
                Optimum optimum2 = optimumArr[i2];
                optimum2.optPrev = i3;
                optimum2.backPrev = -1;
                int i4 = i2 - 1;
                this.optCur = i2;
                if (optimum.hasPrev2) {
                    Optimum optimum3 = optimumArr[i4];
                    optimum3.optPrev = i2;
                    optimum3.backPrev = optimum.backPrev2;
                    this.optCur = i4;
                    i2 = optimum.optPrev2;
                } else {
                    i2 = i4;
                }
            }
            Optimum optimum4 = optimumArr[i2];
            int i5 = optimum4.optPrev;
            optimum4.optPrev = this.optCur;
            this.optCur = i2;
            if (i2 <= 0) {
                int i6 = optimumArr[0].optPrev;
                this.optCur = i6;
                this.back = optimumArr[i6].backPrev;
                return i6;
            }
            i2 = i5;
        }
    }

    @Override // org.tukaani.xz.lzma.LZMAEncoder
    public int getNextSymbol() {
        int i;
        int i2 = this.optCur;
        if (i2 < this.optEnd) {
            Optimum[] optimumArr = this.opts;
            int i3 = optimumArr[i2].optPrev;
            int i4 = i3 - i2;
            this.optCur = i3;
            this.back = optimumArr[i3].backPrev;
            return i4;
        }
        this.optCur = 0;
        this.optEnd = 0;
        this.back = -1;
        if (this.readAhead == -1) {
            this.matches = getMatches();
        }
        int iMin = Math.min(this.lz.getAvail(), LZMA2Options.NICE_LEN_MAX);
        if (iMin < 2) {
            return 1;
        }
        int i5 = 0;
        for (int i6 = 0; i6 < 4; i6++) {
            this.repLens[i6] = this.lz.getMatchLen(this.reps[i6], iMin);
            int[] iArr = this.repLens;
            int i7 = iArr[i6];
            if (i7 < 2) {
                iArr[i6] = 0;
            } else if (i7 > iArr[i5]) {
                i5 = i6;
            }
        }
        int i8 = this.repLens[i5];
        int i9 = this.niceLen;
        if (i8 >= i9) {
            this.back = i5;
            skip(i8 - 1);
            return this.repLens[i5];
        }
        Matches matches = this.matches;
        int i10 = matches.count;
        if (i10 > 0) {
            i = matches.len[i10 - 1];
            int i11 = matches.dist[i10 - 1];
            if (i >= i9) {
                this.back = i11 + 4;
                skip(i - 1);
                return i;
            }
        } else {
            i = 0;
        }
        int i12 = this.lz.getByte(0);
        int i13 = this.lz.getByte(this.reps[0] + 1);
        if (i < 2 && i12 != i13 && this.repLens[i5] < 2) {
            return 1;
        }
        int pos = this.lz.getPos();
        int i14 = pos & this.posMask;
        this.opts[1].set1(this.literalEncoder.getPrice(i12, i13, this.lz.getByte(1), pos, this.state), 0, -1);
        int anyMatchPrice = getAnyMatchPrice(this.state, i14);
        int anyRepPrice = getAnyRepPrice(anyMatchPrice, this.state);
        if (i13 == i12) {
            int shortRepPrice = getShortRepPrice(anyRepPrice, this.state, i14);
            Optimum optimum = this.opts[1];
            if (shortRepPrice < optimum.price) {
                optimum.set1(shortRepPrice, 0, 0);
            }
        }
        int iMax = Math.max(i, this.repLens[i5]);
        this.optEnd = iMax;
        if (iMax < 2) {
            this.back = this.opts[1].backPrev;
            return 1;
        }
        updatePrices();
        this.opts[0].state.set(this.state);
        System.arraycopy(this.reps, 0, this.opts[0].reps, 0, 4);
        for (int i15 = this.optEnd; i15 >= 2; i15--) {
            this.opts[i15].reset();
        }
        int i16 = 0;
        for (int i17 = 4; i16 < i17; i17 = 4) {
            int i18 = this.repLens[i16];
            if (i18 >= 2) {
                int longRepPrice = getLongRepPrice(anyRepPrice, i16, this.state, i14);
                do {
                    int price = this.repLenEncoder.getPrice(i18, i14) + longRepPrice;
                    Optimum optimum2 = this.opts[i18];
                    if (price < optimum2.price) {
                        optimum2.set1(price, 0, i16);
                    }
                    i18--;
                } while (i18 >= 2);
            }
            i16++;
        }
        int iMax2 = Math.max(this.repLens[0] + 1, 2);
        if (iMax2 <= i) {
            int normalMatchPrice = getNormalMatchPrice(anyMatchPrice, this.state);
            int i19 = 0;
            while (iMax2 > this.matches.len[i19]) {
                i19++;
            }
            while (true) {
                int i20 = this.matches.dist[i19];
                int matchAndLenPrice = getMatchAndLenPrice(normalMatchPrice, i20, iMax2, i14);
                Optimum optimum3 = this.opts[iMax2];
                if (matchAndLenPrice < optimum3.price) {
                    optimum3.set1(matchAndLenPrice, 0, i20 + 4);
                }
                Matches matches2 = this.matches;
                if (iMax2 == matches2.len[i19] && (i19 = i19 + 1) == matches2.count) {
                    break;
                }
                iMax2++;
            }
        }
        int iMin2 = Math.min(this.lz.getAvail(), 4095);
        while (true) {
            int i21 = this.optCur + 1;
            this.optCur = i21;
            if (i21 >= this.optEnd) {
                break;
            }
            Matches matches3 = getMatches();
            this.matches = matches3;
            int i22 = matches3.count;
            if (i22 > 0 && matches3.len[i22 - 1] >= this.niceLen) {
                break;
            }
            int i23 = iMin2 - 1;
            int i24 = pos + 1;
            int i25 = i24 & this.posMask;
            updateOptStateAndReps();
            Optimum optimum4 = this.opts[this.optCur];
            int anyMatchPrice2 = optimum4.price + getAnyMatchPrice(optimum4.state, i25);
            int anyRepPrice2 = getAnyRepPrice(anyMatchPrice2, this.opts[this.optCur].state);
            calc1BytePrices(i24, i25, i23, anyRepPrice2);
            if (i23 >= 2) {
                int iCalcLongRepPrices = calcLongRepPrices(i24, i25, i23, anyRepPrice2);
                if (this.matches.count > 0) {
                    calcNormalMatchPrices(i24, i25, i23, anyMatchPrice2, iCalcLongRepPrices);
                }
            }
            iMin2 = i23;
            pos = i24;
        }
        return convertOpts();
    }

    private void updateOptStateAndReps() {
        int i;
        Optimum[] optimumArr = this.opts;
        Optimum optimum = optimumArr[this.optCur];
        int i2 = optimum.optPrev;
        if (optimum.prev1IsLiteral) {
            i2--;
            if (optimum.hasPrev2) {
                optimum.state.set(optimumArr[optimum.optPrev2].state);
                Optimum optimum2 = this.opts[this.optCur];
                if (optimum2.backPrev2 < 4) {
                    optimum2.state.updateLongRep();
                } else {
                    optimum2.state.updateMatch();
                }
            } else {
                optimum.state.set(optimumArr[i2].state);
            }
            this.opts[this.optCur].state.updateLiteral();
        } else {
            optimum.state.set(optimumArr[i2].state);
        }
        int i3 = this.optCur;
        if (i2 == i3 - 1) {
            Optimum optimum3 = this.opts[i3];
            if (optimum3.backPrev == 0) {
                optimum3.state.updateShortRep();
            } else {
                optimum3.state.updateLiteral();
            }
            Optimum[] optimumArr2 = this.opts;
            System.arraycopy(optimumArr2[i2].reps, 0, optimumArr2[this.optCur].reps, 0, 4);
            return;
        }
        Optimum optimum4 = this.opts[i3];
        if (optimum4.prev1IsLiteral && optimum4.hasPrev2) {
            i2 = optimum4.optPrev2;
            i = optimum4.backPrev2;
            optimum4.state.updateLongRep();
        } else {
            i = optimum4.backPrev;
            if (i < 4) {
                optimum4.state.updateLongRep();
            } else {
                optimum4.state.updateMatch();
            }
        }
        int i4 = 1;
        if (i < 4) {
            Optimum[] optimumArr3 = this.opts;
            optimumArr3[this.optCur].reps[0] = optimumArr3[i2].reps[i];
            while (i4 <= i) {
                Optimum[] optimumArr4 = this.opts;
                optimumArr4[this.optCur].reps[i4] = optimumArr4[i2].reps[i4 - 1];
                i4++;
            }
            while (i4 < 4) {
                Optimum[] optimumArr5 = this.opts;
                optimumArr5[this.optCur].reps[i4] = optimumArr5[i2].reps[i4];
                i4++;
            }
            return;
        }
        Optimum[] optimumArr6 = this.opts;
        int[] iArr = optimumArr6[this.optCur].reps;
        iArr[0] = i - 4;
        System.arraycopy(optimumArr6[i2].reps, 0, iArr, 1, 3);
    }

    private void calc1BytePrices(int i, int i2, int i3, int i4) {
        boolean z;
        int i5 = this.lz.getByte(0);
        int i6 = this.lz.getByte(this.opts[this.optCur].reps[0] + 1);
        int price = this.opts[this.optCur].price + this.literalEncoder.getPrice(i5, i6, this.lz.getByte(1), i, this.opts[this.optCur].state);
        Optimum[] optimumArr = this.opts;
        int i7 = this.optCur;
        if (price < optimumArr[i7 + 1].price) {
            optimumArr[i7 + 1].set1(price, i7, -1);
            z = true;
        } else {
            z = false;
        }
        if (i6 == i5) {
            Optimum[] optimumArr2 = this.opts;
            int i8 = this.optCur;
            if (optimumArr2[i8 + 1].optPrev == i8 || optimumArr2[i8 + 1].backPrev != 0) {
                int shortRepPrice = getShortRepPrice(i4, optimumArr2[i8].state, i2);
                Optimum[] optimumArr3 = this.opts;
                int i9 = this.optCur;
                if (shortRepPrice <= optimumArr3[i9 + 1].price) {
                    optimumArr3[i9 + 1].set1(shortRepPrice, i9, 0);
                    z = true;
                }
            }
        }
        if (z || i6 == i5 || i3 <= 2) {
            return;
        }
        int matchLen = this.lz.getMatchLen(1, this.opts[this.optCur].reps[0], Math.min(this.niceLen, i3 - 1));
        if (matchLen >= 2) {
            this.nextState.set(this.opts[this.optCur].state);
            this.nextState.updateLiteral();
            int longRepAndLenPrice = price + getLongRepAndLenPrice(0, matchLen, this.nextState, (i + 1) & this.posMask);
            int i10 = this.optCur + 1 + matchLen;
            while (true) {
                int i11 = this.optEnd;
                if (i11 >= i10) {
                    break;
                }
                Optimum[] optimumArr4 = this.opts;
                int i12 = i11 + 1;
                this.optEnd = i12;
                optimumArr4[i12].reset();
            }
            Optimum optimum = this.opts[i10];
            if (longRepAndLenPrice < optimum.price) {
                optimum.set2(longRepAndLenPrice, this.optCur, 0);
            }
        }
    }

    private int calcLongRepPrices(int i, int i2, int i3, int i4) {
        int i5;
        int iMin = Math.min(i3, this.niceLen);
        int i6 = 2;
        for (int i7 = 0; i7 < 4; i7++) {
            int matchLen = this.lz.getMatchLen(this.opts[this.optCur].reps[i7], iMin);
            if (matchLen >= 2) {
                while (true) {
                    int i8 = this.optEnd;
                    i5 = this.optCur;
                    if (i8 >= i5 + matchLen) {
                        break;
                    }
                    Optimum[] optimumArr = this.opts;
                    int i9 = i8 + 1;
                    this.optEnd = i9;
                    optimumArr[i9].reset();
                }
                int longRepPrice = getLongRepPrice(i4, i7, this.opts[i5].state, i2);
                for (int i10 = matchLen; i10 >= 2; i10--) {
                    int price = this.repLenEncoder.getPrice(i10, i2) + longRepPrice;
                    Optimum[] optimumArr2 = this.opts;
                    int i11 = this.optCur;
                    if (price < optimumArr2[i11 + i10].price) {
                        optimumArr2[i11 + i10].set1(price, i11, i7);
                    }
                }
                if (i7 == 0) {
                    i6 = matchLen + 1;
                }
                int i12 = i6;
                int i13 = (i3 - matchLen) - 1;
                if (i13 >= 2) {
                    int i14 = this.niceLen;
                    if (i13 > i14) {
                        i13 = i14;
                    }
                    int matchLen2 = this.lz.getMatchLen(matchLen + 1, this.opts[this.optCur].reps[i7], i13);
                    if (matchLen2 >= 2) {
                        int price2 = longRepPrice + this.repLenEncoder.getPrice(matchLen, i2);
                        this.nextState.set(this.opts[this.optCur].state);
                        this.nextState.updateLongRep();
                        int i15 = i + matchLen;
                        int price3 = price2 + this.literalEncoder.getPrice(this.lz.getByte(matchLen, 0), this.lz.getByte(0), this.lz.getByte(matchLen, 1), i15, this.nextState);
                        this.nextState.updateLiteral();
                        int longRepAndLenPrice = price3 + getLongRepAndLenPrice(0, matchLen2, this.nextState, (i15 + 1) & this.posMask);
                        int i16 = this.optCur + matchLen + 1 + matchLen2;
                        while (true) {
                            int i17 = this.optEnd;
                            if (i17 >= i16) {
                                break;
                            }
                            Optimum[] optimumArr3 = this.opts;
                            int i18 = i17 + 1;
                            this.optEnd = i18;
                            optimumArr3[i18].reset();
                        }
                        Optimum optimum = this.opts[i16];
                        if (longRepAndLenPrice < optimum.price) {
                            optimum.set3(longRepAndLenPrice, this.optCur, i7, matchLen, 0);
                        }
                    }
                }
                i6 = i12;
            }
        }
        return i6;
    }

    private void calcNormalMatchPrices(int i, int i2, int i3, int i4, int i5) {
        int i6;
        Matches matches;
        int[] iArr;
        int i7;
        int i8 = i5;
        Matches matches2 = this.matches;
        if (matches2.len[matches2.count - 1] > i3) {
            matches2.count = 0;
            while (true) {
                matches = this.matches;
                iArr = matches.len;
                i7 = matches.count;
                if (iArr[i7] >= i3) {
                    break;
                } else {
                    matches.count = i7 + 1;
                }
            }
            matches.count = i7 + 1;
            iArr[i7] = i3;
        }
        Matches matches3 = this.matches;
        if (matches3.len[matches3.count - 1] < i8) {
            return;
        }
        while (true) {
            int i9 = this.optEnd;
            i6 = this.optCur;
            Matches matches4 = this.matches;
            if (i9 >= matches4.len[matches4.count - 1] + i6) {
                break;
            }
            Optimum[] optimumArr = this.opts;
            int i10 = i9 + 1;
            this.optEnd = i10;
            optimumArr[i10].reset();
        }
        int normalMatchPrice = getNormalMatchPrice(i4, this.opts[i6].state);
        int i11 = 0;
        while (i8 > this.matches.len[i11]) {
            i11++;
        }
        while (true) {
            int i12 = this.matches.dist[i11];
            int matchAndLenPrice = getMatchAndLenPrice(normalMatchPrice, i12, i8, i2);
            Optimum[] optimumArr2 = this.opts;
            int i13 = this.optCur;
            if (matchAndLenPrice < optimumArr2[i13 + i8].price) {
                optimumArr2[i13 + i8].set1(matchAndLenPrice, i13, i12 + 4);
            }
            if (i8 == this.matches.len[i11]) {
                int i14 = (i3 - i8) - 1;
                if (i14 >= 2) {
                    int i15 = this.niceLen;
                    if (i14 > i15) {
                        i14 = i15;
                    }
                    int matchLen = this.lz.getMatchLen(i8 + 1, i12, i14);
                    if (matchLen >= 2) {
                        this.nextState.set(this.opts[this.optCur].state);
                        this.nextState.updateMatch();
                        int i16 = i + i8;
                        int price = matchAndLenPrice + this.literalEncoder.getPrice(this.lz.getByte(i8, 0), this.lz.getByte(0), this.lz.getByte(i8, 1), i16, this.nextState);
                        this.nextState.updateLiteral();
                        int longRepAndLenPrice = price + getLongRepAndLenPrice(0, matchLen, this.nextState, (i16 + 1) & this.posMask);
                        int i17 = this.optCur + i8 + 1 + matchLen;
                        while (true) {
                            int i18 = this.optEnd;
                            if (i18 >= i17) {
                                break;
                            }
                            Optimum[] optimumArr3 = this.opts;
                            int i19 = i18 + 1;
                            this.optEnd = i19;
                            optimumArr3[i19].reset();
                        }
                        Optimum optimum = this.opts[i17];
                        if (longRepAndLenPrice < optimum.price) {
                            optimum.set3(longRepAndLenPrice, this.optCur, i12 + 4, i8, 0);
                        }
                    }
                }
                i11++;
                if (i11 == this.matches.count) {
                    return;
                }
            }
            i8++;
        }
    }
}
