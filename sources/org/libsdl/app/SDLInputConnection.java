package org.libsdl.app;

import android.view.KeyEvent;
import android.view.View;
import android.view.inputmethod.BaseInputConnection;

/* JADX INFO: compiled from: SDLActivity.java */
/* JADX INFO: loaded from: classes3.dex */
class SDLInputConnection extends BaseInputConnection {
    public static native void nativeCommitText(String str, int i);

    public native void nativeGenerateScancodeForUnichar(char c);

    public native void nativeSetComposingText(String str, int i);

    public SDLInputConnection(View view, boolean z) {
        super(view, z);
    }

    @Override // android.view.inputmethod.BaseInputConnection, android.view.inputmethod.InputConnection
    public boolean sendKeyEvent(KeyEvent keyEvent) {
        if (keyEvent.getKeyCode() == 66 && SDLActivity.onNativeSoftReturnKey()) {
            return true;
        }
        return super.sendKeyEvent(keyEvent);
    }

    @Override // android.view.inputmethod.BaseInputConnection, android.view.inputmethod.InputConnection
    public boolean commitText(CharSequence charSequence, int i) {
        for (int i2 = 0; i2 < charSequence.length(); i2++) {
            char cCharAt = charSequence.charAt(i2);
            if (cCharAt == '\n' && SDLActivity.onNativeSoftReturnKey()) {
                return true;
            }
            nativeGenerateScancodeForUnichar(cCharAt);
        }
        nativeCommitText(charSequence.toString(), i);
        return super.commitText(charSequence, i);
    }

    @Override // android.view.inputmethod.BaseInputConnection, android.view.inputmethod.InputConnection
    public boolean setComposingText(CharSequence charSequence, int i) {
        nativeSetComposingText(charSequence.toString(), i);
        return super.setComposingText(charSequence, i);
    }

    @Override // android.view.inputmethod.BaseInputConnection, android.view.inputmethod.InputConnection
    public boolean deleteSurroundingText(int i, int i2) {
        if (i <= 0 || i2 != 0) {
            return super.deleteSurroundingText(i, i2);
        }
        boolean z = true;
        while (true) {
            int i3 = i - 1;
            if (i <= 0) {
                return z;
            }
            z = z && (sendKeyEvent(new KeyEvent(0, 67)) && sendKeyEvent(new KeyEvent(1, 67)));
            i = i3;
        }
    }
}
