package com.gmodvr.flat;

import android.app.Activity;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.gmodvr.flat.WorkshopQueue;
import com.google.protobuf.DescriptorProtos;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.function.Consumer;

/* JADX INFO: loaded from: classes.dex */
public final class WorkshopQueueActivity extends Activity {
    private static final int DIM = -10787217;
    private static final int ERROR = -1548209;
    private static final int MUTED = -7497309;
    private static final int OK = -7943825;
    private static final int TEXT = -1643795;
    private BaseAdapter adapter;
    private TextView cancel;
    private LinearLayout checklistControls;
    private TextView clear;
    private boolean destroyed;
    private Button downloadAll;
    private Button downloadMissing;
    private Button downloadSelected;
    private String error;
    private ProgressBar itemBar;
    private TextView itemText;
    private CheckBox linked;
    private ListView list;
    private boolean loading;
    private TextView note;
    private ProgressBar overallBar;
    private TextView overallText;
    private Button pause;
    private WorkshopQueue queue;
    private Button resume;
    private Button retry;
    private LinearLayout reviewControls;
    private boolean reviewing;
    private LinearLayout runControls;
    private Skin skin;
    private TextView space;
    private TextView summary;
    private TextView title;
    private final Handler ui = new Handler(Looper.getMainLooper());
    private final ExecutorService worker = Executors.newSingleThreadExecutor();
    private final List<WorkshopQueue.Entry> rows = new ArrayList();
    private long usable = -1;
    private String signature = "";
    private final Runnable refresh = new Runnable() { // from class: com.gmodvr.flat.WorkshopQueueActivity.1
        @Override // java.lang.Runnable
        public void run() {
            WorkshopQueueActivity.this.render();
            WorkshopQueueActivity.this.ui.postDelayed(this, 500L);
        }
    };

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        LinearLayout linearLayoutStart = start("Workshop collection");
        TextView textViewText = text("", 17.0f, TEXT);
        this.title = textViewText;
        linearLayoutStart.addView(textViewText, below(4.0f));
        TextView textViewText2 = text("", 13.5f, TEXT);
        this.summary = textViewText2;
        linearLayoutStart.addView(textViewText2, below(8.0f));
        TextView textViewText3 = text("", 13.5f, MUTED);
        this.space = textViewText3;
        linearLayoutStart.addView(textViewText3, below(6.0f));
        CheckBox checkBoxCheck = check("Include linked collections");
        this.linked = checkBoxCheck;
        checkBoxCheck.setOnClickListener(new View.OnClickListener() { // from class: com.gmodvr.flat.WorkshopQueueActivity$$ExternalSyntheticLambda5
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$onCreate$0(view);
            }
        });
        linearLayoutStart.addView(this.linked, below(6.0f));
        TextView textViewText4 = text("", 13.0f, MUTED);
        this.note = textViewText4;
        linearLayoutStart.addView(textViewText4, below(6.0f));
        this.reviewControls = vertical();
        Button buttonPrimary = primary("Download missing and outdated", new Runnable() { // from class: com.gmodvr.flat.WorkshopQueueActivity$$ExternalSyntheticLambda7
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$onCreate$1();
            }
        });
        this.downloadMissing = buttonPrimary;
        this.reviewControls.addView(buttonPrimary, below(12.0f));
        Button buttonSecondary = secondary("Download all", new Runnable() { // from class: com.gmodvr.flat.WorkshopQueueActivity$$ExternalSyntheticLambda8
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$onCreate$2();
            }
        });
        this.downloadAll = buttonSecondary;
        this.reviewControls.addView(buttonSecondary, below(8.0f));
        Button buttonSecondary2 = secondary("Download selected", new Runnable() { // from class: com.gmodvr.flat.WorkshopQueueActivity$$ExternalSyntheticLambda9
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$onCreate$3();
            }
        });
        this.downloadSelected = buttonSecondary2;
        this.reviewControls.addView(buttonSecondary2, below(8.0f));
        TextView textViewLink = link("Cancel this download", new Runnable() { // from class: com.gmodvr.flat.WorkshopQueueActivity$$ExternalSyntheticLambda10
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.cancel();
            }
        });
        this.cancel = textViewLink;
        this.reviewControls.addView(textViewLink, below(4.0f));
        linearLayoutStart.addView(this.reviewControls);
        this.runControls = vertical();
        TextView textViewText5 = text("", 13.5f, TEXT);
        this.itemText = textViewText5;
        this.runControls.addView(textViewText5, below(10.0f));
        ProgressBar progressBarBar = bar();
        this.itemBar = progressBarBar;
        this.runControls.addView(progressBarBar, barParams());
        TextView textViewText6 = text("", 13.5f, TEXT);
        this.overallText = textViewText6;
        this.runControls.addView(textViewText6, below(10.0f));
        ProgressBar progressBarBar2 = bar();
        this.overallBar = progressBarBar2;
        this.runControls.addView(progressBarBar2, barParams());
        LinearLayout linearLayout = new LinearLayout(this);
        this.pause = secondary("Pause", new SteamDownloadActivity$$ExternalSyntheticLambda3());
        this.resume = secondary("Resume", new Runnable() { // from class: com.gmodvr.flat.WorkshopQueueActivity$$ExternalSyntheticLambda11
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.resume();
            }
        });
        Button buttonSecondary3 = secondary("Retry failed", new Runnable() { // from class: com.gmodvr.flat.WorkshopQueueActivity$$ExternalSyntheticLambda12
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.retryFailed();
            }
        });
        this.retry = buttonSecondary3;
        Button[] buttonArr = {this.pause, this.resume, buttonSecondary3};
        for (int i = 0; i < 3; i++) {
            Button button = buttonArr[i];
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(0, -2, 1.0f);
            if (linearLayout.getChildCount() > 0) {
                layoutParams.leftMargin = dp(8.0f);
            }
            linearLayout.addView(button, layoutParams);
        }
        this.runControls.addView(linearLayout, below(12.0f));
        TextView textViewLink2 = link("Clear this list", new Runnable() { // from class: com.gmodvr.flat.WorkshopQueueActivity$$ExternalSyntheticLambda13
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.clearFinished();
            }
        });
        this.clear = textViewLink2;
        this.runControls.addView(textViewLink2, below(4.0f));
        linearLayoutStart.addView(this.runControls);
        LinearLayout linearLayout2 = new LinearLayout(this);
        this.checklistControls = linearLayout2;
        linearLayout2.addView(link("Select all", new Runnable() { // from class: com.gmodvr.flat.WorkshopQueueActivity$$ExternalSyntheticLambda14
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$onCreate$4();
            }
        }));
        this.checklistControls.addView(link("Select none", new Runnable() { // from class: com.gmodvr.flat.WorkshopQueueActivity$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$onCreate$5();
            }
        }));
        linearLayoutStart.addView(this.checklistControls, below(14.0f));
        BaseAdapter baseAdapter = new BaseAdapter() { // from class: com.gmodvr.flat.WorkshopQueueActivity.2
            @Override // android.widget.Adapter
            public int getCount() {
                return WorkshopQueueActivity.this.rows.size();
            }

            @Override // android.widget.Adapter
            public Object getItem(int i2) {
                return WorkshopQueueActivity.this.rows.get(i2);
            }

            @Override // android.widget.Adapter
            public long getItemId(int i2) {
                return ((WorkshopQueue.Entry) WorkshopQueueActivity.this.rows.get(i2)).id;
            }

            @Override // android.widget.Adapter
            public View getView(int i2, View view, ViewGroup viewGroup) {
                Row row = view == null ? WorkshopQueueActivity.this.new Row() : (Row) view.getTag();
                row.bind((WorkshopQueue.Entry) WorkshopQueueActivity.this.rows.get(i2));
                return row.view;
            }
        };
        this.adapter = baseAdapter;
        finish(linearLayoutStart, baseAdapter);
        load();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onCreate$0(View view) {
        WorkshopQueue workshopQueue = this.queue;
        if (workshopQueue == null || !this.reviewing) {
            return;
        }
        workshopQueue.setIncludeLinked(this.linked.isChecked());
        this.queue.select(WorkshopQueue.Mode.MISSING);
        this.signature = "";
        render();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onCreate$1() {
        begin(WorkshopQueue.Mode.MISSING);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onCreate$2() {
        begin(WorkshopQueue.Mode.ALL);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onCreate$3() {
        begin(null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onCreate$4() {
        pick(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onCreate$5() {
        pick(false);
    }

    private void load() {
        this.loading = true;
        this.worker.execute(new Runnable() { // from class: com.gmodvr.flat.WorkshopQueueActivity$$ExternalSyntheticLambda16
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$load$7();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$load$7() {
        final WorkshopQueue workshopQueue;
        final long j;
        final String message;
        WorkshopQueue workshopQueueSavedQueue;
        Map<Long, long[]> mapInstalled;
        WorkshopQueue workshopQueue2 = null;
        long usableSpace = -1;
        try {
            if (!SteamDownloadService.active() || SteamDownloadService.awaitingSelection()) {
                workshopQueueSavedQueue = SteamDownloadService.savedQueue(this);
                try {
                    GameContentProfile gameContentProfileForId = GameContentProfile.forId(SteamDownloadService.prefs(this).getString("profile", ""));
                    if (workshopQueueSavedQueue != null && gameContentProfileForId != null) {
                        File fileContent = Storage.content(this, gameContentProfileForId);
                        if (gameContentProfileForId == GameContentProfile.GARRYSMOD) {
                            mapInstalled = GmodAddons.installed(fileContent);
                        } else {
                            mapInstalled = SteamWorkshopInstall.installed(SteamFiles.inside(fileContent, gameContentProfileForId.gameDir + "/custom"));
                        }
                        workshopQueueSavedQueue.annotate(mapInstalled);
                        usableSpace = fileContent.getUsableSpace();
                    }
                } catch (Exception e) {
                    e = e;
                    workshopQueue2 = workshopQueueSavedQueue;
                    workshopQueue = workshopQueue2;
                    j = -1;
                    message = e.getMessage();
                }
            } else {
                workshopQueueSavedQueue = SteamDownloadService.liveQueue();
            }
            message = null;
            j = usableSpace;
            workshopQueue = workshopQueueSavedQueue;
        } catch (Exception e2) {
            e = e2;
        }
        this.ui.post(new Runnable() { // from class: com.gmodvr.flat.WorkshopQueueActivity$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$load$6(workshopQueue, j, message);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$load$6(WorkshopQueue workshopQueue, long j, String str) {
        if (this.destroyed) {
            return;
        }
        boolean z = false;
        this.loading = false;
        this.queue = workshopQueue;
        this.usable = j;
        if (str != null) {
            this.error = str;
        }
        if (workshopQueue != null && workshopQueue.phase == WorkshopQueue.Phase.REVIEW) {
            z = true;
        }
        this.reviewing = z;
        if (workshopQueue != null) {
            this.linked.setChecked(workshopQueue.includeLinked);
        }
        this.signature = "";
        render();
    }

    private void begin(WorkshopQueue.Mode mode) {
        WorkshopQueue workshopQueue = this.queue;
        if (workshopQueue == null || !this.reviewing) {
            return;
        }
        if (mode != null) {
            workshopQueue.select(mode);
        }
        WorkshopQueue.Summary summary = this.queue.summary();
        if (summary.selected == 0) {
            this.error = "Nothing is selected.";
            render();
            return;
        }
        long j = this.usable;
        if (j >= 0 && summary.neededBytes > j) {
            this.error = "Not enough free storage: this needs about " + GmodAddons.sizeText(summary.neededBytes) + ", " + GmodAddons.sizeText(this.usable) + " is free. Deselect items or free up space.";
            render();
            return;
        }
        final WorkshopQueue workshopQueue2 = this.queue;
        workshopQueue2.phase = WorkshopQueue.Phase.DOWNLOADING;
        this.worker.execute(new Runnable() { // from class: com.gmodvr.flat.WorkshopQueueActivity$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$begin$9(workshopQueue2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$begin$9(final WorkshopQueue workshopQueue) {
        final String str;
        try {
            workshopQueue.save(SteamDownloadService.queueFile(this));
            str = null;
        } catch (Exception e) {
            str = "Could not save the selection: " + e.getMessage();
        }
        this.ui.post(new Runnable() { // from class: com.gmodvr.flat.WorkshopQueueActivity$$ExternalSyntheticLambda17
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$begin$8(str, workshopQueue);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$begin$8(String str, WorkshopQueue workshopQueue) {
        if (this.destroyed) {
            return;
        }
        if (str != null) {
            workshopQueue.phase = WorkshopQueue.Phase.REVIEW;
            this.error = str;
            render();
        } else {
            this.reviewing = false;
            if (!SteamDownloadService.choose(true)) {
                resume();
            }
            load();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void cancel() {
        if (SteamDownloadService.choose(false)) {
            finish();
        } else {
            SteamDownloadService.discard(this, new Consumer() { // from class: com.gmodvr.flat.WorkshopQueueActivity$$ExternalSyntheticLambda18
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    this.f$0.lambda$cancel$10((String) obj);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$cancel$10(String str) {
        if (str != null) {
            this.error = str;
            if (this.destroyed) {
                return;
            }
            render();
            return;
        }
        if (this.destroyed) {
            return;
        }
        finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void resume() {
        this.error = null;
        try {
            SharedPrefsView sharedPrefsView = new SharedPrefsView();
            SteamDownloadService.start(this, sharedPrefsView.profile, sharedPrefsView.workshop, sharedPrefsView.language, SteamDownloadService.savedOrAnonymous(this), true);
        } catch (Exception e) {
            this.error = e.getMessage() + " Resume from the Steam screen if a sign-in is needed.";
        }
        render();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void retryFailed() {
        if (this.queue == null || SteamDownloadService.active()) {
            return;
        }
        final WorkshopQueue workshopQueue = this.queue;
        this.worker.execute(new Runnable() { // from class: com.gmodvr.flat.WorkshopQueueActivity$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$retryFailed$12(workshopQueue);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$retryFailed$12(WorkshopQueue workshopQueue) {
        final String message;
        try {
            if (workshopQueue.retryFailed() == 0) {
                message = "No failed items.";
            } else {
                workshopQueue.save(SteamDownloadService.queueFile(this));
                message = null;
            }
        } catch (Exception e) {
            message = e.getMessage();
        }
        this.ui.post(new Runnable() { // from class: com.gmodvr.flat.WorkshopQueueActivity$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$retryFailed$11(message);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$retryFailed$11(String str) {
        if (this.destroyed) {
            return;
        }
        if (str != null) {
            this.error = str;
            render();
        } else {
            resume();
            load();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearFinished() {
        if (SteamDownloadService.active()) {
            return;
        }
        SteamDownloadService.discard(this, new Consumer() { // from class: com.gmodvr.flat.WorkshopQueueActivity$$ExternalSyntheticLambda15
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                this.f$0.lambda$clearFinished$13((String) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$clearFinished$13(String str) {
        if (str != null) {
            this.error = str;
            if (this.destroyed) {
                return;
            }
            render();
            return;
        }
        if (this.destroyed) {
            return;
        }
        finish();
    }

    private void pick(boolean z) {
        WorkshopQueue workshopQueue = this.queue;
        if (workshopQueue == null || !this.reviewing) {
            return;
        }
        Iterator<WorkshopQueue.Entry> it = workshopQueue.entries.iterator();
        while (it.hasNext()) {
            this.queue.setSelected(it.next(), z);
        }
        this.signature = "";
        render();
    }

    public final class SharedPrefsView {
        final String language;
        final String profile;
        final String workshop;

        private SharedPrefsView() {
            this.profile = SteamDownloadService.prefs(WorkshopQueueActivity.this).getString("profile", "");
            this.workshop = SteamDownloadService.prefs(WorkshopQueueActivity.this).getString("workshop", "");
            this.language = SteamDownloadService.prefs(WorkshopQueueActivity.this).getString("language", "english");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void render() {
        String string;
        boolean z;
        WorkshopQueue.Summary summary;
        String str;
        int i;
        WorkshopQueue.Summary summary2;
        int iMin;
        WorkshopQueue.Summary summary3;
        boolean zActive = SteamDownloadService.active();
        if (!this.reviewing && !this.loading && ((this.queue == null || zActive) && SteamDownloadService.awaitingSelection())) {
            load();
            return;
        }
        WorkshopQueue workshopQueueLiveQueue = SteamDownloadService.liveQueue();
        if (zActive && !this.reviewing && workshopQueueLiveQueue != null) {
            this.queue = workshopQueueLiveQueue;
        }
        WorkshopQueue workshopQueue = this.queue;
        string = "";
        if (workshopQueue == null) {
            this.title.setText(this.loading ? "Loading…" : zActive ? "Preparing…" : "No Workshop collection in progress.");
            TextView textView = this.summary;
            String str2 = this.error;
            if (str2 != null) {
                string = str2;
            } else if (!this.loading) {
                string = SteamDownloadService.status(this);
            }
            textView.setText(string);
            View[] viewArr = {this.space, this.linked, this.note, this.reviewControls, this.runControls, this.checklistControls};
            while (i < 6) {
                viewArr[i].setVisibility(8);
                i++;
            }
            this.rows.clear();
            this.adapter.notifyDataSetChanged();
            return;
        }
        WorkshopQueue.Summary summary4 = workshopQueue.summary();
        TextView textView2 = this.title;
        StringBuilder sb = new StringBuilder();
        sb.append(this.queue.name());
        sb.append(this.queue.collection ? "" : " (Workshop item)");
        textView2.setText(sb.toString());
        StringBuilder sb2 = new StringBuilder();
        sb2.append(summary4.addons);
        sb2.append(summary4.addons == 1 ? " addon, " : " addons, ");
        sb2.append(GmodAddons.sizeText(summary4.totalBytes));
        sb2.append("\nUp to date: ");
        sb2.append(summary4.current);
        sb2.append("   Update available: ");
        sb2.append(summary4.outdated);
        sb2.append("   Not installed: ");
        sb2.append(summary4.missing);
        if (summary4.unavailable + summary4.otherGame + summary4.notContent > 0) {
            sb2.append("\nNot downloadable: ");
            ArrayList arrayList = new ArrayList();
            if (summary4.unavailable > 0) {
                arrayList.add(summary4.unavailable + " private or removed");
            }
            if (summary4.otherGame > 0) {
                arrayList.add(summary4.otherGame + " from another game");
            }
            if (summary4.notContent > 0) {
                arrayList.add(summary4.notContent + " not addons");
            }
            sb2.append(TextUtils.join(", ", arrayList));
        }
        TextView textView3 = this.summary;
        CharSequence charSequence = sb2;
        if (this.error != null) {
            charSequence = this.error + "\n\n" + ((Object) sb2);
        }
        textView3.setText(charSequence);
        TextView textView4 = this.summary;
        String str3 = this.error;
        int i2 = ERROR;
        textView4.setTextColor(str3 != null ? ERROR : TEXT);
        boolean z2 = this.queue.phase == WorkshopQueue.Phase.FINISHED && !zActive;
        this.reviewControls.setVisibility(this.reviewing ? 0 : 8);
        this.checklistControls.setVisibility(this.reviewing ? 0 : 8);
        this.runControls.setVisibility(this.reviewing ? 8 : 0);
        this.linked.setVisibility((!this.reviewing || summary4.linkedCollections <= 0) ? 8 : 0);
        CheckBox checkBox = this.linked;
        StringBuilder sb3 = new StringBuilder();
        sb3.append("Include ");
        sb3.append(summary4.linkedCollections);
        sb3.append(" linked collection");
        sb3.append(summary4.linkedCollections == 1 ? "" : "s");
        sb3.append(" (");
        sb3.append(summary4.linkedAddons);
        sb3.append(" more addons, ");
        sb3.append(GmodAddons.sizeText(summary4.linkedBytes));
        sb3.append(")");
        checkBox.setText(sb3.toString());
        String str4 = this.queue.truncated ? "Linked collections are too large or too deeply nested to list completely; the first 10000 items are shown." : "";
        this.note.setText(str4);
        this.note.setVisibility(str4.isEmpty() ? 8 : 0);
        if (this.reviewing) {
            WorkshopQueue.Summary summaryPresetSummary = presetSummary(WorkshopQueue.Mode.MISSING);
            WorkshopQueue.Summary summaryPresetSummary2 = presetSummary(WorkshopQueue.Mode.ALL);
            this.downloadMissing.setText("Download missing and outdated (" + summaryPresetSummary.selected + ", " + GmodAddons.sizeText(summaryPresetSummary.selectedBytes) + ")");
            this.downloadMissing.setEnabled(summaryPresetSummary.selected > 0);
            this.downloadAll.setText("Download all, reinstalling up-to-date (" + summaryPresetSummary2.selected + ", " + GmodAddons.sizeText(summaryPresetSummary2.selectedBytes) + ")");
            this.downloadAll.setEnabled(summaryPresetSummary2.selected > 0);
            this.downloadSelected.setText("Download selected (" + summary4.selected + ", " + GmodAddons.sizeText(summary4.selectedBytes) + ")");
            this.downloadSelected.setEnabled(summary4.selected > 0);
            this.space.setVisibility(0);
            long j = this.usable;
            if (j >= 0 && summary4.neededBytes > j) {
                i = 1;
            }
            TextView textView5 = this.space;
            StringBuilder sb4 = new StringBuilder();
            sb4.append(this.usable < 0 ? "Free space unknown" : GmodAddons.sizeText(this.usable) + " free on the game storage");
            if (summary4.selected != 0) {
                StringBuilder sb5 = new StringBuilder();
                sb5.append(". The selection needs about ");
                sb5.append(GmodAddons.sizeText(summary4.neededBytes));
                sb5.append(i != 0 ? ": not enough space. Deselect items or free up space." : " (including 512 MiB kept free).");
                string = sb5.toString();
            }
            sb4.append(string);
            textView5.setText(sb4.toString());
            TextView textView6 = this.space;
            if (i == 0) {
                i2 = MUTED;
            }
            textView6.setTextColor(i2);
            summary3 = summary4;
        } else {
            this.space.setVisibility(8);
            long[] jArrItemProgress = SteamDownloadService.itemProgress();
            WorkshopQueue.Entry entryCurrentItem = SteamDownloadService.currentItem();
            if (zActive && jArrItemProgress != null && entryCurrentItem != null) {
                TextView textView7 = this.itemText;
                StringBuilder sb6 = new StringBuilder();
                sb6.append("Item ");
                z = zActive;
                sb6.append(jArrItemProgress[0]);
                sb6.append(" of ");
                summary = summary4;
                str = ")";
                sb6.append(jArrItemProgress[1]);
                sb6.append(": ");
                sb6.append(entryCurrentItem.name());
                sb6.append(jArrItemProgress[3] > 0 ? "   " + GmodAddons.sizeText(jArrItemProgress[2]) + " / " + GmodAddons.sizeText(jArrItemProgress[3]) : "");
                textView7.setText(sb6.toString());
                this.itemBar.setIndeterminate(jArrItemProgress[3] == 0);
                ProgressBar progressBar = this.itemBar;
                long j2 = jArrItemProgress[3];
                progressBar.setProgress(j2 == 0 ? 0 : (int) Math.min(1000.0d, (jArrItemProgress[2] * 1000.0d) / j2));
                this.itemBar.setVisibility(0);
                i = 8;
            } else {
                z = zActive;
                summary = summary4;
                str = ")";
                this.itemText.setText((!z && z2) ? "Finished." : SteamDownloadService.status(this));
                i = 8;
                this.itemBar.setVisibility(8);
            }
            long[] jArrProgressBytes = this.queue.progressBytes();
            long jMax = z ? Math.max(jArrProgressBytes[0], SteamDownloadService.completed(this)) : jArrProgressBytes[0];
            TextView textView8 = this.overallText;
            StringBuilder sb7 = new StringBuilder();
            sb7.append("Overall ");
            sb7.append(GmodAddons.sizeText(jMax));
            sb7.append(" / ");
            sb7.append(GmodAddons.sizeText(jArrProgressBytes[1]));
            sb7.append("\n");
            WorkshopQueue.Summary summary5 = summary;
            sb7.append(summary5.done);
            sb7.append(" installed, ");
            sb7.append(summary5.skipped);
            sb7.append(" already up to date, ");
            sb7.append(summary5.failed);
            sb7.append(" failed, ");
            sb7.append(summary5.remaining);
            sb7.append(" to go");
            textView8.setText(sb7.toString());
            ProgressBar progressBar2 = this.overallBar;
            long j3 = jArrProgressBytes[1];
            if (j3 == 0) {
                iMin = 0;
                summary2 = summary5;
            } else {
                summary2 = summary5;
                iMin = (int) Math.min(1000.0d, (jMax * 1000.0d) / j3);
            }
            progressBar2.setProgress(iMin);
            this.pause.setEnabled(SteamDownloadService.canPause());
            this.resume.setEnabled((z || z2 || SteamDownloadService.discarding()) ? false : true);
            summary3 = summary2;
            this.retry.setEnabled(!z && summary3.failed > 0);
            this.retry.setText(summary3.failed > 0 ? "Retry failed (" + summary3.failed + str : "Retry failed");
            this.clear.setVisibility(z ? i : 0);
        }
        StringBuilder sb8 = new StringBuilder();
        sb8.append(this.queue.phase);
        sb8.append("/");
        sb8.append(this.reviewing);
        sb8.append("/");
        sb8.append(this.queue.includeLinked);
        sb8.append("/");
        sb8.append(summary3.done);
        sb8.append("/");
        sb8.append(summary3.failed);
        sb8.append("/");
        sb8.append(summary3.skipped);
        sb8.append("/");
        sb8.append(summary3.selected);
        sb8.append("/");
        sb8.append(SteamDownloadService.currentItem() == null ? 0L : SteamDownloadService.currentItem().id);
        String string2 = sb8.toString();
        if (string2.equals(this.signature)) {
            return;
        }
        this.signature = string2;
        this.rows.clear();
        if (this.reviewing) {
            for (WorkshopQueue.Entry entry : this.queue.entries) {
                if (this.queue.inScope(entry) && entry.downloadable()) {
                    this.rows.add(entry);
                }
            }
            for (WorkshopQueue.Entry entry2 : this.queue.entries) {
                if (this.queue.inScope(entry2) && !entry2.downloadable()) {
                    this.rows.add(entry2);
                }
            }
        } else {
            for (WorkshopQueue.Entry entry3 : this.queue.entries) {
                if (entry3.selected && entry3.status == WorkshopQueue.Status.FAILED) {
                    this.rows.add(entry3);
                }
            }
            for (WorkshopQueue.Entry entry4 : this.queue.entries) {
                if (entry4.selected && entry4.status != WorkshopQueue.Status.FAILED && this.queue.inScope(entry4)) {
                    this.rows.add(entry4);
                }
            }
        }
        this.adapter.notifyDataSetChanged();
    }

    private WorkshopQueue.Summary presetSummary(WorkshopQueue.Mode mode) {
        WorkshopQueue.Summary summary = new WorkshopQueue.Summary();
        for (WorkshopQueue.Entry entry : this.queue.entries) {
            if (entry.downloadable() && this.queue.inScope(entry) && (mode != WorkshopQueue.Mode.MISSING || entry.installed != WorkshopQueue.Installed.CURRENT)) {
                summary.selected++;
                summary.selectedBytes += entry.size;
            }
        }
        return summary;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String detail(WorkshopQueue.Entry entry) {
        String str;
        ArrayList arrayList = new ArrayList();
        if (!entry.downloadable()) {
            return entry.note;
        }
        arrayList.add(GmodAddons.sizeText(entry.size));
        if (!this.reviewing) {
            int i = AnonymousClass3.$SwitchMap$com$gmodvr$flat$WorkshopQueue$Status[entry.status.ordinal()];
            if (i == 1) {
                arrayList.add("installed");
            } else if (i == 2) {
                arrayList.add("already up to date");
            } else if (i == 3) {
                arrayList.add("failed: " + entry.error);
            } else {
                WorkshopQueue.Entry entryCurrentItem = SteamDownloadService.currentItem();
                arrayList.add((entryCurrentItem == null || entryCurrentItem.id != entry.id) ? "waiting" : "downloading");
            }
        } else {
            WorkshopQueue.Installed installed = entry.installed;
            if (installed == WorkshopQueue.Installed.CURRENT) {
                str = "installed, up to date";
            } else {
                str = installed == WorkshopQueue.Installed.OUTDATED ? "update available" : "not installed";
            }
            arrayList.add(str);
        }
        long j = entry.requiredBy;
        if (j != 0) {
            WorkshopQueue.Entry entry2 = this.queue.get(j);
            StringBuilder sb = new StringBuilder();
            sb.append("required by ");
            sb.append(entry2 == null ? Long.toUnsignedString(entry.requiredBy) : entry2.name());
            arrayList.add(sb.toString());
        }
        if (entry.linked && entry.sources.size() > 1) {
            Map<Long, WorkshopQueue.Collection> map = this.queue.collections;
            List<Long> list = entry.sources;
            WorkshopQueue.Collection collection = map.get(list.get(list.size() - 1));
            if (collection != null) {
                arrayList.add("from " + collection.name());
            }
        }
        return TextUtils.join(" · ", arrayList);
    }

    /* JADX INFO: renamed from: com.gmodvr.flat.WorkshopQueueActivity$3, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass3 {
        static final /* synthetic */ int[] $SwitchMap$com$gmodvr$flat$WorkshopQueue$Status;

        static {
            int[] iArr = new int[WorkshopQueue.Status.values().length];
            $SwitchMap$com$gmodvr$flat$WorkshopQueue$Status = iArr;
            try {
                iArr[WorkshopQueue.Status.DONE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$gmodvr$flat$WorkshopQueue$Status[WorkshopQueue.Status.CURRENT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$gmodvr$flat$WorkshopQueue$Status[WorkshopQueue.Status.FAILED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int color(WorkshopQueue.Entry entry) {
        if (!entry.downloadable()) {
            return DIM;
        }
        if (this.reviewing) {
            return entry.installed == WorkshopQueue.Installed.CURRENT ? OK : MUTED;
        }
        WorkshopQueue.Status status = entry.status;
        return status == WorkshopQueue.Status.FAILED ? ERROR : status == WorkshopQueue.Status.PENDING ? MUTED : OK;
    }

    public final class Row {
        final CheckBox box;
        WorkshopQueue.Entry entry;
        final TextView info;
        final TextView name;
        final LinearLayout view;

        public Row() {
            LinearLayout linearLayout = new LinearLayout(WorkshopQueueActivity.this);
            this.view = linearLayout;
            CheckBox checkBoxCheck = WorkshopQueueActivity.this.check("");
            this.box = checkBoxCheck;
            TextView textViewText = WorkshopQueueActivity.this.text("", 15.0f, WorkshopQueueActivity.TEXT);
            this.name = textViewText;
            TextView textViewText2 = WorkshopQueueActivity.this.text("", 12.5f, WorkshopQueueActivity.MUTED);
            this.info = textViewText2;
            linearLayout.setGravity(16);
            linearLayout.setPadding(WorkshopQueueActivity.this.dp(8.0f), WorkshopQueueActivity.this.dp(8.0f), WorkshopQueueActivity.this.dp(8.0f), WorkshopQueueActivity.this.dp(8.0f));
            linearLayout.setMinimumHeight(WorkshopQueueActivity.this.dp(52.0f));
            linearLayout.addView(checkBoxCheck);
            LinearLayout linearLayoutVertical = WorkshopQueueActivity.this.vertical();
            textViewText.setSingleLine(true);
            textViewText.setEllipsize(TextUtils.TruncateAt.END);
            linearLayoutVertical.addView(textViewText);
            linearLayoutVertical.addView(textViewText2);
            linearLayout.addView(linearLayoutVertical, new LinearLayout.LayoutParams(0, -2, 1.0f));
            linearLayout.setTag(this);
            checkBoxCheck.setOnClickListener(new View.OnClickListener() { // from class: com.gmodvr.flat.WorkshopQueueActivity$Row$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.lambda$new$0(view);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$0(View view) {
            if (this.entry == null || WorkshopQueueActivity.this.queue == null || !WorkshopQueueActivity.this.reviewing) {
                return;
            }
            WorkshopQueueActivity.this.queue.setSelected(this.entry, this.box.isChecked());
            this.box.setChecked(this.entry.selected);
            WorkshopQueueActivity.this.signature = "";
            WorkshopQueueActivity.this.render();
        }

        public void bind(WorkshopQueue.Entry entry) {
            this.entry = entry;
            this.name.setText(entry.name());
            this.info.setText(WorkshopQueueActivity.this.detail(entry));
            this.info.setTextColor(WorkshopQueueActivity.this.color(entry));
            boolean z = false;
            this.box.setVisibility(WorkshopQueueActivity.this.reviewing ? 0 : 8);
            this.box.setChecked(entry.selected);
            CheckBox checkBox = this.box;
            if (WorkshopQueueActivity.this.reviewing && entry.downloadable()) {
                z = true;
            }
            checkBox.setEnabled(z);
        }
    }

    @Override // android.app.Activity
    public void onResume() {
        super.onResume();
        this.ui.post(this.refresh);
    }

    @Override // android.app.Activity
    public void onPause() {
        this.ui.removeCallbacks(this.refresh);
        super.onPause();
    }

    @Override // android.app.Activity
    public void onDestroy() {
        this.destroyed = true;
        this.ui.removeCallbacksAndMessages(null);
        this.worker.shutdown();
        super.onDestroy();
    }

    private LinearLayout start(String str) {
        this.skin = Skin.of(this, getIntent().getStringExtra("franchise"));
        LinearLayout linearLayoutVertical = vertical();
        linearLayoutVertical.setPadding(dp(20.0f), dp(16.0f), dp(20.0f), dp(8.0f));
        LinearLayout linearLayout = new LinearLayout(this);
        linearLayout.setGravity(16);
        Button buttonSecondary = this.skin.secondary("←", new Runnable() { // from class: com.gmodvr.flat.WorkshopQueueActivity$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.finish();
            }
        });
        buttonSecondary.setContentDescription("Back");
        linearLayout.addView(buttonSecondary, new LinearLayout.LayoutParams(dp(44.0f), dp(44.0f)));
        TextView textViewHeading = this.skin.heading(str, 24.0f);
        textViewHeading.setPadding(dp(14.0f), 0, 0, 0);
        linearLayout.addView(textViewHeading);
        linearLayoutVertical.addView(linearLayout);
        return linearLayoutVertical;
    }

    private void finish(LinearLayout linearLayout, BaseAdapter baseAdapter) {
        ListView listView = new ListView(this);
        this.list = listView;
        listView.setBackgroundColor(-16052720);
        this.list.setDivider(new ColorDrawable(-14472399));
        this.list.setDividerHeight(1);
        this.list.setItemsCanFocus(true);
        this.list.setSelector(new ColorDrawable(0));
        this.list.addHeaderView(linearLayout, null, false);
        this.list.setAdapter((ListAdapter) baseAdapter);
        this.list.setPadding(0, 0, 0, dp(24.0f));
        this.list.setClipToPadding(false);
        Skin.fitSystemBars(this.list);
        setContentView(this.list);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public TextView text(String str, float f, int i) {
        return this.skin.text(str, f, i);
    }

    private Button primary(String str, Runnable runnable) {
        return this.skin.primary(str, runnable);
    }

    private Button secondary(String str, Runnable runnable) {
        return this.skin.secondary(str, runnable);
    }

    private TextView link(String str, Runnable runnable) {
        return this.skin.link(str, runnable);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public CheckBox check(String str) {
        return this.skin.check(str);
    }

    private ProgressBar bar() {
        ProgressBar progressBarProgress = this.skin.progress();
        progressBarProgress.setMax(DescriptorProtos.Edition.EDITION_2023_VALUE);
        return progressBarProgress;
    }

    private LinearLayout.LayoutParams barParams() {
        LinearLayout.LayoutParams layoutParamsBelow = below(8.0f);
        layoutParamsBelow.height = dp(3.0f);
        return layoutParamsBelow;
    }

    private LinearLayout.LayoutParams below(float f) {
        return this.skin.below(f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int dp(float f) {
        return this.skin.dp(f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public LinearLayout vertical() {
        LinearLayout linearLayout = new LinearLayout(this);
        linearLayout.setOrientation(1);
        return linearLayout;
    }
}
