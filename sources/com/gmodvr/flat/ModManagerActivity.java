package com.gmodvr.flat;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.ToggleButton;
import com.gmodvr.flat.GmodAddons;
import com.gmodvr.flat.ModManager;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* JADX INFO: loaded from: classes.dex */
public final class ModManagerActivity extends Activity {
    private File addonsRoot;
    private boolean destroyed;
    private String focusedMod;
    private File gmodUser;
    private LinearLayout modList;
    private boolean operationInProgress;
    private Button permissionButton;
    private int refreshGeneration;
    private Skin skin;
    private TextView status;
    private final Handler ui = new Handler(Looper.getMainLooper());
    private final ExecutorService worker = Executors.newSingleThreadExecutor();
    private List<ModManager.GameSection> displayedSections = Collections.emptyList();
    private List<GmodAddons.Addon> addons = Collections.emptyList();
    private List<GmodAddons.Addon> localAddons = Collections.emptyList();

    public interface AddonOperation {
        void run() throws Exception;
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        buildViews();
    }

    @Override // android.app.Activity
    public void onResume() {
        super.onResume();
        refresh(null);
    }

    @Override // android.app.Activity
    public void onDestroy() {
        this.destroyed = true;
        this.refreshGeneration++;
        this.worker.shutdownNow();
        super.onDestroy();
    }

    private void buildViews() {
        Skin skinOf = Skin.of(this, getIntent().getStringExtra("franchise"));
        this.skin = skinOf;
        LinearLayout linearLayoutScreen = skinOf.screen("Mod manager", "Garry's Mod addons (srceng/garrysmod/addons, including Workshop downloads) and asset packs in custom/ folders.");
        Skin skin = this.skin;
        LinearLayout linearLayoutPanel = skin.panel(skin.accent);
        TextView textViewText = this.skin.text("", 14.0f, -1643795);
        this.status = textViewText;
        linearLayoutPanel.addView(textViewText);
        Button buttonPrimary = this.skin.primary("Grant storage access", new Runnable() { // from class: com.gmodvr.flat.ModManagerActivity$$ExternalSyntheticLambda11
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.requestStorageAccess();
            }
        });
        this.permissionButton = buttonPrimary;
        buttonPrimary.setVisibility(8);
        linearLayoutPanel.addView(this.permissionButton, this.skin.below(12.0f));
        linearLayoutScreen.addView(linearLayoutPanel, this.skin.below(20.0f));
        LinearLayout linearLayout = new LinearLayout(this);
        this.modList = linearLayout;
        linearLayout.setOrientation(1);
        linearLayoutScreen.addView(this.modList);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void requestStorageAccess() {
        if (Build.VERSION.SDK_INT >= 30) {
            try {
                Intent intent = new Intent("android.settings.MANAGE_APP_ALL_FILES_ACCESS_PERMISSION");
                intent.setData(Uri.parse("package:" + getPackageName()));
                startActivity(intent);
            } catch (Exception unused) {
                startActivity(new Intent("android.settings.MANAGE_ALL_FILES_ACCESS_PERMISSION"));
            }
        }
    }

    private void refresh(final String str) {
        if (this.destroyed || this.worker.isShutdown()) {
            return;
        }
        final int i = this.refreshGeneration + 1;
        this.refreshGeneration = i;
        if (!LocalFolder.hasAccess(this)) {
            this.status.setText("Allow storage access to view and manage game mods.");
            this.permissionButton.setVisibility(0);
            this.modList.removeAllViews();
        } else {
            this.permissionButton.setVisibility(8);
            this.status.setText(str != null ? str : "Scanning for custom mods…");
            this.worker.execute(new Runnable() { // from class: com.gmodvr.flat.ModManagerActivity$$ExternalSyntheticLambda12
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$refresh$2(i, str);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$refresh$2(final int i, final String str) {
        try {
            File file = new File(Storage.root(this), "user");
            final ArrayList arrayList = new ArrayList();
            for (GameContentProfile gameContentProfile : GameContentProfile.all()) {
                arrayList.addAll(ModManager.scan(Storage.content(this, gameContentProfile), file, Collections.singletonList(gameContentProfile)));
            }
            GameContentProfile gameContentProfile2 = GameContentProfile.GARRYSMOD;
            final File fileContent = Storage.content(this, gameContentProfile2);
            final File fileUser = Storage.user(this, gameContentProfile2);
            final List<GmodAddons.Addon> list = GmodAddons.list(fileContent);
            final List<GmodAddons.Addon> listListLocal = GmodAddons.listLocal(fileContent);
            this.ui.post(new Runnable() { // from class: com.gmodvr.flat.ModManagerActivity$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$refresh$0(i, arrayList, fileContent, fileUser, list, listListLocal, str);
                }
            });
        } catch (IOException e) {
            this.ui.post(new Runnable() { // from class: com.gmodvr.flat.ModManagerActivity$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$refresh$1(i, e);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$refresh$0(int i, List list, File file, File file2, List list2, List list3, String str) {
        String str2;
        if (this.destroyed || i != this.refreshGeneration) {
            return;
        }
        this.displayedSections = list;
        this.addonsRoot = file;
        this.gmodUser = file2;
        this.addons = list2;
        this.localAddons = list3;
        this.modList.removeAllViews();
        renderAddons(list2);
        renderLocalAddons(list3);
        renderSections(list);
        if (str == null) {
            int size = list2.size() + list3.size();
            Iterator it = list.iterator();
            while (it.hasNext()) {
                size += ((ModManager.GameSection) it.next()).mods.size();
            }
            TextView textView = this.status;
            if (size == 0) {
                str2 = "No addons yet. Download Workshop items from Steam, or copy addon folders into srceng/garrysmod/addons.";
            } else {
                str2 = size + " addon(s) and mod(s) found.";
            }
            textView.setText(str2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$refresh$1(int i, IOException iOException) {
        if (this.destroyed || i != this.refreshGeneration) {
            return;
        }
        this.status.setText("Error scanning mods: " + iOException.getMessage());
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    private void renderAddons(List<GmodAddons.Addon> list) {
        if (list.isEmpty()) {
            return;
        }
        renderCollections(GmodAddons.groups(list));
        this.modList.addView(this.skin.section("Garry's Mod addons"), this.skin.below(28.0f));
        for (final GmodAddons.Addon addon : list) {
            final ToggleButton toggleButton = this.skin.toggle(addon.enabled);
            toggleButton.setEnabled((this.operationInProgress || addon.conflict) ? false : true);
            toggleButton.setContentDescription(addon.title());
            toggleButton.setOnClickListener(new View.OnClickListener() { // from class: com.gmodvr.flat.ModManagerActivity$$ExternalSyntheticLambda4
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.lambda$renderAddons$4(addon, toggleButton, view);
                }
            });
            LinearLayout linearLayout = new LinearLayout(this);
            linearLayout.setGravity(16);
            linearLayout.addView(this.skin.tag(addon.conflict ? "Conflict" : GmodAddons.sizeText(addon.size), addon.conflict ? -1548209 : -10787217));
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(this.skin.dp(52.0f), this.skin.dp(30.0f));
            layoutParams.leftMargin = this.skin.dp(12.0f);
            linearLayout.addView(toggleButton, layoutParams);
            String strAuthor = addon.author();
            Skin skin = this.skin;
            String strTitle = addon.title();
            if (strAuthor.isEmpty()) {
                strAuthor = "Workshop " + addon.id;
            }
            LinearLayout linearLayoutRow = skin.row(strTitle, strAuthor, linearLayout, null);
            linearLayoutRow.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.gmodvr.flat.ModManagerActivity$$ExternalSyntheticLambda5
                @Override // android.view.View.OnLongClickListener
                public final boolean onLongClick(View view) {
                    return this.f$0.lambda$renderAddons$7(addon, view);
                }
            });
            this.modList.addView(linearLayoutRow);
            if (("addon/" + addon.id).equals(this.focusedMod)) {
                toggleButton.requestFocus();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$renderAddons$4(final GmodAddons.Addon addon, final ToggleButton toggleButton, View view) {
        this.focusedMod = "addon/" + addon.id;
        StringBuilder sb = new StringBuilder();
        sb.append(addon.enabled ? "Disabling " : "Enabling ");
        sb.append(addon.title());
        runAddon(sb.toString(), new AddonOperation() { // from class: com.gmodvr.flat.ModManagerActivity$$ExternalSyntheticLambda6
            @Override // com.gmodvr.flat.ModManagerActivity.AddonOperation
            public final void run() throws Exception {
                this.f$0.lambda$renderAddons$3(addon, toggleButton);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$renderAddons$3(GmodAddons.Addon addon, ToggleButton toggleButton) throws Exception {
        GmodAddons.setEnabled(this.addonsRoot, this.gmodUser, addon, toggleButton.isChecked());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$renderAddons$7(final GmodAddons.Addon addon, View view) {
        new AlertDialog.Builder(this).setTitle("Remove " + addon.title() + "?").setMessage("Deletes the addon's files. Download it again from Steam to restore it.").setPositiveButton("Remove", new DialogInterface.OnClickListener() { // from class: com.gmodvr.flat.ModManagerActivity$$ExternalSyntheticLambda2
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                this.f$0.lambda$renderAddons$6(addon, dialogInterface, i);
            }
        }).setNegativeButton("Cancel", (DialogInterface.OnClickListener) null).show();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$renderAddons$6(final GmodAddons.Addon addon, DialogInterface dialogInterface, int i) {
        runAddon("Removing " + addon.title(), new AddonOperation() { // from class: com.gmodvr.flat.ModManagerActivity$$ExternalSyntheticLambda20
            @Override // com.gmodvr.flat.ModManagerActivity.AddonOperation
            public final void run() throws Exception {
                this.f$0.lambda$renderAddons$5(addon);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$renderAddons$5(GmodAddons.Addon addon) throws Exception {
        GmodAddons.remove(this.addonsRoot, this.gmodUser, addon);
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    private void renderLocalAddons(List<GmodAddons.Addon> list) {
        StringBuilder sb;
        String string;
        if (list.isEmpty()) {
            return;
        }
        this.modList.addView(this.skin.section("Local addons (added by hand)"), this.skin.below(28.0f));
        for (final GmodAddons.Addon addon : list) {
            final String str = "local/" + addon.id;
            final ToggleButton toggleButton = this.skin.toggle(addon.enabled);
            toggleButton.setEnabled((this.operationInProgress || addon.conflict || addon.builtin) ? false : true);
            toggleButton.setContentDescription(addon.title());
            toggleButton.setOnClickListener(new View.OnClickListener() { // from class: com.gmodvr.flat.ModManagerActivity$$ExternalSyntheticLambda15
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.lambda$renderLocalAddons$9(str, addon, toggleButton, view);
                }
            });
            LinearLayout linearLayout = new LinearLayout(this);
            linearLayout.setGravity(16);
            linearLayout.addView(this.skin.tag(addon.conflict ? "Conflict" : addon.builtin ? getString(R.string.app_name) : GmodAddons.sizeText(addon.size), addon.conflict ? -1548209 : -10787217));
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(this.skin.dp(52.0f), this.skin.dp(30.0f));
            layoutParams.leftMargin = this.skin.dp(12.0f);
            linearLayout.addView(toggleButton, layoutParams);
            StringBuilder sb2 = new StringBuilder();
            sb2.append(addon.kind == GmodAddons.Kind.LOCAL_GMA ? "Archive " : "Folder ");
            sb2.append(addon.id);
            String string2 = sb2.toString();
            if (addon.builtin) {
                string = "Part of " + getString(R.string.app_name) + ": " + addon.id;
            } else if (addon.conflict) {
                string = string2 + " is in both addons and addons_disabled; remove one copy";
            } else {
                if (addon.author().isEmpty()) {
                    sb = new StringBuilder();
                    sb.append("Local · ");
                } else {
                    sb = new StringBuilder();
                    sb.append("Local · ");
                    sb.append(string2);
                    sb.append(" · ");
                    string2 = addon.author();
                }
                sb.append(string2);
                string = sb.toString();
            }
            LinearLayout linearLayoutRow = this.skin.row(addon.title(), string, linearLayout, null);
            if (!addon.builtin) {
                linearLayoutRow.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.gmodvr.flat.ModManagerActivity$$ExternalSyntheticLambda16
                    @Override // android.view.View.OnLongClickListener
                    public final boolean onLongClick(View view) {
                        return this.f$0.lambda$renderLocalAddons$12(addon, view);
                    }
                });
            }
            this.modList.addView(linearLayoutRow);
            if (str.equals(this.focusedMod)) {
                toggleButton.requestFocus();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$renderLocalAddons$9(String str, final GmodAddons.Addon addon, final ToggleButton toggleButton, View view) {
        this.focusedMod = str;
        StringBuilder sb = new StringBuilder();
        sb.append(addon.enabled ? "Disabling " : "Enabling ");
        sb.append(addon.title());
        runAddon(sb.toString(), new AddonOperation() { // from class: com.gmodvr.flat.ModManagerActivity$$ExternalSyntheticLambda8
            @Override // com.gmodvr.flat.ModManagerActivity.AddonOperation
            public final void run() throws Exception {
                this.f$0.lambda$renderLocalAddons$8(addon, toggleButton);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$renderLocalAddons$8(GmodAddons.Addon addon, ToggleButton toggleButton) throws Exception {
        GmodAddons.setEnabled(this.addonsRoot, this.gmodUser, addon, toggleButton.isChecked());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$renderLocalAddons$12(final GmodAddons.Addon addon, View view) {
        String str = addon.enabled ? "addons" : "addons_disabled";
        new AlertDialog.Builder(this).setTitle("Delete " + addon.title() + "?").setMessage("This addon was copied into srceng/garrysmod/" + str + "/" + addon.id + " by hand. It did not come from the Workshop, so the launcher cannot download it again: deleting removes its files for good. Turn it off instead to keep it.").setPositiveButton("Delete", new DialogInterface.OnClickListener() { // from class: com.gmodvr.flat.ModManagerActivity$$ExternalSyntheticLambda14
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                this.f$0.lambda$renderLocalAddons$11(addon, dialogInterface, i);
            }
        }).setNegativeButton("Cancel", (DialogInterface.OnClickListener) null).show();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$renderLocalAddons$11(final GmodAddons.Addon addon, DialogInterface dialogInterface, int i) {
        runAddon("Deleting " + addon.title(), new AddonOperation() { // from class: com.gmodvr.flat.ModManagerActivity$$ExternalSyntheticLambda3
            @Override // com.gmodvr.flat.ModManagerActivity.AddonOperation
            public final void run() throws Exception {
                this.f$0.lambda$renderLocalAddons$10(addon);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$renderLocalAddons$10(GmodAddons.Addon addon) throws Exception {
        GmodAddons.remove(this.addonsRoot, this.gmodUser, addon);
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    private void renderCollections(List<GmodAddons.Group> list) {
        if (list.isEmpty()) {
            return;
        }
        this.modList.addView(this.skin.section("Workshop collections"), this.skin.below(28.0f));
        for (final GmodAddons.Group group : list) {
            int iEnabled = group.enabled();
            final ToggleButton toggleButton = this.skin.toggle(iEnabled == group.addons.size());
            toggleButton.setEnabled(!this.operationInProgress);
            toggleButton.setContentDescription(group.name());
            toggleButton.setOnClickListener(new View.OnClickListener() { // from class: com.gmodvr.flat.ModManagerActivity$$ExternalSyntheticLambda9
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.lambda$renderCollections$14(group, toggleButton, view);
                }
            });
            LinearLayout linearLayout = new LinearLayout(this);
            linearLayout.setGravity(16);
            linearLayout.addView(this.skin.tag(iEnabled + "/" + group.addons.size() + " on", iEnabled == 0 ? -10787217 : -7497309));
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(this.skin.dp(52.0f), this.skin.dp(30.0f));
            layoutParams.leftMargin = this.skin.dp(12.0f);
            linearLayout.addView(toggleButton, layoutParams);
            this.modList.addView(this.skin.row(group.name(), group.addons.size() + " addon(s), " + GmodAddons.sizeText(group.size()) + ". The switch turns all of them on or off.", linearLayout, null));
            if (("collection/" + group.id).equals(this.focusedMod)) {
                toggleButton.requestFocus();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$renderCollections$14(final GmodAddons.Group group, ToggleButton toggleButton, View view) {
        this.focusedMod = "collection/" + group.id;
        final boolean zIsChecked = toggleButton.isChecked();
        StringBuilder sb = new StringBuilder();
        sb.append(zIsChecked ? "Enabling " : "Disabling ");
        sb.append("collection ");
        sb.append(group.name());
        runAddon(sb.toString(), new AddonOperation() { // from class: com.gmodvr.flat.ModManagerActivity$$ExternalSyntheticLambda10
            @Override // com.gmodvr.flat.ModManagerActivity.AddonOperation
            public final void run() throws Exception {
                this.f$0.lambda$renderCollections$13(group, zIsChecked);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$renderCollections$13(GmodAddons.Group group, boolean z) throws Exception {
        GmodAddons.setGroupEnabled(this.addonsRoot, this.gmodUser, group, z);
    }

    private void runAddon(final String str, final AddonOperation addonOperation) {
        if (this.operationInProgress || this.destroyed || this.worker.isShutdown()) {
            return;
        }
        this.operationInProgress = true;
        this.status.setText(str + "…");
        this.worker.execute(new Runnable() { // from class: com.gmodvr.flat.ModManagerActivity$$ExternalSyntheticLambda17
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$runAddon$16(addonOperation, str);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$runAddon$16(AddonOperation addonOperation, String str) {
        final String str2;
        try {
            addonOperation.run();
            str2 = "Done: " + str.toLowerCase(Locale.ROOT);
        } catch (Exception e) {
            str2 = "Failed: " + e.getMessage();
        }
        this.ui.post(new Runnable() { // from class: com.gmodvr.flat.ModManagerActivity$$ExternalSyntheticLambda13
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$runAddon$15(str2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$runAddon$15(String str) {
        this.operationInProgress = false;
        refresh(str);
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    private void renderSections(List<ModManager.GameSection> list) {
        String str;
        for (final ModManager.GameSection gameSection : list) {
            if (!gameSection.mods.isEmpty()) {
                this.modList.addView(this.skin.section(gameSection.profile.displayName), this.skin.below(28.0f));
                for (final ModManager.ModEntry modEntry : gameSection.mods) {
                    final ToggleButton toggleButton = this.skin.toggle(modEntry.enabled);
                    toggleButton.setEnabled((this.operationInProgress || modEntry.conflict) ? false : true);
                    toggleButton.setContentDescription(modEntry.name);
                    toggleButton.setOnClickListener(new View.OnClickListener() { // from class: com.gmodvr.flat.ModManagerActivity$$ExternalSyntheticLambda7
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            this.f$0.lambda$renderSections$17(gameSection, modEntry, toggleButton, view);
                        }
                    });
                    LinearLayout linearLayout = new LinearLayout(this);
                    linearLayout.setGravity(16);
                    Skin skin = this.skin;
                    boolean z = modEntry.conflict;
                    if (z) {
                        str = "Conflict";
                    } else {
                        ModManager.Kind kind = modEntry.kind;
                        if (kind == ModManager.Kind.FOLDER) {
                            str = "Folder";
                        } else {
                            str = kind == ModManager.Kind.VPK ? "VPK" : "Mixed";
                        }
                    }
                    linearLayout.addView(skin.tag(str, z ? -1548209 : -10787217));
                    LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(this.skin.dp(52.0f), this.skin.dp(30.0f));
                    layoutParams.leftMargin = this.skin.dp(12.0f);
                    linearLayout.addView(toggleButton, layoutParams);
                    this.modList.addView(this.skin.row(modEntry.name, null, linearLayout, null));
                    if ((gameSection.profile.id + "/" + modEntry.name).equals(this.focusedMod)) {
                        toggleButton.requestFocus();
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$renderSections$17(ModManager.GameSection gameSection, ModManager.ModEntry modEntry, ToggleButton toggleButton, View view) {
        this.focusedMod = gameSection.profile.id + "/" + modEntry.name;
        toggleMod(modEntry, toggleButton.isChecked());
    }

    private void toggleMod(final ModManager.ModEntry modEntry, final boolean z) {
        if (this.operationInProgress) {
            return;
        }
        this.operationInProgress = true;
        TextView textView = this.status;
        StringBuilder sb = new StringBuilder();
        sb.append(z ? "Enabling " : "Disabling ");
        sb.append(modEntry.name);
        sb.append("…");
        textView.setText(sb.toString());
        this.worker.execute(new Runnable() { // from class: com.gmodvr.flat.ModManagerActivity$$ExternalSyntheticLambda21
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$toggleMod$20(modEntry, z);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$toggleMod$20(final ModManager.ModEntry modEntry, final boolean z) {
        try {
            ModManager.setEnabled(modEntry, z);
            this.ui.post(new Runnable() { // from class: com.gmodvr.flat.ModManagerActivity$$ExternalSyntheticLambda18
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$toggleMod$18(z, modEntry);
                }
            });
        } catch (IOException e) {
            this.ui.post(new Runnable() { // from class: com.gmodvr.flat.ModManagerActivity$$ExternalSyntheticLambda19
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$toggleMod$19(modEntry, e);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$toggleMod$18(boolean z, ModManager.ModEntry modEntry) {
        this.operationInProgress = false;
        StringBuilder sb = new StringBuilder();
        sb.append(z ? "Enabled " : "Disabled ");
        sb.append(modEntry.name);
        refresh(sb.toString());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$toggleMod$19(ModManager.ModEntry modEntry, IOException iOException) {
        this.operationInProgress = false;
        refresh("Failed to update " + modEntry.name + ": " + iOException.getMessage());
    }
}
