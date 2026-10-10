###### Class com.gmodvr.flat.CrashBanner (com.gmodvr.flat.CrashBanner)
.class final Lcom/gmodvr/flat/CrashBanner;
.super Ljava/lang/Object;
.source "CrashBanner.java"


# instance fields
.field private final activity:Landroid/app/Activity;

.field private container:Landroid/widget/LinearLayout;

.field private final delayedScan:Ljava/lang/Runnable;

.field private final main:Landroid/os/Handler;

.field private shown:Lcom/gmodvr/flat/DiagnosticReports$Report;

.field private skin:Lcom/gmodvr/flat/Skin;


# direct methods
.method public static synthetic $r8$lambda$31TojuLFlPsCoui0L2KnPMfczBw(Lcom/gmodvr/flat/CrashBanner;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/gmodvr/flat/CrashBanner;->hide()V

    return-void
.end method

.method public static synthetic $r8$lambda$PzFQRt75RGfKejHeFiOU853YN4g(Lcom/gmodvr/flat/CrashBanner;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/gmodvr/flat/CrashBanner;->scan()V

    return-void
.end method

.method public static synthetic $r8$lambda$SNRVroS-oa0Yv_ErC5dXUYBo86w(Lcom/gmodvr/flat/CrashBanner;Lcom/gmodvr/flat/DiagnosticReports$Report;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gmodvr/flat/CrashBanner;->lambda$fill$2(Lcom/gmodvr/flat/DiagnosticReports$Report;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SnWTOXvDJxaUl-y1fyEXdxZSmDw(Lcom/gmodvr/flat/CrashBanner;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/gmodvr/flat/CrashBanner;->lambda$scan$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$SuFnWcmgK5Az6MDB69FqMDnQTmg(Lcom/gmodvr/flat/CrashBanner;Lcom/gmodvr/flat/DiagnosticReports$Report;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gmodvr/flat/CrashBanner;->lambda$scan$0(Lcom/gmodvr/flat/DiagnosticReports$Report;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kr_h70HqSfBvjY43mBR7yBnsdsQ(Lcom/gmodvr/flat/CrashBanner;Lcom/gmodvr/flat/DiagnosticReports$Report;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gmodvr/flat/CrashBanner;->lambda$fill$3(Lcom/gmodvr/flat/DiagnosticReports$Report;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .registers 4

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/gmodvr/flat/CrashBanner;->main:Landroid/os/Handler;

    .line 25
    new-instance v0, Lcom/gmodvr/flat/CrashBanner$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/gmodvr/flat/CrashBanner$$ExternalSyntheticLambda1;-><init>(Lcom/gmodvr/flat/CrashBanner;)V

    iput-object v0, p0, Lcom/gmodvr/flat/CrashBanner;->delayedScan:Ljava/lang/Runnable;

    .line 27
    iput-object p1, p0, Lcom/gmodvr/flat/CrashBanner;->activity:Landroid/app/Activity;

    return-void
.end method

.method private fill(Lcom/gmodvr/flat/DiagnosticReports$Report;)V
    .registers 10

    .line 69
    iget-object v0, p0, Lcom/gmodvr/flat/CrashBanner;->container:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_c8

    iget-object v1, p0, Lcom/gmodvr/flat/CrashBanner;->skin:Lcom/gmodvr/flat/Skin;

    if-nez v1, :cond_a

    goto/16 :goto_c8

    .line 70
    :cond_a
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 71
    iget-object v0, p0, Lcom/gmodvr/flat/CrashBanner;->skin:Lcom/gmodvr/flat/Skin;

    const v1, -0x179fb1

    invoke-virtual {v0, v1}, Lcom/gmodvr/flat/Skin;->panel(I)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 72
    iget-object v2, p0, Lcom/gmodvr/flat/CrashBanner;->skin:Lcom/gmodvr/flat/Skin;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p1, Lcom/gmodvr/flat/DiagnosticReports$Report;->kind:Lcom/gmodvr/flat/DiagnosticReports$Kind;

    iget-object v4, v4, Lcom/gmodvr/flat/DiagnosticReports$Kind;->title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " \u00b7 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "MMM d, HH:mm"

    .line 73
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v5, Ljava/util/Date;

    iget-wide v6, p1, Lcom/gmodvr/flat/DiagnosticReports$Report;->epochMs:J

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 72
    invoke-virtual {v2, v3, v1}, Lcom/gmodvr/flat/Skin;->label(Ljava/lang/CharSequence;I)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 74
    iget-object v1, p0, Lcom/gmodvr/flat/CrashBanner;->skin:Lcom/gmodvr/flat/Skin;

    const-string v2, "The game closed unexpectedly. Share crash report?"

    const v3, -0x191513

    const/high16 v4, 0x41600000    # 14.0f

    invoke-virtual {v1, v2, v4, v3}, Lcom/gmodvr/flat/Skin;->text(Ljava/lang/CharSequence;FI)Landroid/widget/TextView;

    move-result-object v1

    .line 75
    iget-object v2, p0, Lcom/gmodvr/flat/CrashBanner;->skin:Lcom/gmodvr/flat/Skin;

    const/high16 v3, 0x40800000    # 4.0f

    invoke-virtual {v2, v3}, Lcom/gmodvr/flat/Skin;->below(F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 76
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/gmodvr/flat/CrashBanner;->activity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 77
    iget-object v2, p0, Lcom/gmodvr/flat/CrashBanner;->skin:Lcom/gmodvr/flat/Skin;

    new-instance v3, Lcom/gmodvr/flat/CrashBanner$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0, p1}, Lcom/gmodvr/flat/CrashBanner$$ExternalSyntheticLambda3;-><init>(Lcom/gmodvr/flat/CrashBanner;Lcom/gmodvr/flat/DiagnosticReports$Report;)V

    const-string v5, "Share"

    invoke-virtual {v2, v5, v3}, Lcom/gmodvr/flat/Skin;->secondary(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/widget/Button;

    move-result-object v2

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, 0x0

    const/4 v6, -0x2

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v3, v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 79
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 80
    iget-object v3, p0, Lcom/gmodvr/flat/CrashBanner;->skin:Lcom/gmodvr/flat/Skin;

    const/high16 v6, 0x41000000    # 8.0f

    invoke-virtual {v3, v6}, Lcom/gmodvr/flat/Skin;->dp(F)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 81
    iget-object v3, p0, Lcom/gmodvr/flat/CrashBanner;->skin:Lcom/gmodvr/flat/Skin;

    new-instance v6, Lcom/gmodvr/flat/CrashBanner$$ExternalSyntheticLambda4;

    invoke-direct {v6, p0, p1}, Lcom/gmodvr/flat/CrashBanner$$ExternalSyntheticLambda4;-><init>(Lcom/gmodvr/flat/CrashBanner;Lcom/gmodvr/flat/DiagnosticReports$Report;)V

    const-string p1, "Dismiss"

    invoke-virtual {v3, p1, v6}, Lcom/gmodvr/flat/Skin;->secondary(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {v1, p1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 85
    iget-object p1, p0, Lcom/gmodvr/flat/CrashBanner;->skin:Lcom/gmodvr/flat/Skin;

    const/high16 v2, 0x41200000    # 10.0f

    invoke-virtual {p1, v2}, Lcom/gmodvr/flat/Skin;->below(F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 86
    iget-object p1, p0, Lcom/gmodvr/flat/CrashBanner;->skin:Lcom/gmodvr/flat/Skin;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/gmodvr/flat/Skin;->below(F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p1

    .line 87
    iget-object v1, p0, Lcom/gmodvr/flat/CrashBanner;->skin:Lcom/gmodvr/flat/Skin;

    invoke-virtual {v1, v4}, Lcom/gmodvr/flat/Skin;->dp(F)I

    move-result v1

    iput v1, p1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 88
    iget-object v1, p0, Lcom/gmodvr/flat/CrashBanner;->container:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 89
    iget-object p0, p0, Lcom/gmodvr/flat/CrashBanner;->container:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_c8
    :goto_c8
    return-void
.end method

.method private hide()V
    .registers 2

    const/4 v0, 0x0

    .line 64
    iput-object v0, p0, Lcom/gmodvr/flat/CrashBanner;->shown:Lcom/gmodvr/flat/DiagnosticReports$Report;

    .line 65
    iget-object v0, p0, Lcom/gmodvr/flat/CrashBanner;->container:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object p0, p0, Lcom/gmodvr/flat/CrashBanner;->container:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_11
    return-void
.end method

.method private synthetic lambda$fill$2(Lcom/gmodvr/flat/DiagnosticReports$Report;)V
    .registers 5

    .line 78
    iget-object v0, p0, Lcom/gmodvr/flat/CrashBanner;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/gmodvr/flat/CrashBanner;->skin:Lcom/gmodvr/flat/Skin;

    iget-object p1, p1, Lcom/gmodvr/flat/DiagnosticReports$Report;->file:Ljava/io/File;

    new-instance v2, Lcom/gmodvr/flat/CrashBanner$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/gmodvr/flat/CrashBanner$$ExternalSyntheticLambda2;-><init>(Lcom/gmodvr/flat/CrashBanner;)V

    invoke-static {v0, v1, p1, v2}, Lcom/gmodvr/flat/LogShare;->share(Landroid/app/Activity;Lcom/gmodvr/flat/Skin;Ljava/io/File;Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$fill$3(Lcom/gmodvr/flat/DiagnosticReports$Report;)V
    .registers 5

    .line 82
    iget-object v0, p0, Lcom/gmodvr/flat/CrashBanner;->activity:Landroid/app/Activity;

    iget-wide v1, p1, Lcom/gmodvr/flat/DiagnosticReports$Report;->epochMs:J

    invoke-static {v0, v1, v2}, Lcom/gmodvr/flat/CrashReporter;->markBannerSeen(Landroid/content/Context;J)V

    .line 83
    invoke-direct {p0}, Lcom/gmodvr/flat/CrashBanner;->hide()V

    return-void
.end method

.method private synthetic lambda$scan$0(Lcom/gmodvr/flat/DiagnosticReports$Report;)V
    .registers 3

    .line 56
    iget-object v0, p0, Lcom/gmodvr/flat/CrashBanner;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/gmodvr/flat/CrashBanner;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_1c

    .line 57
    :cond_11
    iput-object p1, p0, Lcom/gmodvr/flat/CrashBanner;->shown:Lcom/gmodvr/flat/DiagnosticReports$Report;

    if-nez p1, :cond_19

    .line 58
    invoke-direct {p0}, Lcom/gmodvr/flat/CrashBanner;->hide()V

    goto :goto_1c

    :cond_19
    invoke-direct {p0, p1}, Lcom/gmodvr/flat/CrashBanner;->fill(Lcom/gmodvr/flat/DiagnosticReports$Report;)V

    :cond_1c
    :goto_1c
    return-void
.end method

.method private synthetic lambda$scan$1()V
    .registers 4

    .line 52
    :try_start_0
    iget-object v0, p0, Lcom/gmodvr/flat/CrashBanner;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/gmodvr/flat/CrashReporter;->scan(Landroid/content/Context;)Lcom/gmodvr/flat/DiagnosticReports$Report;

    move-result-object v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    goto :goto_c

    :catch_b
    const/4 v0, 0x0

    .line 55
    :goto_c
    iget-object v1, p0, Lcom/gmodvr/flat/CrashBanner;->main:Landroid/os/Handler;

    new-instance v2, Lcom/gmodvr/flat/CrashBanner$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0, v0}, Lcom/gmodvr/flat/CrashBanner$$ExternalSyntheticLambda5;-><init>(Lcom/gmodvr/flat/CrashBanner;Lcom/gmodvr/flat/DiagnosticReports$Report;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private scan()V
    .registers 3

    .line 50
    sget-object v0, Lcom/gmodvr/flat/CrashReporter;->EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/gmodvr/flat/CrashBanner$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/gmodvr/flat/CrashBanner$$ExternalSyntheticLambda0;-><init>(Lcom/gmodvr/flat/CrashBanner;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public refresh()V
    .registers 4

    .line 42
    iget-object v0, p0, Lcom/gmodvr/flat/CrashBanner;->main:Landroid/os/Handler;

    iget-object v1, p0, Lcom/gmodvr/flat/CrashBanner;->delayedScan:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 43
    invoke-direct {p0}, Lcom/gmodvr/flat/CrashBanner;->scan()V

    .line 44
    iget-object v0, p0, Lcom/gmodvr/flat/CrashBanner;->main:Landroid/os/Handler;

    iget-object p0, p0, Lcom/gmodvr/flat/CrashBanner;->delayedScan:Ljava/lang/Runnable;

    const-wide/16 v1, 0xfa0

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public stop()V
    .registers 2

    .line 47
    iget-object p0, p0, Lcom/gmodvr/flat/CrashBanner;->main:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public view(Lcom/gmodvr/flat/Skin;)Landroid/view/View;
    .registers 3

    .line 31
    iput-object p1, p0, Lcom/gmodvr/flat/CrashBanner;->skin:Lcom/gmodvr/flat/Skin;

    .line 32
    new-instance p1, Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/gmodvr/flat/CrashBanner;->activity:Landroid/app/Activity;

    invoke-direct {p1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/gmodvr/flat/CrashBanner;->container:Landroid/widget/LinearLayout;

    const/4 v0, 0x1

    .line 33
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 34
    iget-object p1, p0, Lcom/gmodvr/flat/CrashBanner;->container:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 35
    iget-object p1, p0, Lcom/gmodvr/flat/CrashBanner;->shown:Lcom/gmodvr/flat/DiagnosticReports$Report;

    if-eqz p1, :cond_1d

    invoke-direct {p0, p1}, Lcom/gmodvr/flat/CrashBanner;->fill(Lcom/gmodvr/flat/DiagnosticReports$Report;)V

    .line 36
    :cond_1d
    iget-object p0, p0, Lcom/gmodvr/flat/CrashBanner;->container:Landroid/widget/LinearLayout;

    return-object p0
.end method

###### Class com.gmodvr.flat.CrashBanner$$ExternalSyntheticLambda0 (com.gmodvr.flat.CrashBanner$$ExternalSyntheticLambda0)
.class public final synthetic Lcom/gmodvr/flat/CrashBanner$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/CrashBanner;


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/CrashBanner;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/CrashBanner$$ExternalSyntheticLambda0;->f$0:Lcom/gmodvr/flat/CrashBanner;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/gmodvr/flat/CrashBanner$$ExternalSyntheticLambda0;->f$0:Lcom/gmodvr/flat/CrashBanner;

    invoke-static {p0}, Lcom/gmodvr/flat/CrashBanner;->$r8$lambda$SnWTOXvDJxaUl-y1fyEXdxZSmDw(Lcom/gmodvr/flat/CrashBanner;)V

    return-void
.end method

###### Class com.gmodvr.flat.CrashBanner$$ExternalSyntheticLambda1 (com.gmodvr.flat.CrashBanner$$ExternalSyntheticLambda1)
.class public final synthetic Lcom/gmodvr/flat/CrashBanner$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/CrashBanner;


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/CrashBanner;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/CrashBanner$$ExternalSyntheticLambda1;->f$0:Lcom/gmodvr/flat/CrashBanner;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/gmodvr/flat/CrashBanner$$ExternalSyntheticLambda1;->f$0:Lcom/gmodvr/flat/CrashBanner;

    invoke-static {p0}, Lcom/gmodvr/flat/CrashBanner;->$r8$lambda$PzFQRt75RGfKejHeFiOU853YN4g(Lcom/gmodvr/flat/CrashBanner;)V

    return-void
.end method

###### Class com.gmodvr.flat.CrashBanner$$ExternalSyntheticLambda2 (com.gmodvr.flat.CrashBanner$$ExternalSyntheticLambda2)
.class public final synthetic Lcom/gmodvr/flat/CrashBanner$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/CrashBanner;


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/CrashBanner;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/CrashBanner$$ExternalSyntheticLambda2;->f$0:Lcom/gmodvr/flat/CrashBanner;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/gmodvr/flat/CrashBanner$$ExternalSyntheticLambda2;->f$0:Lcom/gmodvr/flat/CrashBanner;

    invoke-static {p0}, Lcom/gmodvr/flat/CrashBanner;->$r8$lambda$31TojuLFlPsCoui0L2KnPMfczBw(Lcom/gmodvr/flat/CrashBanner;)V

    return-void
.end method

###### Class com.gmodvr.flat.CrashBanner$$ExternalSyntheticLambda3 (com.gmodvr.flat.CrashBanner$$ExternalSyntheticLambda3)
.class public final synthetic Lcom/gmodvr/flat/CrashBanner$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/CrashBanner;

.field public final synthetic f$1:Lcom/gmodvr/flat/DiagnosticReports$Report;


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/CrashBanner;Lcom/gmodvr/flat/DiagnosticReports$Report;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/CrashBanner$$ExternalSyntheticLambda3;->f$0:Lcom/gmodvr/flat/CrashBanner;

    iput-object p2, p0, Lcom/gmodvr/flat/CrashBanner$$ExternalSyntheticLambda3;->f$1:Lcom/gmodvr/flat/DiagnosticReports$Report;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/gmodvr/flat/CrashBanner$$ExternalSyntheticLambda3;->f$0:Lcom/gmodvr/flat/CrashBanner;

    iget-object p0, p0, Lcom/gmodvr/flat/CrashBanner$$ExternalSyntheticLambda3;->f$1:Lcom/gmodvr/flat/DiagnosticReports$Report;

    invoke-static {v0, p0}, Lcom/gmodvr/flat/CrashBanner;->$r8$lambda$SNRVroS-oa0Yv_ErC5dXUYBo86w(Lcom/gmodvr/flat/CrashBanner;Lcom/gmodvr/flat/DiagnosticReports$Report;)V

    return-void
.end method

###### Class com.gmodvr.flat.CrashBanner$$ExternalSyntheticLambda4 (com.gmodvr.flat.CrashBanner$$ExternalSyntheticLambda4)
.class public final synthetic Lcom/gmodvr/flat/CrashBanner$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/CrashBanner;

.field public final synthetic f$1:Lcom/gmodvr/flat/DiagnosticReports$Report;


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/CrashBanner;Lcom/gmodvr/flat/DiagnosticReports$Report;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/CrashBanner$$ExternalSyntheticLambda4;->f$0:Lcom/gmodvr/flat/CrashBanner;

    iput-object p2, p0, Lcom/gmodvr/flat/CrashBanner$$ExternalSyntheticLambda4;->f$1:Lcom/gmodvr/flat/DiagnosticReports$Report;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/gmodvr/flat/CrashBanner$$ExternalSyntheticLambda4;->f$0:Lcom/gmodvr/flat/CrashBanner;

    iget-object p0, p0, Lcom/gmodvr/flat/CrashBanner$$ExternalSyntheticLambda4;->f$1:Lcom/gmodvr/flat/DiagnosticReports$Report;

    invoke-static {v0, p0}, Lcom/gmodvr/flat/CrashBanner;->$r8$lambda$kr_h70HqSfBvjY43mBR7yBnsdsQ(Lcom/gmodvr/flat/CrashBanner;Lcom/gmodvr/flat/DiagnosticReports$Report;)V

    return-void
.end method

###### Class com.gmodvr.flat.CrashBanner$$ExternalSyntheticLambda5 (com.gmodvr.flat.CrashBanner$$ExternalSyntheticLambda5)
.class public final synthetic Lcom/gmodvr/flat/CrashBanner$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/CrashBanner;

.field public final synthetic f$1:Lcom/gmodvr/flat/DiagnosticReports$Report;


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/CrashBanner;Lcom/gmodvr/flat/DiagnosticReports$Report;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/CrashBanner$$ExternalSyntheticLambda5;->f$0:Lcom/gmodvr/flat/CrashBanner;

    iput-object p2, p0, Lcom/gmodvr/flat/CrashBanner$$ExternalSyntheticLambda5;->f$1:Lcom/gmodvr/flat/DiagnosticReports$Report;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/gmodvr/flat/CrashBanner$$ExternalSyntheticLambda5;->f$0:Lcom/gmodvr/flat/CrashBanner;

    iget-object p0, p0, Lcom/gmodvr/flat/CrashBanner$$ExternalSyntheticLambda5;->f$1:Lcom/gmodvr/flat/DiagnosticReports$Report;

    invoke-static {v0, p0}, Lcom/gmodvr/flat/CrashBanner;->$r8$lambda$SuFnWcmgK5Az6MDB69FqMDnQTmg(Lcom/gmodvr/flat/CrashBanner;Lcom/gmodvr/flat/DiagnosticReports$Report;)V

    return-void
.end method
