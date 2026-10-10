package com.gmodvr.flat;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.graphics.Point;
import android.os.Bundle;
import android.os.Process;
import android.system.Os;
import android.util.Log;
import android.view.KeyEvent;
import com.gmodvr.flat.Storage;
import com.sourcevrport.platform.GModServerDirectory;
import com.sourcevrport.platform.GModSteamAuth;
import com.sourcevrport.platform.GModWebView;
import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin;
import in.dragonbra.javasteam.steam.handlers.steamuser.LogOnDetails;
import java.io.File;
import java.io.IOException;
import org.libsdl.app.SDLActivity;

/* JADX INFO: loaded from: classes.dex */
public final class GameActivity extends SDLActivity {
    private static final String TAG = "GDroid";
    private String[] arguments;
    private Storage.Lease lease;

    private static native void nativeSetForeground(boolean z);

    private static native void nativeTrimMemory(int i);

    @Override // org.libsdl.app.SDLActivity
    public String[] getLibraries() {
        return new String[]{"SDL2", "launcher"};
    }

    @Override // org.libsdl.app.SDLActivity
    public String getMainFunction() {
        return "LauncherMainAndroid";
    }

    @Override // org.libsdl.app.SDLActivity
    public String[] getArguments() {
        return this.arguments;
    }

    @Override // org.libsdl.app.SDLActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        String str;
        String stringExtra = getIntent().getStringExtra("profile");
        GameContentProfile gameContentProfileForId = stringExtra != null ? GameContentProfile.forId(stringExtra) : GameContentProfile.DEFAULT;
        if (gameContentProfileForId == null) {
            gameContentProfileForId = GameContentProfile.DEFAULT;
        }
        try {
            this.lease = Storage.lock(this);
            Storage.recoverContent(this);
            String stringExtra2 = getIntent().getStringExtra("mod_path");
            GameMod gameMod = stringExtra2 == null ? null : GameMod.read(new File(stringExtra2));
            RuntimeAssets.prepare(this, gameContentProfileForId, gameMod);
            File fileUser = gameMod == null ? Storage.user(this, gameContentProfileForId) : gameMod.userDirectory(Storage.root(this), gameContentProfileForId);
            Storage.recoverUser(fileUser);
            if (Storage.customContent(this, gameContentProfileForId.id) != null) {
                GameFolder.check(gameContentProfileForId, Storage.content(this, gameContentProfileForId));
            }
            if (!Storage.ready(this, gameContentProfileForId)) {
                throw new IOException("Install or import " + gameContentProfileForId.displayName + " from the launcher first.");
            }
            File parentFile = fileUser.getParentFile();
            String str2 = getApplicationInfo().nativeLibraryDir;
            File fileEngineContent = Storage.engineContent(this, gameContentProfileForId);
            File fileRuntime = RuntimeAssets.runtime(this);
            Os.setenv("APP_DATA_PATH", parentFile.getAbsolutePath(), true);
            Os.setenv("VALVE_GAME_PATH", parentFile.getAbsolutePath(), true);
            Os.setenv("APP_LIB_PATH", str2, true);
            Os.setenv("APP_MOD_LIB", str2, true);
            Os.setenv("SOURCEVR_GAME", gameContentProfileForId.gameDir, true);
            Os.setenv("SOURCE_GAME", gameContentProfileForId.gameDir, true);
            Os.setenv("SOURCEVR_SHARED_CONTENT_PATH", fileEngineContent.getAbsolutePath(), true);
            Os.setenv("SOURCEVR_WRITE_GAME_PATH", fileUser.getAbsolutePath(), true);
            Os.setenv("EXTRAS_VPK_PATH", fileRuntime.getAbsolutePath(), true);
            Os.setenv("LANG", "en_US.UTF-8", true);
            Os.setenv("SDL_ANDROID_TRAP_BACK_BUTTON", "1", true);
            Os.setenv("TMPDIR", getCacheDir().getAbsolutePath(), true);
            Os.setenv("SQLITE_TMPDIR", getCacheDir().getAbsolutePath(), true);
            CrashReporter.exportEnvironment(this);
            SharedPreferences sharedPreferences = getSharedPreferences("settings", 0);
            Point point = new Point();
            getWindowManager().getDefaultDisplay().getRealSize(point);
            int iMax = Math.max(point.x, point.y);
            int iMax2 = Math.max(1, Math.min(point.x, point.y));
            int iMin = Math.min(iMax2, sharedPreferences.getInt("height", 720));
            int iMax3 = Math.max(640, (((iMax * iMin) / iMax2) / 2) * 2);
            String stringExtra3 = getIntent().getStringExtra("action");
            String stringExtra4 = getIntent().getStringExtra("target");
            boolean zIsFile = new File(fileUser, "videoconfig_android.cfg").isFile();
            if (gameMod == null) {
                str = "launch_args";
            } else {
                str = "mod_launch_args_" + gameContentProfileForId.id + "_" + gameMod.id;
            }
            this.arguments = LaunchArguments.build(gameContentProfileForId, iMax3, iMin, stringExtra3, stringExtra4, sharedPreferences.getString(str, ""), zIsFile, LaunchArguments.heapSizeMB(this));
            if ("garrysmod".equals(gameContentProfileForId.id)) {
                this.arguments = LaunchArguments.withExtra(this.arguments, LaunchArguments.gameToggleArgs(sharedPreferences.getBoolean("gmod_npc_walkthrough", false), sharedPreferences.getBoolean("gmod_walk_anim", false), sharedPreferences.getBoolean("gmod_mute_failed_grab", false)));
            }
            if ("garrysmod".equals(gameContentProfileForId.id)) {
                this.arguments = LaunchArguments.withPlayerName(this.arguments, sharedPreferences.getString("gmod_player_name", null));
            }
            getWindow().addFlags(128);
            GModWebView.initialize(this);
            final Context applicationContext = getApplicationContext();
            GModServerDirectory.IdentityProvider identityProvider = new GModServerDirectory.IdentityProvider() { // from class: com.gmodvr.flat.GameActivity$$ExternalSyntheticLambda1
                @Override // com.sourcevrport.platform.GModServerDirectory.IdentityProvider
                public final LogOnDetails savedIdentity() {
                    return GameActivity.lambda$onCreate$0(applicationContext);
                }
            };
            GModServerDirectory.initialize(identityProvider);
            GModSteamAuth.initialize(identityProvider);
            super.onCreate(bundle);
        } catch (Exception e) {
            Log.e(TAG, "Startup failed", e);
            Intent intent = new Intent(this, (Class<?>) LauncherActivity.class);
            intent.putExtra("error", e.getMessage());
            intent.addFlags(67108864);
            startActivity(intent);
            Storage.Lease lease = this.lease;
            if (lease != null) {
                try {
                    lease.close();
                } catch (IOException unused) {
                }
            }
            finish();
            CrashReporter.markCleanExit(this);
            Process.killProcess(Process.myPid());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ LogOnDetails lambda$onCreate$0(Context context) throws Exception {
        SteamRuntime.prepare(context);
        return SteamIdentityProvider.savedIdentity(context);
    }

    private void sendEscape(boolean z) {
        if (SDLActivity.mBrokenLibraries || isFinishing()) {
            return;
        }
        if (z) {
            SDLActivity.onNativeKeyDown(SteammessagesClientserverLogin.CMsgClientLogon.GAMING_DEVICE_TYPE_FIELD_NUMBER);
        } else {
            SDLActivity.onNativeKeyUp(SteammessagesClientserverLogin.CMsgClientLogon.GAMING_DEVICE_TYPE_FIELD_NUMBER);
        }
    }

    @Override // org.libsdl.app.SDLActivity, android.app.Activity, android.view.Window.Callback
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        if (keyEvent.getKeyCode() == 4 && (keyEvent.getSource() & 8194) != 8194) {
            if (keyEvent.getAction() == 0 && keyEvent.getRepeatCount() == 0) {
                sendEscape(true);
            } else if (keyEvent.getAction() == 1) {
                sendEscape(false);
            }
            return true;
        }
        return super.dispatchKeyEvent(keyEvent);
    }

    @Override // org.libsdl.app.SDLActivity, android.app.Activity
    public void onBackPressed() {
        sendEscape(true);
        sendEscape(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$openGModAddons$1() {
        startActivity(new Intent(this, (Class<?>) ModManagerActivity.class));
    }

    public void openGModAddons() {
        runOnUiThread(new Runnable() { // from class: com.gmodvr.flat.GameActivity$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$openGModAddons$1();
            }
        });
    }

    private void setDiagnosticForeground(boolean z) {
        if (SDLActivity.mBrokenLibraries) {
            return;
        }
        try {
            nativeSetForeground(z);
        } catch (UnsatisfiedLinkError unused) {
            Log.w(TAG, "Frame watchdog library not loaded");
        }
    }

    @Override // org.libsdl.app.SDLActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        setDiagnosticForeground(true);
    }

    @Override // org.libsdl.app.SDLActivity, android.app.Activity
    public void onPause() {
        setDiagnosticForeground(false);
        super.onPause();
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks2
    public void onTrimMemory(int i) {
        super.onTrimMemory(i);
        if (SDLActivity.mBrokenLibraries) {
            return;
        }
        try {
            nativeTrimMemory(i);
        } catch (UnsatisfiedLinkError unused) {
            Log.w(TAG, "onTrimMemory(" + i + "): native library not loaded");
        }
    }

    @Override // org.libsdl.app.SDLActivity, android.app.Activity
    public void onDestroy() {
        GModWebView.shutdown(this);
        GModServerDirectory.shutdown();
        GModSteamAuth.shutdown();
        setDiagnosticForeground(false);
        super.onDestroy();
        Storage.Lease lease = this.lease;
        if (lease != null) {
            try {
                lease.close();
            } catch (IOException unused) {
            }
        }
        CrashReporter.markCleanExit(this);
        Process.killProcess(Process.myPid());
    }
}
