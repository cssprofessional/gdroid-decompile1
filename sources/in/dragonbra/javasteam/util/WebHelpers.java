package in.dragonbra.javasteam.util;

import java.nio.charset.StandardCharsets;

/* JADX INFO: loaded from: classes2.dex */
public class WebHelpers {
    private static boolean isUrlSafeChar(char c) {
        return (c >= 'a' && c <= 'z') || (c >= 'A' && c <= 'Z') || ((c >= '0' && c <= '9') || c == '-' || c == '.' || c == '_');
    }

    public static String urlEncode(String str) {
        return urlEncode(str.getBytes(StandardCharsets.UTF_8));
    }

    public static String urlEncode(byte[] bArr) {
        StringBuilder sb = new StringBuilder(bArr.length * 2);
        for (byte b : bArr) {
            char c = (char) b;
            if (isUrlSafeChar(c)) {
                sb.append(c);
            } else if (c == ' ') {
                sb.append('+');
            } else {
                sb.append(String.format("%%%02X", Byte.valueOf(b)));
            }
        }
        return sb.toString();
    }
}
