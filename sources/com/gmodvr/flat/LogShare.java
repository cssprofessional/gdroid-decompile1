package com.gmodvr.flat;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.ClipData;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.Toast;
import com.gmodvr.flat.DiagnosticReports;
import com.gmodvr.flat.LogBundle;
import in.dragonbra.javasteam.protobufs.steamclient.Enums;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Date;
import java.util.Locale;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
final class LogShare {
    static final long GL_TIMEOUT_MS = 5000;
    static final long LOGCAT_TIMEOUT_MS = 15000;
    static final int SHARE_KEEP_FILES = 3;
    static final long SHARE_KEEP_MS = 86400000;
    private static final String TAG = "GDroid";

    private LogShare() {
    }

    public static void share(final Activity activity, Skin skin, final File file, final Runnable runnable) {
        final Context applicationContext = activity.getApplicationContext();
        final Handler handler = new Handler(Looper.getMainLooper());
        LinearLayout linearLayout = new LinearLayout(activity);
        linearLayout.setOrientation(1);
        linearLayout.setPadding(skin.dp(24.0f), skin.dp(12.0f), skin.dp(24.0f), skin.dp(8.0f));
        linearLayout.addView(skin.text("Collecting the game's logs, crash reports and device details. Nothing is sent until you choose an app.", 13.5f, -7497309));
        ProgressBar progressBarProgress = skin.progress();
        progressBarProgress.setIndeterminate(true);
        LinearLayout.LayoutParams layoutParamsBelow = skin.below(14.0f);
        layoutParamsBelow.height = skin.dp(3.0f);
        linearLayout.addView(progressBarProgress, layoutParamsBelow);
        final AlertDialog alertDialogShow = new AlertDialog.Builder(activity).setTitle("Share logs").setView(linearLayout).setCancelable(false).show();
        CrashReporter.EXECUTOR.execute(new Runnable() { // from class: com.gmodvr.flat.LogShare$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                LogShare.lambda$share$1(applicationContext, file, handler, alertDialogShow, activity, runnable);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$share$1(final Context context, File file, Handler handler, final AlertDialog alertDialog, final Activity activity, final Runnable runnable) {
        File fileBuild;
        Exception exc = null;
        long j = 0;
        try {
            fileBuild = build(context, file);
        } catch (Exception e) {
            e = e;
            fileBuild = null;
        }
        try {
            DiagnosticReports.Report reportNewestCrash = DiagnosticReports.newestCrash(DiagnosticReports.list(CrashReporter.dir(context)));
            if (reportNewestCrash != null) {
                j = reportNewestCrash.epochMs;
            }
        } catch (Exception e2) {
            e = e2;
            exc = e;
            Log.e(TAG, "Share logs", exc);
        }
        final Exception exc2 = exc;
        final long j2 = j;
        final File file2 = fileBuild;
        handler.post(new Runnable() { // from class: com.gmodvr.flat.LogShare$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                LogShare.lambda$share$0(alertDialog, activity, exc2, file2, context, j2, runnable);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$share$0(AlertDialog alertDialog, Activity activity, Exception exc, File file, Context context, long j, Runnable runnable) {
        try {
            alertDialog.dismiss();
        } catch (Exception unused) {
        }
        if (activity.isFinishing() || activity.isDestroyed()) {
            return;
        }
        if (exc != null || file == null) {
            StringBuilder sb = new StringBuilder();
            sb.append("Could not collect logs: ");
            sb.append(exc == null ? "?" : exc.getMessage());
            Toast.makeText(activity, sb.toString(), 1).show();
            return;
        }
        CrashReporter.markBannerSeen(context, j);
        if (runnable != null) {
            runnable.run();
        }
        open(activity, file);
    }

    private static void open(Activity activity, File file) {
        Uri uriUriFor = DiagnosticsProvider.uriFor(activity, file);
        Intent intentAddFlags = new Intent("android.intent.action.SEND").setType("application/zip").putExtra("android.intent.extra.STREAM", uriUriFor).putExtra("android.intent.extra.SUBJECT", activity.getString(R.string.app_name) + " logs " + CrashReporter.appVersion()).putExtra("android.intent.extra.TEXT", activity.getString(R.string.app_name) + " " + CrashReporter.appVersion() + " on " + CrashReporter.device()).addFlags(1);
        intentAddFlags.setClipData(ClipData.newRawUri(file.getName(), uriUriFor));
        Intent intentCreateChooser = Intent.createChooser(intentAddFlags, "Share logs");
        intentCreateChooser.addFlags(1);
        try {
            activity.startActivity(intentCreateChooser);
        } catch (Exception e) {
            Toast.makeText(activity, "No app can share the logs: " + e.getMessage(), 1).show();
        }
    }

    public static File build(Context context, File file) throws IOException {
        String strReport;
        File fileDir = CrashReporter.dir(context);
        try {
            CrashReporter.recordExits(context);
        } catch (Exception e) {
            Log.w(TAG, "Exit scan", e);
        }
        DiagnosticReports.prune(fileDir, 5, 4194304L, 3, System.currentTimeMillis());
        LogBundle.Input input = new LogBundle.Input();
        input.diagDir = fileDir;
        input.focus = file;
        try {
            strReport = GlProbe.report(GL_TIMEOUT_MS);
        } catch (Throwable th) {
            strReport = "GL probe failed: " + th + "\n";
        }
        try {
            input.report = DeviceReport.build(context, strReport);
        } catch (Throwable th2) {
            input.report = "report failed: " + th2 + "\n\n" + strReport;
        }
        try {
            input.exitInfo = CrashReporter.exitHistory(context);
        } catch (Throwable th3) {
            input.exitInfo = "exit history failed: " + th3 + "\n";
        }
        captureLogcat(input);
        File fileShareDir = DiagnosticsProvider.shareDir(context);
        if (!fileShareDir.isDirectory() && !fileShareDir.mkdirs()) {
            throw new IOException("Cannot create " + fileShareDir);
        }
        cleanShareDir(fileShareDir, System.currentTimeMillis());
        String str = "gdroid-logs-" + new SimpleDateFormat("yyyyMMdd-HHmmss", Locale.ROOT).format(new Date()) + ".zip";
        File file2 = new File(fileShareDir, str);
        File file3 = new File(fileShareDir, str + ".part");
        BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(file3));
        try {
            LogBundle.write(input, bufferedOutputStream);
            bufferedOutputStream.close();
            if (file3.renameTo(file2)) {
                return file2;
            }
            throw new IOException("Cannot write " + file2);
        } catch (Throwable th4) {
            try {
                bufferedOutputStream.close();
            } catch (Throwable th5) {
                th4.addSuppressed(th5);
            }
            throw th4;
        }
    }

    public static void cleanShareDir(File file, long j) {
        File[] fileArrListFiles = file.listFiles();
        if (fileArrListFiles == null) {
            return;
        }
        Arrays.sort(fileArrListFiles, new Comparator() { // from class: com.gmodvr.flat.LogShare$$ExternalSyntheticLambda1
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return LogShare.lambda$cleanShareDir$2((File) obj, (File) obj2);
            }
        });
        for (int i = 0; i < fileArrListFiles.length; i++) {
            if (i >= 2 || j - fileArrListFiles[i].lastModified() > SHARE_KEEP_MS) {
                fileArrListFiles[i].delete();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int lambda$cleanShareDir$2(File file, File file2) {
        return Long.compare(file2.lastModified(), file.lastModified());
    }

    private static void captureLogcat(LogBundle.Input input) {
        final LogBundle.TailBuffer tailBuffer = new LogBundle.TailBuffer(4194304);
        Process processStart = null;
        try {
            processStart = new ProcessBuilder("logcat", "-d", "-v", "threadtime", "-t", "20000").redirectErrorStream(true).start();
            final InputStream inputStream = processStart.getInputStream();
            Thread thread = new Thread(new Runnable() { // from class: com.gmodvr.flat.LogShare$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    LogShare.lambda$captureLogcat$3(inputStream, tailBuffer);
                }
            }, "GDroid-logcat");
            thread.setDaemon(true);
            thread.start();
            if (!processStart.waitFor(LOGCAT_TIMEOUT_MS, TimeUnit.MILLISECONDS)) {
                input.logcatError = "timed out after 15000 ms; partial output";
                processStart.destroyForcibly();
            }
            thread.join(2000L);
        } catch (Exception e) {
            input.logcatError = e.toString();
            if (processStart != null) {
                processStart.destroyForcibly();
            }
        }
        synchronized (tailBuffer) {
            input.logcat = tailBuffer.tail();
            input.logcatOmitted = tailBuffer.omitted();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$captureLogcat$3(InputStream inputStream, LogBundle.TailBuffer tailBuffer) {
        byte[] bArr = new byte[Enums.EProtoAppType.k_EAppTypeBeta_VALUE];
        while (true) {
            try {
                int i = inputStream.read(bArr);
                if (i <= 0) {
                    return;
                }
                synchronized (tailBuffer) {
                    tailBuffer.write(bArr, 0, i);
                }
            } catch (IOException unused) {
                return;
            }
        }
    }
}
