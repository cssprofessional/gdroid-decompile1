package org.libsdl.app;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.os.Handler;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.Display;
import android.view.InputDevice;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.Surface;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.View;
import android.view.WindowManager;
import org.libsdl.app.SDLActivity;

/* JADX INFO: compiled from: SDLActivity.java */
/* JADX INFO: loaded from: classes3.dex */
class SDLSurface extends SurfaceView implements SurfaceHolder.Callback, View.OnKeyListener, View.OnTouchListener, SensorEventListener {
    protected Display mDisplay;
    protected float mHeight;
    public boolean mIsSurfaceReady;
    protected SensorManager mSensorManager;
    protected float mWidth;

    @Override // android.hardware.SensorEventListener
    public void onAccuracyChanged(Sensor sensor, int i) {
    }

    public SDLSurface(Context context) {
        super(context);
        getHolder().addCallback(this);
        setFocusable(true);
        setFocusableInTouchMode(true);
        requestFocus();
        setOnKeyListener(this);
        setOnTouchListener(this);
        this.mDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
        this.mSensorManager = (SensorManager) context.getSystemService("sensor");
        setOnGenericMotionListener(SDLActivity.getMotionListener());
        this.mWidth = 1.0f;
        this.mHeight = 1.0f;
        this.mIsSurfaceReady = false;
    }

    public void handlePause() {
        enableSensor(1, false);
    }

    public void handleResume() {
        setFocusable(true);
        setFocusableInTouchMode(true);
        requestFocus();
        setOnKeyListener(this);
        setOnTouchListener(this);
        enableSensor(1, true);
    }

    public Surface getNativeSurface() {
        return getHolder().getSurface();
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceCreated(SurfaceHolder surfaceHolder) {
        Log.v("SDL", "surfaceCreated()");
        SDLActivity.onNativeSurfaceCreated();
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
        Log.v("SDL", "surfaceDestroyed()");
        SDLActivity.mNextNativeState = SDLActivity.NativeState.PAUSED;
        SDLActivity.handleNativeState();
        this.mIsSurfaceReady = false;
        SDLActivity.onNativeSurfaceDestroyed();
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceChanged(SurfaceHolder surfaceHolder, int i, int i2, int i3) {
        int i4;
        int i5;
        Log.v("SDL", "surfaceChanged()");
        if (SDLActivity.mSingleton == null) {
            return;
        }
        synchronized (SDLActivity.getContext()) {
            SDLActivity.getContext().notifyAll();
        }
        if (SurfaceSizePolicy.isTransient(SDLActivity.mSingleton.getRequestedOrientation(), i2, i3, SDLActivity.mSingleton.isInMultiWindowMode())) {
            Log.v("SDL", "Skip .. Surface is not ready: transient " + i2 + "x" + i3 + ", keeping " + ((int) this.mWidth) + "x" + ((int) this.mHeight));
            this.mIsSurfaceReady = false;
            return;
        }
        this.mWidth = i2;
        this.mHeight = i3;
        try {
            DisplayMetrics displayMetrics = new DisplayMetrics();
            this.mDisplay.getRealMetrics(displayMetrics);
            i4 = displayMetrics.widthPixels;
            try {
                i5 = displayMetrics.heightPixels;
            } catch (Exception unused) {
                i5 = i3;
            }
        } catch (Exception unused2) {
            i4 = i2;
        }
        Log.v("SDL", "Window size: " + i2 + "x" + i3);
        Log.v("SDL", "Device size: " + i4 + "x" + i5);
        SDLActivity.nativeSetScreenResolution(i2, i3, i4, i5, this.mDisplay.getRefreshRate());
        SDLActivity.onNativeResize();
        SDLActivity.onNativeSurfaceChanged();
        this.mIsSurfaceReady = true;
        SDLActivity.mNextNativeState = SDLActivity.NativeState.RESUMED;
        SDLActivity.handleNativeState();
    }

    @Override // android.view.View.OnKeyListener
    public boolean onKey(View view, int i, KeyEvent keyEvent) {
        InputDevice device;
        int deviceId = keyEvent.getDeviceId();
        int source = keyEvent.getSource();
        if (source == 0 && (device = InputDevice.getDevice(deviceId)) != null) {
            source = device.getSources();
        }
        if (SDLControllerManager.isDeviceSDLJoystick(deviceId)) {
            if (keyEvent.getAction() == 0) {
                if (SDLControllerManager.onNativePadDown(deviceId, i) == 0) {
                    return true;
                }
            } else if (keyEvent.getAction() == 1 && SDLControllerManager.onNativePadUp(deviceId, i) == 0) {
                return true;
            }
        }
        if ((source & 257) != 0) {
            if (keyEvent.getAction() == 0) {
                if (SDLActivity.isTextInputEvent(keyEvent)) {
                    SDLInputConnection.nativeCommitText(String.valueOf((char) keyEvent.getUnicodeChar()), 1);
                }
                SDLActivity.onNativeKeyDown(i);
                return true;
            }
            if (keyEvent.getAction() == 1) {
                SDLActivity.onNativeKeyUp(i);
                return true;
            }
        }
        if ((source & 8194) == 0) {
            return false;
        }
        if (i != 4 && i != 125) {
            return false;
        }
        int action = keyEvent.getAction();
        return action == 0 || action == 1;
    }

    /* JADX WARN: Removed duplicated region for block: B:38:0x0091  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00b1  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00b3  */
    @Override // android.view.View.OnTouchListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean onTouch(android.view.View r12, android.view.MotionEvent r13) {
        /*
            Method dump skipped, instruction units count: 234
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: org.libsdl.app.SDLSurface.onTouch(android.view.View, android.view.MotionEvent):boolean");
    }

    public void enableSensor(int i, boolean z) {
        if (z) {
            SensorManager sensorManager = this.mSensorManager;
            sensorManager.registerListener(this, sensorManager.getDefaultSensor(i), 1, (Handler) null);
        } else {
            SensorManager sensorManager2 = this.mSensorManager;
            sensorManager2.unregisterListener(this, sensorManager2.getDefaultSensor(i));
        }
    }

    @Override // android.hardware.SensorEventListener
    public void onSensorChanged(SensorEvent sensorEvent) {
        float f;
        float f2;
        int i = 1;
        if (sensorEvent.sensor.getType() == 1) {
            int rotation = this.mDisplay.getRotation();
            if (rotation == 1) {
                float[] fArr = sensorEvent.values;
                float f3 = -fArr[1];
                f = fArr[0];
                f2 = f3;
            } else if (rotation == 2) {
                float[] fArr2 = sensorEvent.values;
                f2 = -fArr2[0];
                f = -fArr2[1];
                i = 4;
            } else if (rotation == 3) {
                float[] fArr3 = sensorEvent.values;
                float f4 = fArr3[1];
                f = -fArr3[0];
                f2 = f4;
                i = 2;
            } else {
                float[] fArr4 = sensorEvent.values;
                f2 = fArr4[0];
                f = fArr4[1];
                i = 3;
            }
            if (i != SDLActivity.mCurrentOrientation) {
                SDLActivity.mCurrentOrientation = i;
                SDLActivity.onNativeOrientationChanged(i);
            }
            SDLActivity.onNativeAccel((-f2) / 9.80665f, f / 9.80665f, sensorEvent.values[2] / 9.80665f);
        }
    }

    @Override // android.view.View
    public boolean onCapturedPointerEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 2 || actionMasked == 7) {
            SDLActivity.onNativeMouse(0, actionMasked, motionEvent.getX(0), motionEvent.getY(0), true);
            return true;
        }
        if (actionMasked == 8) {
            SDLActivity.onNativeMouse(0, actionMasked, motionEvent.getAxisValue(10, 0), motionEvent.getAxisValue(9, 0), false);
            return true;
        }
        if (actionMasked != 11 && actionMasked != 12) {
            return false;
        }
        SDLActivity.onNativeMouse(motionEvent.getButtonState(), actionMasked == 11 ? 0 : 1, motionEvent.getX(0), motionEvent.getY(0), true);
        return true;
    }
}
