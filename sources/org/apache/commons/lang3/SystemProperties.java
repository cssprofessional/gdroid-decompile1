package org.apache.commons.lang3;

import java.util.function.Supplier;
import org.apache.commons.lang3.function.Suppliers;

/* JADX INFO: loaded from: classes3.dex */
public final class SystemProperties {
    public static /* synthetic */ String lambda$getProperty$0(String str) {
        return str;
    }

    @Deprecated
    public static String getAwtToolkit() {
        return getProperty("awt.toolkit");
    }

    public static String getFileEncoding() {
        return getProperty("file.encoding");
    }

    public static String getFileSeparator() {
        return getProperty("file.separator");
    }

    @Deprecated
    public static String getJavaAwtFonts() {
        return getProperty("java.awt.fonts");
    }

    @Deprecated
    public static String getJavaAwtGraphicsenv() {
        return getProperty("java.awt.graphicsenv");
    }

    @Deprecated
    public static String getJavaAwtHeadless() {
        return getProperty("java.awt.headless");
    }

    @Deprecated
    public static String getJavaAwtPrinterjob() {
        return getProperty("java.awt.printerjob");
    }

    public static String getJavaClassPath() {
        return getProperty("java.class.path");
    }

    public static String getJavaClassVersion() {
        return getProperty("java.class.version");
    }

    @Deprecated
    public static String getJavaCompiler() {
        return getProperty("java.compiler");
    }

    @Deprecated
    public static String getJavaEndorsedDirs() {
        return getProperty("java.endorsed.dirs");
    }

    @Deprecated
    public static String getJavaExtDirs() {
        return getProperty("java.ext.dirs");
    }

    public static String getJavaHome() {
        return getProperty("java.home");
    }

    public static String getJavaIoTmpdir() {
        return getProperty("java.io.tmpdir");
    }

    public static String getJavaLibraryPath() {
        return getProperty("java.library.path");
    }

    public static String getJavaRuntimeName() {
        return getProperty("java.runtime.name");
    }

    public static String getJavaRuntimeVersion() {
        return getProperty("java.runtime.version");
    }

    public static String getJavaSpecificationName() {
        return getProperty("java.specification.name");
    }

    public static String getJavaSpecificationVendor() {
        return getProperty("java.specification.vendor");
    }

    public static String getJavaSpecificationVersion() {
        return getProperty("java.specification.version");
    }

    public static String getJavaSpecificationVersion(String str) {
        return getProperty("java.specification.version", str);
    }

    public static String getJavaUtilPrefsPreferencesFactory() {
        return getProperty("java.util.prefs.PreferencesFactory");
    }

    public static String getJavaVendor() {
        return getProperty("java.vendor");
    }

    public static String getJavaVendorUrl() {
        return getProperty("java.vendor.url");
    }

    public static String getJavaVersion() {
        return getProperty("java.version");
    }

    public static String getJavaVmInfo() {
        return getProperty("java.vm.info");
    }

    public static String getJavaVmName() {
        return getProperty("java.vm.name");
    }

    public static String getJavaVmSpecificationName() {
        return getProperty("java.vm.specification.name");
    }

    public static String getJavaVmSpecificationVendor() {
        return getProperty("java.vm.specification.vendor");
    }

    public static String getJavaVmSpecificationVersion() {
        return getProperty("java.vm.specification.version");
    }

    public static String getJavaVmVendor() {
        return getProperty("java.vm.vendor");
    }

    public static String getJavaVmVersion() {
        return getProperty("java.vm.version");
    }

    public static String getLineSeparator() {
        return getProperty("line.separator");
    }

    public static String getOsArch() {
        return getProperty("os.arch");
    }

    public static String getOsName() {
        return getProperty("os.name");
    }

    public static String getOsVersion() {
        return getProperty("os.version");
    }

    public static String getPathSeparator() {
        return getProperty("path.separator");
    }

    public static String getProperty(String str) {
        return getProperty(str, (Supplier<String>) Suppliers.nul());
    }

    public static String getProperty(String str, final String str2) {
        return getProperty(str, (Supplier<String>) new Supplier() { // from class: org.apache.commons.lang3.SystemProperties$$ExternalSyntheticLambda0
            @Override // java.util.function.Supplier
            public final Object get() {
                return SystemProperties.lambda$getProperty$0(str2);
            }
        });
    }

    public static String getProperty(String str, Supplier<String> supplier) {
        try {
            if (StringUtils.isEmpty(str)) {
                return (String) Suppliers.get(supplier);
            }
            return (String) StringUtils.getIfEmpty(System.getProperty(str), supplier);
        } catch (SecurityException unused) {
            return supplier.get();
        }
    }

    public static String getUserDir() {
        return getProperty("user.dir");
    }

    public static String getUserHome() {
        return getProperty("user.home");
    }

    public static String getUserLanguage() {
        return getProperty("user.language");
    }

    public static String getUserName() {
        return getProperty("user.name");
    }

    public static String getUserTimezone() {
        return getProperty("user.timezone");
    }
}
