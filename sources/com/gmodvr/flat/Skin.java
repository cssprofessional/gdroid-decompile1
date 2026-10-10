package com.gmodvr.flat;

import android.app.Activity;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.Insets;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.graphics.drawable.ClipDrawable;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.StateListDrawable;
import android.graphics.drawable.shapes.PathShape;
import android.os.Build;
import android.text.TextUtils;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowInsets;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.ScrollView;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import android.widget.ToggleButton;
import in.dragonbra.javasteam.protobufs.steamclient.Enums;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
final class Skin {
    static final int BG = -16052720;
    static final int DIM = -10787217;
    static final int EDGE = -13089972;
    static final int ERROR = -1548209;
    static final int LINE = -14472399;
    static final int MUTED = -7497309;
    static final int OK = -7943825;
    static final int RAISED = -14999001;
    static final int SURFACE = -15591653;
    static final int TEXT = -1643795;
    final int accent;
    final Activity activity;
    static final Typeface HEAD = Typeface.create("sans-serif-condensed", 1);
    static final Typeface MONO = Typeface.MONOSPACE;
    private static final int[] PRESSED = {android.R.attr.state_pressed};
    private static final int[] FOCUSED = {android.R.attr.state_focused};
    private static final int[] DISABLED = {-16842910};
    private static final int[] CHECKED = {android.R.attr.state_checked};
    private static final int[] ANY = new int[0];

    private Skin(Activity activity, int i) {
        this.activity = activity;
        this.accent = i;
    }

    public static Skin of(Activity activity, String str) {
        List<LauncherFranchise> listDefaultFranchises = LauncherFranchise.defaultFranchises();
        LauncherFranchise launcherFranchise = listDefaultFranchises.get(0);
        for (LauncherFranchise launcherFranchise2 : listDefaultFranchises) {
            if (launcherFranchise2.id.equals(str)) {
                launcherFranchise = launcherFranchise2;
            }
        }
        activity.getTheme().applyStyle(LauncherFranchise.HALF_LIFE_ID.equals(launcherFranchise.id) ? R.style.Accent_HalfLife : R.style.Accent_Portal, true);
        return new Skin(activity, launcherFranchise.accentColor);
    }

    public int dp(float f) {
        return Math.round(TypedValue.applyDimension(1, f, this.activity.getResources().getDisplayMetrics()));
    }

    public LinearLayout.LayoutParams below(float f) {
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
        layoutParams.topMargin = dp(f);
        return layoutParams;
    }

    public static void fitSystemBars(View view) {
        view.setOnApplyWindowInsetsListener(new View.OnApplyWindowInsetsListener() { // from class: com.gmodvr.flat.Skin$$ExternalSyntheticLambda6
            @Override // android.view.View.OnApplyWindowInsetsListener
            public final WindowInsets onApplyWindowInsets(View view2, WindowInsets windowInsets) {
                return Skin.lambda$fitSystemBars$0(view2, windowInsets);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ WindowInsets lambda$fitSystemBars$0(View view, WindowInsets windowInsets) {
        if (Build.VERSION.SDK_INT >= 30) {
            Insets insets = windowInsets.getInsets(WindowInsets.Type.systemBars() | WindowInsets.Type.displayCutout());
            view.setPadding(insets.left, insets.top, insets.right, Math.max(insets.bottom, windowInsets.getInsets(WindowInsets.Type.ime()).bottom));
        } else {
            view.setPadding(windowInsets.getSystemWindowInsetLeft(), windowInsets.getSystemWindowInsetTop(), windowInsets.getSystemWindowInsetRight(), windowInsets.getSystemWindowInsetBottom());
        }
        return windowInsets;
    }

    public static ScrollView scroller(Context context) {
        ScrollView scrollView = new ScrollView(context);
        scrollView.setDefaultFocusHighlightEnabled(false);
        return scrollView;
    }

    public LinearLayout screen(String str, String str2) {
        ScrollView scrollViewScroller = scroller(this.activity);
        scrollViewScroller.setFillViewport(true);
        scrollViewScroller.setBackgroundColor(BG);
        fitSystemBars(scrollViewScroller);
        Column column = new Column(this.activity, dp(680.0f));
        column.setPadding(dp(20.0f), dp(16.0f), dp(20.0f), dp(32.0f));
        scrollViewScroller.addView(column, new FrameLayout.LayoutParams(-1, -2, 1));
        this.activity.setContentView(scrollViewScroller);
        LinearLayout linearLayout = new LinearLayout(this.activity);
        linearLayout.setGravity(16);
        Button button = button("←", 18.0f, colors(TEXT, DIM));
        button.setPadding(0, 0, 0, 0);
        button.setContentDescription("Back");
        button.setBackground(outline());
        button.setOnClickListener(new View.OnClickListener() { // from class: com.gmodvr.flat.Skin$$ExternalSyntheticLambda8
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$screen$1(view);
            }
        });
        linearLayout.addView(button, new LinearLayout.LayoutParams(dp(40.0f), dp(40.0f)));
        TextView textViewHeading = heading(str, 24.0f);
        textViewHeading.setPadding(dp(14.0f), 0, 0, 0);
        linearLayout.addView(textViewHeading);
        column.addView(linearLayout);
        column.addView(text(str2, 13.5f, MUTED), below(12.0f));
        column.addView(rule(), hairline(16.0f));
        return column;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$screen$1(View view) {
        this.activity.finish();
    }

    public TextView text(CharSequence charSequence, float f, int i) {
        TextView textView = new TextView(this.activity);
        textView.setText(charSequence);
        textView.setTextSize(f);
        textView.setTextColor(i);
        textView.setLineSpacing(dp(2.0f), 1.0f);
        return textView;
    }

    public TextView heading(CharSequence charSequence, float f) {
        TextView textViewText = text(charSequence, f, TEXT);
        textViewText.setTypeface(HEAD);
        textViewText.setAllCaps(true);
        textViewText.setLetterSpacing(0.02f);
        return textViewText;
    }

    public TextView label(CharSequence charSequence, int i) {
        TextView textViewText = text(charSequence, 10.5f, i);
        textViewText.setTypeface(MONO);
        textViewText.setAllCaps(true);
        textViewText.setLetterSpacing(0.12f);
        return textViewText;
    }

    public View rule() {
        View view = new View(this.activity);
        view.setBackgroundColor(LINE);
        return view;
    }

    public LinearLayout.LayoutParams hairline(float f) {
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, dp(1.0f));
        layoutParams.topMargin = dp(f);
        return layoutParams;
    }

    public View section(String str) {
        LinearLayout linearLayout = new LinearLayout(this.activity);
        linearLayout.setGravity(16);
        linearLayout.setPadding(0, 0, 0, dp(4.0f));
        View view = new View(this.activity);
        view.setBackgroundColor(this.accent);
        linearLayout.addView(view, new LinearLayout.LayoutParams(dp(6.0f), dp(6.0f)));
        TextView textViewLabel = label(str, MUTED);
        textViewLabel.setPadding(dp(8.0f), 0, dp(10.0f), 0);
        linearLayout.addView(textViewLabel);
        linearLayout.addView(rule(), new LinearLayout.LayoutParams(0, dp(1.0f), 1.0f));
        return linearLayout;
    }

    public LinearLayout panel(int i) {
        LinearLayout linearLayout = new LinearLayout(this.activity);
        linearLayout.setOrientation(1);
        linearLayout.setBackground(edge(SURFACE, i, 3, dp(2.0f)));
        linearLayout.setPadding(dp(14.0f), dp(12.0f), dp(14.0f), dp(12.0f));
        return linearLayout;
    }

    public static void mark(View view, int i) {
        ((ColorDrawable) ((LayerDrawable) view.getBackground()).getDrawable(1)).setColor(i);
    }

    public LinearLayout row(String str, String str2, View view, final Runnable runnable) {
        ColorDrawable colorDrawable;
        Drawable drawableStates;
        LinearLayout linearLayout = new LinearLayout(this.activity);
        linearLayout.setGravity(16);
        linearLayout.setMinimumHeight(dp(50.0f));
        linearLayout.setPadding(dp(14.0f), dp(10.0f), dp(12.0f), dp(10.0f));
        if (runnable == null) {
            drawableStates = colorDrawable;
            colorDrawable = new ColorDrawable(0);
        } else {
            ColorDrawable colorDrawable2 = new ColorDrawable(0);
            drawableStates = states(colorDrawable, new ColorDrawable(RAISED), edge(SURFACE, this.accent, 3, dp(2.0f)), null);
            colorDrawable = colorDrawable2;
        }
        LayerDrawable layerDrawable = new LayerDrawable(new Drawable[]{drawableStates, new ColorDrawable(LINE)});
        layerDrawable.setLayerGravity(1, 87);
        layerDrawable.setLayerHeight(1, dp(1.0f));
        linearLayout.setBackground(layerDrawable);
        LinearLayout linearLayout2 = new LinearLayout(this.activity);
        linearLayout2.setOrientation(1);
        TextView textViewText = text(str, 15.0f, TEXT);
        textViewText.setEllipsize(TextUtils.TruncateAt.MIDDLE);
        textViewText.setSingleLine(true);
        linearLayout2.addView(textViewText);
        if (str2 != null) {
            TextView textViewText2 = text(str2, 12.5f, MUTED);
            textViewText2.setPadding(0, dp(2.0f), 0, 0);
            linearLayout2.addView(textViewText2);
        }
        linearLayout.addView(linearLayout2, new LinearLayout.LayoutParams(0, -2, 1.0f));
        if (view != null) {
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
            layoutParams.leftMargin = dp(12.0f);
            linearLayout.addView(view, layoutParams);
        }
        if (runnable != null) {
            linearLayout.setFocusable(true);
            linearLayout.setClickable(true);
            linearLayout.setOnClickListener(new View.OnClickListener() { // from class: com.gmodvr.flat.Skin$$ExternalSyntheticLambda4
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    runnable.run();
                }
            });
            TextView textViewText3 = text("›", 20.0f, MUTED);
            textViewText3.setPadding(dp(12.0f), 0, 0, dp(2.0f));
            linearLayout.addView(textViewText3);
        }
        return linearLayout;
    }

    public TextView tag(String str, int i) {
        TextView textViewLabel = label(str, i);
        textViewLabel.setMaxLines(1);
        textViewLabel.setEllipsize(TextUtils.TruncateAt.END);
        textViewLabel.setMaxWidth(dp(180.0f));
        return textViewLabel;
    }

    public Button primary(String str, final Runnable runnable) {
        Button button = button(str, 15.0f, colors(BG, DIM));
        float fDp = dp(12.0f);
        button.setBackground(states(new Cut(this.accent, 0, 0.0f, fDp), new Cut(mix(this.accent, BG, 0.25f), 0, 0.0f, fDp), new Cut(this.accent, TEXT, dp(2.0f), fDp), new Cut(RAISED, 0, 0.0f, fDp)));
        button.setMinHeight(dp(52.0f));
        button.setOnClickListener(new View.OnClickListener() { // from class: com.gmodvr.flat.Skin$$ExternalSyntheticLambda9
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                runnable.run();
            }
        });
        return button;
    }

    public Button secondary(String str, final Runnable runnable) {
        Button button = button(str, 13.0f, colors(TEXT, DIM));
        button.setBackground(outline());
        button.setMinHeight(dp(44.0f));
        button.setOnClickListener(new View.OnClickListener() { // from class: com.gmodvr.flat.Skin$$ExternalSyntheticLambda11
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                runnable.run();
            }
        });
        return button;
    }

    public TextView link(String str, final Runnable runnable) {
        TextView textViewLabel = label(str, 0);
        textViewLabel.setTextColor(colors(MUTED, DIM));
        textViewLabel.setPadding(dp(8.0f), dp(10.0f), dp(8.0f), dp(10.0f));
        textViewLabel.setBackground(states(new ColorDrawable(0), new ColorDrawable(RAISED), new ColorDrawable(SURFACE), null));
        textViewLabel.setFocusable(true);
        textViewLabel.setClickable(true);
        textViewLabel.setOnClickListener(new View.OnClickListener() { // from class: com.gmodvr.flat.Skin$$ExternalSyntheticLambda7
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                runnable.run();
            }
        });
        return textViewLabel;
    }

    public TextView tab(String str, boolean z, final Runnable runnable) {
        TextView textViewHeading = heading(str, 15.0f);
        textViewHeading.setTextColor(z ? TEXT : DIM);
        textViewHeading.setGravity(17);
        textViewHeading.setPadding(dp(14.0f), 0, dp(14.0f), 0);
        textViewHeading.setBackground(states(z ? edge(0, this.accent, 80, dp(2.0f)) : new ColorDrawable(0), edge(RAISED, z ? this.accent : 0, 80, dp(2.0f)), edge(SURFACE, z ? this.accent : EDGE, 80, dp(2.0f)), null));
        textViewHeading.setFocusable(true);
        textViewHeading.setClickable(true);
        textViewHeading.setOnClickListener(new View.OnClickListener() { // from class: com.gmodvr.flat.Skin$$ExternalSyntheticLambda5
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                runnable.run();
            }
        });
        return textViewHeading;
    }

    public TextView segment(String str, boolean z, final Runnable runnable) {
        StateListDrawable stateListDrawableStates;
        TextView textViewHeading = heading(str, 12.0f);
        textViewHeading.setTextColor(z ? BG : MUTED);
        textViewHeading.setGravity(17);
        textViewHeading.setMaxLines(1);
        textViewHeading.setPadding(dp(6.0f), 0, dp(6.0f), 0);
        textViewHeading.setAutoSizeTextTypeUniformWithConfiguration(9, 12, 1, 2);
        if (z) {
            stateListDrawableStates = states(new Cut(TEXT, 0, 0.0f, 0.0f), new Cut(TEXT, 0, 0.0f, 0.0f), new Cut(TEXT, this.accent, dp(2.0f), 0.0f), null);
        } else {
            stateListDrawableStates = states(new Cut(0, EDGE, dp(1.0f), 0.0f), new Cut(RAISED, EDGE, dp(1.0f), 0.0f), new Cut(SURFACE, this.accent, dp(1.0f), 0.0f), null);
        }
        textViewHeading.setBackground(stateListDrawableStates);
        textViewHeading.setFocusable(true);
        textViewHeading.setClickable(true);
        textViewHeading.setOnClickListener(new View.OnClickListener() { // from class: com.gmodvr.flat.Skin$$ExternalSyntheticLambda10
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                runnable.run();
            }
        });
        return textViewHeading;
    }

    public ToggleButton toggle(boolean z) {
        ToggleButton toggleButton = new ToggleButton(this.activity);
        toggleButton.setTextOn("ON");
        toggleButton.setTextOff("OFF");
        toggleButton.setChecked(z);
        toggleButton.setTypeface(MONO, 1);
        toggleButton.setTextSize(11.0f);
        toggleButton.setLetterSpacing(0.1f);
        toggleButton.setStateListAnimator(null);
        toggleButton.setMinWidth(dp(52.0f));
        toggleButton.setMinimumWidth(dp(52.0f));
        toggleButton.setMinHeight(dp(30.0f));
        toggleButton.setMinimumHeight(dp(30.0f));
        toggleButton.setPadding(0, 0, 0, 0);
        int[] iArr = DISABLED;
        int[] iArr2 = CHECKED;
        int[] iArr3 = ANY;
        toggleButton.setTextColor(new ColorStateList(new int[][]{iArr, iArr2, iArr3}, new int[]{DIM, BG, MUTED}));
        StateListDrawable stateListDrawable = new StateListDrawable();
        stateListDrawable.addState(iArr, new Cut(0, LINE, dp(1.0f), 0.0f));
        stateListDrawable.addState(new int[]{android.R.attr.state_checked, android.R.attr.state_focused}, new Cut(this.accent, TEXT, dp(2.0f), 0.0f));
        stateListDrawable.addState(iArr2, new Cut(this.accent, 0, 0.0f, 0.0f));
        stateListDrawable.addState(PRESSED, new Cut(RAISED, EDGE, dp(1.0f), 0.0f));
        stateListDrawable.addState(FOCUSED, new Cut(SURFACE, this.accent, dp(1.0f), 0.0f));
        stateListDrawable.addState(iArr3, new Cut(0, EDGE, dp(1.0f), 0.0f));
        toggleButton.setBackground(stateListDrawable);
        return toggleButton;
    }

    public CheckBox check(String str) {
        CheckBox checkBox = new CheckBox(this.activity);
        checkBox.setText(str);
        checkBox.setTextSize(14.0f);
        checkBox.setTextColor(colors(TEXT, DIM));
        checkBox.setButtonTintList(new ColorStateList(new int[][]{DISABLED, CHECKED, ANY}, new int[]{DIM, this.accent, MUTED}));
        return checkBox;
    }

    public EditText input(String str, int i) {
        return input(new EditText(this.activity), str, i);
    }

    public <T extends EditText> T input(T t, String str, int i) {
        t.setSingleLine(true);
        t.setInputType(i);
        t.setTypeface(MONO);
        t.setHint(str);
        t.setTextSize(14.0f);
        t.setTextColor(colors(TEXT, DIM));
        t.setHintTextColor(DIM);
        Cut cut = new Cut(SURFACE, EDGE, dp(1.0f), 0.0f);
        t.setBackground(states(cut, cut, new Cut(SURFACE, this.accent, dp(1.0f), 0.0f), new Cut(BG, LINE, dp(1.0f), 0.0f)));
        t.setPadding(dp(12.0f), dp(10.0f), dp(12.0f), dp(10.0f));
        t.setMinHeight(dp(44.0f));
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(this.accent);
        gradientDrawable.setSize(dp(2.0f), 0);
        t.setTextCursorDrawable(gradientDrawable);
        return t;
    }

    public Spinner spinner(List<String> list) {
        Spinner spinner = new Spinner(this.activity);
        spinner.setAdapter((SpinnerAdapter) new ArrayAdapter<String>(this.activity, 0, list) { // from class: com.gmodvr.flat.Skin.1
            @Override // android.widget.ArrayAdapter, android.widget.Adapter
            public View getView(int i, View view, ViewGroup viewGroup) {
                return cell(view, i, false);
            }

            @Override // android.widget.ArrayAdapter, android.widget.BaseAdapter, android.widget.SpinnerAdapter
            public View getDropDownView(int i, View view, ViewGroup viewGroup) {
                return cell(view, i, true);
            }

            private View cell(View view, int i, boolean z) {
                TextView textViewText = view instanceof TextView ? (TextView) view : Skin.this.text("", 14.0f, 0);
                textViewText.setText((CharSequence) getItem(i));
                textViewText.setTextColor(Skin.colors(Skin.TEXT, Skin.DIM));
                textViewText.setSingleLine(true);
                textViewText.setEllipsize(TextUtils.TruncateAt.END);
                textViewText.setGravity(16);
                textViewText.setMinHeight(Skin.this.dp(z ? 44.0f : 42.0f));
                textViewText.setPadding(Skin.this.dp(12.0f), 0, Skin.this.dp(z ? 12.0f : 34.0f), 0);
                textViewText.setDuplicateParentStateEnabled(!z);
                return textViewText;
            }
        });
        Path path = new Path();
        path.moveTo(0.0f, 0.0f);
        path.lineTo(10.0f, 0.0f);
        path.lineTo(5.0f, 6.0f);
        path.close();
        ShapeDrawable shapeDrawable = new ShapeDrawable(new PathShape(path, 10.0f, 6.0f));
        shapeDrawable.getPaint().setColor(MUTED);
        LayerDrawable layerDrawable = new LayerDrawable(new Drawable[]{outline(), shapeDrawable});
        layerDrawable.setLayerGravity(1, 21);
        layerDrawable.setLayerSize(1, dp(9.0f), dp(5.0f));
        layerDrawable.setLayerInsetRight(1, dp(14.0f));
        spinner.setBackground(layerDrawable);
        spinner.setPopupBackgroundDrawable(new Cut(RAISED, EDGE, dp(1.0f), 0.0f));
        spinner.setMinimumHeight(dp(44.0f));
        return spinner;
    }

    public ProgressBar progress() {
        ProgressBar progressBar = new ProgressBar(this.activity, null, android.R.attr.progressBarStyleHorizontal);
        LayerDrawable layerDrawable = new LayerDrawable(new Drawable[]{new ColorDrawable(LINE), new ClipDrawable(new ColorDrawable(this.accent), 3, 1)});
        layerDrawable.setId(0, android.R.id.background);
        layerDrawable.setId(1, android.R.id.progress);
        progressBar.setProgressDrawable(layerDrawable);
        progressBar.setIndeterminateTintList(ColorStateList.valueOf(this.accent));
        return progressBar;
    }

    private Button button(String str, float f, ColorStateList colorStateList) {
        Button button = new Button(this.activity);
        button.setText(str);
        button.setTextSize(f);
        button.setTypeface(HEAD);
        button.setAllCaps(true);
        button.setLetterSpacing(0.06f);
        button.setTextColor(colorStateList);
        button.setStateListAnimator(null);
        button.setMinWidth(0);
        button.setMinimumWidth(0);
        button.setMinimumHeight(0);
        button.setPadding(dp(16.0f), 0, dp(16.0f), 0);
        return button;
    }

    private Drawable outline() {
        return states(new Cut(0, EDGE, dp(1.0f), 0.0f), new Cut(RAISED, EDGE, dp(1.0f), 0.0f), new Cut(SURFACE, this.accent, dp(1.0f), 0.0f), new Cut(0, LINE, dp(1.0f), 0.0f));
    }

    private static LayerDrawable edge(int i, int i2, int i3, int i4) {
        LayerDrawable layerDrawable = new LayerDrawable(new Drawable[]{new ColorDrawable(i), new ColorDrawable(i2)});
        if (i3 == 3) {
            layerDrawable.setLayerGravity(1, 115);
            layerDrawable.setLayerWidth(1, i4);
        } else {
            layerDrawable.setLayerGravity(1, 87);
            layerDrawable.setLayerHeight(1, i4);
        }
        return layerDrawable;
    }

    private static StateListDrawable states(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        StateListDrawable stateListDrawable = new StateListDrawable();
        if (drawable4 != null) {
            stateListDrawable.addState(DISABLED, drawable4);
        }
        stateListDrawable.addState(PRESSED, drawable2);
        stateListDrawable.addState(FOCUSED, drawable3);
        stateListDrawable.addState(ANY, drawable);
        return stateListDrawable;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static ColorStateList colors(int i, int i2) {
        return new ColorStateList(new int[][]{DISABLED, ANY}, new int[]{i2, i});
    }

    private static int mix(int i, int i2, float f) {
        return Color.rgb(Math.round(Color.red(i) + ((Color.red(i2) - Color.red(i)) * f)), Math.round(Color.green(i) + ((Color.green(i2) - Color.green(i)) * f)), Math.round(Color.blue(i) + ((Color.blue(i2) - Color.blue(i)) * f)));
    }

    public static final class Cut extends Drawable {
        private int alpha;
        private final float cut;
        private final Paint fill = new Paint(1);
        private final int fillColor;
        private final Path path;
        private final Paint stroke;
        private final int strokeColor;

        @Override // android.graphics.drawable.Drawable
        public int getOpacity() {
            return -3;
        }

        public Cut(int i, int i2, float f, float f2) {
            Paint paint = new Paint(1);
            this.stroke = paint;
            this.path = new Path();
            this.alpha = 255;
            this.fillColor = i;
            this.strokeColor = i2;
            this.cut = f2;
            paint.setStyle(Paint.Style.STROKE);
            paint.setStrokeWidth(f);
        }

        @Override // android.graphics.drawable.Drawable
        public void onBoundsChange(Rect rect) {
            float strokeWidth = this.stroke.getStrokeWidth() / 2.0f;
            float f = rect.left + strokeWidth;
            float f2 = rect.top + strokeWidth;
            float f3 = rect.right - strokeWidth;
            float f4 = rect.bottom - strokeWidth;
            this.path.reset();
            this.path.moveTo(f, f2);
            this.path.lineTo(f3, f2);
            this.path.lineTo(f3, f4 - this.cut);
            this.path.lineTo(f3 - this.cut, f4);
            this.path.lineTo(f, f4);
            this.path.close();
        }

        @Override // android.graphics.drawable.Drawable
        public void draw(Canvas canvas) {
            if (Color.alpha(this.fillColor) != 0) {
                this.fill.setColor(this.fillColor);
                this.fill.setAlpha((Color.alpha(this.fillColor) * this.alpha) / 255);
                canvas.drawPath(this.path, this.fill);
            }
            if (this.stroke.getStrokeWidth() <= 0.0f || Color.alpha(this.strokeColor) == 0) {
                return;
            }
            this.stroke.setColor(this.strokeColor);
            this.stroke.setAlpha((Color.alpha(this.strokeColor) * this.alpha) / 255);
            canvas.drawPath(this.path, this.stroke);
        }

        @Override // android.graphics.drawable.Drawable
        public void setAlpha(int i) {
            this.alpha = i;
            invalidateSelf();
        }

        @Override // android.graphics.drawable.Drawable
        public void setColorFilter(ColorFilter colorFilter) {
            this.fill.setColorFilter(colorFilter);
            this.stroke.setColorFilter(colorFilter);
        }
    }

    public static final class Column extends LinearLayout {
        private final int max;

        public Column(Context context, int i) {
            super(context);
            this.max = i;
            setOrientation(1);
        }

        @Override // android.widget.LinearLayout, android.view.View
        public void onMeasure(int i, int i2) {
            int size = View.MeasureSpec.getSize(i);
            int i3 = this.max;
            if (size > i3) {
                i = View.MeasureSpec.makeMeasureSpec(i3, Enums.EProtoAppType.k_EAppTypeShortcut_VALUE);
            }
            super.onMeasure(i, i2);
        }
    }
}
