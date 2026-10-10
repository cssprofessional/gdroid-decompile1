package com.gmodvr.flat;

import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.app.Service;
import android.content.Intent;
import android.graphics.drawable.Icon;
import android.net.Uri;
import android.os.Build;
import android.os.IBinder;
import android.os.PowerManager;
import com.gmodvr.flat.MoveImporter;
import com.gmodvr.flat.Storage;
import java.io.File;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public final class ImportService extends Service {
    private static final String CHANNEL = "content_import";
    private static final int NOTICE = 620;
    static volatile boolean running;
    private volatile boolean cancelled;
    private int percent;
    private PowerManager.WakeLock wake;

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        ((NotificationManager) getSystemService(NotificationManager.class)).createNotificationChannel(new NotificationChannel(CHANNEL, "Game import", 2));
    }

    @Override // android.app.Service
    public int onStartCommand(final Intent intent, int i, int i2) {
        if (intent == null) {
            stopSelf();
            return 2;
        }
        if ("cancel".equals(intent.getAction())) {
            this.cancelled = true;
            return 2;
        }
        if (running) {
            return 2;
        }
        running = true;
        this.cancelled = false;
        this.percent = 0;
        status("Checking core game files…", false);
        startForeground(NOTICE, notification("Preparing game import…", 0));
        PowerManager.WakeLock wakeLockNewWakeLock = ((PowerManager) getSystemService(PowerManager.class)).newWakeLock(1, "GDroid:Import");
        this.wake = wakeLockNewWakeLock;
        wakeLockNewWakeLock.acquire(21600000L);
        final Uri data = intent.getData();
        final String stringExtra = intent.getStringExtra("profile");
        new Thread(new Runnable() { // from class: com.gmodvr.flat.ImportService$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$onStartCommand$0(data, stringExtra, intent);
            }
        }, "GDroid-content-import").start();
        return 2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onStartCommand$0(Uri uri, String str, Intent intent) {
        Storage.Lease leaseLock;
        try {
            try {
                leaseLock = Storage.lock(this);
            } catch (Exception e) {
                status(e.getMessage() == null ? e.toString() : e.getMessage(), true);
                running = false;
                PowerManager.WakeLock wakeLock = this.wake;
                if (wakeLock != null && wakeLock.isHeld()) {
                }
            }
            try {
                if (uri == null) {
                    throw new IOException("No content folder was selected");
                }
                importContent(uri, intent.getBooleanExtra("copy", false), str != null ? GameContentProfile.forId(str) : GameContentProfile.DEFAULT);
                status("Import complete. Game is ready.", false);
                if (leaseLock != null) {
                    leaseLock.close();
                }
            } catch (Throwable th) {
                if (leaseLock != null) {
                    try {
                        leaseLock.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                }
                throw th;
            }
        } finally {
            running = false;
            PowerManager.WakeLock wakeLock2 = this.wake;
            if (wakeLock2 != null && wakeLock2.isHeld()) {
                this.wake.release();
            }
            stopForeground(1);
            stopSelf();
        }
    }

    public void onTimeout(int i, int i2) {
        this.cancelled = true;
        stopSelf();
    }

    @Override // android.app.Service
    public void onDestroy() {
        this.cancelled = true;
        super.onDestroy();
    }

    private void checkCancel() throws IOException {
        if (this.cancelled) {
            throw new IOException("Import paused. Select the same parent folder to resume.");
        }
    }

    private Notification notification(String str, int i) {
        return new Notification.Builder(this, CHANNEL).setSmallIcon(android.R.drawable.stat_sys_download).setContentTitle("Importing Source Game").setContentText(str).setContentIntent(PendingIntent.getActivity(this, 0, new Intent(this, (Class<?>) LauncherActivity.class), 67108864)).setOngoing(true).setOnlyAlertOnce(true).setProgress(100, Math.max(0, i), i < 0).addAction(new Notification.Action.Builder((Icon) null, "Pause", PendingIntent.getService(this, 1, new Intent(this, (Class<?>) ImportService.class).setAction("cancel"), 67108864)).build()).build();
    }

    private void status(String str, boolean z) {
        getSharedPreferences("import", 0).edit().putString("status", str).putBoolean("error", z).putInt("progress", this.percent).apply();
    }

    private void progress(String str, int i) {
        this.percent = i;
        status(str, false);
        if (Build.VERSION.SDK_INT < 33 || checkSelfPermission("android.permission.POST_NOTIFICATIONS") == 0) {
            ((NotificationManager) getSystemService(NotificationManager.class)).notify(NOTICE, notification(str, this.percent));
        }
    }

    private void importContent(Uri uri, boolean z, GameContentProfile gameContentProfile) throws IOException {
        if (!LocalFolder.hasAccess(this)) {
            throw new IOException("Allow file access, then select the game folder again.");
        }
        File fileDestination = LocalFolder.destination(this);
        String strInstallFolder = GameFolder.installFolder(gameContentProfile);
        if (strInstallFolder != null) {
            File file = new File(fileDestination, strInstallFolder);
            Storage.mkdir(file);
            fileDestination = file;
        }
        File fileResolve = null;
        if (!z) {
            try {
                fileResolve = LocalFolder.resolve(this, uri);
            } catch (IOException unused) {
                z = true;
            }
        }
        if (CopyImporter.staging(fileDestination).exists()) {
            z = true;
        }
        if (!z) {
            try {
                MoveImporter.move(fileResolve, fileDestination, gameContentProfile, new MoveImporter.Progress() { // from class: com.gmodvr.flat.ImportService$$ExternalSyntheticLambda0
                    @Override // com.gmodvr.flat.MoveImporter.Progress
                    public final void update(String str, int i) throws IOException {
                        this.f$0.lambda$importContent$1(str, i);
                    }
                });
            } catch (MoveImporter.MoveUnavailable unused2) {
                z = true;
            }
        }
        if (z) {
            new CopyImporter(new DocumentSource(getContentResolver(), uri), new MoveImporter.Progress() { // from class: com.gmodvr.flat.ImportService$$ExternalSyntheticLambda1
                @Override // com.gmodvr.flat.MoveImporter.Progress
                public final void update(String str, int i) throws IOException {
                    this.f$0.lambda$importContent$2(str, i);
                }
            }).copy(fileDestination);
        }
        if (!getSharedPreferences("storage", 0).edit().putBoolean("shared_content", true).remove("custom_content").commit()) {
            throw new IOException("Files imported, but Android could not save the new location. Select the same source folder to finish.");
        }
        progress("Finishing · removing the previous app copy…", 95);
        File file2 = new File(Storage.root(this), "content");
        if (new File(file2, ".complete").isFile()) {
            Storage.delete(file2);
        }
        File file3 = new File(Storage.root(this), "import.pending");
        if (new File(file3, ".origin").isFile()) {
            Storage.delete(file3);
        }
        progress("Import complete. Game files are ready.", 100);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$importContent$1(String str, int i) throws IOException {
        if (i < 100) {
            checkCancel();
        }
        progress(str, (i * 90) / 100);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$importContent$2(String str, int i) throws IOException {
        if (i < 100) {
            checkCancel();
        }
        progress(str, i < 0 ? -1 : (i * 90) / 100);
    }
}
