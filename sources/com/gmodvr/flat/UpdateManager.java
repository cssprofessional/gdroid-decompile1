package com.gmodvr.flat;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import com.gmodvr.flat.UpdateDownload;
import com.gmodvr.flat.UpdateInstaller;
import com.gmodvr.flat.UpdateRelease;
import java.io.File;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.SocketTimeoutException;
import java.net.URISyntaxException;
import java.net.UnknownHostException;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.UUID;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* JADX INFO: loaded from: classes.dex */
final class UpdateManager {
    static final long CHECK_INTERVAL_MS = 86400000;
    private static UpdateManager instance;
    private boolean busy;
    private volatile boolean canceled;
    private final Context context;
    private final File directory;
    private long lastProgress;
    private final SharedPreferences preferences;
    private volatile Snapshot state;
    private final ExecutorService worker = Executors.newSingleThreadExecutor();
    private final Handler main = new Handler(Looper.getMainLooper());
    private final Set<Listener> listeners = new HashSet();

    public interface Listener {
        void changed();
    }

    public enum Phase {
        IDLE,
        CHECKING,
        AVAILABLE,
        DOWNLOADING,
        VERIFYING,
        PAUSED,
        READY,
        INSTALLING,
        CONFIRMATION
    }

    public static boolean checkDue(boolean z, long j, long j2) {
        return z && (j == 0 || j2 < j || j2 - j >= CHECK_INTERVAL_MS);
    }

    public static synchronized UpdateManager get(Context context) {
        try {
            if (instance == null) {
                instance = new UpdateManager(context.getApplicationContext());
            }
        } catch (Throwable th) {
            throw th;
        }
        return instance;
    }

    public static final class Snapshot {
        final UpdateRelease.Candidate candidate;
        final long downloaded;
        final String message;
        final Phase phase;

        public Snapshot(Phase phase, UpdateRelease.Candidate candidate, String str, long j) {
            this.phase = phase;
            this.candidate = candidate;
            this.message = str;
            this.downloaded = j;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0089  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private UpdateManager(android.content.Context r13) {
        /*
            Method dump skipped, instruction units count: 240
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.gmodvr.flat.UpdateManager.<init>(android.content.Context):void");
    }

    private static String notNewerKey(String str) {
        return str + "@43";
    }

    public Snapshot snapshot() {
        return this.state;
    }

    public boolean automatic() {
        return this.preferences.getBoolean("automatic", false);
    }

    public synchronized boolean busy() {
        return this.busy;
    }

    public boolean installing() {
        return this.state.phase == Phase.INSTALLING || this.state.phase == Phase.CONFIRMATION;
    }

    public boolean isCanceled() {
        return this.canceled;
    }

    public synchronized void listen(Listener listener) {
        this.listeners.add(listener);
    }

    public synchronized void unlisten(Listener listener) {
        this.listeners.remove(listener);
    }

    public void setAutomatic(boolean z) {
        this.preferences.edit().putBoolean("automatic", z).apply();
        if (z) {
            checkAutomatic();
        }
    }

    public static boolean announces(boolean z, Snapshot snapshot) {
        Phase phase;
        if (snapshot.candidate == null) {
            return false;
        }
        return z || !((phase = snapshot.phase) == Phase.AVAILABLE || phase == Phase.CHECKING || phase == Phase.IDLE);
    }

    public void checkAutomatic() {
        if (checkDue(automatic(), this.preferences.getLong("last_check", 0L), System.currentTimeMillis())) {
            check();
        }
    }

    public synchronized void check() {
        if (!this.busy && !installing()) {
            this.busy = true;
            final UpdateRelease.Candidate candidate = this.state.candidate;
            this.preferences.edit().putLong("last_check", System.currentTimeMillis()).apply();
            publish(new Snapshot(Phase.CHECKING, candidate, "", this.state.downloaded));
            this.worker.execute(new Runnable() { // from class: com.gmodvr.flat.UpdateManager$$ExternalSyntheticLambda7
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$check$1(candidate);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$check$1(UpdateRelease.Candidate candidate) {
        try {
            UpdateRelease.Candidate candidateSelect = new UpdateRelease(UpdateHttp.text(UpdateHttp.read("https://api.github.com/repos/tinsarfal/GDroid/releases/latest", 1048576))).select(BuildConfig.UPDATE_ABI, BuildConfig.VERSION_NAME);
            String strEncode = "";
            String str = candidateSelect == null ? "You are up to date." : "";
            if (candidateSelect != null && notNewerKey(candidateSelect.tag).equals(this.preferences.getString("not_newer", ""))) {
                str = "GDroid " + candidateSelect.tag + " on GitHub is not newer than this build.";
                candidateSelect = null;
            }
            SharedPreferences.Editor editorEdit = this.preferences.edit();
            if (candidateSelect != null) {
                strEncode = candidateSelect.encode();
            }
            if (!editorEdit.putString("candidate", strEncode).commit()) {
                throw new IOException("Cannot save update information.");
            }
            lambda$new$0(candidateSelect);
            finish(resting(candidateSelect, str));
        } catch (Exception e) {
            finish(resting(candidate, readable(e)));
        }
    }

    public synchronized boolean transfer(final boolean z, final Runnable runnable) {
        try {
            if (!this.busy && !installing() && this.state.candidate != null) {
                final UpdateRelease.Candidate candidate = this.state.candidate;
                this.busy = true;
                this.canceled = false;
                this.lastProgress = 0L;
                publish(new Snapshot(z ? Phase.INSTALLING : Phase.DOWNLOADING, candidate, "", this.state.downloaded));
                this.worker.execute(new Runnable() { // from class: com.gmodvr.flat.UpdateManager$$ExternalSyntheticLambda3
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$transfer$3(z, candidate, runnable);
                    }
                });
                return true;
            }
            return false;
        } finally {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$transfer$3(boolean z, final UpdateRelease.Candidate candidate, Runnable runnable) {
        try {
            try {
                if (z) {
                    UpdateInstaller.install(this.context, this, UpdateDownload.apk(this.directory, candidate), candidate);
                    synchronized (this) {
                        this.busy = false;
                    }
                    notifyListeners();
                } else {
                    File fileDownloadWithRetries = UpdateDownload.downloadWithRetries(this.directory, candidate, new UpdateDownload.ConnectionFactory() { // from class: com.gmodvr.flat.UpdateManager$$ExternalSyntheticLambda4
                        @Override // com.gmodvr.flat.UpdateDownload.ConnectionFactory
                        public final HttpURLConnection open(String str, Map map) {
                            return UpdateHttp.open(str, map);
                        }
                    }, new UpdateInstaller$$ExternalSyntheticLambda1(this), new UpdateDownload.Progress() { // from class: com.gmodvr.flat.UpdateManager$$ExternalSyntheticLambda5
                        @Override // com.gmodvr.flat.UpdateDownload.Progress
                        public final void update(long j, boolean z2) {
                            this.f$0.lambda$transfer$2(candidate, j, z2);
                        }
                    }, new UpdateDownload.Sleeper() { // from class: com.gmodvr.flat.UpdateManager$$ExternalSyntheticLambda6
                        @Override // com.gmodvr.flat.UpdateDownload.Sleeper
                        public final void sleep(long j) throws InterruptedException {
                            Thread.sleep(j);
                        }
                    });
                    try {
                        UpdateInstaller.verify(this.context, fileDownloadWithRetries, candidate);
                        finish(new Snapshot(Phase.READY, candidate, "", candidate.size));
                    } catch (UpdateInstaller.NotNewer e) {
                        UpdateDownload.remove(fileDownloadWithRetries);
                        this.preferences.edit().putString("not_newer", notNewerKey(candidate.tag)).remove("candidate").commit();
                        finish(resting(null, e.getMessage()));
                    } catch (IOException e2) {
                        UpdateDownload.remove(fileDownloadWithRetries);
                        throw e2;
                    }
                }
            } catch (Exception e3) {
                finish(resting(candidate, (z && this.canceled) ? "Installation canceled. Your current version is unchanged." : readable(e3)));
            }
        } finally {
            this.main.post(runnable);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: progress, reason: merged with bridge method [inline-methods] */
    public synchronized void lambda$transfer$2(UpdateRelease.Candidate candidate, long j, boolean z) {
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        if (z || j == candidate.size || jElapsedRealtime - this.lastProgress >= 400) {
            this.lastProgress = jElapsedRealtime;
            publish(new Snapshot(z ? Phase.VERIFYING : Phase.DOWNLOADING, candidate, "", j));
        }
    }

    public synchronized void pause() {
        this.canceled = true;
    }

    public synchronized void discard() {
        if (!this.busy && !installing()) {
            final UpdateRelease.Candidate candidate = this.state.candidate;
            if (candidate == null) {
                return;
            }
            this.busy = true;
            this.worker.execute(new Runnable() { // from class: com.gmodvr.flat.UpdateManager$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$discard$4(candidate);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$discard$4(UpdateRelease.Candidate candidate) {
        try {
            UpdateDownload.remove(UpdateDownload.part(this.directory, candidate));
            UpdateDownload.remove(UpdateDownload.apk(this.directory, candidate));
            finish(resting(candidate, "Download removed."));
        } catch (IOException e) {
            finish(resting(candidate, readable(e)));
        }
    }

    public synchronized String recordSession(int i) throws IOException {
        String string;
        string = UUID.randomUUID().toString();
        if (!this.preferences.edit().putInt("session", i).putString("session_token", string).remove("confirmation").commit()) {
            throw new IOException("Cannot save the installation session.");
        }
        return string;
    }

    public synchronized void clearSession() {
        this.preferences.edit().remove("session").remove("session_token").remove("confirmation").commit();
    }

    public synchronized void installResult(Intent intent) {
        String str;
        int i = this.preferences.getInt("session", -1);
        String string = this.preferences.getString("session_token", "");
        Uri uri = Uri.parse("gdroid-update://install/" + i + "/" + string);
        if (i >= 0 && !string.isEmpty() && "com.gmodvr.flat.UPDATE_INSTALL_STATUS".equals(intent.getAction()) && uri.equals(intent.getData()) && intent.getIntExtra("android.content.pm.extra.SESSION_ID", -1) == i) {
            int intExtra = intent.getIntExtra("android.content.pm.extra.STATUS", 1);
            if (intExtra == -1) {
                Intent intent2 = (Intent) intent.getParcelableExtra("android.intent.extra.INTENT");
                if (intent2 == null) {
                    cancelInstallation();
                } else {
                    this.preferences.edit().putString("confirmation", intent2.toUri(1)).commit();
                    publish(new Snapshot(Phase.CONFIRMATION, this.state.candidate, "", this.state.downloaded));
                }
            } else {
                clearSession();
                UpdateRelease.Candidate candidate = this.state.candidate;
                if (intExtra == 0) {
                    str = "Update installed. Reopen GDroid.";
                } else if (intExtra == 3) {
                    str = "Installation canceled. Your current version is unchanged.";
                } else {
                    str = "Installation failed. Your current version is unchanged. " + intent.getStringExtra("android.content.pm.extra.STATUS_MESSAGE");
                }
                finish(resting(candidate, str));
            }
        }
    }

    public synchronized Intent confirmation() throws IOException {
        String string;
        try {
            string = this.preferences.getString("confirmation", "");
            if (string.isEmpty()) {
                throw new IOException("No installation confirmation is pending.");
            }
        } catch (URISyntaxException e) {
            throw new IOException("The installation must be canceled and retried.", e);
        }
        return Intent.parseUri(string, 1);
    }

    public synchronized void cancelInstallation() {
        if (this.busy) {
            pause();
            return;
        }
        int i = this.preferences.getInt("session", -1);
        if (i >= 0) {
            try {
                this.context.getPackageManager().getPackageInstaller().abandonSession(i);
            } catch (RuntimeException unused) {
                clearSession();
                finish(resting(this.state.candidate, "Installation canceled."));
            }
        }
        clearSession();
        finish(resting(this.state.candidate, "Installation canceled."));
    }

    public synchronized void message(String str) {
        publish(new Snapshot(this.state.phase, this.state.candidate, str, this.state.downloaded));
    }

    private Snapshot resting(UpdateRelease.Candidate candidate, String str) {
        if (candidate == null) {
            return new Snapshot(Phase.IDLE, null, str, 0L);
        }
        File fileApk = UpdateDownload.apk(this.directory, candidate);
        long length = UpdateDownload.part(this.directory, candidate).length();
        Phase phase = fileApk.isFile() ? Phase.READY : length > 0 ? Phase.PAUSED : Phase.AVAILABLE;
        if (fileApk.isFile()) {
            length = fileApk.length();
        }
        return new Snapshot(phase, candidate, str, length);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: cleanFiles, reason: merged with bridge method [inline-methods] */
    public void lambda$new$0(UpdateRelease.Candidate candidate) {
        File[] fileArrListFiles = this.directory.listFiles();
        if (fileArrListFiles == null) {
            return;
        }
        for (File file : fileArrListFiles) {
            if ((candidate == null || (!file.equals(UpdateDownload.apk(this.directory, candidate)) && !file.equals(UpdateDownload.part(this.directory, candidate)))) && file.isFile()) {
                file.delete();
            }
        }
    }

    private synchronized void finish(Snapshot snapshot) {
        this.busy = false;
        publish(snapshot);
    }

    private synchronized void publish(Snapshot snapshot) {
        this.state = snapshot;
        notifyListeners();
    }

    private void notifyListeners() {
        this.main.post(new Runnable() { // from class: com.gmodvr.flat.UpdateManager$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$notifyListeners$5();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$notifyListeners$5() {
        int i;
        Listener[] listenerArr;
        synchronized (this) {
            listenerArr = (Listener[]) this.listeners.toArray(new Listener[0]);
        }
        for (Listener listener : listenerArr) {
            listener.changed();
        }
    }

    public static String readable(Exception exc) {
        if (exc instanceof UnknownHostException) {
            return "Cannot reach GitHub. Check your internet connection and try again.";
        }
        if (exc instanceof SocketTimeoutException) {
            return "The connection timed out. Retry to resume the download.";
        }
        String message = exc.getMessage();
        return (message == null || message.isEmpty()) ? "The update could not be completed. Please try again." : message;
    }
}
