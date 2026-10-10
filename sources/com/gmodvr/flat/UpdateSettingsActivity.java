package com.gmodvr.flat;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.net.Uri;
import android.os.Bundle;
import android.text.format.Formatter;
import android.widget.Button;
import android.widget.CompoundButton;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import android.widget.ToggleButton;
import com.gmodvr.flat.UpdateManager;
import com.gmodvr.flat.UpdateRelease;
import java.io.IOException;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class UpdateSettingsActivity extends Activity implements UpdateManager.Listener {
    private static final String DISCORD_SUPPORT_URL = "https://discord.gg/rqxyuPxbNF";
    private Button cancel;
    private Button check;
    private TextView detail;
    private Button primary;
    private ProgressBar progress;
    private TextView release;
    private boolean requestedInstall;
    private boolean resumed;
    private TextView status;
    private UpdateManager updates;

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.updates = UpdateManager.get(this);
        Skin skinOf = Skin.of(this, getIntent().getStringExtra("franchise"));
        LinearLayout linearLayoutScreen = skinOf.screen(getString(R.string.updates_title), getString(R.string.updates_installed, BuildConfig.VERSION_NAME, 43, BuildConfig.UPDATE_ABI));
        final ToggleButton toggleButton = skinOf.toggle(this.updates.automatic());
        toggleButton.setContentDescription(getString(R.string.updates_automatic));
        toggleButton.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.gmodvr.flat.UpdateSettingsActivity$$ExternalSyntheticLambda0
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                this.f$0.lambda$onCreate$0(compoundButton, z);
            }
        });
        linearLayoutScreen.addView(skinOf.row(getString(R.string.updates_automatic), null, toggleButton, new Runnable() { // from class: com.gmodvr.flat.UpdateSettingsActivity$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                UpdateSettingsActivity.lambda$onCreate$1(toggleButton);
            }
        }), skinOf.below(12.0f));
        linearLayoutScreen.addView(skinOf.text(getString(R.string.updates_explanation), 13.0f, -7497309), skinOf.below(12.0f));
        LinearLayout linearLayoutPanel = skinOf.panel(skinOf.accent);
        TextView textViewText = skinOf.text("", 18.0f, -1643795);
        this.status = textViewText;
        textViewText.setAccessibilityLiveRegion(1);
        linearLayoutPanel.addView(this.status);
        ProgressBar progressBar = new ProgressBar(this, null, android.R.attr.progressBarStyleHorizontal);
        this.progress = progressBar;
        progressBar.setMax(100);
        this.progress.setProgressTintList(ColorStateList.valueOf(skinOf.accent));
        this.progress.setIndeterminateTintList(ColorStateList.valueOf(skinOf.accent));
        linearLayoutPanel.addView(this.progress, skinOf.below(12.0f));
        TextView textViewText2 = skinOf.text("", 14.0f, -7497309);
        this.detail = textViewText2;
        linearLayoutPanel.addView(textViewText2, skinOf.below(8.0f));
        Button buttonPrimary = skinOf.primary(getString(R.string.updates_check), new Runnable() { // from class: com.gmodvr.flat.UpdateSettingsActivity$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.primaryAction();
            }
        });
        this.primary = buttonPrimary;
        linearLayoutPanel.addView(buttonPrimary, skinOf.below(16.0f));
        String string = getString(R.string.updates_check);
        final UpdateManager updateManager = this.updates;
        Objects.requireNonNull(updateManager);
        Button buttonSecondary = skinOf.secondary(string, new Runnable() { // from class: com.gmodvr.flat.UpdateSettingsActivity$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                updateManager.check();
            }
        });
        this.check = buttonSecondary;
        linearLayoutPanel.addView(buttonSecondary, skinOf.below(8.0f));
        Button buttonSecondary2 = skinOf.secondary(getString(R.string.updates_discard), new Runnable() { // from class: com.gmodvr.flat.UpdateSettingsActivity$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$onCreate$2();
            }
        });
        this.cancel = buttonSecondary2;
        linearLayoutPanel.addView(buttonSecondary2, skinOf.below(8.0f));
        linearLayoutScreen.addView(linearLayoutPanel, skinOf.below(24.0f));
        linearLayoutScreen.addView(skinOf.secondary(getString(R.string.updates_releases), new Runnable() { // from class: com.gmodvr.flat.UpdateSettingsActivity$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$onCreate$3();
            }
        }), skinOf.below(16.0f));
        TextView textViewText3 = skinOf.text("", 14.0f, -7497309);
        this.release = textViewText3;
        textViewText3.setTextIsSelectable(true);
        linearLayoutScreen.addView(this.release, skinOf.below(16.0f));
        Button buttonSecondary3 = skinOf.secondary(getString(R.string.launcher_discord_support), new Runnable() { // from class: com.gmodvr.flat.UpdateSettingsActivity$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.openDiscordSupport();
            }
        });
        buttonSecondary3.setContentDescription(getString(R.string.launcher_discord_support_description));
        linearLayoutScreen.addView(buttonSecondary3, skinOf.below(24.0f));
        changed();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onCreate$0(CompoundButton compoundButton, boolean z) {
        this.updates.setAutomatic(z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$onCreate$1(ToggleButton toggleButton) {
        toggleButton.setChecked(!toggleButton.isChecked());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onCreate$2() {
        if (this.updates.installing()) {
            this.requestedInstall = false;
            this.updates.cancelInstallation();
        } else if (this.updates.busy()) {
            this.updates.pause();
        } else {
            this.updates.discard();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onCreate$3() {
        try {
            startActivity(new Intent("android.intent.action.VIEW", Uri.parse("https://github.com/tinsarfal/GDroid/releases")));
        } catch (RuntimeException unused) {
            this.updates.message(getString(R.string.updates_no_browser));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void openDiscordSupport() {
        try {
            startActivity(new Intent("android.intent.action.VIEW", Uri.parse(DISCORD_SUPPORT_URL)));
        } catch (ActivityNotFoundException | SecurityException unused) {
            TextView textView = (TextView) new AlertDialog.Builder(this).setTitle(R.string.launcher_discord_support).setMessage(getString(R.string.launcher_discord_support_unavailable, DISCORD_SUPPORT_URL)).setPositiveButton(android.R.string.ok, (DialogInterface.OnClickListener) null).show().findViewById(android.R.id.message);
            if (textView != null) {
                textView.setTextIsSelectable(true);
            }
        }
    }

    @Override // android.app.Activity
    public void onResume() {
        super.onResume();
        this.resumed = true;
        this.updates.listen(this);
        changed();
    }

    @Override // android.app.Activity
    public void onPause() {
        this.resumed = false;
        this.updates.unlisten(this);
        super.onPause();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void primaryAction() {
        UpdateManager.Snapshot snapshot = this.updates.snapshot();
        if (this.updates.busy()) {
            return;
        }
        int i = AnonymousClass1.$SwitchMap$com$gmodvr$flat$UpdateManager$Phase[snapshot.phase.ordinal()];
        if (i == 1 || i == 2) {
            startTransfer(false);
            return;
        }
        if (i != 3) {
            if (i == 4) {
                showConfirmation();
                return;
            } else {
                if (i != 5) {
                    return;
                }
                this.updates.check();
                return;
            }
        }
        try {
            UpdateInstaller.requireIdle(this);
            if (!getPackageManager().canRequestPackageInstalls()) {
                this.updates.message(getString(R.string.updates_permission_help));
                try {
                    startActivity(new Intent("android.settings.MANAGE_UNKNOWN_APP_SOURCES", Uri.parse("package:" + getPackageName())));
                    return;
                } catch (RuntimeException unused) {
                    this.updates.message(getString(R.string.updates_permission_unavailable));
                    return;
                }
            }
            this.requestedInstall = true;
            startTransfer(true);
        } catch (IOException e) {
            this.updates.message(e.getMessage());
        }
    }

    /* JADX INFO: renamed from: com.gmodvr.flat.UpdateSettingsActivity$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$gmodvr$flat$UpdateManager$Phase;

        static {
            int[] iArr = new int[UpdateManager.Phase.values().length];
            $SwitchMap$com$gmodvr$flat$UpdateManager$Phase = iArr;
            try {
                iArr[UpdateManager.Phase.AVAILABLE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$gmodvr$flat$UpdateManager$Phase[UpdateManager.Phase.PAUSED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$gmodvr$flat$UpdateManager$Phase[UpdateManager.Phase.READY.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$gmodvr$flat$UpdateManager$Phase[UpdateManager.Phase.CONFIRMATION.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$gmodvr$flat$UpdateManager$Phase[UpdateManager.Phase.IDLE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$gmodvr$flat$UpdateManager$Phase[UpdateManager.Phase.CHECKING.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$gmodvr$flat$UpdateManager$Phase[UpdateManager.Phase.DOWNLOADING.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$gmodvr$flat$UpdateManager$Phase[UpdateManager.Phase.VERIFYING.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$com$gmodvr$flat$UpdateManager$Phase[UpdateManager.Phase.INSTALLING.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
        }
    }

    private void startTransfer(boolean z) {
        try {
            startForegroundService(new Intent(this, (Class<?>) UpdateDownloadService.class).setAction(z ? "com.gmodvr.flat.UPDATE_INSTALL" : "com.gmodvr.flat.UPDATE_DOWNLOAD"));
        } catch (RuntimeException unused) {
            this.requestedInstall = false;
            this.updates.message(getString(R.string.updates_start_failed));
        }
    }

    private void showConfirmation() {
        this.requestedInstall = false;
        try {
            UpdateInstaller.requireIdle(this);
            startActivity(this.updates.confirmation());
        } catch (IOException | RuntimeException e) {
            this.updates.message(UpdateManager.readable(e));
        }
    }

    @Override // com.gmodvr.flat.UpdateManager.Listener
    public void changed() {
        int i;
        UpdateRelease.Candidate candidate;
        UpdateManager.Snapshot snapshot = this.updates.snapshot();
        this.status.setText(status(this, snapshot));
        this.detail.setText(snapshot.message);
        this.detail.setVisibility(snapshot.message.isEmpty() ? 8 : 0);
        UpdateManager.Phase phase = snapshot.phase;
        boolean z = true;
        boolean z2 = phase == UpdateManager.Phase.DOWNLOADING;
        boolean z3 = z2 || phase == UpdateManager.Phase.CHECKING || phase == UpdateManager.Phase.VERIFYING || phase == UpdateManager.Phase.INSTALLING;
        this.progress.setVisibility(z3 ? 0 : 8);
        this.progress.setIndeterminate(!z2);
        if (z2 && (candidate = snapshot.candidate) != null) {
            this.progress.setProgress((int) ((snapshot.downloaded * 100) / candidate.size));
        }
        int i2 = R.string.updates_check;
        int i3 = AnonymousClass1.$SwitchMap$com$gmodvr$flat$UpdateManager$Phase[snapshot.phase.ordinal()];
        if (i3 == 1) {
            i2 = R.string.updates_download;
        } else if (i3 == 2) {
            i2 = R.string.updates_resume;
        } else if (i3 == 3) {
            i2 = R.string.updates_install;
        } else if (i3 == 4) {
            i2 = R.string.updates_confirm;
        }
        this.primary.setText(i2);
        this.primary.setVisibility(z3 ? 8 : 0);
        this.primary.setEnabled(!this.updates.busy());
        this.check.setVisibility((snapshot.candidate == null || z3 || this.updates.installing()) ? 8 : 0);
        this.check.setEnabled(!this.updates.busy());
        UpdateManager.Phase phase2 = snapshot.phase;
        this.cancel.setVisibility(((phase2 == UpdateManager.Phase.PAUSED || phase2 == UpdateManager.Phase.READY) || z2 || phase2 == UpdateManager.Phase.VERIFYING || this.updates.installing()) ? 0 : 8);
        Button button = this.cancel;
        if (this.updates.installing()) {
            i = R.string.updates_cancel_install;
        } else {
            i = this.updates.busy() ? R.string.updates_pause : R.string.updates_discard;
        }
        button.setText(i);
        Button button2 = this.cancel;
        if (this.updates.isCanceled() && this.updates.busy()) {
            z = false;
        }
        button2.setEnabled(z);
        TextView textView = this.release;
        UpdateRelease.Candidate candidate2 = snapshot.candidate;
        textView.setText(candidate2 == null ? "" : getString(R.string.updates_release_notes, candidate2.tag, Formatter.formatFileSize(this, candidate2.size), snapshot.candidate.notes));
        if (this.resumed && this.requestedInstall && snapshot.phase == UpdateManager.Phase.CONFIRMATION) {
            showConfirmation();
        }
        if (snapshot.phase != UpdateManager.Phase.READY || this.updates.busy()) {
            return;
        }
        this.requestedInstall = false;
    }

    public static String status(Context context, UpdateManager.Snapshot snapshot) {
        switch (AnonymousClass1.$SwitchMap$com$gmodvr$flat$UpdateManager$Phase[snapshot.phase.ordinal()]) {
            case 1:
                return context.getString(R.string.updates_available, snapshot.candidate.tag);
            case 2:
                return context.getString(R.string.updates_paused);
            case 3:
                return context.getString(R.string.updates_ready, snapshot.candidate.tag);
            case 4:
                return context.getString(R.string.updates_confirmation);
            case 5:
            default:
                return context.getString(R.string.updates_idle);
            case 6:
                return context.getString(R.string.updates_checking);
            case 7:
                return context.getString(R.string.updates_downloading, Formatter.formatFileSize(context, snapshot.downloaded), Formatter.formatFileSize(context, snapshot.candidate.size));
            case 8:
                return context.getString(R.string.updates_verifying);
            case 9:
                return context.getString(R.string.updates_installing);
        }
    }
}
