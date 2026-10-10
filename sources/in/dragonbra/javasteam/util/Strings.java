package in.dragonbra.javasteam.util;

import java.math.BigInteger;

/* JADX INFO: loaded from: classes2.dex */
public class Strings {
    private static final BigInteger TWO_64 = BigInteger.ONE.shiftLeft(64);
    private static final char[] HEX_ARRAY = "0123456789ABCDEF".toCharArray();

    public static boolean isNullOrEmpty(String str) {
        return str == null || str.isEmpty();
    }

    public String asUnsignedDecimalString(long j) {
        BigInteger bigIntegerValueOf = BigInteger.valueOf(j);
        if (bigIntegerValueOf.signum() < 0) {
            bigIntegerValueOf = bigIntegerValueOf.add(TWO_64);
        }
        return bigIntegerValueOf.toString();
    }

    public static String toHex(byte[] bArr) {
        char[] cArr = new char[bArr.length * 2];
        for (int i = 0; i < bArr.length; i++) {
            byte b = bArr[i];
            int i2 = i * 2;
            char[] cArr2 = HEX_ARRAY;
            cArr[i2] = cArr2[(b & 255) >>> 4];
            cArr[i2 + 1] = cArr2[b & 15];
        }
        return new String(cArr);
    }

    public static byte[] decodeHex(String str) {
        int length = str.length();
        byte[] bArr = new byte[length / 2];
        for (int i = 0; i < length; i += 2) {
            bArr[i / 2] = (byte) ((Character.digit(str.charAt(i), 16) << 4) + Character.digit(str.charAt(i + 1), 16));
        }
        return bArr;
    }
}
