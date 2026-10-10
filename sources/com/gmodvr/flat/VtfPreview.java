package com.gmodvr.flat;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import org.bouncycastle.crypto.hpke.HPKE;

/* JADX INFO: loaded from: classes.dex */
final class VtfPreview {
    final int height;
    final int[] pixels;
    final int width;

    private static int rgb565(int i) {
        int i2 = (i >> 11) & 31;
        int i3 = (i >> 5) & 63;
        int i4 = i & 31;
        return (i4 >> 2) | (((i2 >> 2) | (i2 << 3)) << 16) | (((i3 >> 4) | (i3 << 2)) << 8) | (i4 << 3);
    }

    private VtfPreview(int i, int i2) {
        this.width = i;
        this.height = i2;
        this.pixels = new int[i * i2];
    }

    public static VtfPreview decode(byte[] bArr) throws IOException {
        int iImageBytes;
        boolean z;
        int i;
        int i2;
        VtfPreview vtfPreview;
        int i3;
        int i4;
        VtfPreview vtfPreview2;
        int i5;
        int i6;
        byte[] bArr2 = bArr;
        if (bArr2.length >= 64 && bArr2[0] == 86) {
            int i7 = 1;
            if (bArr2[1] == 84 && bArr2[2] == 70 && bArr2[3] == 0) {
                ByteBuffer byteBufferOrder = ByteBuffer.wrap(bArr).order(ByteOrder.LITTLE_ENDIAN);
                int i8 = byteBufferOrder.getInt(4);
                int i9 = 8;
                int i10 = byteBufferOrder.getInt(8);
                int i11 = byteBufferOrder.getInt(12);
                int i12 = byteBufferOrder.getShort(16) & HPKE.aead_EXPORT_ONLY;
                int i13 = byteBufferOrder.getShort(18) & HPKE.aead_EXPORT_ONLY;
                int i14 = byteBufferOrder.getShort(24) & HPKE.aead_EXPORT_ONLY;
                int i15 = byteBufferOrder.getInt(52);
                byte b = 255;
                int i16 = bArr2[56] & 255;
                char c = 7;
                if (i8 != 7 || i10 < 1 || i10 > 5 || i11 < 64 || i11 > bArr2.length || i12 < 1 || i13 < 1 || i12 > 1024 || i13 > 1024 || i14 != 1 || i16 < 1 || i16 > 11) {
                    throw new IOException("Unsupported VTF preview.");
                }
                if (i10 < 3 || i11 < 80) {
                    iImageBytes = i11;
                    z = false;
                } else {
                    int i17 = byteBufferOrder.getInt(68);
                    if (i17 < 0 || i17 > (i11 - 80) / 8) {
                        throw new IOException("Invalid VTF resources.");
                    }
                    iImageBytes = i11;
                    z = false;
                    for (int i18 = 0; i18 < i17; i18++) {
                        int i19 = i18 * 8;
                        if ((byteBufferOrder.getInt(i19 + 80) & 16777215) == 48) {
                            iImageBytes = byteBufferOrder.getInt(i19 + 84);
                            z = true;
                        }
                    }
                }
                if (!z) {
                    int i20 = bArr2[61] & 255;
                    int i21 = bArr2[62] & 255;
                    if (i20 > 0 && i21 > 0) {
                        iImageBytes += imageBytes(i20, i21, byteBufferOrder.getInt(57));
                    }
                }
                int iImageBytes2 = iImageBytes;
                for (int i22 = i16 - 1; i22 > 0; i22--) {
                    iImageBytes2 += imageBytes(Math.max(1, i12 >> i22), Math.max(1, i13 >> i22), i15);
                }
                int iImageBytes3 = imageBytes(i12, i13, i15);
                if (iImageBytes2 < i11 || iImageBytes2 > bArr2.length - iImageBytes3) {
                    throw new IOException("Truncated VTF preview.");
                }
                VtfPreview vtfPreview3 = new VtfPreview(i12, i13);
                if (i15 != 0 && i15 != 12) {
                    int i23 = 0;
                    while (i23 < i13) {
                        int i24 = 0;
                        while (i24 < i12) {
                            int[] iArr = new int[i9];
                            long j = 0;
                            if (i15 == 15) {
                                iArr[0] = bArr2[iImageBytes2] & b;
                                iArr[i7] = bArr2[iImageBytes2 + 1] & b;
                                int i25 = 0;
                                while (i25 < 6) {
                                    j |= ((long) (bArr2[(iImageBytes2 + 2) + i25] & b)) << (i25 * 8);
                                    i25++;
                                    iImageBytes2 = iImageBytes2;
                                    b = 255;
                                }
                                i = iImageBytes2;
                                char c2 = 0;
                                if (iArr[0] > iArr[i7]) {
                                    int i26 = i7;
                                    while (i26 <= 6) {
                                        int i27 = i26 + 1;
                                        iArr[i27] = (((7 - i26) * iArr[c2]) + (i26 * iArr[i7])) / 7;
                                        i26 = i27;
                                        c2 = 0;
                                    }
                                } else {
                                    int i28 = i7;
                                    while (i28 <= 4) {
                                        int i29 = i28 + 1;
                                        iArr[i29] = (((5 - i28) * iArr[0]) + (i28 * iArr[i7])) / 5;
                                        i28 = i29;
                                    }
                                    iArr[6] = 0;
                                    iArr[c] = 255;
                                }
                                i2 = i + 8;
                            } else {
                                i = iImageBytes2;
                                i2 = i;
                            }
                            int i30 = byteBufferOrder.getShort(i2) & HPKE.aead_EXPORT_ONLY;
                            int i31 = byteBufferOrder.getShort(i2 + 2) & HPKE.aead_EXPORT_ONLY;
                            int[] iArr2 = new int[4];
                            iArr2[0] = rgb565(i30);
                            int iRgb565 = rgb565(i31);
                            iArr2[i7] = iRgb565;
                            iArr2[2] = 0;
                            iArr2[3] = 0;
                            if (i30 > i31 || i15 == 15) {
                                vtfPreview = vtfPreview3;
                                iArr2[2] = mix(iArr2[0], iRgb565, 2, 1, 3);
                                iArr2[3] = mix(iArr2[0], iArr2[1], 1, 2, 3);
                            } else {
                                iArr2[2] = mix(iArr2[0], iRgb565, 1, 1, 2);
                                vtfPreview = vtfPreview3;
                            }
                            int i32 = byteBufferOrder.getInt(i2 + 4);
                            int i33 = 0;
                            while (true) {
                                if (i33 >= 4) {
                                    break;
                                }
                                int i34 = 0;
                                for (int i35 = 4; i34 < i35; i35 = 4) {
                                    int i36 = (i33 * 4) + i34;
                                    int i37 = (i32 >>> (i36 * 2)) & 3;
                                    if (i15 == 15) {
                                        i3 = i32;
                                        i4 = iArr[((int) (j >>> (i36 * 3))) & 7];
                                    } else {
                                        i3 = i32;
                                        i4 = (i30 > i31 || i37 != 3) ? 255 : 0;
                                    }
                                    if (i24 + i34 >= i12 || (i6 = i23 + i33) >= i13) {
                                        vtfPreview2 = vtfPreview;
                                        i5 = i31;
                                    } else {
                                        vtfPreview2 = vtfPreview;
                                        i5 = i31;
                                        vtfPreview2.pixels[(i6 * i12) + i24 + i34] = (i4 << 24) | iArr2[i37];
                                    }
                                    i34++;
                                    i31 = i5;
                                    vtfPreview = vtfPreview2;
                                    i32 = i3;
                                }
                                i33++;
                                vtfPreview = vtfPreview;
                                i32 = i32;
                            }
                            VtfPreview vtfPreview4 = vtfPreview;
                            iImageBytes2 = i + (i15 == 15 ? 16 : 8);
                            i24 += 4;
                            bArr2 = bArr;
                            vtfPreview3 = vtfPreview4;
                            b = 255;
                            i7 = 1;
                            i9 = 8;
                            c = 7;
                        }
                        i23 += 4;
                        bArr2 = bArr;
                        b = 255;
                        i7 = 1;
                        i9 = 8;
                        c = 7;
                    }
                    return vtfPreview3;
                }
                int i38 = 0;
                while (true) {
                    int[] iArr3 = vtfPreview3.pixels;
                    if (i38 >= iArr3.length) {
                        return vtfPreview3;
                    }
                    int i39 = (i38 * 4) + iImageBytes2;
                    iArr3[i38] = ((bArr[i39 + 3] & 255) << 24) | ((bArr[(i15 == 0 ? 0 : 2) + i39] & 255) << 16) | ((bArr[i39 + 1] & 255) << 8) | (bArr[(i15 == 0 ? 2 : 0) + i39] & 255);
                    i38++;
                }
            }
        }
        throw new IOException("Invalid VTF preview.");
    }

    private static int imageBytes(int i, int i2, int i3) throws IOException {
        if (i3 == 0 || i3 == 12) {
            return i * i2 * 4;
        }
        if (i3 == 13 || i3 == 15) {
            return ((i + 3) / 4) * ((i2 + 3) / 4) * (i3 == 15 ? 16 : 8);
        }
        throw new IOException("Unsupported VTF pixel format " + i3 + ".");
    }

    private static int mix(int i, int i2, int i3, int i4, int i5) {
        int[] iArr = {0, 8, 16};
        int i6 = 0;
        for (int i7 = 0; i7 < 3; i7++) {
            int i8 = iArr[i7];
            i6 |= (((((i >> i8) & 255) * i3) + (((i2 >> i8) & 255) * i4)) / i5) << i8;
        }
        return i6;
    }
}
