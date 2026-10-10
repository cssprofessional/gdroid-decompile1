package org.libsdl.app;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.UiModeManager;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.util.DisplayMetrics;
import android.util.Log;
import android.util.SparseArray;
import android.view.Display;
import android.view.InputDevice;
import android.view.KeyEvent;
import android.view.PointerIcon;
import android.view.Surface;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.view.inputmethod.InputMethodManager;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.google.protobuf.DescriptorProtos;
import in.dragonbra.javasteam.protobufs.steamclient.SteammessagesClientserverLogin;
import java.util.Hashtable;
import java.util.Locale;
import org.bouncycastle.i18n.MessageBundle;

/* JADX INFO: loaded from: classes3.dex */
public class SDLActivity extends Activity implements View.OnSystemUiVisibilityChangeListener {
    static final int COMMAND_CHANGE_TITLE = 1;
    static final int COMMAND_CHANGE_WINDOW_STYLE = 2;
    static final int COMMAND_SET_KEEP_SCREEN_ON = 5;
    static final int COMMAND_TEXTEDIT_HIDE = 3;
    protected static final int COMMAND_USER = 32768;
    protected static final int SDL_ORIENTATION_LANDSCAPE = 1;
    protected static final int SDL_ORIENTATION_LANDSCAPE_FLIPPED = 2;
    protected static final int SDL_ORIENTATION_PORTRAIT = 3;
    protected static final int SDL_ORIENTATION_PORTRAIT_FLIPPED = 4;
    protected static final int SDL_ORIENTATION_UNKNOWN = 0;
    private static final int SDL_SYSTEM_CURSOR_ARROW = 0;
    private static final int SDL_SYSTEM_CURSOR_CROSSHAIR = 3;
    private static final int SDL_SYSTEM_CURSOR_HAND = 11;
    private static final int SDL_SYSTEM_CURSOR_IBEAM = 1;
    private static final int SDL_SYSTEM_CURSOR_NO = 10;
    private static final int SDL_SYSTEM_CURSOR_SIZEALL = 9;
    private static final int SDL_SYSTEM_CURSOR_SIZENESW = 6;
    private static final int SDL_SYSTEM_CURSOR_SIZENS = 8;
    private static final int SDL_SYSTEM_CURSOR_SIZENWSE = 5;
    private static final int SDL_SYSTEM_CURSOR_SIZEWE = 7;
    private static final int SDL_SYSTEM_CURSOR_WAIT = 2;
    private static final int SDL_SYSTEM_CURSOR_WAITARROW = 4;
    private static final String TAG = "SDL";
    protected static SDLClipboardHandler mClipboardHandler;
    protected static Locale mCurrentLocale;
    public static NativeState mCurrentNativeState;
    protected static int mCurrentOrientation;
    protected static Hashtable<Integer, PointerIcon> mCursors;
    protected static boolean mFullscreenModeActive;
    public static boolean mHasFocus;
    public static boolean mIsResumedCalled;
    protected static int mLastCursorID;
    protected static ViewGroup mLayout;
    protected static SDLGenericMotionListener_API12 mMotionListener;
    public static NativeState mNextNativeState;
    protected static Thread mSDLThread;
    protected static boolean mScreenKeyboardShown;
    protected static SDLActivity mSingleton;
    protected static SDLSurface mSurface;
    protected static View mTextEdit;
    Handler commandHandler = new SDLCommandHandler();
    protected final int[] messageboxSelection = new int[1];
    private final Runnable rehideSystemUi = new Runnable() { // from class: org.libsdl.app.SDLActivity.7
        @Override // java.lang.Runnable
        public void run() {
            SDLActivity.this.getWindow().getDecorView().setSystemUiVisibility(5894);
        }
    };
    public static final boolean mHasMultiWindow = true;
    public static boolean mBrokenLibraries = true;

    public enum NativeState {
        INIT,
        RESUMED,
        PAUSED
    }

    public static native void nativeAddTouch(int i, String str);

    public static native void nativeFocusChanged(boolean z);

    public static native String nativeGetHint(String str);

    public static native void nativeLowMemory();

    public static native void nativePause();

    public static native void nativePermissionResult(int i, boolean z);

    public static native void nativeQuit();

    public static native void nativeResume();

    public static native int nativeRunMain(String str, String str2, Object obj);

    public static native void nativeSendQuit();

    public static native void nativeSetScreenResolution(int i, int i2, int i3, int i4, float f);

    public static native void nativeSetenv(String str, String str2);

    public static native int nativeSetupJNI();

    public static native void onNativeAccel(float f, float f2, float f3);

    public static native void onNativeClipboardChanged();

    public static native void onNativeDropFile(String str);

    public static native void onNativeKeyDown(int i);

    public static native void onNativeKeyUp(int i);

    public static native void onNativeKeyboardFocusLost();

    public static native void onNativeLocaleChanged();

    public static native void onNativeMouse(int i, int i2, float f, float f2, boolean z);

    public static native void onNativeOrientationChanged(int i);

    public static native void onNativeResize();

    public static native boolean onNativeSoftReturnKey();

    public static native void onNativeSurfaceChanged();

    public static native void onNativeSurfaceCreated();

    public static native void onNativeSurfaceDestroyed();

    public static native void onNativeTouch(int i, int i2, int i3, float f, float f2, float f3);

    public static boolean shouldMinimizeOnFocusLoss() {
        return false;
    }

    public boolean onUnhandledMessage(int i, Object obj) {
        return false;
    }

    public static SDLGenericMotionListener_API12 getMotionListener() {
        if (mMotionListener == null) {
            mMotionListener = new SDLGenericMotionListener_API26();
        }
        return mMotionListener;
    }

    public String getMainSharedObject() {
        String str;
        String[] libraries = mSingleton.getLibraries();
        if (libraries.length > 0) {
            str = "lib" + libraries[libraries.length - 1] + ".so";
        } else {
            str = "libmain.so";
        }
        return getContext().getApplicationInfo().nativeLibraryDir + "/" + str;
    }

    public String getMainFunction() {
        return "SDL_main";
    }

    public String[] getLibraries() {
        return new String[]{"SDL2", "main"};
    }

    public void loadLibraries() {
        for (String str : getLibraries()) {
            SDL.loadLibrary(str);
        }
    }

    public String[] getArguments() {
        return new String[0];
    }

    public static void initialize() {
        mSingleton = null;
        mSurface = null;
        mTextEdit = null;
        mLayout = null;
        mClipboardHandler = null;
        mCursors = new Hashtable<>();
        mLastCursorID = 0;
        mSDLThread = null;
        mIsResumedCalled = false;
        mHasFocus = true;
        NativeState nativeState = NativeState.INIT;
        mNextNativeState = nativeState;
        mCurrentNativeState = nativeState;
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        String message;
        String path;
        Log.v(TAG, "Device: " + Build.DEVICE);
        Log.v(TAG, "Model: " + Build.MODEL);
        Log.v(TAG, "onCreate()");
        super.onCreate(bundle);
        try {
            Thread.currentThread().setName("SDLActivity");
        } catch (Exception e) {
            Log.v(TAG, "modify thread properties failed " + e.toString());
        }
        try {
            loadLibraries();
            mBrokenLibraries = false;
            message = "";
        } catch (Exception e2) {
            System.err.println(e2.getMessage());
            mBrokenLibraries = true;
            message = e2.getMessage();
        } catch (UnsatisfiedLinkError e3) {
            System.err.println(e3.getMessage());
            mBrokenLibraries = true;
            message = e3.getMessage();
        }
        if (mBrokenLibraries) {
            mSingleton = this;
            AlertDialog.Builder builder = new AlertDialog.Builder(this);
            builder.setMessage("An error occurred while trying to start the application. Please try again and/or reinstall." + System.getProperty("line.separator") + System.getProperty("line.separator") + "Error: " + message);
            builder.setTitle("SDL Error");
            builder.setPositiveButton("Exit", new DialogInterface.OnClickListener() { // from class: org.libsdl.app.SDLActivity.1
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i) {
                    SDLActivity.mSingleton.finish();
                }
            });
            builder.setCancelable(false);
            builder.create().show();
            return;
        }
        SDL.setupJNI();
        SDL.initialize();
        mSingleton = this;
        SDL.setContext(this);
        mClipboardHandler = new SDLClipboardHandler();
        mSurface = new SDLSurface(getApplication());
        RelativeLayout relativeLayout = new RelativeLayout(this);
        mLayout = relativeLayout;
        relativeLayout.addView(mSurface);
        int currentOrientation = getCurrentOrientation();
        mCurrentOrientation = currentOrientation;
        onNativeOrientationChanged(currentOrientation);
        try {
            mCurrentLocale = getContext().getResources().getConfiguration().getLocales().get(0);
        } catch (Exception unused) {
        }
        setContentView(mLayout);
        setWindowStyle(false);
        getWindow().getDecorView().setOnSystemUiVisibilityChangeListener(this);
        Intent intent = getIntent();
        if (intent == null || intent.getData() == null || (path = intent.getData().getPath()) == null) {
            return;
        }
        Log.v(TAG, "Got filename: " + path);
        onNativeDropFile(path);
    }

    public void pauseNativeThread() {
        mNextNativeState = NativeState.PAUSED;
        mIsResumedCalled = false;
        if (mBrokenLibraries) {
            return;
        }
        handleNativeState();
    }

    public void resumeNativeThread() {
        mNextNativeState = NativeState.RESUMED;
        mIsResumedCalled = true;
        if (mBrokenLibraries) {
            return;
        }
        handleNativeState();
    }

    @Override // android.app.Activity
    public void onPause() {
        Log.v(TAG, "onPause()");
        super.onPause();
        if (mHasMultiWindow) {
            return;
        }
        pauseNativeThread();
    }

    @Override // android.app.Activity
    public void onResume() {
        Log.v(TAG, "onResume()");
        super.onResume();
        if (mHasMultiWindow) {
            return;
        }
        resumeNativeThread();
    }

    @Override // android.app.Activity
    public void onStop() {
        Log.v(TAG, "onStop()");
        super.onStop();
        if (mHasMultiWindow) {
            pauseNativeThread();
        }
    }

    @Override // android.app.Activity
    public void onStart() {
        Log.v(TAG, "onStart()");
        super.onStart();
        if (mHasMultiWindow) {
            resumeNativeThread();
        }
    }

    public static int getCurrentOrientation() {
        int rotation = ((WindowManager) getContext().getSystemService("window")).getDefaultDisplay().getRotation();
        if (rotation == 0) {
            return 3;
        }
        int i = 1;
        if (rotation != 1) {
            i = 2;
            if (rotation == 2) {
                return 4;
            }
            if (rotation != 3) {
                return 0;
            }
        }
        return i;
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        Log.v(TAG, "onWindowFocusChanged(): " + z);
        if (mBrokenLibraries) {
            return;
        }
        mHasFocus = z;
        if (z) {
            mNextNativeState = NativeState.RESUMED;
            getMotionListener().reclaimRelativeMouseModeIfNeeded();
            handleNativeState();
            nativeFocusChanged(true);
            return;
        }
        nativeFocusChanged(false);
        if (mHasMultiWindow) {
            return;
        }
        mNextNativeState = NativeState.PAUSED;
        handleNativeState();
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onLowMemory() {
        Log.v(TAG, "onLowMemory()");
        super.onLowMemory();
        if (mBrokenLibraries) {
            return;
        }
        nativeLowMemory();
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        Log.v(TAG, "onConfigurationChanged()");
        super.onConfigurationChanged(configuration);
        if (mBrokenLibraries) {
            return;
        }
        Locale locale = mCurrentLocale;
        if (locale == null || !locale.equals(configuration.locale)) {
            mCurrentLocale = configuration.locale;
            onNativeLocaleChanged();
        }
    }

    @Override // android.app.Activity
    public void onDestroy() {
        Log.v(TAG, "onDestroy()");
        if (mBrokenLibraries) {
            super.onDestroy();
            return;
        }
        if (mSDLThread != null) {
            nativeSendQuit();
            try {
                mSDLThread.join();
            } catch (Exception e) {
                Log.v(TAG, "Problem stopping SDLThread: " + e);
            }
        }
        nativeQuit();
        super.onDestroy();
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        String strNativeGetHint = nativeGetHint("SDL_ANDROID_TRAP_BACK_BUTTON");
        if ((strNativeGetHint == null || !strNativeGetHint.equals("1")) && !isFinishing()) {
            super.onBackPressed();
        }
    }

    public static void manualBackButton() {
        mSingleton.pressBackButton();
    }

    public void pressBackButton() {
        runOnUiThread(new Runnable() { // from class: org.libsdl.app.SDLActivity.2
            @Override // java.lang.Runnable
            public void run() {
                if (SDLActivity.this.isFinishing()) {
                    return;
                }
                SDLActivity.this.superOnBackPressed();
            }
        });
    }

    public void superOnBackPressed() {
        super.onBackPressed();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        int keyCode;
        if (mBrokenLibraries || (keyCode = keyEvent.getKeyCode()) == 25 || keyCode == 24 || keyCode == 27 || keyCode == 168 || keyCode == 169) {
            return false;
        }
        return super.dispatchKeyEvent(keyEvent);
    }

    public static void handleNativeState() {
        NativeState nativeState = mNextNativeState;
        if (nativeState == mCurrentNativeState) {
            return;
        }
        if (nativeState == NativeState.INIT) {
            mCurrentNativeState = mNextNativeState;
            return;
        }
        if (mNextNativeState == NativeState.PAUSED) {
            if (mSDLThread != null) {
                nativePause();
            }
            SDLSurface sDLSurface = mSurface;
            if (sDLSurface != null) {
                sDLSurface.handlePause();
            }
            mCurrentNativeState = mNextNativeState;
            return;
        }
        if (mNextNativeState == NativeState.RESUMED && mSurface.mIsSurfaceReady && mHasFocus && mIsResumedCalled) {
            if (mSDLThread == null) {
                mSDLThread = new Thread(null, new SDLMain(), "SDLThread", 8388608L);
                mSurface.enableSensor(1, true);
                mSDLThread.start();
            } else {
                nativeResume();
            }
            mSurface.handleResume();
            mCurrentNativeState = mNextNativeState;
        }
    }

    public static class SDLCommandHandler extends Handler {
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            Window window;
            Context context = SDL.getContext();
            if (context == null) {
                Log.e(SDLActivity.TAG, "error handling message, getContext() returned null");
                return;
            }
            int i = message.arg1;
            if (i == 1) {
                if (context instanceof Activity) {
                    ((Activity) context).setTitle((String) message.obj);
                    return;
                } else {
                    Log.e(SDLActivity.TAG, "error handling message, getContext() returned no Activity");
                    return;
                }
            }
            if (i == 2) {
                if (context instanceof Activity) {
                    Window window2 = ((Activity) context).getWindow();
                    if (window2 != null) {
                        Object obj = message.obj;
                        if ((obj instanceof Integer) && ((Integer) obj).intValue() != 0) {
                            window2.getDecorView().setSystemUiVisibility(5894);
                            window2.addFlags(1024);
                            window2.clearFlags(2048);
                            SDLActivity.mFullscreenModeActive = true;
                            return;
                        }
                        window2.getDecorView().setSystemUiVisibility(256);
                        window2.addFlags(2048);
                        window2.clearFlags(1024);
                        SDLActivity.mFullscreenModeActive = false;
                        return;
                    }
                    return;
                }
                Log.e(SDLActivity.TAG, "error handling message, getContext() returned no Activity");
                return;
            }
            if (i == 3) {
                View view = SDLActivity.mTextEdit;
                if (view != null) {
                    view.setLayoutParams(new RelativeLayout.LayoutParams(0, 0));
                    ((InputMethodManager) context.getSystemService("input_method")).hideSoftInputFromWindow(SDLActivity.mTextEdit.getWindowToken(), 0);
                    SDLActivity.mScreenKeyboardShown = false;
                    SDLActivity.mSurface.requestFocus();
                    return;
                }
                return;
            }
            if (i == 5) {
                if (!(context instanceof Activity) || (window = ((Activity) context).getWindow()) == null) {
                    return;
                }
                Object obj2 = message.obj;
                if ((obj2 instanceof Integer) && ((Integer) obj2).intValue() != 0) {
                    window.addFlags(128);
                    return;
                } else {
                    window.clearFlags(128);
                    return;
                }
            }
            if (!(context instanceof SDLActivity) || ((SDLActivity) context).onUnhandledMessage(i, message.obj)) {
                return;
            }
            Log.e(SDLActivity.TAG, "error handling message, command is " + message.arg1);
        }
    }

    public boolean sendCommand(int i, Object obj) {
        Message messageObtainMessage = this.commandHandler.obtainMessage();
        messageObtainMessage.arg1 = i;
        messageObtainMessage.obj = obj;
        boolean zSendMessage = this.commandHandler.sendMessage(messageObtainMessage);
        if (i == 2) {
            boolean z = false;
            if (obj instanceof Integer) {
                Display defaultDisplay = ((WindowManager) getSystemService("window")).getDefaultDisplay();
                DisplayMetrics displayMetrics = new DisplayMetrics();
                defaultDisplay.getRealMetrics(displayMetrics);
                if (displayMetrics.widthPixels == mSurface.getWidth() && displayMetrics.heightPixels == mSurface.getHeight()) {
                    z = true;
                }
                if (((Integer) obj).intValue() == 1) {
                    z = !z;
                }
            }
            if (z && getContext() != null) {
                synchronized (getContext()) {
                    try {
                        getContext().wait(500L);
                    } catch (InterruptedException e) {
                        e.printStackTrace();
                    }
                }
            }
        }
        return zSendMessage;
    }

    public static boolean setActivityTitle(String str) {
        return mSingleton.sendCommand(1, str);
    }

    public static void setWindowStyle(boolean z) {
        mSingleton.sendCommand(2, Integer.valueOf(z ? 1 : 0));
    }

    public static void setOrientation(int i, int i2, boolean z, String str) {
        SDLActivity sDLActivity = mSingleton;
        if (sDLActivity != null) {
            sDLActivity.setOrientationBis(i, i2, z, str);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:46:0x006e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void setOrientationBis(int r9, int r10, boolean r11, java.lang.String r12) {
        /*
            r8 = this;
            java.lang.String r8 = "LandscapeRight"
            boolean r0 = r12.contains(r8)
            r1 = 6
            java.lang.String r2 = "LandscapeLeft"
            r3 = 0
            r4 = -1
            if (r0 == 0) goto L15
            boolean r0 = r12.contains(r2)
            if (r0 == 0) goto L15
            r8 = r1
            goto L27
        L15:
            boolean r8 = r12.contains(r8)
            if (r8 == 0) goto L1d
            r8 = r3
            goto L27
        L1d:
            boolean r8 = r12.contains(r2)
            if (r8 == 0) goto L26
            r8 = 8
            goto L27
        L26:
            r8 = r4
        L27:
            java.lang.String r0 = "Portrait"
            boolean r2 = r12.contains(r0)
            r5 = 7
            java.lang.String r6 = "PortraitUpsideDown"
            r7 = 1
            if (r2 == 0) goto L3b
            boolean r2 = r12.contains(r6)
            if (r2 == 0) goto L3b
            r0 = r5
            goto L4d
        L3b:
            boolean r0 = r12.contains(r0)
            if (r0 == 0) goto L43
            r0 = r7
            goto L4d
        L43:
            boolean r0 = r12.contains(r6)
            if (r0 == 0) goto L4c
            r0 = 9
            goto L4d
        L4c:
            r0 = r4
        L4d:
            if (r8 == r4) goto L51
            r2 = r7
            goto L52
        L51:
            r2 = r3
        L52:
            if (r0 == r4) goto L55
            r3 = r7
        L55:
            r4 = 10
            if (r3 != 0) goto L64
            if (r2 != 0) goto L64
            if (r11 == 0) goto L5e
            goto L7b
        L5e:
            if (r9 <= r10) goto L61
            goto L62
        L61:
            r1 = r5
        L62:
            r4 = r1
            goto L7b
        L64:
            if (r11 == 0) goto L71
            if (r3 == 0) goto L6b
            if (r2 == 0) goto L6b
            goto L7b
        L6b:
            if (r2 == 0) goto L6e
            goto L6f
        L6e:
            r8 = r0
        L6f:
            r4 = r8
            goto L7b
        L71:
            if (r3 == 0) goto L78
            if (r2 == 0) goto L78
            if (r9 <= r10) goto L6e
            goto L6f
        L78:
            if (r2 == 0) goto L6e
            goto L6f
        L7b:
            java.lang.StringBuilder r8 = new java.lang.StringBuilder
            r8.<init>()
            java.lang.String r0 = "setOrientation() requestedOrientation="
            r8.append(r0)
            r8.append(r4)
            java.lang.String r0 = " width="
            r8.append(r0)
            r8.append(r9)
            java.lang.String r9 = " height="
            r8.append(r9)
            r8.append(r10)
            java.lang.String r9 = " resizable="
            r8.append(r9)
            r8.append(r11)
            java.lang.String r9 = " hint="
            r8.append(r9)
            r8.append(r12)
            java.lang.String r8 = r8.toString()
            java.lang.String r9 = "SDL"
            android.util.Log.v(r9, r8)
            org.libsdl.app.SDLActivity r8 = org.libsdl.app.SDLActivity.mSingleton
            r8.setRequestedOrientation(r4)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.libsdl.app.SDLActivity.setOrientationBis(int, int, boolean, java.lang.String):void");
    }

    public static void minimizeWindow() {
        if (mSingleton == null) {
            return;
        }
        Intent intent = new Intent("android.intent.action.MAIN");
        intent.addCategory("android.intent.category.HOME");
        intent.setFlags(268435456);
        mSingleton.startActivity(intent);
    }

    public static boolean isScreenKeyboardShown() {
        if (mTextEdit != null && mScreenKeyboardShown) {
            return ((InputMethodManager) SDL.getContext().getSystemService("input_method")).isAcceptingText();
        }
        return false;
    }

    public static boolean supportsRelativeMouse() {
        return getMotionListener().supportsRelativeMouse();
    }

    public static boolean setRelativeMouseEnabled(boolean z) {
        if (!z || supportsRelativeMouse()) {
            return getMotionListener().setRelativeMouseEnabled(z);
        }
        return false;
    }

    public static boolean sendMessage(int i, int i2) {
        SDLActivity sDLActivity = mSingleton;
        if (sDLActivity == null) {
            return false;
        }
        return sDLActivity.sendCommand(i, Integer.valueOf(i2));
    }

    public static Context getContext() {
        return SDL.getContext();
    }

    public static boolean isAndroidTV() {
        if (((UiModeManager) getContext().getSystemService("uimode")).getCurrentModeType() == 4) {
            return true;
        }
        String str = Build.MANUFACTURER;
        if (str.equals("MINIX") && Build.MODEL.equals("NEO-U1")) {
            return true;
        }
        if (str.equals("Amlogic") && Build.MODEL.equals("X96-W")) {
            return true;
        }
        return str.equals("Amlogic") && Build.MODEL.startsWith("TV");
    }

    public static double getDiagonal() {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        Activity activity = (Activity) getContext();
        if (activity == null) {
            return 0.0d;
        }
        activity.getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
        double d = ((double) displayMetrics.widthPixels) / ((double) displayMetrics.xdpi);
        double d2 = ((double) displayMetrics.heightPixels) / ((double) displayMetrics.ydpi);
        return Math.sqrt((d * d) + (d2 * d2));
    }

    public static boolean isTablet() {
        return getDiagonal() >= 7.0d;
    }

    public static boolean isChromebook() {
        if (getContext() == null) {
            return false;
        }
        return getContext().getPackageManager().hasSystemFeature("org.chromium.arc.device_management");
    }

    public static boolean isDeXMode() {
        try {
            Configuration configuration = getContext().getResources().getConfiguration();
            Class<?> cls = configuration.getClass();
            return cls.getField("SEM_DESKTOP_MODE_ENABLED").getInt(cls) == cls.getField("semDesktopModeEnabled").getInt(configuration);
        } catch (Exception unused) {
            return false;
        }
    }

    public static DisplayMetrics getDisplayDPI() {
        return getContext().getResources().getDisplayMetrics();
    }

    public static boolean getManifestEnvironmentVariables() {
        Bundle bundle;
        try {
            if (getContext() == null || (bundle = getContext().getPackageManager().getApplicationInfo(getContext().getPackageName(), 128).metaData) == null) {
                return false;
            }
            for (String str : bundle.keySet()) {
                if (str.startsWith("SDL_ENV.")) {
                    nativeSetenv(str.substring(8), bundle.get(str).toString());
                }
            }
            return true;
        } catch (Exception e) {
            Log.v(TAG, "exception " + e.toString());
            return false;
        }
    }

    public static View getContentView() {
        return mLayout;
    }

    public static class ShowTextInputTask implements Runnable {
        static final int HEIGHT_PADDING = 15;
        public int h;
        public int w;
        public int x;
        public int y;

        public ShowTextInputTask(int i, int i2, int i3, int i4) {
            this.x = i;
            this.y = i2;
            this.w = i3;
            this.h = i4;
            if (i3 <= 0) {
                this.w = 1;
            }
            if (i4 + 15 <= 0) {
                this.h = -14;
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(this.w, this.h + 15);
            layoutParams.leftMargin = this.x;
            layoutParams.topMargin = this.y;
            View view = SDLActivity.mTextEdit;
            if (view == null) {
                SDLActivity.mTextEdit = new DummyEdit(SDL.getContext());
                SDLActivity.mLayout.addView(SDLActivity.mTextEdit, layoutParams);
            } else {
                view.setLayoutParams(layoutParams);
            }
            SDLActivity.mTextEdit.setVisibility(0);
            SDLActivity.mTextEdit.requestFocus();
            ((InputMethodManager) SDL.getContext().getSystemService("input_method")).showSoftInput(SDLActivity.mTextEdit, 0);
            SDLActivity.mScreenKeyboardShown = true;
        }
    }

    public static boolean showTextInput(int i, int i2, int i3, int i4) {
        return mSingleton.commandHandler.post(new ShowTextInputTask(i, i2, i3, i4));
    }

    public static boolean isTextInputEvent(KeyEvent keyEvent) {
        if (keyEvent.isCtrlPressed()) {
            return false;
        }
        return keyEvent.isPrintingKey() || keyEvent.getKeyCode() == 62;
    }

    public static Surface getNativeSurface() {
        SDLSurface sDLSurface = mSurface;
        if (sDLSurface == null) {
            return null;
        }
        return sDLSurface.getNativeSurface();
    }

    public static void initTouch() {
        for (int i : InputDevice.getDeviceIds()) {
            InputDevice device = InputDevice.getDevice(i);
            if (device != null && (device.getSources() & 4098) != 0) {
                nativeAddTouch(device.getId(), device.getName());
            }
        }
    }

    public int messageboxShowMessageBox(int i, String str, String str2, int[] iArr, int[] iArr2, String[] strArr, int[] iArr3) {
        this.messageboxSelection[0] = -1;
        if (iArr.length != iArr2.length && iArr2.length != strArr.length) {
            return -1;
        }
        final Bundle bundle = new Bundle();
        bundle.putInt("flags", i);
        bundle.putString(MessageBundle.TITLE_ENTRY, str);
        bundle.putString("message", str2);
        bundle.putIntArray("buttonFlags", iArr);
        bundle.putIntArray("buttonIds", iArr2);
        bundle.putStringArray("buttonTexts", strArr);
        bundle.putIntArray("colors", iArr3);
        runOnUiThread(new Runnable() { // from class: org.libsdl.app.SDLActivity.3
            @Override // java.lang.Runnable
            public void run() {
                SDLActivity.this.messageboxCreateAndShow(bundle);
            }
        });
        synchronized (this.messageboxSelection) {
            try {
                this.messageboxSelection.wait();
            } catch (InterruptedException e) {
                e.printStackTrace();
                return -1;
            }
        }
        return this.messageboxSelection[0];
    }

    public void messageboxCreateAndShow(Bundle bundle) {
        int i;
        int i2;
        int i3;
        int[] intArray = bundle.getIntArray("colors");
        if (intArray != null) {
            i = intArray[0];
            i2 = intArray[1];
            int i4 = intArray[2];
            i3 = intArray[3];
            int i5 = intArray[4];
        } else {
            i = 0;
            i2 = 0;
            i3 = 0;
        }
        final AlertDialog alertDialogCreate = new AlertDialog.Builder(this).create();
        alertDialogCreate.setTitle(bundle.getString(MessageBundle.TITLE_ENTRY));
        alertDialogCreate.setCancelable(false);
        alertDialogCreate.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: org.libsdl.app.SDLActivity.4
            @Override // android.content.DialogInterface.OnDismissListener
            public void onDismiss(DialogInterface dialogInterface) {
                synchronized (SDLActivity.this.messageboxSelection) {
                    SDLActivity.this.messageboxSelection.notify();
                }
            }
        });
        TextView textView = new TextView(this);
        textView.setGravity(17);
        textView.setText(bundle.getString("message"));
        if (i2 != 0) {
            textView.setTextColor(i2);
        }
        int[] intArray2 = bundle.getIntArray("buttonFlags");
        int[] intArray3 = bundle.getIntArray("buttonIds");
        String[] stringArray = bundle.getStringArray("buttonTexts");
        final SparseArray sparseArray = new SparseArray();
        LinearLayout linearLayout = new LinearLayout(this);
        linearLayout.setOrientation(0);
        linearLayout.setGravity(17);
        for (int i6 = 0; i6 < stringArray.length; i6++) {
            Button button = new Button(this);
            final int i7 = intArray3[i6];
            button.setOnClickListener(new View.OnClickListener() { // from class: org.libsdl.app.SDLActivity.5
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    SDLActivity.this.messageboxSelection[0] = i7;
                    alertDialogCreate.dismiss();
                }
            });
            int i8 = intArray2[i6];
            if (i8 != 0) {
                if ((i8 & 1) != 0) {
                    sparseArray.put(66, button);
                }
                if ((intArray2[i6] & 2) != 0) {
                    sparseArray.put(SteammessagesClientserverLogin.CMsgClientLogon.GAMING_DEVICE_TYPE_FIELD_NUMBER, button);
                }
            }
            button.setText(stringArray[i6]);
            if (i2 != 0) {
                button.setTextColor(i2);
            }
            if (i3 != 0) {
                Drawable background = button.getBackground();
                if (background == null) {
                    button.setBackgroundColor(i3);
                } else {
                    background.setColorFilter(i3, PorterDuff.Mode.MULTIPLY);
                }
            }
            linearLayout.addView(button);
        }
        LinearLayout linearLayout2 = new LinearLayout(this);
        linearLayout2.setOrientation(1);
        linearLayout2.addView(textView);
        linearLayout2.addView(linearLayout);
        if (i != 0) {
            linearLayout2.setBackgroundColor(i);
        }
        alertDialogCreate.setView(linearLayout2);
        alertDialogCreate.setOnKeyListener(new DialogInterface.OnKeyListener() { // from class: org.libsdl.app.SDLActivity.6
            @Override // android.content.DialogInterface.OnKeyListener
            public boolean onKey(DialogInterface dialogInterface, int i9, KeyEvent keyEvent) {
                Button button2 = (Button) sparseArray.get(i9);
                if (button2 == null) {
                    return false;
                }
                if (keyEvent.getAction() == 1) {
                    button2.performClick();
                }
                return true;
            }
        });
        alertDialogCreate.show();
    }

    @Override // android.view.View.OnSystemUiVisibilityChangeListener
    public void onSystemUiVisibilityChange(int i) {
        Handler handler;
        if (mFullscreenModeActive) {
            if (((i & 4) == 0 || (i & 2) == 0) && (handler = getWindow().getDecorView().getHandler()) != null) {
                handler.removeCallbacks(this.rehideSystemUi);
                handler.postDelayed(this.rehideSystemUi, 2000L);
            }
        }
    }

    public static boolean clipboardHasText() {
        return mClipboardHandler.clipboardHasText();
    }

    public static String clipboardGetText() {
        return mClipboardHandler.clipboardGetText();
    }

    public static void clipboardSetText(String str) {
        mClipboardHandler.clipboardSetText(str);
    }

    public static int createCustomCursor(int[] iArr, int i, int i2, int i3, int i4) {
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(iArr, i, i2, Bitmap.Config.ARGB_8888);
        mLastCursorID++;
        try {
            mCursors.put(Integer.valueOf(mLastCursorID), PointerIcon.create(bitmapCreateBitmap, i3, i4));
            return mLastCursorID;
        } catch (Exception unused) {
            return 0;
        }
    }

    public static boolean setCustomCursor(int i) {
        try {
            mSurface.setPointerIcon(mCursors.get(Integer.valueOf(i)));
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    public static boolean setSystemCursor(int i) {
        int i2 = 1004;
        switch (i) {
            case 0:
                i2 = DescriptorProtos.Edition.EDITION_2023_VALUE;
                break;
            case 1:
                i2 = 1008;
                break;
            case 2:
            case 4:
                break;
            case 3:
                i2 = 1007;
                break;
            case 5:
                i2 = 1017;
                break;
            case 6:
                i2 = 1016;
                break;
            case 7:
                i2 = 1014;
                break;
            case 8:
                i2 = 1015;
                break;
            case 9:
                i2 = 1020;
                break;
            case 10:
                i2 = 1012;
                break;
            case 11:
                i2 = 1002;
                break;
            default:
                i2 = 0;
                break;
        }
        try {
            mSurface.setPointerIcon(PointerIcon.getSystemIcon(SDL.getContext(), i2));
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    public static void requestPermission(String str, int i) {
        Activity activity = (Activity) getContext();
        if (activity.checkSelfPermission(str) != 0) {
            activity.requestPermissions(new String[]{str}, i);
        } else {
            nativePermissionResult(i, true);
        }
    }

    @Override // android.app.Activity
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        boolean z = false;
        if (iArr.length > 0 && iArr[0] == 0) {
            z = true;
        }
        nativePermissionResult(i, z);
    }

    public static int openURL(String str) {
        try {
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setData(Uri.parse(str));
            intent.addFlags(1208483840);
            mSingleton.startActivity(intent);
            return 0;
        } catch (Exception unused) {
            return -1;
        }
    }

    public static int showToast(String str, int i, int i2, int i3, int i4) {
        SDLActivity sDLActivity = mSingleton;
        if (sDLActivity == null) {
            return -1;
        }
        try {
            sDLActivity.runOnUiThread(new Runnable(str, i, i2, i3, i4) { // from class: org.libsdl.app.SDLActivity.1OneShotTask
                int mDuration;
                int mGravity;
                String mMessage;
                int mXOffset;
                int mYOffset;

                {
                    this.mMessage = str;
                    this.mDuration = i;
                    this.mGravity = i2;
                    this.mXOffset = i3;
                    this.mYOffset = i4;
                }

                @Override // java.lang.Runnable
                public void run() {
                    try {
                        Toast toastMakeText = Toast.makeText(SDLActivity.mSingleton, this.mMessage, this.mDuration);
                        int i5 = this.mGravity;
                        if (i5 >= 0) {
                            toastMakeText.setGravity(i5, this.mXOffset, this.mYOffset);
                        }
                        toastMakeText.show();
                    } catch (Exception e) {
                        Log.e(SDLActivity.TAG, e.getMessage());
                    }
                }
            });
            return 0;
        } catch (Exception unused) {
            return -1;
        }
    }
}
