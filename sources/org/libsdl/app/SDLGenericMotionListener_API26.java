package org.libsdl.app;

import android.view.MotionEvent;

/* JADX INFO: compiled from: SDLControllerManager.java */
/* JADX INFO: loaded from: classes3.dex */
class SDLGenericMotionListener_API26 extends SDLGenericMotionListener_API24 {
    private boolean mRelativeModeEnabled;

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0025, code lost:
    
        if (r6 != 16777232) goto L26;
     */
    @Override // org.libsdl.app.SDLGenericMotionListener_API24, org.libsdl.app.SDLGenericMotionListener_API12, android.view.View.OnGenericMotionListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean onGenericMotion(android.view.View r7, android.view.MotionEvent r8) {
        /*
            r6 = this;
            int r6 = r8.getSource()
            r7 = 513(0x201, float:7.19E-43)
            if (r6 == r7) goto L6a
            r7 = 1025(0x401, float:1.436E-42)
            if (r6 == r7) goto L6a
            r7 = 8194(0x2002, float:1.1482E-41)
            r0 = 9
            r1 = 10
            r2 = 8
            r3 = 7
            r4 = 1
            r5 = 0
            if (r6 == r7) goto L49
            r7 = 12290(0x3002, float:1.7222E-41)
            if (r6 == r7) goto L49
            r7 = 131076(0x20004, float:1.83677E-40)
            if (r6 == r7) goto L28
            r7 = 16777232(0x1000010, float:2.3509932E-38)
            if (r6 == r7) goto L6a
            goto L51
        L28:
            int r6 = r8.getActionMasked()
            if (r6 == r3) goto L3d
            if (r6 == r2) goto L31
            goto L51
        L31:
            float r7 = r8.getAxisValue(r1, r5)
            float r8 = r8.getAxisValue(r0, r5)
            org.libsdl.app.SDLActivity.onNativeMouse(r5, r6, r7, r8, r5)
            return r4
        L3d:
            float r7 = r8.getX(r5)
            float r8 = r8.getY(r5)
            org.libsdl.app.SDLActivity.onNativeMouse(r5, r6, r7, r8, r4)
            return r4
        L49:
            int r6 = r8.getActionMasked()
            if (r6 == r3) goto L5e
            if (r6 == r2) goto L52
        L51:
            return r5
        L52:
            float r7 = r8.getAxisValue(r1, r5)
            float r8 = r8.getAxisValue(r0, r5)
            org.libsdl.app.SDLActivity.onNativeMouse(r5, r6, r7, r8, r5)
            return r4
        L5e:
            float r7 = r8.getX(r5)
            float r8 = r8.getY(r5)
            org.libsdl.app.SDLActivity.onNativeMouse(r5, r6, r7, r8, r5)
            return r4
        L6a:
            boolean r6 = org.libsdl.app.SDLControllerManager.handleJoystickMotionEvent(r8)
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: org.libsdl.app.SDLGenericMotionListener_API26.onGenericMotion(android.view.View, android.view.MotionEvent):boolean");
    }

    @Override // org.libsdl.app.SDLGenericMotionListener_API24, org.libsdl.app.SDLGenericMotionListener_API12
    public boolean supportsRelativeMouse() {
        SDLActivity.isDeXMode();
        return true;
    }

    @Override // org.libsdl.app.SDLGenericMotionListener_API24, org.libsdl.app.SDLGenericMotionListener_API12
    public boolean inRelativeMode() {
        return this.mRelativeModeEnabled;
    }

    @Override // org.libsdl.app.SDLGenericMotionListener_API24, org.libsdl.app.SDLGenericMotionListener_API12
    public boolean setRelativeMouseEnabled(boolean z) {
        SDLActivity.isDeXMode();
        if (z) {
            SDLActivity.getContentView().requestPointerCapture();
        } else {
            SDLActivity.getContentView().releasePointerCapture();
        }
        this.mRelativeModeEnabled = z;
        return true;
    }

    @Override // org.libsdl.app.SDLGenericMotionListener_API12
    public void reclaimRelativeMouseModeIfNeeded() {
        if (!this.mRelativeModeEnabled || SDLActivity.isDeXMode()) {
            return;
        }
        SDLActivity.getContentView().requestPointerCapture();
    }

    @Override // org.libsdl.app.SDLGenericMotionListener_API24, org.libsdl.app.SDLGenericMotionListener_API12
    public float getEventX(MotionEvent motionEvent) {
        return motionEvent.getX(0);
    }

    @Override // org.libsdl.app.SDLGenericMotionListener_API24, org.libsdl.app.SDLGenericMotionListener_API12
    public float getEventY(MotionEvent motionEvent) {
        return motionEvent.getY(0);
    }
}
