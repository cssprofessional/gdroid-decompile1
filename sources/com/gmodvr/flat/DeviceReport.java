package com.gmodvr.flat;

import android.app.ActivityManager;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import android.os.Process;
import android.util.DisplayMetrics;
import java.io.File;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.util.Arrays;
import java.util.Comparator;

/* JADX INFO: loaded from: classes.dex */
final class DeviceReport {
    private DeviceReport() {
    }

    public static String build(Context context, String str) {
        StringBuilder sb = new StringBuilder(context.getString(R.string.app_name));
        sb.append(" diagnostics report\n");
        line(sb, "generated", ExitReasons.time(System.currentTimeMillis()));
        section(sb, "App");
        line(sb, "version", CrashReporter.appVersion());
        line(sb, "package", context.getPackageName());
        try {
            line(sb, "installed APK ABI", new File(context.getApplicationInfo().nativeLibraryDir).getName() + " (" + context.getApplicationInfo().nativeLibraryDir + ")");
        } catch (Exception e) {
            line(sb, "installed APK ABI", "? " + e);
        }
        line(sb, "64-bit process", Boolean.toString(Process.is64Bit()));
        section(sb, "Device");
        line(sb, "manufacturer", Build.MANUFACTURER);
        line(sb, "model", Build.MODEL);
        line(sb, "device", Build.DEVICE);
        line(sb, "product", Build.PRODUCT);
        line(sb, "hardware", Build.HARDWARE);
        line(sb, "board", Build.BOARD);
        int i = Build.VERSION.SDK_INT;
        if (i >= 31) {
            line(sb, "SoC", Build.SOC_MANUFACTURER + " " + Build.SOC_MODEL);
        }
        line(sb, "Android", Build.VERSION.RELEASE + " (API " + i + ")");
        line(sb, "build", Build.FINGERPRINT);
        line(sb, "supported ABIs", Arrays.toString(Build.SUPPORTED_ABIS));
        try {
            DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
            line(sb, "display", displayMetrics.widthPixels + "x" + displayMetrics.heightPixels + " @ " + displayMetrics.densityDpi + " dpi");
        } catch (Exception unused) {
        }
        section(sb, "Memory");
        try {
            ActivityManager activityManager = (ActivityManager) context.getSystemService(ActivityManager.class);
            ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
            activityManager.getMemoryInfo(memoryInfo);
            line(sb, "total RAM", (memoryInfo.totalMem >> 20) + " MB");
            line(sb, "available RAM", (memoryInfo.availMem >> 20) + " MB (low: " + memoryInfo.lowMemory + ", threshold " + (memoryInfo.threshold >> 20) + " MB)");
            line(sb, "low-RAM device", Boolean.toString(activityManager.isLowRamDevice()));
            StringBuilder sb2 = new StringBuilder();
            sb2.append(activityManager.getMemoryClass());
            sb2.append(" MB (large ");
            sb2.append(activityManager.getLargeMemoryClass());
            sb2.append(" MB)");
            line(sb, "Java heap class", sb2.toString());
            line(sb, "-heapsize", LaunchArguments.heapSizeMB(context) + " MB");
            line(sb, "reqGlEsVersion", "0x" + Integer.toHexString(activityManager.getDeviceConfigurationInfo().reqGlEsVersion));
        } catch (Exception e2) {
            line(sb, "memory", "? " + e2);
        }
        section(sb, "GPU (launcher EGL probe)");
        if (str == null) {
            str = "not run\n";
        }
        sb.append(str);
        section(sb, "Game files");
        try {
            content(sb, context);
        } catch (Exception e3) {
            line(sb, "error", e3.toString());
        }
        section(sb, "Steam sign-in");
        try {
            line(sb, "launcher saved session", SteamIdentityProvider.sessionStatus(context));
        } catch (Exception unused2) {
            line(sb, "launcher saved session", "bridge unavailable");
        }
        section(sb, "Settings");
        SharedPreferences sharedPreferences = context.getSharedPreferences("settings", 0);
        line(sb, "launch arguments", "[" + sharedPreferences.getString("launch_args", "") + "]");
        line(sb, "map", sharedPreferences.getString("gmod_map", "gm_construct"));
        line(sb, "height", Integer.toString(sharedPreferences.getInt("height", 720)));
        line(sb, "fps limit", Integer.toString(sharedPreferences.getInt("fps", 60)));
        line(sb, "touch", Boolean.toString(sharedPreferences.getBoolean("touch", true)));
        section(sb, "Diagnostics folder");
        File fileDir = CrashReporter.dir(context);
        line(sb, "path", fileDir.getAbsolutePath());
        File[] fileArrListFiles = fileDir.listFiles();
        if (fileArrListFiles != null) {
            Arrays.sort(fileArrListFiles, new Comparator() { // from class: com.gmodvr.flat.DeviceReport$$ExternalSyntheticLambda2
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    return DeviceReport.lambda$build$0((File) obj, (File) obj2);
                }
            });
            for (File file : fileArrListFiles) {
                sb.append("  ");
                sb.append(file.getName());
                sb.append("  ");
                sb.append(file.length());
                sb.append(" B  ");
                sb.append(ExitReasons.time(file.lastModified()));
                sb.append('\n');
            }
        }
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int lambda$build$0(File file, File file2) {
        return file.getName().compareTo(file2.getName());
    }

    private static void content(StringBuilder sb, Context context) throws Exception {
        boolean zHasAccess = LocalFolder.hasAccess(context);
        line(sb, "all-files access", Boolean.toString(zHasAccess));
        GameContentProfile gameContentProfile = GameContentProfile.DEFAULT;
        line(sb, "custom folder", String.valueOf(Storage.customContent(context, gameContentProfile.id)));
        line(sb, "shared srceng root", Storage.sharedRoot().getAbsolutePath());
        if (zHasAccess) {
            File fileContent = Storage.content(context, gameContentProfile);
            line(sb, "content root", fileContent.getAbsolutePath());
            String[] strArr = {"garrysmod", ContentComponent.SOURCEENGINE_DIR, ContentComponent.PLATFORM_DIR, "hl2"};
            for (int i = 0; i < 4; i++) {
                String str = strArr[i];
                line(sb, str + "/", new File(fileContent, str).isDirectory() ? "present" : "missing");
            }
            line(sb, "Garry's Mod ready", Boolean.toString(GameFolder.garrysModReady(fileContent)));
            File file = new File(fileContent, "garrysmod");
            line(sb, "garrysmod steam.inf", steamInfVersion(new File(file, "steam.inf")));
            line(sb, "util.lua defines is*", utilDefinesTypeChecks(new File(file, "lua/includes/util.lua")));
            line(sb, "HL2 packs from hl2/", Boolean.toString(GameFolder.usesHalfLife2Packs(fileContent)));
            line(sb, "addons enabled", Integer.toString(countDirs(GmodAddons.enabledRoot(fileContent))));
            line(sb, "addons disabled", Integer.toString(countDirs(GmodAddons.disabledRoot(fileContent))));
            line(sb, "user folder", Storage.user(context, GameContentProfile.DEFAULT).getAbsolutePath());
        }
    }

    private static String steamInfVersion(File file) {
        if (!file.isFile()) {
            return "missing";
        }
        try {
            for (String str : Files.readAllLines(file.toPath(), StandardCharsets.ISO_8859_1)) {
                if (str.startsWith("PatchVersion=")) {
                    return str.substring(13).trim();
                }
            }
            return "no PatchVersion";
        } catch (Exception e) {
            return "unreadable (" + e.getClass().getSimpleName() + ")";
        }
    }

    private static String utilDefinesTypeChecks(File file) {
        if (!file.isFile()) {
            return "util.lua missing";
        }
        try {
            return new String(Files.readAllBytes(file.toPath()), StandardCharsets.ISO_8859_1).contains("function isstring") ? "yes" : "no (content older than 2026-06-25)";
        } catch (Exception e) {
            return "unreadable (" + e.getClass().getSimpleName() + ")";
        }
    }

    private static int countDirs(File file) {
        File[] fileArrListFiles = file.listFiles();
        if (fileArrListFiles == null) {
            return 0;
        }
        int i = 0;
        for (File file2 : fileArrListFiles) {
            if (file2.isDirectory()) {
                i++;
            }
        }
        return i;
    }

    private static void section(StringBuilder sb, String str) {
        sb.append("\n== ");
        sb.append(str);
        sb.append(" ==\n");
    }

    private static void line(StringBuilder sb, String str, String str2) {
        sb.append(str);
        sb.append(": ");
        sb.append(str2);
        sb.append('\n');
    }
}
