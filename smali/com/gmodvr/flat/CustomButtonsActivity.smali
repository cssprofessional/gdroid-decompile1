###### Class com.gmodvr.flat.CustomButtonsActivity (com.gmodvr.flat.CustomButtonsActivity)
.class public final Lcom/gmodvr/flat/CustomButtonsActivity;
.super Landroid/app/Activity;
.source "CustomButtonsActivity.java"


# instance fields
.field private entries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/gmodvr/flat/CustomButtons$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private icons:Lcom/gmodvr/flat/CustomButtonIcons;

.field private list:Landroid/widget/LinearLayout;

.field private loadError:Ljava/lang/String;

.field private skin:Lcom/gmodvr/flat/Skin;

.field private status:Landroid/widget/TextView;


# direct methods
.method public static synthetic $r8$lambda$-XXlFTtsiaTs6E9gTEZnWPFKgrE(Lcom/gmodvr/flat/CustomButtonsActivity;Ljava/util/List;[ILjava/util/function/Supplier;Landroid/widget/EditText;Lcom/gmodvr/flat/CustomButtons$Entry;[Lcom/gmodvr/flat/CustomButtons$Shape;[Lcom/gmodvr/flat/CustomButtons$Mode;Landroid/app/AlertDialog;Landroid/view/View;)V
    .registers 10

    .line 0
    invoke-direct/range {p0 .. p9}, Lcom/gmodvr/flat/CustomButtonsActivity;->lambda$edit$11(Ljava/util/List;[ILjava/util/function/Supplier;Landroid/widget/EditText;Lcom/gmodvr/flat/CustomButtons$Entry;[Lcom/gmodvr/flat/CustomButtons$Shape;[Lcom/gmodvr/flat/CustomButtons$Mode;Landroid/app/AlertDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$3PpovK_eRPLDQIWPcXMUekmZk_c(Lcom/gmodvr/flat/CustomButtonsActivity;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/gmodvr/flat/CustomButtonsActivity;->lambda$onCreate$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$4wi_9sJbqW4onx3CJei9E4CJRFo(Lcom/gmodvr/flat/CustomButtonsActivity;Ljava/util/List;[ILjava/util/function/Supplier;Landroid/widget/EditText;Landroid/widget/ImageView;[Lcom/gmodvr/flat/CustomButtons$Shape;Landroid/widget/LinearLayout;[Ljava/lang/Runnable;Landroid/widget/LinearLayout;Landroid/widget/TextView;[Lcom/gmodvr/flat/CustomButtons$Mode;Landroid/widget/TextView;)V
    .registers 13

    .line 0
    invoke-direct/range {p0 .. p12}, Lcom/gmodvr/flat/CustomButtonsActivity;->lambda$edit$9(Ljava/util/List;[ILjava/util/function/Supplier;Landroid/widget/EditText;Landroid/widget/ImageView;[Lcom/gmodvr/flat/CustomButtons$Shape;Landroid/widget/LinearLayout;[Ljava/lang/Runnable;Landroid/widget/LinearLayout;Landroid/widget/TextView;[Lcom/gmodvr/flat/CustomButtons$Mode;Landroid/widget/TextView;)V

    return-void
.end method

.method public static synthetic $r8$lambda$6kShHS_ZkxbYXZ49UO1niDTTilo(Lcom/gmodvr/flat/CustomButtonsActivity;Lcom/gmodvr/flat/CustomButtons$Entry;Landroid/content/DialogInterface;I)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/gmodvr/flat/CustomButtonsActivity;->lambda$confirmRemove$3(Lcom/gmodvr/flat/CustomButtons$Entry;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$9uOLk586YcrfSziMus44Ugo2GCM(Ljava/util/List;[ILjava/util/function/Supplier;)Ljava/lang/String;
    .registers 3

    .line 0
    invoke-static {p0, p1, p2}, Lcom/gmodvr/flat/CustomButtonsActivity;->lambda$edit$6(Ljava/util/List;[ILjava/util/function/Supplier;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$KKpNJjEpqvnx7PiV3tq33Qls_z8([ILjava/util/List;)Ljava/lang/String;
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/gmodvr/flat/CustomButtonsActivity;->lambda$edit$5([ILjava/util/List;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$RO2Mhz2EUBj2lgmXKlmGGm4kB8U(Lcom/gmodvr/flat/CustomButtonsActivity;Lcom/gmodvr/flat/CustomButtons$Entry;Landroid/view/View;)Z
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/gmodvr/flat/CustomButtonsActivity;->lambda$render$2(Lcom/gmodvr/flat/CustomButtons$Entry;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$RZ688NUfg674BozxjY-Uc4wn2PA(Lcom/gmodvr/flat/CustomButtonsActivity;Lcom/gmodvr/flat/CustomButtons$Entry;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gmodvr/flat/CustomButtonsActivity;->lambda$render$1(Lcom/gmodvr/flat/CustomButtons$Entry;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RiIgA7MvyEIX0S8kdtF0RjdgfSY(Lcom/gmodvr/flat/CustomButtonsActivity;Lcom/gmodvr/flat/CustomButtons$Entry;Landroid/content/DialogInterface;I)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/gmodvr/flat/CustomButtonsActivity;->lambda$edit$10(Lcom/gmodvr/flat/CustomButtons$Entry;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$ohOuXmlNtPjU4oEAgky-Cjn7CUE(Lcom/gmodvr/flat/CustomButtons$Entry;Lcom/gmodvr/flat/CustomButtons$Entry;)Z
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/gmodvr/flat/CustomButtonsActivity;->lambda$remove$4(Lcom/gmodvr/flat/CustomButtons$Entry;Lcom/gmodvr/flat/CustomButtons$Entry;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$rHPiBH5CnRftW2a3Dhlmce0cSTg([Lcom/gmodvr/flat/CustomButtons$Mode;Lcom/gmodvr/flat/CustomButtons$Mode;[Ljava/lang/Runnable;)V
    .registers 3

    .line 0
    invoke-static {p0, p1, p2}, Lcom/gmodvr/flat/CustomButtonsActivity;->lambda$edit$8([Lcom/gmodvr/flat/CustomButtons$Mode;Lcom/gmodvr/flat/CustomButtons$Mode;[Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$u1cOBiiJfUlSJieZO3tgz4OBT7w(Lcom/gmodvr/flat/CustomButtonsActivity;Landroid/app/AlertDialog;Ljava/util/List;[ILjava/util/function/Supplier;Landroid/widget/EditText;Lcom/gmodvr/flat/CustomButtons$Entry;[Lcom/gmodvr/flat/CustomButtons$Shape;[Lcom/gmodvr/flat/CustomButtons$Mode;Landroid/content/DialogInterface;)V
    .registers 10

    .line 0
    invoke-direct/range {p0 .. p9}, Lcom/gmodvr/flat/CustomButtonsActivity;->lambda$edit$12(Landroid/app/AlertDialog;Ljava/util/List;[ILjava/util/function/Supplier;Landroid/widget/EditText;Lcom/gmodvr/flat/CustomButtons$Entry;[Lcom/gmodvr/flat/CustomButtons$Shape;[Lcom/gmodvr/flat/CustomButtons$Mode;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xpP19m0mkVnoOa6efsxsGYERaEs([Lcom/gmodvr/flat/CustomButtons$Shape;Lcom/gmodvr/flat/CustomButtons$Shape;[Ljava/lang/Runnable;)V
    .registers 3

    .line 0
    invoke-static {p0, p1, p2}, Lcom/gmodvr/flat/CustomButtonsActivity;->lambda$edit$7([Lcom/gmodvr/flat/CustomButtons$Shape;Lcom/gmodvr/flat/CustomButtons$Shape;[Ljava/lang/Runnable;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 31
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gmodvr/flat/CustomButtonsActivity;->entries:Ljava/util/List;

    return-void
.end method

.method private addSegment(Landroid/widget/LinearLayout;Ljava/lang/String;ZLjava/lang/Runnable;)V
    .registers 9

    .line 268
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v1, p0, Lcom/gmodvr/flat/CustomButtonsActivity;->skin:Lcom/gmodvr/flat/Skin;

    const/high16 v2, 0x42180000    # 38.0f

    invoke-virtual {v1, v2}, Lcom/gmodvr/flat/Skin;->dp(F)I

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 269
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lez v1, :cond_20

    iget-object v1, p0, Lcom/gmodvr/flat/CustomButtonsActivity;->skin:Lcom/gmodvr/flat/Skin;

    const/high16 v2, 0x40c00000    # 6.0f

    invoke-virtual {v1, v2}, Lcom/gmodvr/flat/Skin;->dp(F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 270
    :cond_20
    iget-object p0, p0, Lcom/gmodvr/flat/CustomButtonsActivity;->skin:Lcom/gmodvr/flat/Skin;

    invoke-virtual {p0, p2, p3, p4}, Lcom/gmodvr/flat/Skin;->segment(Ljava/lang/String;ZLjava/lang/Runnable;)Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {p1, p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private confirmRemove(Lcom/gmodvr/flat/CustomButtons$Entry;)V
    .registers 5

    .line 110
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Remove the "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/gmodvr/flat/CustomButtons$Entry;->label:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " button?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "It disappears from the game at the next start."

    .line 111
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/gmodvr/flat/CustomButtonsActivity$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Lcom/gmodvr/flat/CustomButtonsActivity$$ExternalSyntheticLambda4;-><init>(Lcom/gmodvr/flat/CustomButtonsActivity;Lcom/gmodvr/flat/CustomButtons$Entry;)V

    .line 112
    const-string p0, "Remove"

    invoke-virtual {v0, p0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    const-string p1, "Cancel"

    const/4 v0, 0x0

    .line 113
    invoke-virtual {p0, p1, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private edit(Lcom/gmodvr/flat/CustomButtons$Entry;)V
    .registers 31

    move-object/from16 v14, p0

    move-object/from16 v15, p1

    const/4 v0, 0x1

    const/4 v13, 0x0

    .line 124
    invoke-static {}, Lcom/gmodvr/flat/CustomButtonKeys;->all()Ljava/util/List;

    move-result-object v12

    if-eqz v15, :cond_f

    .line 125
    iget-object v1, v15, Lcom/gmodvr/flat/CustomButtons$Entry;->key:Ljava/lang/String;

    goto :goto_11

    :cond_f
    const-string v1, "KEY_G"

    .line 126
    :goto_11
    invoke-static {v1}, Lcom/gmodvr/flat/CustomButtonKeys;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-static {v13, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    filled-new-array {v1}, [I

    move-result-object v11

    if-eqz v15, :cond_2d

    .line 128
    iget-object v1, v15, Lcom/gmodvr/flat/CustomButtons$Entry;->with:Ljava/lang/String;

    if-eqz v1, :cond_2d

    invoke-static {v1}, Lcom/gmodvr/flat/CustomButtonKeys;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-static {v13, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/2addr v1, v0

    goto :goto_2e

    :cond_2d
    move v1, v13

    :goto_2e
    filled-new-array {v1}, [I

    move-result-object v10

    if-eqz v15, :cond_37

    .line 129
    iget-object v1, v15, Lcom/gmodvr/flat/CustomButtons$Entry;->shape:Lcom/gmodvr/flat/CustomButtons$Shape;

    goto :goto_39

    :cond_37
    sget-object v1, Lcom/gmodvr/flat/CustomButtons$Shape;->CIRCLE:Lcom/gmodvr/flat/CustomButtons$Shape;

    :goto_39
    filled-new-array {v1}, [Lcom/gmodvr/flat/CustomButtons$Shape;

    move-result-object v16

    if-eqz v15, :cond_42

    .line 130
    iget-object v1, v15, Lcom/gmodvr/flat/CustomButtons$Entry;->mode:Lcom/gmodvr/flat/CustomButtons$Mode;

    goto :goto_44

    :cond_42
    sget-object v1, Lcom/gmodvr/flat/CustomButtons$Mode;->HOLD:Lcom/gmodvr/flat/CustomButtons$Mode;

    :goto_44
    filled-new-array {v1}, [Lcom/gmodvr/flat/CustomButtons$Mode;

    move-result-object v17

    .line 132
    new-instance v9, Landroid/widget/LinearLayout;

    invoke-direct {v9, v14}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 133
    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 134
    iget-object v1, v14, Lcom/gmodvr/flat/CustomButtonsActivity;->skin:Lcom/gmodvr/flat/Skin;

    const/high16 v2, 0x41c00000    # 24.0f

    invoke-virtual {v1, v2}, Lcom/gmodvr/flat/Skin;->dp(F)I

    move-result v1

    iget-object v3, v14, Lcom/gmodvr/flat/CustomButtonsActivity;->skin:Lcom/gmodvr/flat/Skin;

    const/high16 v4, 0x41000000    # 8.0f

    invoke-virtual {v3, v4}, Lcom/gmodvr/flat/Skin;->dp(F)I

    move-result v3

    iget-object v4, v14, Lcom/gmodvr/flat/CustomButtonsActivity;->skin:Lcom/gmodvr/flat/Skin;

    invoke-virtual {v4, v2}, Lcom/gmodvr/flat/Skin;->dp(F)I

    move-result v2

    iget-object v4, v14, Lcom/gmodvr/flat/CustomButtonsActivity;->skin:Lcom/gmodvr/flat/Skin;

    const/high16 v5, 0x40800000    # 4.0f

    invoke-virtual {v4, v5}, Lcom/gmodvr/flat/Skin;->dp(F)I

    move-result v4

    invoke-virtual {v9, v1, v3, v2, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 136
    new-instance v6, Landroid/widget/ImageView;

    invoke-direct {v6, v14}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 137
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v2, v14, Lcom/gmodvr/flat/CustomButtonsActivity;->skin:Lcom/gmodvr/flat/Skin;

    const/high16 v3, 0x42980000    # 76.0f

    invoke-virtual {v2, v3}, Lcom/gmodvr/flat/Skin;->dp(F)I

    move-result v2

    iget-object v4, v14, Lcom/gmodvr/flat/CustomButtonsActivity;->skin:Lcom/gmodvr/flat/Skin;

    invoke-virtual {v4, v3}, Lcom/gmodvr/flat/Skin;->dp(F)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 138
    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 139
    invoke-virtual {v9, v6, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 141
    iget-object v1, v14, Lcom/gmodvr/flat/CustomButtonsActivity;->skin:Lcom/gmodvr/flat/Skin;

    const-string v2, "Key"

    const v3, -0x72665d

    invoke-virtual {v1, v2, v3}, Lcom/gmodvr/flat/Skin;->label(Ljava/lang/CharSequence;I)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, v14, Lcom/gmodvr/flat/CustomButtonsActivity;->skin:Lcom/gmodvr/flat/Skin;

    const/high16 v4, 0x41400000    # 12.0f

    invoke-virtual {v2, v4}, Lcom/gmodvr/flat/Skin;->below(F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 142
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 143
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_ad
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const-string v5, ": "

    if-eqz v4, :cond_d3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/gmodvr/flat/CustomButtonKeys$Key;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v4, Lcom/gmodvr/flat/CustomButtonKeys$Key;->group:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_ad

    .line 144
    :cond_d3
    iget-object v2, v14, Lcom/gmodvr/flat/CustomButtonsActivity;->skin:Lcom/gmodvr/flat/Skin;

    invoke-virtual {v2, v1}, Lcom/gmodvr/flat/Skin;->spinner(Ljava/util/List;)Landroid/widget/Spinner;

    move-result-object v8

    .line 145
    aget v1, v11, v13

    invoke-virtual {v8, v1}, Landroid/widget/AdapterView;->setSelection(I)V

    .line 146
    iget-object v1, v14, Lcom/gmodvr/flat/CustomButtonsActivity;->skin:Lcom/gmodvr/flat/Skin;

    const/high16 v2, 0x40c00000    # 6.0f

    invoke-virtual {v1, v2}, Lcom/gmodvr/flat/Skin;->below(F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v9, v8, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 148
    iget-object v1, v14, Lcom/gmodvr/flat/CustomButtonsActivity;->skin:Lcom/gmodvr/flat/Skin;

    const-string v4, "Together with (held first)"

    invoke-virtual {v1, v4, v3}, Lcom/gmodvr/flat/Skin;->label(Ljava/lang/CharSequence;I)Landroid/widget/TextView;

    move-result-object v1

    iget-object v4, v14, Lcom/gmodvr/flat/CustomButtonsActivity;->skin:Lcom/gmodvr/flat/Skin;

    const/high16 v7, 0x41600000    # 14.0f

    invoke-virtual {v4, v7}, Lcom/gmodvr/flat/Skin;->below(F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v9, v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 149
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 150
    const-string v4, "Nothing: just this key"

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_10a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_136

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, v18

    check-cast v0, Lcom/gmodvr/flat/CustomButtonKeys$Key;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/gmodvr/flat/CustomButtonKeys$Key;->group:Ljava/lang/String;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    const v3, -0x72665d

    const/high16 v7, 0x41600000    # 14.0f

    goto :goto_10a

    .line 152
    :cond_136
    iget-object v0, v14, Lcom/gmodvr/flat/CustomButtonsActivity;->skin:Lcom/gmodvr/flat/Skin;

    invoke-virtual {v0, v1}, Lcom/gmodvr/flat/Skin;->spinner(Ljava/util/List;)Landroid/widget/Spinner;

    move-result-object v7

    .line 153
    aget v0, v10, v13

    invoke-virtual {v7, v0}, Landroid/widget/AdapterView;->setSelection(I)V

    .line 154
    iget-object v0, v14, Lcom/gmodvr/flat/CustomButtonsActivity;->skin:Lcom/gmodvr/flat/Skin;

    invoke-virtual {v0, v2}, Lcom/gmodvr/flat/Skin;->below(F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v9, v7, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 156
    iget-object v0, v14, Lcom/gmodvr/flat/CustomButtonsActivity;->skin:Lcom/gmodvr/flat/Skin;

    const-string v1, "Label \u00b7 1 to 4 characters"

    const v3, -0x72665d

    invoke-virtual {v0, v1, v3}, Lcom/gmodvr/flat/Skin;->label(Ljava/lang/CharSequence;I)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, v14, Lcom/gmodvr/flat/CustomButtonsActivity;->skin:Lcom/gmodvr/flat/Skin;

    const/high16 v3, 0x41600000    # 14.0f

    invoke-virtual {v1, v3}, Lcom/gmodvr/flat/Skin;->below(F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 157
    iget-object v0, v14, Lcom/gmodvr/flat/CustomButtonsActivity;->skin:Lcom/gmodvr/flat/Skin;

    aget v1, v11, v13

    invoke-interface {v12, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gmodvr/flat/CustomButtonKeys$Key;

    iget-object v1, v1, Lcom/gmodvr/flat/CustomButtonKeys$Key;->label:Ljava/lang/String;

    const/16 v3, 0x1001

    invoke-virtual {v0, v1, v3}, Lcom/gmodvr/flat/Skin;->input(Ljava/lang/String;I)Landroid/widget/EditText;

    move-result-object v5

    .line 158
    new-instance v0, Landroid/text/InputFilter$LengthFilter;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v1, 0x1

    new-array v3, v1, [Landroid/text/InputFilter;

    aput-object v0, v3, v13

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 159
    new-instance v4, Lcom/gmodvr/flat/CustomButtonsActivity$$ExternalSyntheticLambda5;

    invoke-direct {v4, v10, v12}, Lcom/gmodvr/flat/CustomButtonsActivity$$ExternalSyntheticLambda5;-><init>([ILjava/util/List;)V

    .line 160
    new-instance v3, Lcom/gmodvr/flat/CustomButtonsActivity$$ExternalSyntheticLambda6;

    invoke-direct {v3, v12, v11, v4}, Lcom/gmodvr/flat/CustomButtonsActivity$$ExternalSyntheticLambda6;-><init>(Ljava/util/List;[ILjava/util/function/Supplier;)V

    if-eqz v15, :cond_18f

    .line 161
    iget-object v0, v15, Lcom/gmodvr/flat/CustomButtons$Entry;->label:Ljava/lang/String;

    goto :goto_195

    :cond_18f
    invoke-interface {v3}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    :goto_195
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    invoke-interface {v3}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 163
    iget-object v0, v14, Lcom/gmodvr/flat/CustomButtonsActivity;->skin:Lcom/gmodvr/flat/Skin;

    invoke-virtual {v0, v2}, Lcom/gmodvr/flat/Skin;->below(F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v9, v5, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 165
    iget-object v0, v14, Lcom/gmodvr/flat/CustomButtonsActivity;->skin:Lcom/gmodvr/flat/Skin;

    const-string v1, "Shape"

    const v13, -0x72665d

    invoke-virtual {v0, v1, v13}, Lcom/gmodvr/flat/Skin;->label(Ljava/lang/CharSequence;I)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, v14, Lcom/gmodvr/flat/CustomButtonsActivity;->skin:Lcom/gmodvr/flat/Skin;

    const/high16 v13, 0x41600000    # 14.0f

    invoke-virtual {v1, v13}, Lcom/gmodvr/flat/Skin;->below(F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 166
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, v14}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 167
    iget-object v0, v14, Lcom/gmodvr/flat/CustomButtonsActivity;->skin:Lcom/gmodvr/flat/Skin;

    invoke-virtual {v0, v2}, Lcom/gmodvr/flat/Skin;->below(F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v9, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 169
    iget-object v0, v14, Lcom/gmodvr/flat/CustomButtonsActivity;->skin:Lcom/gmodvr/flat/Skin;

    const-string v2, "Behaviour"

    const v13, -0x72665d

    invoke-virtual {v0, v2, v13}, Lcom/gmodvr/flat/Skin;->label(Ljava/lang/CharSequence;I)Landroid/widget/TextView;

    move-result-object v13

    .line 170
    iget-object v0, v14, Lcom/gmodvr/flat/CustomButtonsActivity;->skin:Lcom/gmodvr/flat/Skin;

    const/high16 v2, 0x41600000    # 14.0f

    invoke-virtual {v0, v2}, Lcom/gmodvr/flat/Skin;->below(F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v9, v13, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 171
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v14}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 172
    iget-object v0, v14, Lcom/gmodvr/flat/CustomButtonsActivity;->skin:Lcom/gmodvr/flat/Skin;

    move-object/from16 v20, v1

    const/high16 v1, 0x40c00000    # 6.0f

    invoke-virtual {v0, v1}, Lcom/gmodvr/flat/Skin;->below(F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v9, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 173
    iget-object v0, v14, Lcom/gmodvr/flat/CustomButtonsActivity;->skin:Lcom/gmodvr/flat/Skin;

    const/high16 v1, 0x41480000    # 12.5f

    move-object/from16 v22, v2

    const v2, -0xa49991

    move-object/from16 v23, v3

    const-string v3, ""

    invoke-virtual {v0, v3, v1, v2}, Lcom/gmodvr/flat/Skin;->text(Ljava/lang/CharSequence;FI)Landroid/widget/TextView;

    move-result-object v3

    .line 174
    iget-object v0, v14, Lcom/gmodvr/flat/CustomButtonsActivity;->skin:Lcom/gmodvr/flat/Skin;

    const/high16 v1, 0x40c00000    # 6.0f

    invoke-virtual {v0, v1}, Lcom/gmodvr/flat/Skin;->below(F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v9, v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x1

    .line 176
    new-array v2, v0, [Ljava/lang/Runnable;

    .line 177
    new-instance v18, Lcom/gmodvr/flat/CustomButtonsActivity$$ExternalSyntheticLambda7;

    move-object/from16 v0, v18

    move-object/from16 v19, v20

    move-object/from16 v1, p0

    move-object/from16 v20, v22

    move-object/from16 v22, v2

    move-object v2, v12

    move-object/from16 v24, v3

    move-object v3, v11

    move-object/from16 v25, v4

    move-object/from16 v26, v5

    move-object v15, v7

    move-object/from16 v7, v16

    move-object v14, v8

    move-object/from16 v8, v19

    move-object/from16 v27, v9

    move-object/from16 v9, v22

    move-object/from16 v19, v10

    move-object/from16 v10, v20

    move-object/from16 v20, v11

    move-object v11, v13

    move-object/from16 v28, v12

    move-object/from16 v12, v17

    const/16 v21, 0x0

    move-object/from16 v13, v24

    invoke-direct/range {v0 .. v13}, Lcom/gmodvr/flat/CustomButtonsActivity$$ExternalSyntheticLambda7;-><init>(Lcom/gmodvr/flat/CustomButtonsActivity;Ljava/util/List;[ILjava/util/function/Supplier;Landroid/widget/EditText;Landroid/widget/ImageView;[Lcom/gmodvr/flat/CustomButtons$Shape;Landroid/widget/LinearLayout;[Ljava/lang/Runnable;Landroid/widget/LinearLayout;Landroid/widget/TextView;[Lcom/gmodvr/flat/CustomButtons$Mode;Landroid/widget/TextView;)V

    aput-object v18, v22, v21

    .line 201
    new-instance v6, Lcom/gmodvr/flat/CustomButtonsActivity$1;

    move-object v0, v6

    move-object/from16 v2, v20

    move-object/from16 v3, v23

    move-object/from16 v4, v26

    move-object/from16 v5, v22

    invoke-direct/range {v0 .. v5}, Lcom/gmodvr/flat/CustomButtonsActivity$1;-><init>(Lcom/gmodvr/flat/CustomButtonsActivity;[ILjava/util/function/Supplier;Landroid/widget/EditText;[Ljava/lang/Runnable;)V

    invoke-virtual {v14, v6}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 213
    new-instance v6, Lcom/gmodvr/flat/CustomButtonsActivity$2;

    move-object v0, v6

    move-object/from16 v2, v19

    invoke-direct/range {v0 .. v5}, Lcom/gmodvr/flat/CustomButtonsActivity$2;-><init>(Lcom/gmodvr/flat/CustomButtonsActivity;[ILjava/util/function/Supplier;Landroid/widget/EditText;[Ljava/lang/Runnable;)V

    invoke-virtual {v15, v6}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 224
    new-instance v0, Lcom/gmodvr/flat/CustomButtonsActivity$3;

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/gmodvr/flat/CustomButtonsActivity$3;-><init>(Lcom/gmodvr/flat/CustomButtonsActivity;[Ljava/lang/Runnable;)V

    move-object/from16 v6, v26

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 229
    aget-object v0, v2, v21

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 231
    invoke-static/range {p0 .. p0}, Lcom/gmodvr/flat/Skin;->scroller(Landroid/content/Context;)Landroid/widget/ScrollView;

    move-result-object v0

    .line 232
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    move-object/from16 v3, v27

    invoke-virtual {v0, v3, v2}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 233
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v7, p1

    if-nez v7, :cond_290

    .line 234
    const-string v3, "Add a button"

    goto :goto_292

    :cond_290
    const-string v3, "Change button"

    :goto_292
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 235
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v2, "Save"

    const/4 v3, 0x0

    .line 236
    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v2, "Cancel"

    .line 237
    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    if-eqz v7, :cond_2b3

    .line 238
    new-instance v2, Lcom/gmodvr/flat/CustomButtonsActivity$$ExternalSyntheticLambda8;

    invoke-direct {v2, v1, v7}, Lcom/gmodvr/flat/CustomButtonsActivity$$ExternalSyntheticLambda8;-><init>(Lcom/gmodvr/flat/CustomButtonsActivity;Lcom/gmodvr/flat/CustomButtons$Entry;)V

    const-string v3, "Remove"

    invoke-virtual {v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 239
    :cond_2b3
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v10

    .line 240
    new-instance v11, Lcom/gmodvr/flat/CustomButtonsActivity$$ExternalSyntheticLambda9;

    move-object v0, v11

    move-object/from16 v1, p0

    move-object v2, v10

    move-object/from16 v3, v28

    move-object/from16 v4, v20

    move-object/from16 v5, v25

    move-object/from16 v7, p1

    move-object/from16 v8, v16

    move-object/from16 v9, v17

    invoke-direct/range {v0 .. v9}, Lcom/gmodvr/flat/CustomButtonsActivity$$ExternalSyntheticLambda9;-><init>(Lcom/gmodvr/flat/CustomButtonsActivity;Landroid/app/AlertDialog;Ljava/util/List;[ILjava/util/function/Supplier;Landroid/widget/EditText;Lcom/gmodvr/flat/CustomButtons$Entry;[Lcom/gmodvr/flat/CustomButtons$Shape;[Lcom/gmodvr/flat/CustomButtons$Mode;)V

    invoke-virtual {v10, v11}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 264
    invoke-virtual {v10}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private synthetic lambda$confirmRemove$3(Lcom/gmodvr/flat/CustomButtons$Entry;Landroid/content/DialogInterface;I)V
    .registers 4

    .line 112
    invoke-direct {p0, p1}, Lcom/gmodvr/flat/CustomButtonsActivity;->remove(Lcom/gmodvr/flat/CustomButtons$Entry;)V

    return-void
.end method

.method private synthetic lambda$edit$10(Lcom/gmodvr/flat/CustomButtons$Entry;Landroid/content/DialogInterface;I)V
    .registers 4

    .line 238
    invoke-direct {p0, p1}, Lcom/gmodvr/flat/CustomButtonsActivity;->confirmRemove(Lcom/gmodvr/flat/CustomButtons$Entry;)V

    return-void
.end method

.method private synthetic lambda$edit$11(Ljava/util/List;[ILjava/util/function/Supplier;Landroid/widget/EditText;Lcom/gmodvr/flat/CustomButtons$Entry;[Lcom/gmodvr/flat/CustomButtons$Shape;[Lcom/gmodvr/flat/CustomButtons$Mode;Landroid/app/AlertDialog;Landroid/view/View;)V
    .registers 24

    move-object v0, p0

    move-object/from16 v1, p5

    const/4 v2, 0x0

    .line 241
    aget v3, p2, v2

    move-object v4, p1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/gmodvr/flat/CustomButtonKeys$Key;

    .line 242
    invoke-interface/range {p3 .. p3}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v4

    move-object v9, v4

    check-cast v9, Ljava/lang/String;

    .line 243
    iget-object v4, v3, Lcom/gmodvr/flat/CustomButtonKeys$Key;->name:Ljava/lang/String;

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_38

    .line 244
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v0, "Custom buttons"

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Pick two different keys, or Nothing."

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "OK"

    const/4 v2, 0x0

    .line 245
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    .line 248
    :cond_38
    invoke-virtual/range {p4 .. p4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v3, Lcom/gmodvr/flat/CustomButtonKeys$Key;->name:Ljava/lang/String;

    invoke-static {v4, v5, v9}, Lcom/gmodvr/flat/CustomButtons;->normalizeLabel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_50

    .line 250
    const-string v0, "1 to 4 characters"

    move-object/from16 v1, p4

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    return-void

    .line 253
    :cond_50
    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, v0, Lcom/gmodvr/flat/CustomButtonsActivity;->entries:Ljava/util/List;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    if-nez v1, :cond_71

    .line 256
    new-instance v1, Lcom/gmodvr/flat/CustomButtons$Entry;

    invoke-static {v4}, Lcom/gmodvr/flat/CustomButtons;->nextId(Ljava/util/List;)I

    move-result v6

    invoke-static {v4}, Lcom/gmodvr/flat/CustomButtons;->nextSlot(Ljava/util/List;)I

    move-result v7

    iget-object v8, v3, Lcom/gmodvr/flat/CustomButtonKeys$Key;->name:Ljava/lang/String;

    aget-object v11, p6, v2

    aget-object v12, p7, v2

    move-object v5, v1

    invoke-direct/range {v5 .. v12}, Lcom/gmodvr/flat/CustomButtons$Entry;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gmodvr/flat/CustomButtons$Shape;Lcom/gmodvr/flat/CustomButtons$Mode;)V

    .line 257
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_99

    .line 259
    :cond_71
    new-instance v13, Lcom/gmodvr/flat/CustomButtons$Entry;

    iget v6, v1, Lcom/gmodvr/flat/CustomButtons$Entry;->id:I

    iget v7, v1, Lcom/gmodvr/flat/CustomButtons$Entry;->slot:I

    iget-object v8, v3, Lcom/gmodvr/flat/CustomButtonKeys$Key;->name:Ljava/lang/String;

    aget-object v11, p6, v2

    aget-object v12, p7, v2

    move-object v5, v13

    invoke-direct/range {v5 .. v12}, Lcom/gmodvr/flat/CustomButtons$Entry;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gmodvr/flat/CustomButtons$Shape;Lcom/gmodvr/flat/CustomButtons$Mode;)V

    .line 260
    :goto_81
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_99

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/gmodvr/flat/CustomButtons$Entry;

    iget v3, v3, Lcom/gmodvr/flat/CustomButtons$Entry;->id:I

    iget v5, v1, Lcom/gmodvr/flat/CustomButtons$Entry;->id:I

    if-ne v3, v5, :cond_96

    invoke-interface {v4, v2, v13}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_96
    add-int/lit8 v2, v2, 0x1

    goto :goto_81

    .line 262
    :cond_99
    :goto_99
    invoke-direct {p0, v4}, Lcom/gmodvr/flat/CustomButtonsActivity;->persist(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_a2

    invoke-virtual/range {p8 .. p8}, Landroid/app/Dialog;->dismiss()V

    :cond_a2
    return-void
.end method

.method private synthetic lambda$edit$12(Landroid/app/AlertDialog;Ljava/util/List;[ILjava/util/function/Supplier;Landroid/widget/EditText;Lcom/gmodvr/flat/CustomButtons$Entry;[Lcom/gmodvr/flat/CustomButtons$Shape;[Lcom/gmodvr/flat/CustomButtons$Mode;Landroid/content/DialogInterface;)V
    .registers 22

    const/4 v0, -0x1

    move-object v10, p1

    .line 240
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    new-instance v11, Lcom/gmodvr/flat/CustomButtonsActivity$$ExternalSyntheticLambda1;

    move-object v1, v11

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v1 .. v10}, Lcom/gmodvr/flat/CustomButtonsActivity$$ExternalSyntheticLambda1;-><init>(Lcom/gmodvr/flat/CustomButtonsActivity;Ljava/util/List;[ILjava/util/function/Supplier;Landroid/widget/EditText;Lcom/gmodvr/flat/CustomButtons$Entry;[Lcom/gmodvr/flat/CustomButtons$Shape;[Lcom/gmodvr/flat/CustomButtons$Mode;Landroid/app/AlertDialog;)V

    invoke-virtual {v0, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private static synthetic lambda$edit$5([ILjava/util/List;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    .line 159
    aget p0, p0, v0

    if-nez p0, :cond_7

    const/4 p0, 0x0

    goto :goto_11

    :cond_7
    add-int/lit8 p0, p0, -0x1

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/gmodvr/flat/CustomButtonKeys$Key;

    iget-object p0, p0, Lcom/gmodvr/flat/CustomButtonKeys$Key;->name:Ljava/lang/String;

    :goto_11
    return-object p0
.end method

.method private static synthetic lambda$edit$6(Ljava/util/List;[ILjava/util/function/Supplier;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    .line 160
    aget p1, p1, v0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/gmodvr/flat/CustomButtonKeys$Key;

    iget-object p0, p0, Lcom/gmodvr/flat/CustomButtonKeys$Key;->name:Ljava/lang/String;

    invoke-interface {p2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/gmodvr/flat/CustomButtons;->defaultLabel(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$edit$7([Lcom/gmodvr/flat/CustomButtons$Shape;Lcom/gmodvr/flat/CustomButtons$Shape;[Ljava/lang/Runnable;)V
    .registers 4

    const/4 v0, 0x0

    .line 185
    aput-object p1, p0, v0

    aget-object p0, p2, v0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private static synthetic lambda$edit$8([Lcom/gmodvr/flat/CustomButtons$Mode;Lcom/gmodvr/flat/CustomButtons$Mode;[Ljava/lang/Runnable;)V
    .registers 4

    const/4 v0, 0x0

    .line 192
    aput-object p1, p0, v0

    aget-object p0, p2, v0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private synthetic lambda$edit$9(Ljava/util/List;[ILjava/util/function/Supplier;Landroid/widget/EditText;Landroid/widget/ImageView;[Lcom/gmodvr/flat/CustomButtons$Shape;Landroid/widget/LinearLayout;[Ljava/lang/Runnable;Landroid/widget/LinearLayout;Landroid/widget/TextView;[Lcom/gmodvr/flat/CustomButtons$Mode;Landroid/widget/TextView;)V
    .registers 29

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    move-object/from16 v2, p8

    move-object/from16 v3, p9

    move-object/from16 v4, p11

    const/4 v5, 0x0

    .line 178
    aget v6, p2, v5

    move-object/from16 v7, p1

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/gmodvr/flat/CustomButtonKeys$Key;

    .line 179
    invoke-interface/range {p3 .. p3}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Lcom/gmodvr/flat/CustomButtonKeys;->get(Ljava/lang/String;)Lcom/gmodvr/flat/CustomButtonKeys$Key;

    move-result-object v7

    .line 180
    invoke-virtual {v6}, Lcom/gmodvr/flat/CustomButtonKeys$Key;->isWheel()Z

    move-result v8

    const/4 v9, 0x1

    if-nez v8, :cond_31

    if-eqz v7, :cond_2f

    invoke-virtual {v7}, Lcom/gmodvr/flat/CustomButtonKeys$Key;->isWheel()Z

    move-result v8

    if-eqz v8, :cond_2f

    goto :goto_31

    :cond_2f
    move v8, v5

    goto :goto_32

    :cond_31
    :goto_31
    move v8, v9

    .line 181
    :goto_32
    invoke-virtual/range {p4 .. p4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    iget-object v6, v6, Lcom/gmodvr/flat/CustomButtonKeys$Key;->name:Ljava/lang/String;

    invoke-interface/range {p3 .. p3}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-static {v10, v6, v11}, Lcom/gmodvr/flat/CustomButtons;->normalizeLabel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 182
    iget-object v10, v0, Lcom/gmodvr/flat/CustomButtonsActivity;->icons:Lcom/gmodvr/flat/CustomButtonIcons;

    aget-object v11, v1, v5

    if-nez v6, :cond_4e

    const-string v6, "?"

    :cond_4e
    invoke-virtual {v10, v11, v6}, Lcom/gmodvr/flat/CustomButtonIcons;->bitmap(Lcom/gmodvr/flat/CustomButtons$Shape;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    move-object/from16 v10, p5

    invoke-virtual {v10, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 183
    invoke-virtual/range {p7 .. p7}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 184
    invoke-static {}, Lcom/gmodvr/flat/CustomButtons$Shape;->values()[Lcom/gmodvr/flat/CustomButtons$Shape;

    move-result-object v6

    array-length v10, v6

    move v11, v5

    :goto_60
    if-ge v11, v10, :cond_7a

    aget-object v12, v6, v11

    .line 185
    iget-object v13, v12, Lcom/gmodvr/flat/CustomButtons$Shape;->title:Ljava/lang/String;

    aget-object v14, v1, v5

    if-ne v12, v14, :cond_6c

    move v14, v9

    goto :goto_6d

    :cond_6c
    move v14, v5

    :goto_6d
    new-instance v15, Lcom/gmodvr/flat/CustomButtonsActivity$$ExternalSyntheticLambda10;

    invoke-direct {v15, v1, v12, v2}, Lcom/gmodvr/flat/CustomButtonsActivity$$ExternalSyntheticLambda10;-><init>([Lcom/gmodvr/flat/CustomButtons$Shape;Lcom/gmodvr/flat/CustomButtons$Shape;[Ljava/lang/Runnable;)V

    move-object/from16 v12, p7

    invoke-direct {v0, v12, v13, v14, v15}, Lcom/gmodvr/flat/CustomButtonsActivity;->addSegment(Landroid/widget/LinearLayout;Ljava/lang/String;ZLjava/lang/Runnable;)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_60

    .line 187
    :cond_7a
    invoke-virtual/range {p9 .. p9}, Landroid/view/ViewGroup;->removeAllViews()V

    const/16 v1, 0x8

    if-eqz v8, :cond_83

    move v6, v1

    goto :goto_84

    :cond_83
    move v6, v5

    .line 188
    :goto_84
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v6, p10

    if-eqz v8, :cond_8c

    goto :goto_8d

    :cond_8c
    move v1, v5

    .line 189
    :goto_8d
    invoke-virtual {v6, v1}, Landroid/view/View;->setVisibility(I)V

    if-nez v8, :cond_b0

    .line 191
    invoke-static {}, Lcom/gmodvr/flat/CustomButtons$Mode;->values()[Lcom/gmodvr/flat/CustomButtons$Mode;

    move-result-object v1

    array-length v6, v1

    move v10, v5

    :goto_98
    if-ge v10, v6, :cond_b0

    aget-object v11, v1, v10

    .line 192
    iget-object v12, v11, Lcom/gmodvr/flat/CustomButtons$Mode;->title:Ljava/lang/String;

    aget-object v13, v4, v5

    if-ne v11, v13, :cond_a4

    move v13, v9

    goto :goto_a5

    :cond_a4
    move v13, v5

    :goto_a5
    new-instance v14, Lcom/gmodvr/flat/CustomButtonsActivity$$ExternalSyntheticLambda11;

    invoke-direct {v14, v4, v11, v2}, Lcom/gmodvr/flat/CustomButtonsActivity$$ExternalSyntheticLambda11;-><init>([Lcom/gmodvr/flat/CustomButtons$Mode;Lcom/gmodvr/flat/CustomButtons$Mode;[Ljava/lang/Runnable;)V

    invoke-direct {v0, v3, v12, v13, v14}, Lcom/gmodvr/flat/CustomButtonsActivity;->addSegment(Landroid/widget/LinearLayout;Ljava/lang/String;ZLjava/lang/Runnable;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_98

    :cond_b0
    if-nez v7, :cond_b5

    .line 195
    const-string v0, "The key is"

    goto :goto_b7

    :cond_b5
    const-string v0, "Both keys are"

    :goto_b7
    if-eqz v8, :cond_be

    .line 196
    const-string v0, "Wheel: one step per tap, repeating while held."

    :goto_bb
    move-object/from16 v1, p12

    goto :goto_d9

    .line 197
    :cond_be
    aget-object v1, v4, v5

    sget-object v2, Lcom/gmodvr/flat/CustomButtons$Mode;->HOLD:Lcom/gmodvr/flat/CustomButtons$Mode;

    if-ne v1, v2, :cond_d6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " down while you hold the button."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_bb

    .line 198
    :cond_d6
    const-string v0, "Tap to press, tap again to release."

    goto :goto_bb

    .line 196
    :goto_d9
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private synthetic lambda$onCreate$0()V
    .registers 2

    const/4 v0, 0x0

    .line 55
    invoke-direct {p0, v0}, Lcom/gmodvr/flat/CustomButtonsActivity;->edit(Lcom/gmodvr/flat/CustomButtons$Entry;)V

    return-void
.end method

.method private static synthetic lambda$remove$4(Lcom/gmodvr/flat/CustomButtons$Entry;Lcom/gmodvr/flat/CustomButtons$Entry;)Z
    .registers 2

    .line 118
    iget p1, p1, Lcom/gmodvr/flat/CustomButtons$Entry;->id:I

    iget p0, p0, Lcom/gmodvr/flat/CustomButtons$Entry;->id:I

    if-ne p1, p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method private synthetic lambda$render$1(Lcom/gmodvr/flat/CustomButtons$Entry;)V
    .registers 2

    .line 88
    invoke-direct {p0, p1}, Lcom/gmodvr/flat/CustomButtonsActivity;->edit(Lcom/gmodvr/flat/CustomButtons$Entry;)V

    return-void
.end method

.method private synthetic lambda$render$2(Lcom/gmodvr/flat/CustomButtons$Entry;Landroid/view/View;)Z
    .registers 3

    .line 89
    invoke-direct {p0, p1}, Lcom/gmodvr/flat/CustomButtonsActivity;->confirmRemove(Lcom/gmodvr/flat/CustomButtons$Entry;)V

    const/4 p0, 0x1

    return p0
.end method

.method private persist(Ljava/util/List;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/gmodvr/flat/CustomButtons$Entry;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    .line 97
    :try_start_1
    invoke-static {p0}, Lcom/gmodvr/flat/CustomButtons;->file(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/gmodvr/flat/CustomButtons;->save(Ljava/io/File;Ljava/util/List;)V

    .line 98
    iput-object p1, p0, Lcom/gmodvr/flat/CustomButtonsActivity;->entries:Ljava/util/List;

    .line 99
    iput-object v0, p0, Lcom/gmodvr/flat/CustomButtonsActivity;->loadError:Ljava/lang/String;

    .line 100
    invoke-direct {p0}, Lcom/gmodvr/flat/CustomButtonsActivity;->render()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_f} :catch_11

    const/4 p0, 0x1

    return p0

    :catch_11
    move-exception p1

    .line 103
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string p0, "Custom buttons"

    invoke-virtual {v1, p0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not save: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    const-string p1, "OK"

    .line 104
    invoke-virtual {p0, p1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    const/4 p0, 0x0

    return p0
.end method

.method private remove(Lcom/gmodvr/flat/CustomButtons$Entry;)V
    .registers 4

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/gmodvr/flat/CustomButtonsActivity;->entries:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 118
    new-instance v1, Lcom/gmodvr/flat/CustomButtonsActivity$$ExternalSyntheticLambda12;

    invoke-direct {v1, p1}, Lcom/gmodvr/flat/CustomButtonsActivity$$ExternalSyntheticLambda12;-><init>(Lcom/gmodvr/flat/CustomButtons$Entry;)V

    invoke-interface {v0, v1}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    .line 119
    invoke-direct {p0, v0}, Lcom/gmodvr/flat/CustomButtonsActivity;->persist(Ljava/util/List;)Z

    return-void
.end method

.method private render()V
    .registers 9

    .line 72
    iget-object v0, p0, Lcom/gmodvr/flat/CustomButtonsActivity;->list:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 73
    iget-object v0, p0, Lcom/gmodvr/flat/CustomButtonsActivity;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 74
    iget-object v1, p0, Lcom/gmodvr/flat/CustomButtonsActivity;->status:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/gmodvr/flat/CustomButtonsActivity;->loadError:Ljava/lang/String;

    if-eqz v2, :cond_25

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/gmodvr/flat/CustomButtonsActivity;->loadError:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " Adding a button replaces it."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_46

    :cond_25
    if-nez v0, :cond_2a

    .line 75
    const-string v2, "No custom buttons. The game shows only the standard controls."

    goto :goto_46

    .line 76
    :cond_2a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " custom button"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    if-ne v0, v3, :cond_3d

    const-string v3, "."

    goto :goto_3f

    :cond_3d
    const-string v3, "s."

    :goto_3f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 74
    :goto_46
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    iget-object v1, p0, Lcom/gmodvr/flat/CustomButtonsActivity;->status:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/gmodvr/flat/CustomButtonsActivity;->loadError:Ljava/lang/String;

    if-eqz v2, :cond_53

    const v2, -0x179fb1

    goto :goto_56

    :cond_53
    const v2, -0x191513

    :goto_56
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    if-nez v0, :cond_5c

    return-void

    .line 79
    :cond_5c
    iget-object v0, p0, Lcom/gmodvr/flat/CustomButtonsActivity;->list:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/gmodvr/flat/CustomButtonsActivity;->skin:Lcom/gmodvr/flat/Skin;

    const-string v2, "Your buttons"

    invoke-virtual {v1, v2}, Lcom/gmodvr/flat/Skin;->section(Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/gmodvr/flat/CustomButtonsActivity;->skin:Lcom/gmodvr/flat/Skin;

    const/high16 v3, 0x41e00000    # 28.0f

    invoke-virtual {v2, v3}, Lcom/gmodvr/flat/Skin;->below(F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 80
    iget-object v0, p0, Lcom/gmodvr/flat/CustomButtonsActivity;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_77
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_133

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gmodvr/flat/CustomButtons$Entry;

    .line 81
    iget-object v2, v1, Lcom/gmodvr/flat/CustomButtons$Entry;->key:Ljava/lang/String;

    invoke-static {v2}, Lcom/gmodvr/flat/CustomButtonKeys;->get(Ljava/lang/String;)Lcom/gmodvr/flat/CustomButtonKeys$Key;

    move-result-object v2

    .line 82
    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 83
    iget-object v4, p0, Lcom/gmodvr/flat/CustomButtonsActivity;->icons:Lcom/gmodvr/flat/CustomButtonIcons;

    iget-object v5, v1, Lcom/gmodvr/flat/CustomButtons$Entry;->shape:Lcom/gmodvr/flat/CustomButtons$Shape;

    iget-object v6, v1, Lcom/gmodvr/flat/CustomButtons$Entry;->label:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lcom/gmodvr/flat/CustomButtonIcons;->bitmap(Lcom/gmodvr/flat/CustomButtons$Shape;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 84
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v5, p0, Lcom/gmodvr/flat/CustomButtonsActivity;->skin:Lcom/gmodvr/flat/Skin;

    const/high16 v6, 0x42300000    # 44.0f

    invoke-virtual {v5, v6}, Lcom/gmodvr/flat/Skin;->dp(F)I

    move-result v5

    iget-object v7, p0, Lcom/gmodvr/flat/CustomButtonsActivity;->skin:Lcom/gmodvr/flat/Skin;

    invoke-virtual {v7, v6}, Lcom/gmodvr/flat/Skin;->dp(F)I

    move-result v6

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 85
    iget-object v4, v1, Lcom/gmodvr/flat/CustomButtons$Entry;->with:Ljava/lang/String;

    invoke-static {v4}, Lcom/gmodvr/flat/CustomButtonKeys;->get(Ljava/lang/String;)Lcom/gmodvr/flat/CustomButtonKeys$Key;

    move-result-object v4

    .line 86
    invoke-virtual {v1}, Lcom/gmodvr/flat/CustomButtons$Entry;->hasWheel()Z

    move-result v5

    if-eqz v5, :cond_c0

    const-string v5, "Step per tap"

    goto :goto_c4

    :cond_c0
    iget-object v5, v1, Lcom/gmodvr/flat/CustomButtons$Entry;->mode:Lcom/gmodvr/flat/CustomButtons$Mode;

    iget-object v5, v5, Lcom/gmodvr/flat/CustomButtons$Mode;->title:Ljava/lang/String;

    :goto_c4
    if-nez v4, :cond_c9

    .line 87
    iget-object v2, v2, Lcom/gmodvr/flat/CustomButtonKeys$Key;->title:Ljava/lang/String;

    goto :goto_e1

    :cond_c9
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v4, Lcom/gmodvr/flat/CustomButtonKeys$Key;->title:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " + "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lcom/gmodvr/flat/CustomButtonKeys$Key;->title:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 88
    :goto_e1
    iget-object v4, p0, Lcom/gmodvr/flat/CustomButtonsActivity;->skin:Lcom/gmodvr/flat/Skin;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v1, Lcom/gmodvr/flat/CustomButtons$Entry;->label:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "  \u00b7  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/gmodvr/flat/CustomButtons$Entry;->keySpec()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " \u00b7 "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/gmodvr/flat/CustomButtons$Entry;->shape:Lcom/gmodvr/flat/CustomButtons$Shape;

    iget-object v5, v5, Lcom/gmodvr/flat/CustomButtons$Shape;->title:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/gmodvr/flat/CustomButtonsActivity$$ExternalSyntheticLambda2;

    invoke-direct {v6, p0, v1}, Lcom/gmodvr/flat/CustomButtonsActivity$$ExternalSyntheticLambda2;-><init>(Lcom/gmodvr/flat/CustomButtonsActivity;Lcom/gmodvr/flat/CustomButtons$Entry;)V

    invoke-virtual {v4, v2, v5, v3, v6}, Lcom/gmodvr/flat/Skin;->row(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Ljava/lang/Runnable;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 89
    new-instance v3, Lcom/gmodvr/flat/CustomButtonsActivity$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0, v1}, Lcom/gmodvr/flat/CustomButtonsActivity$$ExternalSyntheticLambda3;-><init>(Lcom/gmodvr/flat/CustomButtonsActivity;Lcom/gmodvr/flat/CustomButtons$Entry;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 90
    iget-object v1, p0, Lcom/gmodvr/flat/CustomButtonsActivity;->list:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto/16 :goto_77

    .line 92
    :cond_133
    iget-object v0, p0, Lcom/gmodvr/flat/CustomButtonsActivity;->list:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/gmodvr/flat/CustomButtonsActivity;->skin:Lcom/gmodvr/flat/Skin;

    const/high16 v2, 0x41480000    # 12.5f

    const v3, -0xa49991

    const-string v4, "Tap a button to change it, long-press to remove it."

    invoke-virtual {v1, v4, v2, v3}, Lcom/gmodvr/flat/Skin;->text(Ljava/lang/CharSequence;FI)Landroid/widget/TextView;

    move-result-object v1

    iget-object p0, p0, Lcom/gmodvr/flat/CustomButtonsActivity;->skin:Lcom/gmodvr/flat/Skin;

    const/high16 v2, 0x41200000    # 10.0f

    invoke-virtual {p0, v2}, Lcom/gmodvr/flat/Skin;->below(F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 7

    .line 41
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    new-instance p1, Lcom/gmodvr/flat/CustomButtonIcons;

    invoke-direct {p1, p0}, Lcom/gmodvr/flat/CustomButtonIcons;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/gmodvr/flat/CustomButtonsActivity;->icons:Lcom/gmodvr/flat/CustomButtonIcons;

    .line 43
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "franchise"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/gmodvr/flat/Skin;->of(Landroid/app/Activity;Ljava/lang/String;)Lcom/gmodvr/flat/Skin;

    move-result-object p1

    iput-object p1, p0, Lcom/gmodvr/flat/CustomButtonsActivity;->skin:Lcom/gmodvr/flat/Skin;

    .line 44
    const-string v0, "Custom buttons"

    const-string v1, "On-screen buttons that press a keyboard key or mouse button, for addons that do something on a key (G, F, R, Z, mouse 3, ...) or on two keys together (E + R, Shift + E, ...). Only the buttons you add here appear in game; they hide with the other buttons while the spawn or context menu is open."

    invoke-virtual {p1, v0, v1}, Lcom/gmodvr/flat/Skin;->screen(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object p1

    .line 49
    iget-object v0, p0, Lcom/gmodvr/flat/CustomButtonsActivity;->skin:Lcom/gmodvr/flat/Skin;

    iget v1, v0, Lcom/gmodvr/flat/Skin;->accent:I

    invoke-virtual {v0, v1}, Lcom/gmodvr/flat/Skin;->panel(I)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 50
    iget-object v1, p0, Lcom/gmodvr/flat/CustomButtonsActivity;->skin:Lcom/gmodvr/flat/Skin;

    const/high16 v2, 0x41600000    # 14.0f

    const v3, -0x191513

    const-string v4, ""

    invoke-virtual {v1, v4, v2, v3}, Lcom/gmodvr/flat/Skin;->text(Ljava/lang/CharSequence;FI)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Lcom/gmodvr/flat/CustomButtonsActivity;->status:Landroid/widget/TextView;

    .line 51
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 52
    iget-object v1, p0, Lcom/gmodvr/flat/CustomButtonsActivity;->skin:Lcom/gmodvr/flat/Skin;

    const/high16 v2, 0x41480000    # 12.5f

    const v3, -0x72665d

    const-string v4, "Changes apply the next time the game starts. New buttons start near the top middle of the screen and continue below it. If they get crowded, change their color, position and size in the launcher\'s Control layout editor, or move and resize them in game with the gear button."

    invoke-virtual {v1, v4, v2, v3}, Lcom/gmodvr/flat/Skin;->text(Ljava/lang/CharSequence;FI)Landroid/widget/TextView;

    move-result-object v1

    .line 54
    iget-object v2, p0, Lcom/gmodvr/flat/CustomButtonsActivity;->skin:Lcom/gmodvr/flat/Skin;

    const/high16 v3, 0x40c00000    # 6.0f

    invoke-virtual {v2, v3}, Lcom/gmodvr/flat/Skin;->below(F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 55
    iget-object v1, p0, Lcom/gmodvr/flat/CustomButtonsActivity;->skin:Lcom/gmodvr/flat/Skin;

    new-instance v2, Lcom/gmodvr/flat/CustomButtonsActivity$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/gmodvr/flat/CustomButtonsActivity$$ExternalSyntheticLambda0;-><init>(Lcom/gmodvr/flat/CustomButtonsActivity;)V

    const-string v3, "Add a button"

    invoke-virtual {v1, v3, v2}, Lcom/gmodvr/flat/Skin;->primary(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/widget/Button;

    move-result-object v1

    .line 56
    iget-object v2, p0, Lcom/gmodvr/flat/CustomButtonsActivity;->skin:Lcom/gmodvr/flat/Skin;

    const/high16 v3, 0x41400000    # 12.0f

    invoke-virtual {v2, v3}, Lcom/gmodvr/flat/Skin;->below(F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 57
    iget-object v1, p0, Lcom/gmodvr/flat/CustomButtonsActivity;->skin:Lcom/gmodvr/flat/Skin;

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-virtual {v1, v2}, Lcom/gmodvr/flat/Skin;->below(F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 59
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/gmodvr/flat/CustomButtonsActivity;->list:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    .line 60
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 61
    iget-object v0, p0, Lcom/gmodvr/flat/CustomButtonsActivity;->list:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 64
    :try_start_87
    invoke-static {p0}, Lcom/gmodvr/flat/CustomButtons;->file(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    invoke-static {p1}, Lcom/gmodvr/flat/CustomButtons;->load(Ljava/io/File;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/gmodvr/flat/CustomButtonsActivity;->entries:Ljava/util/List;
    :try_end_91
    .catch Ljava/io/IOException; {:try_start_87 .. :try_end_91} :catch_92

    goto :goto_99

    :catch_92
    move-exception p1

    .line 66
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gmodvr/flat/CustomButtonsActivity;->loadError:Ljava/lang/String;

    .line 68
    :goto_99
    invoke-direct {p0}, Lcom/gmodvr/flat/CustomButtonsActivity;->render()V

    return-void
.end method

###### Class com.gmodvr.flat.CustomButtonsActivity.AnonymousClass1 (com.gmodvr.flat.CustomButtonsActivity$1)
.class Lcom/gmodvr/flat/CustomButtonsActivity$1;
.super Ljava/lang/Object;
.source "CustomButtonsActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gmodvr/flat/CustomButtonsActivity;->edit(Lcom/gmodvr/flat/CustomButtons$Entry;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gmodvr/flat/CustomButtonsActivity;

.field final synthetic val$defaultLabel:Ljava/util/function/Supplier;

.field final synthetic val$keyIndex:[I

.field final synthetic val$label:Landroid/widget/EditText;

.field final synthetic val$refresh:[Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/gmodvr/flat/CustomButtonsActivity;[ILjava/util/function/Supplier;Landroid/widget/EditText;[Ljava/lang/Runnable;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 201
    iput-object p1, p0, Lcom/gmodvr/flat/CustomButtonsActivity$1;->this$0:Lcom/gmodvr/flat/CustomButtonsActivity;

    iput-object p2, p0, Lcom/gmodvr/flat/CustomButtonsActivity$1;->val$keyIndex:[I

    iput-object p3, p0, Lcom/gmodvr/flat/CustomButtonsActivity$1;->val$defaultLabel:Ljava/util/function/Supplier;

    iput-object p4, p0, Lcom/gmodvr/flat/CustomButtonsActivity$1;->val$label:Landroid/widget/EditText;

    iput-object p5, p0, Lcom/gmodvr/flat/CustomButtonsActivity$1;->val$refresh:[Ljava/lang/Runnable;

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

    .line 203
    iget-object p1, p0, Lcom/gmodvr/flat/CustomButtonsActivity$1;->val$keyIndex:[I

    const/4 p2, 0x0

    aget p1, p1, p2

    if-ne p3, p1, :cond_8

    return-void

    .line 205
    :cond_8
    iget-object p1, p0, Lcom/gmodvr/flat/CustomButtonsActivity$1;->val$defaultLabel:Ljava/util/function/Supplier;

    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object p4, p0, Lcom/gmodvr/flat/CustomButtonsActivity$1;->val$label:Landroid/widget/EditText;

    invoke-virtual {p4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p4

    .line 206
    iget-object p5, p0, Lcom/gmodvr/flat/CustomButtonsActivity$1;->val$keyIndex:[I

    aput p3, p5, p2

    .line 207
    invoke-virtual {p4}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_2e

    invoke-virtual {p4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3b

    :cond_2e
    iget-object p1, p0, Lcom/gmodvr/flat/CustomButtonsActivity$1;->val$label:Landroid/widget/EditText;

    iget-object p3, p0, Lcom/gmodvr/flat/CustomButtonsActivity$1;->val$defaultLabel:Ljava/util/function/Supplier;

    invoke-interface {p3}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/CharSequence;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 208
    :cond_3b
    iget-object p1, p0, Lcom/gmodvr/flat/CustomButtonsActivity$1;->val$label:Landroid/widget/EditText;

    iget-object p3, p0, Lcom/gmodvr/flat/CustomButtonsActivity$1;->val$defaultLabel:Ljava/util/function/Supplier;

    invoke-interface {p3}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/CharSequence;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 209
    iget-object p0, p0, Lcom/gmodvr/flat/CustomButtonsActivity$1;->val$refresh:[Ljava/lang/Runnable;

    aget-object p0, p0, p2

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

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

###### Class com.gmodvr.flat.CustomButtonsActivity.AnonymousClass2 (com.gmodvr.flat.CustomButtonsActivity$2)
.class Lcom/gmodvr/flat/CustomButtonsActivity$2;
.super Ljava/lang/Object;
.source "CustomButtonsActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gmodvr/flat/CustomButtonsActivity;->edit(Lcom/gmodvr/flat/CustomButtons$Entry;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gmodvr/flat/CustomButtonsActivity;

.field final synthetic val$defaultLabel:Ljava/util/function/Supplier;

.field final synthetic val$label:Landroid/widget/EditText;

.field final synthetic val$refresh:[Ljava/lang/Runnable;

.field final synthetic val$withIndex:[I


# direct methods
.method public constructor <init>(Lcom/gmodvr/flat/CustomButtonsActivity;[ILjava/util/function/Supplier;Landroid/widget/EditText;[Ljava/lang/Runnable;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 213
    iput-object p1, p0, Lcom/gmodvr/flat/CustomButtonsActivity$2;->this$0:Lcom/gmodvr/flat/CustomButtonsActivity;

    iput-object p2, p0, Lcom/gmodvr/flat/CustomButtonsActivity$2;->val$withIndex:[I

    iput-object p3, p0, Lcom/gmodvr/flat/CustomButtonsActivity$2;->val$defaultLabel:Ljava/util/function/Supplier;

    iput-object p4, p0, Lcom/gmodvr/flat/CustomButtonsActivity$2;->val$label:Landroid/widget/EditText;

    iput-object p5, p0, Lcom/gmodvr/flat/CustomButtonsActivity$2;->val$refresh:[Ljava/lang/Runnable;

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

    .line 215
    iget-object p1, p0, Lcom/gmodvr/flat/CustomButtonsActivity$2;->val$withIndex:[I

    const/4 p2, 0x0

    aget p1, p1, p2

    if-ne p3, p1, :cond_8

    return-void

    .line 216
    :cond_8
    iget-object p1, p0, Lcom/gmodvr/flat/CustomButtonsActivity$2;->val$defaultLabel:Ljava/util/function/Supplier;

    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object p4, p0, Lcom/gmodvr/flat/CustomButtonsActivity$2;->val$label:Landroid/widget/EditText;

    invoke-virtual {p4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p4

    .line 217
    iget-object p5, p0, Lcom/gmodvr/flat/CustomButtonsActivity$2;->val$withIndex:[I

    aput p3, p5, p2

    .line 218
    invoke-virtual {p4}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_2e

    invoke-virtual {p4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3b

    :cond_2e
    iget-object p1, p0, Lcom/gmodvr/flat/CustomButtonsActivity$2;->val$label:Landroid/widget/EditText;

    iget-object p3, p0, Lcom/gmodvr/flat/CustomButtonsActivity$2;->val$defaultLabel:Ljava/util/function/Supplier;

    invoke-interface {p3}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/CharSequence;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 219
    :cond_3b
    iget-object p1, p0, Lcom/gmodvr/flat/CustomButtonsActivity$2;->val$label:Landroid/widget/EditText;

    iget-object p3, p0, Lcom/gmodvr/flat/CustomButtonsActivity$2;->val$defaultLabel:Ljava/util/function/Supplier;

    invoke-interface {p3}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/CharSequence;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 220
    iget-object p0, p0, Lcom/gmodvr/flat/CustomButtonsActivity$2;->val$refresh:[Ljava/lang/Runnable;

    aget-object p0, p0, p2

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

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

###### Class com.gmodvr.flat.CustomButtonsActivity.AnonymousClass3 (com.gmodvr.flat.CustomButtonsActivity$3)
.class Lcom/gmodvr/flat/CustomButtonsActivity$3;
.super Ljava/lang/Object;
.source "CustomButtonsActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gmodvr/flat/CustomButtonsActivity;->edit(Lcom/gmodvr/flat/CustomButtons$Entry;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gmodvr/flat/CustomButtonsActivity;

.field final synthetic val$refresh:[Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/gmodvr/flat/CustomButtonsActivity;[Ljava/lang/Runnable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 224
    iput-object p1, p0, Lcom/gmodvr/flat/CustomButtonsActivity$3;->this$0:Lcom/gmodvr/flat/CustomButtonsActivity;

    iput-object p2, p0, Lcom/gmodvr/flat/CustomButtonsActivity$3;->val$refresh:[Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2

    .line 227
    iget-object p0, p0, Lcom/gmodvr/flat/CustomButtonsActivity$3;->val$refresh:[Ljava/lang/Runnable;

    const/4 p1, 0x0

    aget-object p0, p0, p1

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    .line 0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    .line 0
    return-void
.end method

###### Class com.gmodvr.flat.CustomButtonsActivity$$ExternalSyntheticLambda0 (com.gmodvr.flat.CustomButtonsActivity$$ExternalSyntheticLambda0)
.class public final synthetic Lcom/gmodvr/flat/CustomButtonsActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/CustomButtonsActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/CustomButtonsActivity;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/CustomButtonsActivity$$ExternalSyntheticLambda0;->f$0:Lcom/gmodvr/flat/CustomButtonsActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/gmodvr/flat/CustomButtonsActivity$$ExternalSyntheticLambda0;->f$0:Lcom/gmodvr/flat/CustomButtonsActivity;

    invoke-static {p0}, Lcom/gmodvr/flat/CustomButtonsActivity;->$r8$lambda$3PpovK_eRPLDQIWPcXMUekmZk_c(Lcom/gmodvr/flat/CustomButtonsActivity;)V

    return-void
.end method

###### Class com.gmodvr.flat.CustomButtonsActivity$$ExternalSyntheticLambda1 (com.gmodvr.flat.CustomButtonsActivity$$ExternalSyntheticLambda1)
.class public final synthetic Lcom/gmodvr/flat/CustomButtonsActivity$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/CustomButtonsActivity;

.field public final synthetic f$1:Ljava/util/List;

.field public final synthetic f$2:[I

.field public final synthetic f$3:Ljava/util/function/Supplier;

.field public final synthetic f$4:Landroid/widget/EditText;

.field public final synthetic f$5:Lcom/gmodvr/flat/CustomButtons$Entry;

.field public final synthetic f$6:[Lcom/gmodvr/flat/CustomButtons$Shape;

.field public final synthetic f$7:[Lcom/gmodvr/flat/CustomButtons$Mode;

.field public final synthetic f$8:Landroid/app/AlertDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/CustomButtonsActivity;Ljava/util/List;[ILjava/util/function/Supplier;Landroid/widget/EditText;Lcom/gmodvr/flat/CustomButtons$Entry;[Lcom/gmodvr/flat/CustomButtons$Shape;[Lcom/gmodvr/flat/CustomButtons$Mode;Landroid/app/AlertDialog;)V
    .registers 10

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/CustomButtonsActivity$$ExternalSyntheticLambda1;->f$0:Lcom/gmodvr/flat/CustomButtonsActivity;

    iput-object p2, p0, Lcom/gmodvr/flat/CustomButtonsActivity$$ExternalSyntheticLambda1;->f$1:Ljava/util/List;

    iput-object p3, p0, Lcom/gmodvr/flat/CustomButtonsActivity$$ExternalSyntheticLambda1;->f$2:[I

    iput-object p4, p0, Lcom/gmodvr/flat/CustomButtonsActivity$$ExternalSyntheticLambda1;->f$3:Ljava/util/function/Supplier;

    iput-object p5, p0, Lcom/gmodvr/flat/CustomButtonsActivity$$ExternalSyntheticLambda1;->f$4:Landroid/widget/EditText;

    iput-object p6, p0, Lcom/gmodvr/flat/CustomButtonsActivity$$ExternalSyntheticLambda1;->f$5:Lcom/gmodvr/flat/CustomButtons$Entry;

    iput-object p7, p0, Lcom/gmodvr/flat/CustomButtonsActivity$$ExternalSyntheticLambda1;->f$6:[Lcom/gmodvr/flat/CustomButtons$Shape;

    iput-object p8, p0, Lcom/gmodvr/flat/CustomButtonsActivity$$ExternalSyntheticLambda1;->f$7:[Lcom/gmodvr/flat/CustomButtons$Mode;

    iput-object p9, p0, Lcom/gmodvr/flat/CustomButtonsActivity$$ExternalSyntheticLambda1;->f$8:Landroid/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 12

    .line 0
    iget-object v0, p0, Lcom/gmodvr/flat/CustomButtonsActivity$$ExternalSyntheticLambda1;->f$0:Lcom/gmodvr/flat/CustomButtonsActivity;

    iget-object v1, p0, Lcom/gmodvr/flat/CustomButtonsActivity$$ExternalSyntheticLambda1;->f$1:Ljava/util/List;

    iget-object v2, p0, Lcom/gmodvr/flat/CustomButtonsActivity$$ExternalSyntheticLambda1;->f$2:[I

    iget-object v3, p0, Lcom/gmodvr/flat/CustomButtonsActivity$$ExternalSyntheticLambda1;->f$3:Ljava/util/function/Supplier;

    iget-object v4, p0, Lcom/gmodvr/flat/CustomButtonsActivity$$ExternalSyntheticLambda1;->f$4:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/gmodvr/flat/CustomButtonsActivity$$ExternalSyntheticLambda1;->f$5:Lcom/gmodvr/flat/CustomButtons$Entry;

    iget-object v6, p0, Lcom/gmodvr/flat/CustomButtonsActivity$$ExternalSyntheticLambda1;->f$6:[Lcom/gmodvr/flat/CustomButtons$Shape;

    iget-object v7, p0, Lcom/gmodvr/flat/CustomButtonsActivity$$ExternalSyntheticLambda1;->f$7:[Lcom/gmodvr/flat/CustomButtons$Mode;

    iget-object v8, p0, Lcom/gmodvr/flat/CustomButtonsActivity$$ExternalSyntheticLambda1;->f$8:Landroid/app/AlertDialog;

    move-object v9, p1

    invoke-static/range {v0 .. v9}, Lcom/gmodvr/flat/CustomButtonsActivity;->$r8$lambda$-XXlFTtsiaTs6E9gTEZnWPFKgrE(Lcom/gmodvr/flat/CustomButtonsActivity;Ljava/util/List;[ILjava/util/function/Supplier;Landroid/widget/EditText;Lcom/gmodvr/flat/CustomButtons$Entry;[Lcom/gmodvr/flat/CustomButtons$Shape;[Lcom/gmodvr/flat/CustomButtons$Mode;Landroid/app/AlertDialog;Landroid/view/View;)V

    return-void
.end method

###### Class com.gmodvr.flat.CustomButtonsActivity$$ExternalSyntheticLambda10 (com.gmodvr.flat.CustomButtonsActivity$$ExternalSyntheticLambda10)
.class public final synthetic Lcom/gmodvr/flat/CustomButtonsActivity$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:[Lcom/gmodvr/flat/CustomButtons$Shape;

.field public final synthetic f$1:Lcom/gmodvr/flat/CustomButtons$Shape;

.field public final synthetic f$2:[Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>([Lcom/gmodvr/flat/CustomButtons$Shape;Lcom/gmodvr/flat/CustomButtons$Shape;[Ljava/lang/Runnable;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/CustomButtonsActivity$$ExternalSyntheticLambda10;->f$0:[Lcom/gmodvr/flat/CustomButtons$Shape;

    iput-object p2, p0, Lcom/gmodvr/flat/CustomButtonsActivity$$ExternalSyntheticLambda10;->f$1:Lcom/gmodvr/flat/CustomButtons$Shape;

    iput-object p3, p0, Lcom/gmodvr/flat/CustomButtonsActivity$$ExternalSyntheticLambda10;->f$2:[Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/gmodvr/flat/CustomButtonsActivity$$ExternalSyntheticLambda10;->f$0:[Lcom/gmodvr/flat/CustomButtons$Shape;

    iget-object v1, p0, Lcom/gmodvr/flat/CustomButtonsActivity$$ExternalSyntheticLambda10;->f$1:Lcom/gmodvr/flat/CustomButtons$Shape;

    iget-object p0, p0, Lcom/gmodvr/flat/CustomButtonsActivity$$ExternalSyntheticLambda10;->f$2:[Ljava/lang/Runnable;

    invoke-static {v0, v1, p0}, Lcom/gmodvr/flat/CustomButtonsActivity;->$r8$lambda$xpP19m0mkVnoOa6efsxsGYERaEs([Lcom/gmodvr/flat/CustomButtons$Shape;Lcom/gmodvr/flat/CustomButtons$Shape;[Ljava/lang/Runnable;)V

    return-void
.end method

###### Class com.gmodvr.flat.CustomButtonsActivity$$ExternalSyntheticLambda11 (com.gmodvr.flat.CustomButtonsActivity$$ExternalSyntheticLambda11)
.class public final synthetic Lcom/gmodvr/flat/CustomButtonsActivity$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:[Lcom/gmodvr/flat/CustomButtons$Mode;

.field public final synthetic f$1:Lcom/gmodvr/flat/CustomButtons$Mode;

.field public final synthetic f$2:[Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>([Lcom/gmodvr/flat/CustomButtons$Mode;Lcom/gmodvr/flat/CustomButtons$Mode;[Ljava/lang/Runnable;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/CustomButtonsActivity$$ExternalSyntheticLambda11;->f$0:[Lcom/gmodvr/flat/CustomButtons$Mode;

    iput-object p2, p0, Lcom/gmodvr/flat/CustomButtonsActivity$$ExternalSyntheticLambda11;->f$1:Lcom/gmodvr/flat/CustomButtons$Mode;

    iput-object p3, p0, Lcom/gmodvr/flat/CustomButtonsActivity$$ExternalSyntheticLambda11;->f$2:[Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/gmodvr/flat/CustomButtonsActivity$$ExternalSyntheticLambda11;->f$0:[Lcom/gmodvr/flat/CustomButtons$Mode;

    iget-object v1, p0, Lcom/gmodvr/flat/CustomButtonsActivity$$ExternalSyntheticLambda11;->f$1:Lcom/gmodvr/flat/CustomButtons$Mode;

    iget-object p0, p0, Lcom/gmodvr/flat/CustomButtonsActivity$$ExternalSyntheticLambda11;->f$2:[Ljava/lang/Runnable;

    invoke-static {v0, v1, p0}, Lcom/gmodvr/flat/CustomButtonsActivity;->$r8$lambda$rHPiBH5CnRftW2a3Dhlmce0cSTg([Lcom/gmodvr/flat/CustomButtons$Mode;Lcom/gmodvr/flat/CustomButtons$Mode;[Ljava/lang/Runnable;)V

    return-void
.end method

###### Class com.gmodvr.flat.CustomButtonsActivity$$ExternalSyntheticLambda12 (com.gmodvr.flat.CustomButtonsActivity$$ExternalSyntheticLambda12)
.class public final synthetic Lcom/gmodvr/flat/CustomButtonsActivity$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/CustomButtons$Entry;


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/CustomButtons$Entry;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/CustomButtonsActivity$$ExternalSyntheticLambda12;->f$0:Lcom/gmodvr/flat/CustomButtons$Entry;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/gmodvr/flat/CustomButtonsActivity$$ExternalSyntheticLambda12;->f$0:Lcom/gmodvr/flat/CustomButtons$Entry;

    check-cast p1, Lcom/gmodvr/flat/CustomButtons$Entry;

    invoke-static {p0, p1}, Lcom/gmodvr/flat/CustomButtonsActivity;->$r8$lambda$ohOuXmlNtPjU4oEAgky-Cjn7CUE(Lcom/gmodvr/flat/CustomButtons$Entry;Lcom/gmodvr/flat/CustomButtons$Entry;)Z

    move-result p0

    return p0
.end method

###### Class com.gmodvr.flat.CustomButtonsActivity$$ExternalSyntheticLambda2 (com.gmodvr.flat.CustomButtonsActivity$$ExternalSyntheticLambda2)
.class public final synthetic Lcom/gmodvr/flat/CustomButtonsActivity$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/CustomButtonsActivity;

.field public final synthetic f$1:Lcom/gmodvr/flat/CustomButtons$Entry;


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/CustomButtonsActivity;Lcom/gmodvr/flat/CustomButtons$Entry;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/CustomButtonsActivity$$ExternalSyntheticLambda2;->f$0:Lcom/gmodvr/flat/CustomButtonsActivity;

    iput-object p2, p0, Lcom/gmodvr/flat/CustomButtonsActivity$$ExternalSyntheticLambda2;->f$1:Lcom/gmodvr/flat/CustomButtons$Entry;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/gmodvr/flat/CustomButtonsActivity$$ExternalSyntheticLambda2;->f$0:Lcom/gmodvr/flat/CustomButtonsActivity;

    iget-object p0, p0, Lcom/gmodvr/flat/CustomButtonsActivity$$ExternalSyntheticLambda2;->f$1:Lcom/gmodvr/flat/CustomButtons$Entry;

    invoke-static {v0, p0}, Lcom/gmodvr/flat/CustomButtonsActivity;->$r8$lambda$RZ688NUfg674BozxjY-Uc4wn2PA(Lcom/gmodvr/flat/CustomButtonsActivity;Lcom/gmodvr/flat/CustomButtons$Entry;)V

    return-void
.end method

###### Class com.gmodvr.flat.CustomButtonsActivity$$ExternalSyntheticLambda3 (com.gmodvr.flat.CustomButtonsActivity$$ExternalSyntheticLambda3)
.class public final synthetic Lcom/gmodvr/flat/CustomButtonsActivity$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/CustomButtonsActivity;

.field public final synthetic f$1:Lcom/gmodvr/flat/CustomButtons$Entry;


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/CustomButtonsActivity;Lcom/gmodvr/flat/CustomButtons$Entry;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/CustomButtonsActivity$$ExternalSyntheticLambda3;->f$0:Lcom/gmodvr/flat/CustomButtonsActivity;

    iput-object p2, p0, Lcom/gmodvr/flat/CustomButtonsActivity$$ExternalSyntheticLambda3;->f$1:Lcom/gmodvr/flat/CustomButtons$Entry;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/gmodvr/flat/CustomButtonsActivity$$ExternalSyntheticLambda3;->f$0:Lcom/gmodvr/flat/CustomButtonsActivity;

    iget-object p0, p0, Lcom/gmodvr/flat/CustomButtonsActivity$$ExternalSyntheticLambda3;->f$1:Lcom/gmodvr/flat/CustomButtons$Entry;

    invoke-static {v0, p0, p1}, Lcom/gmodvr/flat/CustomButtonsActivity;->$r8$lambda$RO2Mhz2EUBj2lgmXKlmGGm4kB8U(Lcom/gmodvr/flat/CustomButtonsActivity;Lcom/gmodvr/flat/CustomButtons$Entry;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

###### Class com.gmodvr.flat.CustomButtonsActivity$$ExternalSyntheticLambda4 (com.gmodvr.flat.CustomButtonsActivity$$ExternalSyntheticLambda4)
.class public final synthetic Lcom/gmodvr/flat/CustomButtonsActivity$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/CustomButtonsActivity;

.field public final synthetic f$1:Lcom/gmodvr/flat/CustomButtons$Entry;


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/CustomButtonsActivity;Lcom/gmodvr/flat/CustomButtons$Entry;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/CustomButtonsActivity$$ExternalSyntheticLambda4;->f$0:Lcom/gmodvr/flat/CustomButtonsActivity;

    iput-object p2, p0, Lcom/gmodvr/flat/CustomButtonsActivity$$ExternalSyntheticLambda4;->f$1:Lcom/gmodvr/flat/CustomButtons$Entry;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/gmodvr/flat/CustomButtonsActivity$$ExternalSyntheticLambda4;->f$0:Lcom/gmodvr/flat/CustomButtonsActivity;

    iget-object p0, p0, Lcom/gmodvr/flat/CustomButtonsActivity$$ExternalSyntheticLambda4;->f$1:Lcom/gmodvr/flat/CustomButtons$Entry;

    invoke-static {v0, p0, p1, p2}, Lcom/gmodvr/flat/CustomButtonsActivity;->$r8$lambda$6kShHS_ZkxbYXZ49UO1niDTTilo(Lcom/gmodvr/flat/CustomButtonsActivity;Lcom/gmodvr/flat/CustomButtons$Entry;Landroid/content/DialogInterface;I)V

    return-void
.end method

###### Class com.gmodvr.flat.CustomButtonsActivity$$ExternalSyntheticLambda5 (com.gmodvr.flat.CustomButtonsActivity$$ExternalSyntheticLambda5)
.class public final synthetic Lcom/gmodvr/flat/CustomButtonsActivity$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:[I

.field public final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>([ILjava/util/List;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/CustomButtonsActivity$$ExternalSyntheticLambda5;->f$0:[I

    iput-object p2, p0, Lcom/gmodvr/flat/CustomButtonsActivity$$ExternalSyntheticLambda5;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/gmodvr/flat/CustomButtonsActivity$$ExternalSyntheticLambda5;->f$0:[I

    iget-object p0, p0, Lcom/gmodvr/flat/CustomButtonsActivity$$ExternalSyntheticLambda5;->f$1:Ljava/util/List;

    invoke-static {v0, p0}, Lcom/gmodvr/flat/CustomButtonsActivity;->$r8$lambda$KKpNJjEpqvnx7PiV3tq33Qls_z8([ILjava/util/List;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

###### Class com.gmodvr.flat.CustomButtonsActivity$$ExternalSyntheticLambda6 (com.gmodvr.flat.CustomButtonsActivity$$ExternalSyntheticLambda6)
.class public final synthetic Lcom/gmodvr/flat/CustomButtonsActivity$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Ljava/util/List;

.field public final synthetic f$1:[I

.field public final synthetic f$2:Ljava/util/function/Supplier;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;[ILjava/util/function/Supplier;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/CustomButtonsActivity$$ExternalSyntheticLambda6;->f$0:Ljava/util/List;

    iput-object p2, p0, Lcom/gmodvr/flat/CustomButtonsActivity$$ExternalSyntheticLambda6;->f$1:[I

    iput-object p3, p0, Lcom/gmodvr/flat/CustomButtonsActivity$$ExternalSyntheticLambda6;->f$2:Ljava/util/function/Supplier;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/gmodvr/flat/CustomButtonsActivity$$ExternalSyntheticLambda6;->f$0:Ljava/util/List;

    iget-object v1, p0, Lcom/gmodvr/flat/CustomButtonsActivity$$ExternalSyntheticLambda6;->f$1:[I

    iget-object p0, p0, Lcom/gmodvr/flat/CustomButtonsActivity$$ExternalSyntheticLambda6;->f$2:Ljava/util/function/Supplier;

    invoke-static {v0, v1, p0}, Lcom/gmodvr/flat/CustomButtonsActivity;->$r8$lambda$9uOLk586YcrfSziMus44Ugo2GCM(Ljava/util/List;[ILjava/util/function/Supplier;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

###### Class com.gmodvr.flat.CustomButtonsActivity$$ExternalSyntheticLambda7 (com.gmodvr.flat.CustomButtonsActivity$$ExternalSyntheticLambda7)
.class public final synthetic Lcom/gmodvr/flat/CustomButtonsActivity$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/CustomButtonsActivity;

.field public final synthetic f$1:Ljava/util/List;

.field public final synthetic f$10:Landroid/widget/TextView;

.field public final synthetic f$11:[Lcom/gmodvr/flat/CustomButtons$Mode;

.field public final synthetic f$12:Landroid/widget/TextView;

.field public final synthetic f$2:[I

.field public final synthetic f$3:Ljava/util/function/Supplier;

.field public final synthetic f$4:Landroid/widget/EditText;

.field public final synthetic f$5:Landroid/widget/ImageView;

.field public final synthetic f$6:[Lcom/gmodvr/flat/CustomButtons$Shape;

.field public final synthetic f$7:Landroid/widget/LinearLayout;

.field public final synthetic f$8:[Ljava/lang/Runnable;

.field public final synthetic f$9:Landroid/widget/LinearLayout;


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/CustomButtonsActivity;Ljava/util/List;[ILjava/util/function/Supplier;Landroid/widget/EditText;Landroid/widget/ImageView;[Lcom/gmodvr/flat/CustomButtons$Shape;Landroid/widget/LinearLayout;[Ljava/lang/Runnable;Landroid/widget/LinearLayout;Landroid/widget/TextView;[Lcom/gmodvr/flat/CustomButtons$Mode;Landroid/widget/TextView;)V
    .registers 14

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/CustomButtonsActivity$$ExternalSyntheticLambda7;->f$0:Lcom/gmodvr/flat/CustomButtonsActivity;

    iput-object p2, p0, Lcom/gmodvr/flat/CustomButtonsActivity$$ExternalSyntheticLambda7;->f$1:Ljava/util/List;

    iput-object p3, p0, Lcom/gmodvr/flat/CustomButtonsActivity$$ExternalSyntheticLambda7;->f$2:[I

    iput-object p4, p0, Lcom/gmodvr/flat/CustomButtonsActivity$$ExternalSyntheticLambda7;->f$3:Ljava/util/function/Supplier;

    iput-object p5, p0, Lcom/gmodvr/flat/CustomButtonsActivity$$ExternalSyntheticLambda7;->f$4:Landroid/widget/EditText;

    iput-object p6, p0, Lcom/gmodvr/flat/CustomButtonsActivity$$ExternalSyntheticLambda7;->f$5:Landroid/widget/ImageView;

    iput-object p7, p0, Lcom/gmodvr/flat/CustomButtonsActivity$$ExternalSyntheticLambda7;->f$6:[Lcom/gmodvr/flat/CustomButtons$Shape;

    iput-object p8, p0, Lcom/gmodvr/flat/CustomButtonsActivity$$ExternalSyntheticLambda7;->f$7:Landroid/widget/LinearLayout;

    iput-object p9, p0, Lcom/gmodvr/flat/CustomButtonsActivity$$ExternalSyntheticLambda7;->f$8:[Ljava/lang/Runnable;

    iput-object p10, p0, Lcom/gmodvr/flat/CustomButtonsActivity$$ExternalSyntheticLambda7;->f$9:Landroid/widget/LinearLayout;

    iput-object p11, p0, Lcom/gmodvr/flat/CustomButtonsActivity$$ExternalSyntheticLambda7;->f$10:Landroid/widget/TextView;

    iput-object p12, p0, Lcom/gmodvr/flat/CustomButtonsActivity$$ExternalSyntheticLambda7;->f$11:[Lcom/gmodvr/flat/CustomButtons$Mode;

    iput-object p13, p0, Lcom/gmodvr/flat/CustomButtonsActivity$$ExternalSyntheticLambda7;->f$12:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 14

    .line 0
    iget-object v0, p0, Lcom/gmodvr/flat/CustomButtonsActivity$$ExternalSyntheticLambda7;->f$0:Lcom/gmodvr/flat/CustomButtonsActivity;

    iget-object v1, p0, Lcom/gmodvr/flat/CustomButtonsActivity$$ExternalSyntheticLambda7;->f$1:Ljava/util/List;

    iget-object v2, p0, Lcom/gmodvr/flat/CustomButtonsActivity$$ExternalSyntheticLambda7;->f$2:[I

    iget-object v3, p0, Lcom/gmodvr/flat/CustomButtonsActivity$$ExternalSyntheticLambda7;->f$3:Ljava/util/function/Supplier;

    iget-object v4, p0, Lcom/gmodvr/flat/CustomButtonsActivity$$ExternalSyntheticLambda7;->f$4:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/gmodvr/flat/CustomButtonsActivity$$ExternalSyntheticLambda7;->f$5:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/gmodvr/flat/CustomButtonsActivity$$ExternalSyntheticLambda7;->f$6:[Lcom/gmodvr/flat/CustomButtons$Shape;

    iget-object v7, p0, Lcom/gmodvr/flat/CustomButtonsActivity$$ExternalSyntheticLambda7;->f$7:Landroid/widget/LinearLayout;

    iget-object v8, p0, Lcom/gmodvr/flat/CustomButtonsActivity$$ExternalSyntheticLambda7;->f$8:[Ljava/lang/Runnable;

    iget-object v9, p0, Lcom/gmodvr/flat/CustomButtonsActivity$$ExternalSyntheticLambda7;->f$9:Landroid/widget/LinearLayout;

    iget-object v10, p0, Lcom/gmodvr/flat/CustomButtonsActivity$$ExternalSyntheticLambda7;->f$10:Landroid/widget/TextView;

    iget-object v11, p0, Lcom/gmodvr/flat/CustomButtonsActivity$$ExternalSyntheticLambda7;->f$11:[Lcom/gmodvr/flat/CustomButtons$Mode;

    iget-object v12, p0, Lcom/gmodvr/flat/CustomButtonsActivity$$ExternalSyntheticLambda7;->f$12:Landroid/widget/TextView;

    invoke-static/range {v0 .. v12}, Lcom/gmodvr/flat/CustomButtonsActivity;->$r8$lambda$4wi_9sJbqW4onx3CJei9E4CJRFo(Lcom/gmodvr/flat/CustomButtonsActivity;Ljava/util/List;[ILjava/util/function/Supplier;Landroid/widget/EditText;Landroid/widget/ImageView;[Lcom/gmodvr/flat/CustomButtons$Shape;Landroid/widget/LinearLayout;[Ljava/lang/Runnable;Landroid/widget/LinearLayout;Landroid/widget/TextView;[Lcom/gmodvr/flat/CustomButtons$Mode;Landroid/widget/TextView;)V

    return-void
.end method

###### Class com.gmodvr.flat.CustomButtonsActivity$$ExternalSyntheticLambda8 (com.gmodvr.flat.CustomButtonsActivity$$ExternalSyntheticLambda8)
.class public final synthetic Lcom/gmodvr/flat/CustomButtonsActivity$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/CustomButtonsActivity;

.field public final synthetic f$1:Lcom/gmodvr/flat/CustomButtons$Entry;


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/CustomButtonsActivity;Lcom/gmodvr/flat/CustomButtons$Entry;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/CustomButtonsActivity$$ExternalSyntheticLambda8;->f$0:Lcom/gmodvr/flat/CustomButtonsActivity;

    iput-object p2, p0, Lcom/gmodvr/flat/CustomButtonsActivity$$ExternalSyntheticLambda8;->f$1:Lcom/gmodvr/flat/CustomButtons$Entry;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/gmodvr/flat/CustomButtonsActivity$$ExternalSyntheticLambda8;->f$0:Lcom/gmodvr/flat/CustomButtonsActivity;

    iget-object p0, p0, Lcom/gmodvr/flat/CustomButtonsActivity$$ExternalSyntheticLambda8;->f$1:Lcom/gmodvr/flat/CustomButtons$Entry;

    invoke-static {v0, p0, p1, p2}, Lcom/gmodvr/flat/CustomButtonsActivity;->$r8$lambda$RiIgA7MvyEIX0S8kdtF0RjdgfSY(Lcom/gmodvr/flat/CustomButtonsActivity;Lcom/gmodvr/flat/CustomButtons$Entry;Landroid/content/DialogInterface;I)V

    return-void
.end method

###### Class com.gmodvr.flat.CustomButtonsActivity$$ExternalSyntheticLambda9 (com.gmodvr.flat.CustomButtonsActivity$$ExternalSyntheticLambda9)
.class public final synthetic Lcom/gmodvr/flat/CustomButtonsActivity$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/CustomButtonsActivity;

.field public final synthetic f$1:Landroid/app/AlertDialog;

.field public final synthetic f$2:Ljava/util/List;

.field public final synthetic f$3:[I

.field public final synthetic f$4:Ljava/util/function/Supplier;

.field public final synthetic f$5:Landroid/widget/EditText;

.field public final synthetic f$6:Lcom/gmodvr/flat/CustomButtons$Entry;

.field public final synthetic f$7:[Lcom/gmodvr/flat/CustomButtons$Shape;

.field public final synthetic f$8:[Lcom/gmodvr/flat/CustomButtons$Mode;


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/CustomButtonsActivity;Landroid/app/AlertDialog;Ljava/util/List;[ILjava/util/function/Supplier;Landroid/widget/EditText;Lcom/gmodvr/flat/CustomButtons$Entry;[Lcom/gmodvr/flat/CustomButtons$Shape;[Lcom/gmodvr/flat/CustomButtons$Mode;)V
    .registers 10

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/CustomButtonsActivity$$ExternalSyntheticLambda9;->f$0:Lcom/gmodvr/flat/CustomButtonsActivity;

    iput-object p2, p0, Lcom/gmodvr/flat/CustomButtonsActivity$$ExternalSyntheticLambda9;->f$1:Landroid/app/AlertDialog;

    iput-object p3, p0, Lcom/gmodvr/flat/CustomButtonsActivity$$ExternalSyntheticLambda9;->f$2:Ljava/util/List;

    iput-object p4, p0, Lcom/gmodvr/flat/CustomButtonsActivity$$ExternalSyntheticLambda9;->f$3:[I

    iput-object p5, p0, Lcom/gmodvr/flat/CustomButtonsActivity$$ExternalSyntheticLambda9;->f$4:Ljava/util/function/Supplier;

    iput-object p6, p0, Lcom/gmodvr/flat/CustomButtonsActivity$$ExternalSyntheticLambda9;->f$5:Landroid/widget/EditText;

    iput-object p7, p0, Lcom/gmodvr/flat/CustomButtonsActivity$$ExternalSyntheticLambda9;->f$6:Lcom/gmodvr/flat/CustomButtons$Entry;

    iput-object p8, p0, Lcom/gmodvr/flat/CustomButtonsActivity$$ExternalSyntheticLambda9;->f$7:[Lcom/gmodvr/flat/CustomButtons$Shape;

    iput-object p9, p0, Lcom/gmodvr/flat/CustomButtonsActivity$$ExternalSyntheticLambda9;->f$8:[Lcom/gmodvr/flat/CustomButtons$Mode;

    return-void
.end method


# virtual methods
.method public final onShow(Landroid/content/DialogInterface;)V
    .registers 12

    .line 0
    iget-object v0, p0, Lcom/gmodvr/flat/CustomButtonsActivity$$ExternalSyntheticLambda9;->f$0:Lcom/gmodvr/flat/CustomButtonsActivity;

    iget-object v1, p0, Lcom/gmodvr/flat/CustomButtonsActivity$$ExternalSyntheticLambda9;->f$1:Landroid/app/AlertDialog;

    iget-object v2, p0, Lcom/gmodvr/flat/CustomButtonsActivity$$ExternalSyntheticLambda9;->f$2:Ljava/util/List;

    iget-object v3, p0, Lcom/gmodvr/flat/CustomButtonsActivity$$ExternalSyntheticLambda9;->f$3:[I

    iget-object v4, p0, Lcom/gmodvr/flat/CustomButtonsActivity$$ExternalSyntheticLambda9;->f$4:Ljava/util/function/Supplier;

    iget-object v5, p0, Lcom/gmodvr/flat/CustomButtonsActivity$$ExternalSyntheticLambda9;->f$5:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/gmodvr/flat/CustomButtonsActivity$$ExternalSyntheticLambda9;->f$6:Lcom/gmodvr/flat/CustomButtons$Entry;

    iget-object v7, p0, Lcom/gmodvr/flat/CustomButtonsActivity$$ExternalSyntheticLambda9;->f$7:[Lcom/gmodvr/flat/CustomButtons$Shape;

    iget-object v8, p0, Lcom/gmodvr/flat/CustomButtonsActivity$$ExternalSyntheticLambda9;->f$8:[Lcom/gmodvr/flat/CustomButtons$Mode;

    move-object v9, p1

    invoke-static/range {v0 .. v9}, Lcom/gmodvr/flat/CustomButtonsActivity;->$r8$lambda$u1cOBiiJfUlSJieZO3tgz4OBT7w(Lcom/gmodvr/flat/CustomButtonsActivity;Landroid/app/AlertDialog;Ljava/util/List;[ILjava/util/function/Supplier;Landroid/widget/EditText;Lcom/gmodvr/flat/CustomButtons$Entry;[Lcom/gmodvr/flat/CustomButtons$Shape;[Lcom/gmodvr/flat/CustomButtons$Mode;Landroid/content/DialogInterface;)V

    return-void
.end method
