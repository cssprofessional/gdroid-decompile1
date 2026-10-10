package com.gmodvr.flat;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.os.Bundle;
import android.text.Editable;
import android.text.InputFilter;
import android.text.TextWatcher;
import android.view.View;
import android.widget.AdapterView;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.Spinner;
import android.widget.TextView;
import com.gmodvr.flat.CustomButtonKeys;
import com.gmodvr.flat.CustomButtons;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.function.Predicate;
import java.util.function.Supplier;

/* JADX INFO: loaded from: classes.dex */
public final class CustomButtonsActivity extends Activity {
    private List<CustomButtons.Entry> entries = new ArrayList();
    private CustomButtonIcons icons;
    private LinearLayout list;
    private String loadError;
    private Skin skin;
    private TextView status;

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.icons = new CustomButtonIcons(this);
        Skin skinOf = Skin.of(this, getIntent().getStringExtra("franchise"));
        this.skin = skinOf;
        LinearLayout linearLayoutScreen = skinOf.screen("Custom buttons", "On-screen buttons that press a keyboard key or mouse button, for addons that do something on a key (G, F, R, Z, mouse 3, ...) or on two keys together (E + R, Shift + E, ...). Only the buttons you add here appear in game; they hide with the other buttons while the spawn or context menu is open.");
        Skin skin = this.skin;
        LinearLayout linearLayoutPanel = skin.panel(skin.accent);
        TextView textViewText = this.skin.text("", 14.0f, -1643795);
        this.status = textViewText;
        linearLayoutPanel.addView(textViewText);
        linearLayoutPanel.addView(this.skin.text("Changes apply the next time the game starts. New buttons start near the top middle of the screen and continue below it. If they get crowded, change their color, position and size in the launcher's Control layout editor, or move and resize them in game with the gear button.", 12.5f, -7497309), this.skin.below(6.0f));
        linearLayoutPanel.addView(this.skin.primary("Add a button", new Runnable() { // from class: com.gmodvr.flat.CustomButtonsActivity$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$onCreate$0();
            }
        }), this.skin.below(12.0f));
        linearLayoutScreen.addView(linearLayoutPanel, this.skin.below(20.0f));
        LinearLayout linearLayout = new LinearLayout(this);
        this.list = linearLayout;
        linearLayout.setOrientation(1);
        linearLayoutScreen.addView(this.list);
        try {
            this.entries = CustomButtons.load(CustomButtons.file(this));
        } catch (IOException e) {
            this.loadError = e.getMessage();
        }
        render();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onCreate$0() {
        lambda$render$1(null);
    }

    private void render() {
        String string;
        this.list.removeAllViews();
        int size = this.entries.size();
        TextView textView = this.status;
        if (this.loadError != null) {
            string = this.loadError + " Adding a button replaces it.";
        } else if (size == 0) {
            string = "No custom buttons. The game shows only the standard controls.";
        } else {
            StringBuilder sb = new StringBuilder();
            sb.append(size);
            sb.append(" custom button");
            sb.append(size == 1 ? "." : "s.");
            string = sb.toString();
        }
        textView.setText(string);
        this.status.setTextColor(this.loadError != null ? -1548209 : -1643795);
        if (size == 0) {
            return;
        }
        this.list.addView(this.skin.section("Your buttons"), this.skin.below(28.0f));
        for (final CustomButtons.Entry entry : this.entries) {
            CustomButtonKeys.Key key = CustomButtonKeys.get(entry.key);
            ImageView imageView = new ImageView(this);
            imageView.setImageBitmap(this.icons.bitmap(entry.shape, entry.label));
            imageView.setLayoutParams(new LinearLayout.LayoutParams(this.skin.dp(44.0f), this.skin.dp(44.0f)));
            CustomButtonKeys.Key key2 = CustomButtonKeys.get(entry.with);
            String str = entry.hasWheel() ? "Step per tap" : entry.mode.title;
            LinearLayout linearLayoutRow = this.skin.row(entry.label + "  ·  " + (key2 == null ? key.title : key2.title + " + " + key.title), entry.keySpec() + " · " + str + " · " + entry.shape.title, imageView, new Runnable() { // from class: com.gmodvr.flat.CustomButtonsActivity$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$render$1(entry);
                }
            });
            linearLayoutRow.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.gmodvr.flat.CustomButtonsActivity$$ExternalSyntheticLambda3
                @Override // android.view.View.OnLongClickListener
                public final boolean onLongClick(View view) {
                    return this.f$0.lambda$render$2(entry, view);
                }
            });
            this.list.addView(linearLayoutRow);
        }
        this.list.addView(this.skin.text("Tap a button to change it, long-press to remove it.", 12.5f, -10787217), this.skin.below(10.0f));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$render$2(CustomButtons.Entry entry, View view) {
        confirmRemove(entry);
        return true;
    }

    private boolean persist(List<CustomButtons.Entry> list) {
        try {
            CustomButtons.save(CustomButtons.file(this), list);
            this.entries = list;
            this.loadError = null;
            render();
            return true;
        } catch (IOException e) {
            new AlertDialog.Builder(this).setTitle("Custom buttons").setMessage("Could not save: " + e.getMessage()).setPositiveButton("OK", (DialogInterface.OnClickListener) null).show();
            return false;
        }
    }

    private void confirmRemove(final CustomButtons.Entry entry) {
        new AlertDialog.Builder(this).setTitle("Remove the " + entry.label + " button?").setMessage("It disappears from the game at the next start.").setPositiveButton("Remove", new DialogInterface.OnClickListener() { // from class: com.gmodvr.flat.CustomButtonsActivity$$ExternalSyntheticLambda4
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                this.f$0.lambda$confirmRemove$3(entry, dialogInterface, i);
            }
        }).setNegativeButton("Cancel", (DialogInterface.OnClickListener) null).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$confirmRemove$3(CustomButtons.Entry entry, DialogInterface dialogInterface, int i) {
        remove(entry);
    }

    private void remove(final CustomButtons.Entry entry) {
        ArrayList arrayList = new ArrayList(this.entries);
        arrayList.removeIf(new Predicate() { // from class: com.gmodvr.flat.CustomButtonsActivity$$ExternalSyntheticLambda12
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return CustomButtonsActivity.lambda$remove$4(entry, (CustomButtons.Entry) obj);
            }
        });
        persist(arrayList);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$remove$4(CustomButtons.Entry entry, CustomButtons.Entry entry2) {
        return entry2.id == entry.id;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: edit, reason: merged with bridge method [inline-methods] */
    public void lambda$render$1(final CustomButtons.Entry entry) {
        String str;
        final List<CustomButtonKeys.Key> listAll = CustomButtonKeys.all();
        final int[] iArr = {Math.max(0, CustomButtonKeys.indexOf(entry != null ? entry.key : "KEY_G"))};
        final int[] iArr2 = {(entry == null || (str = entry.with) == null) ? 0 : Math.max(0, CustomButtonKeys.indexOf(str)) + 1};
        final CustomButtons.Shape[] shapeArr = {entry != null ? entry.shape : CustomButtons.Shape.CIRCLE};
        final CustomButtons.Mode[] modeArr = {entry != null ? entry.mode : CustomButtons.Mode.HOLD};
        LinearLayout linearLayout = new LinearLayout(this);
        linearLayout.setOrientation(1);
        linearLayout.setPadding(this.skin.dp(24.0f), this.skin.dp(8.0f), this.skin.dp(24.0f), this.skin.dp(4.0f));
        final ImageView imageView = new ImageView(this);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(this.skin.dp(76.0f), this.skin.dp(76.0f));
        layoutParams.gravity = 1;
        linearLayout.addView(imageView, layoutParams);
        linearLayout.addView(this.skin.label("Key", -7497309), this.skin.below(12.0f));
        ArrayList arrayList = new ArrayList();
        for (CustomButtonKeys.Key key : listAll) {
            arrayList.add(key.group + ": " + key);
        }
        Spinner spinner = this.skin.spinner(arrayList);
        spinner.setSelection(iArr[0]);
        linearLayout.addView(spinner, this.skin.below(6.0f));
        linearLayout.addView(this.skin.label("Together with (held first)", -7497309), this.skin.below(14.0f));
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add("Nothing: just this key");
        for (CustomButtonKeys.Key key2 : listAll) {
            arrayList2.add(key2.group + ": " + key2);
        }
        Spinner spinner2 = this.skin.spinner(arrayList2);
        spinner2.setSelection(iArr2[0]);
        linearLayout.addView(spinner2, this.skin.below(6.0f));
        linearLayout.addView(this.skin.label("Label · 1 to 4 characters", -7497309), this.skin.below(14.0f));
        final EditText editTextInput = this.skin.input(listAll.get(iArr[0]).label, 4097);
        editTextInput.setFilters(new InputFilter[]{new InputFilter.LengthFilter(4)});
        final Supplier supplier = new Supplier() { // from class: com.gmodvr.flat.CustomButtonsActivity$$ExternalSyntheticLambda5
            @Override // java.util.function.Supplier
            public final Object get() {
                return CustomButtonsActivity.lambda$edit$5(iArr2, listAll);
            }
        };
        final Supplier supplier2 = new Supplier() { // from class: com.gmodvr.flat.CustomButtonsActivity$$ExternalSyntheticLambda6
            @Override // java.util.function.Supplier
            public final Object get() {
                return CustomButtonsActivity.lambda$edit$6(listAll, iArr, supplier);
            }
        };
        editTextInput.setText(entry != null ? entry.label : (CharSequence) supplier2.get());
        editTextInput.setHint((CharSequence) supplier2.get());
        linearLayout.addView(editTextInput, this.skin.below(6.0f));
        linearLayout.addView(this.skin.label("Shape", -7497309), this.skin.below(14.0f));
        final LinearLayout linearLayout2 = new LinearLayout(this);
        linearLayout.addView(linearLayout2, this.skin.below(6.0f));
        final TextView textViewLabel = this.skin.label("Behaviour", -7497309);
        linearLayout.addView(textViewLabel, this.skin.below(14.0f));
        final LinearLayout linearLayout3 = new LinearLayout(this);
        linearLayout.addView(linearLayout3, this.skin.below(6.0f));
        final TextView textViewText = this.skin.text("", 12.5f, -10787217);
        linearLayout.addView(textViewText, this.skin.below(6.0f));
        final Runnable[] runnableArr = new Runnable[1];
        runnableArr[0] = new Runnable() { // from class: com.gmodvr.flat.CustomButtonsActivity$$ExternalSyntheticLambda7
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$edit$9(listAll, iArr, supplier, editTextInput, imageView, shapeArr, linearLayout2, runnableArr, linearLayout3, textViewLabel, modeArr, textViewText);
            }
        };
        spinner.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() { // from class: com.gmodvr.flat.CustomButtonsActivity.1
            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onNothingSelected(AdapterView<?> adapterView) {
            }

            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
                if (i == iArr[0]) {
                    return;
                }
                String str2 = (String) supplier2.get();
                String strTrim = editTextInput.getText().toString().trim();
                iArr[0] = i;
                if (strTrim.isEmpty() || strTrim.equals(str2)) {
                    editTextInput.setText((CharSequence) supplier2.get());
                }
                editTextInput.setHint((CharSequence) supplier2.get());
                runnableArr[0].run();
            }
        });
        spinner2.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() { // from class: com.gmodvr.flat.CustomButtonsActivity.2
            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onNothingSelected(AdapterView<?> adapterView) {
            }

            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
                if (i == iArr2[0]) {
                    return;
                }
                String str2 = (String) supplier2.get();
                String strTrim = editTextInput.getText().toString().trim();
                iArr2[0] = i;
                if (strTrim.isEmpty() || strTrim.equals(str2)) {
                    editTextInput.setText((CharSequence) supplier2.get());
                }
                editTextInput.setHint((CharSequence) supplier2.get());
                runnableArr[0].run();
            }
        });
        editTextInput.addTextChangedListener(new TextWatcher() { // from class: com.gmodvr.flat.CustomButtonsActivity.3
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                runnableArr[0].run();
            }
        });
        runnableArr[0].run();
        ScrollView scrollViewScroller = Skin.scroller(this);
        scrollViewScroller.addView(linearLayout, new FrameLayout.LayoutParams(-1, -2));
        AlertDialog.Builder negativeButton = new AlertDialog.Builder(this).setTitle(entry == null ? "Add a button" : "Change button").setView(scrollViewScroller).setPositiveButton("Save", (DialogInterface.OnClickListener) null).setNegativeButton("Cancel", (DialogInterface.OnClickListener) null);
        if (entry != null) {
            negativeButton.setNeutralButton("Remove", new DialogInterface.OnClickListener() { // from class: com.gmodvr.flat.CustomButtonsActivity$$ExternalSyntheticLambda8
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    this.f$0.lambda$edit$10(entry, dialogInterface, i);
                }
            });
        }
        final AlertDialog alertDialogCreate = negativeButton.create();
        alertDialogCreate.setOnShowListener(new DialogInterface.OnShowListener() { // from class: com.gmodvr.flat.CustomButtonsActivity$$ExternalSyntheticLambda9
            @Override // android.content.DialogInterface.OnShowListener
            public final void onShow(DialogInterface dialogInterface) {
                this.f$0.lambda$edit$12(alertDialogCreate, listAll, iArr, supplier, editTextInput, entry, shapeArr, modeArr, dialogInterface);
            }
        });
        alertDialogCreate.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String lambda$edit$5(int[] iArr, List list) {
        int i = iArr[0];
        if (i == 0) {
            return null;
        }
        return ((CustomButtonKeys.Key) list.get(i - 1)).name;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String lambda$edit$6(List list, int[] iArr, Supplier supplier) {
        return CustomButtons.defaultLabel(((CustomButtonKeys.Key) list.get(iArr[0])).name, (String) supplier.get());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$edit$9(List list, int[] iArr, Supplier supplier, EditText editText, ImageView imageView, final CustomButtons.Shape[] shapeArr, LinearLayout linearLayout, final Runnable[] runnableArr, LinearLayout linearLayout2, TextView textView, final CustomButtons.Mode[] modeArr, TextView textView2) {
        String str;
        CustomButtonKeys.Key key = (CustomButtonKeys.Key) list.get(iArr[0]);
        CustomButtonKeys.Key key2 = CustomButtonKeys.get((String) supplier.get());
        boolean z = key.isWheel() || (key2 != null && key2.isWheel());
        String strNormalizeLabel = CustomButtons.normalizeLabel(editText.getText().toString(), key.name, (String) supplier.get());
        CustomButtonIcons customButtonIcons = this.icons;
        CustomButtons.Shape shape = shapeArr[0];
        if (strNormalizeLabel == null) {
            strNormalizeLabel = "?";
        }
        imageView.setImageBitmap(customButtonIcons.bitmap(shape, strNormalizeLabel));
        linearLayout.removeAllViews();
        CustomButtons.Shape[] shapeArrValues = CustomButtons.Shape.values();
        int length = shapeArrValues.length;
        for (int i = 0; i < length; i++) {
            final CustomButtons.Shape shape2 = shapeArrValues[i];
            addSegment(linearLayout, shape2.title, shape2 == shapeArr[0], new Runnable() { // from class: com.gmodvr.flat.CustomButtonsActivity$$ExternalSyntheticLambda10
                @Override // java.lang.Runnable
                public final void run() {
                    CustomButtonsActivity.lambda$edit$7(shapeArr, shape2, runnableArr);
                }
            });
        }
        linearLayout2.removeAllViews();
        linearLayout2.setVisibility(z ? 8 : 0);
        textView.setVisibility(z ? 8 : 0);
        if (!z) {
            CustomButtons.Mode[] modeArrValues = CustomButtons.Mode.values();
            int length2 = modeArrValues.length;
            for (int i2 = 0; i2 < length2; i2++) {
                final CustomButtons.Mode mode = modeArrValues[i2];
                addSegment(linearLayout2, mode.title, mode == modeArr[0], new Runnable() { // from class: com.gmodvr.flat.CustomButtonsActivity$$ExternalSyntheticLambda11
                    @Override // java.lang.Runnable
                    public final void run() {
                        CustomButtonsActivity.lambda$edit$8(modeArr, mode, runnableArr);
                    }
                });
            }
        }
        String str2 = key2 == null ? "The key is" : "Both keys are";
        if (z) {
            str = "Wheel: one step per tap, repeating while held.";
        } else if (modeArr[0] == CustomButtons.Mode.HOLD) {
            str = str2 + " down while you hold the button.";
        } else {
            str = "Tap to press, tap again to release.";
        }
        textView2.setText(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$edit$7(CustomButtons.Shape[] shapeArr, CustomButtons.Shape shape, Runnable[] runnableArr) {
        shapeArr[0] = shape;
        runnableArr[0].run();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$edit$8(CustomButtons.Mode[] modeArr, CustomButtons.Mode mode, Runnable[] runnableArr) {
        modeArr[0] = mode;
        runnableArr[0].run();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$edit$10(CustomButtons.Entry entry, DialogInterface dialogInterface, int i) {
        confirmRemove(entry);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$edit$12(final AlertDialog alertDialog, final List list, final int[] iArr, final Supplier supplier, final EditText editText, final CustomButtons.Entry entry, final CustomButtons.Shape[] shapeArr, final CustomButtons.Mode[] modeArr, DialogInterface dialogInterface) {
        alertDialog.getButton(-1).setOnClickListener(new View.OnClickListener() { // from class: com.gmodvr.flat.CustomButtonsActivity$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$edit$11(list, iArr, supplier, editText, entry, shapeArr, modeArr, alertDialog, view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$edit$11(List list, int[] iArr, Supplier supplier, EditText editText, CustomButtons.Entry entry, CustomButtons.Shape[] shapeArr, CustomButtons.Mode[] modeArr, AlertDialog alertDialog, View view) {
        CustomButtonKeys.Key key = (CustomButtonKeys.Key) list.get(iArr[0]);
        String str = (String) supplier.get();
        if (key.name.equals(str)) {
            new AlertDialog.Builder(this).setTitle("Custom buttons").setMessage("Pick two different keys, or Nothing.").setPositiveButton("OK", (DialogInterface.OnClickListener) null).show();
            return;
        }
        String strNormalizeLabel = CustomButtons.normalizeLabel(editText.getText().toString(), key.name, str);
        if (strNormalizeLabel == null) {
            editText.setError("1 to 4 characters");
            return;
        }
        ArrayList arrayList = new ArrayList(this.entries);
        if (entry == null) {
            arrayList.add(new CustomButtons.Entry(CustomButtons.nextId(arrayList), CustomButtons.nextSlot(arrayList), key.name, str, strNormalizeLabel, shapeArr[0], modeArr[0]));
        } else {
            CustomButtons.Entry entry2 = new CustomButtons.Entry(entry.id, entry.slot, key.name, str, strNormalizeLabel, shapeArr[0], modeArr[0]);
            for (int i = 0; i < arrayList.size(); i++) {
                if (arrayList.get(i).id == entry.id) {
                    arrayList.set(i, entry2);
                }
            }
        }
        if (persist(arrayList)) {
            alertDialog.dismiss();
        }
    }

    private void addSegment(LinearLayout linearLayout, String str, boolean z, Runnable runnable) {
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(0, this.skin.dp(38.0f), 1.0f);
        if (linearLayout.getChildCount() > 0) {
            layoutParams.leftMargin = this.skin.dp(6.0f);
        }
        linearLayout.addView(this.skin.segment(str, z, runnable), layoutParams);
    }
}
