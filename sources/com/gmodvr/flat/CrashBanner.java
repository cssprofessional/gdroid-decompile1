package com.gmodvr.flat;

import android.app.Activity;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.widget.LinearLayout;
import com.gmodvr.flat.DiagnosticReports;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
final class CrashBanner {
    private final Activity activity;
    private LinearLayout container;
    private DiagnosticReports.Report shown;
    private Skin skin;
    private final Handler main = new Handler(Looper.getMainLooper());
    private final Runnable delayedScan = new Runnable() { // from class: com.gmodvr.flat.CrashBanner$$ExternalSyntheticLambda1
        @Override // java.lang.Runnable
        public final void run() {
            this.f$0.scan();
        }
    };

    public CrashBanner(Activity activity) {
        this.activity = activity;
    }

    public View view(Skin skin) {
        this.skin = skin;
        LinearLayout linearLayout = new LinearLayout(this.activity);
        this.container = linearLayout;
        linearLayout.setOrientation(1);
        this.container.setVisibility(8);
        DiagnosticReports.Report report = this.shown;
        if (report != null) {
            fill(report);
        }
        return this.container;
    }

    public void refresh() {
        this.main.removeCallbacks(this.delayedScan);
        scan();
        this.main.postDelayed(this.delayedScan, 4000L);
    }

    public void stop() {
        this.main.removeCallbacksAndMessages(null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void scan() {
        CrashReporter.EXECUTOR.execute(new Runnable() { // from class: com.gmodvr.flat.CrashBanner$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$scan$1();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$scan$1() {
        final DiagnosticReports.Report reportScan;
        try {
            reportScan = CrashReporter.scan(this.activity.getApplicationContext());
        } catch (Exception unused) {
            reportScan = null;
        }
        this.main.post(new Runnable() { // from class: com.gmodvr.flat.CrashBanner$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$scan$0(reportScan);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$scan$0(DiagnosticReports.Report report) {
        if (this.activity.isFinishing() || this.activity.isDestroyed()) {
            return;
        }
        this.shown = report;
        if (report == null) {
            hide();
        } else {
            fill(report);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hide() {
        this.shown = null;
        LinearLayout linearLayout = this.container;
        if (linearLayout != null) {
            linearLayout.removeAllViews();
            this.container.setVisibility(8);
        }
    }

    private void fill(final DiagnosticReports.Report report) {
        LinearLayout linearLayout = this.container;
        if (linearLayout == null || this.skin == null) {
            return;
        }
        linearLayout.removeAllViews();
        LinearLayout linearLayoutPanel = this.skin.panel(-1548209);
        linearLayoutPanel.addView(this.skin.label(report.kind.title + " · " + new SimpleDateFormat("MMM d, HH:mm", Locale.getDefault()).format(new Date(report.epochMs)), -1548209));
        linearLayoutPanel.addView(this.skin.text("The game closed unexpectedly. Share crash report?", 14.0f, -1643795), this.skin.below(4.0f));
        LinearLayout linearLayout2 = new LinearLayout(this.activity);
        linearLayout2.addView(this.skin.secondary("Share", new Runnable() { // from class: com.gmodvr.flat.CrashBanner$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$fill$2(report);
            }
        }), new LinearLayout.LayoutParams(0, -2, 1.0f));
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(0, -2, 1.0f);
        layoutParams.leftMargin = this.skin.dp(8.0f);
        linearLayout2.addView(this.skin.secondary("Dismiss", new Runnable() { // from class: com.gmodvr.flat.CrashBanner$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$fill$3(report);
            }
        }), layoutParams);
        linearLayoutPanel.addView(linearLayout2, this.skin.below(10.0f));
        LinearLayout.LayoutParams layoutParamsBelow = this.skin.below(0.0f);
        layoutParamsBelow.bottomMargin = this.skin.dp(14.0f);
        this.container.addView(linearLayoutPanel, layoutParamsBelow);
        this.container.setVisibility(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$fill$2(DiagnosticReports.Report report) {
        LogShare.share(this.activity, this.skin, report.file, new Runnable() { // from class: com.gmodvr.flat.CrashBanner$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.hide();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$fill$3(DiagnosticReports.Report report) {
        CrashReporter.markBannerSeen(this.activity, report.epochMs);
        hide();
    }
}
