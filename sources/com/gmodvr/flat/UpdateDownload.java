package com.gmodvr.flat;

import com.gmodvr.flat.UpdateRelease;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.net.HttpURLConnection;
import java.net.ProtocolException;
import java.net.SocketException;
import java.net.SocketTimeoutException;
import java.net.UnknownHostException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Collections;
import java.util.Locale;
import java.util.Map;
import javax.net.ssl.SSLException;

/* JADX INFO: loaded from: classes.dex */
final class UpdateDownload {
    static final long HEADROOM = 67108864;
    static final int MAX_STALLED_ATTEMPTS = 5;

    public interface Cancellation {
        boolean canceled();
    }

    public interface ConnectionFactory {
        HttpURLConnection open(String str, Map<String, String> map) throws IOException;
    }

    public interface Progress {
        void update(long j, boolean z);
    }

    public interface Sleeper {
        void sleep(long j) throws InterruptedException;
    }

    public static final class Truncated extends IOException {
        public Truncated() {
            super("Download interrupted. Resume to continue.");
        }
    }

    public static boolean retryable(IOException iOException) {
        return (iOException instanceof Truncated) || (iOException instanceof SocketException) || (iOException instanceof SocketTimeoutException) || (iOException instanceof UnknownHostException) || (iOException instanceof ProtocolException) || (iOException instanceof EOFException) || (iOException instanceof SSLException);
    }

    public static File downloadWithRetries(File file, UpdateRelease.Candidate candidate, ConnectionFactory connectionFactory, Cancellation cancellation, Progress progress, Sleeper sleeper) throws IOException {
        int i = 0;
        while (true) {
            long length = part(file, candidate).length();
            try {
                return download(file, candidate, connectionFactory, cancellation, progress);
            } catch (IOException e) {
                if (cancellation.canceled() || !retryable(e)) {
                    throw e;
                }
                i = part(file, candidate).length() > length ? 0 : i + 1;
                if (i >= 5) {
                    throw e;
                }
                long jMin = Math.min(30000L, 2000 << i);
                for (long j = 0; j < jMin; j += 250) {
                    try {
                        checkCanceled(cancellation);
                        sleeper.sleep(250L);
                    } catch (InterruptedException unused) {
                        Thread.currentThread().interrupt();
                        throw e;
                    }
                }
            }
        }
    }

    public static File part(File file, UpdateRelease.Candidate candidate) {
        return new File(file, candidate.sha256 + ".part");
    }

    public static File apk(File file, UpdateRelease.Candidate candidate) {
        return new File(file, candidate.sha256 + ".apk");
    }

    public static File download(File file, UpdateRelease.Candidate candidate, ConnectionFactory connectionFactory, Cancellation cancellation, Progress progress) throws IOException {
        Map<String, String> mapSingletonMap;
        if (!file.isDirectory() && !file.mkdirs()) {
            throw new IOException("Cannot create update storage.");
        }
        File filePart = part(file, candidate);
        File fileApk = apk(file, candidate);
        if (fileApk.isFile()) {
            if (verify(fileApk, candidate, cancellation)) {
                return fileApk;
            }
            remove(fileApk);
        }
        if (filePart.length() > candidate.size) {
            remove(filePart);
        }
        long length = filePart.length();
        long usableSpace = file.getUsableSpace();
        long j = candidate.size;
        if (usableSpace < (j - length) + j + HEADROOM) {
            throw new IOException("Not enough free storage to download and install this update.");
        }
        checkCanceled(cancellation);
        if (length < candidate.size) {
            if (length == 0) {
                mapSingletonMap = Collections.emptyMap();
            } else {
                mapSingletonMap = Collections.singletonMap("Range", "bytes=" + length + "-");
            }
            HttpURLConnection httpURLConnectionOpen = connectionFactory.open(candidate.url, mapSingletonMap);
            try {
                int responseCode = httpURLConnectionOpen.getResponseCode();
                if (responseCode == 206) {
                    requireRange(httpURLConnectionOpen.getHeaderField("Content-Range"), length, candidate.size);
                } else if (responseCode == 200) {
                    length = 0;
                } else {
                    if (responseCode == 416) {
                        remove(filePart);
                    }
                    UpdateHttp.requireOk(httpURLConnectionOpen);
                }
                long contentLengthLong = httpURLConnectionOpen.getContentLengthLong();
                if (contentLengthLong >= 0 && contentLengthLong != candidate.size - length) {
                    throw new IOException("The APK download has an unexpected size.");
                }
                InputStream inputStream = httpURLConnectionOpen.getInputStream();
                try {
                    FileOutputStream fileOutputStream = new FileOutputStream(filePart, length != 0);
                    try {
                        byte[] bArr = new byte[131072];
                        progress.update(length, false);
                        while (true) {
                            int i = inputStream.read(bArr);
                            if (i != -1) {
                                checkCanceled(cancellation);
                                length += (long) i;
                                if (length > candidate.size) {
                                    throw new IOException("The APK download exceeded its published size.");
                                }
                                fileOutputStream.write(bArr, 0, i);
                                progress.update(length, false);
                            } else {
                                fileOutputStream.getFD().sync();
                                fileOutputStream.close();
                                inputStream.close();
                                if (length != candidate.size) {
                                    throw new Truncated();
                                }
                                httpURLConnectionOpen.disconnect();
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
        checkCanceled(cancellation);
        progress.update(candidate.size, true);
        if (!verify(filePart, candidate, cancellation)) {
            remove(filePart);
            throw new IOException("The downloaded APK failed its SHA-256 check. Please download it again.");
        }
        checkCanceled(cancellation);
        if (filePart.renameTo(fileApk)) {
            return fileApk;
        }
        throw new IOException("Cannot finish saving the update.");
    }

    public static void requireRange(String str, long j, long j2) throws IOException {
        if (!("bytes " + j + "-" + (j2 - 1) + "/" + j2).equals(str)) {
            throw new IOException("The server returned the wrong download range.");
        }
    }

    public static boolean verify(File file, UpdateRelease.Candidate candidate, Cancellation cancellation) throws IOException {
        if (file.length() != candidate.size) {
            return false;
        }
        MessageDigest messageDigestSha256 = sha256();
        FileInputStream fileInputStream = new FileInputStream(file);
        try {
            byte[] bArr = new byte[131072];
            while (true) {
                int i = fileInputStream.read(bArr);
                if (i != -1) {
                    checkCanceled(cancellation);
                    messageDigestSha256.update(bArr, 0, i);
                } else {
                    fileInputStream.close();
                    return hex(messageDigestSha256.digest()).equals(candidate.sha256);
                }
            }
        } catch (Throwable th) {
            try {
                fileInputStream.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    public static String digest(byte[] bArr) {
        return hex(sha256().digest(bArr));
    }

    private static MessageDigest sha256() {
        try {
            return MessageDigest.getInstance("SHA-256");
        } catch (NoSuchAlgorithmException e) {
            throw new AssertionError(e);
        }
    }

    private static String hex(byte[] bArr) {
        StringBuilder sb = new StringBuilder(64);
        for (byte b : bArr) {
            sb.append(String.format(Locale.ROOT, "%02x", Integer.valueOf(b & 255)));
        }
        return sb.toString();
    }

    public static void checkCanceled(Cancellation cancellation) throws InterruptedIOException {
        if (cancellation.canceled()) {
            throw new InterruptedIOException("Download paused. Resume whenever you are ready.");
        }
    }

    public static void remove(File file) throws IOException {
        if (file.exists() && !file.delete()) {
            throw new IOException("Cannot remove an old update file.");
        }
    }
}
