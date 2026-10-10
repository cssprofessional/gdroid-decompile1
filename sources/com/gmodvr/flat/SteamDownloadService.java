package com.gmodvr.flat;

import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.graphics.drawable.Icon;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.PowerManager;
import android.os.SystemClock;
import com.gmodvr.flat.SteamDownloads;
import com.gmodvr.flat.SteamSession;
import com.gmodvr.flat.WorkshopCollection;
import com.gmodvr.flat.WorkshopQueue;
import com.google.protobuf.DescriptorProtos;
import in.dragonbra.javasteam.steam.authentication.AuthPollResult;
import in.dragonbra.javasteam.steam.authentication.IAuthenticator;
import in.dragonbra.javasteam.steam.handlers.steamuser.LogOnDetails;
import java.io.File;
import java.io.IOException;
import java.util.Locale;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.CancellationException;
import java.util.concurrent.CompletableFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.function.Consumer;

/* JADX INFO: loaded from: classes.dex */
public final class SteamDownloadService extends Service {
    private static final String CHANNEL = "steam_downloads";
    private static final int NOTIFICATION = 4202;
    static final String PREFS = "steam_download_v1";
    private static final long REVIEW_WAIT_MINUTES = 15;
    static final String STAGING_DIR = ".steam-downloads";
    private static volatile String accountMessage = "";
    private static Credentials credentials;
    private static volatile boolean discarding;
    private static volatile SteamDownloadService instance;
    private static volatile boolean starting;
    private boolean accountOnly;
    private volatile long completed;
    private volatile WorkshopQueue.Entry currentItem;
    private volatile CompletableFuture<String> guard;
    private volatile boolean installing;
    private volatile int itemCount;
    private volatile long itemDone;
    private volatile int itemIndex;
    private volatile boolean itemInstalling;
    private volatile long itemTotal;
    private long lastNotification;
    private volatile WorkshopQueue liveQueue;
    private volatile boolean pauseRequested;
    private volatile CompletableFuture<Boolean> selection;
    private volatile SteamSession session;
    private volatile long total;
    private PowerManager.WakeLock wakeLock;
    private volatile Thread worker;
    private volatile String challenge = "";
    private volatile String message = "Starting Steam download…";

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return null;
    }

    public static final class Credentials {
        String password;
        final boolean remember;
        String username;

        public Credentials(String str, String str2, boolean z) {
            this.username = str;
            this.password = str2;
            this.remember = z;
        }

        public boolean anonymous() {
            return this.username.isEmpty() && this.password.isEmpty();
        }
    }

    public static boolean anonymousWorkshop(GameContentProfile gameContentProfile, String str) {
        return gameContentProfile == GameContentProfile.GARRYSMOD && !str.isEmpty();
    }

    public static Credentials savedOrAnonymous(Context context) {
        try {
            LogOnDetails logOnDetailsSavedIdentity = SteamIdentityProvider.savedIdentity(context);
            if (logOnDetailsSavedIdentity != null) {
                logOnDetailsSavedIdentity.setAccessToken(null);
                return new Credentials(logOnDetailsSavedIdentity.getUsername(), "", true);
            }
        } catch (Exception unused) {
        }
        return new Credentials("", "", false);
    }

    public static File queueFile(Context context) {
        return new File(context.getApplicationContext().getFilesDir(), "workshop-queue.json");
    }

    public static WorkshopQueue liveQueue() {
        SteamDownloadService steamDownloadService = instance;
        if (steamDownloadService == null) {
            return null;
        }
        return steamDownloadService.liveQueue;
    }

    public static WorkshopQueue savedQueue(Context context) {
        String string = prefs(context).getString("token", "");
        if (string.isEmpty() || prefs(context).getString("workshop", "").isEmpty()) {
            return null;
        }
        return WorkshopQueue.load(queueFile(context), string);
    }

    public static boolean hasQueue(Context context) {
        return (liveQueue() == null && (prefs(context).getString("token", "").isEmpty() || prefs(context).getString("workshop", "").isEmpty() || !queueFile(context).isFile())) ? false : true;
    }

    public static boolean awaitingSelection() {
        SteamDownloadService steamDownloadService = instance;
        return (steamDownloadService == null || steamDownloadService.selection == null || steamDownloadService.selection.isDone()) ? false : true;
    }

    public static boolean choose(boolean z) {
        SteamDownloadService steamDownloadService = instance;
        CompletableFuture<Boolean> completableFuture = steamDownloadService == null ? null : steamDownloadService.selection;
        return completableFuture != null && completableFuture.complete(Boolean.valueOf(z));
    }

    public static long[] itemProgress() {
        SteamDownloadService steamDownloadService = instance;
        if (steamDownloadService == null || steamDownloadService.currentItem == null) {
            return null;
        }
        return new long[]{steamDownloadService.itemIndex, steamDownloadService.itemCount, steamDownloadService.itemDone, steamDownloadService.itemTotal};
    }

    public static WorkshopQueue.Entry currentItem() {
        SteamDownloadService steamDownloadService = instance;
        if (steamDownloadService == null) {
            return null;
        }
        return steamDownloadService.currentItem;
    }

    public static SharedPreferences prefs(Context context) {
        return context.getSharedPreferences(PREFS, 0);
    }

    public static File staging(Context context, String str) throws IOException {
        if (!str.matches("[a-f0-9-]{36}")) {
            throw new IOException("Invalid saved download request");
        }
        return SteamFiles.inside(new File(Storage.usesSharedContent(context) ? Storage.sharedRoot() : Storage.root(context), STAGING_DIR), str);
    }

    public static boolean active() {
        return starting || instance != null;
    }

    public static boolean discarding() {
        return discarding;
    }

    public static boolean signingIn() {
        return instance != null && instance.accountOnly;
    }

    public static String signInMessage() {
        SteamDownloadService steamDownloadService = instance;
        return (steamDownloadService == null || !steamDownloadService.accountOnly) ? accountMessage : steamDownloadService.message;
    }

    public static void clearSignInMessage() {
        accountMessage = "";
    }

    public static synchronized void signIn(Context context, Credentials credentials2) throws Exception {
        try {
            if (active()) {
                throw new IOException("A Steam request is already running");
            }
            if (discarding()) {
                throw new IOException("The previous download is still being removed");
            }
            if (credentials2.username.isEmpty()) {
                throw new IOException("Enter your Steam account name");
            }
            if (!credentials2.remember) {
                throw new IOException("Enable Remember Steam sign-in on this device to join servers.");
            }
            if (credentials2.password.isEmpty() && new SteamCredentialStore(context).token(credentials2.username) == null) {
                throw new IOException("Enter your Steam password to sign in");
            }
            credentials = credentials2;
            starting = true;
            accountMessage = "Connecting to Steam…";
            try {
                context.startForegroundService(new Intent(context, (Class<?>) SteamDownloadService.class).setAction("sign_in"));
            } catch (RuntimeException e) {
                starting = false;
                credentials = null;
                accountMessage = "";
                throw e;
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    private static void removeAbandonedStaging(Context context, String str) {
        File fileSharedRoot = Storage.usesSharedContent(context) ? Storage.sharedRoot() : null;
        if (fileSharedRoot == null) {
            try {
                fileSharedRoot = Storage.root(context);
            } catch (IOException unused) {
                return;
            }
        }
        File[] fileArrListFiles = new File(fileSharedRoot, STAGING_DIR).listFiles();
        if (fileArrListFiles == null) {
            return;
        }
        for (File file : fileArrListFiles) {
            if (!file.getName().equals(str)) {
                try {
                    SteamFiles.deleteTree(file);
                } catch (IOException unused2) {
                }
            }
        }
    }

    public static void discard(Context context, final Consumer<String> consumer) {
        synchronized (SteamDownloadService.class) {
            if (!active() && !discarding) {
                discarding = true;
                final Context applicationContext = context.getApplicationContext();
                final String string = prefs(applicationContext).getString("token", "");
                new Thread(new Runnable() { // from class: com.gmodvr.flat.SteamDownloadService$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        SteamDownloadService.lambda$discard$1(string, applicationContext, consumer);
                    }
                }, "Steam staging cleanup").start();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$discard$1(String str, Context context, final Consumer consumer) {
        final String message;
        try {
            if (!str.isEmpty()) {
                File fileStaging = staging(context, str);
                SteamInstallBridge.abandon(context, SteamFiles.inside(fileStaging, "payload"));
                SteamFiles.deleteTree(fileStaging);
            }
            removeAbandonedStaging(context, "");
            WorkshopQueue.delete(queueFile(context));
            if (!prefs(context).edit().clear().commit()) {
                throw new IOException("Could not clear saved download request");
            }
            discarding = false;
            message = null;
        } catch (Throwable th) {
            try {
                message = th.getMessage() != null ? th.getMessage() : "Could not remove download staging.";
                discarding = false;
            } catch (Throwable th2) {
                discarding = false;
                throw th2;
            }
        }
        new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.gmodvr.flat.SteamDownloadService$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                consumer.accept(message);
            }
        });
    }

    public static boolean activationPending(Context context) {
        return SteamInstallBridge.pending(context);
    }

    public static String challenge() {
        return instance == null ? "" : instance.challenge;
    }

    public static boolean canPause() {
        return (!active() || instance == null || instance.installing) ? false : true;
    }

    public static void submitCode(String str) {
        SteamDownloadService steamDownloadService = instance;
        if (steamDownloadService == null || steamDownloadService.guard == null || str.trim().isEmpty()) {
            return;
        }
        steamDownloadService.guard.complete(str.trim().toUpperCase(Locale.ROOT));
        steamDownloadService.challenge = "";
    }

    public static String status(Context context) {
        if (instance != null && active()) {
            return instance.message;
        }
        String string = prefs(context).getString("state", "idle");
        if (string.equals("running") || string.equals("installing")) {
            return "Download interrupted. Resume to continue.";
        }
        return string.equals("review") ? "Workshop collection ready to review. Open the review screen to choose what to download." : prefs(context).getString("message", "Sign in with the Steam account that owns the game.");
    }

    public static long completed(Context context) {
        return (!active() || instance == null) ? prefs(context).getLong("completed", 0L) : instance.completed;
    }

    public static long total(Context context) {
        return (!active() || instance == null) ? prefs(context).getLong("total", 0L) : instance.total;
    }

    public static synchronized void start(Context context, String str, String str2, String str3, Credentials credentials2, boolean z) throws Exception {
        try {
            if (active()) {
                throw new IOException("A Steam download is already running");
            }
            if (discarding) {
                throw new IOException("The previous download is still being removed");
            }
            if (!LocalFolder.hasAccess(context)) {
                throw new IOException("Grant storage access before downloading");
            }
            if (GameContentProfile.forId(str) == null) {
                throw new IOException("Unknown game profile");
            }
            if (!z && activationPending(context)) {
                throw new IOException("Resume the previous Steam activation first");
            }
            SharedPreferences sharedPreferencesPrefs = prefs(context);
            if (z && sharedPreferencesPrefs.getString("token", "").isEmpty()) {
                throw new IOException("There is no download to resume");
            }
            if (!z) {
                if (!str2.isEmpty()) {
                    SteamFiles.workshopId(str2);
                }
                if (sharedPreferencesPrefs.getString("token", "").isEmpty() || "complete".equals(sharedPreferencesPrefs.getString("state", "")) || !str.equals(sharedPreferencesPrefs.getString("profile", "")) || !str2.equals(sharedPreferencesPrefs.getString("workshop", "")) || !str3.equals(sharedPreferencesPrefs.getString("language", ""))) {
                    WorkshopQueue.delete(queueFile(context));
                    if (!sharedPreferencesPrefs.edit().clear().putString("profile", str).putString("workshop", str2).putString("language", str3).putString("token", UUID.randomUUID().toString()).putString("state", "paused").commit()) {
                        throw new IOException("Could not save Steam download request");
                    }
                }
            }
            credentials = credentials2;
            starting = true;
            accountMessage = "";
            try {
                context.startForegroundService(new Intent(context, (Class<?>) SteamDownloadService.class));
            } catch (RuntimeException e) {
                starting = false;
                credentials = null;
                throw e;
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public static void pause() {
        SteamDownloadService steamDownloadService = instance;
        if (steamDownloadService == null) {
            return;
        }
        synchronized (steamDownloadService) {
            try {
                if (steamDownloadService.installing) {
                    return;
                }
                steamDownloadService.pauseRequested = true;
                if (steamDownloadService.itemInstalling) {
                    return;
                }
                Thread thread = steamDownloadService.worker;
                if (thread != null) {
                    thread.interrupt();
                }
                if (steamDownloadService.guard != null) {
                    steamDownloadService.guard.cancel(true);
                }
                if (steamDownloadService.selection != null) {
                    steamDownloadService.selection.cancel(true);
                }
                SteamSession steamSession = steamDownloadService.session;
                if (steamSession != null) {
                    steamSession.http.dispatcher().cancelAll();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        instance = this;
        ((NotificationManager) getSystemService(NotificationManager.class)).createNotificationChannel(new NotificationChannel(CHANNEL, "Steam downloads", 2));
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        final Credentials credentials2;
        if (intent != null && "pause".equals(intent.getAction())) {
            if (this.worker == null) {
                stopSelf();
            } else {
                pause();
            }
            return 2;
        }
        startForeground(NOTIFICATION, notification());
        if (this.worker != null) {
            return 2;
        }
        synchronized (SteamDownloadService.class) {
            credentials2 = credentials;
            credentials = null;
        }
        if (credentials2 == null) {
            starting = false;
            stopForeground(1);
            stopSelf();
            return 2;
        }
        this.pauseRequested = false;
        boolean z = intent != null && "sign_in".equals(intent.getAction());
        this.accountOnly = z;
        if (z) {
            this.message = "Connecting to Steam…";
        }
        this.worker = new Thread(new Runnable() { // from class: com.gmodvr.flat.SteamDownloadService$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$onStartCommand$2(credentials2);
            }
        }, this.accountOnly ? "Steam sign-in" : "Steam download");
        starting = false;
        this.worker.start();
        return 2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onStartCommand$2(Credentials credentials2) {
        if (this.accountOnly) {
            runSignIn(credentials2);
        } else {
            runDownload(credentials2);
        }
    }

    private void authenticate(SteamSession steamSession, Credentials credentials2) throws Exception {
        SteamCredentialStore steamCredentialStore = new SteamCredentialStore(this);
        String str = credentials2.password.isEmpty() ? steamCredentialStore.token(credentials2.username) : null;
        if ((str == null || str.isEmpty()) && credentials2.password.isEmpty()) {
            throw new IOException("Enter your Steam password to sign in");
        }
        try {
            AuthPollResult authPollResultLogin = steamSession.login(credentials2.username, credentials2.password, str, credentials2.remember, new IAuthenticator() { // from class: com.gmodvr.flat.SteamDownloadService.1
                @Override // in.dragonbra.javasteam.steam.authentication.IAuthenticator
                public CompletableFuture<String> getDeviceCode(boolean z) {
                    return SteamDownloadService.this.code(z ? "Incorrect code. Enter a new Steam Guard code." : "Approve in the Steam mobile app, or enter its Steam Guard code here.");
                }

                @Override // in.dragonbra.javasteam.steam.authentication.IAuthenticator
                public CompletableFuture<String> getEmailCode(String str2, boolean z) {
                    return SteamDownloadService.this.code(z ? "Incorrect code. Enter the latest emailed Steam Guard code." : "Enter the Steam Guard code sent to your email.");
                }

                @Override // in.dragonbra.javasteam.steam.authentication.IAuthenticator
                public CompletableFuture<Boolean> acceptDeviceConfirmation() {
                    return CompletableFuture.completedFuture(Boolean.FALSE);
                }
            }, new SteamSession.Status() { // from class: com.gmodvr.flat.SteamDownloadService$$ExternalSyntheticLambda3
                @Override // com.gmodvr.flat.SteamSession.Status
                public final void show(String str2) {
                    this.f$0.lambda$authenticate$3(str2);
                }
            });
            credentials2.password = "";
            boolean z = credentials2.remember;
            if (z && authPollResultLogin != null) {
                steamCredentialStore.save(authPollResultLogin.getAccountName(), authPollResultLogin.getRefreshToken());
            } else {
                if (z) {
                    return;
                }
                steamCredentialStore.clear();
            }
        } catch (Throwable th) {
            credentials2.password = "";
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$authenticate$3(String str) {
        update(str, 0L, 0L);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void runSignIn(Credentials credentials2) {
        String message;
        try {
            try {
                PowerManager.WakeLock wakeLockNewWakeLock = ((PowerManager) getSystemService(PowerManager.class)).newWakeLock(1, "GDroid:SteamSignIn");
                this.wakeLock = wakeLockNewWakeLock;
                wakeLockNewWakeLock.acquire(300000L);
                SteamRuntime.prepare(this);
                SteamSession steamSession = new SteamSession();
                try {
                    this.session = steamSession;
                    authenticate(steamSession, credentials2);
                    steamSession.close();
                    accountMessage = "Steam sign-in saved. You can now join servers.";
                } catch (Throwable th) {
                    try {
                        steamSession.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                    throw th;
                }
            } catch (Exception e) {
                if (this.pauseRequested) {
                    message = "Steam sign-in cancelled.";
                } else {
                    message = e instanceof IOException ? e.getMessage() : "Steam sign-in failed. Check your account and try again.";
                }
                accountMessage = message;
                credentials2.password = "";
                this.challenge = "";
                this.session = null;
                PowerManager.WakeLock wakeLock = this.wakeLock;
                if (wakeLock != null && wakeLock.isHeld()) {
                }
            }
        } finally {
            credentials2.password = "";
            this.challenge = "";
            this.session = null;
            PowerManager.WakeLock wakeLock2 = this.wakeLock;
            if (wakeLock2 != null && wakeLock2.isHeld()) {
                this.wakeLock.release();
            }
            stopForeground(1);
            stopSelf();
            instance = null;
        }
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Removed duplicated region for block: B:149:0x00d9 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0098  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00bd  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0109 A[Catch: all -> 0x01c3, TRY_ENTER, TRY_LEAVE, TryCatch #2 {all -> 0x01c3, blocks: (B:33:0x00c5, B:45:0x0109, B:32:0x00c2), top: B:142:0x00c2 }] */
    /* JADX WARN: Unreachable blocks removed: 2, instructions: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void runDownload(com.gmodvr.flat.SteamDownloadService.Credentials r24) {
        /*
            Method dump skipped, instruction units count: 585
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.gmodvr.flat.SteamDownloadService.runDownload(com.gmodvr.flat.SteamDownloadService$Credentials):void");
    }

    private String workshop(final SteamSession steamSession, final GameContentProfile gameContentProfile, String str, long j, final File file, final boolean z) throws Exception {
        SteamDownloads steamDownloads;
        String str2;
        File fileQueueFile = queueFile(this);
        final File fileContent = Storage.content(this, gameContentProfile);
        final File fileInside = SteamFiles.inside(fileContent, gameContentProfile.gameDir + "/custom");
        boolean z2 = gameContentProfile == GameContentProfile.GARRYSMOD;
        final long[] jArr = new long[2];
        SteamDownloads steamDownloads2 = new SteamDownloads(steamSession, new SteamDownloads.Progress() { // from class: com.gmodvr.flat.SteamDownloadService$$ExternalSyntheticLambda4
            @Override // com.gmodvr.flat.SteamDownloads.Progress
            public final void update(String str3, long j2, long j3) {
                this.f$0.lambda$workshop$4(jArr, str3, j2, j3);
            }
        });
        WorkshopQueue workshopQueueLoad = WorkshopQueue.load(fileQueueFile, str);
        if (workshopQueueLoad == null) {
            update("Reading Workshop details…", 0L, 0L);
            workshopQueueLoad = steamDownloads2.resolve(gameContentProfile, j, str, new WorkshopCollection.Progress() { // from class: com.gmodvr.flat.SteamDownloadService$$ExternalSyntheticLambda5
                @Override // com.gmodvr.flat.WorkshopCollection.Progress
                public final void resolved(int i) {
                    this.f$0.lambda$workshop$5(i);
                }
            });
            workshopQueueLoad.annotate(z2 ? GmodAddons.installed(fileContent) : SteamWorkshopInstall.installed(fileInside));
            WorkshopQueue.Mode mode = WorkshopQueue.Mode.MISSING;
            workshopQueueLoad.select(mode);
            WorkshopQueue.Summary summary = workshopQueueLoad.summary();
            if (summary.addons == 0 && summary.linkedAddons > 0) {
                workshopQueueLoad.setIncludeLinked(true);
                workshopQueueLoad.select(mode);
            }
            if (!workshopQueueLoad.collection) {
                WorkshopQueue.Entry entry = workshopQueueLoad.get(j);
                if (entry != null) {
                    workshopQueueLoad.setSelected(entry, true);
                }
                workshopQueueLoad.phase = WorkshopQueue.Phase.DOWNLOADING;
            }
            workshopQueueLoad.save(fileQueueFile);
        }
        this.liveQueue = workshopQueueLoad;
        WorkshopQueue.Phase phase = workshopQueueLoad.phase;
        WorkshopQueue.Phase phase2 = WorkshopQueue.Phase.REVIEW;
        if (phase == phase2) {
            persist("review", "Review " + workshopQueueLoad.name() + " and choose what to download.");
            steamDownloads = steamDownloads2;
            update("Review " + workshopQueueLoad.name() + " and choose what to download.", 0L, 0L);
            this.liveQueue = null;
            CompletableFuture<Boolean> completableFuture = new CompletableFuture<>();
            this.selection = completableFuture;
            try {
                try {
                    try {
                        Boolean bool = completableFuture.get(REVIEW_WAIT_MINUTES, TimeUnit.MINUTES);
                        this.selection = null;
                        if (!bool.booleanValue()) {
                            WorkshopQueue.delete(fileQueueFile);
                            try {
                                SteamFiles.deleteTree(file);
                            } catch (IOException unused) {
                            }
                            prefs(this).edit().clear().commit();
                            this.message = "Workshop download cancelled.";
                            return null;
                        }
                        workshopQueueLoad = WorkshopQueue.load(fileQueueFile, str);
                        if (workshopQueueLoad == null || workshopQueueLoad.phase == phase2) {
                            throw new IOException("The Workshop selection was not saved. Open the review screen again.");
                        }
                        this.liveQueue = workshopQueueLoad;
                    } catch (TimeoutException unused2) {
                        persist("review", "Workshop collection ready to review. Open the review screen to choose what to download.");
                        this.selection = null;
                        return null;
                    }
                } catch (CancellationException unused3) {
                    throw new InterruptedException();
                }
            } catch (Throwable th) {
                this.selection = null;
                throw th;
            }
        } else {
            steamDownloads = steamDownloads2;
        }
        final WorkshopQueue workshopQueue = workshopQueueLoad;
        persist("running", "Downloading " + workshopQueue.name() + "…");
        final int iAppId = SteamCatalog.appId(gameContentProfile);
        final boolean z3 = z2;
        final SteamDownloads steamDownloads3 = steamDownloads;
        workshopQueue.run(fileQueueFile, new WorkshopQueue.Steps() { // from class: com.gmodvr.flat.SteamDownloadService.2
            @Override // com.gmodvr.flat.WorkshopQueue.Steps
            public void check() throws Exception {
                if (SteamDownloadService.this.pauseRequested) {
                    throw new InterruptedException();
                }
                steamSession.check();
            }

            @Override // com.gmodvr.flat.WorkshopQueue.Steps
            public Map<Long, long[]> installed() {
                return z3 ? GmodAddons.installed(fileContent) : SteamWorkshopInstall.installed(fileInside);
            }

            @Override // com.gmodvr.flat.WorkshopQueue.Steps
            public long usableSpace() {
                long usableSpace = fileContent.getUsableSpace();
                return (file.getParentFile() == null || !file.getParentFile().exists()) ? usableSpace : Math.min(usableSpace, file.getParentFile().getUsableSpace());
            }

            @Override // com.gmodvr.flat.WorkshopQueue.Steps
            public void starting(WorkshopQueue.Entry entry2, int i, int i2) {
                long[] jArrProgressBytes = workshopQueue.progressBytes();
                long[] jArr2 = jArr;
                jArr2[0] = jArrProgressBytes[0];
                jArr2[1] = jArrProgressBytes[1];
                SteamDownloadService.this.itemIndex = i;
                SteamDownloadService.this.itemCount = i2;
                SteamDownloadService.this.itemDone = 0L;
                SteamDownloadService.this.itemTotal = entry2.size;
                SteamDownloadService.this.currentItem = entry2;
                SteamDownloadService steamDownloadService = SteamDownloadService.this;
                String str3 = "Workshop " + i + "/" + i2 + ": " + entry2.name();
                long[] jArr3 = jArr;
                steamDownloadService.update(str3, jArr3[0], jArr3[1]);
            }

            @Override // com.gmodvr.flat.WorkshopQueue.Steps
            public void install(WorkshopQueue.Entry entry2) throws Exception {
                try {
                    SteamDownloads.WorkshopItem workshopItemItem = steamDownloads3.item(gameContentProfile, steamSession.workshop(iAppId, entry2.id), file, workshopQueue.collectionsJson(entry2));
                    synchronized (SteamDownloadService.this) {
                        if (SteamDownloadService.this.pauseRequested) {
                            throw new InterruptedException();
                        }
                        SteamDownloadService.this.itemInstalling = true;
                    }
                    try {
                        if (z3) {
                            GmodAddons.install(fileContent, workshopItemItem);
                        } else {
                            SteamWorkshopInstall.install(fileInside, workshopItemItem);
                        }
                        SteamDownloadService.this.itemInstalling = false;
                    } catch (Throwable th2) {
                        SteamDownloadService.this.itemInstalling = false;
                        throw th2;
                    }
                } catch (IOException e) {
                    if (z && e.getMessage() != null && e.getMessage().contains("denied")) {
                        throw new IOException("Needs a signed-in Steam account: sign in on the Steam screen, then retry failed items");
                    }
                    throw e;
                }
            }

            @Override // com.gmodvr.flat.WorkshopQueue.Steps
            public void keep(WorkshopQueue.Entry entry2) throws Exception {
                if (z3) {
                    GmodAddons.addCollections(fileContent, Long.toUnsignedString(entry2.id), workshopQueue.collectionsJson(entry2));
                }
            }

            @Override // com.gmodvr.flat.WorkshopQueue.Steps
            public void cleanup(WorkshopQueue.Entry entry2) {
                try {
                    SteamFiles.deleteTree(SteamFiles.inside(file, Long.toUnsignedString(entry2.id)));
                } catch (IOException unused4) {
                }
            }
        });
        this.currentItem = null;
        WorkshopQueue.Summary summary2 = workshopQueue.summary();
        StringBuilder sb = new StringBuilder();
        sb.append("Workshop: ");
        sb.append(summary2.done);
        sb.append(" installed");
        String str3 = "";
        if (summary2.skipped > 0) {
            str2 = ", " + summary2.skipped + " already up to date";
        } else {
            str2 = "";
        }
        sb.append(str2);
        if (summary2.failed > 0) {
            str3 = ", " + summary2.failed + " failed (open the collection screen to see why and retry)";
        }
        sb.append(str3);
        sb.append(".");
        return sb.toString() + " Return to the launcher to play, or open Mods to manage addons.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$workshop$4(long[] jArr, String str, long j, long j2) {
        long j3;
        WorkshopQueue.Entry entry = this.currentItem;
        this.itemDone = j;
        long jMin = 0;
        if (j2 > 0) {
            j3 = j2;
        } else {
            j3 = entry == null ? 0L : entry.size;
        }
        this.itemTotal = j3;
        if (entry != null && j2 > 0) {
            jMin = (long) (entry.size * Math.min(1.0d, j / j2));
        }
        if (entry != null) {
            str = "Workshop " + this.itemIndex + "/" + this.itemCount + ": " + str;
        }
        update(str, jArr[0] + jMin, jArr[1]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$workshop$5(int i) {
        update("Reading Workshop collection: " + i + " items…", 0L, 0L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public CompletableFuture<String> code(String str) {
        this.challenge = str;
        this.guard = new CompletableFuture<>();
        return this.guard;
    }

    private void beginInstall(String str) {
        this.installing = true;
        update(str, 0L, 0L);
        persist("installing", str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void update(String str, long j, long j2) {
        this.message = str;
        this.completed = j;
        this.total = j2;
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        if (j2 <= 0 || j >= j2 || jElapsedRealtime - this.lastNotification >= 500) {
            this.lastNotification = jElapsedRealtime;
            NotificationManager notificationManager = (NotificationManager) getSystemService(NotificationManager.class);
            if (notificationManager != null) {
                notificationManager.notify(NOTIFICATION, notification());
            }
        }
    }

    private void persist(String str, String str2) {
        prefs(this).edit().putString("state", str).putString("message", str2).putLong("completed", this.completed).putLong("total", this.total).apply();
    }

    private Notification notification() {
        PendingIntent service = PendingIntent.getService(this, 2, new Intent(this, (Class<?>) SteamDownloadService.class).setAction("pause"), 67108864);
        Notification.Builder ongoing = new Notification.Builder(this, CHANNEL).setSmallIcon(android.R.drawable.stat_sys_download).setContentTitle(this.accountOnly ? "Steam sign-in" : "Steam Download").setContentText(this.message).setContentIntent(PendingIntent.getActivity(this, 0, new Intent(this, (Class<?>) (this.liveQueue != null || this.selection != null ? WorkshopQueueActivity.class : SteamDownloadActivity.class)), 201326592)).setOngoing(true);
        if (this.total > 0) {
            ongoing.setProgress(DescriptorProtos.Edition.EDITION_2023_VALUE, (int) Math.min(1000L, (this.completed * 1000) / this.total), false);
        } else {
            ongoing.setProgress(DescriptorProtos.Edition.EDITION_2023_VALUE, 0, true);
        }
        if (canPause()) {
            ongoing.addAction(new Notification.Action.Builder((Icon) null, this.accountOnly ? "Cancel sign-in" : "Pause", service).build());
        }
        return ongoing.build();
    }
}
