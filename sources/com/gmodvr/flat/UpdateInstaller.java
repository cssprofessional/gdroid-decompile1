package com.gmodvr.flat;

import android.app.ActivityManager;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.os.Bundle;
import android.os.Process;
import com.gmodvr.flat.UpdateRelease;
import java.io.File;
import java.io.IOException;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
final class UpdateInstaller {
    static final String ACTION = "com.gmodvr.flat.UPDATE_INSTALL_STATUS";

    public static void requireIdle(Context context) throws IOException {
        if (ImportService.running || SteamDownloadService.active() || SteamDownloadService.activationPending(context) || SteamDownloadService.discarding()) {
            throw new IOException("Finish or cancel game downloads and content imports before installing an update.");
        }
        ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses = activityManager == null ? null : activityManager.getRunningAppProcesses();
        if (runningAppProcesses == null) {
            throw new IOException("Cannot check whether a game is running. Reopen the launcher and retry.");
        }
        List<ActivityManager.RunningServiceInfo> runningServices = activityManager.getRunningServices(Integer.MAX_VALUE);
        if (runningServices != null) {
            for (ActivityManager.RunningServiceInfo runningServiceInfo : runningServices) {
                if (runningServiceInfo.service != null && context.getPackageName().equals(runningServiceInfo.service.getPackageName()) && !UpdateDownloadService.class.getName().equals(runningServiceInfo.service.getClassName())) {
                    throw new IOException("Finish other downloads and content imports before installing an update.");
                }
            }
        }
        for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
            if (runningAppProcessInfo.uid == Process.myUid() && runningAppProcessInfo.pid != Process.myPid() && runningAppProcessInfo.processName.endsWith(":game")) {
                throw new IOException("Quit the running game and finish importing content before installing an update.");
            }
        }
    }

    public static void verify(Context context, File file, UpdateRelease.Candidate candidate) throws IOException {
        ApplicationInfo applicationInfo;
        PackageManager packageManager = context.getPackageManager();
        try {
            PackageInfo packageInfo = packageManager.getPackageInfo(context.getPackageName(), 134217728);
            PackageInfo packageArchiveInfo = packageManager.getPackageArchiveInfo(file.getAbsolutePath(), 134217856);
            if (packageArchiveInfo == null || (applicationInfo = packageArchiveInfo.applicationInfo) == null || packageArchiveInfo.signingInfo == null || packageInfo.signingInfo == null) {
                throw new IOException("Cannot read the signed update APK.");
            }
            Bundle bundle = applicationInfo.metaData;
            requireIdentity(context.getPackageName(), BuildConfig.UPDATE_ABI, packageInfo.getLongVersionCode(), candidate, packageArchiveInfo.packageName, bundle != null ? bundle.getString("com.gmodvr.UPDATE_ABI", "") : "", packageArchiveInfo.getLongVersionCode(), (packageArchiveInfo.applicationInfo.flags & 2) != 0, signatures(packageInfo.signingInfo.getApkContentsSigners()), signatures(packageArchiveInfo.signingInfo.getApkContentsSigners()));
        } catch (PackageManager.NameNotFoundException e) {
            throw new IOException("Cannot verify the installed app identity.", e);
        }
    }

    public static final class NotNewer extends IOException {
        public NotNewer(String str) {
            super("GDroid " + str + " on GitHub is not newer than this build. Nothing was changed.");
        }
    }

    public static void requireIdentity(String str, String str2, long j, UpdateRelease.Candidate candidate, String str3, String str4, long j2, boolean z, Set<String> set, Set<String> set2) throws IOException {
        if (!str.equals(str3) || !str2.equals(str4) || !str2.equals(candidate.abi) || z) {
            throw new IOException("This APK is not a release of your installed app variant.");
        }
        if (set.isEmpty() || !set.equals(set2)) {
            throw new IOException("The update signing certificate does not match this installation. Keep the installed app; do not uninstall it to work around this error.");
        }
        if (j2 <= j) {
            throw new NotNewer(candidate.tag);
        }
    }

    private static Set<String> signatures(Signature[] signatureArr) {
        HashSet hashSet = new HashSet();
        if (signatureArr != null) {
            for (Signature signature : signatureArr) {
                hashSet.add(UpdateDownload.digest(signature.toByteArray()));
            }
        }
        return hashSet;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:66:0x012e A[Catch: all -> 0x012b, TRY_LEAVE, TryCatch #6 {all -> 0x012b, blocks: (B:12:0x0064, B:66:0x012e, B:63:0x0127, B:59:0x0121), top: B:89:0x0064, inners: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0121 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:83:0x0131 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r6v10, types: [android.content.pm.PackageInstaller$Session] */
    /* JADX WARN: Type inference failed for: r6v2 */
    /* JADX WARN: Type inference failed for: r6v5 */
    /* JADX WARN: Type inference failed for: r6v6, types: [android.content.pm.PackageInstaller$Session] */
    /* JADX WARN: Type inference failed for: r6v7 */
    /* JADX WARN: Type inference failed for: r6v8 */
    /* JADX WARN: Type inference failed for: r6v9 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static void install(android.content.Context r16, com.gmodvr.flat.UpdateManager r17, java.io.File r18, com.gmodvr.flat.UpdateRelease.Candidate r19) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 339
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.gmodvr.flat.UpdateInstaller.install(android.content.Context, com.gmodvr.flat.UpdateManager, java.io.File, com.gmodvr.flat.UpdateRelease$Candidate):void");
    }
}
