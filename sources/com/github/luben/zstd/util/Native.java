package com.github.luben.zstd.util;

import java.io.File;
import java.security.AccessController;
import java.security.PrivilegedAction;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes.dex */
public enum Native {
    ;

    private static final String nativePathOverride = "ZstdNativePath";
    private static final String tempFolderOverride = "ZstdTempFolder";
    private static final String libnameShort = "zstd-jni-1.5.7-6";
    private static final String libname = "libzstd-jni-1.5.7-6";
    private static final String errorMsg = "Unsupported OS/arch, cannot find " + resourceName() + " or load " + libnameShort + " from system libraries. Please try building from source the jar or providing " + libname + " in your system.";
    private static AtomicBoolean loaded = new AtomicBoolean(false);

    private static String osName() {
        String strReplace = System.getProperty("os.name").toLowerCase().replace(' ', '_');
        if (strReplace.startsWith("win")) {
            return "win";
        }
        return strReplace.startsWith("mac") ? "darwin" : strReplace;
    }

    private static String libExtension() {
        if (osName().contains("os_x") || osName().contains("darwin")) {
            return "dylib";
        }
        if (osName().contains("win")) {
            return "dll";
        }
        return "so";
    }

    private static String resourceName() {
        String strOsName = osName();
        String property = System.getProperty("os.arch");
        if (strOsName.equals("darwin") && property.equals("amd64")) {
            property = "x86_64";
        }
        return "/" + strOsName + "/" + property + "/" + libname + "." + libExtension();
    }

    public static synchronized void assumeLoaded() {
        loaded.set(true);
    }

    public static synchronized boolean isLoaded() {
        return loaded.get();
    }

    private static void loadLibrary(final String str) {
        AccessController.doPrivileged(new PrivilegedAction<Void>() { // from class: com.github.luben.zstd.util.Native.1
            @Override // java.security.PrivilegedAction
            public Void run() {
                System.loadLibrary(str);
                return null;
            }
        });
    }

    private static void loadLibraryFile(final String str) {
        AccessController.doPrivileged(new PrivilegedAction<Void>() { // from class: com.github.luben.zstd.util.Native.2
            @Override // java.security.PrivilegedAction
            public Void run() {
                System.load(str);
                return null;
            }
        });
    }

    public static synchronized void load() {
        try {
            String property = System.getProperty(tempFolderOverride);
            if (property == null) {
                load(null);
            } else {
                load(new File(property));
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:75:0x014a A[Catch: all -> 0x0024, IOException -> 0x0158, TryCatch #1 {IOException -> 0x0158, blocks: (B:73:0x0145, B:75:0x014a, B:77:0x014f, B:79:0x0155), top: B:87:0x0145 }] */
    /* JADX WARN: Removed duplicated region for block: B:77:0x014f A[Catch: all -> 0x0024, IOException -> 0x0158, TryCatch #1 {IOException -> 0x0158, blocks: (B:73:0x0145, B:75:0x014a, B:77:0x014f, B:79:0x0155), top: B:87:0x0145 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static synchronized void load(java.io.File r9) {
        /*
            Method dump skipped, instruction units count: 347
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.github.luben.zstd.util.Native.load(java.io.File):void");
    }
}
