package org.libsdl.app;

import android.os.VibrationEffect;
import android.util.Log;
import org.libsdl.app.SDLHapticHandler;

/* JADX INFO: compiled from: SDLControllerManager.java */
/* JADX INFO: loaded from: classes3.dex */
class SDLHapticHandler_API26 extends SDLHapticHandler {
    @Override // org.libsdl.app.SDLHapticHandler
    public void run(int i, float f, int i2) {
        SDLHapticHandler.SDLHaptic haptic = getHaptic(i);
        if (haptic != null) {
            Log.d("SDL", "Rtest: Vibe with intensity " + f + " for " + i2);
            if (f == 0.0f) {
                stop(i);
                return;
            }
            int iRound = Math.round(f * 255.0f);
            if (iRound > 255) {
                iRound = 255;
            }
            if (iRound < 1) {
                stop(i);
                return;
            }
            try {
                haptic.vib.vibrate(VibrationEffect.createOneShot(i2, iRound));
            } catch (Exception unused) {
                haptic.vib.vibrate(i2);
            }
        }
    }
}
