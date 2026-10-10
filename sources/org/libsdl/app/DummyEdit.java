package org.libsdl.app;

import android.content.Context;
import android.view.KeyEvent;
import android.view.View;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;

/* JADX INFO: compiled from: SDLActivity.java */
/* JADX INFO: loaded from: classes3.dex */
class DummyEdit extends View implements View.OnKeyListener {
    InputConnection ic;

    @Override // android.view.View
    public boolean onCheckIsTextEditor() {
        return true;
    }

    public DummyEdit(Context context) {
        super(context);
        setFocusableInTouchMode(true);
        setFocusable(true);
        setOnKeyListener(this);
    }

    @Override // android.view.View.OnKeyListener
    public boolean onKey(View view, int i, KeyEvent keyEvent) {
        if (keyEvent.getAction() == 0) {
            if (SDLActivity.isTextInputEvent(keyEvent)) {
                this.ic.commitText(String.valueOf((char) keyEvent.getUnicodeChar()), 1);
                return true;
            }
            SDLActivity.onNativeKeyDown(i);
            return true;
        }
        if (keyEvent.getAction() != 1) {
            return false;
        }
        SDLActivity.onNativeKeyUp(i);
        return true;
    }

    @Override // android.view.View
    public boolean onKeyPreIme(int i, KeyEvent keyEvent) {
        View view;
        if (keyEvent.getAction() == 1 && i == 4 && (view = SDLActivity.mTextEdit) != null && view.getVisibility() == 0) {
            SDLActivity.onNativeKeyboardFocusLost();
        }
        return super.onKeyPreIme(i, keyEvent);
    }

    @Override // android.view.View
    public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        SDLInputConnection sDLInputConnection = new SDLInputConnection(this, true);
        this.ic = sDLInputConnection;
        editorInfo.inputType = 145;
        editorInfo.imeOptions = 301989888;
        return sDLInputConnection;
    }
}
