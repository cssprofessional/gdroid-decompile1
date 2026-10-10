package com.gmodvr.flat;

import android.content.Context;
import com.gmodvr.flat.SteamDownloads;
import com.gmodvr.flat.WorkshopIntegrity;
import com.gmodvr.flat.WorkshopJoinSync;
import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesPublishedfileSteamclient;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONObject;
import org.libsdl.app.SDLActivity;

/* JADX INFO: loaded from: classes.dex */
public final class JoinWorkshop {
    static final String STAGING_DIR = ".steam-downloads-join";
    private static Run current;

    private JoinWorkshop() {
    }

    public static final class Run implements WorkshopJoinSync.Progress {
        final Context app;
        volatile boolean cancelled;
        int count;
        long done;
        int index;
        final List<WorkshopJoinSync.Requirement> requirements;
        volatile SteamSession session;
        long total;
        Thread worker;
        final List<String> ready = new ArrayList();
        final List<String> failed = new ArrayList();
        final List<String> changed = new ArrayList();
        final List<String> skipped = new ArrayList();
        volatile boolean running = true;
        String text = "Connecting to Steam…";

        public Run(Context context, List<WorkshopJoinSync.Requirement> list) {
            this.app = context;
            this.requirements = list;
            this.count = list.size();
        }

        public void check() throws InterruptedException {
            if (this.cancelled || Thread.currentThread().isInterrupted()) {
                throw new InterruptedException();
            }
        }

        public void cancel() {
            this.cancelled = true;
            Thread thread = this.worker;
            if (thread != null) {
                thread.interrupt();
            }
            SteamSession steamSession = this.session;
            if (steamSession != null) {
                try {
                    steamSession.close();
                } catch (RuntimeException unused) {
                }
            }
        }

        @Override // com.gmodvr.flat.WorkshopJoinSync.Progress
        public synchronized void status(int i, int i2, String str, long j, long j2) {
            this.index = i;
            this.count = i2;
            this.text = str;
            this.done = j;
            this.total = j2;
        }

        @Override // com.gmodvr.flat.WorkshopJoinSync.Progress
        public synchronized void ready(String str) {
            if (!this.ready.contains(str)) {
                this.ready.add(str);
            }
        }

        @Override // com.gmodvr.flat.WorkshopJoinSync.Progress
        public synchronized void failed(String str, String str2) {
            this.failed.add(str + ":" + JoinWorkshop.clean(str2).replace(';', ','));
        }

        @Override // com.gmodvr.flat.WorkshopJoinSync.Progress
        public synchronized void skipped(String str, String str2) {
            this.skipped.add(str + ":" + JoinWorkshop.clean(str2).replace(';', ','));
        }

        public synchronized String snapshot() {
            StringBuilder sb;
            try {
                sb = new StringBuilder();
                sb.append(this.running ? "running" : "finished");
                sb.append('\t');
                sb.append(this.index);
                sb.append('\t');
                sb.append(this.count);
                sb.append('\t');
                sb.append(this.done);
                sb.append('\t');
                sb.append(this.total);
                sb.append('\t');
                sb.append(JoinWorkshop.clean(this.text));
                sb.append('\t');
                sb.append(String.join(",", this.ready));
                sb.append('\t');
                sb.append(String.join(";", this.failed));
                sb.append('\t');
                sb.append(String.join(",", this.changed));
                sb.append('\t');
                sb.append(String.join(";", this.skipped));
            } catch (Throwable th) {
                throw th;
            }
            return sb.toString();
        }
    }

    public static synchronized boolean start(String str) {
        try {
            List<WorkshopJoinSync.Requirement> list = WorkshopJoinSync.parse(str);
            Context context = SDLActivity.getContext();
            if (!list.isEmpty() && context != null) {
                final Run run = current;
                if (run != null && run.running) {
                    run.cancel();
                }
                final Run run2 = new Run(context.getApplicationContext(), list);
                current = run2;
                Thread thread = new Thread(new Runnable() { // from class: com.gmodvr.flat.JoinWorkshop$$ExternalSyntheticLambda5
                    @Override // java.lang.Runnable
                    public final void run() {
                        JoinWorkshop.download(run2, run);
                    }
                }, "JoinWorkshop");
                run2.worker = thread;
                thread.setDaemon(true);
                run2.worker.start();
                return true;
            }
            return false;
        } finally {
        }
    }

    public static synchronized String poll() {
        Run run;
        try {
            run = current;
        } finally {
        }
        return run == null ? "finished\t0\t0\t0\t0\t\t\t" : run.snapshot();
    }

    public static synchronized void cancel() {
        Run run = current;
        if (run != null) {
            run.cancel();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Can't wrap try/catch for region: R(10:0|2|(3:69|4|(3:6|(2:9|7)|84))|12|(3:65|13|(4:71|15|16|17)(1:18))|63|19|20|51|(2:(0)|(1:68))) */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00a3  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x00ad A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static void download(final com.gmodvr.flat.JoinWorkshop.Run r12, com.gmodvr.flat.JoinWorkshop.Run r13) {
        /*
            Method dump skipped, instruction units count: 262
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.gmodvr.flat.JoinWorkshop.download(com.gmodvr.flat.JoinWorkshop$Run, com.gmodvr.flat.JoinWorkshop$Run):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$download$2(Run run, int i) throws Exception {
        run.check();
        synchronized (run) {
            run.ready.clear();
            run.failed.clear();
            run.skipped.clear();
        }
        run.status(0, run.requirements.size(), "Steam connection lost. Reconnecting (" + i + "/3)…", 0L, 0L);
        Thread.sleep(((long) (i + (-1))) * 1000);
        run.check();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$download$3(String str, String str2) {
        return str2.startsWith(str + ":");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$download$4(String str, String str2) {
        return str2.startsWith(str + ":");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void downloadConnected(final Run run, final File file, final File file2) throws Exception {
        final SteamSession steamSession = new SteamSession();
        try {
            run.session = steamSession;
            run.check();
            steamSession.anonymous();
            final SteamDownloads steamDownloads = new SteamDownloads(steamSession, new SteamDownloads.Progress() { // from class: com.gmodvr.flat.JoinWorkshop$$ExternalSyntheticLambda4
                @Override // com.gmodvr.flat.SteamDownloads.Progress
                public final void update(String str, long j, long j2) {
                    JoinWorkshop.lambda$downloadConnected$5(run, str, j, j2);
                }
            });
            WorkshopJoinSync.run(file, run.requirements, new WorkshopJoinSync.Backend() { // from class: com.gmodvr.flat.JoinWorkshop.1
                @Override // com.gmodvr.flat.WorkshopCollection.Fetch
                public void check() throws Exception {
                    run.check();
                    steamSession.check();
                }

                @Override // com.gmodvr.flat.WorkshopCollection.Fetch
                public List<SteammessagesPublishedfileSteamclient.PublishedFileDetails> get(List<Long> list) throws Exception {
                    check();
                    return steamSession.workshopBatch(4000, list);
                }

                @Override // com.gmodvr.flat.WorkshopJoinSync.Backend
                public void install(SteammessagesPublishedfileSteamclient.PublishedFileDetails publishedFileDetails, long j, WorkshopIntegrity.Progress progress) throws Exception {
                    JSONObject jSONObject;
                    String unsignedString = Long.toUnsignedString(publishedFileDetails.getPublishedfileid());
                    try {
                        check();
                        SteamDownloads.WorkshopItem workshopItemItem = steamDownloads.item(GameContentProfile.GARRYSMOD, publishedFileDetails, file2, null);
                        check();
                        if (j != 0 && ((jSONObject = workshopItemItem.metadata) == null || jSONObject.optLong("gma_crc", 0L) != j)) {
                            throw new IOException("Downloaded addon does not match the server's archive; update the server's addon " + unsignedString);
                        }
                        GmodAddons.install(file, workshopItemItem, progress);
                        synchronized (run) {
                            run.changed.add(unsignedString);
                        }
                        SteamFiles.deleteTree(SteamFiles.inside(file2, unsignedString));
                    } catch (Throwable th) {
                        SteamFiles.deleteTree(SteamFiles.inside(file2, unsignedString));
                        throw th;
                    }
                }
            }, run);
            steamSession.close();
        } catch (Throwable th) {
            try {
                steamSession.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$downloadConnected$5(Run run, String str, long j, long j2) {
        synchronized (run) {
            run.text = str;
            run.done = j;
            run.total = j2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String clean(String str) {
        if (str == null) {
            return "";
        }
        String strReplace = str.replace('\t', ' ').replace('\n', ' ').replace('\r', ' ');
        return strReplace.length() > 200 ? strReplace.substring(0, 200) : strReplace;
    }
}
