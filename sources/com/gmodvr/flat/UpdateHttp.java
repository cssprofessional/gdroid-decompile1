package com.gmodvr.flat;

import in.dragonbra.javasteam.protobufs.steamclient.Enums;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.nio.charset.StandardCharsets;
import java.util.Collections;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
final class UpdateHttp {
    private UpdateHttp() {
    }

    public static HttpURLConnection open(String str, Map<String, String> map) throws IOException {
        URL url = new URL(str);
        int i = 0;
        while (i <= 5) {
            requireTrusted(url);
            HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
            httpURLConnection.setConnectTimeout(15000);
            httpURLConnection.setReadTimeout(30000);
            httpURLConnection.setInstanceFollowRedirects(false);
            httpURLConnection.setRequestProperty("User-Agent", "GDroid-Updater/1");
            httpURLConnection.setRequestProperty("Accept-Encoding", "identity");
            for (Map.Entry<String, String> entry : map.entrySet()) {
                httpURLConnection.setRequestProperty(entry.getKey(), entry.getValue());
            }
            try {
                int responseCode = httpURLConnection.getResponseCode();
                if (responseCode != 301 && responseCode != 302 && responseCode != 303 && responseCode != 307 && responseCode != 308) {
                    return httpURLConnection;
                }
                String headerField = httpURLConnection.getHeaderField("Location");
                httpURLConnection.disconnect();
                if (headerField == null) {
                    throw new IOException("GitHub sent an empty redirect.");
                }
                i++;
                url = new URL(url, headerField);
            } catch (IOException e) {
                httpURLConnection.disconnect();
                throw e;
            }
        }
        throw new IOException("Too many GitHub download redirects.");
    }

    public static void requireTrusted(URL url) throws IOException {
        String host = url.getHost();
        if (!"https".equals(url.getProtocol()) || url.getUserInfo() != null || ((url.getPort() != -1 && url.getPort() != 443) || (!"api.github.com".equals(host) && !"github.com".equals(host) && !"release-assets.githubusercontent.com".equals(host) && !"objects.githubusercontent.com".equals(host)))) {
            throw new IOException("Refusing an untrusted update download address.");
        }
    }

    public static byte[] read(String str, int i) throws IOException {
        HttpURLConnection httpURLConnectionOpen = open(str, Collections.singletonMap("Accept", "application/vnd.github+json"));
        try {
            requireOk(httpURLConnectionOpen);
            if (httpURLConnectionOpen.getContentLengthLong() > i) {
                throw new IOException("Update metadata is too large.");
            }
            InputStream inputStream = httpURLConnectionOpen.getInputStream();
            try {
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                try {
                    byte[] bArr = new byte[Enums.EProtoAppType.k_EAppTypeMusicAlbum_VALUE];
                    while (true) {
                        int i2 = inputStream.read(bArr);
                        if (i2 != -1) {
                            if (byteArrayOutputStream.size() + i2 > i) {
                                throw new IOException("Update metadata is too large.");
                            }
                            byteArrayOutputStream.write(bArr, 0, i2);
                        } else {
                            byte[] byteArray = byteArrayOutputStream.toByteArray();
                            byteArrayOutputStream.close();
                            inputStream.close();
                            return byteArray;
                        }
                    }
                } finally {
                }
            } finally {
            }
        } finally {
            httpURLConnectionOpen.disconnect();
        }
    }

    public static String text(byte[] bArr) {
        return new String(bArr, StandardCharsets.UTF_8);
    }

    public static void requireOk(HttpURLConnection httpURLConnection) throws IOException {
        int responseCode = httpURLConnection.getResponseCode();
        if (responseCode == 403 || responseCode == 429) {
            throw new IOException("GitHub is limiting update requests. Try again later.");
        }
        if (responseCode == 404) {
            throw new IOException("No published update was found on GitHub.");
        }
        if (responseCode == 200) {
            return;
        }
        throw new IOException("GitHub returned HTTP " + responseCode + ". Try again later.");
    }
}
