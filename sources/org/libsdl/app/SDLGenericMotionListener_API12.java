package org.libsdl.app;

import android.view.MotionEvent;
import android.view.View;

/* JADX INFO: compiled from: SDLControllerManager.java */
/* JADX INFO: loaded from: classes3.dex */
class SDLGenericMotionListener_API12 implements View.OnGenericMotionListener {
    public boolean inRelativeMode() {
        return false;
    }

    public void reclaimRelativeMouseModeIfNeeded() {
    }

    public boolean setRelativeMouseEnabled(boolean z) {
        return false;
    }

    public boolean supportsRelativeMouse() {
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0014, code lost:
    
        if (r3 != 16777232) goto L15;
     */
    @Override // android.view.View.OnGenericMotionListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean onGenericMotion(android.view.View r4, android.view.MotionEvent r5) {
        /*
            r3 = this;
            int r3 = r5.getSource()
            r4 = 513(0x201, float:7.19E-43)
            if (r3 == r4) goto L40
            r4 = 1025(0x401, float:1.436E-42)
            if (r3 == r4) goto L40
            r4 = 8194(0x2002, float:1.1482E-41)
            r0 = 0
            if (r3 == r4) goto L17
            r4 = 16777232(0x1000010, float:2.3509932E-38)
            if (r3 == r4) goto L40
            goto L23
        L17:
            int r3 = r5.getActionMasked()
            r4 = 7
            r1 = 1
            if (r3 == r4) goto L34
            r4 = 8
            if (r3 == r4) goto L24
        L23:
            return r0
        L24:
            r4 = 10
            float r4 = r5.getAxisValue(r4, r0)
            r2 = 9
            float r5 = r5.getAxisValue(r2, r0)
            org.libsdl.app.SDLActivity.onNativeMouse(r0, r3, r4, r5, r0)
            return r1
        L34:
            float r4 = r5.getX(r0)
            float r5 = r5.getY(r0)
            org.libsdl.app.SDLActivity.onNativeMouse(r0, r3, r4, r5, r0)
            return r1
        L40:
            boolean r3 = org.libsdl.app.SDLControllerManager.handleJoystickMotionEvent(r5)
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: org.libsdl.app.SDLGenericMotionListener_API12.onGenericMotion(android.view.View, android.view.MotionEvent):boolean");
    }

    public float getEventX(MotionEvent motionEvent) {
        return motionEvent.getX(0);
    }

    public float getEventY(MotionEvent motionEvent) {
        return motionEvent.getY(0);
    }
}
