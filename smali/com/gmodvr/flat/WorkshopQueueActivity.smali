###### Class com.gmodvr.flat.WorkshopQueueActivity (com.gmodvr.flat.WorkshopQueueActivity)
.class public final Lcom/gmodvr/flat/WorkshopQueueActivity;
.super Landroid/app/Activity;
.source "WorkshopQueueActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gmodvr/flat/WorkshopQueueActivity$SharedPrefsView;,
        Lcom/gmodvr/flat/WorkshopQueueActivity$Row;
    }
.end annotation


# static fields
.field private static final DIM:I = -0xa49991

.field private static final ERROR:I = -0x179fb1

.field private static final MUTED:I = -0x72665d

.field private static final OK:I = -0x793691

.field private static final TEXT:I = -0x191513


# instance fields
.field private adapter:Landroid/widget/BaseAdapter;

.field private cancel:Landroid/widget/TextView;

.field private checklistControls:Landroid/widget/LinearLayout;

.field private clear:Landroid/widget/TextView;

.field private destroyed:Z

.field private downloadAll:Landroid/widget/Button;

.field private downloadMissing:Landroid/widget/Button;

.field private downloadSelected:Landroid/widget/Button;

.field private error:Ljava/lang/String;

.field private itemBar:Landroid/widget/ProgressBar;

.field private itemText:Landroid/widget/TextView;

.field private linked:Landroid/widget/CheckBox;

.field private list:Landroid/widget/ListView;

.field private loading:Z

.field private note:Landroid/widget/TextView;

.field private overallBar:Landroid/widget/ProgressBar;

.field private overallText:Landroid/widget/TextView;

.field private pause:Landroid/widget/Button;

.field private queue:Lcom/gmodvr/flat/WorkshopQueue;

.field private final refresh:Ljava/lang/Runnable;

.field private resume:Landroid/widget/Button;

.field private retry:Landroid/widget/Button;

.field private reviewControls:Landroid/widget/LinearLayout;

.field private reviewing:Z

.field private final rows:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/gmodvr/flat/WorkshopQueue$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private runControls:Landroid/widget/LinearLayout;

.field private signature:Ljava/lang/String;

.field private skin:Lcom/gmodvr/flat/Skin;

.field private space:Landroid/widget/TextView;

.field private summary:Landroid/widget/TextView;

.field private title:Landroid/widget/TextView;

.field private final ui:Landroid/os/Handler;

.field private usable:J

.field private final worker:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public static synthetic $r8$lambda$4QR1ERQEa0jKjunZ3YKqNLYvFTQ(Lcom/gmodvr/flat/WorkshopQueueActivity;Landroid/view/View;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gmodvr/flat/WorkshopQueueActivity;->lambda$onCreate$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$633zkwMdvlONIosQ42QRW8vuGEo(Lcom/gmodvr/flat/WorkshopQueueActivity;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/gmodvr/flat/WorkshopQueueActivity;->clearFinished()V

    return-void
.end method

.method public static synthetic $r8$lambda$8pLIsemJiLcnFRcRvSnsW0zYKzs(Lcom/gmodvr/flat/WorkshopQueueActivity;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/gmodvr/flat/WorkshopQueueActivity;->resume()V

    return-void
.end method

.method public static synthetic $r8$lambda$9a3SDv7_tZrJAjCA-b2x2Mpf-sw(Lcom/gmodvr/flat/WorkshopQueueActivity;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/gmodvr/flat/WorkshopQueueActivity;->retryFailed()V

    return-void
.end method

.method public static synthetic $r8$lambda$B-E1gdzxgJFxjJ8vSY-9MAg7OpY(Lcom/gmodvr/flat/WorkshopQueueActivity;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/gmodvr/flat/WorkshopQueueActivity;->cancel()V

    return-void
.end method

.method public static synthetic $r8$lambda$Exv653IFth5ZpYx6nVMuAgNlFvk(Lcom/gmodvr/flat/WorkshopQueueActivity;Ljava/lang/String;Lcom/gmodvr/flat/WorkshopQueue;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/gmodvr/flat/WorkshopQueueActivity;->lambda$begin$8(Ljava/lang/String;Lcom/gmodvr/flat/WorkshopQueue;)V

    return-void
.end method

.method public static synthetic $r8$lambda$GfT-GRDHFH6zZ4PViNzdCHI5n4w(Lcom/gmodvr/flat/WorkshopQueueActivity;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gmodvr/flat/WorkshopQueueActivity;->lambda$clearFinished$13(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Lux99JY-n4U57YN36zfJoeWOE9g(Lcom/gmodvr/flat/WorkshopQueueActivity;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/gmodvr/flat/WorkshopQueueActivity;->lambda$onCreate$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$M7WDT9OtRRpHcz8LIRKa8Mt7iV4(Lcom/gmodvr/flat/WorkshopQueueActivity;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gmodvr/flat/WorkshopQueueActivity;->lambda$cancel$10(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Moy6imREX6xEhL2KJiW2mR1TeGE(Lcom/gmodvr/flat/WorkshopQueueActivity;Lcom/gmodvr/flat/WorkshopQueue;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gmodvr/flat/WorkshopQueueActivity;->lambda$retryFailed$12(Lcom/gmodvr/flat/WorkshopQueue;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VivPwADUh5ZmAcQEMcaNK0UAvd8(Lcom/gmodvr/flat/WorkshopQueueActivity;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gmodvr/flat/WorkshopQueueActivity;->lambda$retryFailed$11(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Vz-df6nKEVAoOfqdR32tlRW707Q(Lcom/gmodvr/flat/WorkshopQueueActivity;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/gmodvr/flat/WorkshopQueueActivity;->lambda$onCreate$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$dZrmbBAMSysG-kzytXHjGOrEdW4(Lcom/gmodvr/flat/WorkshopQueueActivity;Lcom/gmodvr/flat/WorkshopQueue;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gmodvr/flat/WorkshopQueueActivity;->lambda$begin$9(Lcom/gmodvr/flat/WorkshopQueue;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fwAe-a9NZA-kUdss9VDzpKdJEnE(Lcom/gmodvr/flat/WorkshopQueueActivity;Lcom/gmodvr/flat/WorkshopQueue;JLjava/lang/String;)V
    .registers 5

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/gmodvr/flat/WorkshopQueueActivity;->lambda$load$6(Lcom/gmodvr/flat/WorkshopQueue;JLjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gEm3Ni_3PRiMhJfRHff4e3lNCWY(Lcom/gmodvr/flat/WorkshopQueueActivity;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/gmodvr/flat/WorkshopQueueActivity;->lambda$onCreate$5()V

    return-void
.end method

.method public static synthetic $r8$lambda$gqwYWUAZvGYbTD-gnEnSTrjCCJw(Lcom/gmodvr/flat/WorkshopQueueActivity;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/gmodvr/flat/WorkshopQueueActivity;->lambda$load$7()V

    return-void
.end method

.method public static synthetic $r8$lambda$lO0bcGgSL-eYuZ9lg6LprAmoTus(Lcom/gmodvr/flat/WorkshopQueueActivity;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/gmodvr/flat/WorkshopQueueActivity;->lambda$onCreate$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$va6YLIUlgESfgeTRd0NOZlCNYAE(Lcom/gmodvr/flat/WorkshopQueueActivity;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/gmodvr/flat/WorkshopQueueActivity;->lambda$onCreate$3()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetqueue(Lcom/gmodvr/flat/WorkshopQueueActivity;)Lcom/gmodvr/flat/WorkshopQueue;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/gmodvr/flat/WorkshopQueueActivity;->queue:Lcom/gmodvr/flat/WorkshopQueue;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetreviewing(Lcom/gmodvr/flat/WorkshopQueueActivity;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/gmodvr/flat/WorkshopQueueActivity;->reviewing:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetrows(Lcom/gmodvr/flat/WorkshopQueueActivity;)Ljava/util/List;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/gmodvr/flat/WorkshopQueueActivity;->rows:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetui(Lcom/gmodvr/flat/WorkshopQueueActivity;)Landroid/os/Handler;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/gmodvr/flat/WorkshopQueueActivity;->ui:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputsignature(Lcom/gmodvr/flat/WorkshopQueueActivity;Ljava/lang/String;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/gmodvr/flat/WorkshopQueueActivity;->signature:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcheck(Lcom/gmodvr/flat/WorkshopQueueActivity;Ljava/lang/String;)Landroid/widget/CheckBox;
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gmodvr/flat/WorkshopQueueActivity;->check(Ljava/lang/String;)Landroid/widget/CheckBox;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mcolor(Lcom/gmodvr/flat/WorkshopQueueActivity;Lcom/gmodvr/flat/WorkshopQueue$Entry;)I
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gmodvr/flat/WorkshopQueueActivity;->color(Lcom/gmodvr/flat/WorkshopQueue$Entry;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mdetail(Lcom/gmodvr/flat/WorkshopQueueActivity;Lcom/gmodvr/flat/WorkshopQueue$Entry;)Ljava/lang/String;
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gmodvr/flat/WorkshopQueueActivity;->detail(Lcom/gmodvr/flat/WorkshopQueue$Entry;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mdp(Lcom/gmodvr/flat/WorkshopQueueActivity;F)I
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gmodvr/flat/WorkshopQueueActivity;->dp(F)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mrender(Lcom/gmodvr/flat/WorkshopQueueActivity;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/gmodvr/flat/WorkshopQueueActivity;->render()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mtext(Lcom/gmodvr/flat/WorkshopQueueActivity;Ljava/lang/String;FI)Landroid/widget/TextView;
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/gmodvr/flat/WorkshopQueueActivity;->text(Ljava/lang/String;FI)Landroid/widget/TextView;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mvertical(Lcom/gmodvr/flat/WorkshopQueueActivity;)Landroid/widget/LinearLayout;
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/gmodvr/flat/WorkshopQueueActivity;->vertical()Landroid/widget/LinearLayout;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .registers 3

    .line 20
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 21
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/gmodvr/flat/WorkshopQueueActivity;->ui:Landroid/os/Handler;

    .line 22
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/gmodvr/flat/WorkshopQueueActivity;->worker:Ljava/util/concurrent/ExecutorService;

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gmodvr/flat/WorkshopQueueActivity;->rows:Ljava/util/List;

    const-wide/16 v0, -0x1

    .line 26
    iput-wide v0, p0, Lcom/gmodvr/flat/WorkshopQueueActivity;->usable:J

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lcom/gmodvr/flat/WorkshopQueueActivity;->signature:Ljava/lang/String;

    .line 35
    new-instance v0, Lcom/gmodvr/flat/WorkshopQueueActivity$1;

    invoke-direct {v0, p0}, Lcom/gmodvr/flat/WorkshopQueueActivity$1;-><init>(Lcom/gmodvr/flat/WorkshopQueueActivity;)V

    iput-object v0, p0, Lcom/gmodvr/flat/WorkshopQueueActivity;->refresh:Ljava/lang/Runnable;

    return-void
.end method

.method private bar()Landroid/widget/ProgressBar;
    .registers 2

    .line 480
    iget-object p0, p0, Lcom/gmodvr/flat/WorkshopQueueActivity;->skin:Lcom/gmodvr/flat/Skin;

    invoke-virtual {p0}, Lcom/gmodvr/flat/Skin;->progress()Landroid/widget/ProgressBar;

    move-result-object p0

    const/16 v0, 0x3e8

    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->setMax(I)V

    return-object p0
.end method

.method private barParams()Landroid/widget/LinearLayout$LayoutParams;
    .registers 3

    const/high16 v0, 0x41000000    # 8.0f

    .line 481
    invoke-direct {p0, v0}, Lcom/gmodvr/flat/WorkshopQueueActivity;->below(F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    const/high16 v1, 0x40400000    # 3.0f

    invoke-direct {p0, v1}, Lcom/gmodvr/flat/WorkshopQueueActivity;->dp(F)I

    move-result p0

    iput p0, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    return-object v0
.end method

.method private begin(Lcom/gmodvr/flat/WorkshopQueue$Mode;)V
    .registers 6

    .line 154
    iget-object v0, p0, Lcom/gmodvr/flat/WorkshopQueueActivity;->queue:Lcom/gmodvr/flat/WorkshopQueue;

    if-eqz v0, :cond_6e

    iget-boolean v1, p0, Lcom/gmodvr/flat/WorkshopQueueActivity;->reviewing:Z

    if-nez v1, :cond_9

    goto :goto_6e

    :cond_9
    if-eqz p1, :cond_e

    .line 155
    invoke-virtual {v0, p1}, Lcom/gmodvr/flat/WorkshopQueue;->select(Lcom/gmodvr/flat/WorkshopQueue$Mode;)V

    .line 156
    :cond_e
    iget-object p1, p0, Lcom/gmodvr/flat/WorkshopQueueActivity;->queue:Lcom/gmodvr/flat/WorkshopQueue;

    invoke-virtual {p1}, Lcom/gmodvr/flat/WorkshopQueue;->summary()Lcom/gmodvr/flat/WorkshopQueue$Summary;

    move-result-object p1

    .line 157
    iget v0, p1, Lcom/gmodvr/flat/WorkshopQueue$Summary;->selected:I

    if-nez v0, :cond_20

    const-string p1, "Nothing is selected."

    iput-object p1, p0, Lcom/gmodvr/flat/WorkshopQueueActivity;->error:Ljava/lang/String;

    invoke-direct {p0}, Lcom/gmodvr/flat/WorkshopQueueActivity;->render()V

    return-void

    .line 158
    :cond_20
    iget-wide v0, p0, Lcom/gmodvr/flat/WorkshopQueueActivity;->usable:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_5e

    iget-wide v2, p1, Lcom/gmodvr/flat/WorkshopQueue$Summary;->neededBytes:J

    cmp-long v0, v2, v0

    if-lez v0, :cond_5e

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not enough free storage: this needs about "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p1, Lcom/gmodvr/flat/WorkshopQueue$Summary;->neededBytes:J

    invoke-static {v1, v2}, Lcom/gmodvr/flat/GmodAddons;->sizeText(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/gmodvr/flat/WorkshopQueueActivity;->usable:J

    .line 160
    invoke-static {v1, v2}, Lcom/gmodvr/flat/GmodAddons;->sizeText(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is free. Deselect items or free up space."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gmodvr/flat/WorkshopQueueActivity;->error:Ljava/lang/String;

    .line 161
    invoke-direct {p0}, Lcom/gmodvr/flat/WorkshopQueueActivity;->render()V

    return-void

    .line 164
    :cond_5e
    iget-object p1, p0, Lcom/gmodvr/flat/WorkshopQueueActivity;->queue:Lcom/gmodvr/flat/WorkshopQueue;

    sget-object v0, Lcom/gmodvr/flat/WorkshopQueue$Phase;->DOWNLOADING:Lcom/gmodvr/flat/WorkshopQueue$Phase;

    iput-object v0, p1, Lcom/gmodvr/flat/WorkshopQueue;->phase:Lcom/gmodvr/flat/WorkshopQueue$Phase;

    .line 166
    iget-object v0, p0, Lcom/gmodvr/flat/WorkshopQueueActivity;->worker:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/gmodvr/flat/WorkshopQueueActivity$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Lcom/gmodvr/flat/WorkshopQueueActivity$$ExternalSyntheticLambda4;-><init>(Lcom/gmodvr/flat/WorkshopQueueActivity;Lcom/gmodvr/flat/WorkshopQueue;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_6e
    :goto_6e
    return-void
.end method

.method private below(F)Landroid/widget/LinearLayout$LayoutParams;
    .registers 2

    .line 482
    iget-object p0, p0, Lcom/gmodvr/flat/WorkshopQueueActivity;->skin:Lcom/gmodvr/flat/Skin;

    invoke-virtual {p0, p1}, Lcom/gmodvr/flat/Skin;->below(F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method private cancel()V
    .registers 2

    const/4 v0, 0x0

    .line 183
    invoke-static {v0}, Lcom/gmodvr/flat/SteamDownloadService;->choose(Z)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 184
    :cond_b
    new-instance v0, Lcom/gmodvr/flat/WorkshopQueueActivity$$ExternalSyntheticLambda18;

    invoke-direct {v0, p0}, Lcom/gmodvr/flat/WorkshopQueueActivity$$ExternalSyntheticLambda18;-><init>(Lcom/gmodvr/flat/WorkshopQueueActivity;)V

    invoke-static {p0, v0}, Lcom/gmodvr/flat/SteamDownloadService;->discard(Landroid/content/Context;Ljava/util/function/Consumer;)V

    return-void
.end method

.method private check(Ljava/lang/String;)Landroid/widget/CheckBox;
    .registers 2

    .line 479
    iget-object p0, p0, Lcom/gmodvr/flat/WorkshopQueueActivity;->skin:Lcom/gmodvr/flat/Skin;

    invoke-virtual {p0, p1}, Lcom/gmodvr/flat/Skin;->check(Ljava/lang/String;)Landroid/widget/CheckBox;

    move-result-object p0

    return-object p0
.end method

.method private clearFinished()V
    .registers 2

    .line 222
    invoke-static {}, Lcom/gmodvr/flat/SteamDownloadService;->active()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 223
    :cond_7
    new-instance v0, Lcom/gmodvr/flat/WorkshopQueueActivity$$ExternalSyntheticLambda15;

    invoke-direct {v0, p0}, Lcom/gmodvr/flat/WorkshopQueueActivity$$ExternalSyntheticLambda15;-><init>(Lcom/gmodvr/flat/WorkshopQueueActivity;)V

    invoke-static {p0, v0}, Lcom/gmodvr/flat/SteamDownloadService;->discard(Landroid/content/Context;Ljava/util/function/Consumer;)V

    return-void
.end method

.method private color(Lcom/gmodvr/flat/WorkshopQueue$Entry;)I
    .registers 4

    .line 384
    invoke-virtual {p1}, Lcom/gmodvr/flat/WorkshopQueue$Entry;->downloadable()Z

    move-result v0

    if-nez v0, :cond_a

    const p0, -0xa49991

    return p0

    .line 385
    :cond_a
    iget-boolean p0, p0, Lcom/gmodvr/flat/WorkshopQueueActivity;->reviewing:Z

    const v0, -0x793691

    const v1, -0x72665d

    if-nez p0, :cond_24

    iget-object p0, p1, Lcom/gmodvr/flat/WorkshopQueue$Entry;->status:Lcom/gmodvr/flat/WorkshopQueue$Status;

    sget-object p1, Lcom/gmodvr/flat/WorkshopQueue$Status;->FAILED:Lcom/gmodvr/flat/WorkshopQueue$Status;

    if-ne p0, p1, :cond_1e

    const v0, -0x179fb1

    goto :goto_23

    :cond_1e
    sget-object p1, Lcom/gmodvr/flat/WorkshopQueue$Status;->PENDING:Lcom/gmodvr/flat/WorkshopQueue$Status;

    if-ne p0, p1, :cond_23

    move v0, v1

    :cond_23
    :goto_23
    return v0

    .line 386
    :cond_24
    iget-object p0, p1, Lcom/gmodvr/flat/WorkshopQueue$Entry;->installed:Lcom/gmodvr/flat/WorkshopQueue$Installed;

    sget-object p1, Lcom/gmodvr/flat/WorkshopQueue$Installed;->CURRENT:Lcom/gmodvr/flat/WorkshopQueue$Installed;

    if-ne p0, p1, :cond_2b

    goto :goto_2c

    :cond_2b
    move v0, v1

    :goto_2c
    return v0
.end method

.method private detail(Lcom/gmodvr/flat/WorkshopQueue$Entry;)Ljava/lang/String;
    .registers 9

    .line 356
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 357
    invoke-virtual {p1}, Lcom/gmodvr/flat/WorkshopQueue$Entry;->downloadable()Z

    move-result v1

    if-nez v1, :cond_e

    iget-object p0, p1, Lcom/gmodvr/flat/WorkshopQueue$Entry;->note:Ljava/lang/String;

    return-object p0

    .line 358
    :cond_e
    iget-wide v1, p1, Lcom/gmodvr/flat/WorkshopQueue$Entry;->size:J

    invoke-static {v1, v2}, Lcom/gmodvr/flat/GmodAddons;->sizeText(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 359
    iget-boolean v1, p0, Lcom/gmodvr/flat/WorkshopQueueActivity;->reviewing:Z

    const/4 v2, 0x1

    if-nez v1, :cond_68

    .line 360
    sget-object v1, Lcom/gmodvr/flat/WorkshopQueueActivity$3;->$SwitchMap$com$gmodvr$flat$WorkshopQueue$Status:[I

    iget-object v3, p1, Lcom/gmodvr/flat/WorkshopQueue$Entry;->status:Lcom/gmodvr/flat/WorkshopQueue$Status;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v1, v1, v3

    if-eq v1, v2, :cond_62

    const/4 v3, 0x2

    if-eq v1, v3, :cond_5c

    const/4 v3, 0x3

    if-eq v1, v3, :cond_45

    .line 365
    invoke-static {}, Lcom/gmodvr/flat/SteamDownloadService;->currentItem()Lcom/gmodvr/flat/WorkshopQueue$Entry;

    move-result-object v1

    if-eqz v1, :cond_3f

    .line 366
    iget-wide v3, v1, Lcom/gmodvr/flat/WorkshopQueue$Entry;->id:J

    iget-wide v5, p1, Lcom/gmodvr/flat/WorkshopQueue$Entry;->id:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_3f

    const-string v1, "downloading"

    goto :goto_41

    :cond_3f
    const-string v1, "waiting"

    :goto_41
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7d

    .line 363
    :cond_45
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/gmodvr/flat/WorkshopQueue$Entry;->error:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7d

    .line 362
    :cond_5c
    const-string v1, "already up to date"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7d

    .line 361
    :cond_62
    const-string v1, "installed"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7d

    .line 369
    :cond_68
    iget-object v1, p1, Lcom/gmodvr/flat/WorkshopQueue$Entry;->installed:Lcom/gmodvr/flat/WorkshopQueue$Installed;

    sget-object v3, Lcom/gmodvr/flat/WorkshopQueue$Installed;->CURRENT:Lcom/gmodvr/flat/WorkshopQueue$Installed;

    if-ne v1, v3, :cond_71

    const-string v1, "installed, up to date"

    goto :goto_7a

    .line 370
    :cond_71
    sget-object v3, Lcom/gmodvr/flat/WorkshopQueue$Installed;->OUTDATED:Lcom/gmodvr/flat/WorkshopQueue$Installed;

    if-ne v1, v3, :cond_78

    const-string v1, "update available"

    goto :goto_7a

    :cond_78
    const-string v1, "not installed"

    .line 369
    :goto_7a
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 372
    :goto_7d
    iget-wide v3, p1, Lcom/gmodvr/flat/WorkshopQueue$Entry;->requiredBy:J

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-eqz v1, :cond_ac

    .line 373
    iget-object v1, p0, Lcom/gmodvr/flat/WorkshopQueueActivity;->queue:Lcom/gmodvr/flat/WorkshopQueue;

    invoke-virtual {v1, v3, v4}, Lcom/gmodvr/flat/WorkshopQueue;->get(J)Lcom/gmodvr/flat/WorkshopQueue$Entry;

    move-result-object v1

    .line 374
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "required by "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v1, :cond_9e

    iget-wide v4, p1, Lcom/gmodvr/flat/WorkshopQueue$Entry;->requiredBy:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toUnsignedString(J)Ljava/lang/String;

    move-result-object v1

    goto :goto_a2

    :cond_9e
    invoke-virtual {v1}, Lcom/gmodvr/flat/WorkshopQueue$Entry;->name()Ljava/lang/String;

    move-result-object v1

    :goto_a2
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 376
    :cond_ac
    iget-boolean v1, p1, Lcom/gmodvr/flat/WorkshopQueue$Entry;->linked:Z

    if-eqz v1, :cond_e7

    iget-object v1, p1, Lcom/gmodvr/flat/WorkshopQueue$Entry;->sources:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v2, :cond_e7

    .line 377
    iget-object p0, p0, Lcom/gmodvr/flat/WorkshopQueueActivity;->queue:Lcom/gmodvr/flat/WorkshopQueue;

    iget-object p0, p0, Lcom/gmodvr/flat/WorkshopQueue;->collections:Ljava/util/Map;

    iget-object p1, p1, Lcom/gmodvr/flat/WorkshopQueue$Entry;->sources:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/gmodvr/flat/WorkshopQueue$Collection;

    if-eqz p0, :cond_e7

    .line 378
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "from "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/gmodvr/flat/WorkshopQueue$Collection;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 380
    :cond_e7
    const-string p0, " \u00b7 "

    invoke-static {p0, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private dp(F)I
    .registers 2

    .line 483
    iget-object p0, p0, Lcom/gmodvr/flat/WorkshopQueueActivity;->skin:Lcom/gmodvr/flat/Skin;

    invoke-virtual {p0, p1}, Lcom/gmodvr/flat/Skin;->dp(F)I

    move-result p0

    return p0
.end method

.method private finish(Landroid/widget/LinearLayout;Landroid/widget/BaseAdapter;)V
    .registers 6

    .line 461
    new-instance v0, Landroid/widget/ListView;

    invoke-direct {v0, p0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/gmodvr/flat/WorkshopQueueActivity;->list:Landroid/widget/ListView;

    const v1, -0xf4f1f0

    .line 462
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 463
    iget-object v0, p0, Lcom/gmodvr/flat/WorkshopQueueActivity;->list:Landroid/widget/ListView;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const v2, -0xdcd4cf

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 464
    iget-object v0, p0, Lcom/gmodvr/flat/WorkshopQueueActivity;->list:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 465
    iget-object v0, p0, Lcom/gmodvr/flat/WorkshopQueueActivity;->list:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 466
    iget-object v0, p0, Lcom/gmodvr/flat/WorkshopQueueActivity;->list:Landroid/widget/ListView;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 467
    iget-object v0, p0, Lcom/gmodvr/flat/WorkshopQueueActivity;->list:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 468
    iget-object p1, p0, Lcom/gmodvr/flat/WorkshopQueueActivity;->list:Landroid/widget/ListView;

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 469
    iget-object p1, p0, Lcom/gmodvr/flat/WorkshopQueueActivity;->list:Landroid/widget/ListView;

    const/high16 p2, 0x41c00000    # 24.0f

    invoke-direct {p0, p2}, Lcom/gmodvr/flat/WorkshopQueueActivity;->dp(F)I

    move-result p2

    invoke-virtual {p1, v2, v2, v2, p2}, Landroid/view/View;->setPadding(IIII)V

    .line 470
    iget-object p1, p0, Lcom/gmodvr/flat/WorkshopQueueActivity;->list:Landroid/widget/ListView;

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 471
    iget-object p1, p0, Lcom/gmodvr/flat/WorkshopQueueActivity;->list:Landroid/widget/ListView;

    invoke-static {p1}, Lcom/gmodvr/flat/Skin;->fitSystemBars(Landroid/view/View;)V

    .line 472
    iget-object p1, p0, Lcom/gmodvr/flat/WorkshopQueueActivity;->list:Landroid/widget/ListView;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$begin$8(Ljava/lang/String;Lcom/gmodvr/flat/WorkshopQueue;)V
    .registers 4

    .line 173
    iget-boolean v0, p0, Lcom/gmodvr/flat/WorkshopQueueActivity;->destroyed:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    if-eqz p1, :cond_11

    .line 174
    sget-object v0, Lcom/gmodvr/flat/WorkshopQueue$Phase;->REVIEW:Lcom/gmodvr/flat/WorkshopQueue$Phase;

    iput-object v0, p2, Lcom/gmodvr/flat/WorkshopQueue;->phase:Lcom/gmodvr/flat/WorkshopQueue$Phase;

    iput-object p1, p0, Lcom/gmodvr/flat/WorkshopQueueActivity;->error:Ljava/lang/String;

    invoke-direct {p0}, Lcom/gmodvr/flat/WorkshopQueueActivity;->render()V

    return-void

    :cond_11
    const/4 p1, 0x0

    .line 175
    iput-boolean p1, p0, Lcom/gmodvr/flat/WorkshopQueueActivity;->reviewing:Z

    const/4 p1, 0x1

    .line 176
    invoke-static {p1}, Lcom/gmodvr/flat/SteamDownloadService;->choose(Z)Z

    move-result p1

    if-nez p1, :cond_1e

    invoke-direct {p0}, Lcom/gmodvr/flat/WorkshopQueueActivity;->resume()V

    .line 177
    :cond_1e
    invoke-direct {p0}, Lcom/gmodvr/flat/WorkshopQueueActivity;->load()V

    return-void
.end method

.method private synthetic lambda$begin$9(Lcom/gmodvr/flat/WorkshopQueue;)V
    .registers 5

    .line 169
    :try_start_0
    invoke-static {p0}, Lcom/gmodvr/flat/SteamDownloadService;->queueFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/gmodvr/flat/WorkshopQueue;->save(Ljava/io/File;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_9

    const/4 v0, 0x0

    goto :goto_1f

    :catch_9
    move-exception v0

    .line 170
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not save the selection: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 172
    :goto_1f
    iget-object v1, p0, Lcom/gmodvr/flat/WorkshopQueueActivity;->ui:Landroid/os/Handler;

    new-instance v2, Lcom/gmodvr/flat/WorkshopQueueActivity$$ExternalSyntheticLambda17;

    invoke-direct {v2, p0, v0, p1}, Lcom/gmodvr/flat/WorkshopQueueActivity$$ExternalSyntheticLambda17;-><init>(Lcom/gmodvr/flat/WorkshopQueueActivity;Ljava/lang/String;Lcom/gmodvr/flat/WorkshopQueue;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic lambda$cancel$10(Ljava/lang/String;)V
    .registers 2

    if-eqz p1, :cond_c

    .line 185
    iput-object p1, p0, Lcom/gmodvr/flat/WorkshopQueueActivity;->error:Ljava/lang/String;

    iget-boolean p1, p0, Lcom/gmodvr/flat/WorkshopQueueActivity;->destroyed:Z

    if-nez p1, :cond_13

    invoke-direct {p0}, Lcom/gmodvr/flat/WorkshopQueueActivity;->render()V

    goto :goto_13

    .line 186
    :cond_c
    iget-boolean p1, p0, Lcom/gmodvr/flat/WorkshopQueueActivity;->destroyed:Z

    if-nez p1, :cond_13

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_13
    :goto_13
    return-void
.end method

.method private synthetic lambda$clearFinished$13(Ljava/lang/String;)V
    .registers 2

    if-eqz p1, :cond_c

    .line 224
    iput-object p1, p0, Lcom/gmodvr/flat/WorkshopQueueActivity;->error:Ljava/lang/String;

    iget-boolean p1, p0, Lcom/gmodvr/flat/WorkshopQueueActivity;->destroyed:Z

    if-nez p1, :cond_13

    invoke-direct {p0}, Lcom/gmodvr/flat/WorkshopQueueActivity;->render()V

    goto :goto_13

    .line 225
    :cond_c
    iget-boolean p1, p0, Lcom/gmodvr/flat/WorkshopQueueActivity;->destroyed:Z

    if-nez p1, :cond_13

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_13
    :goto_13
    return-void
.end method

.method private synthetic lambda$load$6(Lcom/gmodvr/flat/WorkshopQueue;JLjava/lang/String;)V
    .registers 6

    .line 137
    iget-boolean v0, p0, Lcom/gmodvr/flat/WorkshopQueueActivity;->destroyed:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x0

    .line 138
    iput-boolean v0, p0, Lcom/gmodvr/flat/WorkshopQueueActivity;->loading:Z

    .line 139
    iput-object p1, p0, Lcom/gmodvr/flat/WorkshopQueueActivity;->queue:Lcom/gmodvr/flat/WorkshopQueue;

    .line 140
    iput-wide p2, p0, Lcom/gmodvr/flat/WorkshopQueueActivity;->usable:J

    if-eqz p4, :cond_10

    .line 141
    iput-object p4, p0, Lcom/gmodvr/flat/WorkshopQueueActivity;->error:Ljava/lang/String;

    :cond_10
    if-eqz p1, :cond_19

    .line 142
    iget-object p2, p1, Lcom/gmodvr/flat/WorkshopQueue;->phase:Lcom/gmodvr/flat/WorkshopQueue$Phase;

    sget-object p3, Lcom/gmodvr/flat/WorkshopQueue$Phase;->REVIEW:Lcom/gmodvr/flat/WorkshopQueue$Phase;

    if-ne p2, p3, :cond_19

    const/4 v0, 0x1

    :cond_19
    iput-boolean v0, p0, Lcom/gmodvr/flat/WorkshopQueueActivity;->reviewing:Z

    if-eqz p1, :cond_24

    .line 143
    iget-object p2, p0, Lcom/gmodvr/flat/WorkshopQueueActivity;->linked:Landroid/widget/CheckBox;

    iget-boolean p1, p1, Lcom/gmodvr/flat/WorkshopQueue;->includeLinked:Z

    invoke-virtual {p2, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 144
    :cond_24
    const-string p1, ""

    iput-object p1, p0, Lcom/gmodvr/flat/WorkshopQueueActivity;->signature:Ljava/lang/String;

    .line 145
    invoke-direct {p0}, Lcom/gmodvr/flat/WorkshopQueueActivity;->render()V

    return-void
.end method

.method private synthetic lambda$load$7()V
    .registers 12

    const/4 v0, 0x0

    const-wide/16 v1, -0x1

    .line 121
    :try_start_3
    invoke-static {}, Lcom/gmodvr/flat/SteamDownloadService;->active()Z

    move-result v3

    if-eqz v3, :cond_16

    invoke-static {}, Lcom/gmodvr/flat/SteamDownloadService;->awaitingSelection()Z

    move-result v3

    if-nez v3, :cond_16

    invoke-static {}, Lcom/gmodvr/flat/SteamDownloadService;->liveQueue()Lcom/gmodvr/flat/WorkshopQueue;

    move-result-object v3

    goto :goto_62

    :catch_14
    move-exception v3

    goto :goto_66

    .line 123
    :cond_16
    invoke-static {p0}, Lcom/gmodvr/flat/SteamDownloadService;->savedQueue(Landroid/content/Context;)Lcom/gmodvr/flat/WorkshopQueue;

    move-result-object v3
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_1a} :catch_14

    .line 124
    :try_start_1a
    invoke-static {p0}, Lcom/gmodvr/flat/SteamDownloadService;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "profile"

    const-string v6, ""

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/gmodvr/flat/GameContentProfile;->forId(Ljava/lang/String;)Lcom/gmodvr/flat/GameContentProfile;

    move-result-object v4

    if-eqz v3, :cond_62

    if-eqz v4, :cond_62

    .line 126
    invoke-static {p0, v4}, Lcom/gmodvr/flat/Storage;->content(Landroid/content/Context;Lcom/gmodvr/flat/GameContentProfile;)Ljava/io/File;

    move-result-object v5

    .line 127
    sget-object v6, Lcom/gmodvr/flat/GameContentProfile;->GARRYSMOD:Lcom/gmodvr/flat/GameContentProfile;

    if-ne v4, v6, :cond_40

    invoke-static {v5}, Lcom/gmodvr/flat/GmodAddons;->installed(Ljava/io/File;)Ljava/util/Map;

    move-result-object v4

    goto :goto_5b

    :catch_3b
    move-exception v0

    move-object v10, v3

    move-object v3, v0

    move-object v0, v10

    goto :goto_66

    .line 128
    :cond_40
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v4, Lcom/gmodvr/flat/GameContentProfile;->gameDir:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/custom"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/gmodvr/flat/SteamFiles;->inside(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    invoke-static {v4}, Lcom/gmodvr/flat/SteamWorkshopInstall;->installed(Ljava/io/File;)Ljava/util/Map;

    move-result-object v4

    .line 127
    :goto_5b
    invoke-virtual {v3, v4}, Lcom/gmodvr/flat/WorkshopQueue;->annotate(Ljava/util/Map;)V

    .line 129
    invoke-virtual {v5}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v1
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_62} :catch_3b

    :cond_62
    :goto_62
    move-object v9, v0

    move-wide v7, v1

    move-object v6, v3

    goto :goto_6d

    .line 132
    :goto_66
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    move-object v6, v0

    move-wide v7, v1

    move-object v9, v3

    .line 136
    :goto_6d
    iget-object v0, p0, Lcom/gmodvr/flat/WorkshopQueueActivity;->ui:Landroid/os/Handler;

    new-instance v1, Lcom/gmodvr/flat/WorkshopQueueActivity$$ExternalSyntheticLambda0;

    move-object v4, v1

    move-object v5, p0

    invoke-direct/range {v4 .. v9}, Lcom/gmodvr/flat/WorkshopQueueActivity$$ExternalSyntheticLambda0;-><init>(Lcom/gmodvr/flat/WorkshopQueueActivity;Lcom/gmodvr/flat/WorkshopQueue;JLjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic lambda$onCreate$0(Landroid/view/View;)V
    .registers 3

    .line 50
    iget-object p1, p0, Lcom/gmodvr/flat/WorkshopQueueActivity;->queue:Lcom/gmodvr/flat/WorkshopQueue;

    if-eqz p1, :cond_20

    iget-boolean v0, p0, Lcom/gmodvr/flat/WorkshopQueueActivity;->reviewing:Z

    if-nez v0, :cond_9

    goto :goto_20

    .line 51
    :cond_9
    iget-object v0, p0, Lcom/gmodvr/flat/WorkshopQueueActivity;->linked:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/gmodvr/flat/WorkshopQueue;->setIncludeLinked(Z)V

    .line 52
    iget-object p1, p0, Lcom/gmodvr/flat/WorkshopQueueActivity;->queue:Lcom/gmodvr/flat/WorkshopQueue;

    sget-object v0, Lcom/gmodvr/flat/WorkshopQueue$Mode;->MISSING:Lcom/gmodvr/flat/WorkshopQueue$Mode;

    invoke-virtual {p1, v0}, Lcom/gmodvr/flat/WorkshopQueue;->select(Lcom/gmodvr/flat/WorkshopQueue$Mode;)V

    .line 53
    const-string p1, ""

    iput-object p1, p0, Lcom/gmodvr/flat/WorkshopQueueActivity;->signature:Ljava/lang/String;

    .line 54
    invoke-direct {p0}, Lcom/gmodvr/flat/WorkshopQueueActivity;->render()V

    :cond_20
    :goto_20
    return-void
.end method

.method private synthetic lambda$onCreate$1()V
    .registers 2

    .line 61
    sget-object v0, Lcom/gmodvr/flat/WorkshopQueue$Mode;->MISSING:Lcom/gmodvr/flat/WorkshopQueue$Mode;

    invoke-direct {p0, v0}, Lcom/gmodvr/flat/WorkshopQueueActivity;->begin(Lcom/gmodvr/flat/WorkshopQueue$Mode;)V

    return-void
.end method

.method private synthetic lambda$onCreate$2()V
    .registers 2

    .line 63
    sget-object v0, Lcom/gmodvr/flat/WorkshopQueue$Mode;->ALL:Lcom/gmodvr/flat/WorkshopQueue$Mode;

    invoke-direct {p0, v0}, Lcom/gmodvr/flat/WorkshopQueueActivity;->begin(Lcom/gmodvr/flat/WorkshopQueue$Mode;)V

    return-void
.end method

.method private synthetic lambda$onCreate$3()V
    .registers 2

    const/4 v0, 0x0

    .line 65
    invoke-direct {p0, v0}, Lcom/gmodvr/flat/WorkshopQueueActivity;->begin(Lcom/gmodvr/flat/WorkshopQueue$Mode;)V

    return-void
.end method

.method private synthetic lambda$onCreate$4()V
    .registers 2

    const/4 v0, 0x1

    .line 95
    invoke-direct {p0, v0}, Lcom/gmodvr/flat/WorkshopQueueActivity;->pick(Z)V

    return-void
.end method

.method private synthetic lambda$onCreate$5()V
    .registers 2

    const/4 v0, 0x0

    .line 96
    invoke-direct {p0, v0}, Lcom/gmodvr/flat/WorkshopQueueActivity;->pick(Z)V

    return-void
.end method

.method private synthetic lambda$retryFailed$11(Ljava/lang/String;)V
    .registers 3

    .line 213
    iget-boolean v0, p0, Lcom/gmodvr/flat/WorkshopQueueActivity;->destroyed:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    if-eqz p1, :cond_d

    .line 214
    iput-object p1, p0, Lcom/gmodvr/flat/WorkshopQueueActivity;->error:Ljava/lang/String;

    invoke-direct {p0}, Lcom/gmodvr/flat/WorkshopQueueActivity;->render()V

    return-void

    .line 215
    :cond_d
    invoke-direct {p0}, Lcom/gmodvr/flat/WorkshopQueueActivity;->resume()V

    .line 216
    invoke-direct {p0}, Lcom/gmodvr/flat/WorkshopQueueActivity;->load()V

    return-void
.end method

.method private synthetic lambda$retryFailed$12(Lcom/gmodvr/flat/WorkshopQueue;)V
    .registers 4

    .line 208
    :try_start_0
    invoke-virtual {p1}, Lcom/gmodvr/flat/WorkshopQueue;->retryFailed()I

    move-result v0

    if-nez v0, :cond_b

    const-string p1, "No failed items."

    goto :goto_18

    :catch_9
    move-exception p1

    goto :goto_14

    .line 209
    :cond_b
    invoke-static {p0}, Lcom/gmodvr/flat/SteamDownloadService;->queueFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/gmodvr/flat/WorkshopQueue;->save(Ljava/io/File;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_9

    const/4 p1, 0x0

    goto :goto_18

    .line 210
    :goto_14
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    .line 212
    :goto_18
    iget-object v0, p0, Lcom/gmodvr/flat/WorkshopQueueActivity;->ui:Landroid/os/Handler;

    new-instance v1, Lcom/gmodvr/flat/WorkshopQueueActivity$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/gmodvr/flat/WorkshopQueueActivity$$ExternalSyntheticLambda2;-><init>(Lcom/gmodvr/flat/WorkshopQueueActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private link(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/widget/TextView;
    .registers 3

    .line 478
    iget-object p0, p0, Lcom/gmodvr/flat/WorkshopQueueActivity;->skin:Lcom/gmodvr/flat/Skin;

    invoke-virtual {p0, p1, p2}, Lcom/gmodvr/flat/Skin;->link(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/widget/TextView;

    move-result-object p0

    return-object p0
.end method

.method private load()V
    .registers 3

    const/4 v0, 0x1

    .line 115
    iput-boolean v0, p0, Lcom/gmodvr/flat/WorkshopQueueActivity;->loading:Z

    .line 116
    iget-object v0, p0, Lcom/gmodvr/flat/WorkshopQueueActivity;->worker:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/gmodvr/flat/WorkshopQueueActivity$$ExternalSyntheticLambda16;

    invoke-direct {v1, p0}, Lcom/gmodvr/flat/WorkshopQueueActivity$$ExternalSyntheticLambda16;-><init>(Lcom/gmodvr/flat/WorkshopQueueActivity;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private pick(Z)V
    .registers 5

    .line 230
    iget-object v0, p0, Lcom/gmodvr/flat/WorkshopQueueActivity;->queue:Lcom/gmodvr/flat/WorkshopQueue;

    if-eqz v0, :cond_28

    iget-boolean v1, p0, Lcom/gmodvr/flat/WorkshopQueueActivity;->reviewing:Z

    if-nez v1, :cond_9

    goto :goto_28

    .line 232
    :cond_9
    iget-object v0, v0, Lcom/gmodvr/flat/WorkshopQueue;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gmodvr/flat/WorkshopQueue$Entry;

    iget-object v2, p0, Lcom/gmodvr/flat/WorkshopQueueActivity;->queue:Lcom/gmodvr/flat/WorkshopQueue;

    invoke-virtual {v2, v1, p1}, Lcom/gmodvr/flat/WorkshopQueue;->setSelected(Lcom/gmodvr/flat/WorkshopQueue$Entry;Z)V

    goto :goto_f

    .line 233
    :cond_21
    const-string p1, ""

    iput-object p1, p0, Lcom/gmodvr/flat/WorkshopQueueActivity;->signature:Ljava/lang/String;

    .line 234
    invoke-direct {p0}, Lcom/gmodvr/flat/WorkshopQueueActivity;->render()V

    :cond_28
    :goto_28
    return-void
.end method

.method private presetSummary(Lcom/gmodvr/flat/WorkshopQueue$Mode;)Lcom/gmodvr/flat/WorkshopQueue$Summary;
    .registers 9

    .line 345
    new-instance v0, Lcom/gmodvr/flat/WorkshopQueue$Summary;

    invoke-direct {v0}, Lcom/gmodvr/flat/WorkshopQueue$Summary;-><init>()V

    .line 346
    iget-object v1, p0, Lcom/gmodvr/flat/WorkshopQueueActivity;->queue:Lcom/gmodvr/flat/WorkshopQueue;

    iget-object v1, v1, Lcom/gmodvr/flat/WorkshopQueue;->entries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_d
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_41

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gmodvr/flat/WorkshopQueue$Entry;

    .line 347
    invoke-virtual {v2}, Lcom/gmodvr/flat/WorkshopQueue$Entry;->downloadable()Z

    move-result v3

    if-eqz v3, :cond_d

    iget-object v3, p0, Lcom/gmodvr/flat/WorkshopQueueActivity;->queue:Lcom/gmodvr/flat/WorkshopQueue;

    invoke-virtual {v3, v2}, Lcom/gmodvr/flat/WorkshopQueue;->inScope(Lcom/gmodvr/flat/WorkshopQueue$Entry;)Z

    move-result v3

    if-nez v3, :cond_28

    goto :goto_d

    .line 348
    :cond_28
    sget-object v3, Lcom/gmodvr/flat/WorkshopQueue$Mode;->MISSING:Lcom/gmodvr/flat/WorkshopQueue$Mode;

    if-ne p1, v3, :cond_33

    iget-object v3, v2, Lcom/gmodvr/flat/WorkshopQueue$Entry;->installed:Lcom/gmodvr/flat/WorkshopQueue$Installed;

    sget-object v4, Lcom/gmodvr/flat/WorkshopQueue$Installed;->CURRENT:Lcom/gmodvr/flat/WorkshopQueue$Installed;

    if-ne v3, v4, :cond_33

    goto :goto_d

    .line 349
    :cond_33
    iget v3, v0, Lcom/gmodvr/flat/WorkshopQueue$Summary;->selected:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v0, Lcom/gmodvr/flat/WorkshopQueue$Summary;->selected:I

    .line 350
    iget-wide v3, v0, Lcom/gmodvr/flat/WorkshopQueue$Summary;->selectedBytes:J

    iget-wide v5, v2, Lcom/gmodvr/flat/WorkshopQueue$Entry;->size:J

    add-long/2addr v3, v5

    iput-wide v3, v0, Lcom/gmodvr/flat/WorkshopQueue$Summary;->selectedBytes:J

    goto :goto_d

    :cond_41
    return-object v0
.end method

.method private primary(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/widget/Button;
    .registers 3

    .line 476
    iget-object p0, p0, Lcom/gmodvr/flat/WorkshopQueueActivity;->skin:Lcom/gmodvr/flat/Skin;

    invoke-virtual {p0, p1, p2}, Lcom/gmodvr/flat/Skin;->primary(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/widget/Button;

    move-result-object p0

    return-object p0
.end method

.method private render()V
    .registers 19

    move-object/from16 v0, p0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x6

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 247
    invoke-static {}, Lcom/gmodvr/flat/SteamDownloadService;->active()Z

    move-result v6

    .line 248
    iget-boolean v7, v0, Lcom/gmodvr/flat/WorkshopQueueActivity;->reviewing:Z

    if-nez v7, :cond_23

    iget-boolean v7, v0, Lcom/gmodvr/flat/WorkshopQueueActivity;->loading:Z

    if-nez v7, :cond_23

    iget-object v7, v0, Lcom/gmodvr/flat/WorkshopQueueActivity;->queue:Lcom/gmodvr/flat/WorkshopQueue;

    if-eqz v7, :cond_19

    if-eqz v6, :cond_23

    :cond_19
    invoke-static {}, Lcom/gmodvr/flat/SteamDownloadService;->awaitingSelection()Z

    move-result v7

    if-eqz v7, :cond_23

    invoke-direct/range {p0 .. p0}, Lcom/gmodvr/flat/WorkshopQueueActivity;->load()V

    return-void

    .line 249
    :cond_23
    invoke-static {}, Lcom/gmodvr/flat/SteamDownloadService;->liveQueue()Lcom/gmodvr/flat/WorkshopQueue;

    move-result-object v7

    if-eqz v6, :cond_31

    .line 250
    iget-boolean v8, v0, Lcom/gmodvr/flat/WorkshopQueueActivity;->reviewing:Z

    if-nez v8, :cond_31

    if-eqz v7, :cond_31

    iput-object v7, v0, Lcom/gmodvr/flat/WorkshopQueueActivity;->queue:Lcom/gmodvr/flat/WorkshopQueue;

    .line 251
    :cond_31
    iget-object v7, v0, Lcom/gmodvr/flat/WorkshopQueueActivity;->queue:Lcom/gmodvr/flat/WorkshopQueue;

    const-string v8, ""

    const/16 v9, 0x8

    if-nez v7, :cond_90

    .line 252
    iget-object v7, v0, Lcom/gmodvr/flat/WorkshopQueueActivity;->title:Landroid/widget/TextView;

    iget-boolean v10, v0, Lcom/gmodvr/flat/WorkshopQueueActivity;->loading:Z

    if-eqz v10, :cond_42

    const-string v6, "Loading\u2026"

    goto :goto_49

    :cond_42
    if-eqz v6, :cond_47

    const-string v6, "Preparing\u2026"

    goto :goto_49

    :cond_47
    const-string v6, "No Workshop collection in progress."

    :goto_49
    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 253
    iget-object v6, v0, Lcom/gmodvr/flat/WorkshopQueueActivity;->summary:Landroid/widget/TextView;

    iget-object v7, v0, Lcom/gmodvr/flat/WorkshopQueueActivity;->error:Ljava/lang/String;

    if-eqz v7, :cond_54

    move-object v8, v7

    goto :goto_5d

    :cond_54
    iget-boolean v7, v0, Lcom/gmodvr/flat/WorkshopQueueActivity;->loading:Z

    if-eqz v7, :cond_59

    goto :goto_5d

    :cond_59
    invoke-static/range {p0 .. p0}, Lcom/gmodvr/flat/SteamDownloadService;->status(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    :goto_5d
    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 254
    iget-object v6, v0, Lcom/gmodvr/flat/WorkshopQueueActivity;->space:Landroid/widget/TextView;

    iget-object v7, v0, Lcom/gmodvr/flat/WorkshopQueueActivity;->linked:Landroid/widget/CheckBox;

    iget-object v8, v0, Lcom/gmodvr/flat/WorkshopQueueActivity;->note:Landroid/widget/TextView;

    iget-object v10, v0, Lcom/gmodvr/flat/WorkshopQueueActivity;->reviewControls:Landroid/widget/LinearLayout;

    iget-object v11, v0, Lcom/gmodvr/flat/WorkshopQueueActivity;->runControls:Landroid/widget/LinearLayout;

    iget-object v12, v0, Lcom/gmodvr/flat/WorkshopQueueActivity;->checklistControls:Landroid/widget/LinearLayout;

    new-array v13, v3, [Landroid/view/View;

    aput-object v6, v13, v4

    aput-object v7, v13, v5

    aput-object v8, v13, v2

    aput-object v10, v13, v1

    const/4 v1, 0x4

    aput-object v11, v13, v1

    const/4 v1, 0x5

    aput-object v12, v13, v1

    :goto_7c
    if-ge v4, v3, :cond_85

    aget-object v1, v13, v4

    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    add-int/2addr v4, v5

    goto :goto_7c

    .line 255
    :cond_85
    iget-object v1, v0, Lcom/gmodvr/flat/WorkshopQueueActivity;->rows:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 256
    iget-object v0, v0, Lcom/gmodvr/flat/WorkshopQueueActivity;->adapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void

    .line 259
    :cond_90
    invoke-virtual {v7}, Lcom/gmodvr/flat/WorkshopQueue;->summary()Lcom/gmodvr/flat/WorkshopQueue$Summary;

    move-result-object v3

    .line 260
    iget-object v7, v0, Lcom/gmodvr/flat/WorkshopQueueActivity;->title:Landroid/widget/TextView;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v0, Lcom/gmodvr/flat/WorkshopQueueActivity;->queue:Lcom/gmodvr/flat/WorkshopQueue;

    invoke-virtual {v11}, Lcom/gmodvr/flat/WorkshopQueue;->name()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v0, Lcom/gmodvr/flat/WorkshopQueueActivity;->queue:Lcom/gmodvr/flat/WorkshopQueue;

    iget-boolean v11, v11, Lcom/gmodvr/flat/WorkshopQueue;->collection:Z

    if-eqz v11, :cond_ac

    move-object v11, v8

    goto :goto_ae

    :cond_ac
    const-string v11, " (Workshop item)"

    :goto_ae
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 261
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 262
    iget v10, v3, Lcom/gmodvr/flat/WorkshopQueue$Summary;->addons:I

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget v10, v3, Lcom/gmodvr/flat/WorkshopQueue$Summary;->addons:I

    if-ne v10, v5, :cond_c9

    const-string v10, " addon, "

    goto :goto_cb

    :cond_c9
    const-string v10, " addons, "

    :goto_cb
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v10, v3, Lcom/gmodvr/flat/WorkshopQueue$Summary;->totalBytes:J

    invoke-static {v10, v11}, Lcom/gmodvr/flat/GmodAddons;->sizeText(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    const-string v10, "\nUp to date: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v3, Lcom/gmodvr/flat/WorkshopQueue$Summary;->current:I

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "   Update available: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v3, Lcom/gmodvr/flat/WorkshopQueue$Summary;->outdated:I

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "   Not installed: "

    .line 264
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v3, Lcom/gmodvr/flat/WorkshopQueue$Summary;->missing:I

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 265
    iget v10, v3, Lcom/gmodvr/flat/WorkshopQueue$Summary;->unavailable:I

    iget v11, v3, Lcom/gmodvr/flat/WorkshopQueue$Summary;->otherGame:I

    add-int/2addr v10, v11

    iget v11, v3, Lcom/gmodvr/flat/WorkshopQueue$Summary;->notContent:I

    add-int/2addr v10, v11

    const-string v11, ", "

    if-lez v10, :cond_160

    .line 266
    const-string v10, "\nNot downloadable: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 268
    iget v12, v3, Lcom/gmodvr/flat/WorkshopQueue$Summary;->unavailable:I

    if-lez v12, :cond_125

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget v13, v3, Lcom/gmodvr/flat/WorkshopQueue$Summary;->unavailable:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " private or removed"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v10, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 269
    :cond_125
    iget v12, v3, Lcom/gmodvr/flat/WorkshopQueue$Summary;->otherGame:I

    if-lez v12, :cond_13f

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget v13, v3, Lcom/gmodvr/flat/WorkshopQueue$Summary;->otherGame:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " from another game"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v10, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 270
    :cond_13f
    iget v12, v3, Lcom/gmodvr/flat/WorkshopQueue$Summary;->notContent:I

    if-lez v12, :cond_159

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget v13, v3, Lcom/gmodvr/flat/WorkshopQueue$Summary;->notContent:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " not addons"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v10, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 271
    :cond_159
    invoke-static {v11, v10}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    :cond_160
    iget-object v10, v0, Lcom/gmodvr/flat/WorkshopQueueActivity;->summary:Landroid/widget/TextView;

    iget-object v12, v0, Lcom/gmodvr/flat/WorkshopQueueActivity;->error:Ljava/lang/String;

    if-eqz v12, :cond_17c

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v0, Lcom/gmodvr/flat/WorkshopQueueActivity;->error:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "\n\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :cond_17c
    invoke-virtual {v10, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 274
    iget-object v7, v0, Lcom/gmodvr/flat/WorkshopQueueActivity;->summary:Landroid/widget/TextView;

    iget-object v10, v0, Lcom/gmodvr/flat/WorkshopQueueActivity;->error:Ljava/lang/String;

    const v12, -0x179fb1

    if-eqz v10, :cond_18a

    move v10, v12

    goto :goto_18d

    :cond_18a
    const v10, -0x191513

    :goto_18d
    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 276
    iget-object v7, v0, Lcom/gmodvr/flat/WorkshopQueueActivity;->queue:Lcom/gmodvr/flat/WorkshopQueue;

    iget-object v7, v7, Lcom/gmodvr/flat/WorkshopQueue;->phase:Lcom/gmodvr/flat/WorkshopQueue$Phase;

    sget-object v10, Lcom/gmodvr/flat/WorkshopQueue$Phase;->FINISHED:Lcom/gmodvr/flat/WorkshopQueue$Phase;

    if-ne v7, v10, :cond_19c

    if-nez v6, :cond_19c

    move v7, v5

    goto :goto_19d

    :cond_19c
    move v7, v4

    .line 277
    :goto_19d
    iget-object v10, v0, Lcom/gmodvr/flat/WorkshopQueueActivity;->reviewControls:Landroid/widget/LinearLayout;

    iget-boolean v13, v0, Lcom/gmodvr/flat/WorkshopQueueActivity;->reviewing:Z

    if-eqz v13, :cond_1a5

    move v13, v4

    goto :goto_1a6

    :cond_1a5
    move v13, v9

    :goto_1a6
    invoke-virtual {v10, v13}, Landroid/view/View;->setVisibility(I)V

    .line 278
    iget-object v10, v0, Lcom/gmodvr/flat/WorkshopQueueActivity;->checklistControls:Landroid/widget/LinearLayout;

    iget-boolean v13, v0, Lcom/gmodvr/flat/WorkshopQueueActivity;->reviewing:Z

    if-eqz v13, :cond_1b1

    move v13, v4

    goto :goto_1b2

    :cond_1b1
    move v13, v9

    :goto_1b2
    invoke-virtual {v10, v13}, Landroid/view/View;->setVisibility(I)V

    .line 279
    iget-object v10, v0, Lcom/gmodvr/flat/WorkshopQueueActivity;->runControls:Landroid/widget/LinearLayout;

    iget-boolean v13, v0, Lcom/gmodvr/flat/WorkshopQueueActivity;->reviewing:Z

    if-eqz v13, :cond_1bd

    move v13, v9

    goto :goto_1be

    :cond_1bd
    move v13, v4

    :goto_1be
    invoke-virtual {v10, v13}, Landroid/view/View;->setVisibility(I)V

    .line 280
    iget-object v10, v0, Lcom/gmodvr/flat/WorkshopQueueActivity;->linked:Landroid/widget/CheckBox;

    iget-boolean v13, v0, Lcom/gmodvr/flat/WorkshopQueueActivity;->reviewing:Z

    if-eqz v13, :cond_1cd

    iget v13, v3, Lcom/gmodvr/flat/WorkshopQueue$Summary;->linkedCollections:I

    if-lez v13, :cond_1cd

    move v13, v4

    goto :goto_1ce

    :cond_1cd
    move v13, v9

    :goto_1ce
    invoke-virtual {v10, v13}, Landroid/view/View;->setVisibility(I)V

    .line 281
    iget-object v10, v0, Lcom/gmodvr/flat/WorkshopQueueActivity;->linked:Landroid/widget/CheckBox;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Include "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v3, Lcom/gmodvr/flat/WorkshopQueue$Summary;->linkedCollections:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " linked collection"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v3, Lcom/gmodvr/flat/WorkshopQueue$Summary;->linkedCollections:I

    if-ne v14, v5, :cond_1ed

    move-object v14, v8

    goto :goto_1ef

    :cond_1ed
    const-string v14, "s"

    :goto_1ef
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " ("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v3, Lcom/gmodvr/flat/WorkshopQueue$Summary;->linkedAddons:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " more addons, "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v14, v3, Lcom/gmodvr/flat/WorkshopQueue$Summary;->linkedBytes:J

    .line 282
    invoke-static {v14, v15}, Lcom/gmodvr/flat/GmodAddons;->sizeText(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ")"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 281
    invoke-virtual {v10, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 283
    iget-object v10, v0, Lcom/gmodvr/flat/WorkshopQueueActivity;->queue:Lcom/gmodvr/flat/WorkshopQueue;

    iget-boolean v10, v10, Lcom/gmodvr/flat/WorkshopQueue;->truncated:Z

    if-eqz v10, :cond_21f

    .line 284
    const-string v10, "Linked collections are too large or too deeply nested to list completely; the first 10000 items are shown."

    goto :goto_220

    :cond_21f
    move-object v10, v8

    .line 285
    :goto_220
    iget-object v13, v0, Lcom/gmodvr/flat/WorkshopQueueActivity;->note:Landroid/widget/TextView;

    invoke-virtual {v13, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 286
    iget-object v13, v0, Lcom/gmodvr/flat/WorkshopQueueActivity;->note:Landroid/widget/TextView;

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_22f

    move v10, v9

    goto :goto_230

    :cond_22f
    move v10, v4

    :goto_230
    invoke-virtual {v13, v10}, Landroid/view/View;->setVisibility(I)V

    .line 288
    iget-boolean v10, v0, Lcom/gmodvr/flat/WorkshopQueueActivity;->reviewing:Z

    const-wide/16 v15, 0x0

    if-eqz v10, :cond_358

    .line 289
    sget-object v1, Lcom/gmodvr/flat/WorkshopQueue$Mode;->MISSING:Lcom/gmodvr/flat/WorkshopQueue$Mode;

    invoke-direct {v0, v1}, Lcom/gmodvr/flat/WorkshopQueueActivity;->presetSummary(Lcom/gmodvr/flat/WorkshopQueue$Mode;)Lcom/gmodvr/flat/WorkshopQueue$Summary;

    move-result-object v1

    sget-object v2, Lcom/gmodvr/flat/WorkshopQueue$Mode;->ALL:Lcom/gmodvr/flat/WorkshopQueue$Mode;

    invoke-direct {v0, v2}, Lcom/gmodvr/flat/WorkshopQueueActivity;->presetSummary(Lcom/gmodvr/flat/WorkshopQueue$Mode;)Lcom/gmodvr/flat/WorkshopQueue$Summary;

    move-result-object v2

    .line 290
    iget-object v6, v0, Lcom/gmodvr/flat/WorkshopQueueActivity;->downloadMissing:Landroid/widget/Button;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Download missing and outdated ("

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v1, Lcom/gmodvr/flat/WorkshopQueue$Summary;->selected:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, v1, Lcom/gmodvr/flat/WorkshopQueue$Summary;->selectedBytes:J

    invoke-static {v9, v10}, Lcom/gmodvr/flat/GmodAddons;->sizeText(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 291
    iget-object v6, v0, Lcom/gmodvr/flat/WorkshopQueueActivity;->downloadMissing:Landroid/widget/Button;

    iget v1, v1, Lcom/gmodvr/flat/WorkshopQueue$Summary;->selected:I

    if-lez v1, :cond_274

    move v1, v5

    goto :goto_275

    :cond_274
    move v1, v4

    :goto_275
    invoke-virtual {v6, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 292
    iget-object v1, v0, Lcom/gmodvr/flat/WorkshopQueueActivity;->downloadAll:Landroid/widget/Button;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Download all, reinstalling up-to-date ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v2, Lcom/gmodvr/flat/WorkshopQueue$Summary;->selected:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, v2, Lcom/gmodvr/flat/WorkshopQueue$Summary;->selectedBytes:J

    invoke-static {v9, v10}, Lcom/gmodvr/flat/GmodAddons;->sizeText(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 293
    iget-object v1, v0, Lcom/gmodvr/flat/WorkshopQueueActivity;->downloadAll:Landroid/widget/Button;

    iget v2, v2, Lcom/gmodvr/flat/WorkshopQueue$Summary;->selected:I

    if-lez v2, :cond_2a7

    move v2, v5

    goto :goto_2a8

    :cond_2a7
    move v2, v4

    :goto_2a8
    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 294
    iget-object v1, v0, Lcom/gmodvr/flat/WorkshopQueueActivity;->downloadSelected:Landroid/widget/Button;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Download selected ("

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v3, Lcom/gmodvr/flat/WorkshopQueue$Summary;->selected:I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v3, Lcom/gmodvr/flat/WorkshopQueue$Summary;->selectedBytes:J

    invoke-static {v6, v7}, Lcom/gmodvr/flat/GmodAddons;->sizeText(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 295
    iget-object v1, v0, Lcom/gmodvr/flat/WorkshopQueueActivity;->downloadSelected:Landroid/widget/Button;

    iget v2, v3, Lcom/gmodvr/flat/WorkshopQueue$Summary;->selected:I

    if-lez v2, :cond_2da

    move v2, v5

    goto :goto_2db

    :cond_2da
    move v2, v4

    :goto_2db
    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 296
    iget-object v1, v0, Lcom/gmodvr/flat/WorkshopQueueActivity;->space:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 297
    iget-wide v1, v0, Lcom/gmodvr/flat/WorkshopQueueActivity;->usable:J

    cmp-long v6, v1, v15

    if-ltz v6, :cond_2f0

    iget-wide v6, v3, Lcom/gmodvr/flat/WorkshopQueue$Summary;->neededBytes:J

    cmp-long v1, v6, v1

    if-lez v1, :cond_2f0

    move v4, v5

    .line 298
    :cond_2f0
    iget-object v1, v0, Lcom/gmodvr/flat/WorkshopQueueActivity;->space:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v5, v0, Lcom/gmodvr/flat/WorkshopQueueActivity;->usable:J

    cmp-long v5, v5, v15

    if-gez v5, :cond_300

    const-string v5, "Free space unknown"

    goto :goto_317

    :cond_300
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v6, v0, Lcom/gmodvr/flat/WorkshopQueueActivity;->usable:J

    invoke-static {v6, v7}, Lcom/gmodvr/flat/GmodAddons;->sizeText(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " free on the game storage"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_317
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    iget v5, v3, Lcom/gmodvr/flat/WorkshopQueue$Summary;->selected:I

    if-nez v5, :cond_31f

    goto :goto_340

    .line 300
    :cond_31f
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ". The selection needs about "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v3, Lcom/gmodvr/flat/WorkshopQueue$Summary;->neededBytes:J

    .line 299
    invoke-static {v6, v7}, Lcom/gmodvr/flat/GmodAddons;->sizeText(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v4, :cond_337

    .line 300
    const-string v6, ": not enough space. Deselect items or free up space."

    goto :goto_339

    :cond_337
    const-string v6, " (including 512 MiB kept free)."

    :goto_339
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_340
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 298
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 301
    iget-object v1, v0, Lcom/gmodvr/flat/WorkshopQueueActivity;->space:Landroid/widget/TextView;

    if-eqz v4, :cond_34f

    goto :goto_352

    :cond_34f
    const v12, -0x72665d

    :goto_352
    invoke-virtual {v1, v12}, Landroid/widget/TextView;->setTextColor(I)V

    move-object v5, v3

    goto/16 :goto_4fe

    .line 303
    :cond_358
    iget-object v10, v0, Lcom/gmodvr/flat/WorkshopQueueActivity;->space:Landroid/widget/TextView;

    invoke-virtual {v10, v9}, Landroid/view/View;->setVisibility(I)V

    .line 304
    invoke-static {}, Lcom/gmodvr/flat/SteamDownloadService;->itemProgress()[J

    move-result-object v10

    .line 305
    invoke-static {}, Lcom/gmodvr/flat/SteamDownloadService;->currentItem()Lcom/gmodvr/flat/WorkshopQueue$Entry;

    move-result-object v11

    .line 306
    const-string v12, " / "

    move-object v13, v3

    if-eqz v6, :cond_402

    if-eqz v10, :cond_402

    if-eqz v11, :cond_402

    .line 307
    iget-object v9, v0, Lcom/gmodvr/flat/WorkshopQueueActivity;->itemText:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Item "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v3, v6

    aget-wide v5, v10, v4

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " of "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v17, v13

    move-object v6, v14

    const/4 v5, 0x1

    aget-wide v13, v10, v5

    invoke-virtual {v2, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Lcom/gmodvr/flat/WorkshopQueue$Entry;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    aget-wide v13, v10, v1

    cmp-long v5, v13, v15

    if-lez v5, :cond_3c4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "   "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v8, 0x2

    aget-wide v13, v10, v8

    invoke-static {v13, v14}, Lcom/gmodvr/flat/GmodAddons;->sizeText(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v13, v10, v1

    invoke-static {v13, v14}, Lcom/gmodvr/flat/GmodAddons;->sizeText(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :cond_3c4
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 307
    invoke-virtual {v9, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 309
    iget-object v2, v0, Lcom/gmodvr/flat/WorkshopQueueActivity;->itemBar:Landroid/widget/ProgressBar;

    aget-wide v8, v10, v1

    cmp-long v5, v8, v15

    if-nez v5, :cond_3d8

    const/4 v5, 0x1

    goto :goto_3d9

    :cond_3d8
    move v5, v4

    :goto_3d9
    invoke-virtual {v2, v5}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 310
    iget-object v2, v0, Lcom/gmodvr/flat/WorkshopQueueActivity;->itemBar:Landroid/widget/ProgressBar;

    aget-wide v8, v10, v1

    cmp-long v1, v8, v15

    if-nez v1, :cond_3e6

    move v1, v4

    goto :goto_3f7

    :cond_3e6
    const/4 v1, 0x2

    aget-wide v10, v10, v1

    long-to-double v10, v10

    const-wide v13, 0x408f400000000000L    # 1000.0

    mul-double/2addr v10, v13

    long-to-double v8, v8

    div-double/2addr v10, v8

    invoke-static {v13, v14, v10, v11}, Ljava/lang/Math;->min(DD)D

    move-result-wide v8

    double-to-int v1, v8

    :goto_3f7
    invoke-virtual {v2, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 311
    iget-object v1, v0, Lcom/gmodvr/flat/WorkshopQueueActivity;->itemBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    const/16 v2, 0x8

    goto :goto_41d

    :cond_402
    move v3, v6

    move-object/from16 v17, v13

    move-object v6, v14

    .line 313
    iget-object v1, v0, Lcom/gmodvr/flat/WorkshopQueueActivity;->itemText:Landroid/widget/TextView;

    if-eqz v3, :cond_40f

    :cond_40a
    invoke-static/range {p0 .. p0}, Lcom/gmodvr/flat/SteamDownloadService;->status(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    goto :goto_413

    :cond_40f
    if-eqz v7, :cond_40a

    const-string v2, "Finished."

    :goto_413
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 314
    iget-object v1, v0, Lcom/gmodvr/flat/WorkshopQueueActivity;->itemBar:Landroid/widget/ProgressBar;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 316
    :goto_41d
    iget-object v1, v0, Lcom/gmodvr/flat/WorkshopQueueActivity;->queue:Lcom/gmodvr/flat/WorkshopQueue;

    invoke-virtual {v1}, Lcom/gmodvr/flat/WorkshopQueue;->progressBytes()[J

    move-result-object v1

    if-eqz v3, :cond_430

    .line 317
    aget-wide v8, v1, v4

    invoke-static/range {p0 .. p0}, Lcom/gmodvr/flat/SteamDownloadService;->completed(Landroid/content/Context;)J

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    goto :goto_432

    :cond_430
    aget-wide v8, v1, v4

    .line 318
    :goto_432
    iget-object v5, v0, Lcom/gmodvr/flat/WorkshopQueueActivity;->overallText:Landroid/widget/TextView;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Overall "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8, v9}, Lcom/gmodvr/flat/GmodAddons;->sizeText(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v11, 0x1

    aget-wide v12, v1, v11

    invoke-static {v12, v13}, Lcom/gmodvr/flat/GmodAddons;->sizeText(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v11, v17

    iget v12, v11, Lcom/gmodvr/flat/WorkshopQueue$Summary;->done:I

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " installed, "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v11, Lcom/gmodvr/flat/WorkshopQueue$Summary;->skipped:I

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " already up to date, "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v11, Lcom/gmodvr/flat/WorkshopQueue$Summary;->failed:I

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " failed, "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v11, Lcom/gmodvr/flat/WorkshopQueue$Summary;->remaining:I

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " to go"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 320
    iget-object v5, v0, Lcom/gmodvr/flat/WorkshopQueueActivity;->overallBar:Landroid/widget/ProgressBar;

    const/4 v10, 0x1

    aget-wide v12, v1, v10

    cmp-long v1, v12, v15

    if-nez v1, :cond_495

    move v1, v4

    move-object/from16 v17, v11

    goto :goto_4a5

    :cond_495
    long-to-double v8, v8

    move-object/from16 v17, v11

    const-wide v10, 0x408f400000000000L    # 1000.0

    mul-double/2addr v8, v10

    long-to-double v12, v12

    div-double/2addr v8, v12

    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->min(DD)D

    move-result-wide v8

    double-to-int v1, v8

    :goto_4a5
    invoke-virtual {v5, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 321
    iget-object v1, v0, Lcom/gmodvr/flat/WorkshopQueueActivity;->pause:Landroid/widget/Button;

    invoke-static {}, Lcom/gmodvr/flat/SteamDownloadService;->canPause()Z

    move-result v5

    invoke-virtual {v1, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 322
    iget-object v1, v0, Lcom/gmodvr/flat/WorkshopQueueActivity;->resume:Landroid/widget/Button;

    if-nez v3, :cond_4bf

    if-nez v7, :cond_4bf

    invoke-static {}, Lcom/gmodvr/flat/SteamDownloadService;->discarding()Z

    move-result v5

    if-nez v5, :cond_4bf

    const/4 v5, 0x1

    goto :goto_4c0

    :cond_4bf
    move v5, v4

    :goto_4c0
    invoke-virtual {v1, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 323
    iget-object v1, v0, Lcom/gmodvr/flat/WorkshopQueueActivity;->retry:Landroid/widget/Button;

    move-object/from16 v5, v17

    if-nez v3, :cond_4cf

    iget v7, v5, Lcom/gmodvr/flat/WorkshopQueue$Summary;->failed:I

    if-lez v7, :cond_4cf

    const/4 v7, 0x1

    goto :goto_4d0

    :cond_4cf
    move v7, v4

    :goto_4d0
    invoke-virtual {v1, v7}, Landroid/view/View;->setEnabled(Z)V

    .line 324
    iget-object v1, v0, Lcom/gmodvr/flat/WorkshopQueueActivity;->retry:Landroid/widget/Button;

    iget v7, v5, Lcom/gmodvr/flat/WorkshopQueue$Summary;->failed:I

    if-lez v7, :cond_4f0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Retry failed ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v5, Lcom/gmodvr/flat/WorkshopQueue$Summary;->failed:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_4f2

    :cond_4f0
    const-string v6, "Retry failed"

    :goto_4f2
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 325
    iget-object v1, v0, Lcom/gmodvr/flat/WorkshopQueueActivity;->clear:Landroid/widget/TextView;

    if-nez v3, :cond_4fa

    goto :goto_4fb

    :cond_4fa
    move v4, v2

    :goto_4fb
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 328
    :goto_4fe
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/gmodvr/flat/WorkshopQueueActivity;->queue:Lcom/gmodvr/flat/WorkshopQueue;

    iget-object v2, v2, Lcom/gmodvr/flat/WorkshopQueue;->phase:Lcom/gmodvr/flat/WorkshopQueue$Phase;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v0, Lcom/gmodvr/flat/WorkshopQueueActivity;->reviewing:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/gmodvr/flat/WorkshopQueueActivity;->queue:Lcom/gmodvr/flat/WorkshopQueue;

    iget-boolean v3, v3, Lcom/gmodvr/flat/WorkshopQueue;->includeLinked:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v5, Lcom/gmodvr/flat/WorkshopQueue$Summary;->done:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v5, Lcom/gmodvr/flat/WorkshopQueue$Summary;->failed:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v5, Lcom/gmodvr/flat/WorkshopQueue$Summary;->skipped:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v5, Lcom/gmodvr/flat/WorkshopQueue$Summary;->selected:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    invoke-static {}, Lcom/gmodvr/flat/SteamDownloadService;->currentItem()Lcom/gmodvr/flat/WorkshopQueue$Entry;

    move-result-object v2

    if-nez v2, :cond_549

    move-wide v2, v15

    goto :goto_54f

    :cond_549
    invoke-static {}, Lcom/gmodvr/flat/SteamDownloadService;->currentItem()Lcom/gmodvr/flat/WorkshopQueue$Entry;

    move-result-object v2

    iget-wide v2, v2, Lcom/gmodvr/flat/WorkshopQueue$Entry;->id:J

    :goto_54f
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 330
    iget-object v2, v0, Lcom/gmodvr/flat/WorkshopQueueActivity;->signature:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_60e

    .line 331
    iput-object v1, v0, Lcom/gmodvr/flat/WorkshopQueueActivity;->signature:Ljava/lang/String;

    .line 332
    iget-object v1, v0, Lcom/gmodvr/flat/WorkshopQueueActivity;->rows:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 333
    iget-boolean v1, v0, Lcom/gmodvr/flat/WorkshopQueueActivity;->reviewing:Z

    if-eqz v1, :cond_5b9

    .line 334
    iget-object v1, v0, Lcom/gmodvr/flat/WorkshopQueueActivity;->queue:Lcom/gmodvr/flat/WorkshopQueue;

    iget-object v1, v1, Lcom/gmodvr/flat/WorkshopQueue;->entries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_571
    :goto_571
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_591

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gmodvr/flat/WorkshopQueue$Entry;

    iget-object v3, v0, Lcom/gmodvr/flat/WorkshopQueueActivity;->queue:Lcom/gmodvr/flat/WorkshopQueue;

    invoke-virtual {v3, v2}, Lcom/gmodvr/flat/WorkshopQueue;->inScope(Lcom/gmodvr/flat/WorkshopQueue$Entry;)Z

    move-result v3

    if-eqz v3, :cond_571

    invoke-virtual {v2}, Lcom/gmodvr/flat/WorkshopQueue$Entry;->downloadable()Z

    move-result v3

    if-eqz v3, :cond_571

    iget-object v3, v0, Lcom/gmodvr/flat/WorkshopQueueActivity;->rows:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_571

    .line 335
    :cond_591
    iget-object v1, v0, Lcom/gmodvr/flat/WorkshopQueueActivity;->queue:Lcom/gmodvr/flat/WorkshopQueue;

    iget-object v1, v1, Lcom/gmodvr/flat/WorkshopQueue;->entries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_599
    :goto_599
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_609

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gmodvr/flat/WorkshopQueue$Entry;

    iget-object v3, v0, Lcom/gmodvr/flat/WorkshopQueueActivity;->queue:Lcom/gmodvr/flat/WorkshopQueue;

    invoke-virtual {v3, v2}, Lcom/gmodvr/flat/WorkshopQueue;->inScope(Lcom/gmodvr/flat/WorkshopQueue$Entry;)Z

    move-result v3

    if-eqz v3, :cond_599

    invoke-virtual {v2}, Lcom/gmodvr/flat/WorkshopQueue$Entry;->downloadable()Z

    move-result v3

    if-nez v3, :cond_599

    iget-object v3, v0, Lcom/gmodvr/flat/WorkshopQueueActivity;->rows:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_599

    .line 337
    :cond_5b9
    iget-object v1, v0, Lcom/gmodvr/flat/WorkshopQueueActivity;->queue:Lcom/gmodvr/flat/WorkshopQueue;

    iget-object v1, v1, Lcom/gmodvr/flat/WorkshopQueue;->entries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5c1
    :goto_5c1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5dd

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gmodvr/flat/WorkshopQueue$Entry;

    iget-boolean v3, v2, Lcom/gmodvr/flat/WorkshopQueue$Entry;->selected:Z

    if-eqz v3, :cond_5c1

    iget-object v3, v2, Lcom/gmodvr/flat/WorkshopQueue$Entry;->status:Lcom/gmodvr/flat/WorkshopQueue$Status;

    sget-object v4, Lcom/gmodvr/flat/WorkshopQueue$Status;->FAILED:Lcom/gmodvr/flat/WorkshopQueue$Status;

    if-ne v3, v4, :cond_5c1

    iget-object v3, v0, Lcom/gmodvr/flat/WorkshopQueueActivity;->rows:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5c1

    .line 338
    :cond_5dd
    iget-object v1, v0, Lcom/gmodvr/flat/WorkshopQueueActivity;->queue:Lcom/gmodvr/flat/WorkshopQueue;

    iget-object v1, v1, Lcom/gmodvr/flat/WorkshopQueue;->entries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5e5
    :goto_5e5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_609

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gmodvr/flat/WorkshopQueue$Entry;

    iget-boolean v3, v2, Lcom/gmodvr/flat/WorkshopQueue$Entry;->selected:Z

    if-eqz v3, :cond_5e5

    iget-object v3, v2, Lcom/gmodvr/flat/WorkshopQueue$Entry;->status:Lcom/gmodvr/flat/WorkshopQueue$Status;

    sget-object v4, Lcom/gmodvr/flat/WorkshopQueue$Status;->FAILED:Lcom/gmodvr/flat/WorkshopQueue$Status;

    if-eq v3, v4, :cond_5e5

    iget-object v3, v0, Lcom/gmodvr/flat/WorkshopQueueActivity;->queue:Lcom/gmodvr/flat/WorkshopQueue;

    invoke-virtual {v3, v2}, Lcom/gmodvr/flat/WorkshopQueue;->inScope(Lcom/gmodvr/flat/WorkshopQueue$Entry;)Z

    move-result v3

    if-eqz v3, :cond_5e5

    iget-object v3, v0, Lcom/gmodvr/flat/WorkshopQueueActivity;->rows:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5e5

    .line 340
    :cond_609
    iget-object v0, v0, Lcom/gmodvr/flat/WorkshopQueueActivity;->adapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_60e
    return-void
.end method

.method private resume()V
    .registers 9

    const/4 v0, 0x0

    .line 191
    iput-object v0, p0, Lcom/gmodvr/flat/WorkshopQueueActivity;->error:Ljava/lang/String;

    .line 193
    :try_start_3
    new-instance v1, Lcom/gmodvr/flat/WorkshopQueueActivity$SharedPrefsView;

    invoke-direct {v1, p0, v0}, Lcom/gmodvr/flat/WorkshopQueueActivity$SharedPrefsView;-><init>(Lcom/gmodvr/flat/WorkshopQueueActivity;Lcom/gmodvr/flat/WorkshopQueueActivity-IA;)V

    .line 194
    iget-object v3, v1, Lcom/gmodvr/flat/WorkshopQueueActivity$SharedPrefsView;->profile:Ljava/lang/String;

    iget-object v4, v1, Lcom/gmodvr/flat/WorkshopQueueActivity$SharedPrefsView;->workshop:Ljava/lang/String;

    iget-object v5, v1, Lcom/gmodvr/flat/WorkshopQueueActivity$SharedPrefsView;->language:Ljava/lang/String;

    .line 195
    invoke-static {p0}, Lcom/gmodvr/flat/SteamDownloadService;->savedOrAnonymous(Landroid/content/Context;)Lcom/gmodvr/flat/SteamDownloadService$Credentials;

    move-result-object v6

    const/4 v7, 0x1

    move-object v2, p0

    .line 194
    invoke-static/range {v2 .. v7}, Lcom/gmodvr/flat/SteamDownloadService;->start(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gmodvr/flat/SteamDownloadService$Credentials;Z)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_17} :catch_18

    goto :goto_30

    :catch_18
    move-exception v0

    .line 197
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " Resume from the Steam screen if a sign-in is needed."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gmodvr/flat/WorkshopQueueActivity;->error:Ljava/lang/String;

    .line 199
    :goto_30
    invoke-direct {p0}, Lcom/gmodvr/flat/WorkshopQueueActivity;->render()V

    return-void
.end method

.method private retryFailed()V
    .registers 4

    .line 203
    iget-object v0, p0, Lcom/gmodvr/flat/WorkshopQueueActivity;->queue:Lcom/gmodvr/flat/WorkshopQueue;

    if-eqz v0, :cond_17

    invoke-static {}, Lcom/gmodvr/flat/SteamDownloadService;->active()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_17

    .line 204
    :cond_b
    iget-object v0, p0, Lcom/gmodvr/flat/WorkshopQueueActivity;->queue:Lcom/gmodvr/flat/WorkshopQueue;

    .line 205
    iget-object v1, p0, Lcom/gmodvr/flat/WorkshopQueueActivity;->worker:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/gmodvr/flat/WorkshopQueueActivity$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, v0}, Lcom/gmodvr/flat/WorkshopQueueActivity$$ExternalSyntheticLambda3;-><init>(Lcom/gmodvr/flat/WorkshopQueueActivity;Lcom/gmodvr/flat/WorkshopQueue;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_17
    :goto_17
    return-void
.end method

.method private secondary(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/widget/Button;
    .registers 3

    .line 477
    iget-object p0, p0, Lcom/gmodvr/flat/WorkshopQueueActivity;->skin:Lcom/gmodvr/flat/Skin;

    invoke-virtual {p0, p1, p2}, Lcom/gmodvr/flat/Skin;->secondary(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/widget/Button;

    move-result-object p0

    return-object p0
.end method

.method private start(Ljava/lang/String;)Landroid/widget/LinearLayout;
    .registers 8

    .line 445
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "franchise"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/gmodvr/flat/Skin;->of(Landroid/app/Activity;Ljava/lang/String;)Lcom/gmodvr/flat/Skin;

    move-result-object v0

    iput-object v0, p0, Lcom/gmodvr/flat/WorkshopQueueActivity;->skin:Lcom/gmodvr/flat/Skin;

    .line 446
    invoke-direct {p0}, Lcom/gmodvr/flat/WorkshopQueueActivity;->vertical()Landroid/widget/LinearLayout;

    move-result-object v0

    const/high16 v1, 0x41a00000    # 20.0f

    .line 447
    invoke-direct {p0, v1}, Lcom/gmodvr/flat/WorkshopQueueActivity;->dp(F)I

    move-result v2

    const/high16 v3, 0x41800000    # 16.0f

    invoke-direct {p0, v3}, Lcom/gmodvr/flat/WorkshopQueueActivity;->dp(F)I

    move-result v3

    invoke-direct {p0, v1}, Lcom/gmodvr/flat/WorkshopQueueActivity;->dp(F)I

    move-result v1

    const/high16 v4, 0x41000000    # 8.0f

    invoke-direct {p0, v4}, Lcom/gmodvr/flat/WorkshopQueueActivity;->dp(F)I

    move-result v4

    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 448
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/16 v2, 0x10

    .line 449
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 450
    iget-object v2, p0, Lcom/gmodvr/flat/WorkshopQueueActivity;->skin:Lcom/gmodvr/flat/Skin;

    new-instance v3, Lcom/gmodvr/flat/WorkshopQueueActivity$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lcom/gmodvr/flat/WorkshopQueueActivity$$ExternalSyntheticLambda1;-><init>(Lcom/gmodvr/flat/WorkshopQueueActivity;)V

    const-string v4, "\u2190"

    invoke-virtual {v2, v4, v3}, Lcom/gmodvr/flat/Skin;->secondary(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/widget/Button;

    move-result-object v2

    .line 451
    const-string v3, "Back"

    invoke-virtual {v2, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 452
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x42300000    # 44.0f

    invoke-direct {p0, v4}, Lcom/gmodvr/flat/WorkshopQueueActivity;->dp(F)I

    move-result v5

    invoke-direct {p0, v4}, Lcom/gmodvr/flat/WorkshopQueueActivity;->dp(F)I

    move-result v4

    invoke-direct {v3, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 453
    iget-object v2, p0, Lcom/gmodvr/flat/WorkshopQueueActivity;->skin:Lcom/gmodvr/flat/Skin;

    const/high16 v3, 0x41c00000    # 24.0f

    invoke-virtual {v2, p1, v3}, Lcom/gmodvr/flat/Skin;->heading(Ljava/lang/CharSequence;F)Landroid/widget/TextView;

    move-result-object p1

    const/high16 v2, 0x41600000    # 14.0f

    .line 454
    invoke-direct {p0, v2}, Lcom/gmodvr/flat/WorkshopQueueActivity;->dp(F)I

    move-result p0

    const/4 v2, 0x0

    invoke-virtual {p1, p0, v2, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 455
    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 456
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method private text(Ljava/lang/String;FI)Landroid/widget/TextView;
    .registers 4

    .line 475
    iget-object p0, p0, Lcom/gmodvr/flat/WorkshopQueueActivity;->skin:Lcom/gmodvr/flat/Skin;

    invoke-virtual {p0, p1, p2, p3}, Lcom/gmodvr/flat/Skin;->text(Ljava/lang/CharSequence;FI)Landroid/widget/TextView;

    move-result-object p0

    return-object p0
.end method

.method private vertical()Landroid/widget/LinearLayout;
    .registers 2

    .line 484
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 13

    .line 40
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    const-string p1, "Workshop collection"

    invoke-direct {p0, p1}, Lcom/gmodvr/flat/WorkshopQueueActivity;->start(Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object p1

    .line 42
    const-string v0, ""

    const/high16 v1, 0x41880000    # 17.0f

    const v2, -0x191513

    invoke-direct {p0, v0, v1, v2}, Lcom/gmodvr/flat/WorkshopQueueActivity;->text(Ljava/lang/String;FI)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Lcom/gmodvr/flat/WorkshopQueueActivity;->title:Landroid/widget/TextView;

    const/high16 v3, 0x40800000    # 4.0f

    .line 43
    invoke-direct {p0, v3}, Lcom/gmodvr/flat/WorkshopQueueActivity;->below(F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {p1, v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v1, 0x41580000    # 13.5f

    .line 44
    invoke-direct {p0, v0, v1, v2}, Lcom/gmodvr/flat/WorkshopQueueActivity;->text(Ljava/lang/String;FI)Landroid/widget/TextView;

    move-result-object v4

    iput-object v4, p0, Lcom/gmodvr/flat/WorkshopQueueActivity;->summary:Landroid/widget/TextView;

    const/high16 v5, 0x41000000    # 8.0f

    .line 45
    invoke-direct {p0, v5}, Lcom/gmodvr/flat/WorkshopQueueActivity;->below(F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {p1, v4, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const v4, -0x72665d

    .line 46
    invoke-direct {p0, v0, v1, v4}, Lcom/gmodvr/flat/WorkshopQueueActivity;->text(Ljava/lang/String;FI)Landroid/widget/TextView;

    move-result-object v6

    iput-object v6, p0, Lcom/gmodvr/flat/WorkshopQueueActivity;->space:Landroid/widget/TextView;

    const/high16 v7, 0x40c00000    # 6.0f

    .line 47
    invoke-direct {p0, v7}, Lcom/gmodvr/flat/WorkshopQueueActivity;->below(F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {p1, v6, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 48
    const-string v6, "Include linked collections"

    invoke-direct {p0, v6}, Lcom/gmodvr/flat/WorkshopQueueActivity;->check(Ljava/lang/String;)Landroid/widget/CheckBox;

    move-result-object v6

    iput-object v6, p0, Lcom/gmodvr/flat/WorkshopQueueActivity;->linked:Landroid/widget/CheckBox;

    .line 49
    new-instance v8, Lcom/gmodvr/flat/WorkshopQueueActivity$$ExternalSyntheticLambda5;

    invoke-direct {v8, p0}, Lcom/gmodvr/flat/WorkshopQueueActivity$$ExternalSyntheticLambda5;-><init>(Lcom/gmodvr/flat/WorkshopQueueActivity;)V

    invoke-virtual {v6, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    iget-object v6, p0, Lcom/gmodvr/flat/WorkshopQueueActivity;->linked:Landroid/widget/CheckBox;

    invoke-direct {p0, v7}, Lcom/gmodvr/flat/WorkshopQueueActivity;->below(F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {p1, v6, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v6, 0x41500000    # 13.0f

    .line 57
    invoke-direct {p0, v0, v6, v4}, Lcom/gmodvr/flat/WorkshopQueueActivity;->text(Ljava/lang/String;FI)Landroid/widget/TextView;

    move-result-object v4

    iput-object v4, p0, Lcom/gmodvr/flat/WorkshopQueueActivity;->note:Landroid/widget/TextView;

    .line 58
    invoke-direct {p0, v7}, Lcom/gmodvr/flat/WorkshopQueueActivity;->below(F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {p1, v4, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 60
    invoke-direct {p0}, Lcom/gmodvr/flat/WorkshopQueueActivity;->vertical()Landroid/widget/LinearLayout;

    move-result-object v4

    iput-object v4, p0, Lcom/gmodvr/flat/WorkshopQueueActivity;->reviewControls:Landroid/widget/LinearLayout;

    .line 61
    new-instance v4, Lcom/gmodvr/flat/WorkshopQueueActivity$$ExternalSyntheticLambda7;

    invoke-direct {v4, p0}, Lcom/gmodvr/flat/WorkshopQueueActivity$$ExternalSyntheticLambda7;-><init>(Lcom/gmodvr/flat/WorkshopQueueActivity;)V

    const-string v6, "Download missing and outdated"

    invoke-direct {p0, v6, v4}, Lcom/gmodvr/flat/WorkshopQueueActivity;->primary(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/widget/Button;

    move-result-object v4

    iput-object v4, p0, Lcom/gmodvr/flat/WorkshopQueueActivity;->downloadMissing:Landroid/widget/Button;

    .line 62
    iget-object v6, p0, Lcom/gmodvr/flat/WorkshopQueueActivity;->reviewControls:Landroid/widget/LinearLayout;

    const/high16 v7, 0x41400000    # 12.0f

    invoke-direct {p0, v7}, Lcom/gmodvr/flat/WorkshopQueueActivity;->below(F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v6, v4, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 63
    new-instance v4, Lcom/gmodvr/flat/WorkshopQueueActivity$$ExternalSyntheticLambda8;

    invoke-direct {v4, p0}, Lcom/gmodvr/flat/WorkshopQueueActivity$$ExternalSyntheticLambda8;-><init>(Lcom/gmodvr/flat/WorkshopQueueActivity;)V

    const-string v6, "Download all"

    invoke-direct {p0, v6, v4}, Lcom/gmodvr/flat/WorkshopQueueActivity;->secondary(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/widget/Button;

    move-result-object v4

    iput-object v4, p0, Lcom/gmodvr/flat/WorkshopQueueActivity;->downloadAll:Landroid/widget/Button;

    .line 64
    iget-object v6, p0, Lcom/gmodvr/flat/WorkshopQueueActivity;->reviewControls:Landroid/widget/LinearLayout;

    invoke-direct {p0, v5}, Lcom/gmodvr/flat/WorkshopQueueActivity;->below(F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v6, v4, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 65
    new-instance v4, Lcom/gmodvr/flat/WorkshopQueueActivity$$ExternalSyntheticLambda9;

    invoke-direct {v4, p0}, Lcom/gmodvr/flat/WorkshopQueueActivity$$ExternalSyntheticLambda9;-><init>(Lcom/gmodvr/flat/WorkshopQueueActivity;)V

    const-string v6, "Download selected"

    invoke-direct {p0, v6, v4}, Lcom/gmodvr/flat/WorkshopQueueActivity;->secondary(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/widget/Button;

    move-result-object v4

    iput-object v4, p0, Lcom/gmodvr/flat/WorkshopQueueActivity;->downloadSelected:Landroid/widget/Button;

    .line 66
    iget-object v6, p0, Lcom/gmodvr/flat/WorkshopQueueActivity;->reviewControls:Landroid/widget/LinearLayout;

    invoke-direct {p0, v5}, Lcom/gmodvr/flat/WorkshopQueueActivity;->below(F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v6, v4, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 67
    new-instance v4, Lcom/gmodvr/flat/WorkshopQueueActivity$$ExternalSyntheticLambda10;

    invoke-direct {v4, p0}, Lcom/gmodvr/flat/WorkshopQueueActivity$$ExternalSyntheticLambda10;-><init>(Lcom/gmodvr/flat/WorkshopQueueActivity;)V

    const-string v6, "Cancel this download"

    invoke-direct {p0, v6, v4}, Lcom/gmodvr/flat/WorkshopQueueActivity;->link(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/widget/TextView;

    move-result-object v4

    iput-object v4, p0, Lcom/gmodvr/flat/WorkshopQueueActivity;->cancel:Landroid/widget/TextView;

    .line 68
    iget-object v6, p0, Lcom/gmodvr/flat/WorkshopQueueActivity;->reviewControls:Landroid/widget/LinearLayout;

    invoke-direct {p0, v3}, Lcom/gmodvr/flat/WorkshopQueueActivity;->below(F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v6, v4, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 69
    iget-object v4, p0, Lcom/gmodvr/flat/WorkshopQueueActivity;->reviewControls:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 71
    invoke-direct {p0}, Lcom/gmodvr/flat/WorkshopQueueActivity;->vertical()Landroid/widget/LinearLayout;

    move-result-object v4

    iput-object v4, p0, Lcom/gmodvr/flat/WorkshopQueueActivity;->runControls:Landroid/widget/LinearLayout;

    .line 72
    invoke-direct {p0, v0, v1, v2}, Lcom/gmodvr/flat/WorkshopQueueActivity;->text(Ljava/lang/String;FI)Landroid/widget/TextView;

    move-result-object v4

    iput-object v4, p0, Lcom/gmodvr/flat/WorkshopQueueActivity;->itemText:Landroid/widget/TextView;

    .line 73
    iget-object v6, p0, Lcom/gmodvr/flat/WorkshopQueueActivity;->runControls:Landroid/widget/LinearLayout;

    const/high16 v8, 0x41200000    # 10.0f

    invoke-direct {p0, v8}, Lcom/gmodvr/flat/WorkshopQueueActivity;->below(F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v6, v4, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 74
    invoke-direct {p0}, Lcom/gmodvr/flat/WorkshopQueueActivity;->bar()Landroid/widget/ProgressBar;

    move-result-object v4

    iput-object v4, p0, Lcom/gmodvr/flat/WorkshopQueueActivity;->itemBar:Landroid/widget/ProgressBar;

    .line 75
    iget-object v6, p0, Lcom/gmodvr/flat/WorkshopQueueActivity;->runControls:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/gmodvr/flat/WorkshopQueueActivity;->barParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v6, v4, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 76
    invoke-direct {p0, v0, v1, v2}, Lcom/gmodvr/flat/WorkshopQueueActivity;->text(Ljava/lang/String;FI)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/gmodvr/flat/WorkshopQueueActivity;->overallText:Landroid/widget/TextView;

    .line 77
    iget-object v1, p0, Lcom/gmodvr/flat/WorkshopQueueActivity;->runControls:Landroid/widget/LinearLayout;

    invoke-direct {p0, v8}, Lcom/gmodvr/flat/WorkshopQueueActivity;->below(F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 78
    invoke-direct {p0}, Lcom/gmodvr/flat/WorkshopQueueActivity;->bar()Landroid/widget/ProgressBar;

    move-result-object v0

    iput-object v0, p0, Lcom/gmodvr/flat/WorkshopQueueActivity;->overallBar:Landroid/widget/ProgressBar;

    .line 79
    iget-object v1, p0, Lcom/gmodvr/flat/WorkshopQueueActivity;->runControls:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/gmodvr/flat/WorkshopQueueActivity;->barParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 80
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 81
    new-instance v1, Lcom/gmodvr/flat/SteamDownloadActivity$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/gmodvr/flat/SteamDownloadActivity$$ExternalSyntheticLambda3;-><init>()V

    const-string v2, "Pause"

    invoke-direct {p0, v2, v1}, Lcom/gmodvr/flat/WorkshopQueueActivity;->secondary(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/widget/Button;

    move-result-object v1

    iput-object v1, p0, Lcom/gmodvr/flat/WorkshopQueueActivity;->pause:Landroid/widget/Button;

    .line 82
    new-instance v1, Lcom/gmodvr/flat/WorkshopQueueActivity$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0}, Lcom/gmodvr/flat/WorkshopQueueActivity$$ExternalSyntheticLambda11;-><init>(Lcom/gmodvr/flat/WorkshopQueueActivity;)V

    const-string v2, "Resume"

    invoke-direct {p0, v2, v1}, Lcom/gmodvr/flat/WorkshopQueueActivity;->secondary(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/widget/Button;

    move-result-object v1

    iput-object v1, p0, Lcom/gmodvr/flat/WorkshopQueueActivity;->resume:Landroid/widget/Button;

    .line 83
    new-instance v1, Lcom/gmodvr/flat/WorkshopQueueActivity$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0}, Lcom/gmodvr/flat/WorkshopQueueActivity$$ExternalSyntheticLambda12;-><init>(Lcom/gmodvr/flat/WorkshopQueueActivity;)V

    const-string v2, "Retry failed"

    invoke-direct {p0, v2, v1}, Lcom/gmodvr/flat/WorkshopQueueActivity;->secondary(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/widget/Button;

    move-result-object v1

    iput-object v1, p0, Lcom/gmodvr/flat/WorkshopQueueActivity;->retry:Landroid/widget/Button;

    .line 84
    iget-object v2, p0, Lcom/gmodvr/flat/WorkshopQueueActivity;->pause:Landroid/widget/Button;

    iget-object v4, p0, Lcom/gmodvr/flat/WorkshopQueueActivity;->resume:Landroid/widget/Button;

    filled-new-array {v2, v4, v1}, [Landroid/widget/Button;

    move-result-object v1

    const/4 v2, 0x0

    move v4, v2

    :goto_149
    const/4 v6, 0x3

    if-ge v4, v6, :cond_168

    aget-object v6, v1, v4

    .line 85
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, -0x2

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-direct {v8, v2, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 86
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    if-lez v9, :cond_162

    invoke-direct {p0, v5}, Lcom/gmodvr/flat/WorkshopQueueActivity;->dp(F)I

    move-result v9

    iput v9, v8, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 87
    :cond_162
    invoke-virtual {v0, v6, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_149

    .line 89
    :cond_168
    iget-object v1, p0, Lcom/gmodvr/flat/WorkshopQueueActivity;->runControls:Landroid/widget/LinearLayout;

    invoke-direct {p0, v7}, Lcom/gmodvr/flat/WorkshopQueueActivity;->below(F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 90
    new-instance v0, Lcom/gmodvr/flat/WorkshopQueueActivity$$ExternalSyntheticLambda13;

    invoke-direct {v0, p0}, Lcom/gmodvr/flat/WorkshopQueueActivity$$ExternalSyntheticLambda13;-><init>(Lcom/gmodvr/flat/WorkshopQueueActivity;)V

    const-string v1, "Clear this list"

    invoke-direct {p0, v1, v0}, Lcom/gmodvr/flat/WorkshopQueueActivity;->link(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/gmodvr/flat/WorkshopQueueActivity;->clear:Landroid/widget/TextView;

    .line 91
    iget-object v1, p0, Lcom/gmodvr/flat/WorkshopQueueActivity;->runControls:Landroid/widget/LinearLayout;

    invoke-direct {p0, v3}, Lcom/gmodvr/flat/WorkshopQueueActivity;->below(F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 92
    iget-object v0, p0, Lcom/gmodvr/flat/WorkshopQueueActivity;->runControls:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 94
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/gmodvr/flat/WorkshopQueueActivity;->checklistControls:Landroid/widget/LinearLayout;

    .line 95
    new-instance v1, Lcom/gmodvr/flat/WorkshopQueueActivity$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0}, Lcom/gmodvr/flat/WorkshopQueueActivity$$ExternalSyntheticLambda14;-><init>(Lcom/gmodvr/flat/WorkshopQueueActivity;)V

    const-string v2, "Select all"

    invoke-direct {p0, v2, v1}, Lcom/gmodvr/flat/WorkshopQueueActivity;->link(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 96
    iget-object v0, p0, Lcom/gmodvr/flat/WorkshopQueueActivity;->checklistControls:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/gmodvr/flat/WorkshopQueueActivity$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/gmodvr/flat/WorkshopQueueActivity$$ExternalSyntheticLambda6;-><init>(Lcom/gmodvr/flat/WorkshopQueueActivity;)V

    const-string v2, "Select none"

    invoke-direct {p0, v2, v1}, Lcom/gmodvr/flat/WorkshopQueueActivity;->link(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 97
    iget-object v0, p0, Lcom/gmodvr/flat/WorkshopQueueActivity;->checklistControls:Landroid/widget/LinearLayout;

    const/high16 v1, 0x41600000    # 14.0f

    invoke-direct {p0, v1}, Lcom/gmodvr/flat/WorkshopQueueActivity;->below(F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 99
    new-instance v0, Lcom/gmodvr/flat/WorkshopQueueActivity$2;

    invoke-direct {v0, p0}, Lcom/gmodvr/flat/WorkshopQueueActivity$2;-><init>(Lcom/gmodvr/flat/WorkshopQueueActivity;)V

    iput-object v0, p0, Lcom/gmodvr/flat/WorkshopQueueActivity;->adapter:Landroid/widget/BaseAdapter;

    .line 109
    invoke-direct {p0, p1, v0}, Lcom/gmodvr/flat/WorkshopQueueActivity;->finish(Landroid/widget/LinearLayout;Landroid/widget/BaseAdapter;)V

    .line 110
    invoke-direct {p0}, Lcom/gmodvr/flat/WorkshopQueueActivity;->load()V

    return-void
.end method

.method public onDestroy()V
    .registers 3

    const/4 v0, 0x1

    .line 431
    iput-boolean v0, p0, Lcom/gmodvr/flat/WorkshopQueueActivity;->destroyed:Z

    .line 432
    iget-object v0, p0, Lcom/gmodvr/flat/WorkshopQueueActivity;->ui:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 433
    iget-object v0, p0, Lcom/gmodvr/flat/WorkshopQueueActivity;->worker:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 434
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .registers 3

    .line 429
    iget-object v0, p0, Lcom/gmodvr/flat/WorkshopQueueActivity;->ui:Landroid/os/Handler;

    iget-object v1, p0, Lcom/gmodvr/flat/WorkshopQueueActivity;->refresh:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method public onResume()V
    .registers 2

    .line 428
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v0, p0, Lcom/gmodvr/flat/WorkshopQueueActivity;->ui:Landroid/os/Handler;

    iget-object p0, p0, Lcom/gmodvr/flat/WorkshopQueueActivity;->refresh:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

###### Class com.gmodvr.flat.WorkshopQueueActivity.AnonymousClass1 (com.gmodvr.flat.WorkshopQueueActivity$1)
.class Lcom/gmodvr/flat/WorkshopQueueActivity$1;
.super Ljava/lang/Object;
.source "WorkshopQueueActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gmodvr/flat/WorkshopQueueActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gmodvr/flat/WorkshopQueueActivity;


# direct methods
.method public constructor <init>(Lcom/gmodvr/flat/WorkshopQueueActivity;)V
    .registers 2

    .line 35
    iput-object p1, p0, Lcom/gmodvr/flat/WorkshopQueueActivity$1;->this$0:Lcom/gmodvr/flat/WorkshopQueueActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 36
    iget-object v0, p0, Lcom/gmodvr/flat/WorkshopQueueActivity$1;->this$0:Lcom/gmodvr/flat/WorkshopQueueActivity;

    invoke-static {v0}, Lcom/gmodvr/flat/WorkshopQueueActivity;->-$$Nest$mrender(Lcom/gmodvr/flat/WorkshopQueueActivity;)V

    iget-object v0, p0, Lcom/gmodvr/flat/WorkshopQueueActivity$1;->this$0:Lcom/gmodvr/flat/WorkshopQueueActivity;

    invoke-static {v0}, Lcom/gmodvr/flat/WorkshopQueueActivity;->-$$Nest$fgetui(Lcom/gmodvr/flat/WorkshopQueueActivity;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

###### Class com.gmodvr.flat.WorkshopQueueActivity.AnonymousClass2 (com.gmodvr.flat.WorkshopQueueActivity$2)
.class Lcom/gmodvr/flat/WorkshopQueueActivity$2;
.super Landroid/widget/BaseAdapter;
.source "WorkshopQueueActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gmodvr/flat/WorkshopQueueActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gmodvr/flat/WorkshopQueueActivity;


# direct methods
.method public constructor <init>(Lcom/gmodvr/flat/WorkshopQueueActivity;)V
    .registers 2

    .line 99
    iput-object p1, p0, Lcom/gmodvr/flat/WorkshopQueueActivity$2;->this$0:Lcom/gmodvr/flat/WorkshopQueueActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 1

    .line 100
    iget-object p0, p0, Lcom/gmodvr/flat/WorkshopQueueActivity$2;->this$0:Lcom/gmodvr/flat/WorkshopQueueActivity;

    invoke-static {p0}, Lcom/gmodvr/flat/WorkshopQueueActivity;->-$$Nest$fgetrows(Lcom/gmodvr/flat/WorkshopQueueActivity;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 2

    .line 101
    iget-object p0, p0, Lcom/gmodvr/flat/WorkshopQueueActivity$2;->this$0:Lcom/gmodvr/flat/WorkshopQueueActivity;

    invoke-static {p0}, Lcom/gmodvr/flat/WorkshopQueueActivity;->-$$Nest$fgetrows(Lcom/gmodvr/flat/WorkshopQueueActivity;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getItemId(I)J
    .registers 2

    .line 102
    iget-object p0, p0, Lcom/gmodvr/flat/WorkshopQueueActivity$2;->this$0:Lcom/gmodvr/flat/WorkshopQueueActivity;

    invoke-static {p0}, Lcom/gmodvr/flat/WorkshopQueueActivity;->-$$Nest$fgetrows(Lcom/gmodvr/flat/WorkshopQueueActivity;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/gmodvr/flat/WorkshopQueue$Entry;

    iget-wide p0, p0, Lcom/gmodvr/flat/WorkshopQueue$Entry;->id:J

    return-wide p0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 4

    if-nez p2, :cond_a

    .line 104
    new-instance p2, Lcom/gmodvr/flat/WorkshopQueueActivity$Row;

    iget-object p3, p0, Lcom/gmodvr/flat/WorkshopQueueActivity$2;->this$0:Lcom/gmodvr/flat/WorkshopQueueActivity;

    invoke-direct {p2, p3}, Lcom/gmodvr/flat/WorkshopQueueActivity$Row;-><init>(Lcom/gmodvr/flat/WorkshopQueueActivity;)V

    goto :goto_10

    :cond_a
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/gmodvr/flat/WorkshopQueueActivity$Row;

    .line 105
    :goto_10
    iget-object p0, p0, Lcom/gmodvr/flat/WorkshopQueueActivity$2;->this$0:Lcom/gmodvr/flat/WorkshopQueueActivity;

    invoke-static {p0}, Lcom/gmodvr/flat/WorkshopQueueActivity;->-$$Nest$fgetrows(Lcom/gmodvr/flat/WorkshopQueueActivity;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/gmodvr/flat/WorkshopQueue$Entry;

    invoke-virtual {p2, p0}, Lcom/gmodvr/flat/WorkshopQueueActivity$Row;->bind(Lcom/gmodvr/flat/WorkshopQueue$Entry;)V

    .line 106
    iget-object p0, p2, Lcom/gmodvr/flat/WorkshopQueueActivity$Row;->view:Landroid/widget/LinearLayout;

    return-object p0
.end method

###### Class com.gmodvr.flat.WorkshopQueueActivity.AnonymousClass3 (com.gmodvr.flat.WorkshopQueueActivity$3)
.class synthetic Lcom/gmodvr/flat/WorkshopQueueActivity$3;
.super Ljava/lang/Object;
.source "WorkshopQueueActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gmodvr/flat/WorkshopQueueActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$gmodvr$flat$WorkshopQueue$Status:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 360
    invoke-static {}, Lcom/gmodvr/flat/WorkshopQueue$Status;->values()[Lcom/gmodvr/flat/WorkshopQueue$Status;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/gmodvr/flat/WorkshopQueueActivity$3;->$SwitchMap$com$gmodvr$flat$WorkshopQueue$Status:[I

    :try_start_9
    sget-object v1, Lcom/gmodvr/flat/WorkshopQueue$Status;->DONE:Lcom/gmodvr/flat/WorkshopQueue$Status;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lcom/gmodvr/flat/WorkshopQueueActivity$3;->$SwitchMap$com$gmodvr$flat$WorkshopQueue$Status:[I

    sget-object v1, Lcom/gmodvr/flat/WorkshopQueue$Status;->CURRENT:Lcom/gmodvr/flat/WorkshopQueue$Status;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Lcom/gmodvr/flat/WorkshopQueueActivity$3;->$SwitchMap$com$gmodvr$flat$WorkshopQueue$Status:[I

    sget-object v1, Lcom/gmodvr/flat/WorkshopQueue$Status;->FAILED:Lcom/gmodvr/flat/WorkshopQueue$Status;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    return-void
.end method

###### Class com.gmodvr.flat.WorkshopQueueActivity.Row (com.gmodvr.flat.WorkshopQueueActivity$Row)
.class final Lcom/gmodvr/flat/WorkshopQueueActivity$Row;
.super Ljava/lang/Object;
.source "WorkshopQueueActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gmodvr/flat/WorkshopQueueActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Row"
.end annotation


# instance fields
.field final box:Landroid/widget/CheckBox;

.field entry:Lcom/gmodvr/flat/WorkshopQueue$Entry;

.field final info:Landroid/widget/TextView;

.field final name:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/gmodvr/flat/WorkshopQueueActivity;

.field final view:Landroid/widget/LinearLayout;


# direct methods
.method public static synthetic $r8$lambda$Wel3sw8hz0MLjMkKLtl1CX29FK0(Lcom/gmodvr/flat/WorkshopQueueActivity$Row;Landroid/view/View;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gmodvr/flat/WorkshopQueueActivity$Row;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/gmodvr/flat/WorkshopQueueActivity;)V
    .registers 10

    .line 396
    iput-object p1, p0, Lcom/gmodvr/flat/WorkshopQueueActivity$Row;->this$0:Lcom/gmodvr/flat/WorkshopQueueActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 391
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/gmodvr/flat/WorkshopQueueActivity$Row;->view:Landroid/widget/LinearLayout;

    .line 392
    const-string v1, ""

    invoke-static {p1, v1}, Lcom/gmodvr/flat/WorkshopQueueActivity;->-$$Nest$mcheck(Lcom/gmodvr/flat/WorkshopQueueActivity;Ljava/lang/String;)Landroid/widget/CheckBox;

    move-result-object v2

    iput-object v2, p0, Lcom/gmodvr/flat/WorkshopQueueActivity$Row;->box:Landroid/widget/CheckBox;

    const/high16 v3, 0x41700000    # 15.0f

    const v4, -0x191513

    .line 393
    invoke-static {p1, v1, v3, v4}, Lcom/gmodvr/flat/WorkshopQueueActivity;->-$$Nest$mtext(Lcom/gmodvr/flat/WorkshopQueueActivity;Ljava/lang/String;FI)Landroid/widget/TextView;

    move-result-object v3

    iput-object v3, p0, Lcom/gmodvr/flat/WorkshopQueueActivity$Row;->name:Landroid/widget/TextView;

    const/high16 v4, 0x41480000    # 12.5f

    const v5, -0x72665d

    invoke-static {p1, v1, v4, v5}, Lcom/gmodvr/flat/WorkshopQueueActivity;->-$$Nest$mtext(Lcom/gmodvr/flat/WorkshopQueueActivity;Ljava/lang/String;FI)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Lcom/gmodvr/flat/WorkshopQueueActivity$Row;->info:Landroid/widget/TextView;

    const/16 v4, 0x10

    .line 397
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/high16 v4, 0x41000000    # 8.0f

    .line 398
    invoke-static {p1, v4}, Lcom/gmodvr/flat/WorkshopQueueActivity;->-$$Nest$mdp(Lcom/gmodvr/flat/WorkshopQueueActivity;F)I

    move-result v5

    invoke-static {p1, v4}, Lcom/gmodvr/flat/WorkshopQueueActivity;->-$$Nest$mdp(Lcom/gmodvr/flat/WorkshopQueueActivity;F)I

    move-result v6

    invoke-static {p1, v4}, Lcom/gmodvr/flat/WorkshopQueueActivity;->-$$Nest$mdp(Lcom/gmodvr/flat/WorkshopQueueActivity;F)I

    move-result v7

    invoke-static {p1, v4}, Lcom/gmodvr/flat/WorkshopQueueActivity;->-$$Nest$mdp(Lcom/gmodvr/flat/WorkshopQueueActivity;F)I

    move-result v4

    invoke-virtual {v0, v5, v6, v7, v4}, Landroid/view/View;->setPadding(IIII)V

    const/high16 v4, 0x42500000    # 52.0f

    .line 399
    invoke-static {p1, v4}, Lcom/gmodvr/flat/WorkshopQueueActivity;->-$$Nest$mdp(Lcom/gmodvr/flat/WorkshopQueueActivity;F)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/view/View;->setMinimumHeight(I)V

    .line 400
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 401
    invoke-static {p1}, Lcom/gmodvr/flat/WorkshopQueueActivity;->-$$Nest$mvertical(Lcom/gmodvr/flat/WorkshopQueueActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    const/4 v4, 0x1

    .line 402
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 403
    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 404
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 405
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 406
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    invoke-direct {v1, v5, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 407
    invoke-virtual {v0, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 408
    new-instance p1, Lcom/gmodvr/flat/WorkshopQueueActivity$Row$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/gmodvr/flat/WorkshopQueueActivity$Row$$ExternalSyntheticLambda0;-><init>(Lcom/gmodvr/flat/WorkshopQueueActivity$Row;)V

    invoke-virtual {v2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .registers 4

    .line 409
    iget-object p1, p0, Lcom/gmodvr/flat/WorkshopQueueActivity$Row;->entry:Lcom/gmodvr/flat/WorkshopQueue$Entry;

    if-eqz p1, :cond_3b

    iget-object p1, p0, Lcom/gmodvr/flat/WorkshopQueueActivity$Row;->this$0:Lcom/gmodvr/flat/WorkshopQueueActivity;

    invoke-static {p1}, Lcom/gmodvr/flat/WorkshopQueueActivity;->-$$Nest$fgetqueue(Lcom/gmodvr/flat/WorkshopQueueActivity;)Lcom/gmodvr/flat/WorkshopQueue;

    move-result-object p1

    if-eqz p1, :cond_3b

    iget-object p1, p0, Lcom/gmodvr/flat/WorkshopQueueActivity$Row;->this$0:Lcom/gmodvr/flat/WorkshopQueueActivity;

    invoke-static {p1}, Lcom/gmodvr/flat/WorkshopQueueActivity;->-$$Nest$fgetreviewing(Lcom/gmodvr/flat/WorkshopQueueActivity;)Z

    move-result p1

    if-nez p1, :cond_15

    goto :goto_3b

    .line 410
    :cond_15
    iget-object p1, p0, Lcom/gmodvr/flat/WorkshopQueueActivity$Row;->this$0:Lcom/gmodvr/flat/WorkshopQueueActivity;

    invoke-static {p1}, Lcom/gmodvr/flat/WorkshopQueueActivity;->-$$Nest$fgetqueue(Lcom/gmodvr/flat/WorkshopQueueActivity;)Lcom/gmodvr/flat/WorkshopQueue;

    move-result-object p1

    iget-object v0, p0, Lcom/gmodvr/flat/WorkshopQueueActivity$Row;->entry:Lcom/gmodvr/flat/WorkshopQueue$Entry;

    iget-object v1, p0, Lcom/gmodvr/flat/WorkshopQueueActivity$Row;->box:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/gmodvr/flat/WorkshopQueue;->setSelected(Lcom/gmodvr/flat/WorkshopQueue$Entry;Z)V

    .line 411
    iget-object p1, p0, Lcom/gmodvr/flat/WorkshopQueueActivity$Row;->box:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/gmodvr/flat/WorkshopQueueActivity$Row;->entry:Lcom/gmodvr/flat/WorkshopQueue$Entry;

    iget-boolean v0, v0, Lcom/gmodvr/flat/WorkshopQueue$Entry;->selected:Z

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 412
    iget-object p1, p0, Lcom/gmodvr/flat/WorkshopQueueActivity$Row;->this$0:Lcom/gmodvr/flat/WorkshopQueueActivity;

    const-string v0, ""

    invoke-static {p1, v0}, Lcom/gmodvr/flat/WorkshopQueueActivity;->-$$Nest$fputsignature(Lcom/gmodvr/flat/WorkshopQueueActivity;Ljava/lang/String;)V

    .line 413
    iget-object p0, p0, Lcom/gmodvr/flat/WorkshopQueueActivity$Row;->this$0:Lcom/gmodvr/flat/WorkshopQueueActivity;

    invoke-static {p0}, Lcom/gmodvr/flat/WorkshopQueueActivity;->-$$Nest$mrender(Lcom/gmodvr/flat/WorkshopQueueActivity;)V

    :cond_3b
    :goto_3b
    return-void
.end method


# virtual methods
.method public bind(Lcom/gmodvr/flat/WorkshopQueue$Entry;)V
    .registers 5

    .line 418
    iput-object p1, p0, Lcom/gmodvr/flat/WorkshopQueueActivity$Row;->entry:Lcom/gmodvr/flat/WorkshopQueue$Entry;

    .line 419
    iget-object v0, p0, Lcom/gmodvr/flat/WorkshopQueueActivity$Row;->name:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/gmodvr/flat/WorkshopQueue$Entry;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 420
    iget-object v0, p0, Lcom/gmodvr/flat/WorkshopQueueActivity$Row;->info:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/gmodvr/flat/WorkshopQueueActivity$Row;->this$0:Lcom/gmodvr/flat/WorkshopQueueActivity;

    invoke-static {v1, p1}, Lcom/gmodvr/flat/WorkshopQueueActivity;->-$$Nest$mdetail(Lcom/gmodvr/flat/WorkshopQueueActivity;Lcom/gmodvr/flat/WorkshopQueue$Entry;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 421
    iget-object v0, p0, Lcom/gmodvr/flat/WorkshopQueueActivity$Row;->info:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/gmodvr/flat/WorkshopQueueActivity$Row;->this$0:Lcom/gmodvr/flat/WorkshopQueueActivity;

    invoke-static {v1, p1}, Lcom/gmodvr/flat/WorkshopQueueActivity;->-$$Nest$mcolor(Lcom/gmodvr/flat/WorkshopQueueActivity;Lcom/gmodvr/flat/WorkshopQueue$Entry;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 422
    iget-object v0, p0, Lcom/gmodvr/flat/WorkshopQueueActivity$Row;->box:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/gmodvr/flat/WorkshopQueueActivity$Row;->this$0:Lcom/gmodvr/flat/WorkshopQueueActivity;

    invoke-static {v1}, Lcom/gmodvr/flat/WorkshopQueueActivity;->-$$Nest$fgetreviewing(Lcom/gmodvr/flat/WorkshopQueueActivity;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2e

    move v1, v2

    goto :goto_30

    :cond_2e
    const/16 v1, 0x8

    :goto_30
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 423
    iget-object v0, p0, Lcom/gmodvr/flat/WorkshopQueueActivity$Row;->box:Landroid/widget/CheckBox;

    iget-boolean v1, p1, Lcom/gmodvr/flat/WorkshopQueue$Entry;->selected:Z

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 424
    iget-object v0, p0, Lcom/gmodvr/flat/WorkshopQueueActivity$Row;->box:Landroid/widget/CheckBox;

    iget-object p0, p0, Lcom/gmodvr/flat/WorkshopQueueActivity$Row;->this$0:Lcom/gmodvr/flat/WorkshopQueueActivity;

    invoke-static {p0}, Lcom/gmodvr/flat/WorkshopQueueActivity;->-$$Nest$fgetreviewing(Lcom/gmodvr/flat/WorkshopQueueActivity;)Z

    move-result p0

    if-eqz p0, :cond_4b

    invoke-virtual {p1}, Lcom/gmodvr/flat/WorkshopQueue$Entry;->downloadable()Z

    move-result p0

    if-eqz p0, :cond_4b

    const/4 v2, 0x1

    :cond_4b
    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

###### Class com.gmodvr.flat.WorkshopQueueActivity$Row$$ExternalSyntheticLambda0 (com.gmodvr.flat.WorkshopQueueActivity$Row$$ExternalSyntheticLambda0)
.class public final synthetic Lcom/gmodvr/flat/WorkshopQueueActivity$Row$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/WorkshopQueueActivity$Row;


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/WorkshopQueueActivity$Row;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/WorkshopQueueActivity$Row$$ExternalSyntheticLambda0;->f$0:Lcom/gmodvr/flat/WorkshopQueueActivity$Row;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/gmodvr/flat/WorkshopQueueActivity$Row$$ExternalSyntheticLambda0;->f$0:Lcom/gmodvr/flat/WorkshopQueueActivity$Row;

    invoke-static {p0, p1}, Lcom/gmodvr/flat/WorkshopQueueActivity$Row;->$r8$lambda$Wel3sw8hz0MLjMkKLtl1CX29FK0(Lcom/gmodvr/flat/WorkshopQueueActivity$Row;Landroid/view/View;)V

    return-void
.end method

###### Class com.gmodvr.flat.WorkshopQueueActivity.SharedPrefsView (com.gmodvr.flat.WorkshopQueueActivity$SharedPrefsView)
.class final Lcom/gmodvr/flat/WorkshopQueueActivity$SharedPrefsView;
.super Ljava/lang/Object;
.source "WorkshopQueueActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gmodvr/flat/WorkshopQueueActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SharedPrefsView"
.end annotation


# instance fields
.field final language:Ljava/lang/String;

.field final profile:Ljava/lang/String;

.field final synthetic this$0:Lcom/gmodvr/flat/WorkshopQueueActivity;

.field final workshop:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/gmodvr/flat/WorkshopQueueActivity;)V
    .registers 5

    .line 238
    iput-object p1, p0, Lcom/gmodvr/flat/WorkshopQueueActivity$SharedPrefsView;->this$0:Lcom/gmodvr/flat/WorkshopQueueActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 239
    invoke-static {p1}, Lcom/gmodvr/flat/SteamDownloadService;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "profile"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gmodvr/flat/WorkshopQueueActivity$SharedPrefsView;->profile:Ljava/lang/String;

    .line 240
    invoke-static {p1}, Lcom/gmodvr/flat/SteamDownloadService;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "workshop"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gmodvr/flat/WorkshopQueueActivity$SharedPrefsView;->workshop:Ljava/lang/String;

    .line 241
    invoke-static {p1}, Lcom/gmodvr/flat/SteamDownloadService;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "language"

    const-string v1, "english"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gmodvr/flat/WorkshopQueueActivity$SharedPrefsView;->language:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/gmodvr/flat/WorkshopQueueActivity;Lcom/gmodvr/flat/WorkshopQueueActivity-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/gmodvr/flat/WorkshopQueueActivity$SharedPrefsView;-><init>(Lcom/gmodvr/flat/WorkshopQueueActivity;)V

    return-void
.end method

###### Class com.gmodvr.flat.WorkshopQueueActivity$$ExternalSyntheticLambda0 (com.gmodvr.flat.WorkshopQueueActivity$$ExternalSyntheticLambda0)
.class public final synthetic Lcom/gmodvr/flat/WorkshopQueueActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/WorkshopQueueActivity;

.field public final synthetic f$1:Lcom/gmodvr/flat/WorkshopQueue;

.field public final synthetic f$2:J

.field public final synthetic f$3:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/WorkshopQueueActivity;Lcom/gmodvr/flat/WorkshopQueue;JLjava/lang/String;)V
    .registers 6

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/WorkshopQueueActivity$$ExternalSyntheticLambda0;->f$0:Lcom/gmodvr/flat/WorkshopQueueActivity;

    iput-object p2, p0, Lcom/gmodvr/flat/WorkshopQueueActivity$$ExternalSyntheticLambda0;->f$1:Lcom/gmodvr/flat/WorkshopQueue;

    iput-wide p3, p0, Lcom/gmodvr/flat/WorkshopQueueActivity$$ExternalSyntheticLambda0;->f$2:J

    iput-object p5, p0, Lcom/gmodvr/flat/WorkshopQueueActivity$$ExternalSyntheticLambda0;->f$3:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .line 0
    iget-object v0, p0, Lcom/gmodvr/flat/WorkshopQueueActivity$$ExternalSyntheticLambda0;->f$0:Lcom/gmodvr/flat/WorkshopQueueActivity;

    iget-object v1, p0, Lcom/gmodvr/flat/WorkshopQueueActivity$$ExternalSyntheticLambda0;->f$1:Lcom/gmodvr/flat/WorkshopQueue;

    iget-wide v2, p0, Lcom/gmodvr/flat/WorkshopQueueActivity$$ExternalSyntheticLambda0;->f$2:J

    iget-object p0, p0, Lcom/gmodvr/flat/WorkshopQueueActivity$$ExternalSyntheticLambda0;->f$3:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, p0}, Lcom/gmodvr/flat/WorkshopQueueActivity;->$r8$lambda$fwAe-a9NZA-kUdss9VDzpKdJEnE(Lcom/gmodvr/flat/WorkshopQueueActivity;Lcom/gmodvr/flat/WorkshopQueue;JLjava/lang/String;)V

    return-void
.end method

###### Class com.gmodvr.flat.WorkshopQueueActivity$$ExternalSyntheticLambda1 (com.gmodvr.flat.WorkshopQueueActivity$$ExternalSyntheticLambda1)
.class public final synthetic Lcom/gmodvr/flat/WorkshopQueueActivity$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/WorkshopQueueActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/WorkshopQueueActivity;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/WorkshopQueueActivity$$ExternalSyntheticLambda1;->f$0:Lcom/gmodvr/flat/WorkshopQueueActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/gmodvr/flat/WorkshopQueueActivity$$ExternalSyntheticLambda1;->f$0:Lcom/gmodvr/flat/WorkshopQueueActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

###### Class com.gmodvr.flat.WorkshopQueueActivity$$ExternalSyntheticLambda10 (com.gmodvr.flat.WorkshopQueueActivity$$ExternalSyntheticLambda10)
.class public final synthetic Lcom/gmodvr/flat/WorkshopQueueActivity$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/WorkshopQueueActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/WorkshopQueueActivity;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/WorkshopQueueActivity$$ExternalSyntheticLambda10;->f$0:Lcom/gmodvr/flat/WorkshopQueueActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/gmodvr/flat/WorkshopQueueActivity$$ExternalSyntheticLambda10;->f$0:Lcom/gmodvr/flat/WorkshopQueueActivity;

    invoke-static {p0}, Lcom/gmodvr/flat/WorkshopQueueActivity;->$r8$lambda$B-E1gdzxgJFxjJ8vSY-9MAg7OpY(Lcom/gmodvr/flat/WorkshopQueueActivity;)V

    return-void
.end method

###### Class com.gmodvr.flat.WorkshopQueueActivity$$ExternalSyntheticLambda11 (com.gmodvr.flat.WorkshopQueueActivity$$ExternalSyntheticLambda11)
.class public final synthetic Lcom/gmodvr/flat/WorkshopQueueActivity$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/WorkshopQueueActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/WorkshopQueueActivity;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/WorkshopQueueActivity$$ExternalSyntheticLambda11;->f$0:Lcom/gmodvr/flat/WorkshopQueueActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/gmodvr/flat/WorkshopQueueActivity$$ExternalSyntheticLambda11;->f$0:Lcom/gmodvr/flat/WorkshopQueueActivity;

    invoke-static {p0}, Lcom/gmodvr/flat/WorkshopQueueActivity;->$r8$lambda$8pLIsemJiLcnFRcRvSnsW0zYKzs(Lcom/gmodvr/flat/WorkshopQueueActivity;)V

    return-void
.end method

###### Class com.gmodvr.flat.WorkshopQueueActivity$$ExternalSyntheticLambda12 (com.gmodvr.flat.WorkshopQueueActivity$$ExternalSyntheticLambda12)
.class public final synthetic Lcom/gmodvr/flat/WorkshopQueueActivity$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/WorkshopQueueActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/WorkshopQueueActivity;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/WorkshopQueueActivity$$ExternalSyntheticLambda12;->f$0:Lcom/gmodvr/flat/WorkshopQueueActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/gmodvr/flat/WorkshopQueueActivity$$ExternalSyntheticLambda12;->f$0:Lcom/gmodvr/flat/WorkshopQueueActivity;

    invoke-static {p0}, Lcom/gmodvr/flat/WorkshopQueueActivity;->$r8$lambda$9a3SDv7_tZrJAjCA-b2x2Mpf-sw(Lcom/gmodvr/flat/WorkshopQueueActivity;)V

    return-void
.end method

###### Class com.gmodvr.flat.WorkshopQueueActivity$$ExternalSyntheticLambda13 (com.gmodvr.flat.WorkshopQueueActivity$$ExternalSyntheticLambda13)
.class public final synthetic Lcom/gmodvr/flat/WorkshopQueueActivity$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/WorkshopQueueActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/WorkshopQueueActivity;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/WorkshopQueueActivity$$ExternalSyntheticLambda13;->f$0:Lcom/gmodvr/flat/WorkshopQueueActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/gmodvr/flat/WorkshopQueueActivity$$ExternalSyntheticLambda13;->f$0:Lcom/gmodvr/flat/WorkshopQueueActivity;

    invoke-static {p0}, Lcom/gmodvr/flat/WorkshopQueueActivity;->$r8$lambda$633zkwMdvlONIosQ42QRW8vuGEo(Lcom/gmodvr/flat/WorkshopQueueActivity;)V

    return-void
.end method

###### Class com.gmodvr.flat.WorkshopQueueActivity$$ExternalSyntheticLambda14 (com.gmodvr.flat.WorkshopQueueActivity$$ExternalSyntheticLambda14)
.class public final synthetic Lcom/gmodvr/flat/WorkshopQueueActivity$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/WorkshopQueueActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/WorkshopQueueActivity;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/WorkshopQueueActivity$$ExternalSyntheticLambda14;->f$0:Lcom/gmodvr/flat/WorkshopQueueActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/gmodvr/flat/WorkshopQueueActivity$$ExternalSyntheticLambda14;->f$0:Lcom/gmodvr/flat/WorkshopQueueActivity;

    invoke-static {p0}, Lcom/gmodvr/flat/WorkshopQueueActivity;->$r8$lambda$Lux99JY-n4U57YN36zfJoeWOE9g(Lcom/gmodvr/flat/WorkshopQueueActivity;)V

    return-void
.end method

###### Class com.gmodvr.flat.WorkshopQueueActivity$$ExternalSyntheticLambda15 (com.gmodvr.flat.WorkshopQueueActivity$$ExternalSyntheticLambda15)
.class public final synthetic Lcom/gmodvr/flat/WorkshopQueueActivity$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/WorkshopQueueActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/WorkshopQueueActivity;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/WorkshopQueueActivity$$ExternalSyntheticLambda15;->f$0:Lcom/gmodvr/flat/WorkshopQueueActivity;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/gmodvr/flat/WorkshopQueueActivity$$ExternalSyntheticLambda15;->f$0:Lcom/gmodvr/flat/WorkshopQueueActivity;

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/gmodvr/flat/WorkshopQueueActivity;->$r8$lambda$GfT-GRDHFH6zZ4PViNzdCHI5n4w(Lcom/gmodvr/flat/WorkshopQueueActivity;Ljava/lang/String;)V

    return-void
.end method

###### Class com.gmodvr.flat.WorkshopQueueActivity$$ExternalSyntheticLambda16 (com.gmodvr.flat.WorkshopQueueActivity$$ExternalSyntheticLambda16)
.class public final synthetic Lcom/gmodvr/flat/WorkshopQueueActivity$$ExternalSyntheticLambda16;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/WorkshopQueueActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/WorkshopQueueActivity;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/WorkshopQueueActivity$$ExternalSyntheticLambda16;->f$0:Lcom/gmodvr/flat/WorkshopQueueActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/gmodvr/flat/WorkshopQueueActivity$$ExternalSyntheticLambda16;->f$0:Lcom/gmodvr/flat/WorkshopQueueActivity;

    invoke-static {p0}, Lcom/gmodvr/flat/WorkshopQueueActivity;->$r8$lambda$gqwYWUAZvGYbTD-gnEnSTrjCCJw(Lcom/gmodvr/flat/WorkshopQueueActivity;)V

    return-void
.end method

###### Class com.gmodvr.flat.WorkshopQueueActivity$$ExternalSyntheticLambda17 (com.gmodvr.flat.WorkshopQueueActivity$$ExternalSyntheticLambda17)
.class public final synthetic Lcom/gmodvr/flat/WorkshopQueueActivity$$ExternalSyntheticLambda17;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/WorkshopQueueActivity;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Lcom/gmodvr/flat/WorkshopQueue;


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/WorkshopQueueActivity;Ljava/lang/String;Lcom/gmodvr/flat/WorkshopQueue;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/WorkshopQueueActivity$$ExternalSyntheticLambda17;->f$0:Lcom/gmodvr/flat/WorkshopQueueActivity;

    iput-object p2, p0, Lcom/gmodvr/flat/WorkshopQueueActivity$$ExternalSyntheticLambda17;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/gmodvr/flat/WorkshopQueueActivity$$ExternalSyntheticLambda17;->f$2:Lcom/gmodvr/flat/WorkshopQueue;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/gmodvr/flat/WorkshopQueueActivity$$ExternalSyntheticLambda17;->f$0:Lcom/gmodvr/flat/WorkshopQueueActivity;

    iget-object v1, p0, Lcom/gmodvr/flat/WorkshopQueueActivity$$ExternalSyntheticLambda17;->f$1:Ljava/lang/String;

    iget-object p0, p0, Lcom/gmodvr/flat/WorkshopQueueActivity$$ExternalSyntheticLambda17;->f$2:Lcom/gmodvr/flat/WorkshopQueue;

    invoke-static {v0, v1, p0}, Lcom/gmodvr/flat/WorkshopQueueActivity;->$r8$lambda$Exv653IFth5ZpYx6nVMuAgNlFvk(Lcom/gmodvr/flat/WorkshopQueueActivity;Ljava/lang/String;Lcom/gmodvr/flat/WorkshopQueue;)V

    return-void
.end method

###### Class com.gmodvr.flat.WorkshopQueueActivity$$ExternalSyntheticLambda18 (com.gmodvr.flat.WorkshopQueueActivity$$ExternalSyntheticLambda18)
.class public final synthetic Lcom/gmodvr/flat/WorkshopQueueActivity$$ExternalSyntheticLambda18;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/WorkshopQueueActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/WorkshopQueueActivity;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/WorkshopQueueActivity$$ExternalSyntheticLambda18;->f$0:Lcom/gmodvr/flat/WorkshopQueueActivity;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/gmodvr/flat/WorkshopQueueActivity$$ExternalSyntheticLambda18;->f$0:Lcom/gmodvr/flat/WorkshopQueueActivity;

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/gmodvr/flat/WorkshopQueueActivity;->$r8$lambda$M7WDT9OtRRpHcz8LIRKa8Mt7iV4(Lcom/gmodvr/flat/WorkshopQueueActivity;Ljava/lang/String;)V

    return-void
.end method

###### Class com.gmodvr.flat.WorkshopQueueActivity$$ExternalSyntheticLambda2 (com.gmodvr.flat.WorkshopQueueActivity$$ExternalSyntheticLambda2)
.class public final synthetic Lcom/gmodvr/flat/WorkshopQueueActivity$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/WorkshopQueueActivity;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/WorkshopQueueActivity;Ljava/lang/String;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/WorkshopQueueActivity$$ExternalSyntheticLambda2;->f$0:Lcom/gmodvr/flat/WorkshopQueueActivity;

    iput-object p2, p0, Lcom/gmodvr/flat/WorkshopQueueActivity$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/gmodvr/flat/WorkshopQueueActivity$$ExternalSyntheticLambda2;->f$0:Lcom/gmodvr/flat/WorkshopQueueActivity;

    iget-object p0, p0, Lcom/gmodvr/flat/WorkshopQueueActivity$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/gmodvr/flat/WorkshopQueueActivity;->$r8$lambda$VivPwADUh5ZmAcQEMcaNK0UAvd8(Lcom/gmodvr/flat/WorkshopQueueActivity;Ljava/lang/String;)V

    return-void
.end method

###### Class com.gmodvr.flat.WorkshopQueueActivity$$ExternalSyntheticLambda3 (com.gmodvr.flat.WorkshopQueueActivity$$ExternalSyntheticLambda3)
.class public final synthetic Lcom/gmodvr/flat/WorkshopQueueActivity$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/WorkshopQueueActivity;

.field public final synthetic f$1:Lcom/gmodvr/flat/WorkshopQueue;


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/WorkshopQueueActivity;Lcom/gmodvr/flat/WorkshopQueue;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/WorkshopQueueActivity$$ExternalSyntheticLambda3;->f$0:Lcom/gmodvr/flat/WorkshopQueueActivity;

    iput-object p2, p0, Lcom/gmodvr/flat/WorkshopQueueActivity$$ExternalSyntheticLambda3;->f$1:Lcom/gmodvr/flat/WorkshopQueue;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/gmodvr/flat/WorkshopQueueActivity$$ExternalSyntheticLambda3;->f$0:Lcom/gmodvr/flat/WorkshopQueueActivity;

    iget-object p0, p0, Lcom/gmodvr/flat/WorkshopQueueActivity$$ExternalSyntheticLambda3;->f$1:Lcom/gmodvr/flat/WorkshopQueue;

    invoke-static {v0, p0}, Lcom/gmodvr/flat/WorkshopQueueActivity;->$r8$lambda$Moy6imREX6xEhL2KJiW2mR1TeGE(Lcom/gmodvr/flat/WorkshopQueueActivity;Lcom/gmodvr/flat/WorkshopQueue;)V

    return-void
.end method

###### Class com.gmodvr.flat.WorkshopQueueActivity$$ExternalSyntheticLambda4 (com.gmodvr.flat.WorkshopQueueActivity$$ExternalSyntheticLambda4)
.class public final synthetic Lcom/gmodvr/flat/WorkshopQueueActivity$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/WorkshopQueueActivity;

.field public final synthetic f$1:Lcom/gmodvr/flat/WorkshopQueue;


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/WorkshopQueueActivity;Lcom/gmodvr/flat/WorkshopQueue;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/WorkshopQueueActivity$$ExternalSyntheticLambda4;->f$0:Lcom/gmodvr/flat/WorkshopQueueActivity;

    iput-object p2, p0, Lcom/gmodvr/flat/WorkshopQueueActivity$$ExternalSyntheticLambda4;->f$1:Lcom/gmodvr/flat/WorkshopQueue;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/gmodvr/flat/WorkshopQueueActivity$$ExternalSyntheticLambda4;->f$0:Lcom/gmodvr/flat/WorkshopQueueActivity;

    iget-object p0, p0, Lcom/gmodvr/flat/WorkshopQueueActivity$$ExternalSyntheticLambda4;->f$1:Lcom/gmodvr/flat/WorkshopQueue;

    invoke-static {v0, p0}, Lcom/gmodvr/flat/WorkshopQueueActivity;->$r8$lambda$dZrmbBAMSysG-kzytXHjGOrEdW4(Lcom/gmodvr/flat/WorkshopQueueActivity;Lcom/gmodvr/flat/WorkshopQueue;)V

    return-void
.end method

###### Class com.gmodvr.flat.WorkshopQueueActivity$$ExternalSyntheticLambda5 (com.gmodvr.flat.WorkshopQueueActivity$$ExternalSyntheticLambda5)
.class public final synthetic Lcom/gmodvr/flat/WorkshopQueueActivity$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/WorkshopQueueActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/WorkshopQueueActivity;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/WorkshopQueueActivity$$ExternalSyntheticLambda5;->f$0:Lcom/gmodvr/flat/WorkshopQueueActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/gmodvr/flat/WorkshopQueueActivity$$ExternalSyntheticLambda5;->f$0:Lcom/gmodvr/flat/WorkshopQueueActivity;

    invoke-static {p0, p1}, Lcom/gmodvr/flat/WorkshopQueueActivity;->$r8$lambda$4QR1ERQEa0jKjunZ3YKqNLYvFTQ(Lcom/gmodvr/flat/WorkshopQueueActivity;Landroid/view/View;)V

    return-void
.end method

###### Class com.gmodvr.flat.WorkshopQueueActivity$$ExternalSyntheticLambda6 (com.gmodvr.flat.WorkshopQueueActivity$$ExternalSyntheticLambda6)
.class public final synthetic Lcom/gmodvr/flat/WorkshopQueueActivity$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/WorkshopQueueActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/WorkshopQueueActivity;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/WorkshopQueueActivity$$ExternalSyntheticLambda6;->f$0:Lcom/gmodvr/flat/WorkshopQueueActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/gmodvr/flat/WorkshopQueueActivity$$ExternalSyntheticLambda6;->f$0:Lcom/gmodvr/flat/WorkshopQueueActivity;

    invoke-static {p0}, Lcom/gmodvr/flat/WorkshopQueueActivity;->$r8$lambda$gEm3Ni_3PRiMhJfRHff4e3lNCWY(Lcom/gmodvr/flat/WorkshopQueueActivity;)V

    return-void
.end method

###### Class com.gmodvr.flat.WorkshopQueueActivity$$ExternalSyntheticLambda7 (com.gmodvr.flat.WorkshopQueueActivity$$ExternalSyntheticLambda7)
.class public final synthetic Lcom/gmodvr/flat/WorkshopQueueActivity$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/WorkshopQueueActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/WorkshopQueueActivity;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/WorkshopQueueActivity$$ExternalSyntheticLambda7;->f$0:Lcom/gmodvr/flat/WorkshopQueueActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/gmodvr/flat/WorkshopQueueActivity$$ExternalSyntheticLambda7;->f$0:Lcom/gmodvr/flat/WorkshopQueueActivity;

    invoke-static {p0}, Lcom/gmodvr/flat/WorkshopQueueActivity;->$r8$lambda$lO0bcGgSL-eYuZ9lg6LprAmoTus(Lcom/gmodvr/flat/WorkshopQueueActivity;)V

    return-void
.end method

###### Class com.gmodvr.flat.WorkshopQueueActivity$$ExternalSyntheticLambda8 (com.gmodvr.flat.WorkshopQueueActivity$$ExternalSyntheticLambda8)
.class public final synthetic Lcom/gmodvr/flat/WorkshopQueueActivity$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/WorkshopQueueActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/WorkshopQueueActivity;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/WorkshopQueueActivity$$ExternalSyntheticLambda8;->f$0:Lcom/gmodvr/flat/WorkshopQueueActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/gmodvr/flat/WorkshopQueueActivity$$ExternalSyntheticLambda8;->f$0:Lcom/gmodvr/flat/WorkshopQueueActivity;

    invoke-static {p0}, Lcom/gmodvr/flat/WorkshopQueueActivity;->$r8$lambda$Vz-df6nKEVAoOfqdR32tlRW707Q(Lcom/gmodvr/flat/WorkshopQueueActivity;)V

    return-void
.end method

###### Class com.gmodvr.flat.WorkshopQueueActivity$$ExternalSyntheticLambda9 (com.gmodvr.flat.WorkshopQueueActivity$$ExternalSyntheticLambda9)
.class public final synthetic Lcom/gmodvr/flat/WorkshopQueueActivity$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/gmodvr/flat/WorkshopQueueActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/gmodvr/flat/WorkshopQueueActivity;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmodvr/flat/WorkshopQueueActivity$$ExternalSyntheticLambda9;->f$0:Lcom/gmodvr/flat/WorkshopQueueActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/gmodvr/flat/WorkshopQueueActivity$$ExternalSyntheticLambda9;->f$0:Lcom/gmodvr/flat/WorkshopQueueActivity;

    invoke-static {p0}, Lcom/gmodvr/flat/WorkshopQueueActivity;->$r8$lambda$va6YLIUlgESfgeTRd0NOZlCNYAE(Lcom/gmodvr/flat/WorkshopQueueActivity;)V

    return-void
.end method
