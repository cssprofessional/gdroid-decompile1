package com.gmodvr.flat;

import android.app.Activity;
import android.app.ActivityManager;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.res.Configuration;
import android.graphics.drawable.GradientDrawable;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.os.Handler;
import android.os.Looper;
import android.text.method.LinkMovementMethod;
import android.text.util.Linkify;
import android.view.View;
import android.widget.ArrayAdapter;
import android.widget.AutoCompleteTextView;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.ScrollView;
import android.widget.SeekBar;
import android.widget.TextView;
import android.widget.Toast;
import com.gmodvr.flat.GmodMaps;
import com.gmodvr.flat.Skin;
import com.gmodvr.flat.Storage;
import com.gmodvr.flat.UpdateManager;
import com.gmodvr.flat.WorkshopMaps;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.function.Predicate;

/* JADX INFO: loaded from: classes.dex */
public final class LauncherActivity extends Activity {
    private static final int EXPORT = 2;
    private static final int FOLDER = 4;
    private static final int GAME_ACCESS = 5;
    private static final int IMPORT = 1;
    private static final int MOD_FOLDER = 6;
    private static final int RESTORE = 3;
    private boolean busy;
    private CrashBanner crashBanner;
    private List<LauncherFranchise> franchises;
    private ProgressBar importProgress;
    private Button play;
    private boolean playAfterMapChoice;
    private LauncherFranchise selectedFranchise;
    private GameMod selectedMod;
    private GameContentProfile selectedProfile;
    private Skin skin;
    private TextView status;
    private TextView statusLabel;
    private LinearLayout statusPanel;
    private TextView updateStatus;
    private final UpdateManager.Listener updateListener = new UpdateManager.Listener() { // from class: com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda82
        @Override // com.gmodvr.flat.UpdateManager.Listener
        public final void changed() {
            this.f$0.refreshUpdateStatus();
        }
    };
    private final Handler handler = new Handler(Looper.getMainLooper());
    private final ExecutorService worker = Executors.newSingleThreadExecutor();
    private final Runnable refresh = new Runnable() { // from class: com.gmodvr.flat.LauncherActivity.1
        @Override // java.lang.Runnable
        public void run() {
            LauncherActivity.this.updateStatus();
            LauncherActivity.this.handler.postDelayed(this, 1000L);
        }
    };

    public interface Work {
        void run() throws Exception;
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        String str;
        super.onCreate(bundle);
        this.crashBanner = new CrashBanner(this);
        List<LauncherFranchise> listDefaultFranchises = LauncherFranchise.defaultFranchises();
        this.franchises = listDefaultFranchises;
        LauncherFranchise launcherFranchise = listDefaultFranchises.get(0);
        this.selectedFranchise = launcherFranchise;
        this.selectedProfile = launcherFranchise.profiles.get(0);
        String string = getSharedPreferences("mods", 0).getString("selected_" + this.selectedProfile.id, "");
        if (string.isEmpty()) {
            str = null;
        } else {
            try {
                this.selectedMod = GameMod.read(new File(string));
                str = null;
            } catch (IOException e) {
                str = "Previously selected mod is unavailable: " + e.getMessage();
            }
        }
        try {
            Storage.Lease leaseLock = Storage.lock(this);
            try {
                Storage.recoverUser(Storage.user(this, this.selectedProfile));
                Storage.recoverContent(this);
                if (leaseLock != null) {
                    leaseLock.close();
                }
            } finally {
            }
        } catch (IOException unused) {
        }
        render();
        if (str != null) {
            showError(str);
        }
        String stringExtra = getIntent().getStringExtra("error");
        if (stringExtra != null) {
            showError(stringExtra);
        }
    }

    @Override // android.app.Activity
    public void onResume() {
        super.onResume();
        this.handler.post(this.refresh);
        this.crashBanner.refresh();
        UpdateManager.get(this).listen(this.updateListener);
        UpdateManager.get(this).checkAutomatic();
        refreshUpdateStatus();
    }

    @Override // android.app.Activity
    public void onPause() {
        UpdateManager.get(this).unlisten(this.updateListener);
        this.handler.removeCallbacks(this.refresh);
        super.onPause();
    }

    @Override // android.app.Activity
    public void onDestroy() {
        UpdateManager.get(this).unlisten(this.updateListener);
        this.handler.removeCallbacks(this.refresh);
        this.crashBanner.stop();
        this.worker.shutdown();
        super.onDestroy();
    }

    private int dp(float f) {
        return (int) ((f * getResources().getDisplayMetrics().density) + 0.5f);
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        render();
    }

    private View inset(View view) {
        FrameLayout frameLayout = new FrameLayout(this);
        frameLayout.setPadding(dp(24.0f), dp(8.0f), dp(24.0f), 0);
        frameLayout.addView(view);
        return frameLayout;
    }

    private void render() {
        LinearLayout column;
        LinearLayout linearLayoutPane;
        this.skin = Skin.of(this, this.selectedFranchise.id);
        boolean z = getResources().getConfiguration().screenWidthDp >= 640;
        LinearLayout linearLayout = new LinearLayout(this);
        linearLayout.setOrientation(1);
        linearLayout.setBackgroundColor(-16052720);
        Skin.fitSystemBars(linearLayout);
        setContentView(linearLayout);
        if (z) {
            LinearLayout linearLayout2 = new LinearLayout(this);
            linearLayout2.setGravity(80);
            linearLayout2.setPadding(dp(24.0f), dp(12.0f), dp(24.0f), 0);
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(0, -2, 1.0f);
            layoutParams.bottomMargin = dp(10.0f);
            linearLayout2.addView(header(24.0f), layoutParams);
            linearLayout.addView(linearLayout2);
            linearLayout.addView(this.skin.rule(), this.skin.hairline(0.0f));
            LinearLayout linearLayout3 = new LinearLayout(this);
            linearLayout.addView(linearLayout3, new LinearLayout.LayoutParams(-1, 0, 1.0f));
            column = pane(linearLayout3);
            linearLayout3.addView(this.skin.rule(), new LinearLayout.LayoutParams(dp(1.0f), -1));
            linearLayoutPane = pane(linearLayout3);
        } else {
            ScrollView scrollViewScroller = Skin.scroller(this);
            linearLayout.addView(scrollViewScroller, new LinearLayout.LayoutParams(-1, 0, 1.0f));
            column = new Skin.Column(this, dp(640.0f));
            column.setPadding(dp(20.0f), dp(20.0f), dp(20.0f), dp(28.0f));
            scrollViewScroller.addView(column, new FrameLayout.LayoutParams(-1, -2, 1));
            column.addView(header(30.0f));
            column.addView(this.skin.rule(), this.skin.hairline(16.0f));
            column.addView(new View(this), new LinearLayout.LayoutParams(-1, dp(16.0f)));
            linearLayoutPane = column;
        }
        column.addView(this.crashBanner.view(this.skin));
        renderSession(column);
        linearLayoutPane.addView(new View(this), new LinearLayout.LayoutParams(-1, dp(z ? 0.0f : 28.0f)));
        renderTools(linearLayoutPane);
        updateStatus();
    }

    private LinearLayout pane(LinearLayout linearLayout) {
        ScrollView scrollViewScroller = Skin.scroller(this);
        LinearLayout linearLayout2 = new LinearLayout(this);
        linearLayout2.setOrientation(1);
        linearLayout2.setPadding(dp(24.0f), dp(18.0f), dp(24.0f), dp(24.0f));
        scrollViewScroller.addView(linearLayout2);
        linearLayout.addView(scrollViewScroller, new LinearLayout.LayoutParams(0, -1, 1.0f));
        return linearLayout2;
    }

    private View header(float f) {
        LinearLayout linearLayout = new LinearLayout(this);
        linearLayout.setOrientation(1);
        linearLayout.addView(this.skin.heading(getString(R.string.app_name), f));
        Skin skin = this.skin;
        linearLayout.addView(skin.label("Garry's Mod // flatscreen runtime", skin.accent), this.skin.below(2.0f));
        return linearLayout;
    }

    private LinearLayout franchiseTabs() {
        LinearLayout linearLayout = new LinearLayout(this);
        linearLayout.setLayoutParams(new LinearLayout.LayoutParams(-2, dp(44.0f)));
        Iterator<LauncherFranchise> it = this.franchises.iterator();
        while (it.hasNext()) {
            final LauncherFranchise next = it.next();
            linearLayout.addView(this.skin.tab(next.displayName, next == this.selectedFranchise, new Runnable() { // from class: com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda11
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$franchiseTabs$0(next);
                }
            }), new LinearLayout.LayoutParams(-2, -1));
        }
        return linearLayout;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$franchiseTabs$0(LauncherFranchise launcherFranchise) {
        if (this.busy || launcherFranchise == this.selectedFranchise) {
            return;
        }
        this.selectedFranchise = launcherFranchise;
        this.selectedProfile = launcherFranchise.profiles.get(0);
        this.selectedMod = null;
        render();
    }

    private View gamePicker() {
        LinearLayout linearLayout = new LinearLayout(this);
        for (final GameContentProfile gameContentProfile : this.selectedFranchise.profiles) {
            boolean z = false;
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(0, dp(38.0f), 1.0f);
            if (linearLayout.getChildCount() > 0) {
                layoutParams.leftMargin = dp(6.0f);
            }
            Skin skin = this.skin;
            String strReplace = gameContentProfile.displayName.replace("Half-Life 2: ", "").replace("Half-Life 2", "HL2");
            if (gameContentProfile == this.selectedProfile) {
                z = true;
            }
            linearLayout.addView(skin.segment(strReplace, z, new Runnable() { // from class: com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda76
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$gamePicker$1(gameContentProfile);
                }
            }), layoutParams);
        }
        return linearLayout;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$gamePicker$1(GameContentProfile gameContentProfile) {
        if (this.busy || gameContentProfile == this.selectedProfile) {
            return;
        }
        this.selectedProfile = gameContentProfile;
        this.selectedMod = null;
        render();
    }

    private void renderSession(LinearLayout linearLayout) {
        this.statusPanel = this.skin.panel(-10787217);
        TextView textViewLabel = this.skin.label("", -10787217);
        this.statusLabel = textViewLabel;
        this.statusPanel.addView(textViewLabel);
        TextView textViewText = this.skin.text("Checking game files…", 14.0f, -1643795);
        this.status = textViewText;
        this.statusPanel.addView(textViewText, this.skin.below(4.0f));
        ProgressBar progressBarProgress = this.skin.progress();
        this.importProgress = progressBarProgress;
        progressBarProgress.setMax(100);
        this.importProgress.setVisibility(8);
        LinearLayout.LayoutParams layoutParamsBelow = this.skin.below(10.0f);
        layoutParamsBelow.height = dp(3.0f);
        this.statusPanel.addView(this.importProgress, layoutParamsBelow);
        linearLayout.addView(this.statusPanel, this.skin.below(0.0f));
        if ("garrysmod".equals(this.selectedProfile.id)) {
            renderSandbox(linearLayout);
            return;
        }
        Skin skin = this.skin;
        GameMod gameMod = this.selectedMod;
        linearLayout.addView(skin.row("Campaign", null, skin.tag(gameMod == null ? "Base game" : gameMod.title, -7497309), new LauncherActivity$$ExternalSyntheticLambda5(this)), this.skin.below(4.0f));
        Button buttonPrimary = this.skin.primary("Play", new Runnable() { // from class: com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$renderSession$2();
            }
        });
        this.play = buttonPrimary;
        linearLayout.addView(buttonPrimary, this.skin.below(16.0f));
        LinearLayout linearLayout2 = new LinearLayout(this);
        linearLayout2.addView(this.skin.secondary("New game", new Runnable() { // from class: com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda7
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$renderSession$4();
            }
        }), new LinearLayout.LayoutParams(0, -2, 1.0f));
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(0, -2, 1.0f);
        layoutParams.leftMargin = dp(8.0f);
        linearLayout2.addView(this.skin.secondary("Load a save", new Runnable() { // from class: com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda8
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.chooseSave();
            }
        }), layoutParams);
        linearLayout.addView(linearLayout2, this.skin.below(8.0f));
        if (this.selectedMod == null && "portal2".equals(this.selectedProfile.id)) {
            linearLayout.addView(this.skin.secondary("LAN co-op · Experimental", new LauncherActivity$$ExternalSyntheticLambda9(this)), this.skin.below(8.0f));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$renderSession$2() {
        launch("continue", null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$renderSession$4() {
        new AlertDialog.Builder(this).setTitle("Start a new game?").setMessage("Your manual saves remain available. Autosaves will be replaced as you play.").setPositiveButton("Start", new DialogInterface.OnClickListener() { // from class: com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda83
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                this.f$0.lambda$renderSession$3(dialogInterface, i);
            }
        }).setNegativeButton("Cancel", (DialogInterface.OnClickListener) null).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$renderSession$3(DialogInterface dialogInterface, int i) {
        launch("new", null);
    }

    private void renderTools(LinearLayout linearLayout) {
        linearLayout.addView(this.skin.row("Updates", "Check for and install new GDroid releases.", null, new Runnable() { // from class: com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda21
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$renderTools$5();
            }
        }));
        TextView textViewText = this.skin.text("", 13.0f, -7497309);
        this.updateStatus = textViewText;
        linearLayout.addView(textViewText, this.skin.below(4.0f));
        refreshUpdateStatus();
        linearLayout.addView(this.skin.section("Downloads & mods"));
        linearLayout.addView(this.skin.row("Download from Steam", null, null, new Runnable() { // from class: com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda30
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$renderTools$6();
            }
        }));
        linearLayout.addView(this.skin.row("Mod manager", null, null, new Runnable() { // from class: com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda31
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$renderTools$7();
            }
        }));
        linearLayout.addView(this.skin.row("Play Workshop map…", "Choose a map from enabled Workshop downloads.", null, new Runnable() { // from class: com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda32
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.chooseWorkshopMap();
            }
        }));
        linearLayout.addView(this.skin.row("Launch a mod…", null, null, new LauncherActivity$$ExternalSyntheticLambda5(this)));
        linearLayout.addView(this.skin.section("Local game files"), this.skin.below(28.0f));
        linearLayout.addView(this.skin.row("Import game files", "Fast move from local storage, USB, or SD card into /storage/emulated/0/srceng.", null, new Runnable() { // from class: com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda33
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$renderTools$8();
            }
        }));
        Skin skin = this.skin;
        linearLayout.addView(skin.row("Copy game files", null, skin.tag("Keep source", -10787217), new Runnable() { // from class: com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda34
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$renderTools$9();
            }
        }));
        Skin skin2 = this.skin;
        linearLayout.addView(skin2.row("Play from a folder", "Plays directly from internal storage, SD card, or USB drive.", skin2.tag("No copy", -10787217), new Runnable() { // from class: com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda35
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.chooseFolder();
            }
        }));
        linearLayout.addView(this.skin.section("Settings & tools"), this.skin.below(28.0f));
        linearLayout.addView(this.skin.row("Display & controls", null, null, new Runnable() { // from class: com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda36
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.settings();
            }
        }));
        linearLayout.addView(this.skin.row("Control layout", "Preview touch controls and adjust their color, position and size.", null, new LauncherActivity$$ExternalSyntheticLambda13(this)));
        if ("garrysmod".equals(this.selectedProfile.id)) {
            String string = getSharedPreferences("settings", 0).getString("gmod_player_name", null);
            Skin skin3 = this.skin;
            if (string == null) {
                string = "Set the name other players see in multiplayer.";
            }
            linearLayout.addView(skin3.row("Player name", string, null, new Runnable() { // from class: com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda22
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.playerName();
                }
            }));
            boolean zEquals = "menu".equals(sandboxStartAction());
            Skin skin4 = this.skin;
            linearLayout.addView(skin4.row("Start at", "What Play opens: the main menu (new game, options, quit) or the selected map.", skin4.tag(zEquals ? "Main menu" : "Selected map", -7497309), new Runnable() { // from class: com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda23
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.chooseStartAt();
                }
            }));
            gameToggle(linearLayout, "gmod_npc_walkthrough", "Walk through friendly NPCs", "Off: you bump into citizens and other allies, who step aside (like Garry's Mod). On: you pass through them.");
            gameToggle(linearLayout, "gmod_walk_anim", "Walking animation when not sprinting", "Off: the run animation plays at normal speed (like Garry's Mod). On: walk animation unless sprinting.");
            gameToggle(linearLayout, "gmod_mute_failed_grab", "Mute failed grab sound", "Silence the beep when a grab or use attempt fails. Applies next time you launch the game.");
        }
        linearLayout.addView(this.skin.row("Custom buttons", "Touch buttons that press a key for addons (G, F, mouse 3, ...).", null, new Runnable() { // from class: com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda24
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$renderTools$10();
            }
        }));
        linearLayout.addView(this.skin.row("Launch arguments", null, null, new Runnable() { // from class: com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda25
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.launchArguments();
            }
        }));
        linearLayout.addView(this.skin.row("Back up saves", null, null, new Runnable() { // from class: com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda26
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$renderTools$11();
            }
        }));
        linearLayout.addView(this.skin.row("Restore a backup", null, null, new Runnable() { // from class: com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda27
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$renderTools$12();
            }
        }));
        linearLayout.addView(this.skin.row("Share logs", "Logs, crash reports and device details as a zip, for a bug report.", null, new Runnable() { // from class: com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda28
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$renderTools$14();
            }
        }));
        linearLayout.addView(this.skin.row("Help & credits", null, null, new Runnable() { // from class: com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda29
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$renderTools$15();
            }
        }));
        linearLayout.addView(this.skin.label(getString(R.string.app_name) + " · v" + BuildConfig.VERSION_NAME, -10787217), this.skin.below(24.0f));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$renderTools$5() {
        startActivity(new Intent(this, (Class<?>) UpdateSettingsActivity.class).putExtra("franchise", this.selectedFranchise.id));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$renderTools$6() {
        Intent intent = new Intent(this, (Class<?>) SteamDownloadActivity.class);
        intent.putExtra("profile", this.selectedProfile.id);
        intent.putExtra("franchise", this.selectedFranchise.id);
        startActivity(intent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$renderTools$7() {
        startActivity(new Intent(this, (Class<?>) ModManagerActivity.class).putExtra("franchise", this.selectedFranchise.id));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$renderTools$8() {
        chooseImport(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$renderTools$9() {
        chooseImport(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$renderTools$10() {
        startActivity(new Intent(this, (Class<?>) CustomButtonsActivity.class).putExtra("franchise", this.selectedFranchise.id));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$renderTools$11() {
        String str;
        Intent intentAddCategory = new Intent("android.intent.action.CREATE_DOCUMENT").setType("application/zip").addCategory("android.intent.category.OPENABLE");
        StringBuilder sb = new StringBuilder();
        sb.append(this.selectedProfile.id);
        if (this.selectedMod == null) {
            str = "";
        } else {
            str = "-" + this.selectedMod.id;
        }
        sb.append(str);
        sb.append("-saves-");
        sb.append(new SimpleDateFormat("yyyyMMdd-HHmm", Locale.ROOT).format(new Date()));
        sb.append(".zip");
        intentAddCategory.putExtra("android.intent.extra.TITLE", sb.toString());
        startActivityForResult(intentAddCategory, 2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$renderTools$12() {
        startActivityForResult(new Intent("android.intent.action.OPEN_DOCUMENT").setType("application/zip").addCategory("android.intent.category.OPENABLE"), 3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$renderTools$13() {
        this.crashBanner.refresh();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$renderTools$14() {
        LogShare.share(this, this.skin, null, new Runnable() { // from class: com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda70
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$renderTools$13();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$renderTools$15() {
        TextView textView = (TextView) new AlertDialog.Builder(this).setTitle(R.string.app_name).setMessage("GDroid brings Garry's Mod to Android phones and tablets.\n\nDeveloper: s3551\nDiscord: https://discord.gg/rqxyuPxbNF\n\nControls: the left of the screen moves, the right looks. Top right: spawn menu, context menu, undo. Right side: use, jump, attack, crouch, reload, secondary attack, push/pull a held prop (physgun), noclip. Hold use while dragging to rotate a held prop. The gear button edits the layout. In menus, tap to select, drag to move controls, or hold an element for half a second to right-click it. Custom buttons (Settings & tools) add on-screen keys for addons that react to a key press. Bluetooth controllers, keyboards and mice also work (Q / C hold the menus).\n\nGame data is user-supplied (your Garry's Mod folder) or downloaded via Steam.\n\nLauncher from SourceAndroid; engine from SourceVRPort with nillerusr's Android work.").setPositiveButton("Close", (DialogInterface.OnClickListener) null).show().findViewById(android.R.id.message);
        if (textView != null) {
            Linkify.addLinks(textView, 1);
            textView.setMovementMethod(LinkMovementMethod.getInstance());
        }
    }

    private boolean gameRunning() {
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses = ((ActivityManager) getSystemService(ActivityManager.class)).getRunningAppProcesses();
        if (runningAppProcesses == null) {
            return false;
        }
        Iterator<ActivityManager.RunningAppProcessInfo> it = runningAppProcesses.iterator();
        while (it.hasNext()) {
            if (it.next().processName.equals(getPackageName() + ":game")) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void refreshUpdateStatus() {
        if (this.updateStatus == null) {
            return;
        }
        UpdateManager updateManager = UpdateManager.get(this);
        UpdateManager.Snapshot snapshot = updateManager.snapshot();
        boolean zAnnounces = UpdateManager.announces(updateManager.automatic(), snapshot);
        this.updateStatus.setVisibility(zAnnounces ? 0 : 8);
        if (zAnnounces) {
            this.updateStatus.setText(UpdateSettingsActivity.status(this, snapshot));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateStatus() {
        int i;
        String str;
        StringBuilder sb;
        String str2;
        if (this.status == null || this.busy) {
            return;
        }
        boolean yVar = Storage.ready(this, this.selectedProfile);
        boolean z = Storage.usesSharedContent(this) && !LocalFolder.hasAccess(this);
        String str3 = "";
        String string = getSharedPreferences("import", 0).getString("status", "");
        SharedPreferences sharedPreferences = getSharedPreferences("import", 0);
        int i2 = sharedPreferences.getInt("progress", 0);
        boolean z2 = sharedPreferences.getBoolean("error", false);
        String strCustomContent = Storage.customContent(this, this.selectedProfile.id);
        if (z) {
            str = "Access needed";
            i = this.skin.accent;
            string = "Allow file access to read game files.";
        } else if (ImportService.running) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(string);
            if (i2 >= 0) {
                str3 = " · " + i2 + "%";
            }
            sb2.append(str3);
            string = sb2.toString();
            i = this.skin.accent;
            str = "Importing";
        } else {
            i = -1548209;
            if (strCustomContent != null) {
                if (yVar) {
                    sb = new StringBuilder();
                    sb.append("Ready to play from ");
                } else {
                    sb = new StringBuilder();
                    sb.append("Folder missing files for ");
                    strCustomContent = this.selectedProfile.displayName;
                }
                sb.append(strCustomContent);
                string = sb.toString();
                str = yVar ? "Ready · external folder" : "Files missing";
                if (yVar) {
                    i = -7943825;
                }
            } else if (z2) {
                str = "Import failed";
            } else if (yVar) {
                string = "Ready to play (" + sessionTitle() + ")";
                try {
                    if ("garrysmod".equals(this.selectedProfile.id) && GameFolder.usesHalfLife2Packs(Storage.content(this, this.selectedProfile))) {
                        string = string + " · Half-Life 2 content from srceng/hl2";
                    }
                } catch (IOException unused) {
                }
                str = "Ready";
                i = -7943825;
            } else {
                if (string.isEmpty()) {
                    string = "Download via Steam or import game files for " + this.selectedProfile.displayName;
                }
                str = "Not installed";
                i = -10787217;
            }
        }
        if (this.selectedMod != null && yVar && !ImportService.running && !z2 && !z) {
            string = sessionTitle() + "\n" + this.selectedMod.directory;
        }
        this.status.setText(string);
        this.statusLabel.setText(str);
        this.statusLabel.setTextColor(i);
        Skin.mark(this.statusPanel, i);
        this.importProgress.setVisibility(ImportService.running ? 0 : 8);
        this.importProgress.setIndeterminate(i2 < 0);
        this.importProgress.setProgress(Math.max(0, i2));
        this.play.setEnabled((yVar || z) && !ImportService.running);
        Button button = this.play;
        if (z) {
            str2 = "Allow game file access";
        } else if (gameRunning()) {
            str2 = "Return to game";
        } else {
            str2 = "Play " + sessionTitle();
        }
        button.setText(str2);
    }

    private void showError(String str) {
        if (isFinishing() || isDestroyed()) {
            return;
        }
        new AlertDialog.Builder(this).setTitle(R.string.app_name).setMessage(str).setPositiveButton("OK", (DialogInterface.OnClickListener) null).show();
    }

    private void work(String str, final Work work, final Runnable runnable) {
        if (this.busy || ImportService.running) {
            showError("Wait for the current operation to finish.");
            return;
        }
        this.busy = true;
        this.status.setText(str);
        this.play.setEnabled(false);
        this.statusLabel.setText("Working");
        this.statusLabel.setTextColor(this.skin.accent);
        Skin.mark(this.statusPanel, this.skin.accent);
        this.worker.execute(new Runnable() { // from class: com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda77
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$work$17(work, runnable);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$work$17(Work work, final Runnable runnable) {
        try {
            work.run();
            e = null;
        } catch (Exception e) {
            e = e;
        }
        this.handler.post(new Runnable() { // from class: com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda59
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$work$16(e, runnable);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$work$16(Exception exc, Runnable runnable) {
        this.busy = false;
        if (isFinishing() || isDestroyed()) {
            return;
        }
        updateStatus();
        if (exc != null) {
            showError(exc.getMessage());
        } else if (runnable != null) {
            runnable.run();
        }
    }

    private void launch(final String str, final String str2) {
        if (UpdateManager.get(this).installing()) {
            showError(getString(R.string.updates_install_busy));
            return;
        }
        if (Storage.usesSharedContent(this) && !LocalFolder.hasAccess(this)) {
            requestFileAccess(5);
            return;
        }
        if (gameRunning()) {
            startActivity(new Intent(this, (Class<?>) GameActivity.class).addFlags(131072));
            return;
        }
        if (!Storage.ready(this, this.selectedProfile)) {
            showError("Install or import game files for " + this.selectedProfile.displayName + " first.");
            return;
        }
        if (this.selectedMod != null && ("new".equals(str) || ("continue".equals(str) && saves().isEmpty()))) {
            chooseModMap();
            return;
        }
        final GameContentProfile gameContentProfile = this.selectedProfile;
        final GameMod gameMod = this.selectedMod;
        work("Preparing " + sessionTitle() + "…", new Work() { // from class: com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda64
            @Override // com.gmodvr.flat.LauncherActivity.Work
            public final void run() throws Exception {
                this.f$0.lambda$launch$19(str, gameContentProfile, str2, gameMod);
            }
        }, new Runnable() { // from class: com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda65
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$launch$20(str, str2, gameContentProfile, gameMod);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$launch$19(String str, GameContentProfile gameContentProfile, final String str2, GameMod gameMod) throws Exception {
        Storage.Lease leaseLock = Storage.lock(this);
        try {
            if ("workshop".equals(str) && WorkshopMaps.scan(Storage.content(this, gameContentProfile), Storage.user(this, gameContentProfile), gameContentProfile).stream().noneMatch(new Predicate() { // from class: com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda0
                @Override // java.util.function.Predicate
                public final boolean test(Object obj) {
                    return LauncherActivity.lambda$launch$18(str2, (WorkshopMaps.Entry) obj);
                }
            })) {
                throw new IOException("This Workshop map is no longer available. Check that it is enabled in Mod manager.");
            }
            RuntimeAssets.prepare(this, gameContentProfile, gameMod == null ? null : GameMod.read(gameMod.directory));
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
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$launch$18(String str, WorkshopMaps.Entry entry) {
        return entry.map.equals(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$launch$20(String str, String str2, GameContentProfile gameContentProfile, GameMod gameMod) {
        if (UpdateManager.get(this).installing()) {
            showError(getString(R.string.updates_install_busy));
            return;
        }
        if ("continue".equals(str)) {
            List<File> listSaves = saves();
            if (listSaves.isEmpty()) {
                str = "new";
            } else {
                str2 = saveName(listSaves.get(0));
                str = "load";
            }
        }
        startActivity(new Intent(this, (Class<?>) GameActivity.class).putExtra("profile", gameContentProfile.id).putExtra("mod_path", gameMod == null ? null : gameMod.directory.getPath()).putExtra("action", str).putExtra("target", str2));
    }

    private List<File> saves() {
        ArrayList arrayList = new ArrayList();
        try {
            File[] fileArrListFiles = new File(sessionUser(), "save").listFiles();
            if (fileArrListFiles != null) {
                for (File file : fileArrListFiles) {
                    if (file.isFile() && file.getName().matches("[A-Za-z0-9_-]+\\.sav")) {
                        arrayList.add(file);
                    }
                }
            }
        } catch (IOException unused) {
        }
        arrayList.sort(new Comparator() { // from class: com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda72
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return LauncherActivity.lambda$saves$21((File) obj, (File) obj2);
            }
        });
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int lambda$saves$21(File file, File file2) {
        return Long.compare(file2.lastModified(), file.lastModified());
    }

    private String saveName(File file) {
        return file.getName().substring(0, file.getName().length() - 4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void chooseSave() {
        final List<File> listSaves = saves();
        if (listSaves.isEmpty()) {
            showError("No saves yet. Start a new game to create one.");
            return;
        }
        int size = listSaves.size();
        String[] strArr = new String[size];
        for (int i = 0; i < size; i++) {
            strArr[i] = saveName(listSaves.get(i)) + " · " + new SimpleDateFormat("MMM d, HH:mm", Locale.getDefault()).format(new Date(listSaves.get(i).lastModified()));
        }
        new AlertDialog.Builder(this).setTitle("Load a save").setItems(strArr, new DialogInterface.OnClickListener() { // from class: com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda41
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i2) {
                this.f$0.lambda$chooseSave$22(listSaves, dialogInterface, i2);
            }
        }).setNegativeButton("Cancel", (DialogInterface.OnClickListener) null).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$chooseSave$22(List list, DialogInterface dialogInterface, int i) {
        launch("load", saveName((File) list.get(i)));
    }

    private String sessionTitle() {
        GameMod gameMod = this.selectedMod;
        return gameMod == null ? this.selectedProfile.displayName : gameMod.title;
    }

    private File sessionUser() throws IOException {
        GameMod gameMod = this.selectedMod;
        return gameMod == null ? Storage.user(this, this.selectedProfile) : gameMod.userDirectory(Storage.root(this), this.selectedProfile);
    }

    private String argumentKey() {
        if (this.selectedMod == null) {
            return "launch_args";
        }
        return "mod_launch_args_" + this.selectedProfile.id + "_" + this.selectedMod.id;
    }

    private void selectMod(GameMod gameMod) {
        this.selectedMod = gameMod;
        SharedPreferences sharedPreferences = getSharedPreferences("mods", 0);
        HashSet hashSet = new HashSet(sharedPreferences.getStringSet("folders_" + this.selectedProfile.id, Collections.emptySet()));
        if (gameMod != null) {
            hashSet.add(gameMod.directory.getPath());
        }
        sharedPreferences.edit().putString("selected_" + this.selectedProfile.id, gameMod == null ? "" : gameMod.directory.getPath()).putStringSet("folders_" + this.selectedProfile.id, hashSet).apply();
        render();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void chooseMod() {
        if (this.busy) {
            return;
        }
        if (gameRunning()) {
            showError("Quit the running game before switching campaigns.");
        } else if (!LocalFolder.hasAccess(this)) {
            requestFileAccess(5);
        } else {
            final ArrayList arrayList = new ArrayList();
            work("Finding installed mods…", new Work() { // from class: com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda73
                @Override // com.gmodvr.flat.LauncherActivity.Work
                public final void run() throws Exception {
                    this.f$0.lambda$chooseMod$24(arrayList);
                }
            }, new Runnable() { // from class: com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda74
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$chooseMod$28(arrayList);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$chooseMod$24(List list) throws Exception {
        list.addAll(GameMod.discover(Storage.content(this, this.selectedProfile), this.selectedProfile));
        Iterator<String> it = getSharedPreferences("mods", 0).getStringSet("folders_" + this.selectedProfile.id, Collections.emptySet()).iterator();
        while (it.hasNext()) {
            try {
                final GameMod gameMod = GameMod.read(new File(it.next()));
                if (list.stream().noneMatch(new Predicate() { // from class: com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda58
                    @Override // java.util.function.Predicate
                    public final boolean test(Object obj) {
                        return LauncherActivity.lambda$chooseMod$23(gameMod, (GameMod) obj);
                    }
                })) {
                    list.add(gameMod);
                }
            } catch (IOException unused) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$chooseMod$23(GameMod gameMod, GameMod gameMod2) {
        return gameMod2.id.equals(gameMod.id);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$chooseMod$25(GameMod gameMod) {
        return gameMod.id.equals(this.selectedMod.id);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$chooseMod$28(final List list) {
        if (this.selectedMod != null && list.stream().noneMatch(new Predicate() { // from class: com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda1
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return this.f$0.lambda$chooseMod$25((GameMod) obj);
            }
        })) {
            list.add(this.selectedMod);
        }
        String[] strArr = new String[list.size() + 1];
        int i = 0;
        strArr[0] = this.selectedProfile.displayName + " · Base game";
        while (i < list.size()) {
            int i2 = i + 1;
            strArr[i2] = ((GameMod) list.get(i)).title + "\n" + ((GameMod) list.get(i)).directory;
            i = i2;
        }
        new AlertDialog.Builder(this).setTitle("Choose a campaign").setItems(strArr, new DialogInterface.OnClickListener() { // from class: com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda2
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i3) {
                this.f$0.lambda$chooseMod$26(list, dialogInterface, i3);
            }
        }).setPositiveButton("Choose mod folder…", new DialogInterface.OnClickListener() { // from class: com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda3
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i3) {
                this.f$0.lambda$chooseMod$27(dialogInterface, i3);
            }
        }).setNegativeButton("Cancel", (DialogInterface.OnClickListener) null).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$chooseMod$26(List list, DialogInterface dialogInterface, int i) {
        selectMod(i == 0 ? null : (GameMod) list.get(i - 1));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$chooseMod$27(DialogInterface dialogInterface, int i) {
        chooseModFolder();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void chooseWorkshopMap() {
        if (this.busy) {
            return;
        }
        if (gameRunning()) {
            showError("Quit the running game before launching a Workshop map.");
            return;
        }
        if (Storage.usesSharedContent(this) && !LocalFolder.hasAccess(this)) {
            requestFileAccess(5);
            return;
        }
        final GameContentProfile gameContentProfile = this.selectedProfile;
        final ArrayList arrayList = new ArrayList();
        work("Finding Workshop maps…", new Work() { // from class: com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda62
            @Override // com.gmodvr.flat.LauncherActivity.Work
            public final void run() throws Exception {
                this.f$0.lambda$chooseWorkshopMap$29(arrayList, gameContentProfile);
            }
        }, new Runnable() { // from class: com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda63
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$chooseWorkshopMap$32(arrayList, gameContentProfile);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$chooseWorkshopMap$29(List list, GameContentProfile gameContentProfile) throws Exception {
        Storage.Lease leaseLock = Storage.lock(this);
        try {
            list.addAll(WorkshopMaps.scan(Storage.content(this, gameContentProfile), Storage.user(this, gameContentProfile), gameContentProfile));
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
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$chooseWorkshopMap$32(final List list, final GameContentProfile gameContentProfile) {
        if (list.isEmpty()) {
            new AlertDialog.Builder(this).setTitle("No enabled Workshop maps").setMessage("Download a map through Download from Steam and enable it in Mod manager. Asset-only mods apply automatically and do not have a map to launch.").setPositiveButton("OK", (DialogInterface.OnClickListener) null).show();
            return;
        }
        String[] strArr = new String[list.size()];
        for (int i = 0; i < list.size(); i++) {
            strArr[i] = ((WorkshopMaps.Entry) list.get(i)).title + "\n" + ((WorkshopMaps.Entry) list.get(i)).map;
        }
        new AlertDialog.Builder(this).setTitle("Workshop maps · " + gameContentProfile.displayName).setItems(strArr, new DialogInterface.OnClickListener() { // from class: com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda10
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i2) {
                this.f$0.lambda$chooseWorkshopMap$31(list, gameContentProfile, dialogInterface, i2);
            }
        }).setNegativeButton("Cancel", (DialogInterface.OnClickListener) null).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$chooseWorkshopMap$31(List list, GameContentProfile gameContentProfile, DialogInterface dialogInterface, int i) {
        final WorkshopMaps.Entry entry = (WorkshopMaps.Entry) list.get(i);
        new AlertDialog.Builder(this).setTitle("Start " + entry.title + "?").setMessage("Map: " + entry.map + "\nUses " + gameContentProfile.displayName + " and its enabled mods. Autosaves may be replaced; manual saves remain available.").setPositiveButton("Play", new DialogInterface.OnClickListener() { // from class: com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda68
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface2, int i2) {
                this.f$0.lambda$chooseWorkshopMap$30(entry, dialogInterface2, i2);
            }
        }).setNegativeButton("Cancel", (DialogInterface.OnClickListener) null).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$chooseWorkshopMap$30(WorkshopMaps.Entry entry, DialogInterface dialogInterface, int i) {
        selectMod(null);
        launch("workshop", entry.map);
    }

    private void chooseModFolder() {
        final EditText editTextInput = this.skin.input("/storage/…/portal_stories", 1);
        final AlertDialog alertDialogCreate = new AlertDialog.Builder(this).setTitle("Mod folder").setMessage("Choose the folder containing the mod's gameinfo.txt. The mod uses " + this.selectedProfile.displayName + " as its base game. Saves stay separate. Mods requiring custom PC binaries need an Android port.").setView(inset(editTextInput)).setPositiveButton("Use folder", (DialogInterface.OnClickListener) null).setNeutralButton("Browse", new DialogInterface.OnClickListener() { // from class: com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda60
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                this.f$0.lambda$chooseModFolder$33(dialogInterface, i);
            }
        }).setNegativeButton("Cancel", (DialogInterface.OnClickListener) null).create();
        alertDialogCreate.setOnShowListener(new DialogInterface.OnShowListener() { // from class: com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda61
            @Override // android.content.DialogInterface.OnShowListener
            public final void onShow(DialogInterface dialogInterface) {
                this.f$0.lambda$chooseModFolder$35(alertDialogCreate, editTextInput, dialogInterface);
            }
        });
        alertDialogCreate.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$chooseModFolder$33(DialogInterface dialogInterface, int i) {
        startActivityForResult(new Intent("android.intent.action.OPEN_DOCUMENT_TREE").putExtra("android.content.extra.SHOW_ADVANCED", true), 6);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$chooseModFolder$35(final AlertDialog alertDialog, final EditText editText, DialogInterface dialogInterface) {
        alertDialog.getButton(-1).setOnClickListener(new View.OnClickListener() { // from class: com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda43
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$chooseModFolder$34(editText, alertDialog, view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$chooseModFolder$34(EditText editText, AlertDialog alertDialog, View view) {
        try {
            selectMod(GameMod.read(new File(editText.getText().toString().trim())));
            alertDialog.dismiss();
        } catch (IOException e) {
            editText.setError(e.getMessage());
        }
    }

    private void chooseModMap() {
        try {
            GameMod gameMod = GameMod.read(this.selectedMod.directory);
            final String str = "start_" + this.selectedProfile.id + "_" + gameMod.id;
            final AutoCompleteTextView autoCompleteTextView = (AutoCompleteTextView) this.skin.input(new AutoCompleteTextView(this), "Starting map (without .bsp)", 1);
            autoCompleteTextView.setThreshold(0);
            autoCompleteTextView.setAdapter(new ArrayAdapter(this, android.R.layout.simple_dropdown_item_1line, gameMod.maps()));
            autoCompleteTextView.setText(getSharedPreferences("mods", 0).getString(str, gameMod.suggestedMap()));
            autoCompleteTextView.setOnClickListener(new View.OnClickListener() { // from class: com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda66
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    autoCompleteTextView.showDropDown();
                }
            });
            final AlertDialog alertDialogCreate = new AlertDialog.Builder(this).setTitle("Start " + gameMod.title).setMessage("Choose or enter the starting map. This choice is remembered for this mod.").setView(inset(autoCompleteTextView)).setPositiveButton("Start", (DialogInterface.OnClickListener) null).setNegativeButton("Cancel", (DialogInterface.OnClickListener) null).create();
            alertDialogCreate.setOnShowListener(new DialogInterface.OnShowListener() { // from class: com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda67
                @Override // android.content.DialogInterface.OnShowListener
                public final void onShow(DialogInterface dialogInterface) {
                    this.f$0.lambda$chooseModMap$38(alertDialogCreate, autoCompleteTextView, str, dialogInterface);
                }
            });
            alertDialogCreate.show();
        } catch (IOException e) {
            showError(e.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$chooseModMap$38(final AlertDialog alertDialog, final AutoCompleteTextView autoCompleteTextView, final String str, DialogInterface dialogInterface) {
        alertDialog.getButton(-1).setOnClickListener(new View.OnClickListener() { // from class: com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda69
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$chooseModMap$37(autoCompleteTextView, str, alertDialog, view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$chooseModMap$37(AutoCompleteTextView autoCompleteTextView, String str, AlertDialog alertDialog, View view) {
        String strTrim = autoCompleteTextView.getText().toString().trim();
        if (!GameMod.validMap(strTrim)) {
            autoCompleteTextView.setError("Enter a map name without .bsp.");
            return;
        }
        getSharedPreferences("mods", 0).edit().putString(str, strTrim).apply();
        alertDialog.dismiss();
        launch("map", strTrim);
    }

    private void chooseImport(boolean z) {
        if (LocalFolder.hasAccess(this)) {
            startActivityForResult(new Intent("android.intent.action.OPEN_DOCUMENT_TREE").putExtra("android.content.extra.SHOW_ADVANCED", true), 1);
        } else {
            requestFileAccess(1);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void chooseFolder() {
        boolean z;
        if (!LocalFolder.hasAccess(this)) {
            requestFileAccess(4);
            return;
        }
        AlertDialog.Builder builder = new AlertDialog.Builder(this);
        builder.setTitle("Play from Folder · " + this.selectedProfile.displayName);
        LinearLayout linearLayout = new LinearLayout(this);
        boolean z2 = true;
        linearLayout.setOrientation(1);
        linearLayout.setPadding(dp(24.0f), dp(10.0f), dp(24.0f), dp(10.0f));
        TextView textView = new TextView(this);
        textView.setText("Choose your game folder to play without copying.\n\n• Tap 'Browse System Picker' to select the folder directly.\n• Or select a detected shared folder below and tap 'Use Path'.");
        textView.setTextColor(-7497309);
        textView.setTextSize(13.0f);
        textView.setPadding(0, 0, 0, dp(12.0f));
        linearLayout.addView(textView);
        String strCustomContent = Storage.customContent(this, this.selectedProfile.id);
        ArrayList<String> arrayList = new ArrayList();
        for (String str : LocalFolder.volumes(this)) {
            arrayList.add(str);
            arrayList.add(new File(str, "srceng").getPath());
            arrayList.add(new File(str, "Download/srceng").getPath());
            arrayList.add(new File(str, this.selectedProfile.gameDir).getPath());
        }
        String[] strArr = {new File(Environment.getExternalStorageDirectory(), "srceng").getPath(), new File(Environment.getExternalStorageDirectory(), "Download/srceng").getPath(), "/sdcard/srceng", "/sdcard/Download/srceng", "/storage/emulated/0/srceng", "/storage/emulated/0/Download/srceng", new File(Environment.getExternalStorageDirectory(), "$MuMu12Shared/srceng").getPath(), new File(Environment.getExternalStorageDirectory(), "$MuMu12Shared").getPath(), "/sdcard/$MuMu12Shared/srceng", "/sdcard/$MuMu12Shared", "/mnt/shared/srceng", "/mnt/shared"};
        for (int i = 0; i < 12; i++) {
            String str2 = strArr[i];
            if (!arrayList.contains(str2)) {
                arrayList.add(str2);
            }
        }
        ArrayList<String> arrayList2 = new ArrayList();
        String path = null;
        for (String str3 : arrayList) {
            File file = new File(str3);
            if (file.isDirectory() && !arrayList2.contains(str3)) {
                arrayList2.add(str3);
                if (path == null) {
                    try {
                        GameFolder.locate(this.selectedProfile, file);
                        path = str3;
                    } catch (IOException unused) {
                    }
                }
            }
        }
        if (strCustomContent != null && !strCustomContent.isEmpty()) {
            path = strCustomContent;
        } else if (path == null) {
            path = !arrayList2.isEmpty() ? (String) arrayList2.get(0) : new File(Environment.getExternalStorageDirectory(), "srceng").getPath();
        }
        final EditText editTextInput = this.skin.input("", 1);
        editTextInput.setText(path);
        editTextInput.setSelection(editTextInput.getText().length());
        linearLayout.addView(editTextInput);
        if (!arrayList2.isEmpty()) {
            TextView textViewLabel = this.skin.label("Detected folders · tap to use", -7497309);
            textViewLabel.setPadding(0, dp(16.0f), 0, dp(4.0f));
            linearLayout.addView(textViewLabel);
            for (final String str4 : arrayList2) {
                try {
                    GameFolder.locate(this.selectedProfile, new File(str4));
                    z = z2;
                } catch (IOException unused2) {
                    z = false;
                }
                TextView textViewText = this.skin.text(z ? "READY  " + str4 : str4, 12.0f, z ? -7943825 : -1643795);
                textViewText.setTypeface(Skin.MONO);
                textViewText.setPadding(0, dp(6.0f), 0, dp(6.0f));
                textViewText.setOnClickListener(new View.OnClickListener() { // from class: com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda78
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        editTextInput.setText(str4);
                    }
                });
                linearLayout.addView(textViewText);
                z2 = true;
            }
        }
        builder.setView(linearLayout);
        builder.setPositiveButton("Use Path", new DialogInterface.OnClickListener() { // from class: com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda79
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i2) {
                this.f$0.lambda$chooseFolder$40(editTextInput, dialogInterface, i2);
            }
        });
        builder.setNeutralButton("Browse System Picker", new DialogInterface.OnClickListener() { // from class: com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda80
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i2) {
                this.f$0.lambda$chooseFolder$41(dialogInterface, i2);
            }
        });
        builder.setNegativeButton("Cancel", (DialogInterface.OnClickListener) null);
        final AlertDialog alertDialogCreate = builder.create();
        if (strCustomContent != null) {
            TextView textViewLabel2 = this.skin.label("↺ Reset to default storage path", -7497309);
            textViewLabel2.setPadding(0, dp(16.0f), 0, dp(4.0f));
            textViewLabel2.setOnClickListener(new View.OnClickListener() { // from class: com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda81
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.lambda$chooseFolder$42(alertDialogCreate, view);
                }
            });
            linearLayout.addView(textViewLabel2);
        }
        alertDialogCreate.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$chooseFolder$40(EditText editText, DialogInterface dialogInterface, int i) {
        String strTrim = editText.getText().toString().trim();
        if (strTrim.isEmpty()) {
            return;
        }
        try {
            File file = new File(strTrim);
            if (!file.exists()) {
                for (String str : LocalFolder.volumes(this)) {
                    String strReplace = strTrim.replace("/sdcard/", "").replace("/storage/emulated/0/", "");
                    if (strReplace.startsWith("/")) {
                        strReplace = strReplace.substring(1);
                    }
                    File file2 = new File(str, strReplace);
                    if (!file2.exists()) {
                        file2 = new File(str, strTrim.contains("/") ? strTrim.substring(strTrim.lastIndexOf(47) + 1) : strTrim);
                        if (file2.exists()) {
                        }
                    }
                    file = file2;
                }
                file = null;
                if (file == null) {
                    throw new IOException("Folder does not exist on this device:\n" + strTrim + "\n\nTip: Tap 'Browse System Picker' to choose the folder directly, or tap a detected folder above.");
                }
            }
            File fileLocate = GameFolder.locate(this.selectedProfile, file);
            getSharedPreferences("storage", 0).edit().putString("custom_content_" + this.selectedProfile.id, fileLocate.getAbsolutePath()).apply();
            Toast.makeText(this, "Using " + fileLocate.getAbsolutePath(), 0).show();
            render();
        } catch (IOException e) {
            showError(e.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$chooseFolder$41(DialogInterface dialogInterface, int i) {
        startActivityForResult(new Intent("android.intent.action.OPEN_DOCUMENT_TREE").putExtra("android.content.extra.SHOW_ADVANCED", true), 4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$chooseFolder$42(AlertDialog alertDialog, View view) {
        getSharedPreferences("storage", 0).edit().remove("custom_content_" + this.selectedProfile.id).apply();
        alertDialog.dismiss();
        Toast.makeText(this, "Reset to default storage", 0).show();
        render();
    }

    private void requestFileAccess(int i) {
        if (Build.VERSION.SDK_INT >= 30) {
            try {
                Intent intent = new Intent("android.settings.MANAGE_APP_ALL_FILES_ACCESS_PERMISSION");
                intent.setData(Uri.parse("package:" + getPackageName()));
                startActivityForResult(intent, i);
                return;
            } catch (Exception unused) {
                startActivityForResult(new Intent("android.settings.MANAGE_ALL_FILES_ACCESS_PERMISSION"), i);
                return;
            }
        }
        requestPermissions(new String[]{"android.permission.WRITE_EXTERNAL_STORAGE"}, i);
    }

    @Override // android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        if (i2 != -1 || intent == null) {
            return;
        }
        final Uri data = intent.getData();
        if (i == 1) {
            startForegroundService(new Intent(this, (Class<?>) ImportService.class).setData(data).putExtra("profile", this.selectedProfile.id));
            return;
        }
        if (i == 6 && data != null) {
            try {
                selectMod(GameMod.read(LocalFolder.path(this, data)));
                return;
            } catch (IOException e) {
                showError(e.getMessage());
                return;
            }
        }
        if (i != 4 || data == null) {
            if (i == 2 && data != null) {
                work("Backing up saves…", new Work() { // from class: com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda37
                    @Override // com.gmodvr.flat.LauncherActivity.Work
                    public final void run() throws Exception {
                        this.f$0.lambda$onActivityResult$43(data);
                    }
                }, new Runnable() { // from class: com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda38
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$onActivityResult$44();
                    }
                });
                return;
            } else {
                if (i != 3 || data == null) {
                    return;
                }
                work("Restoring saves…", new Work() { // from class: com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda39
                    @Override // com.gmodvr.flat.LauncherActivity.Work
                    public final void run() throws Exception {
                        this.f$0.lambda$onActivityResult$45(data);
                    }
                }, new Runnable() { // from class: com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda40
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$onActivityResult$46();
                    }
                });
                return;
            }
        }
        try {
            File fileLocate = GameFolder.locate(this.selectedProfile, LocalFolder.path(this, data));
            getSharedPreferences("storage", 0).edit().putString("custom_content_" + this.selectedProfile.id, fileLocate.getAbsolutePath()).apply();
            render();
        } catch (IOException e2) {
            showError(e2.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onActivityResult$43(Uri uri) throws Exception {
        OutputStream outputStreamOpenOutputStream = getContentResolver().openOutputStream(uri);
        try {
            Storage.exportSaves(sessionUser(), outputStreamOpenOutputStream);
            if (outputStreamOpenOutputStream != null) {
                outputStreamOpenOutputStream.close();
            }
        } catch (Throwable th) {
            if (outputStreamOpenOutputStream != null) {
                try {
                    outputStreamOpenOutputStream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onActivityResult$44() {
        Toast.makeText(this, "Saves exported successfully", 0).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onActivityResult$45(Uri uri) throws Exception {
        InputStream inputStreamOpenInputStream = getContentResolver().openInputStream(uri);
        try {
            Storage.restoreSaves(sessionUser(), inputStreamOpenInputStream);
            if (inputStreamOpenInputStream != null) {
                inputStreamOpenInputStream.close();
            }
        } catch (Throwable th) {
            if (inputStreamOpenInputStream != null) {
                try {
                    inputStreamOpenInputStream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onActivityResult$46() {
        Toast.makeText(this, "Saves restored successfully", 0).show();
    }

    private void renderSandbox(LinearLayout linearLayout) {
        Button buttonSecondary;
        String string = getSharedPreferences("settings", 0).getString("gmod_map", "gm_construct");
        boolean zEquals = "menu".equals(sandboxStartAction());
        if (!zEquals) {
            Skin skin = this.skin;
            linearLayout.addView(skin.row("Map", null, skin.tag(string, -7497309), new Runnable() { // from class: com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda45
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$renderSandbox$47();
                }
            }), this.skin.below(4.0f));
        }
        Button buttonPrimary = this.skin.primary("Play", new Runnable() { // from class: com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda46
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$renderSandbox$48();
            }
        });
        this.play = buttonPrimary;
        linearLayout.addView(buttonPrimary, this.skin.below(16.0f));
        LinearLayout linearLayout2 = new LinearLayout(this);
        if (zEquals) {
            buttonSecondary = this.skin.secondary("Play a map…", new Runnable() { // from class: com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda47
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$renderSandbox$49();
                }
            });
        } else {
            buttonSecondary = this.skin.secondary("Main menu", new Runnable() { // from class: com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda48
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$renderSandbox$50();
                }
            });
        }
        linearLayout2.addView(buttonSecondary, new LinearLayout.LayoutParams(0, -2, 1.0f));
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(0, -2, 1.0f);
        layoutParams.leftMargin = dp(8.0f);
        linearLayout2.addView(this.skin.secondary("LAN multiplayer", new LauncherActivity$$ExternalSyntheticLambda9(this)), layoutParams);
        linearLayout.addView(linearLayout2, this.skin.below(8.0f));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$renderSandbox$47() {
        this.playAfterMapChoice = false;
        chooseSandboxMap();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$renderSandbox$48() {
        if ("menu".equals(sandboxStartAction())) {
            launch("menu", null);
        } else {
            launchSandboxMap("map");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$renderSandbox$49() {
        this.playAfterMapChoice = true;
        chooseSandboxMap();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$renderSandbox$50() {
        launch("menu", null);
    }

    private void gameToggle(LinearLayout linearLayout, final String str, String str2, String str3) {
        boolean z = getSharedPreferences("settings", 0).getBoolean(str, false);
        Skin skin = this.skin;
        linearLayout.addView(skin.row(str2, str3, skin.tag(z ? "On" : "Off", -7497309), new Runnable() { // from class: com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda75
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$gameToggle$51(str);
            }
        }));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$gameToggle$51(String str) {
        getSharedPreferences("settings", 0).edit().putBoolean(str, !r0.getBoolean(str, false)).apply();
        recreate();
    }

    private String sandboxStartAction() {
        return LaunchArguments.startAction(getSharedPreferences("settings", 0).getString("gmod_start_at", null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void playerName() {
        final SharedPreferences sharedPreferences = getSharedPreferences("settings", 0);
        final EditText editTextInput = this.skin.input("Player name", 524289);
        editTextInput.setContentDescription("Player name");
        editTextInput.setText(sharedPreferences.getString("gmod_player_name", ""));
        editTextInput.setSelectAllOnFocus(true);
        final AlertDialog alertDialogCreate = new AlertDialog.Builder(this).setTitle("Player name").setMessage("The name other players see in multiplayer. Applies the next time you launch Garry's Mod.").setView(inset(editTextInput)).setPositiveButton("Save", (DialogInterface.OnClickListener) null).setNeutralButton("Use default", new DialogInterface.OnClickListener() { // from class: com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda17
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                this.f$0.lambda$playerName$52(sharedPreferences, dialogInterface, i);
            }
        }).setNegativeButton("Cancel", (DialogInterface.OnClickListener) null).create();
        alertDialogCreate.setOnShowListener(new DialogInterface.OnShowListener() { // from class: com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda18
            @Override // android.content.DialogInterface.OnShowListener
            public final void onShow(DialogInterface dialogInterface) {
                this.f$0.lambda$playerName$54(alertDialogCreate, editTextInput, sharedPreferences, dialogInterface);
            }
        });
        alertDialogCreate.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$playerName$52(SharedPreferences sharedPreferences, DialogInterface dialogInterface, int i) {
        sharedPreferences.edit().putString("gmod_player_name", "unnamed").apply();
        render();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$playerName$54(final AlertDialog alertDialog, final EditText editText, final SharedPreferences sharedPreferences, DialogInterface dialogInterface) {
        alertDialog.getButton(-1).setOnClickListener(new View.OnClickListener() { // from class: com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda16
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$playerName$53(editText, sharedPreferences, alertDialog, view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$playerName$53(EditText editText, SharedPreferences sharedPreferences, AlertDialog alertDialog, View view) {
        try {
            sharedPreferences.edit().putString("gmod_player_name", PlayerName.validate(editText.getText().toString())).apply();
            alertDialog.dismiss();
            render();
        } catch (IllegalArgumentException e) {
            editText.setError(e.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void chooseStartAt() {
        final SharedPreferences sharedPreferences = getSharedPreferences("settings", 0);
        final String[] strArr = {"menu", "map"};
        new AlertDialog.Builder(this).setTitle("Start at").setSingleChoiceItems(new String[]{"Main menu", "Selected map (" + sharedPreferences.getString("gmod_map", "gm_construct") + ")"}, "map".equals(LaunchArguments.startAt(sharedPreferences.getString("gmod_start_at", null))) ? 1 : 0, new DialogInterface.OnClickListener() { // from class: com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda42
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                this.f$0.lambda$chooseStartAt$55(sharedPreferences, strArr, dialogInterface, i);
            }
        }).setNegativeButton("Cancel", (DialogInterface.OnClickListener) null).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$chooseStartAt$55(SharedPreferences sharedPreferences, String[] strArr, DialogInterface dialogInterface, int i) {
        sharedPreferences.edit().putString("gmod_start_at", strArr[i]).apply();
        dialogInterface.dismiss();
        recreate();
    }

    private void chooseSandboxMap() {
        if (this.busy) {
            return;
        }
        if (Storage.usesSharedContent(this) && !LocalFolder.hasAccess(this)) {
            requestFileAccess(5);
            return;
        }
        final GameContentProfile gameContentProfile = this.selectedProfile;
        final ArrayList arrayList = new ArrayList();
        final HashSet hashSet = new HashSet();
        work("Finding maps…", new Work() { // from class: com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda19
            @Override // com.gmodvr.flat.LauncherActivity.Work
            public final void run() throws Exception {
                this.f$0.lambda$chooseSandboxMap$56(gameContentProfile, arrayList, hashSet);
            }
        }, new Runnable() { // from class: com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda20
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$chooseSandboxMap$57(arrayList, hashSet);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$chooseSandboxMap$56(GameContentProfile gameContentProfile, List list, Set set) throws Exception {
        File fileContent = Storage.content(this, gameContentProfile);
        File fileUser = Storage.user(this, gameContentProfile);
        list.addAll(GmodMaps.group(GmodMaps.scan(fileContent, fileUser)));
        set.addAll(GmodMaps.mountedGameIds(fileContent, fileUser));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$chooseSandboxMap$57(List list, Set set) {
        if (list.isEmpty()) {
            GmodMaps.Category category = new GmodMaps.Category("Sandbox");
            category.maps.add(new GmodMaps.Entry("gm_construct", "Sandbox", "garrysmod"));
            list.add(category);
        }
        if (list.size() == 1) {
            chooseSandboxMapIn(list, (GmodMaps.Category) list.get(0), set);
        } else {
            chooseSandboxMapCategory(list, set);
        }
    }

    private void chooseSandboxMapCategory(final List<GmodMaps.Category> list, final Set<String> set) {
        int size = list.size();
        String[] strArr = new String[size];
        for (int i = 0; i < size; i++) {
            int size2 = list.get(i).maps.size();
            String strMissingContentNote = GmodMaps.missingContentNote(list.get(i).name, set);
            StringBuilder sb = new StringBuilder();
            sb.append(list.get(i).name);
            sb.append(" · ");
            sb.append(size2);
            sb.append(size2 == 1 ? " map" : " maps");
            sb.append(strMissingContentNote == null ? "" : "\n" + strMissingContentNote);
            strArr[i] = sb.toString();
        }
        new AlertDialog.Builder(this).setTitle("Choose a map").setItems(strArr, new DialogInterface.OnClickListener() { // from class: com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda4
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i2) {
                this.f$0.lambda$chooseSandboxMapCategory$58(list, set, dialogInterface, i2);
            }
        }).setNegativeButton("Cancel", (DialogInterface.OnClickListener) null).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$chooseSandboxMapCategory$58(List list, Set set, DialogInterface dialogInterface, int i) {
        chooseSandboxMapIn(list, (GmodMaps.Category) list.get(i), set);
    }

    private void chooseSandboxMapIn(final List<GmodMaps.Category> list, GmodMaps.Category category, final Set<String> set) {
        int size = category.maps.size();
        final String[] strArr = new String[size];
        for (int i = 0; i < size; i++) {
            strArr[i] = category.maps.get(i).map;
        }
        String strMissingContentNote = GmodMaps.missingContentNote(category.name, set);
        String[] strArr2 = (String[]) strArr.clone();
        if (strMissingContentNote != null) {
            for (int i2 = 0; i2 < strArr2.length; i2++) {
                strArr2[i2] = strArr2[i2] + "\n" + strMissingContentNote + " (missing assets)";
            }
        }
        AlertDialog.Builder negativeButton = new AlertDialog.Builder(this).setTitle(category.name).setItems(strArr2, new DialogInterface.OnClickListener() { // from class: com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda49
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i3) {
                this.f$0.lambda$chooseSandboxMapIn$59(strArr, dialogInterface, i3);
            }
        }).setNegativeButton("Cancel", (DialogInterface.OnClickListener) null);
        if (list.size() > 1) {
            negativeButton.setNeutralButton("Back", new DialogInterface.OnClickListener() { // from class: com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda50
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i3) {
                    this.f$0.lambda$chooseSandboxMapIn$60(list, set, dialogInterface, i3);
                }
            });
        }
        negativeButton.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$chooseSandboxMapIn$59(String[] strArr, DialogInterface dialogInterface, int i) {
        getSharedPreferences("settings", 0).edit().putString("gmod_map", strArr[i]).apply();
        if (this.playAfterMapChoice) {
            this.playAfterMapChoice = false;
            launchSandboxMap("map");
        } else {
            recreate();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$chooseSandboxMapIn$60(List list, Set set, DialogInterface dialogInterface, int i) {
        chooseSandboxMapCategory(list, set);
    }

    private void launchSandboxMap(final String str) {
        final String string = getSharedPreferences("settings", 0).getString("gmod_map", "gm_construct");
        final String strCategory = GmodMaps.category(string, null);
        if (GmodMaps.requiredGames(strCategory).isEmpty() || this.busy || gameRunning() || (Storage.usesSharedContent(this) && !LocalFolder.hasAccess(this))) {
            launch(str, string);
            return;
        }
        final GameContentProfile gameContentProfile = this.selectedProfile;
        final String[] strArr = {null};
        work("Checking game content…", new Work() { // from class: com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda56
            @Override // com.gmodvr.flat.LauncherActivity.Work
            public final void run() throws Exception {
                this.f$0.lambda$launchSandboxMap$61(strArr, string, strCategory, gameContentProfile);
            }
        }, new Runnable() { // from class: com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda57
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$launchSandboxMap$63(strArr, str, string);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$launchSandboxMap$61(String[] strArr, String str, String str2, GameContentProfile gameContentProfile) throws Exception {
        strArr[0] = GmodMaps.missingContentWarning(str, str2, GmodMaps.mountedGameIds(Storage.content(this, gameContentProfile), Storage.user(this, gameContentProfile)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$launchSandboxMap$63(String[] strArr, final String str, final String str2) {
        if (strArr[0] == null) {
            launch(str, str2);
        } else {
            new AlertDialog.Builder(this).setTitle("Game content missing").setMessage(strArr[0]).setPositiveButton("Launch anyway", new DialogInterface.OnClickListener() { // from class: com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda71
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    this.f$0.lambda$launchSandboxMap$62(str, str2, dialogInterface, i);
                }
            }).setNegativeButton("Cancel", (DialogInterface.OnClickListener) null).show();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$launchSandboxMap$62(String str, String str2, DialogInterface dialogInterface, int i) {
        launch(str, str2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void coop() {
        if ("garrysmod".equals(this.selectedProfile.id)) {
            new AlertDialog.Builder(this).setTitle("LAN multiplayer").setMessage("Host a Sandbox game on the selected map, or join one on your Wi-Fi network.").setPositiveButton("Host game", new DialogInterface.OnClickListener() { // from class: com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda52
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    this.f$0.lambda$coop$64(dialogInterface, i);
                }
            }).setNeutralButton("Join by IP", new DialogInterface.OnClickListener() { // from class: com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda53
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    this.f$0.lambda$coop$66(dialogInterface, i);
                }
            }).setNegativeButton("Cancel", (DialogInterface.OnClickListener) null).show();
        } else {
            new AlertDialog.Builder(this).setTitle("Portal 2 Co-op").setMessage("Host a co-op game or connect to another player on your Wi-Fi network.").setPositiveButton("Host Game", new DialogInterface.OnClickListener() { // from class: com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda54
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    this.f$0.lambda$coop$67(dialogInterface, i);
                }
            }).setNeutralButton("Connect to IP", new DialogInterface.OnClickListener() { // from class: com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda55
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    this.f$0.lambda$coop$69(dialogInterface, i);
                }
            }).setNegativeButton("Cancel", (DialogInterface.OnClickListener) null).show();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$coop$64(DialogInterface dialogInterface, int i) {
        launchSandboxMap("host");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$coop$66(DialogInterface dialogInterface, int i) {
        final EditText editTextInput = this.skin.input("192.168.1.xxx", 1);
        new AlertDialog.Builder(this).setTitle("Join a game").setView(inset(editTextInput)).setPositiveButton("Join", new DialogInterface.OnClickListener() { // from class: com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda15
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface2, int i2) {
                this.f$0.lambda$coop$65(editTextInput, dialogInterface2, i2);
            }
        }).setNegativeButton("Cancel", (DialogInterface.OnClickListener) null).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$coop$65(EditText editText, DialogInterface dialogInterface, int i) {
        launch("connect", editText.getText().toString().trim());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$coop$67(DialogInterface dialogInterface, int i) {
        launch("host", null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$coop$69(DialogInterface dialogInterface, int i) {
        final EditText editTextInput = this.skin.input("192.168.1.xxx", 1);
        new AlertDialog.Builder(this).setTitle("Connect to Partner").setView(inset(editTextInput)).setPositiveButton("Connect", new DialogInterface.OnClickListener() { // from class: com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda44
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface2, int i2) {
                this.f$0.lambda$coop$68(editTextInput, dialogInterface2, i2);
            }
        }).setNegativeButton("Cancel", (DialogInterface.OnClickListener) null).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$coop$68(EditText editText, DialogInterface dialogInterface, int i) {
        launch("connect", editText.getText().toString().trim());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void controlLayout() {
        Intent intentPutExtra = new Intent(this, (Class<?>) TouchLayoutActivity.class).putExtra("franchise", this.selectedFranchise.id).putExtra("profile", this.selectedProfile.id);
        GameMod gameMod = this.selectedMod;
        startActivity(intentPutExtra.putExtra("mod", gameMod == null ? null : gameMod.directory.getPath()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void settings() {
        final SharedPreferences sharedPreferences = getSharedPreferences("settings", 0);
        LinearLayout linearLayout = new LinearLayout(this);
        linearLayout.setOrientation(1);
        linearLayout.setPadding(dp(20.0f), dp(10.0f), dp(20.0f), dp(10.0f));
        final CheckBox checkBoxCheck = this.skin.check("Enable Touch Controls");
        checkBoxCheck.setChecked(sharedPreferences.getBoolean("touch", true));
        linearLayout.addView(checkBoxCheck);
        int iMax = Math.max(0, Math.min(100, sharedPreferences.getInt("touch_opacity", 100)));
        final TextView textViewLabel = this.skin.label("Control Opacity: " + iMax + "%", -7497309);
        textViewLabel.setPadding(dp(6.0f), dp(12.0f), 0, dp(4.0f));
        linearLayout.addView(textViewLabel);
        final SeekBar seekBar = new SeekBar(this);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(this.skin.accent);
        gradientDrawable.setSize(dp(8.0f), dp(20.0f));
        seekBar.setThumb(gradientDrawable);
        seekBar.setMax(100);
        seekBar.setProgress(iMax);
        seekBar.setContentDescription("Control opacity");
        seekBar.setEnabled(checkBoxCheck.isChecked());
        checkBoxCheck.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda12
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                seekBar.setEnabled(z);
            }
        });
        seekBar.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() { // from class: com.gmodvr.flat.LauncherActivity.2
            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStartTrackingTouch(SeekBar seekBar2) {
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStopTrackingTouch(SeekBar seekBar2) {
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onProgressChanged(SeekBar seekBar2, int i, boolean z) {
                textViewLabel.setText("Control Opacity: " + i + "%");
            }
        });
        linearLayout.addView(seekBar);
        final CheckBox checkBoxCheck2 = this.skin.check("Invert Y-Axis (Pitch)");
        checkBoxCheck2.setChecked(sharedPreferences.getBoolean("invert", false));
        linearLayout.addView(checkBoxCheck2);
        final CheckBox checkBoxCheck3 = this.skin.check("Auto-Exposure Correction");
        checkBoxCheck3.setChecked(sharedPreferences.getBoolean("autoexposure", true));
        linearLayout.addView(checkBoxCheck3);
        final TextView textViewLabel2 = this.skin.label("Framerate Limit: " + sharedPreferences.getInt("fps", 60) + " FPS", -7497309);
        textViewLabel2.setPadding(dp(6.0f), dp(16.0f), 0, dp(4.0f));
        linearLayout.addView(textViewLabel2);
        final SeekBar seekBar2 = new SeekBar(this);
        GradientDrawable gradientDrawable2 = new GradientDrawable();
        gradientDrawable2.setColor(this.skin.accent);
        gradientDrawable2.setSize(dp(8.0f), dp(20.0f));
        seekBar2.setThumb(gradientDrawable2);
        seekBar2.setMax(3);
        int i = sharedPreferences.getInt("fps", 60);
        seekBar2.setProgress(i != 30 ? i == 60 ? 1 : i == 90 ? 2 : 3 : 0);
        final int[] iArr = {30, 60, 90, 120};
        seekBar2.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() { // from class: com.gmodvr.flat.LauncherActivity.3
            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStartTrackingTouch(SeekBar seekBar3) {
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStopTrackingTouch(SeekBar seekBar3) {
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onProgressChanged(SeekBar seekBar3, int i2, boolean z) {
                textViewLabel2.setText("Framerate Limit: " + iArr[i2] + " FPS");
            }
        });
        linearLayout.addView(seekBar2);
        linearLayout.addView(this.skin.secondary("Edit control layout", new LauncherActivity$$ExternalSyntheticLambda13(this)), this.skin.below(12.0f));
        ScrollView scrollViewScroller = Skin.scroller(this);
        scrollViewScroller.addView(linearLayout);
        new AlertDialog.Builder(this).setTitle("Display & Controls").setView(scrollViewScroller).setPositiveButton("Save", new DialogInterface.OnClickListener() { // from class: com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda14
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i2) {
                LauncherActivity.lambda$settings$71(sharedPreferences, checkBoxCheck, seekBar, checkBoxCheck2, checkBoxCheck3, iArr, seekBar2, dialogInterface, i2);
            }
        }).setNegativeButton("Cancel", (DialogInterface.OnClickListener) null).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$settings$71(SharedPreferences sharedPreferences, CheckBox checkBox, SeekBar seekBar, CheckBox checkBox2, CheckBox checkBox3, int[] iArr, SeekBar seekBar2, DialogInterface dialogInterface, int i) {
        sharedPreferences.edit().putBoolean("touch", checkBox.isChecked()).putInt("touch_opacity", seekBar.getProgress()).putBoolean("invert", checkBox2.isChecked()).putBoolean("autoexposure", checkBox3.isChecked()).putInt("fps", iArr[seekBar2.getProgress()]).apply();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void launchArguments() {
        final SharedPreferences sharedPreferences = getSharedPreferences("settings", 0);
        final EditText editTextInput = this.skin.input("-novid -console +sv_cheats 1", 1);
        editTextInput.setSingleLine(false);
        final String strArgumentKey = argumentKey();
        editTextInput.setText(sharedPreferences.getString(strArgumentKey, ""));
        new AlertDialog.Builder(this).setTitle("Launch arguments · " + sessionTitle()).setMessage("Add custom Source engine command-line flags or cvars:").setView(inset(editTextInput)).setPositiveButton("Save", new DialogInterface.OnClickListener() { // from class: com.gmodvr.flat.LauncherActivity$$ExternalSyntheticLambda51
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                LauncherActivity.lambda$launchArguments$72(sharedPreferences, strArgumentKey, editTextInput, dialogInterface, i);
            }
        }).setNegativeButton("Cancel", (DialogInterface.OnClickListener) null).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$launchArguments$72(SharedPreferences sharedPreferences, String str, EditText editText, DialogInterface dialogInterface, int i) {
        sharedPreferences.edit().putString(str, editText.getText().toString().trim()).apply();
    }
}
