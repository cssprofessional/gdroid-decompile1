###### Class com.gmodvr.flat.TouchLayoutActivity (com.gmodvr.flat.TouchLayoutActivity)
.class public final Lcom/gmodvr/flat/TouchLayoutActivity;
.super Landroid/app/Activity;
.source "TouchLayoutActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gmodvr/flat/TouchLayoutActivity$Preview;
    }
.end annotation


# static fields
.field private static final EXPORT:I = 0x2

.field private static final IMPORT:I = 0x1


# instance fields
.field private body:Landroid/widget/LinearLayout;

.field private busy:Z

.field private changed:Z

.field private colorPicker:Lcom/gmodvr/flat/ControlColorPicker;

.field private custom:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/gmodvr/flat/CustomButtons$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private customChanged:Z

.field private final customTextures:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private defaults:Ljava/lang/String;

.field private exportButton:Landroid/widget/Button;

.field private final fields:[Landroid/widget/SeekBar;

.field private file:Ljava/io/File;

.field private help:Landroid/widget/TextView;

.field private final icons:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private importButton:Landroid/widget/Button;

.field private inspector:Landroid/widget/LinearLayout;

.field private final labels:[Landroid/widget/TextView;

.field private layout:Lcom/gmodvr/flat/TouchLayout;

.field private final neutralIcons:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/graphics/Bitmap;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private original:Ljava/lang/String;

.field private originalCustom:Ljava/lang/String;

.field private pendingExport:Ljava/lang/String;

.field private picker:Landroid/widget/Spinner;

.field private preview:Lcom/gmodvr/flat/TouchLayoutActivity$Preview;

.field private profileFile:Ljava/lang/String;

.field private reset:Landroid/widget/Button;

.field private save:Landroid/widget/Button;

.field private screenAspect:F

.field private selected:Lcom/gmodvr/flat/TouchLayout$Button;

.field private showHidden:Z

.field private showZones:Z

.field private skin:Lcom/gmodvr/flat/Skin;

.field private snap:Landroid/widget/CheckBox;

.field private updating:Z

.field private user:Ljava/io/File;

.field private visible:Landroid/widget/CheckBox;

.field private final worker:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public static synthetic $r8$lambda$7Zin3t3IoQEATJ16a0X7YfuxhmE(Lcom/gmodvr/flat/TouchLayoutActivity;Lcom/gmodvr/flat/TouchLayoutTransfer$Imported;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;)V
    .registers 5

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/gmodvr/flat/TouchLayoutActivity;->lambda$onActivityResult$14(Lcom/gmodvr/flat/TouchLayoutTransfer$Imported;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8U184J-9XvCuGNuU6G7nndt6Efg(Lcom/gmodvr/flat/TouchLayoutActivity;Ljava/lang/String;ILjava/lang/Exception;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/gmodvr/flat/TouchLayoutActivity;->lambda$onActivityResult$15(Ljava/lang/String;ILjava/lang/Exception;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8bvrC1RdoGqClTauu_hCY5q3ShM(Lcom/gmodvr/flat/TouchLayoutActivity;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/gmodvr/flat/TouchLayoutActivity;->exportControls()V

    return-void
.end method

.method public static synthetic $r8$lambda$EadCoIR2LLWILOybVV4jQMC22ew(Lcom/gmodvr/flat/TouchLayoutActivity;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/gmodvr/flat/TouchLayoutActivity;->importControls()V

    return-void
.end method

.method public static synthetic $r8$lambda$Ga-cQdg-nDP7idwR4kQUnLVQtbU(Lcom/gmodvr/flat/TouchLayoutActivity;Landroid/content/DialogInterface;I)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/gmodvr/flat/TouchLayoutActivity;->lambda$cancel$17(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ib-dfAO1vNc6ZuemnINWT723aZo(Lcom/gmodvr/flat/TouchLayoutActivity;Ljava/lang/Exception;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gmodvr/flat/TouchLayoutActivity;->lambda$onCreate$1(Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Lr-KYiWYGVGCCdIORXp4vHj9wz8(Lcom/gmodvr/flat/TouchLayoutActivity;Landroid/os/Bundle;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gmodvr/flat/TouchLayoutActivity;->lambda$onCreate$2(Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RihQcdhjIJ2ZF8V7ib3Q7jBP7pg(Lcom/gmodvr/flat/TouchLayoutActivity;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/gmodvr/flat/TouchLayoutActivity;->reset()V

    return-void
.end method

.method public static synthetic $r8$lambda$VjdkYOquXmqGW6iiIATDY_-qJ3s(Lcom/gmodvr/flat/TouchLayoutActivity;Landroid/os/Bundle;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gmodvr/flat/TouchLayoutActivity;->lambda$onCreate$0(Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WIDr10CpIeIglJZxiDDBuypDlss(Lcom/gmodvr/flat/TouchLayoutActivity;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/gmodvr/flat/TouchLayoutActivity;->save()V

    return-void
.end method

.method public static synthetic $r8$lambda$WOWI1OcdvnL8aseaH8kogq7SINI(Lcom/gmodvr/flat/TouchLayout$Button;)Z
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/gmodvr/flat/TouchLayoutActivity;->lambda$reset$11(Lcom/gmodvr/flat/TouchLayout$Button;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$_vTU7LvyM487Um17T33fPaZ3x2I(Lcom/gmodvr/flat/TouchLayoutActivity;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gmodvr/flat/TouchLayoutActivity;->lambda$buildEditor$3(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$a-CJA8u7Yro2noi9FEsXGUbub70(Lcom/gmodvr/flat/TouchLayoutActivity;Landroid/widget/CompoundButton;Z)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/gmodvr/flat/TouchLayoutActivity;->lambda$buildEditor$7(Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$dsA6wPeZVG3XSRCOmHk8_lQ5MsQ(Lcom/gmodvr/flat/TouchLayoutActivity;Landroid/widget/CompoundButton;Z)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/gmodvr/flat/TouchLayoutActivity;->lambda$buildEditor$8(Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$egbVFnnNqtVCAp0aHvoYXU2rJdY(Lcom/gmodvr/flat/TouchLayoutActivity;ILjava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V
    .registers 5

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/gmodvr/flat/TouchLayoutActivity;->lambda$onActivityResult$16(ILjava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fkXmnjRGj9lxmVW1ro2lUUEaY7Q(Lcom/gmodvr/flat/TouchLayoutActivity;Landroid/widget/CompoundButton;Z)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/gmodvr/flat/TouchLayoutActivity;->lambda$buildEditor$5(Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$gHYYiceY48hFiviuc-j7QyCJgz0(Lcom/gmodvr/flat/TouchLayoutActivity;Landroid/content/DialogInterface;I)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/gmodvr/flat/TouchLayoutActivity;->lambda$reset$12(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$mKSzRkKq9dUuOYubplGBWoYLcLI(Lcom/gmodvr/flat/TouchLayoutActivity;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gmodvr/flat/TouchLayoutActivity;->lambda$onActivityResult$13(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mUJOfzOEA5Iz9XMkK87_ZTQZT9w(Lcom/gmodvr/flat/TouchLayout$Button;)Z
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/gmodvr/flat/TouchLayoutActivity;->lambda$buildEditor$9(Lcom/gmodvr/flat/TouchLayout$Button;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$meXRbk9_55lq3fKIWdArW9D5SI0(Lcom/gmodvr/flat/TouchLayoutActivity;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/gmodvr/flat/TouchLayoutActivity;->cancel()V

    return-void
.end method

.method public static synthetic $r8$lambda$sr1YQob8WrPFY6WyKMh4_xLmUfs(Lcom/gmodvr/flat/TouchLayoutActivity;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/gmodvr/flat/TouchLayoutActivity;->lambda$buildEditor$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$z1uuXUQeaP_yM02lB517DyuzL8A(Lcom/gmodvr/flat/TouchLayoutActivity;Landroid/widget/CompoundButton;Z)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/gmodvr/flat/TouchLayoutActivity;->lambda$buildEditor$6(Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$zKWxjyf1uJoWDEuFp81OoCYaxYM(Lcom/gmodvr/flat/TouchLayout$Button;Lcom/gmodvr/flat/CustomButtons$Entry;)Z
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/gmodvr/flat/TouchLayoutActivity;->lambda$rebuildPicker$10(Lcom/gmodvr/flat/TouchLayout$Button;Lcom/gmodvr/flat/CustomButtons$Entry;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetbusy(Lcom/gmodvr/flat/TouchLayoutActivity;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->busy:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgeticons(Lcom/gmodvr/flat/TouchLayoutActivity;)Ljava/util/Map;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->icons:Ljava/util/Map;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetlayout(Lcom/gmodvr/flat/TouchLayoutActivity;)Lcom/gmodvr/flat/TouchLayout;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->layout:Lcom/gmodvr/flat/TouchLayout;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetneutralIcons(Lcom/gmodvr/flat/TouchLayoutActivity;)Ljava/util/Map;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->neutralIcons:Ljava/util/Map;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetscreenAspect(Lcom/gmodvr/flat/TouchLayoutActivity;)F
    .registers 1

    .line 0
    iget p0, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->screenAspect:F

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetselected(Lcom/gmodvr/flat/TouchLayoutActivity;)Lcom/gmodvr/flat/TouchLayout$Button;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->selected:Lcom/gmodvr/flat/TouchLayout$Button;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetshowHidden(Lcom/gmodvr/flat/TouchLayoutActivity;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->showHidden:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetshowZones(Lcom/gmodvr/flat/TouchLayoutActivity;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->showZones:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetskin(Lcom/gmodvr/flat/TouchLayoutActivity;)Lcom/gmodvr/flat/Skin;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->skin:Lcom/gmodvr/flat/Skin;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetupdating(Lcom/gmodvr/flat/TouchLayoutActivity;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->updating:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$medited(Lcom/gmodvr/flat/TouchLayoutActivity;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/gmodvr/flat/TouchLayoutActivity;->edited()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mselect(Lcom/gmodvr/flat/TouchLayoutActivity;Lcom/gmodvr/flat/TouchLayout$Button;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gmodvr/flat/TouchLayoutActivity;->select(Lcom/gmodvr/flat/TouchLayout$Button;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 48
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 50
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->worker:Ljava/util/concurrent/ExecutorService;

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->icons:Ljava/util/Map;

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->neutralIcons:Ljava/util/Map;

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->customTextures:Ljava/util/Map;

    const/4 v0, 0x4

    .line 69
    new-array v1, v0, [Landroid/widget/SeekBar;

    iput-object v1, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->fields:[Landroid/widget/SeekBar;

    .line 70
    new-array v0, v0, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->labels:[Landroid/widget/TextView;

    return-void
.end method

.method private buildEditor(Ljava/lang/String;)V
    .registers 15

    .line 184
    iget-object v0, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->help:Landroid/widget/TextView;

    const-string v1, "Drag a control to move it. Drag its corner to resize. Changes apply the next time the game starts."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    new-instance v0, Lcom/gmodvr/flat/TouchLayoutActivity$Preview;

    invoke-direct {v0, p0}, Lcom/gmodvr/flat/TouchLayoutActivity$Preview;-><init>(Lcom/gmodvr/flat/TouchLayoutActivity;)V

    iput-object v0, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->preview:Lcom/gmodvr/flat/TouchLayoutActivity$Preview;

    .line 186
    iget-object v1, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->body:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 187
    invoke-static {p0}, Lcom/gmodvr/flat/Skin;->scroller(Landroid/content/Context;)Landroid/widget/ScrollView;

    move-result-object v0

    .line 188
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->inspector:Landroid/widget/LinearLayout;

    const/4 v2, 0x1

    .line 189
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 190
    iget-object v1, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->inspector:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->skin:Lcom/gmodvr/flat/Skin;

    const/high16 v7, 0x41200000    # 10.0f

    invoke-virtual {v6, v7}, Lcom/gmodvr/flat/Skin;->dp(F)I

    move-result v6

    iget-object v8, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->skin:Lcom/gmodvr/flat/Skin;

    const/high16 v9, 0x41000000    # 8.0f

    invoke-virtual {v8, v9}, Lcom/gmodvr/flat/Skin;->dp(F)I

    move-result v8

    iget-object v10, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->skin:Lcom/gmodvr/flat/Skin;

    const/high16 v11, 0x41400000    # 12.0f

    invoke-virtual {v10, v11}, Lcom/gmodvr/flat/Skin;->dp(F)I

    move-result v10

    iget-object v12, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->skin:Lcom/gmodvr/flat/Skin;

    invoke-virtual {v12, v11}, Lcom/gmodvr/flat/Skin;->dp(F)I

    move-result v12

    invoke-virtual {v1, v6, v8, v10, v12}, Landroid/view/View;->setPadding(IIII)V

    .line 191
    iget-object v1, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->inspector:Landroid/widget/LinearLayout;

    const v6, -0xede8e5

    invoke-virtual {v1, v6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 192
    iget-object v1, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->inspector:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 193
    iget-object v1, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->body:Landroid/widget/LinearLayout;

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v8, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->skin:Lcom/gmodvr/flat/Skin;

    const/high16 v10, 0x43540000    # 212.0f

    invoke-virtual {v8, v10}, Lcom/gmodvr/flat/Skin;->dp(F)I

    move-result v8

    invoke-direct {v6, v8, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 194
    invoke-direct {p0}, Lcom/gmodvr/flat/TouchLayoutActivity;->rebuildPicker()V

    .line 196
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 197
    iget-object v1, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->skin:Lcom/gmodvr/flat/Skin;

    new-instance v6, Lcom/gmodvr/flat/TouchLayoutActivity$$ExternalSyntheticLambda1;

    invoke-direct {v6, p0}, Lcom/gmodvr/flat/TouchLayoutActivity$$ExternalSyntheticLambda1;-><init>(Lcom/gmodvr/flat/TouchLayoutActivity;)V

    const-string v8, "Import"

    invoke-virtual {v1, v8, v6}, Lcom/gmodvr/flat/Skin;->secondary(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/widget/Button;

    move-result-object v1

    iput-object v1, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->importButton:Landroid/widget/Button;

    .line 198
    iget-object v1, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->skin:Lcom/gmodvr/flat/Skin;

    new-instance v6, Lcom/gmodvr/flat/TouchLayoutActivity$$ExternalSyntheticLambda2;

    invoke-direct {v6, p0}, Lcom/gmodvr/flat/TouchLayoutActivity$$ExternalSyntheticLambda2;-><init>(Lcom/gmodvr/flat/TouchLayoutActivity;)V

    const-string v8, "Export"

    invoke-virtual {v1, v8, v6}, Lcom/gmodvr/flat/Skin;->secondary(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/widget/Button;

    move-result-object v1

    iput-object v1, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->exportButton:Landroid/widget/Button;

    .line 199
    iget-object v1, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->importButton:Landroid/widget/Button;

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x2

    invoke-direct {v6, v3, v8, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 200
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v3, v8, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 201
    iget-object v5, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->skin:Lcom/gmodvr/flat/Skin;

    const/high16 v6, 0x40c00000    # 6.0f

    invoke-virtual {v5, v6}, Lcom/gmodvr/flat/Skin;->dp(F)I

    move-result v5

    iput v5, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 202
    iget-object v5, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->exportButton:Landroid/widget/Button;

    invoke-virtual {v0, v5, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 204
    new-instance v1, Lcom/gmodvr/flat/ControlColorPicker;

    iget-object v5, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->skin:Lcom/gmodvr/flat/Skin;

    new-instance v8, Lcom/gmodvr/flat/TouchLayoutActivity$$ExternalSyntheticLambda3;

    invoke-direct {v8, p0}, Lcom/gmodvr/flat/TouchLayoutActivity$$ExternalSyntheticLambda3;-><init>(Lcom/gmodvr/flat/TouchLayoutActivity;)V

    invoke-direct {v1, v5, v8}, Lcom/gmodvr/flat/ControlColorPicker;-><init>(Lcom/gmodvr/flat/Skin;Ljava/util/function/IntConsumer;)V

    iput-object v1, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->colorPicker:Lcom/gmodvr/flat/ControlColorPicker;

    .line 210
    iget-object v5, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->inspector:Landroid/widget/LinearLayout;

    iget-object v8, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->skin:Lcom/gmodvr/flat/Skin;

    invoke-virtual {v8, v7}, Lcom/gmodvr/flat/Skin;->below(F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v5, v1, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 211
    iget-object v1, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->inspector:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->skin:Lcom/gmodvr/flat/Skin;

    new-instance v7, Lcom/gmodvr/flat/TouchLayoutActivity$$ExternalSyntheticLambda4;

    invoke-direct {v7, p0}, Lcom/gmodvr/flat/TouchLayoutActivity$$ExternalSyntheticLambda4;-><init>(Lcom/gmodvr/flat/TouchLayoutActivity;)V

    const-string v8, "Apply color to all buttons"

    invoke-virtual {v5, v8, v7}, Lcom/gmodvr/flat/Skin;->secondary(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/widget/Button;

    move-result-object v5

    iget-object v7, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->skin:Lcom/gmodvr/flat/Skin;

    const/high16 v8, 0x40800000    # 4.0f

    .line 216
    invoke-virtual {v7, v8}, Lcom/gmodvr/flat/Skin;->below(F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    .line 211
    invoke-virtual {v1, v5, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 217
    iget-object v1, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->inspector:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->skin:Lcom/gmodvr/flat/Skin;

    invoke-virtual {v5, v9}, Lcom/gmodvr/flat/Skin;->below(F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v1, v0, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 219
    const-string v0, "Width"

    const-string v1, "Height"

    const-string v5, "Horizontal position"

    const-string v7, "Vertical position"

    filled-new-array {v5, v7, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    move v1, v3

    .line 220
    :goto_fd
    iget-object v5, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->fields:[Landroid/widget/SeekBar;

    array-length v5, v5

    const v7, -0x72665d

    if-ge v1, v5, :cond_170

    .line 222
    iget-object v5, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->labels:[Landroid/widget/TextView;

    iget-object v8, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->skin:Lcom/gmodvr/flat/Skin;

    const-string v10, ""

    invoke-virtual {v8, v10, v11, v7}, Lcom/gmodvr/flat/Skin;->text(Ljava/lang/CharSequence;FI)Landroid/widget/TextView;

    move-result-object v7

    aput-object v7, v5, v1

    .line 223
    iget-object v5, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->inspector:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->labels:[Landroid/widget/TextView;

    aget-object v7, v7, v1

    iget-object v8, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->skin:Lcom/gmodvr/flat/Skin;

    invoke-virtual {v8, v6}, Lcom/gmodvr/flat/Skin;->below(F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 224
    new-instance v5, Landroid/widget/SeekBar;

    invoke-direct {v5, p0}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    .line 225
    new-instance v7, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v7}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 226
    iget-object v8, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->skin:Lcom/gmodvr/flat/Skin;

    iget v8, v8, Lcom/gmodvr/flat/Skin;->accent:I

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 227
    iget-object v8, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->skin:Lcom/gmodvr/flat/Skin;

    invoke-virtual {v8, v9}, Lcom/gmodvr/flat/Skin;->dp(F)I

    move-result v8

    iget-object v10, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->skin:Lcom/gmodvr/flat/Skin;

    const/high16 v12, 0x41a00000    # 20.0f

    invoke-virtual {v10, v12}, Lcom/gmodvr/flat/Skin;->dp(F)I

    move-result v10

    invoke-virtual {v7, v8, v10}, Landroid/graphics/drawable/GradientDrawable;->setSize(II)V

    .line 228
    invoke-virtual {v5, v7}, Landroid/widget/AbsSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    const/16 v7, 0x3e8

    .line 229
    invoke-virtual {v5, v7}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 230
    aget-object v7, v0, v1

    invoke-virtual {v5, v7}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 231
    new-instance v7, Lcom/gmodvr/flat/TouchLayoutActivity$1;

    invoke-direct {v7, p0, v1}, Lcom/gmodvr/flat/TouchLayoutActivity$1;-><init>(Lcom/gmodvr/flat/TouchLayoutActivity;I)V

    invoke-virtual {v5, v7}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 246
    iget-object v7, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->fields:[Landroid/widget/SeekBar;

    aput-object v5, v7, v1

    .line 247
    iget-object v7, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->inspector:Landroid/widget/LinearLayout;

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v10, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->skin:Lcom/gmodvr/flat/Skin;

    const/high16 v12, 0x42000000    # 32.0f

    invoke-virtual {v10, v12}, Lcom/gmodvr/flat/Skin;->dp(F)I

    move-result v10

    invoke-direct {v8, v4, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v5, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_fd

    .line 249
    :cond_170
    iget-object v0, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->skin:Lcom/gmodvr/flat/Skin;

    const-string v1, "Show button"

    invoke-virtual {v0, v1}, Lcom/gmodvr/flat/Skin;->check(Ljava/lang/String;)Landroid/widget/CheckBox;

    move-result-object v0

    iput-object v0, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->visible:Landroid/widget/CheckBox;

    .line 250
    new-instance v1, Lcom/gmodvr/flat/TouchLayoutActivity$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/gmodvr/flat/TouchLayoutActivity$$ExternalSyntheticLambda5;-><init>(Lcom/gmodvr/flat/TouchLayoutActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 255
    iget-object v0, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->inspector:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->visible:Landroid/widget/CheckBox;

    iget-object v4, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->skin:Lcom/gmodvr/flat/Skin;

    invoke-virtual {v4, v6}, Lcom/gmodvr/flat/Skin;->below(F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 256
    iget-object v0, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->skin:Lcom/gmodvr/flat/Skin;

    const-string v1, "Snap to grid"

    invoke-virtual {v0, v1}, Lcom/gmodvr/flat/Skin;->check(Ljava/lang/String;)Landroid/widget/CheckBox;

    move-result-object v0

    iput-object v0, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->snap:Landroid/widget/CheckBox;

    .line 257
    iget-object v1, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->layout:Lcom/gmodvr/flat/TouchLayout;

    iget-boolean v1, v1, Lcom/gmodvr/flat/TouchLayout;->snap:Z

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 258
    iget-object v0, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->snap:Landroid/widget/CheckBox;

    new-instance v1, Lcom/gmodvr/flat/TouchLayoutActivity$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/gmodvr/flat/TouchLayoutActivity$$ExternalSyntheticLambda6;-><init>(Lcom/gmodvr/flat/TouchLayoutActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 263
    iget-object v0, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->inspector:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->snap:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 264
    iget-object v0, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->skin:Lcom/gmodvr/flat/Skin;

    const-string v1, "Show move / look zones"

    invoke-virtual {v0, v1}, Lcom/gmodvr/flat/Skin;->check(Ljava/lang/String;)Landroid/widget/CheckBox;

    move-result-object v0

    .line 265
    iget-boolean v1, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->showZones:Z

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 266
    new-instance v1, Lcom/gmodvr/flat/TouchLayoutActivity$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/gmodvr/flat/TouchLayoutActivity$$ExternalSyntheticLambda7;-><init>(Lcom/gmodvr/flat/TouchLayoutActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 267
    iget-object v1, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->inspector:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 268
    iget-object v0, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->skin:Lcom/gmodvr/flat/Skin;

    const-string v1, "Show hidden buttons"

    invoke-virtual {v0, v1}, Lcom/gmodvr/flat/Skin;->check(Ljava/lang/String;)Landroid/widget/CheckBox;

    move-result-object v0

    .line 269
    iget-boolean v1, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->showHidden:Z

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 270
    new-instance v1, Lcom/gmodvr/flat/TouchLayoutActivity$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lcom/gmodvr/flat/TouchLayoutActivity$$ExternalSyntheticLambda8;-><init>(Lcom/gmodvr/flat/TouchLayoutActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 271
    iget-object v1, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->inspector:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 272
    iget-object v0, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->inspector:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->skin:Lcom/gmodvr/flat/Skin;

    const-string v4, "Controls stay visible here while editing, even at low opacity."

    const/high16 v5, 0x41300000    # 11.0f

    invoke-virtual {v1, v4, v5, v7}, Lcom/gmodvr/flat/Skin;->text(Ljava/lang/CharSequence;FI)Landroid/widget/TextView;

    move-result-object v1

    iget-object v4, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->skin:Lcom/gmodvr/flat/Skin;

    invoke-virtual {v4, v9}, Lcom/gmodvr/flat/Skin;->below(F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 273
    iget-object v0, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->save:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 274
    iget-object v0, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->layout:Lcom/gmodvr/flat/TouchLayout;

    invoke-virtual {v0, p1}, Lcom/gmodvr/flat/TouchLayout;->find(Ljava/lang/String;)Lcom/gmodvr/flat/TouchLayout$Button;

    move-result-object v0

    if-eqz v0, :cond_20e

    iget-object v0, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->layout:Lcom/gmodvr/flat/TouchLayout;

    invoke-virtual {v0, p1}, Lcom/gmodvr/flat/TouchLayout;->find(Ljava/lang/String;)Lcom/gmodvr/flat/TouchLayout$Button;

    move-result-object p1

    goto :goto_233

    .line 275
    :cond_20e
    iget-object p1, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->layout:Lcom/gmodvr/flat/TouchLayout;

    iget-object p1, p1, Lcom/gmodvr/flat/TouchLayout;->buttons:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/gmodvr/flat/TouchLayoutActivity$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Lcom/gmodvr/flat/TouchLayoutActivity$$ExternalSyntheticLambda9;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p1

    iget-object v0, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->layout:Lcom/gmodvr/flat/TouchLayout;

    iget-object v0, v0, Lcom/gmodvr/flat/TouchLayout;->buttons:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gmodvr/flat/TouchLayout$Button;

    invoke-virtual {p1, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/gmodvr/flat/TouchLayout$Button;

    .line 274
    :goto_233
    invoke-direct {p0, p1}, Lcom/gmodvr/flat/TouchLayoutActivity;->select(Lcom/gmodvr/flat/TouchLayout$Button;)V

    .line 276
    iget-boolean p1, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->busy:Z

    invoke-direct {p0, p1}, Lcom/gmodvr/flat/TouchLayoutActivity;->setBusy(Z)V

    return-void
.end method

.method private cancel()V
    .registers 3

    .line 455
    iget-boolean v0, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->busy:Z

    if-eqz v0, :cond_5

    return-void

    .line 456
    :cond_5
    iget-boolean v0, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->changed:Z

    if-nez v0, :cond_d

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 457
    :cond_d
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Discard layout changes?"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/gmodvr/flat/TouchLayoutActivity$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0}, Lcom/gmodvr/flat/TouchLayoutActivity$$ExternalSyntheticLambda10;-><init>(Lcom/gmodvr/flat/TouchLayoutActivity;)V

    .line 458
    const-string p0, "Discard"

    invoke-virtual {v0, p0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    const-string v0, "Keep editing"

    const/4 v1, 0x0

    .line 459
    invoke-virtual {p0, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private edited()V
    .registers 2

    const/4 v0, 0x1

    .line 315
    iput-boolean v0, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->changed:Z

    .line 316
    iget-object v0, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->selected:Lcom/gmodvr/flat/TouchLayout$Button;

    invoke-direct {p0, v0}, Lcom/gmodvr/flat/TouchLayoutActivity;->select(Lcom/gmodvr/flat/TouchLayout$Button;)V

    return-void
.end method

.method private static enable(Landroid/view/View;Z)V
    .registers 4

    .line 443
    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 444
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1a

    .line 445
    check-cast p0, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    .line 446
    :goto_a
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1a

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/gmodvr/flat/TouchLayoutActivity;->enable(Landroid/view/View;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_1a
    return-void
.end method

.method private error(Ljava/lang/String;)V
    .registers 3

    .line 451
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string p0, "Control layout"

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    const-string p1, "OK"

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private exportControls()V
    .registers 4

    .line 351
    iget-object v0, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->layout:Lcom/gmodvr/flat/TouchLayout;

    if-eqz v0, :cond_39

    iget-boolean v1, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->busy:Z

    if-eqz v1, :cond_9

    goto :goto_39

    .line 354
    :cond_9
    :try_start_9
    iget-object v1, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->custom:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/gmodvr/flat/TouchLayoutTransfer;->export(Lcom/gmodvr/flat/TouchLayout;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->pendingExport:Ljava/lang/String;

    .line 355
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CREATE_DOCUMENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "application/json"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.category.OPENABLE"

    .line 356
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.TITLE"

    const-string v2, "gmod-controls.json"

    .line 357
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x2

    .line 355
    invoke-direct {p0, v0, v1}, Lcom/gmodvr/flat/TouchLayoutActivity;->openPicker(Landroid/content/Intent;I)V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_30} :catch_31

    goto :goto_39

    :catch_31
    move-exception v0

    .line 358
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/gmodvr/flat/TouchLayoutActivity;->error(Ljava/lang/String;)V

    :cond_39
    :goto_39
    return-void
.end method

.method private importControls()V
    .registers 3

    .line 345
    iget-object v0, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->layout:Lcom/gmodvr/flat/TouchLayout;

    if-eqz v0, :cond_20

    iget-boolean v0, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->busy:Z

    if-eqz v0, :cond_9

    goto :goto_20

    .line 346
    :cond_9
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.OPEN_DOCUMENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "*/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.category.OPENABLE"

    .line 347
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x1

    .line 346
    invoke-direct {p0, v0, v1}, Lcom/gmodvr/flat/TouchLayoutActivity;->openPicker(Landroid/content/Intent;I)V

    :cond_20
    :goto_20
    return-void
.end method

.method private synthetic lambda$buildEditor$3(I)V
    .registers 3

    .line 205
    iget-boolean v0, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->updating:Z

    if-nez v0, :cond_23

    iget-boolean v0, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->busy:Z

    if-nez v0, :cond_23

    iget-object v0, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->selected:Lcom/gmodvr/flat/TouchLayout$Button;

    if-eqz v0, :cond_23

    .line 206
    invoke-virtual {v0}, Lcom/gmodvr/flat/TouchLayout$Button;->color()I

    move-result v0

    if-ne v0, p1, :cond_1b

    iget-object v0, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->selected:Lcom/gmodvr/flat/TouchLayout$Button;

    iget v0, v0, Lcom/gmodvr/flat/TouchLayout$Button;->flags:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_1b

    goto :goto_23

    .line 207
    :cond_1b
    iget-object v0, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->selected:Lcom/gmodvr/flat/TouchLayout$Button;

    invoke-virtual {v0, p1}, Lcom/gmodvr/flat/TouchLayout$Button;->color(I)V

    .line 208
    invoke-direct {p0}, Lcom/gmodvr/flat/TouchLayoutActivity;->edited()V

    :cond_23
    :goto_23
    return-void
.end method

.method private synthetic lambda$buildEditor$4()V
    .registers 5

    .line 212
    iget-object v0, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->selected:Lcom/gmodvr/flat/TouchLayout$Button;

    if-eqz v0, :cond_2e

    iget-boolean v1, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->busy:Z

    if-eqz v1, :cond_9

    goto :goto_2e

    .line 213
    :cond_9
    invoke-virtual {v0}, Lcom/gmodvr/flat/TouchLayout$Button;->color()I

    move-result v0

    .line 214
    iget-object v1, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->layout:Lcom/gmodvr/flat/TouchLayout;

    iget-object v1, v1, Lcom/gmodvr/flat/TouchLayout;->buttons:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_15
    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gmodvr/flat/TouchLayout$Button;

    invoke-virtual {v2}, Lcom/gmodvr/flat/TouchLayout$Button;->zone()Z

    move-result v3

    if-nez v3, :cond_15

    invoke-virtual {v2, v0}, Lcom/gmodvr/flat/TouchLayout$Button;->color(I)V

    goto :goto_15

    .line 215
    :cond_2b
    invoke-direct {p0}, Lcom/gmodvr/flat/TouchLayoutActivity;->edited()V

    :cond_2e
    :goto_2e
    return-void
.end method

.method private synthetic lambda$buildEditor$5(Landroid/widget/CompoundButton;Z)V
    .registers 3

    .line 251
    iget-boolean p1, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->updating:Z

    if-nez p1, :cond_1a

    iget-object p1, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->selected:Lcom/gmodvr/flat/TouchLayout$Button;

    if-nez p1, :cond_9

    goto :goto_1a

    :cond_9
    if-eqz p2, :cond_12

    .line 252
    iget p2, p1, Lcom/gmodvr/flat/TouchLayout$Button;->flags:I

    and-int/lit8 p2, p2, -0x2

    :goto_f
    iput p2, p1, Lcom/gmodvr/flat/TouchLayout$Button;->flags:I

    goto :goto_17

    :cond_12
    iget p2, p1, Lcom/gmodvr/flat/TouchLayout$Button;->flags:I

    or-int/lit8 p2, p2, 0x1

    goto :goto_f

    .line 253
    :goto_17
    invoke-direct {p0}, Lcom/gmodvr/flat/TouchLayoutActivity;->edited()V

    :cond_1a
    :goto_1a
    return-void
.end method

.method private synthetic lambda$buildEditor$6(Landroid/widget/CompoundButton;Z)V
    .registers 9

    .line 259
    iget-object p1, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->layout:Lcom/gmodvr/flat/TouchLayout;

    iput-boolean p2, p1, Lcom/gmodvr/flat/TouchLayout;->snap:Z

    if-eqz p2, :cond_2b

    .line 260
    iget-object p1, p1, Lcom/gmodvr/flat/TouchLayout;->buttons:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    move-object v1, p2

    check-cast v1, Lcom/gmodvr/flat/TouchLayout$Button;

    iget-object v0, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->layout:Lcom/gmodvr/flat/TouchLayout;

    iget v2, v1, Lcom/gmodvr/flat/TouchLayout$Button;->x1:F

    iget v3, v1, Lcom/gmodvr/flat/TouchLayout$Button;->y1:F

    invoke-virtual {v1}, Lcom/gmodvr/flat/TouchLayout$Button;->width()F

    move-result v4

    invoke-virtual {v1}, Lcom/gmodvr/flat/TouchLayout$Button;->height()F

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/gmodvr/flat/TouchLayout;->rect(Lcom/gmodvr/flat/TouchLayout$Button;FFFF)V

    goto :goto_c

    .line 261
    :cond_2b
    invoke-direct {p0}, Lcom/gmodvr/flat/TouchLayoutActivity;->edited()V

    return-void
.end method

.method private synthetic lambda$buildEditor$7(Landroid/widget/CompoundButton;Z)V
    .registers 3

    .line 266
    iput-boolean p2, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->showZones:Z

    iget-object p0, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->preview:Lcom/gmodvr/flat/TouchLayoutActivity$Preview;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private synthetic lambda$buildEditor$8(Landroid/widget/CompoundButton;Z)V
    .registers 3

    .line 270
    iput-boolean p2, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->showHidden:Z

    iget-object p0, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->preview:Lcom/gmodvr/flat/TouchLayoutActivity$Preview;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private static synthetic lambda$buildEditor$9(Lcom/gmodvr/flat/TouchLayout$Button;)Z
    .registers 2

    .line 275
    invoke-virtual {p0}, Lcom/gmodvr/flat/TouchLayout$Button;->zone()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {p0}, Lcom/gmodvr/flat/TouchLayout$Button;->hidden()Z

    move-result p0

    if-nez p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method private synthetic lambda$cancel$17(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 458
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private synthetic lambda$onActivityResult$13(Ljava/lang/String;)V
    .registers 4

    .line 391
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1f

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_1f

    :cond_d
    const/4 v0, 0x0

    .line 392
    invoke-direct {p0, v0}, Lcom/gmodvr/flat/TouchLayoutActivity;->setBusy(Z)V

    .line 393
    iget-object v1, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->help:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 394
    const-string p1, "Controls exported"

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_1f
    :goto_1f
    return-void
.end method

.method private synthetic lambda$onActivityResult$14(Lcom/gmodvr/flat/TouchLayoutTransfer$Imported;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;)V
    .registers 8

    .line 406
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_61

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_61

    .line 407
    :cond_d
    iget-object v0, p1, Lcom/gmodvr/flat/TouchLayoutTransfer$Imported;->layout:Lcom/gmodvr/flat/TouchLayout;

    iput-object v0, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->layout:Lcom/gmodvr/flat/TouchLayout;

    .line 408
    iput-object p2, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->custom:Ljava/util/List;

    .line 409
    iget-boolean p2, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->customChanged:Z

    iget-object v0, p1, Lcom/gmodvr/flat/TouchLayoutTransfer$Imported;->custom:Ljava/util/List;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1d

    move v0, v1

    goto :goto_1e

    :cond_1d
    move v0, v2

    :goto_1e
    or-int/2addr p2, v0

    iput-boolean p2, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->customChanged:Z

    .line 410
    iget-object p2, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->icons:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->clear()V

    iget-object p2, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->icons:Ljava/util/Map;

    invoke-interface {p2, p3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 411
    iget-object p2, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->neutralIcons:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->clear()V

    .line 412
    iget-object p2, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->customTextures:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->clear()V

    iget-object p2, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->customTextures:Ljava/util/Map;

    invoke-interface {p2, p4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 413
    iput-boolean v1, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->changed:Z

    .line 414
    iget-object p2, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->body:Landroid/widget/LinearLayout;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViews()V

    const/4 p2, 0x0

    .line 415
    iput-object p2, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->picker:Landroid/widget/Spinner;

    .line 416
    invoke-direct {p0, p2}, Lcom/gmodvr/flat/TouchLayoutActivity;->buildEditor(Ljava/lang/String;)V

    .line 417
    invoke-direct {p0, v2}, Lcom/gmodvr/flat/TouchLayoutActivity;->setBusy(Z)V

    .line 418
    iget-object p2, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->help:Landroid/widget/TextView;

    iget-object p1, p1, Lcom/gmodvr/flat/TouchLayoutTransfer$Imported;->custom:Ljava/util/List;

    if-nez p1, :cond_53

    .line 419
    const-string p1, "Layout imported. Tap Save to apply. Your custom buttons are kept."

    goto :goto_55

    .line 420
    :cond_53
    const-string p1, "Controls imported. Tap Save to apply the layout and replace your custom buttons."

    .line 418
    :goto_55
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 421
    const-string p1, "Controls imported \u2014 tap Save to apply"

    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_61
    :goto_61
    return-void
.end method

.method private synthetic lambda$onActivityResult$15(Ljava/lang/String;ILjava/lang/Exception;)V
    .registers 5

    .line 426
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_3e

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_3e

    :cond_d
    const/4 v0, 0x0

    .line 427
    invoke-direct {p0, v0}, Lcom/gmodvr/flat/TouchLayoutActivity;->setBusy(Z)V

    .line 428
    iget-object v0, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->help:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 429
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Could not "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    if-ne p2, v0, :cond_26

    const-string p2, "import"

    goto :goto_28

    :cond_26
    const-string p2, "export"

    :goto_28
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " controls: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/gmodvr/flat/TouchLayoutActivity;->error(Ljava/lang/String;)V

    :cond_3e
    :goto_3e
    return-void
.end method

.method private synthetic lambda$onActivityResult$16(ILjava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V
    .registers 11

    const/4 v0, 0x2

    if-ne p1, v0, :cond_45

    if-eqz p2, :cond_3d

    .line 386
    :try_start_5
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wt"

    invoke-virtual {v0, p3, v1}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object p3
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_f} :catch_26
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_f} :catch_26

    if-eqz p3, :cond_2a

    .line 388
    :try_start_11
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/io/OutputStream;->write([B)V
    :try_end_1a
    .catchall {:try_start_11 .. :try_end_1a} :catchall_28

    .line 389
    :try_start_1a
    invoke-virtual {p3}, Ljava/io/OutputStream;->close()V

    .line 390
    new-instance p2, Lcom/gmodvr/flat/TouchLayoutActivity$$ExternalSyntheticLambda11;

    invoke-direct {p2, p0, p4}, Lcom/gmodvr/flat/TouchLayoutActivity$$ExternalSyntheticLambda11;-><init>(Lcom/gmodvr/flat/TouchLayoutActivity;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_25} :catch_26
    .catch Ljava/lang/RuntimeException; {:try_start_1a .. :try_end_25} :catch_26

    goto :goto_8d

    :catch_26
    move-exception p2

    goto :goto_85

    :catchall_28
    move-exception p2

    goto :goto_32

    .line 387
    :cond_2a
    :try_start_2a
    new-instance p2, Ljava/io/IOException;

    const-string v0, "Could not write the selected file."

    invoke-direct {p2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_32
    .catchall {:try_start_2a .. :try_end_32} :catchall_28

    :goto_32
    if-eqz p3, :cond_3c

    .line 386
    :try_start_34
    invoke-virtual {p3}, Ljava/io/OutputStream;->close()V
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_38

    goto :goto_3c

    :catchall_38
    move-exception p3

    :try_start_39
    invoke-virtual {p2, p3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3c
    :goto_3c
    throw p2

    .line 385
    :cond_3d
    new-instance p2, Ljava/io/IOException;

    const-string p3, "The export was interrupted. Tap Export to try again."

    invoke-direct {p2, p3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 398
    :cond_45
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p2
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_4d} :catch_26
    .catch Ljava/lang/RuntimeException; {:try_start_39 .. :try_end_4d} :catch_26

    .line 399
    :try_start_4d
    iget p3, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->screenAspect:F

    invoke-static {p2, p3}, Lcom/gmodvr/flat/TouchLayoutTransfer;->read(Ljava/io/InputStream;F)Lcom/gmodvr/flat/TouchLayoutTransfer$Imported;

    move-result-object v2
    :try_end_53
    .catchall {:try_start_4d .. :try_end_53} :catchall_79

    if-eqz p2, :cond_58

    .line 400
    :try_start_55
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    .line 401
    :cond_58
    iget-object p2, v2, Lcom/gmodvr/flat/TouchLayoutTransfer$Imported;->custom:Ljava/util/List;

    if-nez p2, :cond_5e

    iget-object p2, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->custom:Ljava/util/List;

    :cond_5e
    move-object v3, p2

    .line 402
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 403
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 404
    iget-object p2, v2, Lcom/gmodvr/flat/TouchLayoutTransfer$Imported;->layout:Lcom/gmodvr/flat/TouchLayout;

    invoke-direct {p0, p2, v3, v4, v5}, Lcom/gmodvr/flat/TouchLayoutActivity;->loadArtwork(Lcom/gmodvr/flat/TouchLayout;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;)V

    .line 405
    new-instance p2, Lcom/gmodvr/flat/TouchLayoutActivity$$ExternalSyntheticLambda12;

    move-object v0, p2

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/gmodvr/flat/TouchLayoutActivity$$ExternalSyntheticLambda12;-><init>(Lcom/gmodvr/flat/TouchLayoutActivity;Lcom/gmodvr/flat/TouchLayoutTransfer$Imported;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;)V

    invoke-virtual {p0, p2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_78
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_78} :catch_26
    .catch Ljava/lang/RuntimeException; {:try_start_55 .. :try_end_78} :catch_26

    goto :goto_8d

    :catchall_79
    move-exception p3

    if-eqz p2, :cond_84

    .line 398
    :try_start_7c
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_7f
    .catchall {:try_start_7c .. :try_end_7f} :catchall_80

    goto :goto_84

    :catchall_80
    move-exception p2

    :try_start_81
    invoke-virtual {p3, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_84
    :goto_84
    throw p3
    :try_end_85
    .catch Ljava/io/IOException; {:try_start_81 .. :try_end_85} :catch_26
    .catch Ljava/lang/RuntimeException; {:try_start_81 .. :try_end_85} :catch_26

    .line 425
    :goto_85
    new-instance p3, Lcom/gmodvr/flat/TouchLayoutActivity$$ExternalSyntheticLambda13;

    invoke-direct {p3, p0, p4, p1, p2}, Lcom/gmodvr/flat/TouchLayoutActivity$$ExternalSyntheticLambda13;-><init>(Lcom/gmodvr/flat/TouchLayoutActivity;Ljava/lang/String;ILjava/lang/Exception;)V

    invoke-virtual {p0, p3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_8d
    return-void
.end method

.method private synthetic lambda$onCreate$0(Landroid/os/Bundle;)V
    .registers 3

    .line 112
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1a

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_1a

    :cond_d
    if-nez p1, :cond_11

    const/4 p1, 0x0

    goto :goto_17

    .line 113
    :cond_11
    const-string v0, "selected"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_17
    invoke-direct {p0, p1}, Lcom/gmodvr/flat/TouchLayoutActivity;->buildEditor(Ljava/lang/String;)V

    :cond_1a
    :goto_1a
    return-void
.end method

.method private synthetic lambda$onCreate$1(Ljava/lang/Exception;)V
    .registers 5

    .line 117
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2f

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_2f

    .line 118
    :cond_d
    iget-object v0, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->help:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not open the layout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    iget-object p0, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->help:Landroid/widget/TextView;

    const p1, -0x179fb1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_2f
    :goto_2f
    return-void
.end method

.method private synthetic lambda$onCreate$2(Landroid/os/Bundle;)V
    .registers 3

    .line 110
    :try_start_0
    invoke-direct {p0, p1}, Lcom/gmodvr/flat/TouchLayoutActivity;->load(Landroid/os/Bundle;)V

    .line 111
    new-instance v0, Lcom/gmodvr/flat/TouchLayoutActivity$$ExternalSyntheticLambda19;

    invoke-direct {v0, p0, p1}, Lcom/gmodvr/flat/TouchLayoutActivity$$ExternalSyntheticLambda19;-><init>(Lcom/gmodvr/flat/TouchLayoutActivity;Landroid/os/Bundle;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_b} :catch_c
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_b} :catch_c

    goto :goto_15

    :catch_c
    move-exception p1

    .line 116
    new-instance v0, Lcom/gmodvr/flat/TouchLayoutActivity$$ExternalSyntheticLambda20;

    invoke-direct {v0, p0, p1}, Lcom/gmodvr/flat/TouchLayoutActivity$$ExternalSyntheticLambda20;-><init>(Lcom/gmodvr/flat/TouchLayoutActivity;Ljava/lang/Exception;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_15
    return-void
.end method

.method private static synthetic lambda$rebuildPicker$10(Lcom/gmodvr/flat/TouchLayout$Button;Lcom/gmodvr/flat/CustomButtons$Entry;)Z
    .registers 2

    .line 283
    invoke-virtual {p1}, Lcom/gmodvr/flat/CustomButtons$Entry;->buttonName()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/gmodvr/flat/TouchLayout$Button;->name:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$reset$11(Lcom/gmodvr/flat/TouchLayout$Button;)Z
    .registers 2

    .line 327
    invoke-virtual {p0}, Lcom/gmodvr/flat/TouchLayout$Button;->zone()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {p0}, Lcom/gmodvr/flat/TouchLayout$Button;->hidden()Z

    move-result p0

    if-nez p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method private synthetic lambda$reset$12(Landroid/content/DialogInterface;I)V
    .registers 5

    .line 325
    :try_start_0
    iget-object p1, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->layout:Lcom/gmodvr/flat/TouchLayout;

    iget-object p2, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->defaults:Ljava/lang/String;

    iget v0, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->screenAspect:F

    invoke-static {p2, v0}, Lcom/gmodvr/flat/TouchLayout;->parse(Ljava/lang/String;F)Lcom/gmodvr/flat/TouchLayout;

    move-result-object p2

    iget-object v0, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->custom:Ljava/util/List;

    iget-object v1, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->customTextures:Ljava/util/Map;

    invoke-virtual {p1, p2, v0, v1}, Lcom/gmodvr/flat/TouchLayout;->reset(Lcom/gmodvr/flat/TouchLayout;Ljava/util/List;Ljava/util/Map;)V

    .line 326
    invoke-direct {p0}, Lcom/gmodvr/flat/TouchLayoutActivity;->rebuildPicker()V

    .line 327
    iget-object p1, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->layout:Lcom/gmodvr/flat/TouchLayout;

    iget-object p1, p1, Lcom/gmodvr/flat/TouchLayout;->buttons:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance p2, Lcom/gmodvr/flat/TouchLayoutActivity$$ExternalSyntheticLambda22;

    invoke-direct {p2}, Lcom/gmodvr/flat/TouchLayoutActivity$$ExternalSyntheticLambda22;-><init>()V

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p1

    iget-object p2, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->layout:Lcom/gmodvr/flat/TouchLayout;

    iget-object p2, p2, Lcom/gmodvr/flat/TouchLayout;->buttons:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/gmodvr/flat/TouchLayout$Button;

    invoke-virtual {p1, p2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/gmodvr/flat/TouchLayout$Button;

    iput-object p1, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->selected:Lcom/gmodvr/flat/TouchLayout$Button;

    .line 328
    invoke-direct {p0}, Lcom/gmodvr/flat/TouchLayoutActivity;->edited()V
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3f} :catch_40

    goto :goto_48

    :catch_40
    move-exception p1

    .line 329
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/gmodvr/flat/TouchLayoutActivity;->error(Ljava/lang/String;)V

    :goto_48
    return-void
.end method

.method private load(Landroid/os/Bundle;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 126
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "profile"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gmodvr/flat/GameContentProfile;->forId(Ljava/lang/String;)Lcom/gmodvr/flat/GameContentProfile;

    move-result-object v0

    if-nez v0, :cond_12

    .line 127
    sget-object v0, Lcom/gmodvr/flat/GameContentProfile;->DEFAULT:Lcom/gmodvr/flat/GameContentProfile;

    .line 128
    :cond_12
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "mod"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 129
    invoke-static {p0}, Lcom/gmodvr/flat/Storage;->lock(Landroid/content/Context;)Lcom/gmodvr/flat/Storage$Lease;

    move-result-object v2

    if-nez v1, :cond_2a

    .line 130
    :try_start_22
    invoke-static {p0, v0}, Lcom/gmodvr/flat/Storage;->user(Landroid/content/Context;Lcom/gmodvr/flat/GameContentProfile;)Ljava/io/File;

    move-result-object v0

    goto :goto_3b

    :catchall_27
    move-exception p0

    goto/16 :goto_133

    .line 131
    :cond_2a
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/gmodvr/flat/GameMod;->read(Ljava/io/File;)Lcom/gmodvr/flat/GameMod;

    move-result-object v1

    invoke-static {p0}, Lcom/gmodvr/flat/Storage;->root(Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Lcom/gmodvr/flat/GameMod;->userDirectory(Ljava/io/File;Lcom/gmodvr/flat/GameContentProfile;)Ljava/io/File;

    move-result-object v0

    :goto_3b
    iput-object v0, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->user:Ljava/io/File;

    .line 132
    invoke-static {v0}, Lcom/gmodvr/flat/Storage;->recoverUser(Ljava/io/File;)V

    .line 133
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->user:Ljava/io/File;

    const-string v3, "cfg/config.cfg"

    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/gmodvr/flat/TouchLayoutActivity;->text(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    if-nez p1, :cond_54

    .line 134
    invoke-static {v0}, Lcom/gmodvr/flat/TouchLayout;->profileFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_5c

    :cond_54
    const-string v0, "profileFile"

    const-string v1, "touch.cfg"

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_5c
    iput-object v0, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->profileFile:Ljava/lang/String;

    .line 135
    iget-object v0, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->user:Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cfg/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->profileFile:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/gmodvr/flat/Storage;->child(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->file:Ljava/io/File;

    if-nez p1, :cond_80

    .line 136
    invoke-static {v0}, Lcom/gmodvr/flat/TouchLayoutActivity;->text(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    goto :goto_88

    :cond_80
    const-string v0, "original"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_88
    iput-object v0, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->original:Ljava/lang/String;

    .line 137
    const-string v0, "touch_default.cfg"

    invoke-static {p0, v0}, Lcom/gmodvr/flat/RuntimeAssets;->assetText(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->defaults:Ljava/lang/String;

    const/4 v0, 0x0

    if-nez p1, :cond_97

    move-object v1, v0

    goto :goto_9d

    .line 138
    :cond_97
    const-string v1, "draft"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_9d
    if-eqz v1, :cond_a0

    goto :goto_b1

    .line 139
    :cond_a0
    iget-object v1, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->original:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_af

    iget-object v1, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->defaults:Ljava/lang/String;

    goto :goto_b1

    :cond_af
    iget-object v1, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->original:Ljava/lang/String;

    :goto_b1
    iget v3, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->screenAspect:F

    invoke-static {v1, v3}, Lcom/gmodvr/flat/TouchLayout;->parse(Ljava/lang/String;F)Lcom/gmodvr/flat/TouchLayout;

    move-result-object v1

    iput-object v1, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->layout:Lcom/gmodvr/flat/TouchLayout;

    const/4 v1, 0x0

    const/4 v3, 0x1

    if-eqz p1, :cond_c7

    .line 140
    const-string v4, "changed"

    invoke-virtual {p1, v4}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c7

    move v4, v3

    goto :goto_c8

    :cond_c7
    move v4, v1

    :goto_c8
    iput-boolean v4, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->changed:Z

    .line 141
    invoke-static {p0}, Lcom/gmodvr/flat/CustomButtons;->file(Landroid/content/Context;)Ljava/io/File;

    move-result-object v4

    invoke-static {v4}, Lcom/gmodvr/flat/TouchLayoutActivity;->text(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    if-nez p1, :cond_d5

    goto :goto_db

    .line 142
    :cond_d5
    const-string v5, "originalCustom"

    invoke-virtual {p1, v5, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_db
    iput-object v4, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->originalCustom:Ljava/lang/String;

    if-nez p1, :cond_e0

    goto :goto_e6

    .line 143
    :cond_e0
    const-string v0, "customDraft"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_e6
    if-nez v0, :cond_f1

    .line 144
    invoke-static {p0}, Lcom/gmodvr/flat/CustomButtons;->file(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/gmodvr/flat/CustomButtons;->load(Ljava/io/File;)Ljava/util/List;

    move-result-object v0

    goto :goto_f5

    :cond_f1
    invoke-static {v0}, Lcom/gmodvr/flat/CustomButtons;->fromJson(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    :goto_f5
    iput-object v0, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->custom:Ljava/util/List;

    if-eqz p1, :cond_103

    .line 145
    const-string v0, "customChanged"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_103

    move v0, v3

    goto :goto_104

    :cond_103
    move v0, v1

    :goto_104
    iput-boolean v0, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->customChanged:Z

    if-eqz p1, :cond_112

    .line 146
    const-string v0, "showHidden"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_112

    move v0, v3

    goto :goto_113

    :cond_112
    move v0, v1

    :goto_113
    iput-boolean v0, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->showHidden:Z

    if-eqz p1, :cond_120

    .line 147
    const-string v0, "showZones"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_120

    move v1, v3

    :cond_120
    iput-boolean v1, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->showZones:Z
    :try_end_122
    .catchall {:try_start_22 .. :try_end_122} :catchall_27

    if-eqz v2, :cond_127

    .line 148
    invoke-virtual {v2}, Lcom/gmodvr/flat/Storage$Lease;->close()V

    .line 149
    :cond_127
    iget-object p1, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->layout:Lcom/gmodvr/flat/TouchLayout;

    iget-object v0, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->custom:Ljava/util/List;

    iget-object v1, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->icons:Ljava/util/Map;

    iget-object v2, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->customTextures:Ljava/util/Map;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/gmodvr/flat/TouchLayoutActivity;->loadArtwork(Lcom/gmodvr/flat/TouchLayout;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;)V

    return-void

    :goto_133
    if-eqz v2, :cond_13d

    .line 129
    :try_start_135
    invoke-virtual {v2}, Lcom/gmodvr/flat/Storage$Lease;->close()V
    :try_end_138
    .catchall {:try_start_135 .. :try_end_138} :catchall_139

    goto :goto_13d

    :catchall_139
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_13d
    :goto_13d
    throw p0
.end method

.method private loadArtwork(Lcom/gmodvr/flat/TouchLayout;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gmodvr/flat/TouchLayout;",
            "Ljava/util/List<",
            "Lcom/gmodvr/flat/CustomButtons$Entry;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 154
    new-instance v0, Lcom/gmodvr/flat/CustomButtonIcons;

    invoke-direct {v0, p0}, Lcom/gmodvr/flat/CustomButtonIcons;-><init>(Landroid/content/Context;)V

    .line 155
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gmodvr/flat/CustomButtons$Entry;

    .line 156
    invoke-virtual {v2}, Lcom/gmodvr/flat/CustomButtons$Entry;->buttonName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v2, Lcom/gmodvr/flat/CustomButtons$Entry;->shape:Lcom/gmodvr/flat/CustomButtons$Shape;

    iget-object v5, v2, Lcom/gmodvr/flat/CustomButtons$Entry;->label:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Lcom/gmodvr/flat/CustomButtonIcons;->bitmap(Lcom/gmodvr/flat/CustomButtons$Shape;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-interface {p3, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    invoke-virtual {v0, v2}, Lcom/gmodvr/flat/CustomButtonIcons;->rgba(Lcom/gmodvr/flat/CustomButtons$Entry;)[B

    move-result-object v3

    const/16 v4, 0x100

    invoke-static {v4, v4, v3}, Lcom/gmodvr/flat/VtfWriter;->rgba8888(II[B)[B

    move-result-object v3

    .line 158
    invoke-virtual {v2}, Lcom/gmodvr/flat/CustomButtons$Entry;->buttonName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3}, Lcom/gmodvr/flat/CustomButtons;->textureName(Lcom/gmodvr/flat/CustomButtons$Entry;[B)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p4, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    .line 160
    :cond_3a
    invoke-virtual {p1, p2, p4}, Lcom/gmodvr/flat/TouchLayout;->mergeCustom(Ljava/util/List;Ljava/util/Map;)V

    .line 161
    iget-object p2, p1, Lcom/gmodvr/flat/TouchLayout;->buttons:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_110

    .line 162
    new-instance p2, Ljava/util/ArrayList;

    iget-object p4, p1, Lcom/gmodvr/flat/TouchLayout;->buttons:Ljava/util/List;

    invoke-direct {p2, p4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 163
    iget-object p4, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->defaults:Ljava/lang/String;

    iget p1, p1, Lcom/gmodvr/flat/TouchLayout;->screenAspect:F

    invoke-static {p4, p1}, Lcom/gmodvr/flat/TouchLayout;->parse(Ljava/lang/String;F)Lcom/gmodvr/flat/TouchLayout;

    move-result-object p1

    iget-object p1, p1, Lcom/gmodvr/flat/TouchLayout;->buttons:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 164
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :catch_5d
    :cond_5d
    :goto_5d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_10f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/gmodvr/flat/TouchLayout$Button;

    .line 165
    invoke-virtual {p2}, Lcom/gmodvr/flat/TouchLayout$Button;->zone()Z

    move-result p4

    if-nez p4, :cond_5d

    iget-object p4, p2, Lcom/gmodvr/flat/TouchLayout$Button;->name:Ljava/lang/String;

    invoke-interface {p3, p4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_5d

    iget-object p4, p2, Lcom/gmodvr/flat/TouchLayout$Button;->texture:Ljava/lang/String;

    invoke-interface {p3, p4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_80

    goto :goto_5d

    .line 166
    :cond_80
    :try_start_80
    iget-object p4, p2, Lcom/gmodvr/flat/TouchLayout$Button;->texture:Ljava/lang/String;

    const-string v0, "vgui/touch/"

    invoke-virtual {p4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p4
    :try_end_88
    .catch Ljava/io/IOException; {:try_start_80 .. :try_end_88} :catch_5d
    .catch Ljava/lang/RuntimeException; {:try_start_80 .. :try_end_88} :catch_5d

    const-string v0, ".vtf"

    if-eqz p4, :cond_b1

    .line 167
    :try_start_8c
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "touch_preview/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Lcom/gmodvr/flat/TouchLayout$Button;->texture:Ljava/lang/String;

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p4

    goto :goto_d8

    .line 168
    :cond_b1
    iget-object p4, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->user:Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "materials/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Lcom/gmodvr/flat/TouchLayout$Button;->texture:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p4, v0}, Lcom/gmodvr/flat/Storage;->child(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p4

    invoke-virtual {p4}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p4

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/nio/file/OpenOption;

    invoke-static {p4, v0}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object p4
    :try_end_d8
    .catch Ljava/io/IOException; {:try_start_8c .. :try_end_d8} :catch_5d
    .catch Ljava/lang/RuntimeException; {:try_start_8c .. :try_end_d8} :catch_5d

    .line 169
    :goto_d8
    :try_start_d8
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const-wide/32 v1, 0x1000000

    .line 170
    invoke-static {p4, v0, v1, v2}, Lcom/gmodvr/flat/Storage;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;J)J

    .line 171
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lcom/gmodvr/flat/VtfPreview;->decode([B)Lcom/gmodvr/flat/VtfPreview;

    move-result-object v0

    .line 172
    iget-object p2, p2, Lcom/gmodvr/flat/TouchLayout$Button;->texture:Ljava/lang/String;

    iget-object v1, v0, Lcom/gmodvr/flat/VtfPreview;->pixels:[I

    iget v2, v0, Lcom/gmodvr/flat/VtfPreview;->width:I

    iget v0, v0, Lcom/gmodvr/flat/VtfPreview;->height:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v0, v3}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-interface {p3, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_fc
    .catchall {:try_start_d8 .. :try_end_fc} :catchall_103

    if-eqz p4, :cond_5d

    .line 173
    :try_start_fe
    invoke-virtual {p4}, Ljava/io/InputStream;->close()V
    :try_end_101
    .catch Ljava/io/IOException; {:try_start_fe .. :try_end_101} :catch_5d
    .catch Ljava/lang/RuntimeException; {:try_start_fe .. :try_end_101} :catch_5d

    goto/16 :goto_5d

    :catchall_103
    move-exception p2

    if-eqz p4, :cond_10e

    .line 166
    :try_start_106
    invoke-virtual {p4}, Ljava/io/InputStream;->close()V
    :try_end_109
    .catchall {:try_start_106 .. :try_end_109} :catchall_10a

    goto :goto_10e

    :catchall_10a
    move-exception p4

    :try_start_10b
    invoke-virtual {p2, p4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_10e
    :goto_10e
    throw p2
    :try_end_10f
    .catch Ljava/io/IOException; {:try_start_10b .. :try_end_10f} :catch_5d
    .catch Ljava/lang/RuntimeException; {:try_start_10b .. :try_end_10f} :catch_5d

    :cond_10f
    return-void

    .line 161
    :cond_110
    new-instance p0, Ljava/io/IOException;

    const-string p1, "This layout has no usable controls."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private openPicker(Landroid/content/Intent;I)V
    .registers 4

    .line 362
    :try_start_0
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_3} :catch_4
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_20

    :catch_4
    move-exception p1

    const/4 p2, 0x0

    .line 364
    iput-object p2, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->pendingExport:Ljava/lang/String;

    .line 365
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Could not open the file picker. "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/gmodvr/flat/TouchLayoutActivity;->error(Ljava/lang/String;)V

    :goto_20
    return-void
.end method

.method private rebuildPicker()V
    .registers 6

    .line 280
    iget-object v0, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->picker:Landroid/widget/Spinner;

    if-eqz v0, :cond_9

    iget-object v1, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->inspector:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 281
    :cond_9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 282
    iget-object v1, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->layout:Lcom/gmodvr/flat/TouchLayout;

    iget-object v1, v1, Lcom/gmodvr/flat/TouchLayout;->buttons:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gmodvr/flat/TouchLayout$Button;

    .line 283
    iget-object v3, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->custom:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lcom/gmodvr/flat/TouchLayoutActivity$$ExternalSyntheticLambda0;

    invoke-direct {v4, v2}, Lcom/gmodvr/flat/TouchLayoutActivity$$ExternalSyntheticLambda0;-><init>(Lcom/gmodvr/flat/TouchLayout$Button;)V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/gmodvr/flat/CustomButtons$Entry;

    if-nez v3, :cond_43

    .line 284
    invoke-virtual {v2}, Lcom/gmodvr/flat/TouchLayout$Button;->label()Ljava/lang/String;

    move-result-object v2

    goto :goto_56

    :cond_43
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Custom: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v3, Lcom/gmodvr/flat/CustomButtons$Entry;->label:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_56
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_16

    .line 286
    :cond_5a
    iget-object v1, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->skin:Lcom/gmodvr/flat/Skin;

    invoke-virtual {v1, v0}, Lcom/gmodvr/flat/Skin;->spinner(Ljava/util/List;)Landroid/widget/Spinner;

    move-result-object v0

    iput-object v0, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->picker:Landroid/widget/Spinner;

    .line 287
    const-string v1, "Select a control"

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 288
    iget-object v0, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->picker:Landroid/widget/Spinner;

    new-instance v1, Lcom/gmodvr/flat/TouchLayoutActivity$2;

    invoke-direct {v1, p0}, Lcom/gmodvr/flat/TouchLayoutActivity$2;-><init>(Lcom/gmodvr/flat/TouchLayoutActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 294
    iget-object v0, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->inspector:Landroid/widget/LinearLayout;

    iget-object p0, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->picker:Landroid/widget/Spinner;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    return-void
.end method

.method private reset()V
    .registers 3

    .line 320
    iget-object v0, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->preview:Lcom/gmodvr/flat/TouchLayoutActivity$Preview;

    if-eqz v0, :cond_2f

    iget-boolean v0, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->busy:Z

    if-eqz v0, :cond_9

    goto :goto_2f

    .line 321
    :cond_9
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Reset control layout?"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Restore the standard button positions, sizes and colors. Your custom buttons stay. Tap Save to apply."

    .line 322
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/gmodvr/flat/TouchLayoutActivity$$ExternalSyntheticLambda18;

    invoke-direct {v1, p0}, Lcom/gmodvr/flat/TouchLayoutActivity$$ExternalSyntheticLambda18;-><init>(Lcom/gmodvr/flat/TouchLayoutActivity;)V

    .line 323
    const-string p0, "Reset"

    invoke-virtual {v0, p0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    const-string v0, "Cancel"

    const/4 v1, 0x0

    .line 330
    invoke-virtual {p0, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :cond_2f
    :goto_2f
    return-void
.end method

.method private save()V
    .registers 8

    .line 334
    iget-object v0, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->layout:Lcom/gmodvr/flat/TouchLayout;

    if-eqz v0, :cond_55

    iget-boolean v0, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->busy:Z

    if-eqz v0, :cond_9

    goto :goto_55

    .line 335
    :cond_9
    :try_start_9
    invoke-static {p0}, Lcom/gmodvr/flat/Storage;->lock(Landroid/content/Context;)Lcom/gmodvr/flat/Storage$Lease;

    move-result-object v0
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_d} :catch_41

    .line 336
    :try_start_d
    iget-object v1, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->file:Ljava/io/File;

    iget-object v2, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->original:Ljava/lang/String;

    iget-object v3, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->layout:Lcom/gmodvr/flat/TouchLayout;

    iget-object v4, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->profileFile:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/gmodvr/flat/TouchLayout;->cfg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0}, Lcom/gmodvr/flat/CustomButtons;->file(Landroid/content/Context;)Ljava/io/File;

    move-result-object v4

    iget-object v5, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->originalCustom:Ljava/lang/String;

    .line 337
    iget-boolean v6, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->customChanged:Z

    if-eqz v6, :cond_28

    iget-object v6, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->custom:Ljava/util/List;

    goto :goto_29

    :catchall_26
    move-exception v1

    goto :goto_43

    :cond_28
    const/4 v6, 0x0

    .line 336
    :goto_29
    invoke-static/range {v1 .. v6}, Lcom/gmodvr/flat/TouchLayoutTransfer;->save(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/util/List;)V

    const/4 v1, 0x0

    .line 338
    iput-boolean v1, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->changed:Z

    .line 339
    const-string v2, "Control layout saved"

    invoke-static {p0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 340
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V
    :try_end_3b
    .catchall {:try_start_d .. :try_end_3b} :catchall_26

    if-eqz v0, :cond_55

    .line 341
    :try_start_3d
    invoke-virtual {v0}, Lcom/gmodvr/flat/Storage$Lease;->close()V
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_40} :catch_41

    goto :goto_55

    :catch_41
    move-exception v0

    goto :goto_4e

    :goto_43
    if-eqz v0, :cond_4d

    .line 335
    :try_start_45
    invoke-virtual {v0}, Lcom/gmodvr/flat/Storage$Lease;->close()V
    :try_end_48
    .catchall {:try_start_45 .. :try_end_48} :catchall_49

    goto :goto_4d

    :catchall_49
    move-exception v0

    :try_start_4a
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4d
    :goto_4d
    throw v1
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_4e} :catch_41

    .line 341
    :goto_4e
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/gmodvr/flat/TouchLayoutActivity;->error(Ljava/lang/String;)V

    :cond_55
    :goto_55
    return-void
.end method

.method private select(Lcom/gmodvr/flat/TouchLayout$Button;)V
    .registers 12

    const/4 v0, 0x1

    .line 298
    iput-object p1, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->selected:Lcom/gmodvr/flat/TouchLayout$Button;

    .line 299
    iget-object v1, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->fields:[Landroid/widget/SeekBar;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    if-nez v1, :cond_b

    return-void

    .line 300
    :cond_b
    iput-boolean v0, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->updating:Z

    .line 301
    iget-object v1, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->picker:Landroid/widget/Spinner;

    iget-object v3, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->layout:Lcom/gmodvr/flat/TouchLayout;

    iget-object v3, v3, Lcom/gmodvr/flat/TouchLayout;->buttons:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/AdapterView;->setSelection(I)V

    .line 302
    iget v1, p1, Lcom/gmodvr/flat/TouchLayout$Button;->x1:F

    iget v3, p1, Lcom/gmodvr/flat/TouchLayout$Button;->y1:F

    invoke-virtual {p1}, Lcom/gmodvr/flat/TouchLayout$Button;->width()F

    move-result v4

    invoke-virtual {p1}, Lcom/gmodvr/flat/TouchLayout$Button;->height()F

    move-result v5

    const/4 v6, 0x4

    new-array v6, v6, [F

    aput v1, v6, v2

    aput v3, v6, v0

    const/4 v1, 0x2

    aput v4, v6, v1

    const/4 v1, 0x3

    aput v5, v6, v1

    .line 303
    const-string v1, "Width"

    const-string v3, "Height"

    const-string v4, "X"

    const-string v5, "Y"

    filled-new-array {v4, v5, v1, v3}, [Ljava/lang/String;

    move-result-object v1

    move v3, v2

    .line 304
    :goto_40
    iget-object v4, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->fields:[Landroid/widget/SeekBar;

    array-length v5, v4

    if-ge v3, v5, :cond_73

    .line 305
    aget-object v4, v4, v3

    aget v5, v6, v3

    const/high16 v7, 0x447a0000    # 1000.0f

    mul-float/2addr v5, v7

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 306
    iget-object v4, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->labels:[Landroid/widget/TextView;

    aget-object v4, v4, v3

    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    aget-object v7, v1, v3

    aget v8, v6, v3

    const/high16 v9, 0x42c80000    # 100.0f

    mul-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    filled-new-array {v7, v8}, [Ljava/lang/Object;

    move-result-object v7

    const-string v8, "%s: %.1f%%"

    invoke-static {v5, v8, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    add-int/2addr v3, v0

    goto :goto_40

    .line 308
    :cond_73
    iget-object v1, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->visible:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Lcom/gmodvr/flat/TouchLayout$Button;->hidden()Z

    move-result v3

    xor-int/2addr v0, v3

    invoke-virtual {v1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 309
    iget-object v0, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->colorPicker:Lcom/gmodvr/flat/ControlColorPicker;

    invoke-virtual {p1}, Lcom/gmodvr/flat/TouchLayout$Button;->color()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/gmodvr/flat/ControlColorPicker;->setColor(I)V

    .line 310
    iput-boolean v2, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->updating:Z

    .line 311
    iget-object p0, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->preview:Lcom/gmodvr/flat/TouchLayoutActivity$Preview;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private setBusy(Z)V
    .registers 5

    .line 436
    iput-boolean p1, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->busy:Z

    .line 437
    iget-object v0, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->body:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    xor-int/2addr p1, v1

    invoke-static {v0, p1}, Lcom/gmodvr/flat/TouchLayoutActivity;->enable(Landroid/view/View;Z)V

    .line 438
    iget-object p1, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->save:Landroid/widget/Button;

    iget-boolean v0, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->busy:Z

    const/4 v2, 0x0

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->layout:Lcom/gmodvr/flat/TouchLayout;

    if-eqz v0, :cond_16

    move v0, v1

    goto :goto_17

    :cond_16
    move v0, v2

    :goto_17
    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 439
    iget-object p1, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->reset:Landroid/widget/Button;

    iget-boolean v0, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->busy:Z

    if-nez v0, :cond_25

    iget-object p0, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->layout:Lcom/gmodvr/flat/TouchLayout;

    if-eqz p0, :cond_25

    goto :goto_26

    :cond_25
    move v1, v2

    :goto_26
    invoke-virtual {p1, v1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method private static text(Ljava/io/File;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 180
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_16

    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p0

    invoke-static {p0}, Ljava/nio/file/Files;->readAllBytes(Ljava/nio/file/Path;)[B

    move-result-object p0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_18

    :cond_16
    const-string v0, ""

    :goto_18
    return-object v0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 14

    .line 370
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_a

    if-eq p1, v0, :cond_a

    return-void

    :cond_a
    const/4 v2, -0x1

    const/4 v3, 0x0

    if-ne p2, v2, :cond_48

    if-eqz p3, :cond_48

    .line 372
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    if-nez p2, :cond_17

    goto :goto_48

    .line 376
    :cond_17
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v8

    .line 377
    iget-object v7, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->pendingExport:Ljava/lang/String;

    if-ne p1, v0, :cond_21

    .line 378
    iput-object v3, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->pendingExport:Ljava/lang/String;

    .line 379
    :cond_21
    iget-object p2, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->help:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    .line 380
    invoke-direct {p0, v1}, Lcom/gmodvr/flat/TouchLayoutActivity;->setBusy(Z)V

    .line 381
    iget-object p2, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->help:Landroid/widget/TextView;

    if-ne p1, v1, :cond_35

    const-string p3, "Importing controls\u2026"

    goto :goto_37

    :cond_35
    const-string p3, "Exporting controls\u2026"

    :goto_37
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 382
    iget-object p2, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->worker:Ljava/util/concurrent/ExecutorService;

    new-instance p3, Lcom/gmodvr/flat/TouchLayoutActivity$$ExternalSyntheticLambda21;

    move-object v4, p3

    move-object v5, p0

    move v6, p1

    invoke-direct/range {v4 .. v9}, Lcom/gmodvr/flat/TouchLayoutActivity$$ExternalSyntheticLambda21;-><init>(Lcom/gmodvr/flat/TouchLayoutActivity;ILjava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    invoke-interface {p2, p3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_48
    :goto_48
    if-ne p1, v0, :cond_4c

    .line 373
    iput-object v3, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->pendingExport:Ljava/lang/String;

    :cond_4c
    return-void
.end method

.method public onBackPressed()V
    .registers 1

    .line 462
    invoke-direct {p0}, Lcom/gmodvr/flat/TouchLayoutActivity;->cancel()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 13

    .line 74
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    if-nez p1, :cond_7

    const/4 v0, 0x0

    goto :goto_d

    .line 75
    :cond_7
    const-string v0, "pendingExport"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_d
    iput-object v0, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->pendingExport:Ljava/lang/String;

    .line 76
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "franchise"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/gmodvr/flat/Skin;->of(Landroid/app/Activity;Ljava/lang/String;)Lcom/gmodvr/flat/Skin;

    move-result-object v0

    iput-object v0, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->skin:Lcom/gmodvr/flat/Skin;

    .line 77
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 78
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 79
    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v2, v0, Landroid/graphics/Point;->y:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v2, 0x1

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v1, v0

    iput v1, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->screenAspect:F

    .line 81
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 82
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const v1, -0xf4f1f0

    .line 83
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 84
    invoke-static {v0}, Lcom/gmodvr/flat/Skin;->fitSystemBars(Landroid/view/View;)V

    .line 85
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 87
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/16 v2, 0x10

    .line 88
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 89
    iget-object v2, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->skin:Lcom/gmodvr/flat/Skin;

    const/high16 v3, 0x41400000    # 12.0f

    invoke-virtual {v2, v3}, Lcom/gmodvr/flat/Skin;->dp(F)I

    move-result v2

    iget-object v4, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->skin:Lcom/gmodvr/flat/Skin;

    const/high16 v5, 0x40800000    # 4.0f

    invoke-virtual {v4, v5}, Lcom/gmodvr/flat/Skin;->dp(F)I

    move-result v4

    iget-object v6, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->skin:Lcom/gmodvr/flat/Skin;

    invoke-virtual {v6, v3}, Lcom/gmodvr/flat/Skin;->dp(F)I

    move-result v6

    iget-object v7, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->skin:Lcom/gmodvr/flat/Skin;

    invoke-virtual {v7, v5}, Lcom/gmodvr/flat/Skin;->dp(F)I

    move-result v7

    invoke-virtual {v1, v2, v4, v6, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 90
    iget-object v2, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->skin:Lcom/gmodvr/flat/Skin;

    new-instance v4, Lcom/gmodvr/flat/TouchLayoutActivity$$ExternalSyntheticLambda14;

    invoke-direct {v4, p0}, Lcom/gmodvr/flat/TouchLayoutActivity$$ExternalSyntheticLambda14;-><init>(Lcom/gmodvr/flat/TouchLayoutActivity;)V

    const-string v6, "Cancel"

    invoke-virtual {v2, v6, v4}, Lcom/gmodvr/flat/Skin;->secondary(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 91
    iget-object v2, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->skin:Lcom/gmodvr/flat/Skin;

    const-string v4, "Control layout"

    const/high16 v6, 0x41a00000    # 20.0f

    invoke-virtual {v2, v4, v6}, Lcom/gmodvr/flat/Skin;->heading(Ljava/lang/CharSequence;F)Landroid/widget/TextView;

    move-result-object v2

    .line 92
    iget-object v4, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->skin:Lcom/gmodvr/flat/Skin;

    const/high16 v6, 0x41600000    # 14.0f

    invoke-virtual {v4, v6}, Lcom/gmodvr/flat/Skin;->dp(F)I

    move-result v4

    const/4 v7, 0x0

    invoke-virtual {v2, v4, v7, v7, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 93
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x2

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-direct {v4, v7, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 94
    iget-object v2, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->skin:Lcom/gmodvr/flat/Skin;

    new-instance v4, Lcom/gmodvr/flat/TouchLayoutActivity$$ExternalSyntheticLambda15;

    invoke-direct {v4, p0}, Lcom/gmodvr/flat/TouchLayoutActivity$$ExternalSyntheticLambda15;-><init>(Lcom/gmodvr/flat/TouchLayoutActivity;)V

    const-string v10, "Reset"

    invoke-virtual {v2, v10, v4}, Lcom/gmodvr/flat/Skin;->secondary(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/widget/Button;

    move-result-object v2

    iput-object v2, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->reset:Landroid/widget/Button;

    .line 95
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 96
    iget-object v2, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->skin:Lcom/gmodvr/flat/Skin;

    new-instance v4, Lcom/gmodvr/flat/TouchLayoutActivity$$ExternalSyntheticLambda16;

    invoke-direct {v4, p0}, Lcom/gmodvr/flat/TouchLayoutActivity$$ExternalSyntheticLambda16;-><init>(Lcom/gmodvr/flat/TouchLayoutActivity;)V

    const-string v10, "Save"

    invoke-virtual {v2, v10, v4}, Lcom/gmodvr/flat/Skin;->primary(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/widget/Button;

    move-result-object v2

    iput-object v2, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->save:Landroid/widget/Button;

    .line 97
    invoke-virtual {v2, v7}, Landroid/view/View;->setEnabled(Z)V

    .line 98
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 99
    iget-object v4, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->skin:Lcom/gmodvr/flat/Skin;

    const/high16 v8, 0x41000000    # 8.0f

    invoke-virtual {v4, v8}, Lcom/gmodvr/flat/Skin;->dp(F)I

    move-result v4

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 100
    iget-object v4, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->save:Landroid/widget/Button;

    invoke-virtual {v1, v4, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 101
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 102
    iget-object v1, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->skin:Lcom/gmodvr/flat/Skin;

    const-string v2, "Loading controls\u2026"

    const v4, -0x72665d

    invoke-virtual {v1, v2, v3, v4}, Lcom/gmodvr/flat/Skin;->text(Ljava/lang/CharSequence;FI)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->help:Landroid/widget/TextView;

    .line 103
    iget-object v2, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->skin:Lcom/gmodvr/flat/Skin;

    invoke-virtual {v2, v6}, Lcom/gmodvr/flat/Skin;->dp(F)I

    move-result v2

    iget-object v3, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->skin:Lcom/gmodvr/flat/Skin;

    invoke-virtual {v3, v6}, Lcom/gmodvr/flat/Skin;->dp(F)I

    move-result v3

    iget-object v4, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->skin:Lcom/gmodvr/flat/Skin;

    invoke-virtual {v4, v5}, Lcom/gmodvr/flat/Skin;->dp(F)I

    move-result v4

    invoke-virtual {v1, v2, v7, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 104
    iget-object v1, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->help:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 105
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->body:Landroid/widget/LinearLayout;

    .line 106
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v7, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 108
    iget-object v0, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->worker:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/gmodvr/flat/TouchLayoutActivity$$ExternalSyntheticLambda17;

    invoke-direct {v1, p0, p1}, Lcom/gmodvr/flat/TouchLayoutActivity$$ExternalSyntheticLambda17;-><init>(Lcom/gmodvr/flat/TouchLayoutActivity;Landroid/os/Bundle;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onDestroy()V
    .registers 2

    .line 482
    iget-object v0, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->worker:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 483
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    .line 465
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 466
    iget-object v0, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->preview:Lcom/gmodvr/flat/TouchLayoutActivity$Preview;

    if-eqz v0, :cond_64

    .line 467
    iget-object v0, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->layout:Lcom/gmodvr/flat/TouchLayout;

    iget-object v1, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->profileFile:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/gmodvr/flat/TouchLayout;->cfg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "draft"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    const-string v0, "original"

    iget-object v1, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->original:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    const-string v0, "profileFile"

    iget-object v1, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->profileFile:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    const-string v0, "changed"

    iget-boolean v1, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->changed:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 471
    const-string v0, "originalCustom"

    iget-object v1, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->originalCustom:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    iget-object v0, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->custom:Ljava/util/List;

    invoke-static {v0}, Lcom/gmodvr/flat/CustomButtons;->toJson(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "customDraft"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    const-string v0, "customChanged"

    iget-boolean v1, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->customChanged:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 474
    const-string v0, "pendingExport"

    iget-object v1, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->pendingExport:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    const-string v0, "showHidden"

    iget-boolean v1, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->showHidden:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 476
    const-string v0, "showZones"

    iget-boolean v1, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->showZones:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 477
    iget-object p0, p0, Lcom/gmodvr/flat/TouchLayoutActivity;->selected:Lcom/gmodvr/flat/TouchLayout$Button;

    if-nez p0, :cond_5d

    const/4 p0, 0x0

    goto :goto_5f

    :cond_5d
    iget-object p0, p0, Lcom/gmodvr/flat/TouchLayout$Button;->name:Ljava/lang/String;

    :goto_5f
    const-string v0, "selected"

    invoke-virtual {p1, v0, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_64
    return-void
.end method

###### Class com.gmodvr.flat.TouchLayoutActivity.AnonymousClass1 (com.gmodvr.flat.TouchLayoutActivity$1)
.class Lcom/gmodvr/flat/TouchLayoutActivity$1;
.super Ljava/lang/Object;
.source "TouchLayoutActivity.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gmodvr/flat/TouchLayoutActivity;->buildEditor(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gmodvr/flat/TouchLayoutActivity;

.field final synthetic val$field:I


# direct methods
.method public constructor <init>(Lcom/gmodvr/flat/TouchLayoutActivity;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 231
    iput-object p1, p0, Lcom/gmodvr/flat/TouchLayoutActivity$1;->this$0:Lcom/gmodvr/flat/TouchLayoutActivity;

    iput p2, p0, Lcom/gmodvr/flat/TouchLayoutActivity$1;->val$field:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .registers 13

    .line 233
    iget-object p1, p0, Lcom/gmodvr/flat/TouchLayoutActivity$1;->this$0:Lcom/gmodvr/flat/TouchLayoutActivity;

    invoke-static {p1}, Lcom/gmodvr/flat/TouchLayoutActivity;->-$$Nest$fgetupdating(Lcom/gmodvr/flat/TouchLayoutActivity;)Z

    move-result p1

    if-nez p1, :cond_68

    if-eqz p3, :cond_68

    iget-object p1, p0, Lcom/gmodvr/flat/TouchLayoutActivity$1;->this$0:Lcom/gmodvr/flat/TouchLayoutActivity;

    invoke-static {p1}, Lcom/gmodvr/flat/TouchLayoutActivity;->-$$Nest$fgetselected(Lcom/gmodvr/flat/TouchLayoutActivity;)Lcom/gmodvr/flat/TouchLayout$Button;

    move-result-object p1

    if-nez p1, :cond_13

    goto :goto_68

    .line 234
    :cond_13
    iget-object p1, p0, Lcom/gmodvr/flat/TouchLayoutActivity$1;->this$0:Lcom/gmodvr/flat/TouchLayoutActivity;

    invoke-static {p1}, Lcom/gmodvr/flat/TouchLayoutActivity;->-$$Nest$fgetselected(Lcom/gmodvr/flat/TouchLayoutActivity;)Lcom/gmodvr/flat/TouchLayout$Button;

    move-result-object p1

    iget p1, p1, Lcom/gmodvr/flat/TouchLayout$Button;->x1:F

    iget-object p3, p0, Lcom/gmodvr/flat/TouchLayoutActivity$1;->this$0:Lcom/gmodvr/flat/TouchLayoutActivity;

    invoke-static {p3}, Lcom/gmodvr/flat/TouchLayoutActivity;->-$$Nest$fgetselected(Lcom/gmodvr/flat/TouchLayoutActivity;)Lcom/gmodvr/flat/TouchLayout$Button;

    move-result-object p3

    iget p3, p3, Lcom/gmodvr/flat/TouchLayout$Button;->y1:F

    iget-object v0, p0, Lcom/gmodvr/flat/TouchLayoutActivity$1;->this$0:Lcom/gmodvr/flat/TouchLayoutActivity;

    invoke-static {v0}, Lcom/gmodvr/flat/TouchLayoutActivity;->-$$Nest$fgetselected(Lcom/gmodvr/flat/TouchLayoutActivity;)Lcom/gmodvr/flat/TouchLayout$Button;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gmodvr/flat/TouchLayout$Button;->width()F

    move-result v0

    iget-object v1, p0, Lcom/gmodvr/flat/TouchLayoutActivity$1;->this$0:Lcom/gmodvr/flat/TouchLayoutActivity;

    invoke-static {v1}, Lcom/gmodvr/flat/TouchLayoutActivity;->-$$Nest$fgetselected(Lcom/gmodvr/flat/TouchLayoutActivity;)Lcom/gmodvr/flat/TouchLayout$Button;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gmodvr/flat/TouchLayout$Button;->height()F

    move-result v1

    int-to-float p2, p2

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr p2, v2

    .line 236
    iget v2, p0, Lcom/gmodvr/flat/TouchLayoutActivity$1;->val$field:I

    if-nez v2, :cond_41

    move v5, p2

    goto :goto_42

    :cond_41
    move v5, p1

    :goto_42
    const/4 p1, 0x1

    if-ne v2, p1, :cond_47

    move v6, p2

    goto :goto_48

    :cond_47
    move v6, p3

    :goto_48
    const/4 p1, 0x2

    if-ne v2, p1, :cond_4d

    move v7, p2

    goto :goto_4e

    :cond_4d
    move v7, v0

    :goto_4e
    const/4 p1, 0x3

    if-ne v2, p1, :cond_53

    move v8, p2

    goto :goto_54

    :cond_53
    move v8, v1

    .line 240
    :goto_54
    iget-object p1, p0, Lcom/gmodvr/flat/TouchLayoutActivity$1;->this$0:Lcom/gmodvr/flat/TouchLayoutActivity;

    invoke-static {p1}, Lcom/gmodvr/flat/TouchLayoutActivity;->-$$Nest$fgetlayout(Lcom/gmodvr/flat/TouchLayoutActivity;)Lcom/gmodvr/flat/TouchLayout;

    move-result-object v3

    iget-object p1, p0, Lcom/gmodvr/flat/TouchLayoutActivity$1;->this$0:Lcom/gmodvr/flat/TouchLayoutActivity;

    invoke-static {p1}, Lcom/gmodvr/flat/TouchLayoutActivity;->-$$Nest$fgetselected(Lcom/gmodvr/flat/TouchLayoutActivity;)Lcom/gmodvr/flat/TouchLayout$Button;

    move-result-object v4

    invoke-virtual/range {v3 .. v8}, Lcom/gmodvr/flat/TouchLayout;->rect(Lcom/gmodvr/flat/TouchLayout$Button;FFFF)V

    .line 241
    iget-object p0, p0, Lcom/gmodvr/flat/TouchLayoutActivity$1;->this$0:Lcom/gmodvr/flat/TouchLayoutActivity;

    invoke-static {p0}, Lcom/gmodvr/flat/TouchLayoutActivity;->-$$Nest$medited(Lcom/gmodvr/flat/TouchLayoutActivity;)V

    :cond_68
    :goto_68
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 2

    .line 0
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 2

    .line 0
    return-void
.end method

###### Class com.gmodvr.flat.TouchLayoutActivity.AnonymousClass2 (com.gmodvr.flat.TouchLayoutActivity$2)
.class Lcom/gmodvr/flat/TouchLayoutActivity$2;
.super Ljava/lang/Object;
.source "TouchLayoutActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gmodvr/flat/TouchLayoutActivity;->rebuildPicker()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gmodvr/flat/TouchLayoutActivity;


# direct methods
.method public constructor <init>(Lcom/gmodvr/flat/TouchLayoutActivity;)V
    .registers 2

    .line 288
    iput-object p1, p0, Lcom/gmodvr/flat/TouchLayoutActivity$2;->this$0:Lcom/gmodvr/flat/TouchLayoutActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 290
    iget-object p1, p0, Lcom/gmodvr/flat/TouchLayoutActivity$2;->this$0:Lcom/gmodvr/flat/TouchLayoutActivity;

    invoke-static {p1}, Lcom/gmodvr/flat/TouchLayoutActivity;->-$$Nest$fgetupdating(Lcom/gmodvr/flat/TouchLayoutActivity;)Z

    move-result p1

    if-nez p1, :cond_19

    iget-object p0, p0, Lcom/gmodvr/flat/TouchLayoutActivity$2;->this$0:Lcom/gmodvr/flat/TouchLayoutActivity;

    invoke-static {p0}, Lcom/gmodvr/flat/TouchLayoutActivity;->-$$Nest$fgetlayout(Lcom/gmodvr/flat/TouchLayoutActivity;)Lcom/gmodvr/flat/TouchLayout;

    move-result-object p1

    iget-object p1, p1, Lcom/gmodvr/flat/TouchLayout;->buttons:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/gmodvr/flat/TouchLayout$Button;

    invoke-static {p0, p1}, Lcom/gmodvr/flat/TouchLayoutActivity;->-$$Nest$mselect(Lcom/gmodvr/flat/TouchLayoutActivity;Lcom/gmodvr/flat/TouchLayout$Button;)V

    :cond_19
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    .line 0
    return-void
.end method

###### Class com.gmodvr.flat.TouchLayoutActivity.Preview (com.gmodvr.flat.TouchLayoutActivity$Preview)
.class final Lcom/gmodvr/flat/TouchLayoutActivity$Preview;
.super Landroid/view/View;
.source "TouchLayoutActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gmodvr/flat/TouchLayoutActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Preview"
.end annotation


# instance fields
.field private dragX:F

.field private dragY:F

.field private finger:I

.field private final paint:Landroid/graphics/Paint;

.field private resizing:Z

.field private final screen:Landroid/graphics/RectF;

.field final synthetic this$0:Lcom/gmodvr/flat/TouchLayoutActivity;


# direct methods
.method public constructor <init>(Lcom/gmodvr/flat/TouchLayoutActivity;)V
    .registers 3

    .line 493
    iput-object p1, p0, Lcom/gmodvr/flat/TouchLayoutActivity$Preview;->this$0:Lcom/gmodvr/flat/TouchLayoutActivity;

    .line 494
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 487
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x3

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/gmodvr/flat/TouchLayoutActivity$Preview;->paint:Landroid/graphics/Paint;

    .line 488
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/TouchLayoutActivity$Preview;->screen:Landroid/graphics/RectF;

    const/4 p1, -0x1

    .line 490
    iput p1, p0, Lcom/gmodvr/flat/TouchLayoutActivity$Preview;->finger:I

    .line 495
    const-string p1, "Game screen preview. Select a control to edit its color, position and size."

    invoke-virtual {p0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private artwork(Lcom/gmodvr/flat/TouchLayout$Button;)Landroid/graphics/Bitmap;
    .registers 12

    .line 508
    iget-object v0, p0, Lcom/gmodvr/flat/TouchLayoutActivity$Preview;->this$0:Lcom/gmodvr/flat/TouchLayoutActivity;

    invoke-static {v0}, Lcom/gmodvr/flat/TouchLayoutActivity;->-$$Nest$fgeticons(Lcom/gmodvr/flat/TouchLayoutActivity;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p1, Lcom/gmodvr/flat/TouchLayout$Button;->name:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/gmodvr/flat/TouchLayoutActivity$Preview;->this$0:Lcom/gmodvr/flat/TouchLayoutActivity;

    invoke-static {v0}, Lcom/gmodvr/flat/TouchLayoutActivity;->-$$Nest$fgeticons(Lcom/gmodvr/flat/TouchLayoutActivity;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p1, Lcom/gmodvr/flat/TouchLayout$Button;->name:Ljava/lang/String;

    :goto_16
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    goto :goto_26

    :cond_1d
    iget-object v0, p0, Lcom/gmodvr/flat/TouchLayoutActivity$Preview;->this$0:Lcom/gmodvr/flat/TouchLayoutActivity;

    invoke-static {v0}, Lcom/gmodvr/flat/TouchLayoutActivity;->-$$Nest$fgeticons(Lcom/gmodvr/flat/TouchLayoutActivity;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p1, Lcom/gmodvr/flat/TouchLayout$Button;->texture:Ljava/lang/String;

    goto :goto_16

    :goto_26
    if-eqz v0, :cond_9a

    .line 509
    iget p1, p1, Lcom/gmodvr/flat/TouchLayout$Button;->flags:I

    and-int/lit16 p1, p1, 0x1000

    if-nez p1, :cond_2f

    goto :goto_9a

    .line 510
    :cond_2f
    iget-object p1, p0, Lcom/gmodvr/flat/TouchLayoutActivity$Preview;->this$0:Lcom/gmodvr/flat/TouchLayoutActivity;

    invoke-static {p1}, Lcom/gmodvr/flat/TouchLayoutActivity;->-$$Nest$fgetneutralIcons(Lcom/gmodvr/flat/TouchLayoutActivity;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    if-nez p1, :cond_99

    .line 512
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr p1, v1

    new-array v9, p1, [I

    .line 513
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    move-object v2, v9

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    const/4 v1, 0x0

    :goto_5d
    if-ge v1, p1, :cond_82

    .line 515
    aget v2, v9, v1

    ushr-int/lit8 v3, v2, 0x10

    and-int/lit16 v3, v3, 0xff

    ushr-int/lit8 v4, v2, 0x8

    and-int/lit16 v4, v4, 0xff

    and-int/lit16 v5, v2, 0xff

    .line 516
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    const/high16 v4, -0x1000000

    and-int/2addr v2, v4

    shl-int/lit8 v4, v3, 0x10

    or-int/2addr v2, v4

    shl-int/lit8 v4, v3, 0x8

    or-int/2addr v2, v4

    or-int/2addr v2, v3

    .line 517
    aput v2, v9, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_5d

    .line 519
    :cond_82
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v9, p1, v1, v2}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 520
    iget-object p0, p0, Lcom/gmodvr/flat/TouchLayoutActivity$Preview;->this$0:Lcom/gmodvr/flat/TouchLayoutActivity;

    invoke-static {p0}, Lcom/gmodvr/flat/TouchLayoutActivity;->-$$Nest$fgetneutralIcons(Lcom/gmodvr/flat/TouchLayoutActivity;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_99
    return-object p1

    :cond_9a
    :goto_9a
    return-object v0
.end method

.method private bounds(Lcom/gmodvr/flat/TouchLayout$Button;)Landroid/graphics/RectF;
    .registers 8

    .line 499
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/gmodvr/flat/TouchLayoutActivity$Preview;->screen:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    iget v3, p1, Lcom/gmodvr/flat/TouchLayout$Button;->x1:F

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    mul-float/2addr v3, v1

    add-float/2addr v2, v3

    iget-object v1, p0, Lcom/gmodvr/flat/TouchLayoutActivity$Preview;->screen:Landroid/graphics/RectF;

    iget v3, v1, Landroid/graphics/RectF;->top:F

    iget v4, p1, Lcom/gmodvr/flat/TouchLayout$Button;->y1:F

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    iget-object v1, p0, Lcom/gmodvr/flat/TouchLayoutActivity$Preview;->screen:Landroid/graphics/RectF;

    iget v4, v1, Landroid/graphics/RectF;->left:F

    iget v5, p1, Lcom/gmodvr/flat/TouchLayout$Button;->x2:F

    .line 500
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    mul-float/2addr v5, v1

    add-float/2addr v4, v5

    iget-object p0, p0, Lcom/gmodvr/flat/TouchLayoutActivity$Preview;->screen:Landroid/graphics/RectF;

    iget v1, p0, Landroid/graphics/RectF;->top:F

    iget p1, p1, Lcom/gmodvr/flat/TouchLayout$Button;->y2:F

    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result p0

    mul-float/2addr p1, p0

    add-float/2addr v1, p1

    invoke-direct {v0, v2, v3, v4, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v0
.end method

.method private showing(Lcom/gmodvr/flat/TouchLayout$Button;)Z
    .registers 3

    .line 504
    iget-object v0, p0, Lcom/gmodvr/flat/TouchLayoutActivity$Preview;->this$0:Lcom/gmodvr/flat/TouchLayoutActivity;

    invoke-static {v0}, Lcom/gmodvr/flat/TouchLayoutActivity;->-$$Nest$fgetselected(Lcom/gmodvr/flat/TouchLayoutActivity;)Lcom/gmodvr/flat/TouchLayout$Button;

    move-result-object v0

    if-eq p1, v0, :cond_27

    invoke-virtual {p1}, Lcom/gmodvr/flat/TouchLayout$Button;->hidden()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/gmodvr/flat/TouchLayoutActivity$Preview;->this$0:Lcom/gmodvr/flat/TouchLayoutActivity;

    invoke-static {v0}, Lcom/gmodvr/flat/TouchLayoutActivity;->-$$Nest$fgetshowHidden(Lcom/gmodvr/flat/TouchLayoutActivity;)Z

    move-result v0

    if-eqz v0, :cond_25

    :cond_16
    invoke-virtual {p1}, Lcom/gmodvr/flat/TouchLayout$Button;->zone()Z

    move-result p1

    if-eqz p1, :cond_27

    iget-object p0, p0, Lcom/gmodvr/flat/TouchLayoutActivity$Preview;->this$0:Lcom/gmodvr/flat/TouchLayoutActivity;

    invoke-static {p0}, Lcom/gmodvr/flat/TouchLayoutActivity;->-$$Nest$fgetshowZones(Lcom/gmodvr/flat/TouchLayoutActivity;)Z

    move-result p0

    if-eqz p0, :cond_25

    goto :goto_27

    :cond_25
    const/4 p0, 0x0

    goto :goto_28

    :cond_27
    :goto_27
    const/4 p0, 0x1

    :goto_28
    return p0
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 18

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    .line 526
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 527
    iget-object v1, v0, Lcom/gmodvr/flat/TouchLayoutActivity$Preview;->this$0:Lcom/gmodvr/flat/TouchLayoutActivity;

    invoke-static {v1}, Lcom/gmodvr/flat/TouchLayoutActivity;->-$$Nest$fgetskin(Lcom/gmodvr/flat/TouchLayoutActivity;)Lcom/gmodvr/flat/Skin;

    move-result-object v1

    const/high16 v2, 0x41400000    # 12.0f

    invoke-virtual {v1, v2}, Lcom/gmodvr/flat/Skin;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v8, 0x40000000    # 2.0f

    mul-float/2addr v1, v8

    sub-float/2addr v2, v1

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-static {v9, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v1

    invoke-static {v9, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 528
    iget-object v3, v0, Lcom/gmodvr/flat/TouchLayoutActivity$Preview;->this$0:Lcom/gmodvr/flat/TouchLayoutActivity;

    invoke-static {v3}, Lcom/gmodvr/flat/TouchLayoutActivity;->-$$Nest$fgetscreenAspect(Lcom/gmodvr/flat/TouchLayoutActivity;)F

    move-result v3

    mul-float/2addr v1, v3

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iget-object v2, v0, Lcom/gmodvr/flat/TouchLayoutActivity$Preview;->this$0:Lcom/gmodvr/flat/TouchLayoutActivity;

    invoke-static {v2}, Lcom/gmodvr/flat/TouchLayoutActivity;->-$$Nest$fgetscreenAspect(Lcom/gmodvr/flat/TouchLayoutActivity;)F

    move-result v2

    div-float v2, v1, v2

    .line 529
    iget-object v3, v0, Lcom/gmodvr/flat/TouchLayoutActivity$Preview;->screen:Landroid/graphics/RectF;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v4, v1

    div-float/2addr v4, v8

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v5, v2

    div-float/2addr v5, v8

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v6, v1

    div-float/2addr v6, v8

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, v2

    div-float/2addr v1, v8

    invoke-virtual {v3, v4, v5, v6, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 530
    iget-object v1, v0, Lcom/gmodvr/flat/TouchLayoutActivity$Preview;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 531
    iget-object v1, v0, Lcom/gmodvr/flat/TouchLayoutActivity$Preview;->paint:Landroid/graphics/Paint;

    const v2, -0xe7d9d2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 532
    iget-object v1, v0, Lcom/gmodvr/flat/TouchLayoutActivity$Preview;->screen:Landroid/graphics/RectF;

    iget-object v2, v0, Lcom/gmodvr/flat/TouchLayoutActivity$Preview;->paint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 533
    iget-object v1, v0, Lcom/gmodvr/flat/TouchLayoutActivity$Preview;->paint:Landroid/graphics/Paint;

    iget-object v2, v0, Lcom/gmodvr/flat/TouchLayoutActivity$Preview;->this$0:Lcom/gmodvr/flat/TouchLayoutActivity;

    invoke-static {v2}, Lcom/gmodvr/flat/TouchLayoutActivity;->-$$Nest$fgetskin(Lcom/gmodvr/flat/TouchLayoutActivity;)Lcom/gmodvr/flat/Skin;

    move-result-object v2

    invoke-virtual {v2, v9}, Lcom/gmodvr/flat/Skin;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 534
    iget-object v1, v0, Lcom/gmodvr/flat/TouchLayoutActivity$Preview;->paint:Landroid/graphics/Paint;

    const v2, -0xddcdc4

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v11, 0x1

    :goto_90
    const/16 v1, 0xa

    const/high16 v12, 0x41200000    # 10.0f

    if-ge v11, v1, :cond_cf

    .line 536
    iget-object v1, v0, Lcom/gmodvr/flat/TouchLayoutActivity$Preview;->screen:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    int-to-float v3, v11

    mul-float/2addr v1, v3

    div-float/2addr v1, v12

    add-float v4, v2, v1

    iget-object v1, v0, Lcom/gmodvr/flat/TouchLayoutActivity$Preview;->screen:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->top:F

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    mul-float/2addr v1, v3

    div-float/2addr v1, v12

    add-float v12, v2, v1

    .line 537
    iget-object v1, v0, Lcom/gmodvr/flat/TouchLayoutActivity$Preview;->screen:Landroid/graphics/RectF;

    iget v3, v1, Landroid/graphics/RectF;->top:F

    iget v5, v1, Landroid/graphics/RectF;->bottom:F

    iget-object v6, v0, Lcom/gmodvr/flat/TouchLayoutActivity$Preview;->paint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v2, v4

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 538
    iget-object v1, v0, Lcom/gmodvr/flat/TouchLayoutActivity$Preview;->screen:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    iget v4, v1, Landroid/graphics/RectF;->right:F

    iget-object v6, v0, Lcom/gmodvr/flat/TouchLayoutActivity$Preview;->paint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v3, v12

    move v5, v12

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_90

    .line 540
    :cond_cf
    iget-object v1, v0, Lcom/gmodvr/flat/TouchLayoutActivity$Preview;->paint:Landroid/graphics/Paint;

    const v2, -0xa49991

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 541
    iget-object v1, v0, Lcom/gmodvr/flat/TouchLayoutActivity$Preview;->screen:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v11

    iget-object v1, v0, Lcom/gmodvr/flat/TouchLayoutActivity$Preview;->screen:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v13

    .line 542
    iget-object v1, v0, Lcom/gmodvr/flat/TouchLayoutActivity$Preview;->this$0:Lcom/gmodvr/flat/TouchLayoutActivity;

    invoke-static {v1}, Lcom/gmodvr/flat/TouchLayoutActivity;->-$$Nest$fgetskin(Lcom/gmodvr/flat/TouchLayoutActivity;)Lcom/gmodvr/flat/Skin;

    move-result-object v1

    const/high16 v14, 0x40c00000    # 6.0f

    invoke-virtual {v1, v14}, Lcom/gmodvr/flat/Skin;->dp(F)I

    move-result v1

    int-to-float v1, v1

    sub-float v2, v11, v1

    iget-object v1, v0, Lcom/gmodvr/flat/TouchLayoutActivity$Preview;->this$0:Lcom/gmodvr/flat/TouchLayoutActivity;

    invoke-static {v1}, Lcom/gmodvr/flat/TouchLayoutActivity;->-$$Nest$fgetskin(Lcom/gmodvr/flat/TouchLayoutActivity;)Lcom/gmodvr/flat/Skin;

    move-result-object v1

    invoke-virtual {v1, v14}, Lcom/gmodvr/flat/Skin;->dp(F)I

    move-result v1

    int-to-float v1, v1

    add-float v4, v11, v1

    iget-object v6, v0, Lcom/gmodvr/flat/TouchLayoutActivity$Preview;->paint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v3, v13

    move v5, v13

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 543
    iget-object v1, v0, Lcom/gmodvr/flat/TouchLayoutActivity$Preview;->this$0:Lcom/gmodvr/flat/TouchLayoutActivity;

    invoke-static {v1}, Lcom/gmodvr/flat/TouchLayoutActivity;->-$$Nest$fgetskin(Lcom/gmodvr/flat/TouchLayoutActivity;)Lcom/gmodvr/flat/Skin;

    move-result-object v1

    invoke-virtual {v1, v14}, Lcom/gmodvr/flat/Skin;->dp(F)I

    move-result v1

    int-to-float v1, v1

    sub-float v3, v13, v1

    iget-object v1, v0, Lcom/gmodvr/flat/TouchLayoutActivity$Preview;->this$0:Lcom/gmodvr/flat/TouchLayoutActivity;

    invoke-static {v1}, Lcom/gmodvr/flat/TouchLayoutActivity;->-$$Nest$fgetskin(Lcom/gmodvr/flat/TouchLayoutActivity;)Lcom/gmodvr/flat/Skin;

    move-result-object v1

    invoke-virtual {v1, v14}, Lcom/gmodvr/flat/Skin;->dp(F)I

    move-result v1

    int-to-float v1, v1

    add-float v5, v13, v1

    iget-object v6, v0, Lcom/gmodvr/flat/TouchLayoutActivity$Preview;->paint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v2, v11

    move v4, v11

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 544
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 545
    iget-object v1, v0, Lcom/gmodvr/flat/TouchLayoutActivity$Preview;->screen:Landroid/graphics/RectF;

    invoke-virtual {v7, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    const/4 v13, 0x0

    :goto_134
    const/4 v1, 0x2

    if-ge v13, v1, :cond_2bf

    .line 547
    iget-object v1, v0, Lcom/gmodvr/flat/TouchLayoutActivity$Preview;->this$0:Lcom/gmodvr/flat/TouchLayoutActivity;

    invoke-static {v1}, Lcom/gmodvr/flat/TouchLayoutActivity;->-$$Nest$fgetlayout(Lcom/gmodvr/flat/TouchLayoutActivity;)Lcom/gmodvr/flat/TouchLayout;

    move-result-object v1

    iget-object v1, v1, Lcom/gmodvr/flat/TouchLayout;->buttons:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_143
    :goto_143
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2bb

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gmodvr/flat/TouchLayout$Button;

    .line 548
    invoke-direct {v0, v1}, Lcom/gmodvr/flat/TouchLayoutActivity$Preview;->showing(Lcom/gmodvr/flat/TouchLayout$Button;)Z

    move-result v2

    if-eqz v2, :cond_143

    if-nez v13, :cond_159

    const/4 v2, 0x1

    goto :goto_15a

    :cond_159
    const/4 v2, 0x0

    :goto_15a
    invoke-virtual {v1}, Lcom/gmodvr/flat/TouchLayout$Button;->zone()Z

    move-result v3

    if-eq v2, v3, :cond_161

    goto :goto_143

    .line 549
    :cond_161
    invoke-direct {v0, v1}, Lcom/gmodvr/flat/TouchLayoutActivity$Preview;->bounds(Lcom/gmodvr/flat/TouchLayout$Button;)Landroid/graphics/RectF;

    move-result-object v2

    .line 550
    invoke-direct {v0, v1}, Lcom/gmodvr/flat/TouchLayoutActivity$Preview;->artwork(Lcom/gmodvr/flat/TouchLayout$Button;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 551
    iget-object v4, v0, Lcom/gmodvr/flat/TouchLayoutActivity$Preview;->paint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    if-eqz v3, :cond_1ab

    .line 553
    iget-object v4, v0, Lcom/gmodvr/flat/TouchLayoutActivity$Preview;->paint:Landroid/graphics/Paint;

    new-instance v6, Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v1}, Lcom/gmodvr/flat/TouchLayout$Button;->color()I

    move-result v10

    sget-object v11, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v6, v10, v11}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 554
    iget-object v4, v0, Lcom/gmodvr/flat/TouchLayoutActivity$Preview;->paint:Landroid/graphics/Paint;

    iget v6, v1, Lcom/gmodvr/flat/TouchLayout$Button;->a:I

    int-to-float v6, v6

    invoke-virtual {v1}, Lcom/gmodvr/flat/TouchLayout$Button;->hidden()Z

    move-result v10

    if-eqz v10, :cond_191

    const v10, 0x3ecccccd    # 0.4f

    goto :goto_192

    :cond_191
    move v10, v9

    :goto_192
    mul-float/2addr v6, v10

    float-to-int v6, v6

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 555
    iget-object v4, v0, Lcom/gmodvr/flat/TouchLayoutActivity$Preview;->paint:Landroid/graphics/Paint;

    const/4 v6, 0x0

    invoke-virtual {v7, v3, v6, v2, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 556
    iget-object v3, v0, Lcom/gmodvr/flat/TouchLayoutActivity$Preview;->paint:Landroid/graphics/Paint;

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 557
    iget-object v3, v0, Lcom/gmodvr/flat/TouchLayoutActivity$Preview;->paint:Landroid/graphics/Paint;

    const/16 v4, 0xff

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    goto/16 :goto_22c

    .line 559
    :cond_1ab
    iget-object v3, v0, Lcom/gmodvr/flat/TouchLayoutActivity$Preview;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Lcom/gmodvr/flat/TouchLayout$Button;->zone()Z

    move-result v4

    if-eqz v4, :cond_1b6

    const/16 v4, 0x20

    goto :goto_1b8

    :cond_1b6
    const/16 v4, 0x70

    :goto_1b8
    iget v6, v1, Lcom/gmodvr/flat/TouchLayout$Button;->r:I

    iget v10, v1, Lcom/gmodvr/flat/TouchLayout$Button;->g:I

    iget v11, v1, Lcom/gmodvr/flat/TouchLayout$Button;->b:I

    invoke-static {v4, v6, v10, v11}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 560
    iget-object v3, v0, Lcom/gmodvr/flat/TouchLayoutActivity$Preview;->paint:Landroid/graphics/Paint;

    invoke-virtual {v7, v2, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 561
    iget-object v3, v0, Lcom/gmodvr/flat/TouchLayoutActivity$Preview;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Lcom/gmodvr/flat/TouchLayout$Button;->color()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 562
    iget-object v3, v0, Lcom/gmodvr/flat/TouchLayoutActivity$Preview;->paint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 563
    iget-object v3, v0, Lcom/gmodvr/flat/TouchLayoutActivity$Preview;->paint:Landroid/graphics/Paint;

    invoke-virtual {v7, v2, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 564
    iget-object v3, v0, Lcom/gmodvr/flat/TouchLayoutActivity$Preview;->paint:Landroid/graphics/Paint;

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 565
    iget-object v3, v0, Lcom/gmodvr/flat/TouchLayoutActivity$Preview;->paint:Landroid/graphics/Paint;

    iget-object v4, v0, Lcom/gmodvr/flat/TouchLayoutActivity$Preview;->this$0:Lcom/gmodvr/flat/TouchLayoutActivity;

    invoke-static {v4}, Lcom/gmodvr/flat/TouchLayoutActivity;->-$$Nest$fgetskin(Lcom/gmodvr/flat/TouchLayoutActivity;)Lcom/gmodvr/flat/Skin;

    move-result-object v4

    invoke-virtual {v1}, Lcom/gmodvr/flat/TouchLayout$Button;->zone()Z

    move-result v6

    if-eqz v6, :cond_1f5

    const/high16 v6, 0x41500000    # 13.0f

    goto :goto_1f6

    :cond_1f5
    move v6, v12

    :goto_1f6
    invoke-virtual {v4, v6}, Lcom/gmodvr/flat/Skin;->dp(F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 566
    iget-object v3, v0, Lcom/gmodvr/flat/TouchLayoutActivity$Preview;->paint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 567
    iget-object v3, v0, Lcom/gmodvr/flat/TouchLayoutActivity$Preview;->paint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 568
    invoke-virtual {v1}, Lcom/gmodvr/flat/TouchLayout$Button;->label()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v6

    iget-object v10, v0, Lcom/gmodvr/flat/TouchLayoutActivity$Preview;->paint:Landroid/graphics/Paint;

    invoke-virtual {v10}, Landroid/graphics/Paint;->ascent()F

    move-result v10

    iget-object v11, v0, Lcom/gmodvr/flat/TouchLayoutActivity$Preview;->paint:Landroid/graphics/Paint;

    invoke-virtual {v11}, Landroid/graphics/Paint;->descent()F

    move-result v11

    add-float/2addr v10, v11

    div-float/2addr v10, v8

    sub-float/2addr v6, v10

    iget-object v10, v0, Lcom/gmodvr/flat/TouchLayoutActivity$Preview;->paint:Landroid/graphics/Paint;

    invoke-virtual {v7, v3, v4, v6, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 570
    :goto_22c
    iget-object v3, v0, Lcom/gmodvr/flat/TouchLayoutActivity$Preview;->this$0:Lcom/gmodvr/flat/TouchLayoutActivity;

    invoke-static {v3}, Lcom/gmodvr/flat/TouchLayoutActivity;->-$$Nest$fgetselected(Lcom/gmodvr/flat/TouchLayoutActivity;)Lcom/gmodvr/flat/TouchLayout$Button;

    move-result-object v3

    if-ne v1, v3, :cond_143

    .line 571
    iget-object v1, v0, Lcom/gmodvr/flat/TouchLayoutActivity$Preview;->paint:Landroid/graphics/Paint;

    iget-object v3, v0, Lcom/gmodvr/flat/TouchLayoutActivity$Preview;->this$0:Lcom/gmodvr/flat/TouchLayoutActivity;

    invoke-static {v3}, Lcom/gmodvr/flat/TouchLayoutActivity;->-$$Nest$fgetskin(Lcom/gmodvr/flat/TouchLayoutActivity;)Lcom/gmodvr/flat/Skin;

    move-result-object v3

    iget v3, v3, Lcom/gmodvr/flat/Skin;->accent:I

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 572
    iget-object v1, v0, Lcom/gmodvr/flat/TouchLayoutActivity$Preview;->paint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 573
    iget-object v1, v0, Lcom/gmodvr/flat/TouchLayoutActivity$Preview;->paint:Landroid/graphics/Paint;

    iget-object v3, v0, Lcom/gmodvr/flat/TouchLayoutActivity$Preview;->this$0:Lcom/gmodvr/flat/TouchLayoutActivity;

    invoke-static {v3}, Lcom/gmodvr/flat/TouchLayoutActivity;->-$$Nest$fgetskin(Lcom/gmodvr/flat/TouchLayoutActivity;)Lcom/gmodvr/flat/Skin;

    move-result-object v3

    invoke-virtual {v3, v8}, Lcom/gmodvr/flat/Skin;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 574
    iget-object v1, v0, Lcom/gmodvr/flat/TouchLayoutActivity$Preview;->paint:Landroid/graphics/Paint;

    invoke-virtual {v7, v2, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 575
    iget-object v1, v0, Lcom/gmodvr/flat/TouchLayoutActivity$Preview;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 576
    iget v1, v2, Landroid/graphics/RectF;->right:F

    iget-object v3, v0, Lcom/gmodvr/flat/TouchLayoutActivity$Preview;->this$0:Lcom/gmodvr/flat/TouchLayoutActivity;

    invoke-static {v3}, Lcom/gmodvr/flat/TouchLayoutActivity;->-$$Nest$fgetskin(Lcom/gmodvr/flat/TouchLayoutActivity;)Lcom/gmodvr/flat/Skin;

    move-result-object v3

    invoke-virtual {v3, v14}, Lcom/gmodvr/flat/Skin;->dp(F)I

    move-result v3

    int-to-float v3, v3

    sub-float v3, v1, v3

    iget v1, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v4, v0, Lcom/gmodvr/flat/TouchLayoutActivity$Preview;->this$0:Lcom/gmodvr/flat/TouchLayoutActivity;

    invoke-static {v4}, Lcom/gmodvr/flat/TouchLayoutActivity;->-$$Nest$fgetskin(Lcom/gmodvr/flat/TouchLayoutActivity;)Lcom/gmodvr/flat/Skin;

    move-result-object v4

    invoke-virtual {v4, v14}, Lcom/gmodvr/flat/Skin;->dp(F)I

    move-result v4

    int-to-float v4, v4

    sub-float v4, v1, v4

    iget v1, v2, Landroid/graphics/RectF;->right:F

    iget-object v5, v0, Lcom/gmodvr/flat/TouchLayoutActivity$Preview;->this$0:Lcom/gmodvr/flat/TouchLayoutActivity;

    invoke-static {v5}, Lcom/gmodvr/flat/TouchLayoutActivity;->-$$Nest$fgetskin(Lcom/gmodvr/flat/TouchLayoutActivity;)Lcom/gmodvr/flat/Skin;

    move-result-object v5

    invoke-virtual {v5, v14}, Lcom/gmodvr/flat/Skin;->dp(F)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v1

    iget v1, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v2, v0, Lcom/gmodvr/flat/TouchLayoutActivity$Preview;->this$0:Lcom/gmodvr/flat/TouchLayoutActivity;

    invoke-static {v2}, Lcom/gmodvr/flat/TouchLayoutActivity;->-$$Nest$fgetskin(Lcom/gmodvr/flat/TouchLayoutActivity;)Lcom/gmodvr/flat/Skin;

    move-result-object v2

    invoke-virtual {v2, v14}, Lcom/gmodvr/flat/Skin;->dp(F)I

    move-result v2

    int-to-float v2, v2

    add-float v6, v1, v2

    iget-object v10, v0, Lcom/gmodvr/flat/TouchLayoutActivity$Preview;->paint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move-object v6, v10

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 577
    iget-object v1, v0, Lcom/gmodvr/flat/TouchLayoutActivity$Preview;->paint:Landroid/graphics/Paint;

    iget-object v2, v0, Lcom/gmodvr/flat/TouchLayoutActivity$Preview;->this$0:Lcom/gmodvr/flat/TouchLayoutActivity;

    invoke-static {v2}, Lcom/gmodvr/flat/TouchLayoutActivity;->-$$Nest$fgetskin(Lcom/gmodvr/flat/TouchLayoutActivity;)Lcom/gmodvr/flat/Skin;

    move-result-object v2

    invoke-virtual {v2, v9}, Lcom/gmodvr/flat/Skin;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto/16 :goto_143

    :cond_2bb
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_134

    .line 580
    :cond_2bf
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 581
    iget-object v1, v0, Lcom/gmodvr/flat/TouchLayoutActivity$Preview;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 582
    iget-object v1, v0, Lcom/gmodvr/flat/TouchLayoutActivity$Preview;->paint:Landroid/graphics/Paint;

    const v2, -0xc7bcb4

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 583
    iget-object v1, v0, Lcom/gmodvr/flat/TouchLayoutActivity$Preview;->screen:Landroid/graphics/RectF;

    iget-object v0, v0, Lcom/gmodvr/flat/TouchLayoutActivity$Preview;->paint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 13

    .line 587
    iget-object v0, p0, Lcom/gmodvr/flat/TouchLayoutActivity$Preview;->this$0:Lcom/gmodvr/flat/TouchLayoutActivity;

    invoke-static {v0}, Lcom/gmodvr/flat/TouchLayoutActivity;->-$$Nest$fgetbusy(Lcom/gmodvr/flat/TouchLayoutActivity;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return v1

    .line 588
    :cond_a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v2, 0x2

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-nez v0, :cond_f3

    .line 590
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/gmodvr/flat/TouchLayoutActivity$Preview;->finger:I

    .line 591
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 592
    iput-boolean v1, p0, Lcom/gmodvr/flat/TouchLayoutActivity$Preview;->resizing:Z

    .line 593
    iget-object v5, p0, Lcom/gmodvr/flat/TouchLayoutActivity$Preview;->this$0:Lcom/gmodvr/flat/TouchLayoutActivity;

    invoke-static {v5}, Lcom/gmodvr/flat/TouchLayoutActivity;->-$$Nest$fgetselected(Lcom/gmodvr/flat/TouchLayoutActivity;)Lcom/gmodvr/flat/TouchLayout$Button;

    move-result-object v5

    if-eqz v5, :cond_6a

    .line 594
    iget-object v5, p0, Lcom/gmodvr/flat/TouchLayoutActivity$Preview;->this$0:Lcom/gmodvr/flat/TouchLayoutActivity;

    invoke-static {v5}, Lcom/gmodvr/flat/TouchLayoutActivity;->-$$Nest$fgetselected(Lcom/gmodvr/flat/TouchLayoutActivity;)Lcom/gmodvr/flat/TouchLayout$Button;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/gmodvr/flat/TouchLayoutActivity$Preview;->bounds(Lcom/gmodvr/flat/TouchLayout$Button;)Landroid/graphics/RectF;

    move-result-object v5

    .line 595
    iget v6, v5, Landroid/graphics/RectF;->right:F

    sub-float v6, v0, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget-object v7, p0, Lcom/gmodvr/flat/TouchLayoutActivity$Preview;->this$0:Lcom/gmodvr/flat/TouchLayoutActivity;

    invoke-static {v7}, Lcom/gmodvr/flat/TouchLayoutActivity;->-$$Nest$fgetskin(Lcom/gmodvr/flat/TouchLayoutActivity;)Lcom/gmodvr/flat/Skin;

    move-result-object v7

    const/high16 v8, 0x41600000    # 14.0f

    invoke-virtual {v7, v8}, Lcom/gmodvr/flat/Skin;->dp(F)I

    move-result v7

    int-to-float v7, v7

    cmpg-float v6, v6, v7

    if-gez v6, :cond_67

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    sub-float v5, p1, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget-object v6, p0, Lcom/gmodvr/flat/TouchLayoutActivity$Preview;->this$0:Lcom/gmodvr/flat/TouchLayoutActivity;

    invoke-static {v6}, Lcom/gmodvr/flat/TouchLayoutActivity;->-$$Nest$fgetskin(Lcom/gmodvr/flat/TouchLayoutActivity;)Lcom/gmodvr/flat/Skin;

    move-result-object v6

    invoke-virtual {v6, v8}, Lcom/gmodvr/flat/Skin;->dp(F)I

    move-result v6

    int-to-float v6, v6

    cmpg-float v5, v5, v6

    if-gez v5, :cond_67

    move v5, v4

    goto :goto_68

    :cond_67
    move v5, v1

    :goto_68
    iput-boolean v5, p0, Lcom/gmodvr/flat/TouchLayoutActivity$Preview;->resizing:Z

    .line 597
    :cond_6a
    iget-boolean v5, p0, Lcom/gmodvr/flat/TouchLayoutActivity$Preview;->resizing:Z

    if-eqz v5, :cond_75

    iget-object v5, p0, Lcom/gmodvr/flat/TouchLayoutActivity$Preview;->this$0:Lcom/gmodvr/flat/TouchLayoutActivity;

    invoke-static {v5}, Lcom/gmodvr/flat/TouchLayoutActivity;->-$$Nest$fgetselected(Lcom/gmodvr/flat/TouchLayoutActivity;)Lcom/gmodvr/flat/TouchLayout$Button;

    move-result-object v5

    goto :goto_76

    :cond_75
    const/4 v5, 0x0

    :goto_76
    if-nez v5, :cond_be

    move v6, v1

    :goto_79
    if-ge v6, v2, :cond_be

    if-nez v5, :cond_be

    .line 599
    iget-object v7, p0, Lcom/gmodvr/flat/TouchLayoutActivity$Preview;->this$0:Lcom/gmodvr/flat/TouchLayoutActivity;

    invoke-static {v7}, Lcom/gmodvr/flat/TouchLayoutActivity;->-$$Nest$fgetlayout(Lcom/gmodvr/flat/TouchLayoutActivity;)Lcom/gmodvr/flat/TouchLayout;

    move-result-object v7

    iget-object v7, v7, Lcom/gmodvr/flat/TouchLayout;->buttons:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v4

    :goto_8a
    if-ltz v7, :cond_bb

    .line 600
    iget-object v8, p0, Lcom/gmodvr/flat/TouchLayoutActivity$Preview;->this$0:Lcom/gmodvr/flat/TouchLayoutActivity;

    invoke-static {v8}, Lcom/gmodvr/flat/TouchLayoutActivity;->-$$Nest$fgetlayout(Lcom/gmodvr/flat/TouchLayoutActivity;)Lcom/gmodvr/flat/TouchLayout;

    move-result-object v8

    iget-object v8, v8, Lcom/gmodvr/flat/TouchLayout;->buttons:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/gmodvr/flat/TouchLayout$Button;

    .line 601
    invoke-virtual {v8}, Lcom/gmodvr/flat/TouchLayout$Button;->zone()Z

    move-result v9

    if-ne v6, v4, :cond_a2

    move v10, v4

    goto :goto_a3

    :cond_a2
    move v10, v1

    :goto_a3
    if-ne v9, v10, :cond_b8

    invoke-direct {p0, v8}, Lcom/gmodvr/flat/TouchLayoutActivity$Preview;->showing(Lcom/gmodvr/flat/TouchLayout$Button;)Z

    move-result v9

    if-nez v9, :cond_ac

    goto :goto_b8

    .line 602
    :cond_ac
    invoke-direct {p0, v8}, Lcom/gmodvr/flat/TouchLayoutActivity$Preview;->bounds(Lcom/gmodvr/flat/TouchLayout$Button;)Landroid/graphics/RectF;

    move-result-object v9

    invoke-virtual {v9, v0, p1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v9

    if-eqz v9, :cond_b8

    move-object v5, v8

    goto :goto_bb

    :cond_b8
    :goto_b8
    add-int/lit8 v7, v7, -0x1

    goto :goto_8a

    :cond_bb
    :goto_bb
    add-int/lit8 v6, v6, 0x1

    goto :goto_79

    :cond_be
    if-nez v5, :cond_c3

    .line 605
    iput v3, p0, Lcom/gmodvr/flat/TouchLayoutActivity$Preview;->finger:I

    return v1

    .line 606
    :cond_c3
    iget-object v1, p0, Lcom/gmodvr/flat/TouchLayoutActivity$Preview;->this$0:Lcom/gmodvr/flat/TouchLayoutActivity;

    invoke-static {v1, v5}, Lcom/gmodvr/flat/TouchLayoutActivity;->-$$Nest$mselect(Lcom/gmodvr/flat/TouchLayoutActivity;Lcom/gmodvr/flat/TouchLayout$Button;)V

    .line 607
    iget-object v1, p0, Lcom/gmodvr/flat/TouchLayoutActivity$Preview;->screen:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v2

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/gmodvr/flat/TouchLayoutActivity$Preview;->this$0:Lcom/gmodvr/flat/TouchLayoutActivity;

    invoke-static {v1}, Lcom/gmodvr/flat/TouchLayoutActivity;->-$$Nest$fgetselected(Lcom/gmodvr/flat/TouchLayoutActivity;)Lcom/gmodvr/flat/TouchLayout$Button;

    move-result-object v1

    iget v1, v1, Lcom/gmodvr/flat/TouchLayout$Button;->x1:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/gmodvr/flat/TouchLayoutActivity$Preview;->dragX:F

    .line 608
    iget-object v0, p0, Lcom/gmodvr/flat/TouchLayoutActivity$Preview;->screen:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->top:F

    sub-float/2addr p1, v1

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    div-float/2addr p1, v0

    iget-object v0, p0, Lcom/gmodvr/flat/TouchLayoutActivity$Preview;->this$0:Lcom/gmodvr/flat/TouchLayoutActivity;

    invoke-static {v0}, Lcom/gmodvr/flat/TouchLayoutActivity;->-$$Nest$fgetselected(Lcom/gmodvr/flat/TouchLayoutActivity;)Lcom/gmodvr/flat/TouchLayout$Button;

    move-result-object v0

    iget v0, v0, Lcom/gmodvr/flat/TouchLayout$Button;->y1:F

    sub-float/2addr p1, v0

    iput p1, p0, Lcom/gmodvr/flat/TouchLayoutActivity$Preview;->dragY:F

    return v4

    .line 611
    :cond_f3
    iget v5, p0, Lcom/gmodvr/flat/TouchLayoutActivity$Preview;->finger:I

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v5

    if-ne v0, v2, :cond_18a

    if-ltz v5, :cond_18a

    .line 612
    iget-object v2, p0, Lcom/gmodvr/flat/TouchLayoutActivity$Preview;->this$0:Lcom/gmodvr/flat/TouchLayoutActivity;

    invoke-static {v2}, Lcom/gmodvr/flat/TouchLayoutActivity;->-$$Nest$fgetselected(Lcom/gmodvr/flat/TouchLayoutActivity;)Lcom/gmodvr/flat/TouchLayout$Button;

    move-result-object v2

    if-eqz v2, :cond_18a

    .line 613
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iget-object v1, p0, Lcom/gmodvr/flat/TouchLayoutActivity$Preview;->screen:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v2

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float/2addr v0, v1

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    iget-object v1, p0, Lcom/gmodvr/flat/TouchLayoutActivity$Preview;->screen:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->top:F

    sub-float/2addr p1, v2

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    div-float/2addr p1, v1

    .line 614
    iget-boolean v1, p0, Lcom/gmodvr/flat/TouchLayoutActivity$Preview;->resizing:Z

    if-eqz v1, :cond_159

    iget-object v1, p0, Lcom/gmodvr/flat/TouchLayoutActivity$Preview;->this$0:Lcom/gmodvr/flat/TouchLayoutActivity;

    invoke-static {v1}, Lcom/gmodvr/flat/TouchLayoutActivity;->-$$Nest$fgetlayout(Lcom/gmodvr/flat/TouchLayoutActivity;)Lcom/gmodvr/flat/TouchLayout;

    move-result-object v5

    iget-object v1, p0, Lcom/gmodvr/flat/TouchLayoutActivity$Preview;->this$0:Lcom/gmodvr/flat/TouchLayoutActivity;

    invoke-static {v1}, Lcom/gmodvr/flat/TouchLayoutActivity;->-$$Nest$fgetselected(Lcom/gmodvr/flat/TouchLayoutActivity;)Lcom/gmodvr/flat/TouchLayout$Button;

    move-result-object v6

    iget-object v1, p0, Lcom/gmodvr/flat/TouchLayoutActivity$Preview;->this$0:Lcom/gmodvr/flat/TouchLayoutActivity;

    invoke-static {v1}, Lcom/gmodvr/flat/TouchLayoutActivity;->-$$Nest$fgetselected(Lcom/gmodvr/flat/TouchLayoutActivity;)Lcom/gmodvr/flat/TouchLayout$Button;

    move-result-object v1

    iget v7, v1, Lcom/gmodvr/flat/TouchLayout$Button;->x1:F

    iget-object v1, p0, Lcom/gmodvr/flat/TouchLayoutActivity$Preview;->this$0:Lcom/gmodvr/flat/TouchLayoutActivity;

    invoke-static {v1}, Lcom/gmodvr/flat/TouchLayoutActivity;->-$$Nest$fgetselected(Lcom/gmodvr/flat/TouchLayoutActivity;)Lcom/gmodvr/flat/TouchLayout$Button;

    move-result-object v1

    iget v8, v1, Lcom/gmodvr/flat/TouchLayout$Button;->y1:F

    iget-object v1, p0, Lcom/gmodvr/flat/TouchLayoutActivity$Preview;->this$0:Lcom/gmodvr/flat/TouchLayoutActivity;

    invoke-static {v1}, Lcom/gmodvr/flat/TouchLayoutActivity;->-$$Nest$fgetselected(Lcom/gmodvr/flat/TouchLayoutActivity;)Lcom/gmodvr/flat/TouchLayout$Button;

    move-result-object v1

    iget v1, v1, Lcom/gmodvr/flat/TouchLayout$Button;->x1:F

    sub-float v9, v0, v1

    iget-object v0, p0, Lcom/gmodvr/flat/TouchLayoutActivity$Preview;->this$0:Lcom/gmodvr/flat/TouchLayoutActivity;

    invoke-static {v0}, Lcom/gmodvr/flat/TouchLayoutActivity;->-$$Nest$fgetselected(Lcom/gmodvr/flat/TouchLayoutActivity;)Lcom/gmodvr/flat/TouchLayout$Button;

    move-result-object v0

    iget v0, v0, Lcom/gmodvr/flat/TouchLayout$Button;->y1:F

    sub-float v10, p1, v0

    invoke-virtual/range {v5 .. v10}, Lcom/gmodvr/flat/TouchLayout;->rect(Lcom/gmodvr/flat/TouchLayout$Button;FFFF)V

    goto :goto_184

    .line 615
    :cond_159
    iget-object v1, p0, Lcom/gmodvr/flat/TouchLayoutActivity$Preview;->this$0:Lcom/gmodvr/flat/TouchLayoutActivity;

    invoke-static {v1}, Lcom/gmodvr/flat/TouchLayoutActivity;->-$$Nest$fgetlayout(Lcom/gmodvr/flat/TouchLayoutActivity;)Lcom/gmodvr/flat/TouchLayout;

    move-result-object v5

    iget-object v1, p0, Lcom/gmodvr/flat/TouchLayoutActivity$Preview;->this$0:Lcom/gmodvr/flat/TouchLayoutActivity;

    invoke-static {v1}, Lcom/gmodvr/flat/TouchLayoutActivity;->-$$Nest$fgetselected(Lcom/gmodvr/flat/TouchLayoutActivity;)Lcom/gmodvr/flat/TouchLayout$Button;

    move-result-object v6

    iget v1, p0, Lcom/gmodvr/flat/TouchLayoutActivity$Preview;->dragX:F

    sub-float v7, v0, v1

    iget v0, p0, Lcom/gmodvr/flat/TouchLayoutActivity$Preview;->dragY:F

    sub-float v8, p1, v0

    iget-object p1, p0, Lcom/gmodvr/flat/TouchLayoutActivity$Preview;->this$0:Lcom/gmodvr/flat/TouchLayoutActivity;

    invoke-static {p1}, Lcom/gmodvr/flat/TouchLayoutActivity;->-$$Nest$fgetselected(Lcom/gmodvr/flat/TouchLayoutActivity;)Lcom/gmodvr/flat/TouchLayout$Button;

    move-result-object p1

    invoke-virtual {p1}, Lcom/gmodvr/flat/TouchLayout$Button;->width()F

    move-result v9

    iget-object p1, p0, Lcom/gmodvr/flat/TouchLayoutActivity$Preview;->this$0:Lcom/gmodvr/flat/TouchLayoutActivity;

    invoke-static {p1}, Lcom/gmodvr/flat/TouchLayoutActivity;->-$$Nest$fgetselected(Lcom/gmodvr/flat/TouchLayoutActivity;)Lcom/gmodvr/flat/TouchLayout$Button;

    move-result-object p1

    invoke-virtual {p1}, Lcom/gmodvr/flat/TouchLayout$Button;->height()F

    move-result v10

    invoke-virtual/range {v5 .. v10}, Lcom/gmodvr/flat/TouchLayout;->rect(Lcom/gmodvr/flat/TouchLayout$Button;FFFF)V

    .line 616
    :goto_184
    iget-object p0, p0, Lcom/gmodvr/flat/TouchLayoutActivity$Preview;->this$0:Lcom/gmodvr/flat/TouchLayoutActivity;

    invoke-static {p0}, Lcom/gmodvr/flat/TouchLayoutActivity;->-$$Nest$medited(Lcom/gmodvr/flat/TouchLayoutActivity;)V

    return v4

    :cond_18a
    if-eq v0, v4, :cond_196

    const/4 p1, 0x3

    if-ne v0, p1, :cond_190

    goto :goto_196

    .line 624
    :cond_190
    iget p0, p0, Lcom/gmodvr/flat/TouchLayoutActivity$Preview;->finger:I

    if-eq p0, v3, :cond_195

    move v1, v4

    :cond_195
    return v1

    .line 620
    :cond_196
    :goto_196
    iput v3, p0, Lcom/gmodvr/flat/TouchLayoutActivity$Preview;->finger:I

    if-ne v0, v4, :cond_19d

    .line 621
    invoke-virtual {p0}, Lcom/gmodvr/flat/TouchLayoutActivity$Preview;->performClick()Z

    :cond_19d
    return v4
.end method

.method public performClick()Z
    .registers 1

    .line 627
    invoke-super {p0}, Landroid/view/View;->performClick()Z

    const/4 p0, 0x1

    return p0
.end method

###### Class com.gmodvr.flat.TouchLayoutActivity$$ExternalSyntheticLambda0 (com.gmodvr.flat.TouchLayoutActivity$$ExternalSyntheticLambda0)
.class public final synthetic Lcom/gmodvr/flat/TouchLayoutActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/TouchLayout$Button;


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/TouchLayout$Button;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/TouchLayoutActivity$$ExternalSyntheticLambda0;->f$0:Lcom/gmodvr/flat/TouchLayout$Button;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/gmodvr/flat/TouchLayoutActivity$$ExternalSyntheticLambda0;->f$0:Lcom/gmodvr/flat/TouchLayout$Button;

    check-cast p1, Lcom/gmodvr/flat/CustomButtons$Entry;

    invoke-static {p0, p1}, Lcom/gmodvr/flat/TouchLayoutActivity;->$r8$lambda$zKWxjyf1uJoWDEuFp81OoCYaxYM(Lcom/gmodvr/flat/TouchLayout$Button;Lcom/gmodvr/flat/CustomButtons$Entry;)Z

    move-result p0

    return p0
.end method

###### Class com.gmodvr.flat.TouchLayoutActivity$$ExternalSyntheticLambda1 (com.gmodvr.flat.TouchLayoutActivity$$ExternalSyntheticLambda1)
.class public final synthetic Lcom/gmodvr/flat/TouchLayoutActivity$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/TouchLayoutActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/TouchLayoutActivity;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/TouchLayoutActivity$$ExternalSyntheticLambda1;->f$0:Lcom/gmodvr/flat/TouchLayoutActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/gmodvr/flat/TouchLayoutActivity$$ExternalSyntheticLambda1;->f$0:Lcom/gmodvr/flat/TouchLayoutActivity;

    invoke-static {p0}, Lcom/gmodvr/flat/TouchLayoutActivity;->$r8$lambda$EadCoIR2LLWILOybVV4jQMC22ew(Lcom/gmodvr/flat/TouchLayoutActivity;)V

    return-void
.end method

###### Class com.gmodvr.flat.TouchLayoutActivity$$ExternalSyntheticLambda10 (com.gmodvr.flat.TouchLayoutActivity$$ExternalSyntheticLambda10)
.class public final synthetic Lcom/gmodvr/flat/TouchLayoutActivity$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/TouchLayoutActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/TouchLayoutActivity;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/TouchLayoutActivity$$ExternalSyntheticLambda10;->f$0:Lcom/gmodvr/flat/TouchLayoutActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 0
    iget-object p0, p0, Lcom/gmodvr/flat/TouchLayoutActivity$$ExternalSyntheticLambda10;->f$0:Lcom/gmodvr/flat/TouchLayoutActivity;

    invoke-static {p0, p1, p2}, Lcom/gmodvr/flat/TouchLayoutActivity;->$r8$lambda$Ga-cQdg-nDP7idwR4kQUnLVQtbU(Lcom/gmodvr/flat/TouchLayoutActivity;Landroid/content/DialogInterface;I)V

    return-void
.end method

###### Class com.gmodvr.flat.TouchLayoutActivity$$ExternalSyntheticLambda11 (com.gmodvr.flat.TouchLayoutActivity$$ExternalSyntheticLambda11)
.class public final synthetic Lcom/gmodvr/flat/TouchLayoutActivity$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/TouchLayoutActivity;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/TouchLayoutActivity;Ljava/lang/String;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/TouchLayoutActivity$$ExternalSyntheticLambda11;->f$0:Lcom/gmodvr/flat/TouchLayoutActivity;

    iput-object p2, p0, Lcom/gmodvr/flat/TouchLayoutActivity$$ExternalSyntheticLambda11;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/gmodvr/flat/TouchLayoutActivity$$ExternalSyntheticLambda11;->f$0:Lcom/gmodvr/flat/TouchLayoutActivity;

    iget-object p0, p0, Lcom/gmodvr/flat/TouchLayoutActivity$$ExternalSyntheticLambda11;->f$1:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/gmodvr/flat/TouchLayoutActivity;->$r8$lambda$mKSzRkKq9dUuOYubplGBWoYLcLI(Lcom/gmodvr/flat/TouchLayoutActivity;Ljava/lang/String;)V

    return-void
.end method

###### Class com.gmodvr.flat.TouchLayoutActivity$$ExternalSyntheticLambda12 (com.gmodvr.flat.TouchLayoutActivity$$ExternalSyntheticLambda12)
.class public final synthetic Lcom/gmodvr/flat/TouchLayoutActivity$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/TouchLayoutActivity;

.field public final synthetic f$1:Lcom/gmodvr/flat/TouchLayoutTransfer$Imported;

.field public final synthetic f$2:Ljava/util/List;

.field public final synthetic f$3:Ljava/util/Map;

.field public final synthetic f$4:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/TouchLayoutActivity;Lcom/gmodvr/flat/TouchLayoutTransfer$Imported;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;)V
    .registers 6

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/TouchLayoutActivity$$ExternalSyntheticLambda12;->f$0:Lcom/gmodvr/flat/TouchLayoutActivity;

    iput-object p2, p0, Lcom/gmodvr/flat/TouchLayoutActivity$$ExternalSyntheticLambda12;->f$1:Lcom/gmodvr/flat/TouchLayoutTransfer$Imported;

    iput-object p3, p0, Lcom/gmodvr/flat/TouchLayoutActivity$$ExternalSyntheticLambda12;->f$2:Ljava/util/List;

    iput-object p4, p0, Lcom/gmodvr/flat/TouchLayoutActivity$$ExternalSyntheticLambda12;->f$3:Ljava/util/Map;

    iput-object p5, p0, Lcom/gmodvr/flat/TouchLayoutActivity$$ExternalSyntheticLambda12;->f$4:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .line 0
    iget-object v0, p0, Lcom/gmodvr/flat/TouchLayoutActivity$$ExternalSyntheticLambda12;->f$0:Lcom/gmodvr/flat/TouchLayoutActivity;

    iget-object v1, p0, Lcom/gmodvr/flat/TouchLayoutActivity$$ExternalSyntheticLambda12;->f$1:Lcom/gmodvr/flat/TouchLayoutTransfer$Imported;

    iget-object v2, p0, Lcom/gmodvr/flat/TouchLayoutActivity$$ExternalSyntheticLambda12;->f$2:Ljava/util/List;

    iget-object v3, p0, Lcom/gmodvr/flat/TouchLayoutActivity$$ExternalSyntheticLambda12;->f$3:Ljava/util/Map;

    iget-object p0, p0, Lcom/gmodvr/flat/TouchLayoutActivity$$ExternalSyntheticLambda12;->f$4:Ljava/util/Map;

    invoke-static {v0, v1, v2, v3, p0}, Lcom/gmodvr/flat/TouchLayoutActivity;->$r8$lambda$7Zin3t3IoQEATJ16a0X7YfuxhmE(Lcom/gmodvr/flat/TouchLayoutActivity;Lcom/gmodvr/flat/TouchLayoutTransfer$Imported;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method

###### Class com.gmodvr.flat.TouchLayoutActivity$$ExternalSyntheticLambda13 (com.gmodvr.flat.TouchLayoutActivity$$ExternalSyntheticLambda13)
.class public final synthetic Lcom/gmodvr/flat/TouchLayoutActivity$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/TouchLayoutActivity;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:I

.field public final synthetic f$3:Ljava/lang/Exception;


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/TouchLayoutActivity;Ljava/lang/String;ILjava/lang/Exception;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/TouchLayoutActivity$$ExternalSyntheticLambda13;->f$0:Lcom/gmodvr/flat/TouchLayoutActivity;

    iput-object p2, p0, Lcom/gmodvr/flat/TouchLayoutActivity$$ExternalSyntheticLambda13;->f$1:Ljava/lang/String;

    iput p3, p0, Lcom/gmodvr/flat/TouchLayoutActivity$$ExternalSyntheticLambda13;->f$2:I

    iput-object p4, p0, Lcom/gmodvr/flat/TouchLayoutActivity$$ExternalSyntheticLambda13;->f$3:Ljava/lang/Exception;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/gmodvr/flat/TouchLayoutActivity$$ExternalSyntheticLambda13;->f$0:Lcom/gmodvr/flat/TouchLayoutActivity;

    iget-object v1, p0, Lcom/gmodvr/flat/TouchLayoutActivity$$ExternalSyntheticLambda13;->f$1:Ljava/lang/String;

    iget v2, p0, Lcom/gmodvr/flat/TouchLayoutActivity$$ExternalSyntheticLambda13;->f$2:I

    iget-object p0, p0, Lcom/gmodvr/flat/TouchLayoutActivity$$ExternalSyntheticLambda13;->f$3:Ljava/lang/Exception;

    invoke-static {v0, v1, v2, p0}, Lcom/gmodvr/flat/TouchLayoutActivity;->$r8$lambda$8U184J-9XvCuGNuU6G7nndt6Efg(Lcom/gmodvr/flat/TouchLayoutActivity;Ljava/lang/String;ILjava/lang/Exception;)V

    return-void
.end method

###### Class com.gmodvr.flat.TouchLayoutActivity$$ExternalSyntheticLambda14 (com.gmodvr.flat.TouchLayoutActivity$$ExternalSyntheticLambda14)
.class public final synthetic Lcom/gmodvr/flat/TouchLayoutActivity$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/TouchLayoutActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/TouchLayoutActivity;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/TouchLayoutActivity$$ExternalSyntheticLambda14;->f$0:Lcom/gmodvr/flat/TouchLayoutActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/gmodvr/flat/TouchLayoutActivity$$ExternalSyntheticLambda14;->f$0:Lcom/gmodvr/flat/TouchLayoutActivity;

    invoke-static {p0}, Lcom/gmodvr/flat/TouchLayoutActivity;->$r8$lambda$meXRbk9_55lq3fKIWdArW9D5SI0(Lcom/gmodvr/flat/TouchLayoutActivity;)V

    return-void
.end method

###### Class com.gmodvr.flat.TouchLayoutActivity$$ExternalSyntheticLambda15 (com.gmodvr.flat.TouchLayoutActivity$$ExternalSyntheticLambda15)
.class public final synthetic Lcom/gmodvr/flat/TouchLayoutActivity$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/TouchLayoutActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/TouchLayoutActivity;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/TouchLayoutActivity$$ExternalSyntheticLambda15;->f$0:Lcom/gmodvr/flat/TouchLayoutActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/gmodvr/flat/TouchLayoutActivity$$ExternalSyntheticLambda15;->f$0:Lcom/gmodvr/flat/TouchLayoutActivity;

    invoke-static {p0}, Lcom/gmodvr/flat/TouchLayoutActivity;->$r8$lambda$RihQcdhjIJ2ZF8V7ib3Q7jBP7pg(Lcom/gmodvr/flat/TouchLayoutActivity;)V

    return-void
.end method

###### Class com.gmodvr.flat.TouchLayoutActivity$$ExternalSyntheticLambda16 (com.gmodvr.flat.TouchLayoutActivity$$ExternalSyntheticLambda16)
.class public final synthetic Lcom/gmodvr/flat/TouchLayoutActivity$$ExternalSyntheticLambda16;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/TouchLayoutActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/TouchLayoutActivity;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/TouchLayoutActivity$$ExternalSyntheticLambda16;->f$0:Lcom/gmodvr/flat/TouchLayoutActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/gmodvr/flat/TouchLayoutActivity$$ExternalSyntheticLambda16;->f$0:Lcom/gmodvr/flat/TouchLayoutActivity;

    invoke-static {p0}, Lcom/gmodvr/flat/TouchLayoutActivity;->$r8$lambda$WIDr10CpIeIglJZxiDDBuypDlss(Lcom/gmodvr/flat/TouchLayoutActivity;)V

    return-void
.end method

###### Class com.gmodvr.flat.TouchLayoutActivity$$ExternalSyntheticLambda17 (com.gmodvr.flat.TouchLayoutActivity$$ExternalSyntheticLambda17)
.class public final synthetic Lcom/gmodvr/flat/TouchLayoutActivity$$ExternalSyntheticLambda17;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/TouchLayoutActivity;

.field public final synthetic f$1:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/TouchLayoutActivity;Landroid/os/Bundle;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/TouchLayoutActivity$$ExternalSyntheticLambda17;->f$0:Lcom/gmodvr/flat/TouchLayoutActivity;

    iput-object p2, p0, Lcom/gmodvr/flat/TouchLayoutActivity$$ExternalSyntheticLambda17;->f$1:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/gmodvr/flat/TouchLayoutActivity$$ExternalSyntheticLambda17;->f$0:Lcom/gmodvr/flat/TouchLayoutActivity;

    iget-object p0, p0, Lcom/gmodvr/flat/TouchLayoutActivity$$ExternalSyntheticLambda17;->f$1:Landroid/os/Bundle;

    invoke-static {v0, p0}, Lcom/gmodvr/flat/TouchLayoutActivity;->$r8$lambda$Lr-KYiWYGVGCCdIORXp4vHj9wz8(Lcom/gmodvr/flat/TouchLayoutActivity;Landroid/os/Bundle;)V

    return-void
.end method

###### Class com.gmodvr.flat.TouchLayoutActivity$$ExternalSyntheticLambda18 (com.gmodvr.flat.TouchLayoutActivity$$ExternalSyntheticLambda18)
.class public final synthetic Lcom/gmodvr/flat/TouchLayoutActivity$$ExternalSyntheticLambda18;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/TouchLayoutActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/TouchLayoutActivity;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/TouchLayoutActivity$$ExternalSyntheticLambda18;->f$0:Lcom/gmodvr/flat/TouchLayoutActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 0
    iget-object p0, p0, Lcom/gmodvr/flat/TouchLayoutActivity$$ExternalSyntheticLambda18;->f$0:Lcom/gmodvr/flat/TouchLayoutActivity;

    invoke-static {p0, p1, p2}, Lcom/gmodvr/flat/TouchLayoutActivity;->$r8$lambda$gHYYiceY48hFiviuc-j7QyCJgz0(Lcom/gmodvr/flat/TouchLayoutActivity;Landroid/content/DialogInterface;I)V

    return-void
.end method

###### Class com.gmodvr.flat.TouchLayoutActivity$$ExternalSyntheticLambda19 (com.gmodvr.flat.TouchLayoutActivity$$ExternalSyntheticLambda19)
.class public final synthetic Lcom/gmodvr/flat/TouchLayoutActivity$$ExternalSyntheticLambda19;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/TouchLayoutActivity;

.field public final synthetic f$1:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/TouchLayoutActivity;Landroid/os/Bundle;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/TouchLayoutActivity$$ExternalSyntheticLambda19;->f$0:Lcom/gmodvr/flat/TouchLayoutActivity;

    iput-object p2, p0, Lcom/gmodvr/flat/TouchLayoutActivity$$ExternalSyntheticLambda19;->f$1:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/gmodvr/flat/TouchLayoutActivity$$ExternalSyntheticLambda19;->f$0:Lcom/gmodvr/flat/TouchLayoutActivity;

    iget-object p0, p0, Lcom/gmodvr/flat/TouchLayoutActivity$$ExternalSyntheticLambda19;->f$1:Landroid/os/Bundle;

    invoke-static {v0, p0}, Lcom/gmodvr/flat/TouchLayoutActivity;->$r8$lambda$VjdkYOquXmqGW6iiIATDY_-qJ3s(Lcom/gmodvr/flat/TouchLayoutActivity;Landroid/os/Bundle;)V

    return-void
.end method

###### Class com.gmodvr.flat.TouchLayoutActivity$$ExternalSyntheticLambda2 (com.gmodvr.flat.TouchLayoutActivity$$ExternalSyntheticLambda2)
.class public final synthetic Lcom/gmodvr/flat/TouchLayoutActivity$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/TouchLayoutActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/TouchLayoutActivity;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/TouchLayoutActivity$$ExternalSyntheticLambda2;->f$0:Lcom/gmodvr/flat/TouchLayoutActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/gmodvr/flat/TouchLayoutActivity$$ExternalSyntheticLambda2;->f$0:Lcom/gmodvr/flat/TouchLayoutActivity;

    invoke-static {p0}, Lcom/gmodvr/flat/TouchLayoutActivity;->$r8$lambda$8bvrC1RdoGqClTauu_hCY5q3ShM(Lcom/gmodvr/flat/TouchLayoutActivity;)V

    return-void
.end method

###### Class com.gmodvr.flat.TouchLayoutActivity$$ExternalSyntheticLambda20 (com.gmodvr.flat.TouchLayoutActivity$$ExternalSyntheticLambda20)
.class public final synthetic Lcom/gmodvr/flat/TouchLayoutActivity$$ExternalSyntheticLambda20;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/TouchLayoutActivity;

.field public final synthetic f$1:Ljava/lang/Exception;


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/TouchLayoutActivity;Ljava/lang/Exception;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/TouchLayoutActivity$$ExternalSyntheticLambda20;->f$0:Lcom/gmodvr/flat/TouchLayoutActivity;

    iput-object p2, p0, Lcom/gmodvr/flat/TouchLayoutActivity$$ExternalSyntheticLambda20;->f$1:Ljava/lang/Exception;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/gmodvr/flat/TouchLayoutActivity$$ExternalSyntheticLambda20;->f$0:Lcom/gmodvr/flat/TouchLayoutActivity;

    iget-object p0, p0, Lcom/gmodvr/flat/TouchLayoutActivity$$ExternalSyntheticLambda20;->f$1:Ljava/lang/Exception;

    invoke-static {v0, p0}, Lcom/gmodvr/flat/TouchLayoutActivity;->$r8$lambda$Ib-dfAO1vNc6ZuemnINWT723aZo(Lcom/gmodvr/flat/TouchLayoutActivity;Ljava/lang/Exception;)V

    return-void
.end method

###### Class com.gmodvr.flat.TouchLayoutActivity$$ExternalSyntheticLambda21 (com.gmodvr.flat.TouchLayoutActivity$$ExternalSyntheticLambda21)
.class public final synthetic Lcom/gmodvr/flat/TouchLayoutActivity$$ExternalSyntheticLambda21;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/TouchLayoutActivity;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Landroid/net/Uri;

.field public final synthetic f$4:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/TouchLayoutActivity;ILjava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V
    .registers 6

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/TouchLayoutActivity$$ExternalSyntheticLambda21;->f$0:Lcom/gmodvr/flat/TouchLayoutActivity;

    iput p2, p0, Lcom/gmodvr/flat/TouchLayoutActivity$$ExternalSyntheticLambda21;->f$1:I

    iput-object p3, p0, Lcom/gmodvr/flat/TouchLayoutActivity$$ExternalSyntheticLambda21;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/gmodvr/flat/TouchLayoutActivity$$ExternalSyntheticLambda21;->f$3:Landroid/net/Uri;

    iput-object p5, p0, Lcom/gmodvr/flat/TouchLayoutActivity$$ExternalSyntheticLambda21;->f$4:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .line 0
    iget-object v0, p0, Lcom/gmodvr/flat/TouchLayoutActivity$$ExternalSyntheticLambda21;->f$0:Lcom/gmodvr/flat/TouchLayoutActivity;

    iget v1, p0, Lcom/gmodvr/flat/TouchLayoutActivity$$ExternalSyntheticLambda21;->f$1:I

    iget-object v2, p0, Lcom/gmodvr/flat/TouchLayoutActivity$$ExternalSyntheticLambda21;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lcom/gmodvr/flat/TouchLayoutActivity$$ExternalSyntheticLambda21;->f$3:Landroid/net/Uri;

    iget-object p0, p0, Lcom/gmodvr/flat/TouchLayoutActivity$$ExternalSyntheticLambda21;->f$4:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, p0}, Lcom/gmodvr/flat/TouchLayoutActivity;->$r8$lambda$egbVFnnNqtVCAp0aHvoYXU2rJdY(Lcom/gmodvr/flat/TouchLayoutActivity;ILjava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    return-void
.end method

###### Class com.gmodvr.flat.TouchLayoutActivity$$ExternalSyntheticLambda22 (com.gmodvr.flat.TouchLayoutActivity$$ExternalSyntheticLambda22)
.class public final synthetic Lcom/gmodvr/flat/TouchLayoutActivity$$ExternalSyntheticLambda22;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 2

    .line 0
    check-cast p1, Lcom/gmodvr/flat/TouchLayout$Button;

    invoke-static {p1}, Lcom/gmodvr/flat/TouchLayoutActivity;->$r8$lambda$WOWI1OcdvnL8aseaH8kogq7SINI(Lcom/gmodvr/flat/TouchLayout$Button;)Z

    move-result p0

    return p0
.end method

###### Class com.gmodvr.flat.TouchLayoutActivity$$ExternalSyntheticLambda3 (com.gmodvr.flat.TouchLayoutActivity$$ExternalSyntheticLambda3)
.class public final synthetic Lcom/gmodvr/flat/TouchLayoutActivity$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/IntConsumer;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/TouchLayoutActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/TouchLayoutActivity;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/TouchLayoutActivity$$ExternalSyntheticLambda3;->f$0:Lcom/gmodvr/flat/TouchLayoutActivity;

    return-void
.end method


# virtual methods
.method public final accept(I)V
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/gmodvr/flat/TouchLayoutActivity$$ExternalSyntheticLambda3;->f$0:Lcom/gmodvr/flat/TouchLayoutActivity;

    invoke-static {p0, p1}, Lcom/gmodvr/flat/TouchLayoutActivity;->$r8$lambda$_vTU7LvyM487Um17T33fPaZ3x2I(Lcom/gmodvr/flat/TouchLayoutActivity;I)V

    return-void
.end method

###### Class com.gmodvr.flat.TouchLayoutActivity$$ExternalSyntheticLambda4 (com.gmodvr.flat.TouchLayoutActivity$$ExternalSyntheticLambda4)
.class public final synthetic Lcom/gmodvr/flat/TouchLayoutActivity$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/TouchLayoutActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/TouchLayoutActivity;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/TouchLayoutActivity$$ExternalSyntheticLambda4;->f$0:Lcom/gmodvr/flat/TouchLayoutActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/gmodvr/flat/TouchLayoutActivity$$ExternalSyntheticLambda4;->f$0:Lcom/gmodvr/flat/TouchLayoutActivity;

    invoke-static {p0}, Lcom/gmodvr/flat/TouchLayoutActivity;->$r8$lambda$sr1YQob8WrPFY6WyKMh4_xLmUfs(Lcom/gmodvr/flat/TouchLayoutActivity;)V

    return-void
.end method

###### Class com.gmodvr.flat.TouchLayoutActivity$$ExternalSyntheticLambda5 (com.gmodvr.flat.TouchLayoutActivity$$ExternalSyntheticLambda5)
.class public final synthetic Lcom/gmodvr/flat/TouchLayoutActivity$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/TouchLayoutActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/TouchLayoutActivity;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/TouchLayoutActivity$$ExternalSyntheticLambda5;->f$0:Lcom/gmodvr/flat/TouchLayoutActivity;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 3

    .line 0
    iget-object p0, p0, Lcom/gmodvr/flat/TouchLayoutActivity$$ExternalSyntheticLambda5;->f$0:Lcom/gmodvr/flat/TouchLayoutActivity;

    invoke-static {p0, p1, p2}, Lcom/gmodvr/flat/TouchLayoutActivity;->$r8$lambda$fkXmnjRGj9lxmVW1ro2lUUEaY7Q(Lcom/gmodvr/flat/TouchLayoutActivity;Landroid/widget/CompoundButton;Z)V

    return-void
.end method

###### Class com.gmodvr.flat.TouchLayoutActivity$$ExternalSyntheticLambda6 (com.gmodvr.flat.TouchLayoutActivity$$ExternalSyntheticLambda6)
.class public final synthetic Lcom/gmodvr/flat/TouchLayoutActivity$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/TouchLayoutActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/TouchLayoutActivity;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/TouchLayoutActivity$$ExternalSyntheticLambda6;->f$0:Lcom/gmodvr/flat/TouchLayoutActivity;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 3

    .line 0
    iget-object p0, p0, Lcom/gmodvr/flat/TouchLayoutActivity$$ExternalSyntheticLambda6;->f$0:Lcom/gmodvr/flat/TouchLayoutActivity;

    invoke-static {p0, p1, p2}, Lcom/gmodvr/flat/TouchLayoutActivity;->$r8$lambda$z1uuXUQeaP_yM02lB517DyuzL8A(Lcom/gmodvr/flat/TouchLayoutActivity;Landroid/widget/CompoundButton;Z)V

    return-void
.end method

###### Class com.gmodvr.flat.TouchLayoutActivity$$ExternalSyntheticLambda7 (com.gmodvr.flat.TouchLayoutActivity$$ExternalSyntheticLambda7)
.class public final synthetic Lcom/gmodvr/flat/TouchLayoutActivity$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/TouchLayoutActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/TouchLayoutActivity;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/TouchLayoutActivity$$ExternalSyntheticLambda7;->f$0:Lcom/gmodvr/flat/TouchLayoutActivity;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 3

    .line 0
    iget-object p0, p0, Lcom/gmodvr/flat/TouchLayoutActivity$$ExternalSyntheticLambda7;->f$0:Lcom/gmodvr/flat/TouchLayoutActivity;

    invoke-static {p0, p1, p2}, Lcom/gmodvr/flat/TouchLayoutActivity;->$r8$lambda$a-CJA8u7Yro2noi9FEsXGUbub70(Lcom/gmodvr/flat/TouchLayoutActivity;Landroid/widget/CompoundButton;Z)V

    return-void
.end method

###### Class com.gmodvr.flat.TouchLayoutActivity$$ExternalSyntheticLambda8 (com.gmodvr.flat.TouchLayoutActivity$$ExternalSyntheticLambda8)
.class public final synthetic Lcom/gmodvr/flat/TouchLayoutActivity$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/TouchLayoutActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/TouchLayoutActivity;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/TouchLayoutActivity$$ExternalSyntheticLambda8;->f$0:Lcom/gmodvr/flat/TouchLayoutActivity;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 3

    .line 0
    iget-object p0, p0, Lcom/gmodvr/flat/TouchLayoutActivity$$ExternalSyntheticLambda8;->f$0:Lcom/gmodvr/flat/TouchLayoutActivity;

    invoke-static {p0, p1, p2}, Lcom/gmodvr/flat/TouchLayoutActivity;->$r8$lambda$dsA6wPeZVG3XSRCOmHk8_lQ5MsQ(Lcom/gmodvr/flat/TouchLayoutActivity;Landroid/widget/CompoundButton;Z)V

    return-void
.end method

###### Class com.gmodvr.flat.TouchLayoutActivity$$ExternalSyntheticLambda9 (com.gmodvr.flat.TouchLayoutActivity$$ExternalSyntheticLambda9)
.class public final synthetic Lcom/gmodvr/flat/TouchLayoutActivity$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 2

    .line 0
    check-cast p1, Lcom/gmodvr/flat/TouchLayout$Button;

    invoke-static {p1}, Lcom/gmodvr/flat/TouchLayoutActivity;->$r8$lambda$mUJOfzOEA5Iz9XMkK87_ZTQZT9w(Lcom/gmodvr/flat/TouchLayout$Button;)Z

    move-result p0

    return p0
.end method
