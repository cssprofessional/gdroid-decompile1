package com.gmodvr.flat;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.ActivityNotFoundException;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.graphics.drawable.GradientDrawable;
import android.net.Uri;
import android.os.Bundle;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.SeekBar;
import android.widget.Spinner;
import android.widget.TextView;
import android.widget.Toast;
import com.gmodvr.flat.CustomButtons;
import com.gmodvr.flat.Storage;
import com.gmodvr.flat.TouchLayout;
import com.gmodvr.flat.TouchLayoutTransfer;
import com.google.protobuf.DescriptorProtos;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.OpenOption;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.function.IntConsumer;
import java.util.function.Predicate;

/* JADX INFO: loaded from: classes.dex */
public final class TouchLayoutActivity extends Activity {
    private static final int EXPORT = 2;
    private static final int IMPORT = 1;
    private LinearLayout body;
    private boolean busy;
    private boolean changed;
    private ControlColorPicker colorPicker;
    private List<CustomButtons.Entry> custom;
    private boolean customChanged;
    private String defaults;
    private Button exportButton;
    private File file;
    private TextView help;
    private Button importButton;
    private LinearLayout inspector;
    private TouchLayout layout;
    private String original;
    private String originalCustom;
    private String pendingExport;
    private Spinner picker;
    private Preview preview;
    private String profileFile;
    private Button reset;
    private Button save;
    private float screenAspect;
    private TouchLayout.Button selected;
    private boolean showHidden;
    private boolean showZones;
    private Skin skin;
    private CheckBox snap;
    private boolean updating;
    private File user;
    private CheckBox visible;
    private final ExecutorService worker = Executors.newSingleThreadExecutor();
    private final Map<String, Bitmap> icons = new HashMap();
    private final Map<Bitmap, Bitmap> neutralIcons = new HashMap();
    private final Map<String, String> customTextures = new HashMap();
    private final SeekBar[] fields = new SeekBar[4];
    private final TextView[] labels = new TextView[4];

    @Override // android.app.Activity
    public void onCreate(final Bundle bundle) {
        super.onCreate(bundle);
        this.pendingExport = bundle == null ? null : bundle.getString("pendingExport");
        this.skin = Skin.of(this, getIntent().getStringExtra("franchise"));
        getWindowManager().getDefaultDisplay().getRealSize(new Point());
        this.screenAspect = Math.max(r0.x, r0.y) / Math.max(1, Math.min(r0.x, r0.y));
        LinearLayout linearLayout = new LinearLayout(this);
        linearLayout.setOrientation(1);
        linearLayout.setBackgroundColor(-16052720);
        Skin.fitSystemBars(linearLayout);
        setContentView(linearLayout);
        LinearLayout linearLayout2 = new LinearLayout(this);
        linearLayout2.setGravity(16);
        linearLayout2.setPadding(this.skin.dp(12.0f), this.skin.dp(4.0f), this.skin.dp(12.0f), this.skin.dp(4.0f));
        linearLayout2.addView(this.skin.secondary("Cancel", new Runnable() { // from class: com.gmodvr.flat.TouchLayoutActivity$$ExternalSyntheticLambda14
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.cancel();
            }
        }));
        TextView textViewHeading = this.skin.heading("Control layout", 20.0f);
        textViewHeading.setPadding(this.skin.dp(14.0f), 0, 0, 0);
        linearLayout2.addView(textViewHeading, new LinearLayout.LayoutParams(0, -2, 1.0f));
        Button buttonSecondary = this.skin.secondary("Reset", new Runnable() { // from class: com.gmodvr.flat.TouchLayoutActivity$$ExternalSyntheticLambda15
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.reset();
            }
        });
        this.reset = buttonSecondary;
        linearLayout2.addView(buttonSecondary);
        Button buttonPrimary = this.skin.primary("Save", new Runnable() { // from class: com.gmodvr.flat.TouchLayoutActivity$$ExternalSyntheticLambda16
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.save();
            }
        });
        this.save = buttonPrimary;
        buttonPrimary.setEnabled(false);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
        layoutParams.leftMargin = this.skin.dp(8.0f);
        linearLayout2.addView(this.save, layoutParams);
        linearLayout.addView(linearLayout2);
        TextView textViewText = this.skin.text("Loading controls…", 12.0f, -7497309);
        this.help = textViewText;
        textViewText.setPadding(this.skin.dp(14.0f), 0, this.skin.dp(14.0f), this.skin.dp(4.0f));
        linearLayout.addView(this.help);
        LinearLayout linearLayout3 = new LinearLayout(this);
        this.body = linearLayout3;
        linearLayout.addView(linearLayout3, new LinearLayout.LayoutParams(-1, 0, 1.0f));
        this.worker.execute(new Runnable() { // from class: com.gmodvr.flat.TouchLayoutActivity$$ExternalSyntheticLambda17
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$onCreate$2(bundle);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onCreate$2(final Bundle bundle) {
        try {
            load(bundle);
            runOnUiThread(new Runnable() { // from class: com.gmodvr.flat.TouchLayoutActivity$$ExternalSyntheticLambda19
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onCreate$0(bundle);
                }
            });
        } catch (IOException | RuntimeException e) {
            runOnUiThread(new Runnable() { // from class: com.gmodvr.flat.TouchLayoutActivity$$ExternalSyntheticLambda20
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onCreate$1(e);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onCreate$0(Bundle bundle) {
        if (isFinishing() || isDestroyed()) {
            return;
        }
        buildEditor(bundle == null ? null : bundle.getString("selected"));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onCreate$1(Exception exc) {
        if (isFinishing() || isDestroyed()) {
            return;
        }
        this.help.setText("Could not open the layout: " + exc.getMessage());
        this.help.setTextColor(-1548209);
    }

    private void load(Bundle bundle) throws IOException {
        File fileUserDirectory;
        GameContentProfile gameContentProfileForId = GameContentProfile.forId(getIntent().getStringExtra("profile"));
        if (gameContentProfileForId == null) {
            gameContentProfileForId = GameContentProfile.DEFAULT;
        }
        String stringExtra = getIntent().getStringExtra("mod");
        Storage.Lease leaseLock = Storage.lock(this);
        try {
            if (stringExtra == null) {
                fileUserDirectory = Storage.user(this, gameContentProfileForId);
            } else {
                fileUserDirectory = GameMod.read(new File(stringExtra)).userDirectory(Storage.root(this), gameContentProfileForId);
            }
            this.user = fileUserDirectory;
            Storage.recoverUser(fileUserDirectory);
            this.profileFile = bundle == null ? TouchLayout.profileFile(text(new File(this.user, "cfg/config.cfg"))) : bundle.getString("profileFile", "touch.cfg");
            File fileChild = Storage.child(this.user, "cfg/" + this.profileFile);
            this.file = fileChild;
            this.original = bundle == null ? text(fileChild) : bundle.getString("original", "");
            this.defaults = RuntimeAssets.assetText(this, "touch_default.cfg");
            String string = null;
            String string2 = bundle == null ? null : bundle.getString("draft");
            if (string2 == null) {
                string2 = this.original.trim().isEmpty() ? this.defaults : this.original;
            }
            this.layout = TouchLayout.parse(string2, this.screenAspect);
            boolean z = false;
            this.changed = bundle != null && bundle.getBoolean("changed");
            String strText = text(CustomButtons.file(this));
            if (bundle != null) {
                strText = bundle.getString("originalCustom", strText);
            }
            this.originalCustom = strText;
            if (bundle != null) {
                string = bundle.getString("customDraft");
            }
            this.custom = string == null ? CustomButtons.load(CustomButtons.file(this)) : CustomButtons.fromJson(string);
            this.customChanged = bundle != null && bundle.getBoolean("customChanged");
            this.showHidden = bundle != null && bundle.getBoolean("showHidden");
            if (bundle != null && bundle.getBoolean("showZones")) {
                z = true;
            }
            this.showZones = z;
            if (leaseLock != null) {
                leaseLock.close();
            }
            loadArtwork(this.layout, this.custom, this.icons, this.customTextures);
        } catch (Throwable th) {
            if (leaseLock != null) {
                try {
                    leaseLock.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }

    private void loadArtwork(TouchLayout touchLayout, List<CustomButtons.Entry> list, Map<String, Bitmap> map, Map<String, String> map2) throws IOException {
        CustomButtonIcons customButtonIcons = new CustomButtonIcons(this);
        for (CustomButtons.Entry entry : list) {
            map.put(entry.buttonName(), customButtonIcons.bitmap(entry.shape, entry.label));
            map2.put(entry.buttonName(), CustomButtons.textureName(entry, VtfWriter.rgba8888(256, 256, customButtonIcons.rgba(entry))));
        }
        touchLayout.mergeCustom(list, map2);
        if (touchLayout.buttons.isEmpty()) {
            throw new IOException("This layout has no usable controls.");
        }
        ArrayList<TouchLayout.Button> arrayList = new ArrayList(touchLayout.buttons);
        arrayList.addAll(TouchLayout.parse(this.defaults, touchLayout.screenAspect).buttons);
        for (TouchLayout.Button button : arrayList) {
            if (!button.zone() && !map.containsKey(button.name) && !map.containsKey(button.texture)) {
                try {
                    InputStream inputStreamOpen = button.texture.startsWith("vgui/touch/") ? getAssets().open("touch_preview/" + button.texture.substring(11) + ".vtf") : Files.newInputStream(Storage.child(this.user, "materials/" + button.texture + ".vtf").toPath(), new OpenOption[0]);
                    try {
                        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                        Storage.copy(inputStreamOpen, byteArrayOutputStream, 16777216L);
                        VtfPreview vtfPreviewDecode = VtfPreview.decode(byteArrayOutputStream.toByteArray());
                        map.put(button.texture, Bitmap.createBitmap(vtfPreviewDecode.pixels, vtfPreviewDecode.width, vtfPreviewDecode.height, Bitmap.Config.ARGB_8888));
                        if (inputStreamOpen != null) {
                            inputStreamOpen.close();
                        }
                    } catch (Throwable th) {
                        if (inputStreamOpen != null) {
                            try {
                                inputStreamOpen.close();
                            } catch (Throwable th2) {
                                th.addSuppressed(th2);
                            }
                        }
                        throw th;
                    }
                } catch (IOException | RuntimeException unused) {
                    continue;
                }
            }
        }
    }

    private static String text(File file) throws IOException {
        return file.isFile() ? new String(Files.readAllBytes(file.toPath()), StandardCharsets.UTF_8) : "";
    }

    private void buildEditor(String str) {
        this.help.setText("Drag a control to move it. Drag its corner to resize. Changes apply the next time the game starts.");
        Preview preview = new Preview();
        this.preview = preview;
        this.body.addView(preview, new LinearLayout.LayoutParams(0, -1, 1.0f));
        ScrollView scrollViewScroller = Skin.scroller(this);
        LinearLayout linearLayout = new LinearLayout(this);
        this.inspector = linearLayout;
        linearLayout.setOrientation(1);
        this.inspector.setPadding(this.skin.dp(10.0f), this.skin.dp(8.0f), this.skin.dp(12.0f), this.skin.dp(12.0f));
        this.inspector.setBackgroundColor(-15591653);
        scrollViewScroller.addView(this.inspector);
        this.body.addView(scrollViewScroller, new LinearLayout.LayoutParams(this.skin.dp(212.0f), -1));
        rebuildPicker();
        LinearLayout linearLayout2 = new LinearLayout(this);
        this.importButton = this.skin.secondary("Import", new Runnable() { // from class: com.gmodvr.flat.TouchLayoutActivity$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.importControls();
            }
        });
        this.exportButton = this.skin.secondary("Export", new Runnable() { // from class: com.gmodvr.flat.TouchLayoutActivity$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.exportControls();
            }
        });
        linearLayout2.addView(this.importButton, new LinearLayout.LayoutParams(0, -2, 1.0f));
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(0, -2, 1.0f);
        layoutParams.leftMargin = this.skin.dp(6.0f);
        linearLayout2.addView(this.exportButton, layoutParams);
        ControlColorPicker controlColorPicker = new ControlColorPicker(this.skin, new IntConsumer() { // from class: com.gmodvr.flat.TouchLayoutActivity$$ExternalSyntheticLambda3
            @Override // java.util.function.IntConsumer
            public final void accept(int i) {
                this.f$0.lambda$buildEditor$3(i);
            }
        });
        this.colorPicker = controlColorPicker;
        this.inspector.addView(controlColorPicker, this.skin.below(10.0f));
        this.inspector.addView(this.skin.secondary("Apply color to all buttons", new Runnable() { // from class: com.gmodvr.flat.TouchLayoutActivity$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$buildEditor$4();
            }
        }), this.skin.below(4.0f));
        this.inspector.addView(linearLayout2, this.skin.below(8.0f));
        String[] strArr = {"Horizontal position", "Vertical position", "Width", "Height"};
        for (final int i = 0; i < this.fields.length; i++) {
            this.labels[i] = this.skin.text("", 12.0f, -7497309);
            this.inspector.addView(this.labels[i], this.skin.below(6.0f));
            SeekBar seekBar = new SeekBar(this);
            GradientDrawable gradientDrawable = new GradientDrawable();
            gradientDrawable.setColor(this.skin.accent);
            gradientDrawable.setSize(this.skin.dp(8.0f), this.skin.dp(20.0f));
            seekBar.setThumb(gradientDrawable);
            seekBar.setMax(DescriptorProtos.Edition.EDITION_2023_VALUE);
            seekBar.setContentDescription(strArr[i]);
            seekBar.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() { // from class: com.gmodvr.flat.TouchLayoutActivity.1
                @Override // android.widget.SeekBar.OnSeekBarChangeListener
                public void onStartTrackingTouch(SeekBar seekBar2) {
                }

                @Override // android.widget.SeekBar.OnSeekBarChangeListener
                public void onStopTrackingTouch(SeekBar seekBar2) {
                }

                @Override // android.widget.SeekBar.OnSeekBarChangeListener
                public void onProgressChanged(SeekBar seekBar2, int i2, boolean z) {
                    if (TouchLayoutActivity.this.updating || !z || TouchLayoutActivity.this.selected == null) {
                        return;
                    }
                    float f = TouchLayoutActivity.this.selected.x1;
                    float f2 = TouchLayoutActivity.this.selected.y1;
                    float fWidth = TouchLayoutActivity.this.selected.width();
                    float fHeight = TouchLayoutActivity.this.selected.height();
                    float f3 = i2 / 1000.0f;
                    int i3 = i;
                    TouchLayoutActivity.this.layout.rect(TouchLayoutActivity.this.selected, i3 == 0 ? f3 : f, i3 == 1 ? f3 : f2, i3 == 2 ? f3 : fWidth, i3 == 3 ? f3 : fHeight);
                    TouchLayoutActivity.this.edited();
                }
            });
            this.fields[i] = seekBar;
            this.inspector.addView(seekBar, new LinearLayout.LayoutParams(-1, this.skin.dp(32.0f)));
        }
        CheckBox checkBoxCheck = this.skin.check("Show button");
        this.visible = checkBoxCheck;
        checkBoxCheck.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.gmodvr.flat.TouchLayoutActivity$$ExternalSyntheticLambda5
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                this.f$0.lambda$buildEditor$5(compoundButton, z);
            }
        });
        this.inspector.addView(this.visible, this.skin.below(6.0f));
        CheckBox checkBoxCheck2 = this.skin.check("Snap to grid");
        this.snap = checkBoxCheck2;
        checkBoxCheck2.setChecked(this.layout.snap);
        this.snap.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.gmodvr.flat.TouchLayoutActivity$$ExternalSyntheticLambda6
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                this.f$0.lambda$buildEditor$6(compoundButton, z);
            }
        });
        this.inspector.addView(this.snap);
        CheckBox checkBoxCheck3 = this.skin.check("Show move / look zones");
        checkBoxCheck3.setChecked(this.showZones);
        checkBoxCheck3.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.gmodvr.flat.TouchLayoutActivity$$ExternalSyntheticLambda7
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                this.f$0.lambda$buildEditor$7(compoundButton, z);
            }
        });
        this.inspector.addView(checkBoxCheck3);
        CheckBox checkBoxCheck4 = this.skin.check("Show hidden buttons");
        checkBoxCheck4.setChecked(this.showHidden);
        checkBoxCheck4.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.gmodvr.flat.TouchLayoutActivity$$ExternalSyntheticLambda8
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                this.f$0.lambda$buildEditor$8(compoundButton, z);
            }
        });
        this.inspector.addView(checkBoxCheck4);
        this.inspector.addView(this.skin.text("Controls stay visible here while editing, even at low opacity.", 11.0f, -7497309), this.skin.below(8.0f));
        this.save.setEnabled(true);
        select(this.layout.find(str) != null ? this.layout.find(str) : this.layout.buttons.stream().filter(new Predicate() { // from class: com.gmodvr.flat.TouchLayoutActivity$$ExternalSyntheticLambda9
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return TouchLayoutActivity.lambda$buildEditor$9((TouchLayout.Button) obj);
            }
        }).findFirst().orElse(this.layout.buttons.get(0)));
        setBusy(this.busy);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$buildEditor$3(int i) {
        TouchLayout.Button button;
        if (this.updating || this.busy || (button = this.selected) == null) {
            return;
        }
        if (button.color() != i || (this.selected.flags & 4096) == 0) {
            this.selected.color(i);
            edited();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$buildEditor$4() {
        TouchLayout.Button button = this.selected;
        if (button == null || this.busy) {
            return;
        }
        int iColor = button.color();
        for (TouchLayout.Button button2 : this.layout.buttons) {
            if (!button2.zone()) {
                button2.color(iColor);
            }
        }
        edited();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$buildEditor$5(CompoundButton compoundButton, boolean z) {
        TouchLayout.Button button;
        if (this.updating || (button = this.selected) == null) {
            return;
        }
        button.flags = z ? button.flags & (-2) : button.flags | 1;
        edited();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$buildEditor$6(CompoundButton compoundButton, boolean z) {
        TouchLayout touchLayout = this.layout;
        touchLayout.snap = z;
        if (z) {
            for (TouchLayout.Button button : touchLayout.buttons) {
                this.layout.rect(button, button.x1, button.y1, button.width(), button.height());
            }
        }
        edited();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$buildEditor$7(CompoundButton compoundButton, boolean z) {
        this.showZones = z;
        this.preview.invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$buildEditor$8(CompoundButton compoundButton, boolean z) {
        this.showHidden = z;
        this.preview.invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$buildEditor$9(TouchLayout.Button button) {
        return (button.zone() || button.hidden()) ? false : true;
    }

    private void rebuildPicker() {
        Spinner spinner = this.picker;
        if (spinner != null) {
            this.inspector.removeView(spinner);
        }
        ArrayList arrayList = new ArrayList();
        for (final TouchLayout.Button button : this.layout.buttons) {
            CustomButtons.Entry entryOrElse = this.custom.stream().filter(new Predicate() { // from class: com.gmodvr.flat.TouchLayoutActivity$$ExternalSyntheticLambda0
                @Override // java.util.function.Predicate
                public final boolean test(Object obj) {
                    return TouchLayoutActivity.lambda$rebuildPicker$10(button, (CustomButtons.Entry) obj);
                }
            }).findFirst().orElse(null);
            arrayList.add(entryOrElse == null ? button.label() : "Custom: " + entryOrElse.label);
        }
        Spinner spinner2 = this.skin.spinner(arrayList);
        this.picker = spinner2;
        spinner2.setContentDescription("Select a control");
        this.picker.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() { // from class: com.gmodvr.flat.TouchLayoutActivity.2
            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onNothingSelected(AdapterView<?> adapterView) {
            }

            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
                if (TouchLayoutActivity.this.updating) {
                    return;
                }
                TouchLayoutActivity touchLayoutActivity = TouchLayoutActivity.this;
                touchLayoutActivity.select(touchLayoutActivity.layout.buttons.get(i));
            }
        });
        this.inspector.addView(this.picker, 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$rebuildPicker$10(TouchLayout.Button button, CustomButtons.Entry entry) {
        return entry.buttonName().equals(button.name);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void select(TouchLayout.Button button) {
        this.selected = button;
        if (this.fields[0] == null) {
            return;
        }
        this.updating = true;
        this.picker.setSelection(this.layout.buttons.indexOf(button));
        float[] fArr = {button.x1, button.y1, button.width(), button.height()};
        String[] strArr = {"X", "Y", "Width", "Height"};
        int i = 0;
        while (true) {
            SeekBar[] seekBarArr = this.fields;
            if (i < seekBarArr.length) {
                seekBarArr[i].setProgress(Math.round(fArr[i] * 1000.0f));
                this.labels[i].setText(String.format(Locale.ROOT, "%s: %.1f%%", strArr[i], Float.valueOf(fArr[i] * 100.0f)));
                i++;
            } else {
                this.visible.setChecked(true ^ button.hidden());
                this.colorPicker.setColor(button.color());
                this.updating = false;
                this.preview.invalidate();
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void edited() {
        this.changed = true;
        select(this.selected);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void reset() {
        if (this.preview == null || this.busy) {
            return;
        }
        new AlertDialog.Builder(this).setTitle("Reset control layout?").setMessage("Restore the standard button positions, sizes and colors. Your custom buttons stay. Tap Save to apply.").setPositiveButton("Reset", new DialogInterface.OnClickListener() { // from class: com.gmodvr.flat.TouchLayoutActivity$$ExternalSyntheticLambda18
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                this.f$0.lambda$reset$12(dialogInterface, i);
            }
        }).setNegativeButton("Cancel", (DialogInterface.OnClickListener) null).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$reset$12(DialogInterface dialogInterface, int i) {
        try {
            this.layout.reset(TouchLayout.parse(this.defaults, this.screenAspect), this.custom, this.customTextures);
            rebuildPicker();
            this.selected = this.layout.buttons.stream().filter(new Predicate() { // from class: com.gmodvr.flat.TouchLayoutActivity$$ExternalSyntheticLambda22
                @Override // java.util.function.Predicate
                public final boolean test(Object obj) {
                    return TouchLayoutActivity.lambda$reset$11((TouchLayout.Button) obj);
                }
            }).findFirst().orElse(this.layout.buttons.get(0));
            edited();
        } catch (IOException e) {
            error(e.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$reset$11(TouchLayout.Button button) {
        return (button.zone() || button.hidden()) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void save() {
        if (this.layout == null || this.busy) {
            return;
        }
        try {
            Storage.Lease leaseLock = Storage.lock(this);
            try {
                TouchLayoutTransfer.save(this.file, this.original, this.layout.cfg(this.profileFile), CustomButtons.file(this), this.originalCustom, this.customChanged ? this.custom : null);
                this.changed = false;
                Toast.makeText(this, "Control layout saved", 0).show();
                finish();
                if (leaseLock != null) {
                    leaseLock.close();
                }
            } finally {
            }
        } catch (IOException e) {
            error(e.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void importControls() {
        if (this.layout == null || this.busy) {
            return;
        }
        openPicker(new Intent("android.intent.action.OPEN_DOCUMENT").setType("*/*").addCategory("android.intent.category.OPENABLE"), 1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void exportControls() {
        TouchLayout touchLayout = this.layout;
        if (touchLayout == null || this.busy) {
            return;
        }
        try {
            this.pendingExport = TouchLayoutTransfer.export(touchLayout, this.custom);
            openPicker(new Intent("android.intent.action.CREATE_DOCUMENT").setType("application/json").addCategory("android.intent.category.OPENABLE").putExtra("android.intent.extra.TITLE", "gmod-controls.json"), 2);
        } catch (IOException e) {
            error(e.getMessage());
        }
    }

    private void openPicker(Intent intent, int i) {
        try {
            startActivityForResult(intent, i);
        } catch (ActivityNotFoundException | SecurityException e) {
            this.pendingExport = null;
            error("Could not open the file picker. " + e.getMessage());
        }
    }

    @Override // android.app.Activity
    public void onActivityResult(final int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i == 1 || i == 2) {
            if (i2 != -1 || intent == null || intent.getData() == null) {
                if (i == 2) {
                    this.pendingExport = null;
                    return;
                }
                return;
            }
            final Uri data = intent.getData();
            final String str = this.pendingExport;
            if (i == 2) {
                this.pendingExport = null;
            }
            final String string = this.help.getText().toString();
            setBusy(true);
            this.help.setText(i == 1 ? "Importing controls…" : "Exporting controls…");
            this.worker.execute(new Runnable() { // from class: com.gmodvr.flat.TouchLayoutActivity$$ExternalSyntheticLambda21
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onActivityResult$16(i, str, data, string);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onActivityResult$16(final int i, String str, Uri uri, final String str2) {
        try {
            if (i == 2) {
                if (str == null) {
                    throw new IOException("The export was interrupted. Tap Export to try again.");
                }
                OutputStream outputStreamOpenOutputStream = getContentResolver().openOutputStream(uri, "wt");
                try {
                    if (outputStreamOpenOutputStream == null) {
                        throw new IOException("Could not write the selected file.");
                    }
                    outputStreamOpenOutputStream.write(str.getBytes(StandardCharsets.UTF_8));
                    outputStreamOpenOutputStream.close();
                    runOnUiThread(new Runnable() { // from class: com.gmodvr.flat.TouchLayoutActivity$$ExternalSyntheticLambda11
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.lambda$onActivityResult$13(str2);
                        }
                    });
                    return;
                } catch (Throwable th) {
                    if (outputStreamOpenOutputStream != null) {
                        try {
                            outputStreamOpenOutputStream.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                    }
                    throw th;
                }
            }
            InputStream inputStreamOpenInputStream = getContentResolver().openInputStream(uri);
            try {
                final TouchLayoutTransfer.Imported imported = TouchLayoutTransfer.read(inputStreamOpenInputStream, this.screenAspect);
                if (inputStreamOpenInputStream != null) {
                    inputStreamOpenInputStream.close();
                }
                List<CustomButtons.Entry> list = imported.custom;
                if (list == null) {
                    list = this.custom;
                }
                final List<CustomButtons.Entry> list2 = list;
                final HashMap map = new HashMap();
                final HashMap map2 = new HashMap();
                loadArtwork(imported.layout, list2, map, map2);
                runOnUiThread(new Runnable() { // from class: com.gmodvr.flat.TouchLayoutActivity$$ExternalSyntheticLambda12
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$onActivityResult$14(imported, list2, map, map2);
                    }
                });
            } catch (Throwable th3) {
                if (inputStreamOpenInputStream != null) {
                    try {
                        inputStreamOpenInputStream.close();
                    } catch (Throwable th4) {
                        th3.addSuppressed(th4);
                    }
                }
                throw th3;
            }
        } catch (IOException | RuntimeException e) {
            runOnUiThread(new Runnable() { // from class: com.gmodvr.flat.TouchLayoutActivity$$ExternalSyntheticLambda13
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onActivityResult$15(str2, i, e);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onActivityResult$13(String str) {
        if (isFinishing() || isDestroyed()) {
            return;
        }
        setBusy(false);
        this.help.setText(str);
        Toast.makeText(this, "Controls exported", 0).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onActivityResult$14(TouchLayoutTransfer.Imported imported, List list, Map map, Map map2) {
        String str;
        if (isFinishing() || isDestroyed()) {
            return;
        }
        this.layout = imported.layout;
        this.custom = list;
        this.customChanged |= imported.custom != null;
        this.icons.clear();
        this.icons.putAll(map);
        this.neutralIcons.clear();
        this.customTextures.clear();
        this.customTextures.putAll(map2);
        this.changed = true;
        this.body.removeAllViews();
        this.picker = null;
        buildEditor(null);
        setBusy(false);
        TextView textView = this.help;
        if (imported.custom == null) {
            str = "Layout imported. Tap Save to apply. Your custom buttons are kept.";
        } else {
            str = "Controls imported. Tap Save to apply the layout and replace your custom buttons.";
        }
        textView.setText(str);
        Toast.makeText(this, "Controls imported — tap Save to apply", 0).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onActivityResult$15(String str, int i, Exception exc) {
        if (isFinishing() || isDestroyed()) {
            return;
        }
        setBusy(false);
        this.help.setText(str);
        StringBuilder sb = new StringBuilder();
        sb.append("Could not ");
        sb.append(i == 1 ? "import" : "export");
        sb.append(" controls: ");
        sb.append(exc.getMessage());
        error(sb.toString());
    }

    private void setBusy(boolean z) {
        this.busy = z;
        enable(this.body, !z);
        this.save.setEnabled((this.busy || this.layout == null) ? false : true);
        this.reset.setEnabled((this.busy || this.layout == null) ? false : true);
    }

    private static void enable(View view, boolean z) {
        view.setEnabled(z);
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i = 0; i < viewGroup.getChildCount(); i++) {
                enable(viewGroup.getChildAt(i), z);
            }
        }
    }

    private void error(String str) {
        new AlertDialog.Builder(this).setTitle("Control layout").setMessage(str).setPositiveButton("OK", (DialogInterface.OnClickListener) null).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void cancel() {
        if (this.busy) {
            return;
        }
        if (this.changed) {
            new AlertDialog.Builder(this).setTitle("Discard layout changes?").setPositiveButton("Discard", new DialogInterface.OnClickListener() { // from class: com.gmodvr.flat.TouchLayoutActivity$$ExternalSyntheticLambda10
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    this.f$0.lambda$cancel$17(dialogInterface, i);
                }
            }).setNegativeButton("Keep editing", (DialogInterface.OnClickListener) null).show();
        } else {
            finish();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$cancel$17(DialogInterface dialogInterface, int i) {
        finish();
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        cancel();
    }

    @Override // android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        if (this.preview != null) {
            bundle.putString("draft", this.layout.cfg(this.profileFile));
            bundle.putString("original", this.original);
            bundle.putString("profileFile", this.profileFile);
            bundle.putBoolean("changed", this.changed);
            bundle.putString("originalCustom", this.originalCustom);
            bundle.putString("customDraft", CustomButtons.toJson(this.custom));
            bundle.putBoolean("customChanged", this.customChanged);
            bundle.putString("pendingExport", this.pendingExport);
            bundle.putBoolean("showHidden", this.showHidden);
            bundle.putBoolean("showZones", this.showZones);
            TouchLayout.Button button = this.selected;
            bundle.putString("selected", button == null ? null : button.name);
        }
    }

    @Override // android.app.Activity
    public void onDestroy() {
        this.worker.shutdownNow();
        super.onDestroy();
    }

    public final class Preview extends View {
        private float dragX;
        private float dragY;
        private int finger;
        private final Paint paint;
        private boolean resizing;
        private final RectF screen;

        public Preview() {
            super(TouchLayoutActivity.this);
            this.paint = new Paint(3);
            this.screen = new RectF();
            this.finger = -1;
            setContentDescription("Game screen preview. Select a control to edit its color, position and size.");
        }

        private RectF bounds(TouchLayout.Button button) {
            RectF rectF = this.screen;
            float fWidth = rectF.left + (button.x1 * rectF.width());
            RectF rectF2 = this.screen;
            float fHeight = rectF2.top + (button.y1 * rectF2.height());
            RectF rectF3 = this.screen;
            float fWidth2 = rectF3.left + (button.x2 * rectF3.width());
            RectF rectF4 = this.screen;
            return new RectF(fWidth, fHeight, fWidth2, rectF4.top + (button.y2 * rectF4.height()));
        }

        private boolean showing(TouchLayout.Button button) {
            return button == TouchLayoutActivity.this.selected || ((!button.hidden() || TouchLayoutActivity.this.showHidden) && (!button.zone() || TouchLayoutActivity.this.showZones));
        }

        private Bitmap artwork(TouchLayout.Button button) {
            Map map;
            String str;
            if (TouchLayoutActivity.this.icons.containsKey(button.name)) {
                map = TouchLayoutActivity.this.icons;
                str = button.name;
            } else {
                map = TouchLayoutActivity.this.icons;
                str = button.texture;
            }
            Bitmap bitmap = (Bitmap) map.get(str);
            if (bitmap == null || (button.flags & 4096) == 0) {
                return bitmap;
            }
            Bitmap bitmap2 = (Bitmap) TouchLayoutActivity.this.neutralIcons.get(bitmap);
            if (bitmap2 != null) {
                return bitmap2;
            }
            int width = bitmap.getWidth() * bitmap.getHeight();
            int[] iArr = new int[width];
            bitmap.getPixels(iArr, 0, bitmap.getWidth(), 0, 0, bitmap.getWidth(), bitmap.getHeight());
            for (int i = 0; i < width; i++) {
                int i2 = iArr[i];
                int iMax = Math.max((i2 >>> 16) & 255, Math.max((i2 >>> 8) & 255, i2 & 255));
                iArr[i] = (i2 & (-16777216)) | (iMax << 16) | (iMax << 8) | iMax;
            }
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(iArr, bitmap.getWidth(), bitmap.getHeight(), Bitmap.Config.ARGB_8888);
            TouchLayoutActivity.this.neutralIcons.put(bitmap, bitmapCreateBitmap);
            return bitmapCreateBitmap;
        }

        @Override // android.view.View
        public void onDraw(Canvas canvas) {
            super.onDraw(canvas);
            float fDp = TouchLayoutActivity.this.skin.dp(12.0f) * 2.0f;
            float fMin = Math.min(Math.max(1.0f, getWidth() - fDp), Math.max(1.0f, getHeight() - fDp) * TouchLayoutActivity.this.screenAspect);
            float f = fMin / TouchLayoutActivity.this.screenAspect;
            this.screen.set((getWidth() - fMin) / 2.0f, (getHeight() - f) / 2.0f, (getWidth() + fMin) / 2.0f, (getHeight() + f) / 2.0f);
            this.paint.setStyle(Paint.Style.FILL);
            this.paint.setColor(-15194578);
            canvas.drawRect(this.screen, this.paint);
            this.paint.setStrokeWidth(TouchLayoutActivity.this.skin.dp(1.0f));
            this.paint.setColor(-14536132);
            for (int i = 1; i < 10; i++) {
                RectF rectF = this.screen;
                float f2 = i;
                float fWidth = rectF.left + ((rectF.width() * f2) / 10.0f);
                RectF rectF2 = this.screen;
                float fHeight = rectF2.top + ((rectF2.height() * f2) / 10.0f);
                RectF rectF3 = this.screen;
                canvas.drawLine(fWidth, rectF3.top, fWidth, rectF3.bottom, this.paint);
                RectF rectF4 = this.screen;
                canvas.drawLine(rectF4.left, fHeight, rectF4.right, fHeight, this.paint);
            }
            this.paint.setColor(-10787217);
            float fCenterX = this.screen.centerX();
            float fCenterY = this.screen.centerY();
            canvas.drawLine(fCenterX - TouchLayoutActivity.this.skin.dp(6.0f), fCenterY, fCenterX + TouchLayoutActivity.this.skin.dp(6.0f), fCenterY, this.paint);
            canvas.drawLine(fCenterX, fCenterY - TouchLayoutActivity.this.skin.dp(6.0f), fCenterX, fCenterY + TouchLayoutActivity.this.skin.dp(6.0f), this.paint);
            canvas.save();
            canvas.clipRect(this.screen);
            int i2 = 0;
            while (i2 < 2) {
                for (TouchLayout.Button button : TouchLayoutActivity.this.layout.buttons) {
                    if (showing(button)) {
                        if ((i2 == 0) == button.zone()) {
                            RectF rectFBounds = bounds(button);
                            Bitmap bitmapArtwork = artwork(button);
                            Paint paint = this.paint;
                            Paint.Style style = Paint.Style.FILL;
                            paint.setStyle(style);
                            if (bitmapArtwork != null) {
                                this.paint.setColorFilter(new PorterDuffColorFilter(button.color(), PorterDuff.Mode.MULTIPLY));
                                this.paint.setAlpha((int) (button.a * (button.hidden() ? 0.4f : 1.0f)));
                                canvas.drawBitmap(bitmapArtwork, (Rect) null, rectFBounds, this.paint);
                                this.paint.setColorFilter(null);
                                this.paint.setAlpha(255);
                            } else {
                                this.paint.setColor(Color.argb(button.zone() ? 32 : 112, button.r, button.g, button.b));
                                canvas.drawRect(rectFBounds, this.paint);
                                this.paint.setColor(button.color());
                                this.paint.setStyle(Paint.Style.STROKE);
                                canvas.drawRect(rectFBounds, this.paint);
                                this.paint.setStyle(style);
                                this.paint.setTextSize(TouchLayoutActivity.this.skin.dp(button.zone() ? 13.0f : 10.0f));
                                this.paint.setTypeface(Typeface.DEFAULT_BOLD);
                                this.paint.setTextAlign(Paint.Align.CENTER);
                                canvas.drawText(button.label(), rectFBounds.centerX(), rectFBounds.centerY() - ((this.paint.ascent() + this.paint.descent()) / 2.0f), this.paint);
                            }
                            if (button == TouchLayoutActivity.this.selected) {
                                this.paint.setColor(TouchLayoutActivity.this.skin.accent);
                                this.paint.setStyle(Paint.Style.STROKE);
                                this.paint.setStrokeWidth(TouchLayoutActivity.this.skin.dp(2.0f));
                                canvas.drawRect(rectFBounds, this.paint);
                                this.paint.setStyle(style);
                                canvas.drawRect(rectFBounds.right - TouchLayoutActivity.this.skin.dp(6.0f), rectFBounds.bottom - TouchLayoutActivity.this.skin.dp(6.0f), TouchLayoutActivity.this.skin.dp(6.0f) + rectFBounds.right, rectFBounds.bottom + TouchLayoutActivity.this.skin.dp(6.0f), this.paint);
                                this.paint.setStrokeWidth(TouchLayoutActivity.this.skin.dp(1.0f));
                            }
                        }
                    }
                }
                i2++;
            }
            canvas.restore();
            this.paint.setStyle(Paint.Style.STROKE);
            this.paint.setColor(-13089972);
            canvas.drawRect(this.screen, this.paint);
        }

        @Override // android.view.View
        public boolean onTouchEvent(MotionEvent motionEvent) {
            if (TouchLayoutActivity.this.busy) {
                return false;
            }
            int actionMasked = motionEvent.getActionMasked();
            if (actionMasked == 0) {
                this.finger = motionEvent.getPointerId(0);
                float x = motionEvent.getX();
                float y = motionEvent.getY();
                this.resizing = false;
                if (TouchLayoutActivity.this.selected != null) {
                    RectF rectFBounds = bounds(TouchLayoutActivity.this.selected);
                    this.resizing = Math.abs(x - rectFBounds.right) < ((float) TouchLayoutActivity.this.skin.dp(14.0f)) && Math.abs(y - rectFBounds.bottom) < ((float) TouchLayoutActivity.this.skin.dp(14.0f));
                }
                TouchLayout.Button button = this.resizing ? TouchLayoutActivity.this.selected : null;
                if (button == null) {
                    int i = 0;
                    while (i < 2 && button == null) {
                        int size = TouchLayoutActivity.this.layout.buttons.size() - 1;
                        while (true) {
                            if (size >= 0) {
                                TouchLayout.Button button2 = TouchLayoutActivity.this.layout.buttons.get(size);
                                if (button2.zone() == (i == 1) && showing(button2) && bounds(button2).contains(x, y)) {
                                    button = button2;
                                    break;
                                }
                                size--;
                            }
                        }
                        i++;
                    }
                }
                if (button == null) {
                    this.finger = -1;
                    return false;
                }
                TouchLayoutActivity.this.select(button);
                RectF rectF = this.screen;
                this.dragX = ((x - rectF.left) / rectF.width()) - TouchLayoutActivity.this.selected.x1;
                RectF rectF2 = this.screen;
                this.dragY = ((y - rectF2.top) / rectF2.height()) - TouchLayoutActivity.this.selected.y1;
                return true;
            }
            int iFindPointerIndex = motionEvent.findPointerIndex(this.finger);
            if (actionMasked != 2 || iFindPointerIndex < 0 || TouchLayoutActivity.this.selected == null) {
                if (actionMasked != 1 && actionMasked != 3) {
                    return this.finger != -1;
                }
                this.finger = -1;
                if (actionMasked == 1) {
                    performClick();
                }
                return true;
            }
            float x2 = motionEvent.getX(iFindPointerIndex);
            RectF rectF3 = this.screen;
            float fWidth = (x2 - rectF3.left) / rectF3.width();
            float y2 = motionEvent.getY(iFindPointerIndex);
            RectF rectF4 = this.screen;
            float fHeight = (y2 - rectF4.top) / rectF4.height();
            if (this.resizing) {
                TouchLayoutActivity.this.layout.rect(TouchLayoutActivity.this.selected, TouchLayoutActivity.this.selected.x1, TouchLayoutActivity.this.selected.y1, fWidth - TouchLayoutActivity.this.selected.x1, fHeight - TouchLayoutActivity.this.selected.y1);
            } else {
                TouchLayoutActivity.this.layout.rect(TouchLayoutActivity.this.selected, fWidth - this.dragX, fHeight - this.dragY, TouchLayoutActivity.this.selected.width(), TouchLayoutActivity.this.selected.height());
            }
            TouchLayoutActivity.this.edited();
            return true;
        }

        @Override // android.view.View
        public boolean performClick() {
            super.performClick();
            return true;
        }
    }
}
