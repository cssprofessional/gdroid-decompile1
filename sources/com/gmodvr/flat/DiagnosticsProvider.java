package com.gmodvr.flat;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.MatrixCursor;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import java.io.File;
import java.io.FileNotFoundException;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class DiagnosticsProvider extends ContentProvider {
    static final String SHARE_DIR = "share";

    @Override // android.content.ContentProvider
    public boolean onCreate() {
        return true;
    }

    public static String authority(Context context) {
        return context.getPackageName() + ".diagnostics";
    }

    public static File shareDir(Context context) {
        return new File(context.getCacheDir(), SHARE_DIR);
    }

    public static Uri uriFor(Context context, File file) {
        return new Uri.Builder().scheme("content").authority(authority(context)).appendPath(SHARE_DIR).appendPath(file.getName()).build();
    }

    private File resolve(Uri uri) {
        List<String> pathSegments = uri.getPathSegments();
        if (pathSegments.size() != 2 || !SHARE_DIR.equals(pathSegments.get(0))) {
            return null;
        }
        String str = pathSegments.get(1);
        if (!str.matches("[A-Za-z0-9._-]{1,128}") || str.startsWith(".")) {
            return null;
        }
        File file = new File(shareDir(getContext()), str);
        if (file.isFile()) {
            return file;
        }
        return null;
    }

    @Override // android.content.ContentProvider
    public String getType(Uri uri) {
        String lastPathSegment = uri.getLastPathSegment();
        if (lastPathSegment == null) {
            return null;
        }
        return lastPathSegment.endsWith(".zip") ? "application/zip" : lastPathSegment.endsWith(".txt") ? "text/plain" : "application/octet-stream";
    }

    @Override // android.content.ContentProvider
    public ParcelFileDescriptor openFile(Uri uri, String str) throws FileNotFoundException {
        if (str == null || !str.equals("r")) {
            throw new SecurityException("read-only");
        }
        File fileResolve = resolve(uri);
        if (fileResolve == null) {
            throw new FileNotFoundException(uri.toString());
        }
        return ParcelFileDescriptor.open(fileResolve, 268435456);
    }

    @Override // android.content.ContentProvider
    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        int i;
        File fileResolve = resolve(uri);
        if (fileResolve == null) {
            return null;
        }
        if (strArr == null) {
            strArr = new String[]{"_display_name", "_size"};
        }
        Object[] objArr = new Object[strArr.length];
        String[] strArr3 = new String[strArr.length];
        int i2 = 0;
        for (String str3 : strArr) {
            if ("_display_name".equals(str3)) {
                strArr3[i2] = str3;
                i = i2 + 1;
                objArr[i2] = fileResolve.getName();
            } else if ("_size".equals(str3)) {
                strArr3[i2] = str3;
                i = i2 + 1;
                objArr[i2] = Long.valueOf(fileResolve.length());
            }
            i2 = i;
        }
        MatrixCursor matrixCursor = new MatrixCursor((String[]) Arrays.copyOf(strArr3, i2), 1);
        matrixCursor.addRow(Arrays.copyOf(objArr, i2));
        return matrixCursor;
    }

    @Override // android.content.ContentProvider
    public Uri insert(Uri uri, ContentValues contentValues) {
        throw new UnsupportedOperationException();
    }

    @Override // android.content.ContentProvider
    public int delete(Uri uri, String str, String[] strArr) {
        throw new UnsupportedOperationException();
    }

    @Override // android.content.ContentProvider
    public int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        throw new UnsupportedOperationException();
    }
}
