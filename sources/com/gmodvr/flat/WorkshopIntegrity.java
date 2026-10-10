package com.gmodvr.flat;

import com.gmodvr.flat.GmodAddons;
import in.dragonbra.javasteam.protobufs.steamclient.Enums;
import in.dragonbra.javasteam.types.SteamID;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.nio.file.FileVisitOption;
import java.nio.file.FileVisitResult;
import java.nio.file.Files;
import java.nio.file.LinkOption;
import java.nio.file.Path;
import java.nio.file.SimpleFileVisitor;
import java.nio.file.StandardCopyOption;
import java.nio.file.attribute.BasicFileAttributes;
import java.nio.file.attribute.FileAttribute;
import java.util.ArrayList;
import java.util.Collections;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.zip.CRC32;

/* JADX INFO: loaded from: classes.dex */
final class WorkshopIntegrity {
    private static final int MAGIC = 1196902705;
    private static final int MAX_FILES = 200000;
    static final String RECEIPT = ".gmodvr-files";

    public interface Progress {
        void update(String str, long j, long j2) throws Exception;
    }

    public static final class Entry {
        final long crc;
        final String path;
        final long size;

        public Entry(String str, long j, long j2) {
            this.path = str;
            this.size = j;
            this.crc = j2;
        }
    }

    private static void check() throws InterruptedException {
        if (Thread.currentThread().isInterrupted()) {
            throw new InterruptedException();
        }
    }

    private static List<String> files(final File file) throws InterruptedException, IOException {
        final ArrayList arrayList = new ArrayList();
        if (!Files.isDirectory(file.toPath(), LinkOption.NOFOLLOW_LINKS)) {
            throw new IOException("Addon folder is missing");
        }
        Files.walkFileTree(file.toPath(), EnumSet.noneOf(FileVisitOption.class), 32, new SimpleFileVisitor<Path>() { // from class: com.gmodvr.flat.WorkshopIntegrity.1
            @Override // java.nio.file.SimpleFileVisitor, java.nio.file.FileVisitor
            public FileVisitResult visitFile(Path path, BasicFileAttributes basicFileAttributes) throws IOException {
                if (Thread.currentThread().isInterrupted()) {
                    throw new InterruptedIOException();
                }
                if (!basicFileAttributes.isRegularFile()) {
                    throw new IOException("Addon contains a symbolic link or invalid file");
                }
                String strReplace = file.toPath().relativize(path).toString().replace(File.separatorChar, '/');
                if (!strReplace.equals("workshop.json") && !strReplace.equals(WorkshopIntegrity.RECEIPT)) {
                    arrayList.add(strReplace);
                }
                if (arrayList.size() > WorkshopIntegrity.MAX_FILES) {
                    throw new IOException("Addon contains too many files");
                }
                return FileVisitResult.CONTINUE;
            }
        });
        check();
        Collections.sort(arrayList);
        return arrayList;
    }

    public static void write(File file, Progress progress) throws Exception {
        write(file, null, progress);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* JADX WARN: Type inference failed for: r2v13 */
    /* JADX WARN: Type inference failed for: r2v2, types: [java.nio.file.Path] */
    /* JADX WARN: Type inference failed for: r2v3 */
    /* JADX WARN: Type inference failed for: r2v4 */
    /* JADX WARN: Type inference failed for: r2v5 */
    /* JADX WARN: Type inference failed for: r2v8 */
    public static void write(File file, List<Entry> list, Progress progress) throws Exception {
        HashMap map;
        DataOutputStream dataOutputStream;
        Throwable th;
        Path path;
        Path path2;
        Iterator it;
        long j;
        String str;
        long j2;
        long jCrc;
        File file2 = file;
        ?? Files = files(file);
        if (Files.isEmpty()) {
            throw new IOException("Addon has no content files");
        }
        long jAddExact = 0;
        if (list != null) {
            if (list.size() != Files.size()) {
                throw new IOException("Addon changed after extraction");
            }
            map = new HashMap();
            for (Entry entry : list) {
                if (entry != null && entry.size >= 0) {
                    long j3 = entry.crc;
                    if (j3 < 0 || j3 > SteamID.ACCOUNT_ID_MASK || map.put(entry.path, entry) != null) {
                    }
                }
                throw new IOException("Invalid extracted addon checksums");
            }
        }
        map = null;
        Iterator it2 = Files.iterator();
        long jAddExact2 = 0;
        while (it2.hasNext()) {
            jAddExact2 = Math.addExact(jAddExact2, SteamFiles.inside(file2, (String) it2.next()).length());
        }
        Path pathCreateTempFile = Files.createTempFile(file.toPath().toAbsolutePath().getParent(), ".gmodvr-files-", ".tmp", new FileAttribute[0]);
        try {
            DataOutputStream dataOutputStream2 = new DataOutputStream(new BufferedOutputStream(new FileOutputStream(pathCreateTempFile.toFile())));
            try {
                try {
                    dataOutputStream2.writeInt(MAGIC);
                    dataOutputStream2.writeInt(Files.size());
                    Iterator it3 = Files.iterator();
                    while (it3.hasNext()) {
                        try {
                            String str2 = (String) it3.next();
                            File fileInside = SteamFiles.inside(file2, str2);
                            long length = fileInside.length();
                            if (map == null) {
                                it = it3;
                                j = length;
                                path2 = pathCreateTempFile;
                                dataOutputStream = dataOutputStream2;
                                str = str2;
                                j2 = jAddExact2;
                                try {
                                    jCrc = crc(fileInside, str2, jAddExact, jAddExact2, progress);
                                } catch (Throwable th2) {
                                    th = th2;
                                    th = th;
                                    Files = path2;
                                    try {
                                        dataOutputStream.close();
                                        throw th;
                                    } catch (Throwable th3) {
                                        th.addSuppressed(th3);
                                        throw th;
                                    }
                                }
                            } else {
                                it = it3;
                                path2 = pathCreateTempFile;
                                j = length;
                                dataOutputStream = dataOutputStream2;
                                str = str2;
                                j2 = jAddExact2;
                                check();
                                Entry entry2 = (Entry) map.get(str);
                                if (entry2 == null || entry2.size != j) {
                                    throw new IOException("Addon changed after extraction");
                                }
                                long j4 = entry2.crc;
                                if (progress != null) {
                                    progress.update(str, Math.addExact(jAddExact, j), j2);
                                }
                                jCrc = j4;
                            }
                            if (fileInside.length() != j) {
                                throw new IOException("Addon changed while installing");
                            }
                            dataOutputStream.writeUTF(str);
                            dataOutputStream.writeLong(j);
                            dataOutputStream.writeInt((int) jCrc);
                            jAddExact = Math.addExact(jAddExact, j);
                            file2 = file;
                            it3 = it;
                            dataOutputStream2 = dataOutputStream;
                            pathCreateTempFile = path2;
                            jAddExact2 = j2;
                        } catch (Throwable th4) {
                            th = th4;
                            path2 = pathCreateTempFile;
                            dataOutputStream = dataOutputStream2;
                        }
                    }
                    path = pathCreateTempFile;
                } catch (Throwable th5) {
                    th = th5;
                    Files.deleteIfExists(Files);
                    throw th;
                }
                try {
                    dataOutputStream2.close();
                    check();
                    Files.move(path, new File(file, RECEIPT).toPath(), StandardCopyOption.REPLACE_EXISTING, StandardCopyOption.ATOMIC_MOVE);
                    Files.deleteIfExists(path);
                } catch (Throwable th6) {
                    th = th6;
                    Files = path;
                    Files.deleteIfExists(Files);
                    throw th;
                }
            } catch (Throwable th7) {
                Files = pathCreateTempFile;
                dataOutputStream = dataOutputStream2;
                th = th7;
            }
        } catch (Throwable th8) {
            th = th8;
            Files = pathCreateTempFile;
        }
    }

    public static boolean verifyInstalled(GmodAddons.Addon addon, Progress progress) throws Exception {
        if (Files.exists(new File(addon.folder, RECEIPT).toPath(), LinkOption.NOFOLLOW_LINKS)) {
            return verify(addon.folder, progress);
        }
        try {
            List<String> listFiles = files(addon.folder);
            long jAddExact = 0;
            long jOptLong = addon.meta.optLong("size", 0L);
            if (!listFiles.isEmpty() && jOptLong > 0) {
                Iterator<String> it = listFiles.iterator();
                while (it.hasNext()) {
                    jAddExact = Math.addExact(jAddExact, SteamFiles.inside(addon.folder, it.next()).length());
                }
                if (jAddExact != jOptLong) {
                    return false;
                }
                write(addon.folder, progress);
                return true;
            }
            return false;
        } catch (IOException | ArithmeticException unused) {
            check();
            return false;
        }
    }

    public static boolean verify(File file, Progress progress) throws Exception {
        boolean z;
        File file2 = new File(file, RECEIPT);
        boolean z2 = false;
        if (!Files.isRegularFile(file2.toPath(), LinkOption.NOFOLLOW_LINKS)) {
            return false;
        }
        try {
            try {
                try {
                    try {
                        DataInputStream dataInputStream = new DataInputStream(new BufferedInputStream(new FileInputStream(file2)));
                        try {
                            if (dataInputStream.readInt() != MAGIC) {
                                dataInputStream.close();
                                return false;
                            }
                            int i = dataInputStream.readInt();
                            if (i > 0 && i <= MAX_FILES) {
                                List<String> listFiles = files(file);
                                if (listFiles.size() != i) {
                                    dataInputStream.close();
                                    return false;
                                }
                                Iterator<String> it = listFiles.iterator();
                                long j = 0;
                                long jAddExact = 0;
                                while (it.hasNext()) {
                                    jAddExact = Math.addExact(jAddExact, SteamFiles.inside(file, it.next()).length());
                                }
                                long jAddExact2 = 0;
                                for (String str : listFiles) {
                                    check();
                                    if (!str.equals(dataInputStream.readUTF())) {
                                        dataInputStream.close();
                                        return z2;
                                    }
                                    long j2 = dataInputStream.readLong();
                                    long unsignedLong = Integer.toUnsignedLong(dataInputStream.readInt());
                                    File fileInside = SteamFiles.inside(file, str);
                                    if (j2 >= j && fileInside.length() == j2) {
                                        long j3 = jAddExact2;
                                        if (crc(fileInside, str, jAddExact2, jAddExact, progress) == unsignedLong) {
                                            jAddExact2 = Math.addExact(j3, j2);
                                            z2 = false;
                                            j = 0;
                                        }
                                    }
                                    dataInputStream.close();
                                    return false;
                                }
                                boolean z3 = dataInputStream.read() == -1;
                                dataInputStream.close();
                                return z3;
                            }
                            dataInputStream.close();
                            return false;
                        } finally {
                        }
                    } catch (IOException | ArithmeticException unused) {
                        return false;
                    }
                } catch (IOException | ArithmeticException unused2) {
                    return false;
                }
            } catch (InterruptedIOException unused3) {
                z = false;
                check();
                return z;
            }
        } catch (InterruptedIOException unused4) {
            z = false;
            check();
            return z;
        }
    }

    private static long crc(File file, String str, long j, long j2, Progress progress) throws Exception {
        CRC32 crc32 = new CRC32();
        byte[] bArr = new byte[Enums.EProtoAppType.k_EAppTypeBeta_VALUE];
        BufferedInputStream bufferedInputStream = new BufferedInputStream(new FileInputStream(file));
        long j3 = j;
        while (true) {
            try {
                int i = bufferedInputStream.read(bArr);
                if (i == -1) {
                    break;
                }
                check();
                crc32.update(bArr, 0, i);
                j3 += (long) i;
                if (progress != null) {
                    progress.update(str, j3, j2);
                }
            } finally {
            }
        }
        bufferedInputStream.close();
        if (progress != null) {
            progress.update(str, j3, j2);
        }
        return crc32.getValue();
    }
}
