package com.gmodvr.flat;

import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.RadialGradient;
import android.graphics.Shader;
import android.graphics.SweepGradient;
import android.graphics.drawable.GradientDrawable;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.LinearLayout;
import android.widget.SeekBar;
import android.widget.TextView;
import in.dragonbra.javasteam.generated.MsgClientLogon;
import java.util.Locale;
import java.util.function.IntConsumer;

/* JADX INFO: loaded from: classes.dex */
final class ControlColorPicker extends LinearLayout {
    private final SeekBar brightness;
    private final TextView brightnessLabel;
    private final IntConsumer changed;
    private final TextView hex;
    private final float[] hsv;
    private final Skin skin;
    private final View swatch;
    private final Wheel wheel;

    public ControlColorPicker(Skin skin, IntConsumer intConsumer) {
        super(skin.activity);
        this.hsv = new float[]{0.0f, 0.0f, 1.0f};
        this.skin = skin;
        this.changed = intConsumer;
        setOrientation(1);
        addView(skin.text("Button color", 12.0f, -1643795));
        addView(skin.text("Hue around · white at center", 11.0f, -7497309), skin.below(4.0f));
        Wheel wheel = new Wheel();
        this.wheel = wheel;
        addView(wheel, new LinearLayout.LayoutParams(-1, skin.dp(144.0f)));
        LinearLayout linearLayout = new LinearLayout(getContext());
        linearLayout.setGravity(16);
        View view = new View(getContext());
        this.swatch = view;
        view.setImportantForAccessibility(2);
        linearLayout.addView(view, new LinearLayout.LayoutParams(skin.dp(24.0f), skin.dp(24.0f)));
        TextView textViewText = skin.text("", 12.0f, -1643795);
        this.hex = textViewText;
        textViewText.setTypeface(Skin.MONO);
        textViewText.setPadding(skin.dp(8.0f), 0, 0, 0);
        linearLayout.addView(textViewText, new LinearLayout.LayoutParams(0, -2, 1.0f));
        linearLayout.addView(skin.link("White", new Runnable() { // from class: com.gmodvr.flat.ControlColorPicker$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$new$0();
            }
        }));
        addView(linearLayout);
        TextView textViewText2 = skin.text("", 12.0f, -7497309);
        this.brightnessLabel = textViewText2;
        addView(textViewText2, skin.below(4.0f));
        SeekBar seekBar = new SeekBar(getContext());
        this.brightness = seekBar;
        seekBar.setMax(100);
        seekBar.setContentDescription("Button color brightness");
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(skin.accent);
        gradientDrawable.setSize(skin.dp(8.0f), skin.dp(20.0f));
        seekBar.setThumb(gradientDrawable);
        seekBar.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() { // from class: com.gmodvr.flat.ControlColorPicker.1
            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStartTrackingTouch(SeekBar seekBar2) {
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStopTrackingTouch(SeekBar seekBar2) {
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onProgressChanged(SeekBar seekBar2, int i, boolean z) {
                if (z) {
                    ControlColorPicker.this.hsv[2] = i / 100.0f;
                    ControlColorPicker.this.publish();
                }
            }
        });
        addView(seekBar, new LinearLayout.LayoutParams(-1, skin.dp(32.0f)));
        update();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0() {
        float[] fArr = this.hsv;
        fArr[1] = 0.0f;
        fArr[2] = 1.0f;
        publish();
    }

    public int color() {
        return Color.HSVToColor(this.hsv);
    }

    public void setColor(int i) {
        int i2 = i | (-16777216);
        if (color() != i2) {
            Color.colorToHSV(i2, this.hsv);
        }
        update();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void publish() {
        update();
        this.changed.accept(color());
    }

    private void update() {
        String str = String.format(Locale.ROOT, "#%06X", Integer.valueOf(color() & 16777215));
        this.swatch.setBackgroundColor(color());
        this.hex.setText(str);
        int iRound = Math.round(this.hsv[2] * 100.0f);
        this.brightnessLabel.setText("Brightness: " + iRound + "%");
        this.brightness.setProgress(iRound);
        this.wheel.setContentDescription("Button color wheel, " + str + ". Left and right change hue; up and down change saturation.");
        this.wheel.invalidate();
    }

    public final class Wheel extends View {
        private float cx;
        private float cy;
        private int finger;
        private Shader hue;
        private final Paint paint;
        private float radius;
        private Shader saturation;

        public Wheel() {
            super(ControlColorPicker.this.skin.activity);
            this.paint = new Paint(1);
            this.finger = -1;
            setFocusable(true);
            setClickable(true);
        }

        @Override // android.view.View
        public void onSizeChanged(int i, int i2, int i3, int i4) {
            this.cx = i / 2.0f;
            this.cy = i2 / 2.0f;
            this.radius = Math.max(1.0f, (Math.min(i, i2) / 2.0f) - ControlColorPicker.this.skin.dp(9.0f));
            this.hue = new SweepGradient(this.cx, this.cy, new int[]{MsgClientLogon.ProtocolVerMajorMask, -256, -16711936, -16711681, -16776961, -65281, MsgClientLogon.ProtocolVerMajorMask}, (float[]) null);
            this.saturation = new RadialGradient(this.cx, this.cy, this.radius, -1, 16777215, Shader.TileMode.CLAMP);
        }

        @Override // android.view.View
        public void onDraw(Canvas canvas) {
            super.onDraw(canvas);
            this.paint.setStyle(Paint.Style.FILL);
            this.paint.setColor(-1);
            this.paint.setShader(this.hue);
            canvas.drawCircle(this.cx, this.cy, this.radius, this.paint);
            this.paint.setShader(this.saturation);
            canvas.drawCircle(this.cx, this.cy, this.radius, this.paint);
            this.paint.setShader(null);
            this.paint.setColor(Color.argb(Math.round((1.0f - ControlColorPicker.this.hsv[2]) * 255.0f), 0, 0, 0));
            canvas.drawCircle(this.cx, this.cy, this.radius, this.paint);
            double radians = (float) Math.toRadians(ControlColorPicker.this.hsv[0]);
            float fCos = this.cx + (((float) Math.cos(radians)) * ControlColorPicker.this.hsv[1] * this.radius);
            float fSin = this.cy + (((float) Math.sin(radians)) * ControlColorPicker.this.hsv[1] * this.radius);
            this.paint.setStyle(Paint.Style.STROKE);
            this.paint.setStrokeWidth(ControlColorPicker.this.skin.dp(3.0f));
            this.paint.setColor(-16777216);
            canvas.drawCircle(fCos, fSin, ControlColorPicker.this.skin.dp(6.0f), this.paint);
            this.paint.setStrokeWidth(ControlColorPicker.this.skin.dp(1.5f));
            this.paint.setColor(-1);
            canvas.drawCircle(fCos, fSin, ControlColorPicker.this.skin.dp(6.0f), this.paint);
            if (isFocused()) {
                this.paint.setColor(ControlColorPicker.this.skin.accent);
                canvas.drawCircle(this.cx, this.cy, this.radius + ControlColorPicker.this.skin.dp(8.0f), this.paint);
            }
        }

        private void pick(float f, float f2) {
            float f3 = f - this.cx;
            double d = f2 - this.cy;
            double d2 = f3;
            ControlColorPicker.this.hsv[0] = (((float) Math.toDegrees(Math.atan2(d, d2))) + 360.0f) % 360.0f;
            ControlColorPicker.this.hsv[1] = Math.min(1.0f, ((float) Math.hypot(d2, d)) / this.radius);
            ControlColorPicker.this.publish();
        }

        private void release() {
            this.finger = -1;
            getParent().requestDisallowInterceptTouchEvent(false);
        }

        @Override // android.view.View
        public boolean onTouchEvent(MotionEvent motionEvent) {
            if (!isEnabled()) {
                return false;
            }
            int actionMasked = motionEvent.getActionMasked();
            if (actionMasked == 0) {
                if (Math.hypot(motionEvent.getX() - this.cx, motionEvent.getY() - this.cy) > this.radius) {
                    return false;
                }
                this.finger = motionEvent.getPointerId(0);
                getParent().requestDisallowInterceptTouchEvent(true);
                pick(motionEvent.getX(), motionEvent.getY());
                return true;
            }
            int i = this.finger;
            if (i == -1) {
                return false;
            }
            int iFindPointerIndex = motionEvent.findPointerIndex(i);
            if (iFindPointerIndex >= 0 && (actionMasked == 2 || actionMasked == 1 || (actionMasked == 6 && motionEvent.getActionIndex() == iFindPointerIndex))) {
                pick(motionEvent.getX(iFindPointerIndex), motionEvent.getY(iFindPointerIndex));
            }
            if (actionMasked == 1 || actionMasked == 3 || (actionMasked == 6 && motionEvent.getPointerId(motionEvent.getActionIndex()) == this.finger)) {
                release();
                if (actionMasked != 3) {
                    performClick();
                }
            }
            return true;
        }

        @Override // android.view.View, android.view.KeyEvent.Callback
        public boolean onKeyDown(int i, KeyEvent keyEvent) {
            if (!isEnabled()) {
                return super.onKeyDown(i, keyEvent);
            }
            if (i == 21) {
                ControlColorPicker.this.hsv[0] = (ControlColorPicker.this.hsv[0] + 355.0f) % 360.0f;
            } else if (i == 22) {
                ControlColorPicker.this.hsv[0] = (ControlColorPicker.this.hsv[0] + 5.0f) % 360.0f;
            } else if (i == 19) {
                ControlColorPicker.this.hsv[1] = Math.min(1.0f, ControlColorPicker.this.hsv[1] + 0.05f);
            } else if (i == 20) {
                ControlColorPicker.this.hsv[1] = Math.max(0.0f, ControlColorPicker.this.hsv[1] - 0.05f);
            } else {
                return super.onKeyDown(i, keyEvent);
            }
            ControlColorPicker.this.publish();
            return true;
        }

        @Override // android.view.View
        public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
            super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
            if (isEnabled()) {
                accessibilityNodeInfo.addAction(AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_FORWARD);
                accessibilityNodeInfo.addAction(AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_BACKWARD);
            }
        }

        @Override // android.view.View
        public boolean performAccessibilityAction(int i, Bundle bundle) {
            if (isEnabled() && (i == 4096 || i == 8192)) {
                ControlColorPicker.this.hsv[0] = (ControlColorPicker.this.hsv[0] + (i == 4096 ? 5 : 355)) % 360.0f;
                ControlColorPicker.this.publish();
                return true;
            }
            return super.performAccessibilityAction(i, bundle);
        }

        @Override // android.view.View
        public boolean performClick() {
            super.performClick();
            return true;
        }
    }
}
