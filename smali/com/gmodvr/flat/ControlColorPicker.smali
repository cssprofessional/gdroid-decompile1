###### Class com.gmodvr.flat.ControlColorPicker (com.gmodvr.flat.ControlColorPicker)
.class final Lcom/gmodvr/flat/ControlColorPicker;
.super Landroid/widget/LinearLayout;
.source "ControlColorPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gmodvr/flat/ControlColorPicker$Wheel;
    }
.end annotation


# instance fields
.field private final brightness:Landroid/widget/SeekBar;

.field private final brightnessLabel:Landroid/widget/TextView;

.field private final changed:Ljava/util/function/IntConsumer;

.field private final hex:Landroid/widget/TextView;

.field private final hsv:[F

.field private final skin:Lcom/gmodvr/flat/Skin;

.field private final swatch:Landroid/view/View;

.field private final wheel:Lcom/gmodvr/flat/ControlColorPicker$Wheel;


# direct methods
.method public static synthetic $r8$lambda$rj85FfYXj7kuCrvA-qQlMBwajrQ(Lcom/gmodvr/flat/ControlColorPicker;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/gmodvr/flat/ControlColorPicker;->lambda$new$0()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgethsv(Lcom/gmodvr/flat/ControlColorPicker;)[F
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/gmodvr/flat/ControlColorPicker;->hsv:[F

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetskin(Lcom/gmodvr/flat/ControlColorPicker;)Lcom/gmodvr/flat/Skin;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/gmodvr/flat/ControlColorPicker;->skin:Lcom/gmodvr/flat/Skin;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mpublish(Lcom/gmodvr/flat/ControlColorPicker;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/gmodvr/flat/ControlColorPicker;->publish()V

    return-void
.end method

.method public constructor <init>(Lcom/gmodvr/flat/Skin;Ljava/util/function/IntConsumer;)V
    .registers 14

    .line 34
    iget-object v0, p1, Lcom/gmodvr/flat/Skin;->activity:Landroid/app/Activity;

    invoke-direct {p0, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x3

    .line 27
    new-array v1, v1, [F

    fill-array-data v1, :array_106

    iput-object v1, p0, Lcom/gmodvr/flat/ControlColorPicker;->hsv:[F

    .line 35
    iput-object p1, p0, Lcom/gmodvr/flat/ControlColorPicker;->skin:Lcom/gmodvr/flat/Skin;

    .line 36
    iput-object p2, p0, Lcom/gmodvr/flat/ControlColorPicker;->changed:Ljava/util/function/IntConsumer;

    const/4 p2, 0x1

    .line 37
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 38
    const-string p2, "Button color"

    const/high16 v1, 0x41400000    # 12.0f

    const v2, -0x191513

    invoke-virtual {p1, p2, v1, v2}, Lcom/gmodvr/flat/Skin;->text(Ljava/lang/CharSequence;FI)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 39
    const-string p2, "Hue around \u00b7 white at center"

    const/high16 v3, 0x41300000    # 11.0f

    const v4, -0x72665d

    invoke-virtual {p1, p2, v3, v4}, Lcom/gmodvr/flat/Skin;->text(Ljava/lang/CharSequence;FI)Landroid/widget/TextView;

    move-result-object p2

    const/high16 v3, 0x40800000    # 4.0f

    invoke-virtual {p1, v3}, Lcom/gmodvr/flat/Skin;->below(F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {p0, p2, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 41
    new-instance p2, Lcom/gmodvr/flat/ControlColorPicker$Wheel;

    invoke-direct {p2, p0}, Lcom/gmodvr/flat/ControlColorPicker$Wheel;-><init>(Lcom/gmodvr/flat/ControlColorPicker;)V

    iput-object p2, p0, Lcom/gmodvr/flat/ControlColorPicker;->wheel:Lcom/gmodvr/flat/ControlColorPicker$Wheel;

    .line 42
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v6, 0x43100000    # 144.0f

    invoke-virtual {p1, v6}, Lcom/gmodvr/flat/Skin;->dp(F)I

    move-result v6

    const/4 v7, -0x1

    invoke-direct {v5, v7, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p2, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 44
    new-instance p2, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {p2, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/16 v5, 0x10

    .line 45
    invoke-virtual {p2, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 46
    new-instance v5, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/gmodvr/flat/ControlColorPicker;->swatch:Landroid/view/View;

    const/4 v6, 0x2

    .line 47
    invoke-virtual {v5, v6}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 48
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v8, 0x41c00000    # 24.0f

    invoke-virtual {p1, v8}, Lcom/gmodvr/flat/Skin;->dp(F)I

    move-result v9

    invoke-virtual {p1, v8}, Lcom/gmodvr/flat/Skin;->dp(F)I

    move-result v8

    invoke-direct {v6, v9, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 49
    const-string v5, ""

    invoke-virtual {p1, v5, v1, v2}, Lcom/gmodvr/flat/Skin;->text(Ljava/lang/CharSequence;FI)Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, p0, Lcom/gmodvr/flat/ControlColorPicker;->hex:Landroid/widget/TextView;

    .line 50
    sget-object v6, Lcom/gmodvr/flat/Skin;->MONO:Landroid/graphics/Typeface;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/high16 v6, 0x41000000    # 8.0f

    .line 51
    invoke-virtual {p1, v6}, Lcom/gmodvr/flat/Skin;->dp(F)I

    move-result v8

    const/4 v9, 0x0

    invoke-virtual {v2, v8, v9, v9, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 52
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v10, -0x2

    invoke-direct {v8, v9, v10, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p2, v2, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 53
    new-instance v0, Lcom/gmodvr/flat/ControlColorPicker$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/gmodvr/flat/ControlColorPicker$$ExternalSyntheticLambda0;-><init>(Lcom/gmodvr/flat/ControlColorPicker;)V

    const-string v2, "White"

    invoke-virtual {p1, v2, v0}, Lcom/gmodvr/flat/Skin;->link(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 58
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 60
    invoke-virtual {p1, v5, v1, v4}, Lcom/gmodvr/flat/Skin;->text(Ljava/lang/CharSequence;FI)Landroid/widget/TextView;

    move-result-object p2

    iput-object p2, p0, Lcom/gmodvr/flat/ControlColorPicker;->brightnessLabel:Landroid/widget/TextView;

    .line 61
    invoke-virtual {p1, v3}, Lcom/gmodvr/flat/Skin;->below(F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 62
    new-instance p2, Landroid/widget/SeekBar;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/gmodvr/flat/ControlColorPicker;->brightness:Landroid/widget/SeekBar;

    const/16 v0, 0x64

    .line 63
    invoke-virtual {p2, v0}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 64
    const-string v0, "Button color brightness"

    invoke-virtual {p2, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 65
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 66
    iget v1, p1, Lcom/gmodvr/flat/Skin;->accent:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 67
    invoke-virtual {p1, v6}, Lcom/gmodvr/flat/Skin;->dp(F)I

    move-result v1

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-virtual {p1, v2}, Lcom/gmodvr/flat/Skin;->dp(F)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setSize(II)V

    .line 68
    invoke-virtual {p2, v0}, Landroid/widget/AbsSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 69
    new-instance v0, Lcom/gmodvr/flat/ControlColorPicker$1;

    invoke-direct {v0, p0}, Lcom/gmodvr/flat/ControlColorPicker$1;-><init>(Lcom/gmodvr/flat/ControlColorPicker;)V

    invoke-virtual {p2, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 78
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x42000000    # 32.0f

    invoke-virtual {p1, v1}, Lcom/gmodvr/flat/Skin;->dp(F)I

    move-result p1

    invoke-direct {v0, v7, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 79
    invoke-direct {p0}, Lcom/gmodvr/flat/ControlColorPicker;->update()V

    return-void

    nop

    :array_106
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private synthetic lambda$new$0()V
    .registers 4

    .line 54
    iget-object v0, p0, Lcom/gmodvr/flat/ControlColorPicker;->hsv:[F

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput v2, v0, v1

    const/4 v1, 0x2

    const/high16 v2, 0x3f800000    # 1.0f

    .line 55
    aput v2, v0, v1

    .line 56
    invoke-direct {p0}, Lcom/gmodvr/flat/ControlColorPicker;->publish()V

    return-void
.end method

.method private publish()V
    .registers 2

    .line 92
    invoke-direct {p0}, Lcom/gmodvr/flat/ControlColorPicker;->update()V

    .line 93
    iget-object v0, p0, Lcom/gmodvr/flat/ControlColorPicker;->changed:Ljava/util/function/IntConsumer;

    invoke-virtual {p0}, Lcom/gmodvr/flat/ControlColorPicker;->color()I

    move-result p0

    invoke-interface {v0, p0}, Ljava/util/function/IntConsumer;->accept(I)V

    return-void
.end method

.method private update()V
    .registers 6

    .line 97
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0}, Lcom/gmodvr/flat/ControlColorPicker;->color()I

    move-result v1

    const v2, 0xffffff

    and-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "#%06X"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 98
    iget-object v1, p0, Lcom/gmodvr/flat/ControlColorPicker;->swatch:Landroid/view/View;

    invoke-virtual {p0}, Lcom/gmodvr/flat/ControlColorPicker;->color()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 99
    iget-object v1, p0, Lcom/gmodvr/flat/ControlColorPicker;->hex:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    iget-object v1, p0, Lcom/gmodvr/flat/ControlColorPicker;->hsv:[F

    const/4 v2, 0x2

    aget v1, v1, v2

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 101
    iget-object v2, p0, Lcom/gmodvr/flat/ControlColorPicker;->brightnessLabel:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Brightness: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    iget-object v2, p0, Lcom/gmodvr/flat/ControlColorPicker;->brightness:Landroid/widget/SeekBar;

    invoke-virtual {v2, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 103
    iget-object v1, p0, Lcom/gmodvr/flat/ControlColorPicker;->wheel:Lcom/gmodvr/flat/ControlColorPicker$Wheel;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Button color wheel, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ". Left and right change hue; up and down change saturation."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 105
    iget-object p0, p0, Lcom/gmodvr/flat/ControlColorPicker;->wheel:Lcom/gmodvr/flat/ControlColorPicker$Wheel;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method


# virtual methods
.method public color()I
    .registers 1

    .line 82
    iget-object p0, p0, Lcom/gmodvr/flat/ControlColorPicker;->hsv:[F

    invoke-static {p0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result p0

    return p0
.end method

.method public setColor(I)V
    .registers 3

    const/high16 v0, -0x1000000

    or-int/2addr p1, v0

    .line 87
    invoke-virtual {p0}, Lcom/gmodvr/flat/ControlColorPicker;->color()I

    move-result v0

    if-eq v0, p1, :cond_e

    iget-object v0, p0, Lcom/gmodvr/flat/ControlColorPicker;->hsv:[F

    invoke-static {p1, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 88
    :cond_e
    invoke-direct {p0}, Lcom/gmodvr/flat/ControlColorPicker;->update()V

    return-void
.end method

###### Class com.gmodvr.flat.ControlColorPicker.AnonymousClass1 (com.gmodvr.flat.ControlColorPicker$1)
.class Lcom/gmodvr/flat/ControlColorPicker$1;
.super Ljava/lang/Object;
.source "ControlColorPicker.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gmodvr/flat/ControlColorPicker;-><init>(Lcom/gmodvr/flat/Skin;Ljava/util/function/IntConsumer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gmodvr/flat/ControlColorPicker;


# direct methods
.method public constructor <init>(Lcom/gmodvr/flat/ControlColorPicker;)V
    .registers 2

    .line 69
    iput-object p1, p0, Lcom/gmodvr/flat/ControlColorPicker$1;->this$0:Lcom/gmodvr/flat/ControlColorPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .registers 4

    if-nez p3, :cond_3

    return-void

    .line 72
    :cond_3
    iget-object p1, p0, Lcom/gmodvr/flat/ControlColorPicker$1;->this$0:Lcom/gmodvr/flat/ControlColorPicker;

    invoke-static {p1}, Lcom/gmodvr/flat/ControlColorPicker;->-$$Nest$fgethsv(Lcom/gmodvr/flat/ControlColorPicker;)[F

    move-result-object p1

    int-to-float p2, p2

    const/high16 p3, 0x42c80000    # 100.0f

    div-float/2addr p2, p3

    const/4 p3, 0x2

    aput p2, p1, p3

    .line 73
    iget-object p0, p0, Lcom/gmodvr/flat/ControlColorPicker$1;->this$0:Lcom/gmodvr/flat/ControlColorPicker;

    invoke-static {p0}, Lcom/gmodvr/flat/ControlColorPicker;->-$$Nest$mpublish(Lcom/gmodvr/flat/ControlColorPicker;)V

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

###### Class com.gmodvr.flat.ControlColorPicker.Wheel (com.gmodvr.flat.ControlColorPicker$Wheel)
.class final Lcom/gmodvr/flat/ControlColorPicker$Wheel;
.super Landroid/view/View;
.source "ControlColorPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gmodvr/flat/ControlColorPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Wheel"
.end annotation


# instance fields
.field private cx:F

.field private cy:F

.field private finger:I

.field private hue:Landroid/graphics/Shader;

.field private final paint:Landroid/graphics/Paint;

.field private radius:F

.field private saturation:Landroid/graphics/Shader;

.field final synthetic this$0:Lcom/gmodvr/flat/ControlColorPicker;


# direct methods
.method public constructor <init>(Lcom/gmodvr/flat/ControlColorPicker;)V
    .registers 3

    .line 114
    iput-object p1, p0, Lcom/gmodvr/flat/ControlColorPicker$Wheel;->this$0:Lcom/gmodvr/flat/ControlColorPicker;

    .line 115
    invoke-static {p1}, Lcom/gmodvr/flat/ControlColorPicker;->-$$Nest$fgetskin(Lcom/gmodvr/flat/ControlColorPicker;)Lcom/gmodvr/flat/Skin;

    move-result-object p1

    iget-object p1, p1, Lcom/gmodvr/flat/Skin;->activity:Landroid/app/Activity;

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 109
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/gmodvr/flat/ControlColorPicker$Wheel;->paint:Landroid/graphics/Paint;

    const/4 p1, -0x1

    .line 112
    iput p1, p0, Lcom/gmodvr/flat/ControlColorPicker$Wheel;->finger:I

    .line 116
    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 117
    invoke-virtual {p0, v0}, Landroid/view/View;->setClickable(Z)V

    return-void
.end method

.method private pick(FF)V
    .registers 8

    .line 158
    iget v0, p0, Lcom/gmodvr/flat/ControlColorPicker$Wheel;->cx:F

    sub-float/2addr p1, v0

    iget v0, p0, Lcom/gmodvr/flat/ControlColorPicker$Wheel;->cy:F

    sub-float/2addr p2, v0

    .line 159
    iget-object v0, p0, Lcom/gmodvr/flat/ControlColorPicker$Wheel;->this$0:Lcom/gmodvr/flat/ControlColorPicker;

    invoke-static {v0}, Lcom/gmodvr/flat/ControlColorPicker;->-$$Nest$fgethsv(Lcom/gmodvr/flat/ControlColorPicker;)[F

    move-result-object v0

    float-to-double v1, p2

    float-to-double p1, p1

    invoke-static {v1, v2, p1, p2}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v3

    double-to-float v3, v3

    const/high16 v4, 0x43b40000    # 360.0f

    add-float/2addr v3, v4

    rem-float/2addr v3, v4

    const/4 v4, 0x0

    aput v3, v0, v4

    .line 160
    iget-object v0, p0, Lcom/gmodvr/flat/ControlColorPicker$Wheel;->this$0:Lcom/gmodvr/flat/ControlColorPicker;

    invoke-static {v0}, Lcom/gmodvr/flat/ControlColorPicker;->-$$Nest$fgethsv(Lcom/gmodvr/flat/ControlColorPicker;)[F

    move-result-object v0

    invoke-static {p1, p2, v1, v2}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide p1

    double-to-float p1, p1

    iget p2, p0, Lcom/gmodvr/flat/ControlColorPicker$Wheel;->radius:F

    div-float/2addr p1, p2

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-static {p2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/4 p2, 0x1

    aput p1, v0, p2

    .line 161
    iget-object p0, p0, Lcom/gmodvr/flat/ControlColorPicker$Wheel;->this$0:Lcom/gmodvr/flat/ControlColorPicker;

    invoke-static {p0}, Lcom/gmodvr/flat/ControlColorPicker;->-$$Nest$mpublish(Lcom/gmodvr/flat/ControlColorPicker;)V

    return-void
.end method

.method private release()V
    .registers 2

    const/4 v0, -0x1

    .line 165
    iput v0, p0, Lcom/gmodvr/flat/ControlColorPicker$Wheel;->finger:I

    .line 166
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 9

    .line 130
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 131
    iget-object v0, p0, Lcom/gmodvr/flat/ControlColorPicker$Wheel;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 132
    iget-object v0, p0, Lcom/gmodvr/flat/ControlColorPicker$Wheel;->paint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 133
    iget-object v0, p0, Lcom/gmodvr/flat/ControlColorPicker$Wheel;->paint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/gmodvr/flat/ControlColorPicker$Wheel;->hue:Landroid/graphics/Shader;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 134
    iget v0, p0, Lcom/gmodvr/flat/ControlColorPicker$Wheel;->cx:F

    iget v2, p0, Lcom/gmodvr/flat/ControlColorPicker$Wheel;->cy:F

    iget v3, p0, Lcom/gmodvr/flat/ControlColorPicker$Wheel;->radius:F

    iget-object v4, p0, Lcom/gmodvr/flat/ControlColorPicker$Wheel;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 135
    iget-object v0, p0, Lcom/gmodvr/flat/ControlColorPicker$Wheel;->paint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/gmodvr/flat/ControlColorPicker$Wheel;->saturation:Landroid/graphics/Shader;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 136
    iget v0, p0, Lcom/gmodvr/flat/ControlColorPicker$Wheel;->cx:F

    iget v2, p0, Lcom/gmodvr/flat/ControlColorPicker$Wheel;->cy:F

    iget v3, p0, Lcom/gmodvr/flat/ControlColorPicker$Wheel;->radius:F

    iget-object v4, p0, Lcom/gmodvr/flat/ControlColorPicker$Wheel;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 137
    iget-object v0, p0, Lcom/gmodvr/flat/ControlColorPicker$Wheel;->paint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 138
    iget-object v0, p0, Lcom/gmodvr/flat/ControlColorPicker$Wheel;->paint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/gmodvr/flat/ControlColorPicker$Wheel;->this$0:Lcom/gmodvr/flat/ControlColorPicker;

    invoke-static {v2}, Lcom/gmodvr/flat/ControlColorPicker;->-$$Nest$fgethsv(Lcom/gmodvr/flat/ControlColorPicker;)[F

    move-result-object v2

    const/4 v3, 0x2

    aget v2, v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, v2

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v2, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 139
    iget v0, p0, Lcom/gmodvr/flat/ControlColorPicker$Wheel;->cx:F

    iget v2, p0, Lcom/gmodvr/flat/ControlColorPicker$Wheel;->cy:F

    iget v4, p0, Lcom/gmodvr/flat/ControlColorPicker$Wheel;->radius:F

    iget-object v5, p0, Lcom/gmodvr/flat/ControlColorPicker$Wheel;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 141
    iget-object v0, p0, Lcom/gmodvr/flat/ControlColorPicker$Wheel;->this$0:Lcom/gmodvr/flat/ControlColorPicker;

    invoke-static {v0}, Lcom/gmodvr/flat/ControlColorPicker;->-$$Nest$fgethsv(Lcom/gmodvr/flat/ControlColorPicker;)[F

    move-result-object v0

    aget v0, v0, v3

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    double-to-float v0, v2

    .line 142
    iget v2, p0, Lcom/gmodvr/flat/ControlColorPicker$Wheel;->cx:F

    float-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    double-to-float v0, v5

    iget-object v5, p0, Lcom/gmodvr/flat/ControlColorPicker$Wheel;->this$0:Lcom/gmodvr/flat/ControlColorPicker;

    invoke-static {v5}, Lcom/gmodvr/flat/ControlColorPicker;->-$$Nest$fgethsv(Lcom/gmodvr/flat/ControlColorPicker;)[F

    move-result-object v5

    const/4 v6, 0x1

    aget v5, v5, v6

    mul-float/2addr v0, v5

    iget v5, p0, Lcom/gmodvr/flat/ControlColorPicker$Wheel;->radius:F

    mul-float/2addr v0, v5

    add-float/2addr v2, v0

    .line 143
    iget v0, p0, Lcom/gmodvr/flat/ControlColorPicker$Wheel;->cy:F

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    double-to-float v3, v3

    iget-object v4, p0, Lcom/gmodvr/flat/ControlColorPicker$Wheel;->this$0:Lcom/gmodvr/flat/ControlColorPicker;

    invoke-static {v4}, Lcom/gmodvr/flat/ControlColorPicker;->-$$Nest$fgethsv(Lcom/gmodvr/flat/ControlColorPicker;)[F

    move-result-object v4

    aget v4, v4, v6

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/gmodvr/flat/ControlColorPicker$Wheel;->radius:F

    mul-float/2addr v3, v4

    add-float/2addr v0, v3

    .line 144
    iget-object v3, p0, Lcom/gmodvr/flat/ControlColorPicker$Wheel;->paint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 145
    iget-object v3, p0, Lcom/gmodvr/flat/ControlColorPicker$Wheel;->paint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/gmodvr/flat/ControlColorPicker$Wheel;->this$0:Lcom/gmodvr/flat/ControlColorPicker;

    invoke-static {v4}, Lcom/gmodvr/flat/ControlColorPicker;->-$$Nest$fgetskin(Lcom/gmodvr/flat/ControlColorPicker;)Lcom/gmodvr/flat/Skin;

    move-result-object v4

    const/high16 v5, 0x40400000    # 3.0f

    invoke-virtual {v4, v5}, Lcom/gmodvr/flat/Skin;->dp(F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 146
    iget-object v3, p0, Lcom/gmodvr/flat/ControlColorPicker$Wheel;->paint:Landroid/graphics/Paint;

    const/high16 v4, -0x1000000

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 147
    iget-object v3, p0, Lcom/gmodvr/flat/ControlColorPicker$Wheel;->this$0:Lcom/gmodvr/flat/ControlColorPicker;

    invoke-static {v3}, Lcom/gmodvr/flat/ControlColorPicker;->-$$Nest$fgetskin(Lcom/gmodvr/flat/ControlColorPicker;)Lcom/gmodvr/flat/Skin;

    move-result-object v3

    const/high16 v4, 0x40c00000    # 6.0f

    invoke-virtual {v3, v4}, Lcom/gmodvr/flat/Skin;->dp(F)I

    move-result v3

    int-to-float v3, v3

    iget-object v5, p0, Lcom/gmodvr/flat/ControlColorPicker$Wheel;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v3, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 148
    iget-object v3, p0, Lcom/gmodvr/flat/ControlColorPicker$Wheel;->paint:Landroid/graphics/Paint;

    iget-object v5, p0, Lcom/gmodvr/flat/ControlColorPicker$Wheel;->this$0:Lcom/gmodvr/flat/ControlColorPicker;

    invoke-static {v5}, Lcom/gmodvr/flat/ControlColorPicker;->-$$Nest$fgetskin(Lcom/gmodvr/flat/ControlColorPicker;)Lcom/gmodvr/flat/Skin;

    move-result-object v5

    const/high16 v6, 0x3fc00000    # 1.5f

    invoke-virtual {v5, v6}, Lcom/gmodvr/flat/Skin;->dp(F)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 149
    iget-object v3, p0, Lcom/gmodvr/flat/ControlColorPicker$Wheel;->paint:Landroid/graphics/Paint;

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 150
    iget-object v1, p0, Lcom/gmodvr/flat/ControlColorPicker$Wheel;->this$0:Lcom/gmodvr/flat/ControlColorPicker;

    invoke-static {v1}, Lcom/gmodvr/flat/ControlColorPicker;->-$$Nest$fgetskin(Lcom/gmodvr/flat/ControlColorPicker;)Lcom/gmodvr/flat/Skin;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/gmodvr/flat/Skin;->dp(F)I

    move-result v1

    int-to-float v1, v1

    iget-object v3, p0, Lcom/gmodvr/flat/ControlColorPicker$Wheel;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v1, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 151
    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_11f

    .line 152
    iget-object v0, p0, Lcom/gmodvr/flat/ControlColorPicker$Wheel;->paint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/gmodvr/flat/ControlColorPicker$Wheel;->this$0:Lcom/gmodvr/flat/ControlColorPicker;

    invoke-static {v1}, Lcom/gmodvr/flat/ControlColorPicker;->-$$Nest$fgetskin(Lcom/gmodvr/flat/ControlColorPicker;)Lcom/gmodvr/flat/Skin;

    move-result-object v1

    iget v1, v1, Lcom/gmodvr/flat/Skin;->accent:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 153
    iget v0, p0, Lcom/gmodvr/flat/ControlColorPicker$Wheel;->cx:F

    iget v1, p0, Lcom/gmodvr/flat/ControlColorPicker$Wheel;->cy:F

    iget v2, p0, Lcom/gmodvr/flat/ControlColorPicker$Wheel;->radius:F

    iget-object v3, p0, Lcom/gmodvr/flat/ControlColorPicker$Wheel;->this$0:Lcom/gmodvr/flat/ControlColorPicker;

    invoke-static {v3}, Lcom/gmodvr/flat/ControlColorPicker;->-$$Nest$fgetskin(Lcom/gmodvr/flat/ControlColorPicker;)Lcom/gmodvr/flat/Skin;

    move-result-object v3

    const/high16 v4, 0x41000000    # 8.0f

    invoke-virtual {v3, v4}, Lcom/gmodvr/flat/Skin;->dp(F)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget-object p0, p0, Lcom/gmodvr/flat/ControlColorPicker$Wheel;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_11f
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 2

    .line 205
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 206
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result p0

    if-eqz p0, :cond_13

    .line 207
    sget-object p0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_FORWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 208
    sget-object p0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_BACKWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    :cond_13
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 7

    .line 194
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0

    :cond_b
    const/16 v0, 0x15

    const/high16 v1, 0x43b40000    # 360.0f

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p1, v0, :cond_29

    .line 195
    iget-object p1, p0, Lcom/gmodvr/flat/ControlColorPicker$Wheel;->this$0:Lcom/gmodvr/flat/ControlColorPicker;

    invoke-static {p1}, Lcom/gmodvr/flat/ControlColorPicker;->-$$Nest$fgethsv(Lcom/gmodvr/flat/ControlColorPicker;)[F

    move-result-object p1

    iget-object p2, p0, Lcom/gmodvr/flat/ControlColorPicker$Wheel;->this$0:Lcom/gmodvr/flat/ControlColorPicker;

    invoke-static {p2}, Lcom/gmodvr/flat/ControlColorPicker;->-$$Nest$fgethsv(Lcom/gmodvr/flat/ControlColorPicker;)[F

    move-result-object p2

    aget p2, p2, v2

    const v0, 0x43b18000    # 355.0f

    add-float/2addr p2, v0

    rem-float/2addr p2, v1

    aput p2, p1, v2

    goto :goto_7b

    :cond_29
    const/16 v0, 0x16

    if-ne p1, v0, :cond_42

    .line 196
    iget-object p1, p0, Lcom/gmodvr/flat/ControlColorPicker$Wheel;->this$0:Lcom/gmodvr/flat/ControlColorPicker;

    invoke-static {p1}, Lcom/gmodvr/flat/ControlColorPicker;->-$$Nest$fgethsv(Lcom/gmodvr/flat/ControlColorPicker;)[F

    move-result-object p1

    iget-object p2, p0, Lcom/gmodvr/flat/ControlColorPicker$Wheel;->this$0:Lcom/gmodvr/flat/ControlColorPicker;

    invoke-static {p2}, Lcom/gmodvr/flat/ControlColorPicker;->-$$Nest$fgethsv(Lcom/gmodvr/flat/ControlColorPicker;)[F

    move-result-object p2

    aget p2, p2, v2

    const/high16 v0, 0x40a00000    # 5.0f

    add-float/2addr p2, v0

    rem-float/2addr p2, v1

    aput p2, p1, v2

    goto :goto_7b

    :cond_42
    const/16 v0, 0x13

    const v1, 0x3d4ccccd    # 0.05f

    if-ne p1, v0, :cond_61

    .line 197
    iget-object p1, p0, Lcom/gmodvr/flat/ControlColorPicker$Wheel;->this$0:Lcom/gmodvr/flat/ControlColorPicker;

    invoke-static {p1}, Lcom/gmodvr/flat/ControlColorPicker;->-$$Nest$fgethsv(Lcom/gmodvr/flat/ControlColorPicker;)[F

    move-result-object p1

    iget-object p2, p0, Lcom/gmodvr/flat/ControlColorPicker$Wheel;->this$0:Lcom/gmodvr/flat/ControlColorPicker;

    invoke-static {p2}, Lcom/gmodvr/flat/ControlColorPicker;->-$$Nest$fgethsv(Lcom/gmodvr/flat/ControlColorPicker;)[F

    move-result-object p2

    aget p2, p2, v3

    add-float/2addr p2, v1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    aput p2, p1, v3

    goto :goto_7b

    :cond_61
    const/16 v0, 0x14

    if-ne p1, v0, :cond_81

    .line 198
    iget-object p1, p0, Lcom/gmodvr/flat/ControlColorPicker$Wheel;->this$0:Lcom/gmodvr/flat/ControlColorPicker;

    invoke-static {p1}, Lcom/gmodvr/flat/ControlColorPicker;->-$$Nest$fgethsv(Lcom/gmodvr/flat/ControlColorPicker;)[F

    move-result-object p1

    iget-object p2, p0, Lcom/gmodvr/flat/ControlColorPicker$Wheel;->this$0:Lcom/gmodvr/flat/ControlColorPicker;

    invoke-static {p2}, Lcom/gmodvr/flat/ControlColorPicker;->-$$Nest$fgethsv(Lcom/gmodvr/flat/ControlColorPicker;)[F

    move-result-object p2

    aget p2, p2, v3

    sub-float/2addr p2, v1

    const/4 v0, 0x0

    invoke-static {v0, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    aput p2, p1, v3

    .line 200
    :goto_7b
    iget-object p0, p0, Lcom/gmodvr/flat/ControlColorPicker$Wheel;->this$0:Lcom/gmodvr/flat/ControlColorPicker;

    invoke-static {p0}, Lcom/gmodvr/flat/ControlColorPicker;->-$$Nest$mpublish(Lcom/gmodvr/flat/ControlColorPicker;)V

    return v3

    .line 199
    :cond_81
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public onSizeChanged(IIII)V
    .registers 13

    int-to-float p3, p1

    const/high16 p4, 0x40000000    # 2.0f

    div-float/2addr p3, p4

    .line 121
    iput p3, p0, Lcom/gmodvr/flat/ControlColorPicker$Wheel;->cx:F

    int-to-float p3, p2

    div-float/2addr p3, p4

    .line 122
    iput p3, p0, Lcom/gmodvr/flat/ControlColorPicker$Wheel;->cy:F

    .line 123
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, p4

    iget-object p2, p0, Lcom/gmodvr/flat/ControlColorPicker$Wheel;->this$0:Lcom/gmodvr/flat/ControlColorPicker;

    invoke-static {p2}, Lcom/gmodvr/flat/ControlColorPicker;->-$$Nest$fgetskin(Lcom/gmodvr/flat/ControlColorPicker;)Lcom/gmodvr/flat/Skin;

    move-result-object p2

    const/high16 p3, 0x41100000    # 9.0f

    invoke-virtual {p2, p3}, Lcom/gmodvr/flat/Skin;->dp(F)I

    move-result p2

    int-to-float p2, p2

    sub-float/2addr p1, p2

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-static {p2, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/gmodvr/flat/ControlColorPicker$Wheel;->radius:F

    .line 124
    new-instance p1, Landroid/graphics/SweepGradient;

    iget p2, p0, Lcom/gmodvr/flat/ControlColorPicker$Wheel;->cx:F

    iget p3, p0, Lcom/gmodvr/flat/ControlColorPicker$Wheel;->cy:F

    const/4 p4, 0x7

    new-array p4, p4, [I

    fill-array-data p4, :array_4e

    const/4 v0, 0x0

    invoke-direct {p1, p2, p3, p4, v0}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    iput-object p1, p0, Lcom/gmodvr/flat/ControlColorPicker$Wheel;->hue:Landroid/graphics/Shader;

    .line 126
    new-instance p1, Landroid/graphics/RadialGradient;

    iget v2, p0, Lcom/gmodvr/flat/ControlColorPicker$Wheel;->cx:F

    iget v3, p0, Lcom/gmodvr/flat/ControlColorPicker$Wheel;->cy:F

    iget v4, p0, Lcom/gmodvr/flat/ControlColorPicker$Wheel;->radius:F

    const v6, 0xffffff

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v5, -0x1

    move-object v1, p1

    invoke-direct/range {v1 .. v7}, Landroid/graphics/RadialGradient;-><init>(FFFIILandroid/graphics/Shader$TileMode;)V

    iput-object p1, p0, Lcom/gmodvr/flat/ControlColorPicker$Wheel;->saturation:Landroid/graphics/Shader;

    return-void

    nop

    :array_4e
    .array-data 4
        -0x10000
        -0x100
        -0xff0100
        -0xff0001
        -0xffff01
        -0xff01
        -0x10000
    .end array-data
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 9

    .line 170
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 171
    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_44

    .line 173
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v3, p0, Lcom/gmodvr/flat/ControlColorPicker$Wheel;->cx:F

    sub-float/2addr v0, v3

    float-to-double v3, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v5, p0, Lcom/gmodvr/flat/ControlColorPicker$Wheel;->cy:F

    sub-float/2addr v0, v5

    float-to-double v5, v0

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v3

    iget v0, p0, Lcom/gmodvr/flat/ControlColorPicker$Wheel;->radius:F

    float-to-double v5, v0

    cmpl-double v0, v3, v5

    if-lez v0, :cond_2b

    return v1

    .line 174
    :cond_2b
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/gmodvr/flat/ControlColorPicker$Wheel;->finger:I

    .line 175
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 176
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/gmodvr/flat/ControlColorPicker$Wheel;->pick(FF)V

    return v2

    .line 179
    :cond_44
    iget v3, p0, Lcom/gmodvr/flat/ControlColorPicker$Wheel;->finger:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_4a

    return v1

    .line 180
    :cond_4a
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    const/4 v3, 0x6

    if-ltz v1, :cond_69

    const/4 v4, 0x2

    if-eq v0, v4, :cond_5e

    if-eq v0, v2, :cond_5e

    if-ne v0, v3, :cond_69

    .line 182
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v4

    if-ne v4, v1, :cond_69

    .line 183
    :cond_5e
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    invoke-direct {p0, v4, v1}, Lcom/gmodvr/flat/ControlColorPicker$Wheel;->pick(FF)V

    :cond_69
    const/4 v1, 0x3

    if-eq v0, v2, :cond_7c

    if-eq v0, v1, :cond_7c

    if-ne v0, v3, :cond_84

    .line 186
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iget v3, p0, Lcom/gmodvr/flat/ControlColorPicker$Wheel;->finger:I

    if-ne p1, v3, :cond_84

    .line 187
    :cond_7c
    invoke-direct {p0}, Lcom/gmodvr/flat/ControlColorPicker$Wheel;->release()V

    if-eq v0, v1, :cond_84

    .line 188
    invoke-virtual {p0}, Lcom/gmodvr/flat/ControlColorPicker$Wheel;->performClick()Z

    :cond_84
    return v2
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .registers 6

    .line 213
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_31

    const/16 v0, 0x1000

    if-eq p1, v0, :cond_e

    const/16 v1, 0x2000

    if-ne p1, v1, :cond_31

    .line 215
    :cond_e
    iget-object p2, p0, Lcom/gmodvr/flat/ControlColorPicker$Wheel;->this$0:Lcom/gmodvr/flat/ControlColorPicker;

    invoke-static {p2}, Lcom/gmodvr/flat/ControlColorPicker;->-$$Nest$fgethsv(Lcom/gmodvr/flat/ControlColorPicker;)[F

    move-result-object p2

    iget-object v1, p0, Lcom/gmodvr/flat/ControlColorPicker$Wheel;->this$0:Lcom/gmodvr/flat/ControlColorPicker;

    invoke-static {v1}, Lcom/gmodvr/flat/ControlColorPicker;->-$$Nest$fgethsv(Lcom/gmodvr/flat/ControlColorPicker;)[F

    move-result-object v1

    const/4 v2, 0x0

    aget v1, v1, v2

    if-ne p1, v0, :cond_21

    const/4 p1, 0x5

    goto :goto_23

    :cond_21
    const/16 p1, 0x163

    :goto_23
    int-to-float p1, p1

    add-float/2addr v1, p1

    const/high16 p1, 0x43b40000    # 360.0f

    rem-float/2addr v1, p1

    aput v1, p2, v2

    .line 216
    iget-object p0, p0, Lcom/gmodvr/flat/ControlColorPicker$Wheel;->this$0:Lcom/gmodvr/flat/ControlColorPicker;

    invoke-static {p0}, Lcom/gmodvr/flat/ControlColorPicker;->-$$Nest$mpublish(Lcom/gmodvr/flat/ControlColorPicker;)V

    const/4 p0, 0x1

    return p0

    .line 219
    :cond_31
    invoke-super {p0, p1, p2}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result p0

    return p0
.end method

.method public performClick()Z
    .registers 1

    .line 222
    invoke-super {p0}, Landroid/view/View;->performClick()Z

    const/4 p0, 0x1

    return p0
.end method

###### Class com.gmodvr.flat.ControlColorPicker$$ExternalSyntheticLambda0 (com.gmodvr.flat.ControlColorPicker$$ExternalSyntheticLambda0)
.class public final synthetic Lcom/gmodvr/flat/ControlColorPicker$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/ControlColorPicker;


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/ControlColorPicker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/ControlColorPicker$$ExternalSyntheticLambda0;->f$0:Lcom/gmodvr/flat/ControlColorPicker;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/gmodvr/flat/ControlColorPicker$$ExternalSyntheticLambda0;->f$0:Lcom/gmodvr/flat/ControlColorPicker;

    invoke-static {p0}, Lcom/gmodvr/flat/ControlColorPicker;->$r8$lambda$rj85FfYXj7kuCrvA-qQlMBwajrQ(Lcom/gmodvr/flat/ControlColorPicker;)V

    return-void
.end method
