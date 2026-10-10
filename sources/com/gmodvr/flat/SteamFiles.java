package com.gmodvr.flat;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.net.URI;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.StandardCopyOption;
import java.security.MessageDigest;
import java.util.Locale;
import org.bouncycastle.pqc.jcajce.spec.McElieceCCA2KeyGenParameterSpec;

/* JADX INFO: loaded from: classes.dex */
final class SteamFiles {
    public static String relative(String str) throws IOException {
        String strReplace = str.replace('\\', '/');
        if (strReplace.isEmpty() || strReplace.startsWith("/") || strReplace.indexOf(58) >= 0) {
            throw new IOException("Invalid Steam content path");
        }
        for (String str2 : strReplace.split("/", -1)) {
            if (str2.isEmpty() || str2.equals(".") || str2.equals("..") || str2.startsWith(".sourceandroid") || str2.startsWith(".sourcevr")) {
                throw new IOException("Invalid Steam content path");
            }
            for (int i = 0; i < str2.length(); i++) {
                if (Character.isISOControl(str2.charAt(i))) {
                    throw new IOException("Invalid Steam content path");
                }
            }
        }
        return strReplace;
    }

    public static File inside(File file, String str) throws IOException {
        if (Files.isSymbolicLink(file.toPath())) {
            throw new IOException("Symbolic links are not allowed in Steam storage");
        }
        Path path = file.getCanonicalFile().toPath();
        Path pathResolve = path.resolve(relative(str));
        for (Path parent = pathResolve; parent != null && parent.startsWith(path); parent = parent.getParent()) {
            if (Files.isSymbolicLink(parent)) {
                throw new IOException("Symbolic links are not allowed in Steam storage");
            }
        }
        if (!pathResolve.normalize().startsWith(path)) {
            throw new IOException("Steam path escaped its destination");
        }
        return pathResolve.toFile();
    }

    public static void mkdir(File file) throws IOException {
        if (!file.mkdirs() && !file.isDirectory()) {
            throw new IOException("Cannot create download directory");
        }
    }

    public static void move(File file, File file2) throws IOException {
        mkdir(file2.getParentFile());
        Files.move(file.toPath(), file2.toPath(), StandardCopyOption.ATOMIC_MOVE, StandardCopyOption.REPLACE_EXISTING);
    }

    public static byte[] hash(File file) throws Exception {
        MessageDigest messageDigest = MessageDigest.getInstance(McElieceCCA2KeyGenParameterSpec.SHA1);
        FileInputStream fileInputStream = new FileInputStream(file);
        try {
            byte[] bArr = new byte[131072];
            while (true) {
                int i = fileInputStream.read(bArr);
                if (i != -1) {
                    if (Thread.currentThread().isInterrupted()) {
                        throw new InterruptedException();
                    }
                    messageDigest.update(bArr, 0, i);
                } else {
                    fileInputStream.close();
                    return messageDigest.digest();
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

    public static boolean matches(File file, long j, byte[] bArr) throws Exception {
        return file.isFile() && file.length() == j && bArr.length == 20 && MessageDigest.isEqual(hash(file), bArr);
    }

    public static long workshopId(String str) {
        String strTrim = str.trim();
        if (!strTrim.matches("[0-9]+")) {
            URI uriCreate = URI.create(strTrim);
            if (!"https".equalsIgnoreCase(uriCreate.getScheme()) || !"steamcommunity.com".equalsIgnoreCase(uriCreate.getHost()) || uriCreate.getUserInfo() != null || ((!"/sharedfiles/filedetails/".equals(uriCreate.getPath()) && !"/sharedfiles/filedetails".equals(uriCreate.getPath())) || uriCreate.getRawQuery() == null)) {
                throw new IllegalArgumentException("Enter a Steam Workshop link or item ID");
            }
            String strSubstring = "";
            for (String str2 : uriCreate.getRawQuery().split("&")) {
                if (str2.startsWith("id=")) {
                    strSubstring = str2.substring(3);
                }
            }
            strTrim = strSubstring;
        }
        if (!strTrim.matches("[0-9]{1,20}")) {
            throw new IllegalArgumentException("Invalid Workshop item ID");
        }
        long unsignedLong = Long.parseUnsignedLong(strTrim);
        if (unsignedLong != 0) {
            return unsignedLong;
        }
        throw new IllegalArgumentException("Invalid Workshop item ID");
    }

    public static String hex(byte[] bArr) {
        StringBuilder sb = new StringBuilder();
        for (byte b : bArr) {
            sb.append(String.format(Locale.ROOT, "%02x", Integer.valueOf(b & 255)));
        }
        return sb.toString();
    }

    public static void deleteTree(File file) throws IOException {
        if (Files.isSymbolicLink(file.toPath())) {
            throw new IOException("Refusing to remove a symbolic link");
        }
        if (file.isDirectory()) {
            File[] fileArrListFiles = file.listFiles();
            if (fileArrListFiles == null) {
                throw new IOException("Cannot read staging directory");
            }
            for (File file2 : fileArrListFiles) {
                deleteTree(file2);
            }
        }
        Files.deleteIfExists(file.toPath());
    }
}
