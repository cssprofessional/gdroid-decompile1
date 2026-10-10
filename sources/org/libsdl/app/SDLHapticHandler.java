package org.libsdl.app;

import android.os.Vibrator;
import android.view.InputDevice;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: compiled from: SDLControllerManager.java */
/* JADX INFO: loaded from: classes3.dex */
class SDLHapticHandler {
    private final ArrayList<SDLHaptic> mHaptics = new ArrayList<>();

    /* JADX INFO: compiled from: SDLControllerManager.java */
    public static class SDLHaptic {
        public int device_id;
        public String name;
        public Vibrator vib;
    }

    public void run(int i, float f, int i2) {
        SDLHaptic haptic = getHaptic(i);
        if (haptic != null) {
            haptic.vib.vibrate(i2);
        }
    }

    public void stop(int i) {
        SDLHaptic haptic = getHaptic(i);
        if (haptic != null) {
            haptic.vib.cancel();
        }
    }

    public void pollHapticDevices() {
        boolean zHasVibrator;
        int[] deviceIds = InputDevice.getDeviceIds();
        int length = deviceIds.length;
        while (true) {
            length--;
            if (length <= -1) {
                break;
            }
            if (getHaptic(deviceIds[length]) == null) {
                InputDevice device = InputDevice.getDevice(deviceIds[length]);
                Vibrator vibrator = device.getVibrator();
                if (vibrator.hasVibrator()) {
                    SDLHaptic sDLHaptic = new SDLHaptic();
                    sDLHaptic.device_id = deviceIds[length];
                    sDLHaptic.name = device.getName();
                    sDLHaptic.vib = vibrator;
                    this.mHaptics.add(sDLHaptic);
                    SDLControllerManager.nativeAddHaptic(sDLHaptic.device_id, sDLHaptic.name);
                }
            }
        }
        Vibrator vibrator2 = (Vibrator) SDL.getContext().getSystemService("vibrator");
        if (vibrator2 != null) {
            zHasVibrator = vibrator2.hasVibrator();
            if (zHasVibrator && getHaptic(999999) == null) {
                SDLHaptic sDLHaptic2 = new SDLHaptic();
                sDLHaptic2.device_id = 999999;
                sDLHaptic2.name = "VIBRATOR_SERVICE";
                sDLHaptic2.vib = vibrator2;
                this.mHaptics.add(sDLHaptic2);
                SDLControllerManager.nativeAddHaptic(sDLHaptic2.device_id, sDLHaptic2.name);
            }
        } else {
            zHasVibrator = false;
        }
        Iterator<SDLHaptic> it = this.mHaptics.iterator();
        ArrayList arrayList = null;
        while (it.hasNext()) {
            int i = it.next().device_id;
            int i2 = 0;
            while (i2 < deviceIds.length && i != deviceIds[i2]) {
                i2++;
            }
            if (i != 999999 || !zHasVibrator) {
                if (i2 == deviceIds.length) {
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                    }
                    arrayList.add(Integer.valueOf(i));
                }
            }
        }
        if (arrayList != null) {
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                int iIntValue = ((Integer) it2.next()).intValue();
                SDLControllerManager.nativeRemoveHaptic(iIntValue);
                int i3 = 0;
                while (true) {
                    if (i3 >= this.mHaptics.size()) {
                        break;
                    }
                    if (this.mHaptics.get(i3).device_id == iIntValue) {
                        this.mHaptics.remove(i3);
                        break;
                    }
                    i3++;
                }
            }
        }
    }

    public SDLHaptic getHaptic(int i) {
        for (SDLHaptic sDLHaptic : this.mHaptics) {
            if (sDLHaptic.device_id == i) {
                return sDLHaptic;
            }
        }
        return null;
    }
}
