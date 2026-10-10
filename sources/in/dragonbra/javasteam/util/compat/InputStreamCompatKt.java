package in.dragonbra.javasteam.util.compat;

import in.dragonbra.javasteam.protobufs.steamclient.Enums;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Arrays;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: InputStreamCompat.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class InputStreamCompatKt {
    public static final int readNBytesCompat(InputStream inputStream, byte[] b, int i, int i2) throws IOException {
        Intrinsics.checkNotNullParameter(inputStream, "<this>");
        Intrinsics.checkNotNullParameter(b, "b");
        InputStreamCompatKt$$ExternalSyntheticBackport0.m(i, i2, b.length);
        int i3 = 0;
        while (i3 < i2) {
            int i4 = inputStream.read(b, i + i3, i2 - i3);
            if (i4 < 0) {
                break;
            }
            i3 += i4;
        }
        return i3;
    }

    public static final byte[] readNBytesCompat(InputStream inputStream, int i) throws IOException {
        int i2;
        Intrinsics.checkNotNullParameter(inputStream, "<this>");
        if (i < 0) {
            throw new IllegalArgumentException("len < 0");
        }
        byte[] bArr = null;
        ArrayList<byte[]> arrayList = null;
        int i3 = 0;
        do {
            int iMin = Math.min(i, Enums.EProtoAppType.k_EAppTypeMusicAlbum_VALUE);
            byte[] bArr2 = new byte[iMin];
            int i4 = 0;
            while (true) {
                i2 = inputStream.read(bArr2, i4, Math.min(iMin - i4, i));
                if (i2 <= 0) {
                    break;
                }
                i4 += i2;
                i -= i2;
            }
            if (i4 > 0) {
                if (2147483639 - i3 < i4) {
                    throw new OutOfMemoryError("Required array size too large");
                }
                i3 += i4;
                if (bArr == null) {
                    bArr = bArr2;
                } else {
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                        arrayList.add(bArr);
                    }
                    arrayList.add(bArr2);
                }
            }
            if (i2 < 0) {
                break;
            }
        } while (i > 0);
        if (arrayList == null) {
            if (bArr == null) {
                return new byte[0];
            }
            if (bArr.length == i3) {
                return bArr;
            }
            byte[] bArrCopyOf = Arrays.copyOf(bArr, i3);
            Intrinsics.checkNotNullExpressionValue(bArrCopyOf, "copyOf(...)");
            return bArrCopyOf;
        }
        byte[] bArr3 = new byte[i3];
        int i5 = 0;
        for (byte[] bArr4 : arrayList) {
            int iMin2 = Math.min(bArr4.length, i3);
            System.arraycopy(bArr4, 0, bArr3, i5, iMin2);
            i5 += iMin2;
            i3 -= iMin2;
        }
        return bArr3;
    }
}
