package com.gmodvr.flat;

import android.app.ActivityManager;
import android.app.Application;
import android.app.ApplicationExitInfo;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import android.os.Process;
import android.system.Os;
import android.util.Log;
import com.gmodvr.flat.DiagnosticReports;
import com.gmodvr.flat.ExitReasons;
import in.dragonbra.javasteam.protobufs.steamclient.Enums;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.lang.Thread;
import java.nio.charset.StandardCharsets;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;

/* JADX INFO: loaded from: classes.dex */
final class CrashReporter {
    static final String BANNER_SEEN = "banner_seen";
    static final ExecutorService EXECUTOR = Executors.newSingleThreadExecutor(new ThreadFactory() { // from class: com.gmodvr.flat.CrashReporter$$ExternalSyntheticLambda12
        @Override // java.util.concurrent.ThreadFactory
        public final Thread newThread(Runnable runnable) {
            return CrashReporter.lambda$static$0(runnable);
        }
    });
    static final String EXIT_LAST_SEEN = "exit_last_seen";
    static final String PREFS = "diagnostics";
    private static final String TAG = "GDroid";
    static final int TRACE_CAP = 1048576;
    private static boolean installed;

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Thread lambda$static$0(Runnable runnable) {
        Thread thread = new Thread(runnable, "GDroid-diagnostics");
        thread.setDaemon(true);
        return thread;
    }

    private CrashReporter() {
    }

    public static File dir(Context context) {
        File file = new File(context.getFilesDir(), PREFS);
        if (!file.isDirectory() && !file.mkdirs()) {
            Log.w(TAG, "Cannot create " + file);
        }
        return file;
    }

    public static String appVersion() {
        return "0.1.29 (43) release";
    }

    public static String device() {
        return Build.MANUFACTURER + " " + Build.MODEL + " (" + Build.DEVICE + "), Android " + Build.VERSION.RELEASE + " / API " + Build.VERSION.SDK_INT;
    }

    public static synchronized void install(Context context) {
        if (installed) {
            return;
        }
        installed = true;
        final File fileDir = dir(context);
        final String processName = Application.getProcessName();
        final Thread.UncaughtExceptionHandler defaultUncaughtExceptionHandler = Thread.getDefaultUncaughtExceptionHandler();
        Thread.setDefaultUncaughtExceptionHandler(new Thread.UncaughtExceptionHandler() { // from class: com.gmodvr.flat.CrashReporter$$ExternalSyntheticLambda13
            @Override // java.lang.Thread.UncaughtExceptionHandler
            public final void uncaughtException(Thread thread, Throwable th) {
                CrashReporter.lambda$install$1(fileDir, processName, defaultUncaughtExceptionHandler, thread, th);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$install$1(File file, String str, Thread.UncaughtExceptionHandler uncaughtExceptionHandler, Thread thread, Throwable th) {
        try {
            long jCurrentTimeMillis = System.currentTimeMillis();
            writeAtomically(new File(file, "java-crash-" + jCurrentTimeMillis + ".txt"), javaCrashReport(appVersion(), str, thread.getName(), thread.getId(), device(), jCurrentTimeMillis, th).getBytes(StandardCharsets.UTF_8));
        } catch (Throwable unused) {
        }
        if (uncaughtExceptionHandler != null) {
            uncaughtExceptionHandler.uncaughtException(thread, th);
        } else {
            Process.killProcess(Process.myPid());
            System.exit(10);
        }
    }

    public static String javaCrashReport(String str, String str2, String str3, long j, String str4, long j2, Throwable th) {
        StringWriter stringWriter = new StringWriter();
        th.printStackTrace(new PrintWriter(stringWriter));
        return "GDroid Java crash\napp: " + str + "\nprocess: " + str2 + "\nthread: " + str3 + " (" + j + ")\ntime: " + ExitReasons.time(j2) + " (" + j2 + ")\ndevice: " + str4 + "\n\n" + stringWriter;
    }

    public static void writeAtomically(File file, byte[] bArr) throws IOException {
        File file2 = new File(file.getPath() + ".part");
        FileOutputStream fileOutputStream = new FileOutputStream(file2);
        try {
            fileOutputStream.write(bArr);
            fileOutputStream.flush();
            fileOutputStream.getFD().sync();
            fileOutputStream.close();
            if (file2.renameTo(file)) {
                return;
            }
            throw new IOException("rename " + file2);
        } catch (Throwable th) {
            try {
                fileOutputStream.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    public static void exportEnvironment(Context context) {
        try {
            Os.setenv("GMODVR_DIAG_DIR", dir(context).getAbsolutePath(), true);
            Os.setenv("GMODVR_APP_VERSION", appVersion(), true);
            Os.unsetenv("GMODVR_DEBUG_APP");
        } catch (Exception e) {
            Log.w(TAG, "Diagnostics environment", e);
        }
    }

    public static void markCleanExit(Context context) {
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(new File(dir(context), "clean-exit-" + Process.myPid()));
            try {
                fileOutputStream.write(Long.toString(System.currentTimeMillis()).getBytes(StandardCharsets.UTF_8));
                fileOutputStream.close();
            } finally {
            }
        } catch (Exception e) {
            Log.w(TAG, "Clean-exit marker", e);
        }
    }

    public static ExitReasons.Record record(ApplicationExitInfo applicationExitInfo) {
        return new ExitReasons.Record(applicationExitInfo.getTimestamp(), applicationExitInfo.getPid(), applicationExitInfo.getProcessName(), applicationExitInfo.getReason(), applicationExitInfo.getStatus(), applicationExitInfo.getImportance(), applicationExitInfo.getPss(), applicationExitInfo.getRss(), applicationExitInfo.getDescription());
    }

    private static List<ApplicationExitInfo> exits(Context context, int i) {
        if (Build.VERSION.SDK_INT < 30) {
            return Collections.emptyList();
        }
        try {
            List<ApplicationExitInfo> historicalProcessExitReasons = ((ActivityManager) context.getSystemService(ActivityManager.class)).getHistoricalProcessExitReasons(context.getPackageName(), 0, i);
            return historicalProcessExitReasons == null ? Collections.emptyList() : historicalProcessExitReasons;
        } catch (Exception e) {
            Log.w(TAG, "Exit reasons", e);
            return Collections.emptyList();
        }
    }

    public static void recordExits(Context context) {
        if (Build.VERSION.SDK_INT < 30) {
            return;
        }
        SharedPreferences sharedPreferences = context.getSharedPreferences(PREFS, 0);
        long j = sharedPreferences.getLong(EXIT_LAST_SEEN, -1L);
        List<ApplicationExitInfo> listExits = exits(context, 10);
        long jMax = Math.max(j, 0L);
        Iterator<ApplicationExitInfo> it = listExits.iterator();
        while (it.hasNext()) {
            jMax = Math.max(jMax, CrashReporter$$ExternalSyntheticApiModelOutline10.m(it.next()).getTimestamp());
        }
        if (j < 0) {
            sharedPreferences.edit().putLong(EXIT_LAST_SEEN, Math.max(jMax, System.currentTimeMillis())).apply();
            return;
        }
        File fileDir = dir(context);
        Map<Integer, Long> mapCleanExitMarkers = DiagnosticReports.cleanExitMarkers(fileDir);
        String packageName = context.getPackageName();
        Iterator<ApplicationExitInfo> it2 = listExits.iterator();
        while (it2.hasNext()) {
            ApplicationExitInfo applicationExitInfoM = CrashReporter$$ExternalSyntheticApiModelOutline10.m(it2.next());
            if (applicationExitInfoM.getTimestamp() > j) {
                ExitReasons.Record record = record(applicationExitInfoM);
                boolean zCleanExit = ExitReasons.cleanExit(record, mapCleanExitMarkers);
                if (zCleanExit) {
                    new File(fileDir, "clean-exit-" + record.pid).delete();
                }
                if (ExitReasons.abnormal(record, packageName, zCleanExit)) {
                    try {
                        writeExitReport(fileDir, applicationExitInfoM, record);
                    } catch (Exception e) {
                        Log.w(TAG, "Exit report", e);
                    }
                }
            }
        }
        if (jMax > j) {
            sharedPreferences.edit().putLong(EXIT_LAST_SEEN, jMax).apply();
        }
    }

    private static void writeExitReport(File file, ApplicationExitInfo applicationExitInfo, ExitReasons.Record record) throws IOException {
        String str = "exit-" + record.timestamp;
        if (new File(file, str + ".txt").exists()) {
            str = str + "-" + record.pid;
        }
        StringBuilder sb = new StringBuilder("GDroid abnormal exit\napp: ");
        sb.append(appVersion());
        sb.append("\ndevice: ");
        sb.append(device());
        sb.append("\n\n");
        sb.append(ExitReasons.format(record));
        byte[] capped = null;
        try {
            InputStream traceInputStream = applicationExitInfo.getTraceInputStream();
            if (traceInputStream != null) {
                try {
                    capped = readCapped(traceInputStream, TRACE_CAP);
                } finally {
                }
            }
            if (traceInputStream != null) {
                traceInputStream.close();
            }
        } catch (Exception e) {
            sb.append("trace: unreadable (");
            sb.append(e.getMessage());
            sb.append(")\n");
        }
        if (capped != null) {
            if (record.reason == 5) {
                File file2 = new File(file, str + ".tombstone.pb");
                writeAtomically(file2, capped);
                sb.append("tombstone: ");
                sb.append(file2.getName());
                sb.append(" (");
                sb.append(capped.length);
                sb.append(" bytes, Android tombstone protobuf");
                sb.append(capped.length >= TRACE_CAP ? ", truncated" : "");
                sb.append(")\n");
            } else {
                sb.append("\n---- trace");
                sb.append(capped.length >= TRACE_CAP ? " (truncated)" : "");
                sb.append(" ----\n");
                sb.append(new String(capped, StandardCharsets.UTF_8));
                sb.append('\n');
            }
        }
        writeAtomically(new File(file, str + ".txt"), sb.toString().getBytes(StandardCharsets.UTF_8));
    }

    public static byte[] readCapped(InputStream inputStream, int i) throws IOException {
        int i2;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[Enums.EProtoAppType.k_EAppTypeSeries_VALUE];
        while (byteArrayOutputStream.size() < i && (i2 = inputStream.read(bArr, 0, Math.min(Enums.EProtoAppType.k_EAppTypeSeries_VALUE, i - byteArrayOutputStream.size()))) > 0) {
            byteArrayOutputStream.write(bArr, 0, i2);
        }
        return byteArrayOutputStream.toByteArray();
    }

    public static String exitHistory(Context context) {
        if (Build.VERSION.SDK_INT < 30) {
            return null;
        }
        List<ApplicationExitInfo> listExits = exits(context, 16);
        Map<Integer, Long> mapCleanExitMarkers = DiagnosticReports.cleanExitMarkers(dir(context));
        StringBuilder sb = new StringBuilder("ApplicationExitInfo, newest first (" + listExits.size() + ")\n");
        Iterator<ApplicationExitInfo> it = listExits.iterator();
        while (it.hasNext()) {
            ExitReasons.Record record = record(CrashReporter$$ExternalSyntheticApiModelOutline10.m(it.next()));
            sb.append("\n");
            sb.append(ExitReasons.format(record));
            sb.append("classified: ");
            sb.append(ExitReasons.abnormal(record, context.getPackageName(), ExitReasons.cleanExit(record, mapCleanExitMarkers)) ? "abnormal" : "normal");
            sb.append('\n');
        }
        return sb.toString();
    }

    public static long bannerSeen(Context context) {
        return context.getSharedPreferences(PREFS, 0).getLong(BANNER_SEEN, 0L);
    }

    public static void markBannerSeen(Context context, long j) {
        context.getSharedPreferences(PREFS, 0).edit().putLong(BANNER_SEEN, Math.max(System.currentTimeMillis(), j)).apply();
    }

    public static DiagnosticReports.Report scan(Context context) {
        try {
            recordExits(context);
        } catch (Exception e) {
            Log.w(TAG, "Exit scan", e);
        }
        File fileDir = dir(context);
        DiagnosticReports.prune(fileDir, 5, 4194304L, 3, System.currentTimeMillis());
        return DiagnosticReports.bannerReport(DiagnosticReports.list(fileDir), bannerSeen(context));
    }
}
