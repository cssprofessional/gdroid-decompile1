package com.gmodvr.flat;

import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.app.Service;
import android.content.Intent;
import android.graphics.drawable.Icon;
import android.os.IBinder;
import android.os.PowerManager;
import com.gmodvr.flat.UpdateManager;
import com.gmodvr.flat.UpdateRelease;

/* JADX INFO: loaded from: classes.dex */
public final class UpdateDownloadService extends Service implements UpdateManager.Listener {
    private static final String CHANNEL = "gdroid_updates";
    static final String DOWNLOAD = "com.gmodvr.flat.UPDATE_DOWNLOAD";
    static final String INSTALL = "com.gmodvr.flat.UPDATE_INSTALL";
    private static final int NOTIFICATION = 4201;
    static final String PAUSE = "com.gmodvr.flat.UPDATE_PAUSE";
    private boolean transferring;
    private UpdateManager updates;
    private PowerManager.WakeLock wakeLock;

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        this.updates = UpdateManager.get(this);
        ((NotificationManager) getSystemService(NotificationManager.class)).createNotificationChannel(new NotificationChannel(CHANNEL, getString(R.string.updates_title), 2));
        this.updates.listen(this);
        this.wakeLock = ((PowerManager) getSystemService(PowerManager.class)).newWakeLock(1, "GDroid:UpdateDownload");
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        startForeground(NOTIFICATION, notification(), 1);
        if (intent != null && PAUSE.equals(intent.getAction())) {
            this.updates.pause();
            if (!this.transferring) {
                stopSelf();
            }
            return 2;
        }
        if (!this.transferring && intent != null && (DOWNLOAD.equals(intent.getAction()) || INSTALL.equals(intent.getAction()))) {
            this.wakeLock.acquire(14400000L);
            this.transferring = this.updates.transfer(INSTALL.equals(intent.getAction()), new Runnable() { // from class: com.gmodvr.flat.UpdateDownloadService$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onStartCommand$0();
                }
            });
        }
        if (!this.transferring) {
            stopForeground(1);
            stopSelf();
        }
        return 2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onStartCommand$0() {
        this.transferring = false;
        stopForeground(1);
        stopSelf();
    }

    private Notification notification() {
        UpdateManager.Snapshot snapshot = this.updates.snapshot();
        Notification.Builder ongoing = new Notification.Builder(this, CHANNEL).setSmallIcon(android.R.drawable.stat_sys_download).setContentTitle(getString(R.string.updates_title)).setContentText(UpdateSettingsActivity.status(this, snapshot)).setContentIntent(PendingIntent.getActivity(this, 0, new Intent(this, (Class<?>) UpdateSettingsActivity.class), 201326592)).setOnlyAlertOnce(true).setOngoing(true);
        UpdateRelease.Candidate candidate = snapshot.candidate;
        if (candidate != null && snapshot.phase == UpdateManager.Phase.DOWNLOADING) {
            ongoing.setProgress(100, (int) ((snapshot.downloaded * 100) / candidate.size), false);
            ongoing.addAction(new Notification.Action.Builder((Icon) null, getString(R.string.updates_pause), PendingIntent.getService(this, 1, new Intent(this, (Class<?>) UpdateDownloadService.class).setAction(PAUSE), 201326592)).build());
        } else {
            ongoing.setProgress(0, 0, true);
        }
        return ongoing.build();
    }

    @Override // com.gmodvr.flat.UpdateManager.Listener
    public void changed() {
        if (this.transferring) {
            ((NotificationManager) getSystemService(NotificationManager.class)).notify(NOTIFICATION, notification());
        }
    }

    @Override // android.app.Service
    public void onDestroy() {
        this.updates.unlisten(this);
        PowerManager.WakeLock wakeLock = this.wakeLock;
        if (wakeLock != null && wakeLock.isHeld()) {
            this.wakeLock.release();
        }
        super.onDestroy();
    }
}
