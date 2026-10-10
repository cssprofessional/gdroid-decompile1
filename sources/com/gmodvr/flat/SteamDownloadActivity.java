package com.gmodvr.flat;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.Spinner;
import android.widget.TextView;
import com.gmodvr.flat.SteamDownloadService;
import com.google.protobuf.DescriptorProtos;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.function.Consumer;

/* JADX INFO: loaded from: classes.dex */
public final class SteamDownloadActivity extends Activity {
    private static final String[] LANGUAGE_KEYS = {"english", "german", "french", "spanish", "latam", "italian", "russian", "polish", "portuguese", "brazilian", "schinese", "tchinese", "japanese", "koreana"};
    private static final String[] LANGUAGE_NAMES = {"English", "Deutsch", "Français", "Español (España)", "Español (Latinoamérica)", "Italiano", "Русский", "Polski", "Português", "Português (Brasil)", "简体中文", "繁體中文", "日本語", "한국어"};
    private LinearLayout access;
    private TextView accountStatus;
    private TextView authPrompt;
    private TextView bytes;
    private EditText code;
    private Button collection;
    private LinearLayout controls;
    private Button discard;
    private String error;
    private String franchise;
    private Button gameDownload;
    private Spinner games;
    private LinearLayout guard;
    private Spinner languages;
    private EditText password;
    private Button pause;
    private ProgressBar progress;
    private CheckBox remember;
    private Button resume;
    private Button sendCode;
    private Button signIn;
    private TextView signout;
    private Skin skin;
    private TextView status;
    private LinearLayout transfer;
    private EditText username;
    private EditText workshop;
    private Button workshopDownload;
    private final Handler ui = new Handler(Looper.getMainLooper());
    private String reviewOpened = "";
    private final List<GameContentProfile> profiles = new ArrayList();
    private final Runnable refresh = new Runnable() { // from class: com.gmodvr.flat.SteamDownloadActivity.1
        @Override // java.lang.Runnable
        public void run() {
            SteamDownloadActivity.this.render();
            SteamDownloadActivity.this.ui.postDelayed(this, 500L);
        }
    };

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.profiles.addAll(GameContentProfile.all());
        String stringExtra = getIntent().getStringExtra("franchise");
        this.franchise = stringExtra;
        Skin skinOf = Skin.of(this, stringExtra);
        this.skin = skinOf;
        LinearLayout linearLayoutScreen = skinOf.screen("Steam downloads", "Download your owned Source games directly from Steam to this device.");
        LinearLayout linearLayoutPanel = this.skin.panel(-1548209);
        this.access = linearLayoutPanel;
        linearLayoutPanel.addView(this.skin.label("Storage access needed", -1548209));
        this.access.addView(this.skin.text("Downloads are written to shared storage, which needs all-files access.", 14.0f, -1643795), this.skin.below(4.0f));
        this.access.addView(this.skin.secondary("Grant storage access", new Runnable() { // from class: com.gmodvr.flat.SteamDownloadActivity$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$onCreate$0();
            }
        }), this.skin.below(12.0f));
        linearLayoutScreen.addView(this.access, this.skin.below(20.0f));
        Skin skin = this.skin;
        this.transfer = skin.panel(skin.accent);
        TextView textViewText = this.skin.text("", 14.0f, -1643795);
        this.status = textViewText;
        this.transfer.addView(textViewText);
        TextView textViewLabel = this.skin.label("", -7497309);
        this.bytes = textViewLabel;
        this.transfer.addView(textViewLabel, this.skin.below(6.0f));
        ProgressBar progressBarProgress = this.skin.progress();
        this.progress = progressBarProgress;
        progressBarProgress.setMax(DescriptorProtos.Edition.EDITION_2023_VALUE);
        LinearLayout.LayoutParams layoutParamsBelow = this.skin.below(10.0f);
        layoutParamsBelow.height = this.skin.dp(3.0f);
        this.transfer.addView(this.progress, layoutParamsBelow);
        this.controls = new LinearLayout(this);
        this.pause = this.skin.secondary("Pause", new SteamDownloadActivity$$ExternalSyntheticLambda3());
        this.resume = this.skin.secondary("Resume", new Runnable() { // from class: com.gmodvr.flat.SteamDownloadActivity$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$onCreate$1();
            }
        });
        Button buttonSecondary = this.skin.secondary("Discard", new Runnable() { // from class: com.gmodvr.flat.SteamDownloadActivity$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.discard();
            }
        });
        this.discard = buttonSecondary;
        Button[] buttonArr = {this.pause, this.resume, buttonSecondary};
        int i = 0;
        for (int i2 = 0; i2 < 3; i2++) {
            Button button = buttonArr[i2];
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(0, -2, 1.0f);
            if (this.controls.getChildCount() > 0) {
                layoutParams.leftMargin = this.skin.dp(8.0f);
            }
            this.controls.addView(button, layoutParams);
        }
        this.transfer.addView(this.controls, this.skin.below(14.0f));
        Button buttonSecondary2 = this.skin.secondary("Workshop collection: review and progress", new Runnable() { // from class: com.gmodvr.flat.SteamDownloadActivity$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.openCollection();
            }
        });
        this.collection = buttonSecondary2;
        this.transfer.addView(buttonSecondary2, this.skin.below(10.0f));
        linearLayoutScreen.addView(this.transfer, this.skin.below(20.0f));
        Skin skin2 = this.skin;
        LinearLayout linearLayoutPanel2 = skin2.panel(skin2.accent);
        this.guard = linearLayoutPanel2;
        Skin skin3 = this.skin;
        linearLayoutPanel2.addView(skin3.label("Steam Guard", skin3.accent));
        TextView textViewText2 = this.skin.text("", 14.0f, -1643795);
        this.authPrompt = textViewText2;
        this.guard.addView(textViewText2, this.skin.below(4.0f));
        LinearLayout linearLayout = new LinearLayout(this);
        EditText editTextInput = this.skin.input("Code", 4097);
        this.code = editTextInput;
        editTextInput.setSaveEnabled(false);
        linearLayout.addView(this.code, new LinearLayout.LayoutParams(0, -2, 1.0f));
        Button buttonPrimary = this.skin.primary("Submit", new Runnable() { // from class: com.gmodvr.flat.SteamDownloadActivity$$ExternalSyntheticLambda7
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$onCreate$2();
            }
        });
        this.sendCode = buttonPrimary;
        buttonPrimary.setMinHeight(this.skin.dp(44.0f));
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams2.leftMargin = this.skin.dp(8.0f);
        linearLayout.addView(this.sendCode, layoutParams2);
        this.guard.addView(linearLayout, this.skin.below(12.0f));
        linearLayoutScreen.addView(this.guard, this.skin.below(12.0f));
        linearLayoutScreen.addView(this.skin.section("Account"), this.skin.below(28.0f));
        SteamCredentialStore steamCredentialStore = new SteamCredentialStore(this);
        EditText editTextField = field(linearLayoutScreen, "Account name", "", 145);
        this.username = editTextField;
        editTextField.setText(steamCredentialStore.username());
        this.password = field(linearLayoutScreen, "Password", "", 129);
        CheckBox checkBoxCheck = this.skin.check("Remember Steam sign-in on this device");
        this.remember = checkBoxCheck;
        checkBoxCheck.setChecked(!steamCredentialStore.username().isEmpty());
        linearLayoutScreen.addView(this.remember, this.skin.below(10.0f));
        linearLayoutScreen.addView(this.skin.text("Save a Steam sign-in here to join servers. Entering account details alone does not sign you in.", 12.5f, -7497309), this.skin.below(8.0f));
        Button buttonPrimary2 = this.skin.primary("Sign in for multiplayer", new Runnable() { // from class: com.gmodvr.flat.SteamDownloadActivity$$ExternalSyntheticLambda8
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.signIn();
            }
        });
        this.signIn = buttonPrimary2;
        linearLayoutScreen.addView(buttonPrimary2, this.skin.below(12.0f));
        TextView textViewText3 = this.skin.text("", 13.0f, -7497309);
        this.accountStatus = textViewText3;
        linearLayoutScreen.addView(textViewText3, this.skin.below(8.0f));
        this.signout = this.skin.link("Forget saved account", new Runnable() { // from class: com.gmodvr.flat.SteamDownloadActivity$$ExternalSyntheticLambda9
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$onCreate$3();
            }
        });
        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams3.leftMargin = -this.skin.dp(8.0f);
        linearLayoutScreen.addView(this.signout, layoutParams3);
        linearLayoutScreen.addView(this.skin.section("Game"), this.skin.below(24.0f));
        linearLayoutScreen.addView(this.skin.label("Title", -7497309), this.skin.below(14.0f));
        ArrayList arrayList = new ArrayList();
        Iterator<GameContentProfile> it = this.profiles.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().displayName);
        }
        Spinner spinner = this.skin.spinner(arrayList);
        this.games = spinner;
        linearLayoutScreen.addView(spinner, this.skin.below(6.0f));
        String stringExtra2 = getIntent().getStringExtra("profile");
        if (stringExtra2 == null) {
            stringExtra2 = SteamDownloadService.prefs(this).getString("profile", GameContentProfile.DEFAULT.id);
        }
        for (int i3 = 0; i3 < this.profiles.size(); i3++) {
            if (this.profiles.get(i3).id.equals(stringExtra2)) {
                this.games.setSelection(i3);
            }
        }
        linearLayoutScreen.addView(this.skin.label("Language", -7497309), this.skin.below(14.0f));
        Spinner spinner2 = this.skin.spinner(Arrays.asList(LANGUAGE_NAMES));
        this.languages = spinner2;
        linearLayoutScreen.addView(spinner2, this.skin.below(6.0f));
        String string = SteamDownloadService.prefs(this).getString("language", "english");
        while (true) {
            String[] strArr = LANGUAGE_KEYS;
            if (i < strArr.length) {
                if (strArr[i].equals(string)) {
                    this.languages.setSelection(i);
                }
                i++;
            } else {
                Button buttonPrimary3 = this.skin.primary("Download selected game", new Runnable() { // from class: com.gmodvr.flat.SteamDownloadActivity$$ExternalSyntheticLambda10
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$onCreate$4();
                    }
                });
                this.gameDownload = buttonPrimary3;
                linearLayoutScreen.addView(buttonPrimary3, this.skin.below(18.0f));
                linearLayoutScreen.addView(this.skin.section("Steam Workshop"), this.skin.below(32.0f));
                EditText editTextField2 = field(linearLayoutScreen, "Item or collection", "ID or URL", 145);
                this.workshop = editTextField2;
                editTextField2.setText(SteamDownloadService.prefs(this).getString("workshop", ""));
                linearLayoutScreen.addView(this.skin.text("Paste a Steam Workshop item or collection URL or ID. Garry's Mod items install into garrysmod/addons and need no Steam account (leave the account empty); other games' items go into custom/. A collection is listed first, so you can see its size and choose what to download.", 12.5f, -7497309), this.skin.below(8.0f));
                Button buttonSecondary3 = this.skin.secondary("Download workshop mod", new Runnable() { // from class: com.gmodvr.flat.SteamDownloadActivity$$ExternalSyntheticLambda11
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$onCreate$5();
                    }
                });
                this.workshopDownload = buttonSecondary3;
                linearLayoutScreen.addView(buttonSecondary3, this.skin.below(12.0f));
                linearLayoutScreen.addView(this.skin.rule(), this.skin.hairline(32.0f));
                linearLayoutScreen.addView(this.skin.row("Open mod manager", null, null, new Runnable() { // from class: com.gmodvr.flat.SteamDownloadActivity$$ExternalSyntheticLambda2
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$onCreate$6();
                    }
                }));
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onCreate$0() {
        if (Build.VERSION.SDK_INT >= 30) {
            try {
                Intent intent = new Intent("android.settings.MANAGE_APP_ALL_FILES_ACCESS_PERMISSION");
                intent.setData(Uri.parse("package:" + getPackageName()));
                startActivity(intent);
            } catch (Exception unused) {
                startActivity(new Intent("android.settings.MANAGE_ALL_FILES_ACCESS_PERMISSION"));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onCreate$1() {
        start(false, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onCreate$2() {
        SteamDownloadService.submitCode(this.code.getText().toString());
        this.code.setText("");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onCreate$3() {
        new SteamCredentialStore(this).clear();
        SteamDownloadService.clearSignInMessage();
        this.username.setText("");
        this.password.setText("");
        this.remember.setChecked(false);
        this.error = "Saved Steam account removed.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onCreate$4() {
        start(false, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onCreate$5() {
        start(true, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onCreate$6() {
        startActivity(new Intent(this, (Class<?>) ModManagerActivity.class).putExtra("franchise", this.franchise));
    }

    private EditText field(LinearLayout linearLayout, String str, String str2, int i) {
        linearLayout.addView(this.skin.label(str, -7497309), this.skin.below(14.0f));
        EditText editTextInput = this.skin.input(str2, i);
        editTextInput.setSaveEnabled(false);
        linearLayout.addView(editTextInput, this.skin.below(6.0f));
        return editTextInput;
    }

    private void start(boolean z, boolean z2) {
        String strTrim;
        this.error = null;
        try {
            String string = z2 ? SteamDownloadService.prefs(this).getString("profile", "") : this.profiles.get(this.games.getSelectedItemPosition()).id;
            if (!z) {
                strTrim = "";
            } else {
                strTrim = this.workshop.getText().toString().trim();
            }
            SteamDownloadService.start(this, string, strTrim, LANGUAGE_KEYS[this.languages.getSelectedItemPosition()], new SteamDownloadService.Credentials(this.username.getText().toString().trim(), this.password.getText().toString(), this.remember.isChecked()), z2);
            this.password.setText("");
            if (Build.VERSION.SDK_INT >= 33 && checkSelfPermission("android.permission.POST_NOTIFICATIONS") != 0) {
                requestPermissions(new String[]{"android.permission.POST_NOTIFICATIONS"}, 9);
            }
        } catch (Exception e) {
            this.error = e.getMessage();
        }
        render();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void signIn() {
        this.error = null;
        try {
            SteamDownloadService.signIn(this, new SteamDownloadService.Credentials(this.username.getText().toString().trim(), this.password.getText().toString(), this.remember.isChecked()));
            this.password.setText("");
            if (Build.VERSION.SDK_INT >= 33 && checkSelfPermission("android.permission.POST_NOTIFICATIONS") != 0) {
                requestPermissions(new String[]{"android.permission.POST_NOTIFICATIONS"}, 9);
            }
        } catch (Exception e) {
            this.error = e.getMessage();
        }
        render();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void openCollection() {
        startActivity(new Intent(this, (Class<?>) WorkshopQueueActivity.class).putExtra("franchise", this.franchise));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void discard() {
        this.error = null;
        SteamDownloadService.discard(this, new Consumer() { // from class: com.gmodvr.flat.SteamDownloadActivity$$ExternalSyntheticLambda0
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                this.f$0.lambda$discard$7((String) obj);
            }
        });
        render();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$discard$7(String str) {
        this.error = str;
        if (isDestroyed()) {
            return;
        }
        render();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void render() {
        int i;
        String str;
        int iMin;
        boolean zActive = SteamDownloadService.active();
        boolean zDiscarding = SteamDownloadService.discarding();
        boolean z = zActive || zDiscarding;
        boolean zActivationPending = SteamDownloadService.activationPending(this);
        boolean zIsEmpty = SteamDownloadService.prefs(this).getString("token", "").isEmpty();
        String string = SteamDownloadService.prefs(this).getString("state", "idle");
        this.gameDownload.setEnabled((z || zActivationPending) ? false : true);
        this.signIn.setEnabled(!z);
        this.workshopDownload.setEnabled((z || zActivationPending) ? false : true);
        this.resume.setEnabled((z || zIsEmpty || string.equals("complete")) ? false : true);
        this.discard.setEnabled((z || zIsEmpty || string.equals("complete")) ? false : true);
        this.pause.setEnabled(SteamDownloadService.canPause());
        this.pause.setText(SteamDownloadService.signingIn() ? "Cancel sign-in" : "Pause");
        this.signout.setEnabled(!z);
        this.games.setEnabled(!z);
        this.languages.setEnabled(!z);
        this.username.setEnabled(!z);
        this.password.setEnabled(!z);
        this.workshop.setEnabled(!z);
        this.remember.setEnabled(!z);
        String strSignInMessage = SteamDownloadService.signInMessage();
        TextView textView = this.accountStatus;
        if (strSignInMessage.isEmpty()) {
            strSignInMessage = new SteamCredentialStore(this).hasSavedSession() ? "Steam sign-in saved on this device." : "No Steam sign-in is saved on this device.";
        }
        textView.setText(strSignInMessage);
        String strChallenge = SteamDownloadService.challenge();
        this.authPrompt.setText(strChallenge);
        this.guard.setVisibility(strChallenge.isEmpty() ? 8 : 0);
        this.access.setVisibility(LocalFolder.hasAccess(this) ? 8 : 0);
        TextView textView2 = this.status;
        String strStatus = this.error;
        if (strStatus == null) {
            strStatus = zDiscarding ? "Removing unfinished download…" : SteamDownloadService.status(this);
        }
        textView2.setText(strStatus);
        Skin.mark(this.transfer, this.error != null ? -1548209 : z ? this.skin.accent : string.equals("complete") ? -7943825 : -10787217);
        long jCompleted = SteamDownloadService.completed(this);
        long j = SteamDownloadService.total(this);
        this.progress.setIndeterminate(zActive && j == 0);
        ProgressBar progressBar = this.progress;
        int i2 = (j > 0L ? 1 : (j == 0L ? 0 : -1));
        if (i2 == 0) {
            i = i2;
            str = "token";
            iMin = 0;
        } else {
            i = i2;
            str = "token";
            iMin = (int) Math.min(1000.0d, (jCompleted * 1000.0d) / j);
        }
        progressBar.setProgress(iMin);
        this.progress.setVisibility((zActive || i > 0) ? 0 : 8);
        this.bytes.setText(i == 0 ? "" : String.format(Locale.ROOT, "%.2f / %.2f GiB verified", Double.valueOf(jCompleted / 1.073741824E9d), Double.valueOf(j / 1.073741824E9d)));
        this.bytes.setVisibility(i == 0 ? 8 : 0);
        this.controls.setVisibility((this.pause.isEnabled() || this.resume.isEnabled() || this.discard.isEnabled()) ? 0 : 8);
        this.collection.setVisibility((SteamDownloadService.hasQueue(this) || SteamDownloadService.awaitingSelection()) ? 0 : 8);
        String string2 = SteamDownloadService.prefs(this).getString(str, "");
        if (!SteamDownloadService.awaitingSelection() || string2.equals(this.reviewOpened)) {
            return;
        }
        this.reviewOpened = string2;
        openCollection();
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
        this.password.setText("");
        this.code.setText("");
        this.ui.removeCallbacksAndMessages(null);
        super.onDestroy();
    }
}
