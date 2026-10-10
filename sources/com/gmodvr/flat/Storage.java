package com.gmodvr.flat;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Environment;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.RandomAccessFile;
import java.nio.channels.FileLock;
import java.nio.channels.OverlappingFileLockException;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.StandardCopyOption;
import java.nio.file.attribute.FileAttribute;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;
import java.util.zip.ZipOutputStream;

/* JADX INFO: loaded from: classes.dex */
final class Storage {
    public static File root(Context context) throws IOException {
        File externalFilesDir = context.getExternalFilesDir(null);
        if (externalFilesDir == null) {
            externalFilesDir = context.getFilesDir();
        }
        mkdir(externalFilesDir);
        return externalFilesDir;
    }

    public static File sharedRoot() {
        File file = new File(Environment.getExternalStorageDirectory(), "srceng");
        if (file.isDirectory()) {
            return file;
        }
        String[] strArr = {"Download/srceng", "$MuMu12Shared/srceng", "$MuMu12Shared", "$MuMuShared/srceng", "$MuMuShared", "MuMuPlayerShared/srceng", "MuMuPlayerShared"};
        for (int i = 0; i < 7; i++) {
            File file2 = new File(Environment.getExternalStorageDirectory(), strArr[i]);
            if (file2.isDirectory()) {
                return file2;
            }
        }
        String[] strArr2 = {"/storage/emulated/0/Download/srceng", "/sdcard/Download/srceng", "/sdcard/$MuMu12Shared/srceng", "/sdcard/$MuMu12Shared", "/sdcard/$MuMuShared/srceng", "/sdcard/$MuMuShared", "/mnt/shared/srceng", "/mnt/shared", "/sdcard/srceng"};
        for (int i2 = 0; i2 < 9; i2++) {
            File file3 = new File(strArr2[i2]);
            if (file3.isDirectory()) {
                return file3;
            }
        }
        return file;
    }

    public static File sharedCommonRoot() {
        File file = new File(sharedRoot(), "common");
        if (file.isDirectory()) {
            return file;
        }
        File file2 = new File(Environment.getExternalStorageDirectory(), "SourceAndroid/common");
        if (file2.isDirectory()) {
            return file2;
        }
        File file3 = new File(Environment.getExternalStorageDirectory(), "SourceVRPort/common");
        return file3.isDirectory() ? file3 : sharedRoot();
    }

    public static String customContent(Context context, String str) {
        SharedPreferences sharedPreferences = context.getSharedPreferences("storage", 0);
        String string = sharedPreferences.getString("custom_content_" + str, "");
        if (string.isEmpty()) {
            string = sharedPreferences.getString("custom_content", "");
        }
        if (string.isEmpty()) {
            return null;
        }
        return string;
    }

    public static String customContent(Context context) {
        return customContent(context, GameContentProfile.DEFAULT.id);
    }

    public static boolean usesSharedContent(Context context) {
        return customContent(context) != null || context.getSharedPreferences("storage", 0).getBoolean("shared_content", true);
    }

    public static File content(Context context, GameContentProfile gameContentProfile) throws IOException {
        String strCustomContent = customContent(context, gameContentProfile.id);
        if (strCustomContent != null) {
            if (!LocalFolder.hasAccess(context)) {
                throw new IOException("Allow file access to read the game in " + strCustomContent + ".");
            }
            File file = new File(strCustomContent);
            if (!file.isDirectory()) {
                throw new IOException("Game folder not found: " + strCustomContent + ". Reconnect its drive or choose the folder again.");
            }
            return GameMedia.protectExistingContent(file);
        }
        if (usesSharedContent(context)) {
            if (!LocalFolder.hasAccess(context)) {
                throw new IOException("Allow file access to read the game in /storage/emulated/0/srceng.");
            }
            File fileSharedRoot = sharedRoot();
            ArrayList arrayList = new ArrayList();
            arrayList.add(fileSharedRoot);
            for (String str : LocalFolder.volumes(context)) {
                arrayList.add(new File(str));
                arrayList.add(new File(str, "srceng"));
                arrayList.add(new File(str, "Download/srceng"));
            }
            arrayList.add(new File(Environment.getExternalStorageDirectory(), "srceng"));
            arrayList.add(new File(Environment.getExternalStorageDirectory(), "Download/srceng"));
            arrayList.add(new File("/storage/emulated/0/Download/srceng"));
            arrayList.add(new File("/sdcard/Download/srceng"));
            arrayList.add(new File(Environment.getExternalStorageDirectory(), "$MuMu12Shared/srceng"));
            arrayList.add(new File(Environment.getExternalStorageDirectory(), "$MuMu12Shared"));
            arrayList.add(new File(Environment.getExternalStorageDirectory(), "$MuMuShared/srceng"));
            arrayList.add(new File(Environment.getExternalStorageDirectory(), "$MuMuShared"));
            arrayList.add(new File("/sdcard/$MuMu12Shared/srceng"));
            arrayList.add(new File("/sdcard/$MuMu12Shared"));
            arrayList.add(new File("/mnt/shared/srceng"));
            arrayList.add(new File("/mnt/shared"));
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                File file2 = (File) it.next();
                if (file2.isDirectory()) {
                    try {
                        File fileLocate = GameFolder.locate(gameContentProfile, file2);
                        if (fileLocate != null && fileLocate.isDirectory()) {
                            return GameMedia.protectExistingContent(fileLocate);
                        }
                    } catch (IOException unused) {
                        continue;
                    }
                }
            }
            return GameMedia.protectExistingContent(fileSharedRoot);
        }
        return GameMedia.protectExistingContent(new File(root(context), "content"));
    }

    public static File content(Context context) throws IOException {
        return content(context, GameContentProfile.DEFAULT);
    }

    public static void recoverContent(Context context) throws IOException {
        if (customContent(context) == null) {
            recover(content(context));
        }
    }

    public static File engineContent(Context context, GameContentProfile gameContentProfile) throws IOException {
        File fileContent = content(context, gameContentProfile);
        if (customContent(context, gameContentProfile.id) == null) {
            return fileContent;
        }
        return link(new File(context.getFilesDir(), "custom-content-" + gameContentProfile.id), fileContent);
    }

    public static File engineContent(Context context) throws IOException {
        return engineContent(context, GameContentProfile.DEFAULT);
    }

    public static File link(File file, File file2) throws IOException {
        Path path = file.toPath();
        if (Files.isSymbolicLink(path) && Files.readSymbolicLink(path).equals(file2.toPath())) {
            return file;
        }
        if (Files.isSymbolicLink(path) || file.isFile()) {
            Files.delete(path);
        } else if (file.exists()) {
            throw new IOException("Cannot replace " + file);
        }
        try {
            Files.createSymbolicLink(path, file2.toPath(), new FileAttribute[0]);
            return file;
        } catch (Exception unused) {
            return file2;
        }
    }

    public static File user(Context context, GameContentProfile gameContentProfile) throws IOException {
        File file = new File(root(context), "user/" + gameContentProfile.gameDir);
        mkdir(file);
        return file;
    }

    public static File user(Context context) throws IOException {
        return user(context, GameContentProfile.DEFAULT);
    }

    public static void mkdir(File file) throws IOException {
        if (file.isDirectory() || file.mkdirs()) {
            return;
        }
        throw new IOException("Cannot create " + file.getName());
    }

    public static File child(File file, String str) throws IOException {
        if (!str.isEmpty() && str.indexOf(92) < 0) {
            if (str.indexOf(0) < 0 && !str.startsWith("/")) {
                for (String str2 : str.split("/")) {
                    if (str2.isEmpty() || str2.equals(".") || str2.equals("..")) {
                        throw new IOException("Invalid file path component");
                    }
                }
                File canonicalFile = new File(file, str).getCanonicalFile();
                if (canonicalFile.getPath().startsWith(file.getCanonicalPath() + File.separator)) {
                    return canonicalFile;
                }
                throw new IOException("File path escapes its destination");
            }
        }
        throw new IOException("Invalid file path");
    }

    public static void delete(File file) throws IOException {
        if (Files.isSymbolicLink(file.toPath())) {
            Files.delete(file.toPath());
            return;
        }
        if (file.isDirectory()) {
            File[] fileArrListFiles = file.listFiles();
            if (fileArrListFiles == null) {
                throw new IOException("Cannot list " + file);
            }
            for (File file2 : fileArrListFiles) {
                delete(file2);
            }
        }
        if (!file.exists() || file.delete()) {
            return;
        }
        throw new IOException("Cannot remove " + file);
    }

    public static void atomicText(File file, String str) throws IOException {
        mkdir(file.getParentFile());
        File file2 = new File(file.getPath() + ".tmp");
        FileOutputStream fileOutputStream = new FileOutputStream(file2);
        try {
            fileOutputStream.write(str.getBytes(StandardCharsets.UTF_8));
            fileOutputStream.getFD().sync();
            fileOutputStream.close();
            Files.move(file2.toPath(), file.toPath(), StandardCopyOption.REPLACE_EXISTING);
        } catch (Throwable th) {
            try {
                fileOutputStream.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    public static void recover(File file) throws IOException {
        File file2 = new File(file.getPath() + ".previous");
        if (!file.exists() && file2.exists() && !file2.renameTo(file)) {
            throw new IOException("Could not recover the previous installation");
        }
    }

    public static void recoverUser(File file) throws IOException {
        String[] strArr = {"save", "cfg"};
        for (int i = 0; i < 2; i++) {
            recover(new File(file, strArr[i]));
        }
    }

    public static void publish(File file, File file2) throws IOException {
        recover(file2);
        File file3 = new File(file2.getPath() + ".previous");
        if (file3.exists()) {
            delete(file3);
        }
        if (file2.exists() && !file2.renameTo(file3)) {
            throw new IOException("Cannot preserve previous installation");
        }
        if (!file.renameTo(file2)) {
            if (!file3.exists() || file3.renameTo(file2)) {
                throw new IOException("Cannot activate imported files");
            }
            throw new IOException("Import failed; previous files are in " + file3);
        }
        if (file3.exists()) {
            delete(file3);
        }
    }

    public static boolean ready(Context context, GameContentProfile gameContentProfile) {
        ContentComponent contentComponent;
        try {
            File fileContent = content(context, gameContentProfile);
            if ("garrysmod".equals(gameContentProfile.id)) {
                return GameFolder.garrysModReady(fileContent) && new File(fileContent, "garrysmod/gameinfo.txt").isFile();
            }
            if (customContent(context, gameContentProfile.id) != null) {
                GameFolder.check(gameContentProfile, fileContent);
                return true;
            }
            if (usesSharedContent(context)) {
                if ("portal2".equals(gameContentProfile.id)) {
                    return new File(fileContent, ".sourceandroid-complete").isFile() || (new File(fileContent, "portal2/pak01_dir.vpk").isFile() && new File(fileContent, "portal2_dlc1/pak01_dir.vpk").isFile());
                }
                File file = new File(fileContent, gameContentProfile.gameDir);
                if (file.isDirectory()) {
                    return new File(file, "gameinfo.txt").isFile() || !((contentComponent = gameContentProfile.primary) == null || contentComponent.coreVpkRelPath == null || !new File(fileContent, gameContentProfile.primary.coreVpkRelPath).isFile());
                }
                return false;
            }
            if (!new File(fileContent, ".complete").isFile()) {
                if (!new File(fileContent, gameContentProfile.gameDir + "/gameinfo.txt").isFile()) {
                    return false;
                }
            }
            return true;
        } catch (IOException unused) {
            return false;
        }
    }

    public static boolean ready(Context context) {
        return ready(context, GameContentProfile.DEFAULT);
    }

    public static final class Lease implements AutoCloseable {
        final RandomAccessFile file;
        final FileLock lock;

        public Lease(File file) throws IOException {
            FileLock fileLockTryLock;
            RandomAccessFile randomAccessFile = new RandomAccessFile(file, "rw");
            this.file = randomAccessFile;
            try {
                fileLockTryLock = randomAccessFile.getChannel().tryLock();
            } catch (IOException e) {
                this.file.close();
                throw e;
            } catch (OverlappingFileLockException unused) {
                fileLockTryLock = null;
            }
            if (fileLockTryLock == null) {
                this.file.close();
                throw new IOException("Close the running game or wait for the current file operation to finish.");
            }
            this.lock = fileLockTryLock;
        }

        @Override // java.lang.AutoCloseable
        public void close() throws IOException {
            try {
                this.lock.release();
            } finally {
                this.file.close();
            }
        }
    }

    public static Lease lock(Context context) throws IOException {
        return new Lease(new File(root(context), "session.lock"));
    }

    public static void exportSaves(File file, OutputStream outputStream) throws IOException {
        ZipOutputStream zipOutputStream = new ZipOutputStream(new BufferedOutputStream(outputStream));
        try {
            String[] strArr = {"save", "cfg"};
            for (int i = 0; i < 2; i++) {
                File file2 = new File(file, strArr[i]);
                if (file2.isDirectory()) {
                    zipDir(file, file2, zipOutputStream);
                }
            }
            zipOutputStream.close();
        } catch (Throwable th) {
            try {
                zipOutputStream.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    private static void zipDir(File file, File file2, ZipOutputStream zipOutputStream) throws IOException {
        if (Files.isSymbolicLink(file2.toPath())) {
            return;
        }
        if (file2.isDirectory()) {
            File[] fileArrListFiles = file2.listFiles();
            if (fileArrListFiles == null) {
                throw new IOException("Cannot read saves");
            }
            for (File file3 : fileArrListFiles) {
                zipDir(file, file3, zipOutputStream);
            }
            return;
        }
        zipOutputStream.putNextEntry(new ZipEntry(file.toPath().relativize(file2.toPath()).toString()));
        FileInputStream fileInputStream = new FileInputStream(file2);
        try {
            copy(fileInputStream, zipOutputStream, 1073741824L);
            fileInputStream.close();
            zipOutputStream.closeEntry();
        } catch (Throwable th) {
            try {
                fileInputStream.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    public static long copy(InputStream inputStream, OutputStream outputStream, long j) throws IOException {
        byte[] bArr = new byte[262144];
        long j2 = 0;
        while (true) {
            int i = inputStream.read(bArr);
            if (i == -1) {
                return j2;
            }
            j2 += (long) i;
            if (j2 > j) {
                throw new IOException("File exceeds the supported size");
            }
            outputStream.write(bArr, 0, i);
        }
    }

    public static void restoreSaves(File file, InputStream inputStream) throws IOException {
        recoverUser(file);
        File file2 = new File(file.getParentFile(), "restore.pending");
        if (file2.exists()) {
            delete(file2);
        }
        mkdir(file2);
        HashSet hashSet = new HashSet();
        ZipInputStream zipInputStream = new ZipInputStream(new BufferedInputStream(inputStream));
        long jCopy = 1073741824;
        int i = 0;
        while (true) {
            try {
                ZipEntry nextEntry = zipInputStream.getNextEntry();
                if (nextEntry == null) {
                    zipInputStream.close();
                    if (i == 0) {
                        throw new IOException("The selected backup is empty");
                    }
                    exportSaves(file, new FileOutputStream(new File(file.getParentFile(), "before-restore.zip")));
                    String[] strArr = {"save", "cfg"};
                    for (int i2 = 0; i2 < 2; i2++) {
                        String str = strArr[i2];
                        File file3 = new File(file2, str);
                        if (file3.exists()) {
                            publish(file3, new File(file, str));
                        }
                    }
                    delete(file2);
                    return;
                }
                i++;
                if (i > 20000) {
                    throw new IOException("Backup contains too many files");
                }
                String name = nextEntry.getName();
                if (!name.startsWith("save/") && !name.startsWith("cfg/")) {
                    throw new IOException("Backup must contain only save/ and cfg/ files");
                }
                if (!hashSet.add(name)) {
                    throw new IOException("Duplicate backup entry");
                }
                File fileChild = child(file2, name);
                if (nextEntry.isDirectory()) {
                    mkdir(fileChild);
                } else {
                    mkdir(fileChild.getParentFile());
                    FileOutputStream fileOutputStream = new FileOutputStream(fileChild);
                    try {
                        jCopy -= copy(zipInputStream, fileOutputStream, jCopy);
                        fileOutputStream.close();
                    } finally {
                    }
                }
                zipInputStream.closeEntry();
            } catch (Throwable th) {
                try {
                    zipInputStream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
    }
}
