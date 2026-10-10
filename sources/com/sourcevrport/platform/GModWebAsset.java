package com.sourcevrport.platform;

import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
final class GModWebAsset {
    private GModWebAsset() {
    }

    public static String contentType(String str, byte[] bArr) {
        if (bArr == null) {
            return str;
        }
        if (!"application/xml".equals(str) && !"text/xml".equals(str) && !"text/plain".equals(str) && !"application/octet-stream".equals(str)) {
            return str;
        }
        String str2 = new String(bArr, 0, Math.min(bArr.length, 512), StandardCharsets.UTF_8);
        if (str2.startsWith("\ufeff")) {
            str2 = str2.substring(1);
        }
        String lowerCase = str2.trim().toLowerCase(Locale.ROOT);
        return (startsWithTag(lowerCase, "<!doctype html") || startsWithTag(lowerCase, "<html")) ? "text/html" : str;
    }

    private static boolean startsWithTag(String str, String str2) {
        return str.startsWith(str2) && str.length() > str2.length() && (str.charAt(str2.length()) == '>' || Character.isWhitespace(str.charAt(str2.length())));
    }

    public static byte[] rewriteURLs(String str, byte[] bArr, String str2) {
        if (bArr == null || !("text/html".equals(str) || "application/xhtml+xml".equals(str) || "application/javascript".equals(str) || "text/javascript".equals(str) || "text/css".equals(str))) {
            return bArr;
        }
        Charset charset = StandardCharsets.UTF_8;
        String str3 = new String(bArr, charset);
        return !str3.contains("asset://") ? bArr : str3.replace("asset://", str2).getBytes(charset);
    }
}
