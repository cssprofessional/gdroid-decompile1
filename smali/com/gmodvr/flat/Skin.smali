###### Class com.gmodvr.flat.Skin (com.gmodvr.flat.Skin)
.class final Lcom/gmodvr/flat/Skin;
.super Ljava/lang/Object;
.source "Skin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gmodvr/flat/Skin$Column;,
        Lcom/gmodvr/flat/Skin$Cut;
    }
.end annotation


# static fields
.field private static final ANY:[I

.field static final BG:I = -0xf4f1f0

.field private static final CHECKED:[I

.field static final DIM:I = -0xa49991

.field private static final DISABLED:[I

.field static final EDGE:I = -0xc7bcb4

.field static final ERROR:I = -0x179fb1

.field private static final FOCUSED:[I

.field static final HEAD:Landroid/graphics/Typeface;

.field static final LINE:I = -0xdcd4cf

.field static final MONO:Landroid/graphics/Typeface;

.field static final MUTED:I = -0x72665d

.field static final OK:I = -0x793691

.field private static final PRESSED:[I

.field static final RAISED:I = -0xe4ddd9

.field static final SURFACE:I = -0xede8e5

.field static final TEXT:I = -0x191513


# instance fields
.field final accent:I

.field final activity:Landroid/app/Activity;


# direct methods
.method public static synthetic $r8$lambda$3HoSS4fsjvRivsM-L94sR1MQiyE(Ljava/lang/Runnable;Landroid/view/View;)V
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/gmodvr/flat/Skin;->lambda$row$2(Ljava/lang/Runnable;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$52wH_YmNh5ykl5AOf8z1AEoKbkc(Ljava/lang/Runnable;Landroid/view/View;)V
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/gmodvr/flat/Skin;->lambda$link$5(Ljava/lang/Runnable;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$DHCqxY1HGs388hEbJ6phkBX_NBo(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/gmodvr/flat/Skin;->lambda$fitSystemBars$0(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$KDbd2ssLuzqgsC89MVkys9q1jYI(Lcom/gmodvr/flat/Skin;Landroid/view/View;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gmodvr/flat/Skin;->lambda$screen$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TeKow5zZp4xbeZ_iKSdT7sdvn5w(Ljava/lang/Runnable;Landroid/view/View;)V
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/gmodvr/flat/Skin;->lambda$tab$6(Ljava/lang/Runnable;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ijYJc2DjLPh940BGET0bBiyGHqk(Ljava/lang/Runnable;Landroid/view/View;)V
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/gmodvr/flat/Skin;->lambda$segment$7(Ljava/lang/Runnable;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$te-PTRj8Ld6dKfQFoQFr0CVHTMo(Ljava/lang/Runnable;Landroid/view/View;)V
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/gmodvr/flat/Skin;->lambda$primary$3(Ljava/lang/Runnable;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xobGB6APmvuhpKt0yFOyOXnAHgk(Ljava/lang/Runnable;Landroid/view/View;)V
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/gmodvr/flat/Skin;->lambda$secondary$4(Ljava/lang/Runnable;Landroid/view/View;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smcolors(II)Landroid/content/res/ColorStateList;
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/gmodvr/flat/Skin;->colors(II)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 52
    const-string v0, "sans-serif-condensed"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/gmodvr/flat/Skin;->HEAD:Landroid/graphics/Typeface;

    .line 53
    sget-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    sput-object v0, Lcom/gmodvr/flat/Skin;->MONO:Landroid/graphics/Typeface;

    const v0, 0x10100a7

    .line 55
    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/gmodvr/flat/Skin;->PRESSED:[I

    const v0, 0x101009c

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/gmodvr/flat/Skin;->FOCUSED:[I

    const v0, -0x101009e

    .line 56
    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/gmodvr/flat/Skin;->DISABLED:[I

    const v0, 0x10100a0

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/gmodvr/flat/Skin;->CHECKED:[I

    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lcom/gmodvr/flat/Skin;->ANY:[I

    return-void
.end method

.method private constructor <init>(Landroid/app/Activity;I)V
    .registers 3

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/gmodvr/flat/Skin;->activity:Landroid/app/Activity;

    .line 63
    iput p2, p0, Lcom/gmodvr/flat/Skin;->accent:I

    return-void
.end method

.method private button(Ljava/lang/String;FLandroid/content/res/ColorStateList;)Landroid/widget/Button;
    .registers 6

    .line 446
    new-instance v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/gmodvr/flat/Skin;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 447
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 448
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 449
    sget-object p1, Lcom/gmodvr/flat/Skin;->HEAD:Landroid/graphics/Typeface;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/4 p1, 0x1

    .line 450
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setAllCaps(Z)V

    const p1, 0x3d75c28f    # 0.06f

    .line 451
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setLetterSpacing(F)V

    .line 452
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    const/4 p1, 0x0

    .line 453
    invoke-virtual {v0, p1}, Landroid/view/View;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    const/4 p1, 0x0

    .line 454
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 455
    invoke-virtual {v0, p1}, Landroid/view/View;->setMinimumWidth(I)V

    .line 456
    invoke-virtual {v0, p1}, Landroid/view/View;->setMinimumHeight(I)V

    const/high16 p2, 0x41800000    # 16.0f

    .line 457
    invoke-virtual {p0, p2}, Lcom/gmodvr/flat/Skin;->dp(F)I

    move-result p3

    invoke-virtual {p0, p2}, Lcom/gmodvr/flat/Skin;->dp(F)I

    move-result p0

    invoke-virtual {v0, p3, p1, p0, p1}, Landroid/view/View;->setPadding(IIII)V

    return-object v0
.end method

.method private static colors(II)Landroid/content/res/ColorStateList;
    .registers 5

    .line 489
    new-instance v0, Landroid/content/res/ColorStateList;

    sget-object v1, Lcom/gmodvr/flat/Skin;->DISABLED:[I

    sget-object v2, Lcom/gmodvr/flat/Skin;->ANY:[I

    filled-new-array {v1, v2}, [[I

    move-result-object v1

    filled-new-array {p1, p0}, [I

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v0
.end method

.method private static edge(IIII)Landroid/graphics/drawable/LayerDrawable;
    .registers 7

    .line 468
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, p0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    new-instance p0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {p0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    const/4 p1, 0x2

    new-array p1, p1, [Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    aput-object v1, p1, v2

    const/4 v1, 0x1

    aput-object p0, p1, v1

    invoke-direct {v0, p1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    const/4 p0, 0x3

    if-ne p2, p0, :cond_24

    const/16 p0, 0x73

    .line 470
    invoke-virtual {v0, v1, p0}, Landroid/graphics/drawable/LayerDrawable;->setLayerGravity(II)V

    .line 471
    invoke-virtual {v0, v1, p3}, Landroid/graphics/drawable/LayerDrawable;->setLayerWidth(II)V

    goto :goto_2c

    :cond_24
    const/16 p0, 0x57

    .line 473
    invoke-virtual {v0, v1, p0}, Landroid/graphics/drawable/LayerDrawable;->setLayerGravity(II)V

    .line 474
    invoke-virtual {v0, v1, p3}, Landroid/graphics/drawable/LayerDrawable;->setLayerHeight(II)V

    :goto_2c
    return-object v0
.end method

.method public static fitSystemBars(Landroid/view/View;)V
    .registers 2

    .line 89
    new-instance v0, Lcom/gmodvr/flat/Skin$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lcom/gmodvr/flat/Skin$$ExternalSyntheticLambda6;-><init>()V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    return-void
.end method

.method private static synthetic lambda$fitSystemBars$0(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .registers 7

    .line 90
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_2d

    .line 91
    invoke-static {}, Lcom/gmodvr/flat/Skin$$ExternalSyntheticApiModelOutline0;->m()I

    move-result v0

    invoke-static {}, Lcom/gmodvr/flat/Skin$$ExternalSyntheticApiModelOutline1;->m()I

    move-result v1

    or-int/2addr v0, v1

    invoke-static {p1, v0}, Lcom/gmodvr/flat/Skin$$ExternalSyntheticApiModelOutline2;->m(Landroid/view/WindowInsets;I)Landroid/graphics/Insets;

    move-result-object v0

    .line 92
    invoke-static {}, Lcom/gmodvr/flat/Skin$$ExternalSyntheticApiModelOutline3;->m()I

    move-result v1

    invoke-static {p1, v1}, Lcom/gmodvr/flat/Skin$$ExternalSyntheticApiModelOutline2;->m(Landroid/view/WindowInsets;I)Landroid/graphics/Insets;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Insets;->bottom:I

    .line 93
    iget v2, v0, Landroid/graphics/Insets;->left:I

    iget v3, v0, Landroid/graphics/Insets;->top:I

    iget v4, v0, Landroid/graphics/Insets;->right:I

    iget v0, v0, Landroid/graphics/Insets;->bottom:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v2, v3, v4, v0}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_40

    .line 95
    :cond_2d
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v1

    .line 96
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v3

    .line 95
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    :goto_40
    return-object p1
.end method

.method private static synthetic lambda$link$5(Ljava/lang/Runnable;Landroid/view/View;)V
    .registers 2

    .line 296
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private static synthetic lambda$primary$3(Ljava/lang/Runnable;Landroid/view/View;)V
    .registers 2

    .line 275
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private static synthetic lambda$row$2(Ljava/lang/Runnable;Landroid/view/View;)V
    .registers 2

    .line 249
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private synthetic lambda$screen$1(Landroid/view/View;)V
    .registers 2

    .line 129
    iget-object p0, p0, Lcom/gmodvr/flat/Skin;->activity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private static synthetic lambda$secondary$4(Ljava/lang/Runnable;Landroid/view/View;)V
    .registers 2

    .line 284
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private static synthetic lambda$segment$7(Ljava/lang/Runnable;Landroid/view/View;)V
    .registers 2

    .line 328
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private static synthetic lambda$tab$6(Ljava/lang/Runnable;Landroid/view/View;)V
    .registers 2

    .line 311
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public static mark(Landroid/view/View;I)V
    .registers 3

    .line 209
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/LayerDrawable;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    return-void
.end method

.method private static mix(IIF)I
    .registers 7

    .line 493
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-float v0, v0

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 494
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    int-to-float v1, v1

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, p2

    add-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 495
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    int-to-float v2, v2

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    sub-int/2addr p1, p0

    int-to-float p0, p1

    mul-float/2addr p0, p2

    add-float/2addr v2, p0

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result p0

    .line 493
    invoke-static {v0, v1, p0}, Landroid/graphics/Color;->rgb(III)I

    move-result p0

    return p0
.end method

.method public static of(Landroid/app/Activity;Ljava/lang/String;)Lcom/gmodvr/flat/Skin;
    .registers 6

    .line 68
    invoke-static {}, Lcom/gmodvr/flat/LauncherFranchise;->defaultFranchises()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 69
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gmodvr/flat/LauncherFranchise;

    .line 70
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_f
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gmodvr/flat/LauncherFranchise;

    iget-object v3, v2, Lcom/gmodvr/flat/LauncherFranchise;->id:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    move-object v1, v2

    goto :goto_f

    .line 71
    :cond_25
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    iget-object v0, v1, Lcom/gmodvr/flat/LauncherFranchise;->id:Ljava/lang/String;

    const-string v2, "half_life"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 72
    sget v0, Lcom/gmodvr/flat/R$style;->Accent_HalfLife:I

    goto :goto_38

    :cond_36
    sget v0, Lcom/gmodvr/flat/R$style;->Accent_Portal:I

    :goto_38
    const/4 v2, 0x1

    .line 71
    invoke-virtual {p1, v0, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 73
    new-instance p1, Lcom/gmodvr/flat/Skin;

    iget v0, v1, Lcom/gmodvr/flat/LauncherFranchise;->accentColor:I

    invoke-direct {p1, p0, v0}, Lcom/gmodvr/flat/Skin;-><init>(Landroid/app/Activity;I)V

    return-object p1
.end method

.method private outline()Landroid/graphics/drawable/Drawable;
    .registers 10

    .line 462
    new-instance v0, Lcom/gmodvr/flat/Skin$Cut;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0, v1}, Lcom/gmodvr/flat/Skin;->dp(F)I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    const v4, -0xc7bcb4

    const/4 v5, 0x0

    invoke-direct {v0, v3, v4, v2, v5}, Lcom/gmodvr/flat/Skin$Cut;-><init>(IIFF)V

    new-instance v2, Lcom/gmodvr/flat/Skin$Cut;

    invoke-virtual {p0, v1}, Lcom/gmodvr/flat/Skin;->dp(F)I

    move-result v6

    int-to-float v6, v6

    const v7, -0xe4ddd9

    invoke-direct {v2, v7, v4, v6, v5}, Lcom/gmodvr/flat/Skin$Cut;-><init>(IIFF)V

    new-instance v4, Lcom/gmodvr/flat/Skin$Cut;

    iget v6, p0, Lcom/gmodvr/flat/Skin;->accent:I

    .line 463
    invoke-virtual {p0, v1}, Lcom/gmodvr/flat/Skin;->dp(F)I

    move-result v7

    int-to-float v7, v7

    const v8, -0xede8e5

    invoke-direct {v4, v8, v6, v7, v5}, Lcom/gmodvr/flat/Skin$Cut;-><init>(IIFF)V

    new-instance v6, Lcom/gmodvr/flat/Skin$Cut;

    invoke-virtual {p0, v1}, Lcom/gmodvr/flat/Skin;->dp(F)I

    move-result p0

    int-to-float p0, p0

    const v1, -0xdcd4cf

    invoke-direct {v6, v3, v1, p0, v5}, Lcom/gmodvr/flat/Skin$Cut;-><init>(IIFF)V

    .line 462
    invoke-static {v0, v2, v4, v6}, Lcom/gmodvr/flat/Skin;->states(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object p0

    return-object p0
.end method

.method public static scroller(Landroid/content/Context;)Landroid/widget/ScrollView;
    .registers 2

    .line 107
    new-instance v0, Landroid/widget/ScrollView;

    invoke-direct {v0, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    const/4 p0, 0x0

    .line 108
    invoke-virtual {v0, p0}, Landroid/view/View;->setDefaultFocusHighlightEnabled(Z)V

    return-object v0
.end method

.method private static states(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/StateListDrawable;
    .registers 6

    .line 480
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    if-eqz p3, :cond_c

    .line 481
    sget-object v1, Lcom/gmodvr/flat/Skin;->DISABLED:[I

    invoke-virtual {v0, v1, p3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 482
    :cond_c
    sget-object p3, Lcom/gmodvr/flat/Skin;->PRESSED:[I

    invoke-virtual {v0, p3, p1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 483
    sget-object p1, Lcom/gmodvr/flat/Skin;->FOCUSED:[I

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 484
    sget-object p1, Lcom/gmodvr/flat/Skin;->ANY:[I

    invoke-virtual {v0, p1, p0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    return-object v0
.end method


# virtual methods
.method public below(F)Landroid/widget/LinearLayout$LayoutParams;
    .registers 5

    .line 82
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 83
    invoke-virtual {p0, p1}, Lcom/gmodvr/flat/Skin;->dp(F)I

    move-result p0

    iput p0, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    return-object v0
.end method

.method public check(Ljava/lang/String;)Landroid/widget/CheckBox;
    .registers 7

    .line 360
    new-instance v0, Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/gmodvr/flat/Skin;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    .line 361
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 p1, 0x41600000    # 14.0f

    .line 362
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    const p1, -0x191513

    const v1, -0xa49991

    .line 363
    invoke-static {p1, v1}, Lcom/gmodvr/flat/Skin;->colors(II)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 364
    new-instance p1, Landroid/content/res/ColorStateList;

    sget-object v2, Lcom/gmodvr/flat/Skin;->DISABLED:[I

    sget-object v3, Lcom/gmodvr/flat/Skin;->CHECKED:[I

    sget-object v4, Lcom/gmodvr/flat/Skin;->ANY:[I

    filled-new-array {v2, v3, v4}, [[I

    move-result-object v2

    iget p0, p0, Lcom/gmodvr/flat/Skin;->accent:I

    const v3, -0x72665d

    filled-new-array {v1, p0, v3}, [I

    move-result-object p0

    invoke-direct {p1, v2, p0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    return-object v0
.end method

.method public dp(F)I
    .registers 3

    .line 77
    iget-object p0, p0, Lcom/gmodvr/flat/Skin;->activity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {v0, p1, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method public hairline(F)Landroid/widget/LinearLayout$LayoutParams;
    .registers 5

    .line 179
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0, v1}, Lcom/gmodvr/flat/Skin;->dp(F)I

    move-result v1

    const/4 v2, -0x1

    invoke-direct {v0, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 180
    invoke-virtual {p0, p1}, Lcom/gmodvr/flat/Skin;->dp(F)I

    move-result p0

    iput p0, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    return-object v0
.end method

.method public heading(Ljava/lang/CharSequence;F)Landroid/widget/TextView;
    .registers 4

    const v0, -0x191513

    .line 154
    invoke-virtual {p0, p1, p2, v0}, Lcom/gmodvr/flat/Skin;->text(Ljava/lang/CharSequence;FI)Landroid/widget/TextView;

    move-result-object p0

    .line 155
    sget-object p1, Lcom/gmodvr/flat/Skin;->HEAD:Landroid/graphics/Typeface;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/4 p1, 0x1

    .line 156
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setAllCaps(Z)V

    const p1, 0x3ca3d70a    # 0.02f

    .line 157
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setLetterSpacing(F)V

    return-object p0
.end method

.method public input(Landroid/widget/EditText;Ljava/lang/String;I)Landroid/widget/EditText;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/widget/EditText;",
            ">(TT;",
            "Ljava/lang/String;",
            "I)TT;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 374
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 375
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setInputType(I)V

    .line 376
    sget-object p3, Lcom/gmodvr/flat/Skin;->MONO:Landroid/graphics/Typeface;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 377
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    const/high16 p2, 0x41600000    # 14.0f

    .line 378
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextSize(F)V

    const p2, -0x191513

    const p3, -0xa49991

    .line 379
    invoke-static {p2, p3}, Lcom/gmodvr/flat/Skin;->colors(II)Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 380
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setHintTextColor(I)V

    .line 381
    new-instance p2, Lcom/gmodvr/flat/Skin$Cut;

    const/high16 p3, 0x3f800000    # 1.0f

    invoke-virtual {p0, p3}, Lcom/gmodvr/flat/Skin;->dp(F)I

    move-result v0

    int-to-float v0, v0

    const v1, -0xede8e5

    const v2, -0xc7bcb4

    const/4 v3, 0x0

    invoke-direct {p2, v1, v2, v0, v3}, Lcom/gmodvr/flat/Skin$Cut;-><init>(IIFF)V

    .line 382
    new-instance v0, Lcom/gmodvr/flat/Skin$Cut;

    iget v2, p0, Lcom/gmodvr/flat/Skin;->accent:I

    invoke-virtual {p0, p3}, Lcom/gmodvr/flat/Skin;->dp(F)I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/gmodvr/flat/Skin$Cut;-><init>(IIFF)V

    new-instance v1, Lcom/gmodvr/flat/Skin$Cut;

    invoke-virtual {p0, p3}, Lcom/gmodvr/flat/Skin;->dp(F)I

    move-result p3

    int-to-float p3, p3

    const v2, -0xf4f1f0

    const v4, -0xdcd4cf

    invoke-direct {v1, v2, v4, p3, v3}, Lcom/gmodvr/flat/Skin$Cut;-><init>(IIFF)V

    invoke-static {p2, p2, v0, v1}, Lcom/gmodvr/flat/Skin;->states(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/high16 p2, 0x41400000    # 12.0f

    .line 383
    invoke-virtual {p0, p2}, Lcom/gmodvr/flat/Skin;->dp(F)I

    move-result p3

    const/high16 v0, 0x41200000    # 10.0f

    invoke-virtual {p0, v0}, Lcom/gmodvr/flat/Skin;->dp(F)I

    move-result v1

    invoke-virtual {p0, p2}, Lcom/gmodvr/flat/Skin;->dp(F)I

    move-result p2

    invoke-virtual {p0, v0}, Lcom/gmodvr/flat/Skin;->dp(F)I

    move-result v0

    invoke-virtual {p1, p3, v1, p2, v0}, Landroid/view/View;->setPadding(IIII)V

    const/high16 p2, 0x42300000    # 44.0f

    .line 384
    invoke-virtual {p0, p2}, Lcom/gmodvr/flat/Skin;->dp(F)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 385
    new-instance p2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 386
    iget p3, p0, Lcom/gmodvr/flat/Skin;->accent:I

    invoke-virtual {p2, p3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/high16 p3, 0x40000000    # 2.0f

    .line 387
    invoke-virtual {p0, p3}, Lcom/gmodvr/flat/Skin;->dp(F)I

    move-result p0

    const/4 p3, 0x0

    invoke-virtual {p2, p0, p3}, Landroid/graphics/drawable/GradientDrawable;->setSize(II)V

    .line 388
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextCursorDrawable(Landroid/graphics/drawable/Drawable;)V

    return-object p1
.end method

.method public input(Ljava/lang/String;I)Landroid/widget/EditText;
    .registers 5

    .line 370
    new-instance v0, Landroid/widget/EditText;

    iget-object v1, p0, Lcom/gmodvr/flat/Skin;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0, p1, p2}, Lcom/gmodvr/flat/Skin;->input(Landroid/widget/EditText;Ljava/lang/String;I)Landroid/widget/EditText;

    move-result-object p0

    return-object p0
.end method

.method public label(Ljava/lang/CharSequence;I)Landroid/widget/TextView;
    .registers 4

    const/high16 v0, 0x41280000    # 10.5f

    .line 163
    invoke-virtual {p0, p1, v0, p2}, Lcom/gmodvr/flat/Skin;->text(Ljava/lang/CharSequence;FI)Landroid/widget/TextView;

    move-result-object p0

    .line 164
    sget-object p1, Lcom/gmodvr/flat/Skin;->MONO:Landroid/graphics/Typeface;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/4 p1, 0x1

    .line 165
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setAllCaps(Z)V

    const p1, 0x3df5c28f    # 0.12f

    .line 166
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setLetterSpacing(F)V

    return-object p0
.end method

.method public link(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/widget/TextView;
    .registers 8

    const/4 v0, 0x0

    .line 290
    invoke-virtual {p0, p1, v0}, Lcom/gmodvr/flat/Skin;->label(Ljava/lang/CharSequence;I)Landroid/widget/TextView;

    move-result-object p1

    const v1, -0x72665d

    const v2, -0xa49991

    .line 291
    invoke-static {v1, v2}, Lcom/gmodvr/flat/Skin;->colors(II)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    const/high16 v1, 0x41000000    # 8.0f

    .line 292
    invoke-virtual {p0, v1}, Lcom/gmodvr/flat/Skin;->dp(F)I

    move-result v2

    const/high16 v3, 0x41200000    # 10.0f

    invoke-virtual {p0, v3}, Lcom/gmodvr/flat/Skin;->dp(F)I

    move-result v4

    invoke-virtual {p0, v1}, Lcom/gmodvr/flat/Skin;->dp(F)I

    move-result v1

    invoke-virtual {p0, v3}, Lcom/gmodvr/flat/Skin;->dp(F)I

    move-result p0

    invoke-virtual {p1, v2, v4, v1, p0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 293
    new-instance p0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {p0, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const v1, -0xe4ddd9

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const v2, -0xede8e5

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/gmodvr/flat/Skin;->states(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 p0, 0x1

    .line 294
    invoke-virtual {p1, p0}, Landroid/view/View;->setFocusable(Z)V

    .line 295
    invoke-virtual {p1, p0}, Landroid/view/View;->setClickable(Z)V

    .line 296
    new-instance p0, Lcom/gmodvr/flat/Skin$$ExternalSyntheticLambda7;

    invoke-direct {p0, p2}, Lcom/gmodvr/flat/Skin$$ExternalSyntheticLambda7;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public panel(I)Landroid/widget/LinearLayout;
    .registers 6

    .line 201
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/gmodvr/flat/Skin;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 202
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 v1, 0x40000000    # 2.0f

    .line 203
    invoke-virtual {p0, v1}, Lcom/gmodvr/flat/Skin;->dp(F)I

    move-result v1

    const v2, -0xede8e5

    const/4 v3, 0x3

    invoke-static {v2, p1, v3, v1}, Lcom/gmodvr/flat/Skin;->edge(IIII)Landroid/graphics/drawable/LayerDrawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/high16 p1, 0x41600000    # 14.0f

    .line 204
    invoke-virtual {p0, p1}, Lcom/gmodvr/flat/Skin;->dp(F)I

    move-result v1

    const/high16 v2, 0x41400000    # 12.0f

    invoke-virtual {p0, v2}, Lcom/gmodvr/flat/Skin;->dp(F)I

    move-result v3

    invoke-virtual {p0, p1}, Lcom/gmodvr/flat/Skin;->dp(F)I

    move-result p1

    invoke-virtual {p0, v2}, Lcom/gmodvr/flat/Skin;->dp(F)I

    move-result p0

    invoke-virtual {v0, v1, v3, p1, p0}, Landroid/view/View;->setPadding(IIII)V

    return-object v0
.end method

.method public primary(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/widget/Button;
    .registers 12

    const v0, -0xa49991

    const v1, -0xf4f1f0

    .line 270
    invoke-static {v1, v0}, Lcom/gmodvr/flat/Skin;->colors(II)Landroid/content/res/ColorStateList;

    move-result-object v0

    const/high16 v2, 0x41700000    # 15.0f

    invoke-direct {p0, p1, v2, v0}, Lcom/gmodvr/flat/Skin;->button(Ljava/lang/String;FLandroid/content/res/ColorStateList;)Landroid/widget/Button;

    move-result-object p1

    const/high16 v0, 0x41400000    # 12.0f

    .line 271
    invoke-virtual {p0, v0}, Lcom/gmodvr/flat/Skin;->dp(F)I

    move-result v0

    int-to-float v0, v0

    .line 272
    new-instance v2, Lcom/gmodvr/flat/Skin$Cut;

    iget v3, p0, Lcom/gmodvr/flat/Skin;->accent:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5, v0}, Lcom/gmodvr/flat/Skin$Cut;-><init>(IIFF)V

    new-instance v3, Lcom/gmodvr/flat/Skin$Cut;

    iget v6, p0, Lcom/gmodvr/flat/Skin;->accent:I

    const/high16 v7, 0x3e800000    # 0.25f

    invoke-static {v6, v1, v7}, Lcom/gmodvr/flat/Skin;->mix(IIF)I

    move-result v1

    invoke-direct {v3, v1, v4, v5, v0}, Lcom/gmodvr/flat/Skin$Cut;-><init>(IIFF)V

    new-instance v1, Lcom/gmodvr/flat/Skin$Cut;

    iget v6, p0, Lcom/gmodvr/flat/Skin;->accent:I

    const/high16 v7, 0x40000000    # 2.0f

    .line 273
    invoke-virtual {p0, v7}, Lcom/gmodvr/flat/Skin;->dp(F)I

    move-result v7

    int-to-float v7, v7

    const v8, -0x191513

    invoke-direct {v1, v6, v8, v7, v0}, Lcom/gmodvr/flat/Skin$Cut;-><init>(IIFF)V

    new-instance v6, Lcom/gmodvr/flat/Skin$Cut;

    const v7, -0xe4ddd9

    invoke-direct {v6, v7, v4, v5, v0}, Lcom/gmodvr/flat/Skin$Cut;-><init>(IIFF)V

    .line 272
    invoke-static {v2, v3, v1, v6}, Lcom/gmodvr/flat/Skin;->states(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/high16 v0, 0x42500000    # 52.0f

    .line 274
    invoke-virtual {p0, v0}, Lcom/gmodvr/flat/Skin;->dp(F)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 275
    new-instance p0, Lcom/gmodvr/flat/Skin$$ExternalSyntheticLambda9;

    invoke-direct {p0, p2}, Lcom/gmodvr/flat/Skin$$ExternalSyntheticLambda9;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public progress()Landroid/widget/ProgressBar;
    .registers 8

    .line 433
    new-instance v0, Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/gmodvr/flat/Skin;->activity:Landroid/app/Activity;

    const/4 v2, 0x0

    const v3, 0x1010078

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 434
    new-instance v1, Landroid/graphics/drawable/LayerDrawable;

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const v3, -0xdcd4cf

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    new-instance v3, Landroid/graphics/drawable/ClipDrawable;

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    iget v5, p0, Lcom/gmodvr/flat/Skin;->accent:I

    invoke-direct {v4, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    const/4 v5, 0x3

    const/4 v6, 0x1

    invoke-direct {v3, v4, v5, v6}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    const/4 v4, 0x2

    new-array v4, v4, [Landroid/graphics/drawable/Drawable;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    aput-object v3, v4, v6

    invoke-direct {v1, v4}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    const/high16 v2, 0x1020000

    .line 436
    invoke-virtual {v1, v5, v2}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    const v2, 0x102000d

    .line 437
    invoke-virtual {v1, v6, v2}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    .line 438
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 439
    iget p0, p0, Lcom/gmodvr/flat/Skin;->accent:I

    invoke-static {p0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/ProgressBar;->setIndeterminateTintList(Landroid/content/res/ColorStateList;)V

    return-object v0
.end method

.method public row(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Ljava/lang/Runnable;)Landroid/widget/LinearLayout;
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    const/4 v4, 0x1

    .line 217
    new-instance v5, Landroid/widget/LinearLayout;

    iget-object v6, v0, Lcom/gmodvr/flat/Skin;->activity:Landroid/app/Activity;

    invoke-direct {v5, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/16 v6, 0x10

    .line 218
    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/high16 v6, 0x42480000    # 50.0f

    .line 219
    invoke-virtual {v0, v6}, Lcom/gmodvr/flat/Skin;->dp(F)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setMinimumHeight(I)V

    const/high16 v6, 0x41600000    # 14.0f

    .line 220
    invoke-virtual {v0, v6}, Lcom/gmodvr/flat/Skin;->dp(F)I

    move-result v6

    const/high16 v7, 0x41200000    # 10.0f

    invoke-virtual {v0, v7}, Lcom/gmodvr/flat/Skin;->dp(F)I

    move-result v8

    const/high16 v9, 0x41400000    # 12.0f

    invoke-virtual {v0, v9}, Lcom/gmodvr/flat/Skin;->dp(F)I

    move-result v10

    invoke-virtual {v0, v7}, Lcom/gmodvr/flat/Skin;->dp(F)I

    move-result v7

    invoke-virtual {v5, v6, v8, v10, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 221
    new-instance v6, Landroid/graphics/drawable/LayerDrawable;

    const/high16 v7, 0x40000000    # 2.0f

    const/4 v8, 0x0

    .line 222
    new-instance v10, Landroid/graphics/drawable/ColorDrawable;

    if-nez v3, :cond_44

    invoke-direct {v10, v8}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    goto :goto_62

    :cond_44
    invoke-direct {v10, v8}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    new-instance v11, Landroid/graphics/drawable/ColorDrawable;

    const v12, -0xe4ddd9

    invoke-direct {v11, v12}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iget v12, v0, Lcom/gmodvr/flat/Skin;->accent:I

    const/4 v13, 0x3

    .line 223
    invoke-virtual {v0, v7}, Lcom/gmodvr/flat/Skin;->dp(F)I

    move-result v14

    const v15, -0xede8e5

    invoke-static {v15, v12, v13, v14}, Lcom/gmodvr/flat/Skin;->edge(IIII)Landroid/graphics/drawable/LayerDrawable;

    move-result-object v12

    const/4 v13, 0x0

    .line 222
    invoke-static {v10, v11, v12, v13}, Lcom/gmodvr/flat/Skin;->states(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v10

    :goto_62
    new-instance v11, Landroid/graphics/drawable/ColorDrawable;

    const v12, -0xdcd4cf

    invoke-direct {v11, v12}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    const/4 v12, 0x2

    new-array v12, v12, [Landroid/graphics/drawable/Drawable;

    aput-object v10, v12, v8

    aput-object v11, v12, v4

    invoke-direct {v6, v12}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    const/16 v10, 0x57

    .line 225
    invoke-virtual {v6, v4, v10}, Landroid/graphics/drawable/LayerDrawable;->setLayerGravity(II)V

    const/high16 v10, 0x3f800000    # 1.0f

    .line 226
    invoke-virtual {v0, v10}, Lcom/gmodvr/flat/Skin;->dp(F)I

    move-result v11

    invoke-virtual {v6, v4, v11}, Landroid/graphics/drawable/LayerDrawable;->setLayerHeight(II)V

    .line 227
    invoke-virtual {v5, v6}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 229
    new-instance v6, Landroid/widget/LinearLayout;

    iget-object v11, v0, Lcom/gmodvr/flat/Skin;->activity:Landroid/app/Activity;

    invoke-direct {v6, v11}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 230
    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 v11, 0x41700000    # 15.0f

    const v12, -0x191513

    move-object/from16 v13, p1

    .line 231
    invoke-virtual {v0, v13, v11, v12}, Lcom/gmodvr/flat/Skin;->text(Ljava/lang/CharSequence;FI)Landroid/widget/TextView;

    move-result-object v11

    .line 232
    sget-object v12, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 233
    invoke-virtual {v11, v4}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 234
    invoke-virtual {v6, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const v11, -0x72665d

    if-eqz v1, :cond_ba

    const/high16 v12, 0x41480000    # 12.5f

    .line 236
    invoke-virtual {v0, v1, v12, v11}, Lcom/gmodvr/flat/Skin;->text(Ljava/lang/CharSequence;FI)Landroid/widget/TextView;

    move-result-object v1

    .line 237
    invoke-virtual {v0, v7}, Lcom/gmodvr/flat/Skin;->dp(F)I

    move-result v12

    invoke-virtual {v1, v8, v12, v8, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 238
    invoke-virtual {v6, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 240
    :cond_ba
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v12, -0x2

    invoke-direct {v1, v8, v12, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v5, v6, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz v2, :cond_d3

    .line 242
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v12, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 243
    invoke-virtual {v0, v9}, Lcom/gmodvr/flat/Skin;->dp(F)I

    move-result v6

    iput v6, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 244
    invoke-virtual {v5, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_d3
    if-eqz v3, :cond_f9

    .line 247
    invoke-virtual {v5, v4}, Landroid/view/View;->setFocusable(Z)V

    .line 248
    invoke-virtual {v5, v4}, Landroid/view/View;->setClickable(Z)V

    .line 249
    new-instance v1, Lcom/gmodvr/flat/Skin$$ExternalSyntheticLambda4;

    invoke-direct {v1, v3}, Lcom/gmodvr/flat/Skin$$ExternalSyntheticLambda4;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v5, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 250
    const-string v1, "\u203a"

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-virtual {v0, v1, v2, v11}, Lcom/gmodvr/flat/Skin;->text(Ljava/lang/CharSequence;FI)Landroid/widget/TextView;

    move-result-object v1

    .line 251
    invoke-virtual {v0, v9}, Lcom/gmodvr/flat/Skin;->dp(F)I

    move-result v2

    invoke-virtual {v0, v7}, Lcom/gmodvr/flat/Skin;->dp(F)I

    move-result v0

    invoke-virtual {v1, v2, v8, v8, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 252
    invoke-virtual {v5, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_f9
    return-object v5
.end method

.method public rule()Landroid/view/View;
    .registers 2

    .line 173
    new-instance v0, Landroid/view/View;

    iget-object p0, p0, Lcom/gmodvr/flat/Skin;->activity:Landroid/app/Activity;

    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const p0, -0xdcd4cf

    .line 174
    invoke-virtual {v0, p0}, Landroid/view/View;->setBackgroundColor(I)V

    return-object v0
.end method

.method public screen(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;
    .registers 11

    .line 114
    iget-object v0, p0, Lcom/gmodvr/flat/Skin;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/gmodvr/flat/Skin;->scroller(Landroid/content/Context;)Landroid/widget/ScrollView;

    move-result-object v0

    const/4 v1, 0x1

    .line 115
    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    const v2, -0xf4f1f0

    .line 116
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 117
    invoke-static {v0}, Lcom/gmodvr/flat/Skin;->fitSystemBars(Landroid/view/View;)V

    .line 118
    new-instance v2, Lcom/gmodvr/flat/Skin$Column;

    iget-object v3, p0, Lcom/gmodvr/flat/Skin;->activity:Landroid/app/Activity;

    const/high16 v4, 0x442a0000    # 680.0f

    invoke-virtual {p0, v4}, Lcom/gmodvr/flat/Skin;->dp(F)I

    move-result v4

    invoke-direct {v2, v3, v4}, Lcom/gmodvr/flat/Skin$Column;-><init>(Landroid/content/Context;I)V

    const/high16 v3, 0x41a00000    # 20.0f

    .line 119
    invoke-virtual {p0, v3}, Lcom/gmodvr/flat/Skin;->dp(F)I

    move-result v4

    const/high16 v5, 0x41800000    # 16.0f

    invoke-virtual {p0, v5}, Lcom/gmodvr/flat/Skin;->dp(F)I

    move-result v6

    invoke-virtual {p0, v3}, Lcom/gmodvr/flat/Skin;->dp(F)I

    move-result v3

    const/high16 v7, 0x42000000    # 32.0f

    invoke-virtual {p0, v7}, Lcom/gmodvr/flat/Skin;->dp(F)I

    move-result v7

    invoke-virtual {v2, v4, v6, v3, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 120
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v6, -0x2

    invoke-direct {v3, v4, v6, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v2, v3}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 121
    iget-object v1, p0, Lcom/gmodvr/flat/Skin;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 123
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/gmodvr/flat/Skin;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/16 v1, 0x10

    .line 124
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    const v1, -0x191513

    const v3, -0xa49991

    .line 125
    invoke-static {v1, v3}, Lcom/gmodvr/flat/Skin;->colors(II)Landroid/content/res/ColorStateList;

    move-result-object v1

    const-string v3, "\u2190"

    const/high16 v4, 0x41900000    # 18.0f

    invoke-direct {p0, v3, v4, v1}, Lcom/gmodvr/flat/Skin;->button(Ljava/lang/String;FLandroid/content/res/ColorStateList;)Landroid/widget/Button;

    move-result-object v1

    const/4 v3, 0x0

    .line 126
    invoke-virtual {v1, v3, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 127
    const-string v4, "Back"

    invoke-virtual {v1, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 128
    invoke-direct {p0}, Lcom/gmodvr/flat/Skin;->outline()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 129
    new-instance v4, Lcom/gmodvr/flat/Skin$$ExternalSyntheticLambda8;

    invoke-direct {v4, p0}, Lcom/gmodvr/flat/Skin$$ExternalSyntheticLambda8;-><init>(Lcom/gmodvr/flat/Skin;)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v6, 0x42200000    # 40.0f

    invoke-virtual {p0, v6}, Lcom/gmodvr/flat/Skin;->dp(F)I

    move-result v7

    invoke-virtual {p0, v6}, Lcom/gmodvr/flat/Skin;->dp(F)I

    move-result v6

    invoke-direct {v4, v7, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v1, 0x41c00000    # 24.0f

    .line 131
    invoke-virtual {p0, p1, v1}, Lcom/gmodvr/flat/Skin;->heading(Ljava/lang/CharSequence;F)Landroid/widget/TextView;

    move-result-object p1

    const/high16 v1, 0x41600000    # 14.0f

    .line 132
    invoke-virtual {p0, v1}, Lcom/gmodvr/flat/Skin;->dp(F)I

    move-result v1

    invoke-virtual {p1, v1, v3, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 133
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 134
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const/high16 p1, 0x41580000    # 13.5f

    const v0, -0x72665d

    .line 136
    invoke-virtual {p0, p2, p1, v0}, Lcom/gmodvr/flat/Skin;->text(Ljava/lang/CharSequence;FI)Landroid/widget/TextView;

    move-result-object p1

    const/high16 p2, 0x41400000    # 12.0f

    invoke-virtual {p0, p2}, Lcom/gmodvr/flat/Skin;->below(F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {v2, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 137
    invoke-virtual {p0}, Lcom/gmodvr/flat/Skin;->rule()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, v5}, Lcom/gmodvr/flat/Skin;->hairline(F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p0

    invoke-virtual {v2, p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v2
.end method

.method public secondary(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/widget/Button;
    .registers 5

    const v0, -0x191513

    const v1, -0xa49991

    .line 281
    invoke-static {v0, v1}, Lcom/gmodvr/flat/Skin;->colors(II)Landroid/content/res/ColorStateList;

    move-result-object v0

    const/high16 v1, 0x41500000    # 13.0f

    invoke-direct {p0, p1, v1, v0}, Lcom/gmodvr/flat/Skin;->button(Ljava/lang/String;FLandroid/content/res/ColorStateList;)Landroid/widget/Button;

    move-result-object p1

    .line 282
    invoke-direct {p0}, Lcom/gmodvr/flat/Skin;->outline()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/high16 v0, 0x42300000    # 44.0f

    .line 283
    invoke-virtual {p0, v0}, Lcom/gmodvr/flat/Skin;->dp(F)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 284
    new-instance p0, Lcom/gmodvr/flat/Skin$$ExternalSyntheticLambda11;

    invoke-direct {p0, p2}, Lcom/gmodvr/flat/Skin$$ExternalSyntheticLambda11;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public section(Ljava/lang/String;)Landroid/view/View;
    .registers 8

    .line 186
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/gmodvr/flat/Skin;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/16 v1, 0x10

    .line 187
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/high16 v1, 0x40800000    # 4.0f

    .line 188
    invoke-virtual {p0, v1}, Lcom/gmodvr/flat/Skin;->dp(F)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v2, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 189
    new-instance v1, Landroid/view/View;

    iget-object v3, p0, Lcom/gmodvr/flat/Skin;->activity:Landroid/app/Activity;

    invoke-direct {v1, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 190
    iget v3, p0, Lcom/gmodvr/flat/Skin;->accent:I

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 191
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x40c00000    # 6.0f

    invoke-virtual {p0, v4}, Lcom/gmodvr/flat/Skin;->dp(F)I

    move-result v5

    invoke-virtual {p0, v4}, Lcom/gmodvr/flat/Skin;->dp(F)I

    move-result v4

    invoke-direct {v3, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const v1, -0x72665d

    .line 192
    invoke-virtual {p0, p1, v1}, Lcom/gmodvr/flat/Skin;->label(Ljava/lang/CharSequence;I)Landroid/widget/TextView;

    move-result-object p1

    const/high16 v1, 0x41000000    # 8.0f

    .line 193
    invoke-virtual {p0, v1}, Lcom/gmodvr/flat/Skin;->dp(F)I

    move-result v1

    const/high16 v3, 0x41200000    # 10.0f

    invoke-virtual {p0, v3}, Lcom/gmodvr/flat/Skin;->dp(F)I

    move-result v3

    invoke-virtual {p1, v1, v2, v3, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 194
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 195
    invoke-virtual {p0}, Lcom/gmodvr/flat/Skin;->rule()Landroid/view/View;

    move-result-object p1

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {p0, v3}, Lcom/gmodvr/flat/Skin;->dp(F)I

    move-result p0

    invoke-direct {v1, v2, p0, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public segment(Ljava/lang/String;ZLjava/lang/Runnable;)Landroid/widget/TextView;
    .registers 12

    const/high16 v0, 0x41400000    # 12.0f

    .line 317
    invoke-virtual {p0, p1, v0}, Lcom/gmodvr/flat/Skin;->heading(Ljava/lang/CharSequence;F)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p2, :cond_c

    const v0, -0xf4f1f0

    goto :goto_f

    :cond_c
    const v0, -0x72665d

    .line 318
    :goto_f
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v0, 0x11

    .line 319
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v0, 0x1

    .line 320
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    const/high16 v1, 0x40c00000    # 6.0f

    .line 321
    invoke-virtual {p0, v1}, Lcom/gmodvr/flat/Skin;->dp(F)I

    move-result v2

    invoke-virtual {p0, v1}, Lcom/gmodvr/flat/Skin;->dp(F)I

    move-result v1

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3, v1, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    const/16 v1, 0xc

    const/4 v2, 0x2

    const/16 v4, 0x9

    .line 322
    invoke-virtual {p1, v4, v1, v0, v2}, Landroid/widget/TextView;->setAutoSizeTextTypeUniformWithConfiguration(IIII)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p2, :cond_55

    .line 324
    new-instance p2, Lcom/gmodvr/flat/Skin$Cut;

    const v4, -0x191513

    invoke-direct {p2, v4, v3, v2, v2}, Lcom/gmodvr/flat/Skin$Cut;-><init>(IIFF)V

    new-instance v5, Lcom/gmodvr/flat/Skin$Cut;

    invoke-direct {v5, v4, v3, v2, v2}, Lcom/gmodvr/flat/Skin$Cut;-><init>(IIFF)V

    new-instance v3, Lcom/gmodvr/flat/Skin$Cut;

    iget v6, p0, Lcom/gmodvr/flat/Skin;->accent:I

    const/high16 v7, 0x40000000    # 2.0f

    invoke-virtual {p0, v7}, Lcom/gmodvr/flat/Skin;->dp(F)I

    move-result p0

    int-to-float p0, p0

    invoke-direct {v3, v4, v6, p0, v2}, Lcom/gmodvr/flat/Skin$Cut;-><init>(IIFF)V

    invoke-static {p2, v5, v3, v1}, Lcom/gmodvr/flat/Skin;->states(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object p0

    goto :goto_84

    .line 325
    :cond_55
    new-instance p2, Lcom/gmodvr/flat/Skin$Cut;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {p0, v4}, Lcom/gmodvr/flat/Skin;->dp(F)I

    move-result v5

    int-to-float v5, v5

    const v6, -0xc7bcb4

    invoke-direct {p2, v3, v6, v5, v2}, Lcom/gmodvr/flat/Skin$Cut;-><init>(IIFF)V

    new-instance v3, Lcom/gmodvr/flat/Skin$Cut;

    invoke-virtual {p0, v4}, Lcom/gmodvr/flat/Skin;->dp(F)I

    move-result v5

    int-to-float v5, v5

    const v7, -0xe4ddd9

    invoke-direct {v3, v7, v6, v5, v2}, Lcom/gmodvr/flat/Skin$Cut;-><init>(IIFF)V

    new-instance v5, Lcom/gmodvr/flat/Skin$Cut;

    iget v6, p0, Lcom/gmodvr/flat/Skin;->accent:I

    invoke-virtual {p0, v4}, Lcom/gmodvr/flat/Skin;->dp(F)I

    move-result p0

    int-to-float p0, p0

    const v4, -0xede8e5

    invoke-direct {v5, v4, v6, p0, v2}, Lcom/gmodvr/flat/Skin$Cut;-><init>(IIFF)V

    invoke-static {p2, v3, v5, v1}, Lcom/gmodvr/flat/Skin;->states(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object p0

    .line 323
    :goto_84
    invoke-virtual {p1, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 326
    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 327
    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 328
    new-instance p0, Lcom/gmodvr/flat/Skin$$ExternalSyntheticLambda10;

    invoke-direct {p0, p3}, Lcom/gmodvr/flat/Skin$$ExternalSyntheticLambda10;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public spinner(Ljava/util/List;)Landroid/widget/Spinner;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/widget/Spinner;"
        }
    .end annotation

    .line 394
    new-instance v0, Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/gmodvr/flat/Skin;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;)V

    .line 395
    new-instance v1, Lcom/gmodvr/flat/Skin$1;

    iget-object v2, p0, Lcom/gmodvr/flat/Skin;->activity:Landroid/app/Activity;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3, p1}, Lcom/gmodvr/flat/Skin$1;-><init>(Lcom/gmodvr/flat/Skin;Landroid/content/Context;ILjava/util/List;)V

    .line 412
    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 414
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    const/4 v1, 0x0

    .line 415
    invoke-virtual {p1, v1, v1}, Landroid/graphics/Path;->moveTo(FF)V

    const/high16 v2, 0x41200000    # 10.0f

    .line 416
    invoke-virtual {p1, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    const/high16 v4, 0x40a00000    # 5.0f

    const/high16 v5, 0x40c00000    # 6.0f

    .line 417
    invoke-virtual {p1, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 418
    invoke-virtual {p1}, Landroid/graphics/Path;->close()V

    .line 419
    new-instance v6, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v7, Landroid/graphics/drawable/shapes/PathShape;

    invoke-direct {v7, p1, v2, v5}, Landroid/graphics/drawable/shapes/PathShape;-><init>(Landroid/graphics/Path;FF)V

    invoke-direct {v6, v7}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 420
    invoke-virtual {v6}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p1

    const v2, -0x72665d

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 421
    new-instance p1, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {p0}, Lcom/gmodvr/flat/Skin;->outline()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v5, 0x2

    new-array v5, v5, [Landroid/graphics/drawable/Drawable;

    aput-object v2, v5, v3

    const/4 v2, 0x1

    aput-object v6, v5, v2

    invoke-direct {p1, v5}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    const/16 v3, 0x15

    .line 422
    invoke-virtual {p1, v2, v3}, Landroid/graphics/drawable/LayerDrawable;->setLayerGravity(II)V

    const/high16 v3, 0x41100000    # 9.0f

    .line 423
    invoke-virtual {p0, v3}, Lcom/gmodvr/flat/Skin;->dp(F)I

    move-result v3

    invoke-virtual {p0, v4}, Lcom/gmodvr/flat/Skin;->dp(F)I

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/graphics/drawable/LayerDrawable;->setLayerSize(III)V

    const/high16 v3, 0x41600000    # 14.0f

    .line 424
    invoke-virtual {p0, v3}, Lcom/gmodvr/flat/Skin;->dp(F)I

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/drawable/LayerDrawable;->setLayerInsetRight(II)V

    .line 425
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 426
    new-instance p1, Lcom/gmodvr/flat/Skin$Cut;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p0, v2}, Lcom/gmodvr/flat/Skin;->dp(F)I

    move-result v2

    int-to-float v2, v2

    const v3, -0xe4ddd9

    const v4, -0xc7bcb4

    invoke-direct {p1, v3, v4, v2, v1}, Lcom/gmodvr/flat/Skin$Cut;-><init>(IIFF)V

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setPopupBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/high16 p1, 0x42300000    # 44.0f

    .line 427
    invoke-virtual {p0, p1}, Lcom/gmodvr/flat/Skin;->dp(F)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setMinimumHeight(I)V

    return-object v0
.end method

.method public tab(Ljava/lang/String;ZLjava/lang/Runnable;)Landroid/widget/TextView;
    .registers 10

    const/high16 v0, 0x41700000    # 15.0f

    .line 302
    invoke-virtual {p0, p1, v0}, Lcom/gmodvr/flat/Skin;->heading(Ljava/lang/CharSequence;F)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p2, :cond_c

    const v0, -0x191513

    goto :goto_f

    :cond_c
    const v0, -0xa49991

    .line 303
    :goto_f
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v0, 0x11

    .line 304
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v0, 0x41600000    # 14.0f

    .line 305
    invoke-virtual {p0, v0}, Lcom/gmodvr/flat/Skin;->dp(F)I

    move-result v1

    invoke-virtual {p0, v0}, Lcom/gmodvr/flat/Skin;->dp(F)I

    move-result v0

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    const/high16 v0, 0x40000000    # 2.0f

    const/16 v1, 0x50

    if-eqz p2, :cond_36

    .line 306
    iget v3, p0, Lcom/gmodvr/flat/Skin;->accent:I

    invoke-virtual {p0, v0}, Lcom/gmodvr/flat/Skin;->dp(F)I

    move-result v4

    invoke-static {v2, v3, v1, v4}, Lcom/gmodvr/flat/Skin;->edge(IIII)Landroid/graphics/drawable/LayerDrawable;

    move-result-object v3

    goto :goto_3b

    :cond_36
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    :goto_3b
    if-eqz p2, :cond_3f

    .line 307
    iget v2, p0, Lcom/gmodvr/flat/Skin;->accent:I

    :cond_3f
    invoke-virtual {p0, v0}, Lcom/gmodvr/flat/Skin;->dp(F)I

    move-result v4

    const v5, -0xe4ddd9

    invoke-static {v5, v2, v1, v4}, Lcom/gmodvr/flat/Skin;->edge(IIII)Landroid/graphics/drawable/LayerDrawable;

    move-result-object v2

    if-eqz p2, :cond_4f

    .line 308
    iget p2, p0, Lcom/gmodvr/flat/Skin;->accent:I

    goto :goto_52

    :cond_4f
    const p2, -0xc7bcb4

    :goto_52
    invoke-virtual {p0, v0}, Lcom/gmodvr/flat/Skin;->dp(F)I

    move-result p0

    const v0, -0xede8e5

    invoke-static {v0, p2, v1, p0}, Lcom/gmodvr/flat/Skin;->edge(IIII)Landroid/graphics/drawable/LayerDrawable;

    move-result-object p0

    const/4 p2, 0x0

    .line 306
    invoke-static {v3, v2, p0, p2}, Lcom/gmodvr/flat/Skin;->states(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 p0, 0x1

    .line 309
    invoke-virtual {p1, p0}, Landroid/view/View;->setFocusable(Z)V

    .line 310
    invoke-virtual {p1, p0}, Landroid/view/View;->setClickable(Z)V

    .line 311
    new-instance p0, Lcom/gmodvr/flat/Skin$$ExternalSyntheticLambda5;

    invoke-direct {p0, p3}, Lcom/gmodvr/flat/Skin$$ExternalSyntheticLambda5;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public tag(Ljava/lang/String;I)Landroid/widget/TextView;
    .registers 3

    .line 259
    invoke-virtual {p0, p1, p2}, Lcom/gmodvr/flat/Skin;->label(Ljava/lang/CharSequence;I)Landroid/widget/TextView;

    move-result-object p1

    const/4 p2, 0x1

    .line 260
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 261
    sget-object p2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/high16 p2, 0x43340000    # 180.0f

    .line 262
    invoke-virtual {p0, p2}, Lcom/gmodvr/flat/Skin;->dp(F)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setMaxWidth(I)V

    return-object p1
.end method

.method public text(Ljava/lang/CharSequence;FI)Landroid/widget/TextView;
    .registers 6

    .line 144
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/gmodvr/flat/Skin;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 145
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 147
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 p1, 0x40000000    # 2.0f

    .line 148
    invoke-virtual {p0, p1}, Lcom/gmodvr/flat/Skin;->dp(F)I

    move-result p0

    int-to-float p0, p0

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {v0, p0, p1}, Landroid/widget/TextView;->setLineSpacing(FF)V

    return-object v0
.end method

.method public toggle(Z)Landroid/widget/ToggleButton;
    .registers 13

    .line 334
    new-instance v0, Landroid/widget/ToggleButton;

    iget-object v1, p0, Lcom/gmodvr/flat/Skin;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/ToggleButton;-><init>(Landroid/content/Context;)V

    .line 335
    const-string v1, "ON"

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setTextOn(Ljava/lang/CharSequence;)V

    .line 336
    const-string v1, "OFF"

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setTextOff(Ljava/lang/CharSequence;)V

    .line 337
    invoke-virtual {v0, p1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 338
    sget-object p1, Lcom/gmodvr/flat/Skin;->MONO:Landroid/graphics/Typeface;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    const/high16 p1, 0x41300000    # 11.0f

    .line 339
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    const p1, 0x3dcccccd    # 0.1f

    .line 340
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setLetterSpacing(F)V

    const/4 p1, 0x0

    .line 341
    invoke-virtual {v0, p1}, Landroid/view/View;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    const/high16 p1, 0x42500000    # 52.0f

    .line 342
    invoke-virtual {p0, p1}, Lcom/gmodvr/flat/Skin;->dp(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 343
    invoke-virtual {p0, p1}, Lcom/gmodvr/flat/Skin;->dp(F)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setMinimumWidth(I)V

    const/high16 p1, 0x41f00000    # 30.0f

    .line 344
    invoke-virtual {p0, p1}, Lcom/gmodvr/flat/Skin;->dp(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 345
    invoke-virtual {p0, p1}, Lcom/gmodvr/flat/Skin;->dp(F)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setMinimumHeight(I)V

    const/4 p1, 0x0

    .line 346
    invoke-virtual {v0, p1, p1, p1, p1}, Landroid/view/View;->setPadding(IIII)V

    .line 347
    new-instance v1, Landroid/content/res/ColorStateList;

    sget-object v2, Lcom/gmodvr/flat/Skin;->DISABLED:[I

    sget-object v3, Lcom/gmodvr/flat/Skin;->CHECKED:[I

    sget-object v4, Lcom/gmodvr/flat/Skin;->ANY:[I

    filled-new-array {v2, v3, v4}, [[I

    move-result-object v5

    const v6, -0xf4f1f0

    const v7, -0x72665d

    const v8, -0xa49991

    filled-new-array {v8, v6, v7}, [I

    move-result-object v6

    invoke-direct {v1, v5, v6}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 348
    new-instance v1, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 349
    new-instance v5, Lcom/gmodvr/flat/Skin$Cut;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {p0, v6}, Lcom/gmodvr/flat/Skin;->dp(F)I

    move-result v7

    int-to-float v7, v7

    const v8, -0xdcd4cf

    const/4 v9, 0x0

    invoke-direct {v5, p1, v8, v7, v9}, Lcom/gmodvr/flat/Skin$Cut;-><init>(IIFF)V

    invoke-virtual {v1, v2, v5}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    const v2, 0x10100a0

    const v5, 0x101009c

    .line 350
    filled-new-array {v2, v5}, [I

    move-result-object v2

    new-instance v5, Lcom/gmodvr/flat/Skin$Cut;

    iget v7, p0, Lcom/gmodvr/flat/Skin;->accent:I

    const/high16 v8, 0x40000000    # 2.0f

    invoke-virtual {p0, v8}, Lcom/gmodvr/flat/Skin;->dp(F)I

    move-result v8

    int-to-float v8, v8

    const v10, -0x191513

    invoke-direct {v5, v7, v10, v8, v9}, Lcom/gmodvr/flat/Skin$Cut;-><init>(IIFF)V

    invoke-virtual {v1, v2, v5}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 351
    new-instance v2, Lcom/gmodvr/flat/Skin$Cut;

    iget v5, p0, Lcom/gmodvr/flat/Skin;->accent:I

    invoke-direct {v2, v5, p1, v9, v9}, Lcom/gmodvr/flat/Skin$Cut;-><init>(IIFF)V

    invoke-virtual {v1, v3, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 352
    sget-object v2, Lcom/gmodvr/flat/Skin;->PRESSED:[I

    new-instance v3, Lcom/gmodvr/flat/Skin$Cut;

    invoke-virtual {p0, v6}, Lcom/gmodvr/flat/Skin;->dp(F)I

    move-result v5

    int-to-float v5, v5

    const v7, -0xe4ddd9

    const v8, -0xc7bcb4

    invoke-direct {v3, v7, v8, v5, v9}, Lcom/gmodvr/flat/Skin$Cut;-><init>(IIFF)V

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 353
    sget-object v2, Lcom/gmodvr/flat/Skin;->FOCUSED:[I

    new-instance v3, Lcom/gmodvr/flat/Skin$Cut;

    iget v5, p0, Lcom/gmodvr/flat/Skin;->accent:I

    invoke-virtual {p0, v6}, Lcom/gmodvr/flat/Skin;->dp(F)I

    move-result v7

    int-to-float v7, v7

    const v10, -0xede8e5

    invoke-direct {v3, v10, v5, v7, v9}, Lcom/gmodvr/flat/Skin$Cut;-><init>(IIFF)V

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 354
    new-instance v2, Lcom/gmodvr/flat/Skin$Cut;

    invoke-virtual {p0, v6}, Lcom/gmodvr/flat/Skin;->dp(F)I

    move-result p0

    int-to-float p0, p0

    invoke-direct {v2, p1, v8, p0, v9}, Lcom/gmodvr/flat/Skin$Cut;-><init>(IIFF)V

    invoke-virtual {v1, v4, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 355
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

###### Class com.gmodvr.flat.Skin.AnonymousClass1 (com.gmodvr.flat.Skin$1)
.class Lcom/gmodvr/flat/Skin$1;
.super Landroid/widget/ArrayAdapter;
.source "Skin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gmodvr/flat/Skin;->spinner(Ljava/util/List;)Landroid/widget/Spinner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gmodvr/flat/Skin;


# direct methods
.method public constructor <init>(Lcom/gmodvr/flat/Skin;Landroid/content/Context;ILjava/util/List;)V
    .registers 5

    .line 395
    iput-object p1, p0, Lcom/gmodvr/flat/Skin$1;->this$0:Lcom/gmodvr/flat/Skin;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method

.method private cell(Landroid/view/View;IZ)Landroid/view/View;
    .registers 7

    .line 400
    instance-of v0, p1, Landroid/widget/TextView;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    check-cast p1, Landroid/widget/TextView;

    goto :goto_12

    :cond_8
    iget-object p1, p0, Lcom/gmodvr/flat/Skin$1;->this$0:Lcom/gmodvr/flat/Skin;

    const-string v0, ""

    const/high16 v2, 0x41600000    # 14.0f

    invoke-virtual {p1, v0, v2, v1}, Lcom/gmodvr/flat/Skin;->text(Ljava/lang/CharSequence;FI)Landroid/widget/TextView;

    move-result-object p1

    .line 401
    :goto_12
    invoke-interface {p0, p2}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p2, -0x191513

    const v0, -0xa49991

    .line 402
    invoke-static {p2, v0}, Lcom/gmodvr/flat/Skin;->-$$Nest$smcolors(II)Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    const/4 p2, 0x1

    .line 403
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 404
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/16 v0, 0x10

    .line 405
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 406
    iget-object v0, p0, Lcom/gmodvr/flat/Skin$1;->this$0:Lcom/gmodvr/flat/Skin;

    if-eqz p3, :cond_3d

    const/high16 v2, 0x42300000    # 44.0f

    goto :goto_3f

    :cond_3d
    const/high16 v2, 0x42280000    # 42.0f

    :goto_3f
    invoke-virtual {v0, v2}, Lcom/gmodvr/flat/Skin;->dp(F)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 407
    iget-object v0, p0, Lcom/gmodvr/flat/Skin$1;->this$0:Lcom/gmodvr/flat/Skin;

    const/high16 v2, 0x41400000    # 12.0f

    invoke-virtual {v0, v2}, Lcom/gmodvr/flat/Skin;->dp(F)I

    move-result v0

    iget-object p0, p0, Lcom/gmodvr/flat/Skin$1;->this$0:Lcom/gmodvr/flat/Skin;

    if-eqz p3, :cond_53

    goto :goto_55

    :cond_53
    const/high16 v2, 0x42080000    # 34.0f

    :goto_55
    invoke-virtual {p0, v2}, Lcom/gmodvr/flat/Skin;->dp(F)I

    move-result p0

    invoke-virtual {p1, v0, v1, p0, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    xor-int/lit8 p0, p3, 0x1

    .line 408
    invoke-virtual {p1, p0}, Landroid/view/View;->setDuplicateParentStateEnabled(Z)V

    return-object p1
.end method


# virtual methods
.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 4

    const/4 p3, 0x1

    .line 397
    invoke-direct {p0, p2, p1, p3}, Lcom/gmodvr/flat/Skin$1;->cell(Landroid/view/View;IZ)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 4

    const/4 p3, 0x0

    .line 396
    invoke-direct {p0, p2, p1, p3}, Lcom/gmodvr/flat/Skin$1;->cell(Landroid/view/View;IZ)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

###### Class com.gmodvr.flat.Skin.Column (com.gmodvr.flat.Skin$Column)
.class final Lcom/gmodvr/flat/Skin$Column;
.super Landroid/widget/LinearLayout;
.source "Skin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gmodvr/flat/Skin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Column"
.end annotation


# instance fields
.field private final max:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 3

    .line 548
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 549
    iput p2, p0, Lcom/gmodvr/flat/Skin$Column;->max:I

    const/4 p1, 0x1

    .line 550
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    return-void
.end method


# virtual methods
.method public onMeasure(II)V
    .registers 5

    .line 554
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iget v1, p0, Lcom/gmodvr/flat/Skin$Column;->max:I

    if-le v0, v1, :cond_e

    const/high16 p1, 0x40000000    # 2.0f

    invoke-static {v1, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 555
    :cond_e
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method

###### Class com.gmodvr.flat.Skin.Cut (com.gmodvr.flat.Skin$Cut)
.class final Lcom/gmodvr/flat/Skin$Cut;
.super Landroid/graphics/drawable/Drawable;
.source "Skin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gmodvr/flat/Skin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Cut"
.end annotation


# instance fields
.field private alpha:I

.field private final cut:F

.field private final fill:Landroid/graphics/Paint;

.field private final fillColor:I

.field private final path:Landroid/graphics/Path;

.field private final stroke:Landroid/graphics/Paint;

.field private final strokeColor:I


# direct methods
.method public constructor <init>(IIFF)V
    .registers 7

    .line 506
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 500
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/gmodvr/flat/Skin$Cut;->fill:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/gmodvr/flat/Skin$Cut;->stroke:Landroid/graphics/Paint;

    .line 501
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/gmodvr/flat/Skin$Cut;->path:Landroid/graphics/Path;

    const/16 v1, 0xff

    .line 504
    iput v1, p0, Lcom/gmodvr/flat/Skin$Cut;->alpha:I

    .line 507
    iput p1, p0, Lcom/gmodvr/flat/Skin$Cut;->fillColor:I

    .line 508
    iput p2, p0, Lcom/gmodvr/flat/Skin$Cut;->strokeColor:I

    .line 509
    iput p4, p0, Lcom/gmodvr/flat/Skin$Cut;->cut:F

    .line 510
    sget-object p0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 511
    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 5

    .line 526
    iget v0, p0, Lcom/gmodvr/flat/Skin$Cut;->fillColor:I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-eqz v0, :cond_26

    .line 527
    iget-object v0, p0, Lcom/gmodvr/flat/Skin$Cut;->fill:Landroid/graphics/Paint;

    iget v1, p0, Lcom/gmodvr/flat/Skin$Cut;->fillColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 528
    iget-object v0, p0, Lcom/gmodvr/flat/Skin$Cut;->fill:Landroid/graphics/Paint;

    iget v1, p0, Lcom/gmodvr/flat/Skin$Cut;->fillColor:I

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    iget v2, p0, Lcom/gmodvr/flat/Skin$Cut;->alpha:I

    mul-int/2addr v1, v2

    div-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 529
    iget-object v0, p0, Lcom/gmodvr/flat/Skin$Cut;->path:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/gmodvr/flat/Skin$Cut;->fill:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 531
    :cond_26
    iget-object v0, p0, Lcom/gmodvr/flat/Skin$Cut;->stroke:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_57

    iget v0, p0, Lcom/gmodvr/flat/Skin$Cut;->strokeColor:I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-eqz v0, :cond_57

    .line 532
    iget-object v0, p0, Lcom/gmodvr/flat/Skin$Cut;->stroke:Landroid/graphics/Paint;

    iget v1, p0, Lcom/gmodvr/flat/Skin$Cut;->strokeColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 533
    iget-object v0, p0, Lcom/gmodvr/flat/Skin$Cut;->stroke:Landroid/graphics/Paint;

    iget v1, p0, Lcom/gmodvr/flat/Skin$Cut;->strokeColor:I

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    iget v2, p0, Lcom/gmodvr/flat/Skin$Cut;->alpha:I

    mul-int/2addr v1, v2

    div-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 534
    iget-object v0, p0, Lcom/gmodvr/flat/Skin$Cut;->path:Landroid/graphics/Path;

    iget-object p0, p0, Lcom/gmodvr/flat/Skin$Cut;->stroke:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_57
    return-void
.end method

.method public getOpacity()I
    .registers 1

    .line 0
    const/4 p0, -0x3

    return p0
.end method

.method public onBoundsChange(Landroid/graphics/Rect;)V
    .registers 6

    .line 515
    iget-object v0, p0, Lcom/gmodvr/flat/Skin$Cut;->stroke:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    add-float/2addr v1, v0

    iget v2, p1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    add-float/2addr v2, v0

    iget v3, p1, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    sub-float/2addr v3, v0

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float p1, p1

    sub-float/2addr p1, v0

    .line 516
    iget-object v0, p0, Lcom/gmodvr/flat/Skin$Cut;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 517
    iget-object v0, p0, Lcom/gmodvr/flat/Skin$Cut;->path:Landroid/graphics/Path;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 518
    iget-object v0, p0, Lcom/gmodvr/flat/Skin$Cut;->path:Landroid/graphics/Path;

    invoke-virtual {v0, v3, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 519
    iget-object v0, p0, Lcom/gmodvr/flat/Skin$Cut;->path:Landroid/graphics/Path;

    iget v2, p0, Lcom/gmodvr/flat/Skin$Cut;->cut:F

    sub-float v2, p1, v2

    invoke-virtual {v0, v3, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 520
    iget-object v0, p0, Lcom/gmodvr/flat/Skin$Cut;->path:Landroid/graphics/Path;

    iget v2, p0, Lcom/gmodvr/flat/Skin$Cut;->cut:F

    sub-float/2addr v3, v2

    invoke-virtual {v0, v3, p1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 521
    iget-object v0, p0, Lcom/gmodvr/flat/Skin$Cut;->path:Landroid/graphics/Path;

    invoke-virtual {v0, v1, p1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 522
    iget-object p0, p0, Lcom/gmodvr/flat/Skin$Cut;->path:Landroid/graphics/Path;

    invoke-virtual {p0}, Landroid/graphics/Path;->close()V

    return-void
.end method

.method public setAlpha(I)V
    .registers 2

    .line 538
    iput p1, p0, Lcom/gmodvr/flat/Skin$Cut;->alpha:I

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 3

    .line 539
    iget-object v0, p0, Lcom/gmodvr/flat/Skin$Cut;->fill:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget-object p0, p0, Lcom/gmodvr/flat/Skin$Cut;->stroke:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

###### Class com.gmodvr.flat.Skin$$ExternalSyntheticLambda10 (com.gmodvr.flat.Skin$$ExternalSyntheticLambda10)
.class public final synthetic Lcom/gmodvr/flat/Skin$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Runnable;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/Skin$$ExternalSyntheticLambda10;->f$0:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/gmodvr/flat/Skin$$ExternalSyntheticLambda10;->f$0:Ljava/lang/Runnable;

    invoke-static {p0, p1}, Lcom/gmodvr/flat/Skin;->$r8$lambda$ijYJc2DjLPh940BGET0bBiyGHqk(Ljava/lang/Runnable;Landroid/view/View;)V

    return-void
.end method

###### Class com.gmodvr.flat.Skin$$ExternalSyntheticLambda11 (com.gmodvr.flat.Skin$$ExternalSyntheticLambda11)
.class public final synthetic Lcom/gmodvr/flat/Skin$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Runnable;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/Skin$$ExternalSyntheticLambda11;->f$0:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/gmodvr/flat/Skin$$ExternalSyntheticLambda11;->f$0:Ljava/lang/Runnable;

    invoke-static {p0, p1}, Lcom/gmodvr/flat/Skin;->$r8$lambda$xobGB6APmvuhpKt0yFOyOXnAHgk(Ljava/lang/Runnable;Landroid/view/View;)V

    return-void
.end method

###### Class com.gmodvr.flat.Skin$$ExternalSyntheticLambda4 (com.gmodvr.flat.Skin$$ExternalSyntheticLambda4)
.class public final synthetic Lcom/gmodvr/flat/Skin$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Runnable;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/Skin$$ExternalSyntheticLambda4;->f$0:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/gmodvr/flat/Skin$$ExternalSyntheticLambda4;->f$0:Ljava/lang/Runnable;

    invoke-static {p0, p1}, Lcom/gmodvr/flat/Skin;->$r8$lambda$3HoSS4fsjvRivsM-L94sR1MQiyE(Ljava/lang/Runnable;Landroid/view/View;)V

    return-void
.end method

###### Class com.gmodvr.flat.Skin$$ExternalSyntheticLambda5 (com.gmodvr.flat.Skin$$ExternalSyntheticLambda5)
.class public final synthetic Lcom/gmodvr/flat/Skin$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Runnable;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/Skin$$ExternalSyntheticLambda5;->f$0:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/gmodvr/flat/Skin$$ExternalSyntheticLambda5;->f$0:Ljava/lang/Runnable;

    invoke-static {p0, p1}, Lcom/gmodvr/flat/Skin;->$r8$lambda$TeKow5zZp4xbeZ_iKSdT7sdvn5w(Ljava/lang/Runnable;Landroid/view/View;)V

    return-void
.end method

###### Class com.gmodvr.flat.Skin$$ExternalSyntheticLambda6 (com.gmodvr.flat.Skin$$ExternalSyntheticLambda6)
.class public final synthetic Lcom/gmodvr/flat/Skin$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .registers 3

    .line 0
    invoke-static {p1, p2}, Lcom/gmodvr/flat/Skin;->$r8$lambda$DHCqxY1HGs388hEbJ6phkBX_NBo(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

###### Class com.gmodvr.flat.Skin$$ExternalSyntheticLambda7 (com.gmodvr.flat.Skin$$ExternalSyntheticLambda7)
.class public final synthetic Lcom/gmodvr/flat/Skin$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Runnable;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/Skin$$ExternalSyntheticLambda7;->f$0:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/gmodvr/flat/Skin$$ExternalSyntheticLambda7;->f$0:Ljava/lang/Runnable;

    invoke-static {p0, p1}, Lcom/gmodvr/flat/Skin;->$r8$lambda$52wH_YmNh5ykl5AOf8z1AEoKbkc(Ljava/lang/Runnable;Landroid/view/View;)V

    return-void
.end method

###### Class com.gmodvr.flat.Skin$$ExternalSyntheticLambda8 (com.gmodvr.flat.Skin$$ExternalSyntheticLambda8)
.class public final synthetic Lcom/gmodvr/flat/Skin$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/Skin;


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/Skin;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/Skin$$ExternalSyntheticLambda8;->f$0:Lcom/gmodvr/flat/Skin;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/gmodvr/flat/Skin$$ExternalSyntheticLambda8;->f$0:Lcom/gmodvr/flat/Skin;

    invoke-static {p0, p1}, Lcom/gmodvr/flat/Skin;->$r8$lambda$KDbd2ssLuzqgsC89MVkys9q1jYI(Lcom/gmodvr/flat/Skin;Landroid/view/View;)V

    return-void
.end method

###### Class com.gmodvr.flat.Skin$$ExternalSyntheticLambda9 (com.gmodvr.flat.Skin$$ExternalSyntheticLambda9)
.class public final synthetic Lcom/gmodvr/flat/Skin$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Runnable;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/Skin$$ExternalSyntheticLambda9;->f$0:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/gmodvr/flat/Skin$$ExternalSyntheticLambda9;->f$0:Ljava/lang/Runnable;

    invoke-static {p0, p1}, Lcom/gmodvr/flat/Skin;->$r8$lambda$te-PTRj8Ld6dKfQFoQFr0CVHTMo(Ljava/lang/Runnable;Landroid/view/View;)V

    return-void
.end method
