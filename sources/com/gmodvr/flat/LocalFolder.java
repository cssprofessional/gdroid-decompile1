package com.gmodvr.flat;

import android.content.Context;
import android.net.Uri;
import android.os.Build;
import android.os.Environment;
import android.os.storage.StorageManager;
import android.os.storage.StorageVolume;
import android.provider.DocumentsContract;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
final class LocalFolder {
    public static boolean hasAccess(Context context) {
        return Build.VERSION.SDK_INT >= 30 ? Environment.isExternalStorageManager() : context.checkSelfPermission("android.permission.WRITE_EXTERNAL_STORAGE") == 0;
    }

    public static File destination(Context context) throws IOException {
        File canonicalFile = new File(Environment.getExternalStorageDirectory(), "srceng").getCanonicalFile();
        Storage.mkdir(canonicalFile);
        if (canonicalFile.getName().equals("srceng")) {
            GameMedia.hide(canonicalFile);
        }
        return canonicalFile;
    }

    public static File resolve(Context context, Uri uri) throws IOException {
        if (!"content".equals(uri.getScheme()) || !"com.android.externalstorage.documents".equals(uri.getAuthority()) || !DocumentsContract.isTreeUri(uri)) {
            throw new IOException("Choose the folder under Internal storage. Cloud and other file providers cannot do a direct move.");
        }
        String treeDocumentId = DocumentsContract.getTreeDocumentId(uri);
        if (!treeDocumentId.startsWith("primary:")) {
            throw new IOException("Fast move requires internal shared storage. USB and SD-card transfers require copying first.");
        }
        File canonicalFile = Environment.getExternalStorageDirectory().getCanonicalFile();
        File fileChild = Storage.child(canonicalFile, treeDocumentId.substring(8));
        File canonicalFile2 = new File(canonicalFile, "Android").getCanonicalFile();
        if (fileChild.equals(canonicalFile2) || fileChild.toPath().startsWith(canonicalFile2.toPath())) {
            throw new IOException("Select your game folder outside Android/data.");
        }
        return fileChild;
    }

    public static File path(Context context, Uri uri) throws IOException {
        String lastPathSegment;
        String strSubstring;
        if (uri == null) {
            throw new IOException("No folder was selected.");
        }
        if ("file".equals(uri.getScheme())) {
            File file = new File(uri.getPath());
            if (file.isDirectory()) {
                return file.getCanonicalFile();
            }
            throw new IOException("Folder does not exist: " + uri.getPath());
        }
        if (!"content".equals(uri.getScheme())) {
            throw new IOException("Unsupported URI scheme: " + uri.getScheme());
        }
        try {
            if (DocumentsContract.isTreeUri(uri)) {
                lastPathSegment = DocumentsContract.getTreeDocumentId(uri);
            } else if (DocumentsContract.isDocumentUri(context, uri)) {
                lastPathSegment = DocumentsContract.getDocumentId(uri);
            } else {
                lastPathSegment = uri.getLastPathSegment();
            }
        } catch (Throwable unused) {
            lastPathSegment = uri.getLastPathSegment();
        }
        if (lastPathSegment == null || lastPathSegment.isEmpty()) {
            throw new IOException("Cannot determine selected folder from " + uri);
        }
        String strDecode = Uri.decode(lastPathSegment);
        if (strDecode.startsWith("raw:")) {
            strDecode = strDecode.substring(4);
        }
        File file2 = new File(strDecode);
        if (file2.isDirectory()) {
            return file2.getCanonicalFile();
        }
        int iIndexOf = strDecode.indexOf(58);
        if (iIndexOf >= 0) {
            String strSubstring2 = strDecode.substring(0, iIndexOf);
            strSubstring = strDecode.substring(iIndexOf + 1);
            strDecode = strSubstring2;
        } else {
            strSubstring = "";
        }
        if (strDecode.isEmpty() && !strSubstring.isEmpty()) {
            strDecode = "primary";
        }
        File fileVolume = volume(context, strDecode, strSubstring);
        if (strSubstring == null || strSubstring.isEmpty()) {
            return fileVolume;
        }
        File file3 = new File(fileVolume, strSubstring);
        if (file3.exists()) {
            return file3.getCanonicalFile();
        }
        try {
            return Storage.child(fileVolume, strSubstring);
        } catch (IOException unused2) {
            return fileVolume;
        }
    }

    private static File volume(Context context, String str) throws IOException {
        return volume(context, str, "");
    }

    private static File getVolumeDirectory(StorageVolume storageVolume) {
        Object obj;
        Object obj2;
        if (storageVolume == null) {
            return null;
        }
        if (Build.VERSION.SDK_INT >= 30) {
            try {
                File directory = storageVolume.getDirectory();
                if (directory != null) {
                    if (directory.isDirectory()) {
                        return directory;
                    }
                }
            } catch (Throwable unused) {
            }
        }
        try {
            File file = (File) storageVolume.getClass().getMethod("getPathFile", new Class[0]).invoke(storageVolume, new Object[0]);
            if (file != null) {
                if (file.isDirectory()) {
                    return file;
                }
            }
        } catch (Throwable unused2) {
        }
        try {
            String str = (String) storageVolume.getClass().getMethod("getPath", new Class[0]).invoke(storageVolume, new Object[0]);
            if (str != null) {
                File file2 = new File(str);
                if (file2.isDirectory()) {
                    return file2;
                }
            }
        } catch (Throwable unused3) {
        }
        try {
            Field declaredField = StorageVolume.class.getDeclaredField("mPath");
            declaredField.setAccessible(true);
            obj2 = declaredField.get(storageVolume);
        } catch (Throwable unused4) {
        }
        if ((obj2 instanceof File) && ((File) obj2).isDirectory()) {
            return (File) obj2;
        }
        if ((obj2 instanceof String) && new File((String) obj2).isDirectory()) {
            return new File((String) obj2);
        }
        try {
            Field declaredField2 = StorageVolume.class.getDeclaredField("mInternalPath");
            declaredField2.setAccessible(true);
            obj = declaredField2.get(storageVolume);
        } catch (Throwable unused5) {
        }
        if ((obj instanceof File) && ((File) obj).isDirectory()) {
            return (File) obj;
        }
        if ((obj instanceof String) && new File((String) obj).isDirectory()) {
            return new File((String) obj);
        }
        if (storageVolume.isPrimary()) {
            return Environment.getExternalStorageDirectory();
        }
        if (storageVolume.getUuid() != null) {
            File file3 = new File("/storage", storageVolume.getUuid());
            if (file3.isDirectory()) {
                return file3;
            }
        }
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x007d, code lost:
    
        if (r5.toLowerCase(r3).contains("mumu") != false) goto L31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x00b1, code lost:
    
        if (r10.toLowerCase(r0).contains(r5.toLowerCase(r0)) != false) goto L41;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static boolean matchesVolume(android.os.storage.StorageVolume r8, java.lang.String r9, android.content.Context r10) {
        /*
            Method dump skipped, instruction units count: 221
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.gmodvr.flat.LocalFolder.matchesVolume(android.os.storage.StorageVolume, java.lang.String, android.content.Context):boolean");
    }

    /* JADX WARN: Removed duplicated region for block: B:73:0x01ef A[Catch: all -> 0x01eb, TryCatch #2 {all -> 0x01eb, blocks: (B:60:0x01a1, B:62:0x01a7, B:64:0x01b1, B:66:0x01cf, B:68:0x01e4, B:78:0x0202, B:80:0x020a, B:82:0x0212, B:84:0x021a, B:86:0x0226, B:88:0x0230, B:90:0x023a, B:92:0x0244, B:95:0x0251, B:97:0x0257, B:99:0x0262, B:73:0x01ef, B:75:0x01fa, B:106:0x0276), top: B:146:0x01a1, outer: #3 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static java.io.File volume(android.content.Context r32, java.lang.String r33, java.lang.String r34) throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 831
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.gmodvr.flat.LocalFolder.volume(android.content.Context, java.lang.String, java.lang.String):java.io.File");
    }

    public static List<String> volumes(Context context) {
        ArrayList arrayList = new ArrayList();
        try {
            StorageManager storageManager = (StorageManager) context.getSystemService(StorageManager.class);
            if (storageManager != null) {
                Iterator<StorageVolume> it = storageManager.getStorageVolumes().iterator();
                while (it.hasNext()) {
                    File volumeDirectory = getVolumeDirectory(it.next());
                    if (volumeDirectory != null && volumeDirectory.isDirectory() && !arrayList.contains(volumeDirectory.getPath())) {
                        arrayList.add(volumeDirectory.getPath());
                    }
                }
            }
        } catch (Throwable unused) {
        }
        try {
            BufferedReader bufferedReader = new BufferedReader(new FileReader("/proc/mounts"));
            while (true) {
                try {
                    String line = bufferedReader.readLine();
                    if (line == null) {
                        break;
                    }
                    String[] strArrSplit = line.split("\\s+");
                    if (strArrSplit.length >= 3) {
                        String str = strArrSplit[0];
                        String str2 = strArrSplit[1];
                        String str3 = strArrSplit[2];
                        if (!str3.equals("9p") && !str3.equals("vboxsf") && !str3.equals("virtiofs")) {
                            Locale locale = Locale.ROOT;
                            if (str.toLowerCase(locale).contains("shared") || str.toLowerCase(locale).contains("mumu") || str2.toLowerCase(locale).contains("mumu") || str2.toLowerCase(locale).contains("shared")) {
                            }
                        }
                        File file = new File(str2);
                        if (file.isDirectory() && !arrayList.contains(file.getPath())) {
                            arrayList.add(file.getPath());
                        }
                    }
                } finally {
                }
            }
            bufferedReader.close();
        } catch (Throwable unused2) {
        }
        String[] strArr = {new File(Environment.getExternalStorageDirectory(), "$MuMu12Shared").getPath(), new File(Environment.getExternalStorageDirectory(), "MuMu12Shared").getPath(), new File(Environment.getExternalStorageDirectory(), "$MuMuShared").getPath(), new File(Environment.getExternalStorageDirectory(), "srceng").getPath(), new File(Environment.getExternalStorageDirectory(), "Download/srceng").getPath(), "/sdcard/$MuMu12Shared", "/sdcard/MuMu12Shared", "/sdcard/$MuMuShared", "/storage/$MuMu12Shared", "/storage/MuMu12Shared", "/mnt/shared", "/mnt/shared/MuMuShared", "/mnt/shared_folder", "/mnt/windows"};
        for (int i = 0; i < 14; i++) {
            File file2 = new File(strArr[i]);
            if (file2.isDirectory() && !arrayList.contains(file2.getPath())) {
                arrayList.add(file2.getPath());
            }
        }
        return arrayList;
    }
}
