###### Class com.sourcevrport.platform.GModWebView (com.sourcevrport.platform.GModWebView)
.class public final Lcom/sourcevrport/platform/GModWebView;
.super Ljava/lang/Object;
.source "GModWebView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sourcevrport/platform/GModWebView$Page;,
        Lcom/sourcevrport/platform/GModWebView$Operation;
    }
.end annotation


# static fields
.field private static final ASSETS:Ljava/lang/String; = "https://gmod-assets.invalid/"

.field private static final NEXT:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final PAGES:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/sourcevrport/platform/GModWebView$Page;",
            ">;"
        }
    .end annotation
.end field

.field private static final UI:Landroid/os/Handler;

.field private static volatile activity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$52Ao18NbZQ6DiQCgxYQcNW5efcw(Ljava/lang/String;Lcom/sourcevrport/platform/GModWebView$Page;)V
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/sourcevrport/platform/GModWebView;->lambda$script$6(Ljava/lang/String;Lcom/sourcevrport/platform/GModWebView$Page;)V

    return-void
.end method

.method public static synthetic $r8$lambda$76BvxPkrIuG1p_9Do2l4GGxyTa4(Ljava/lang/String;Lcom/sourcevrport/platform/GModWebView$Page;)V
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/sourcevrport/platform/GModWebView;->lambda$text$12(Ljava/lang/String;Lcom/sourcevrport/platform/GModWebView$Page;)V

    return-void
.end method

.method public static synthetic $r8$lambda$DRA6p7XTuZVTtlYSOXB4r4Aq3n8(Ljava/lang/String;Lcom/sourcevrport/platform/GModWebView$Page;)V
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/sourcevrport/platform/GModWebView;->lambda$navigate$4(Ljava/lang/String;Lcom/sourcevrport/platform/GModWebView$Page;)V

    return-void
.end method

.method public static synthetic $r8$lambda$OEzVTGg8qp3MzjxObbOgAogqzmA(IILcom/sourcevrport/platform/GModWebView$Page;)V
    .registers 3

    .line 0
    invoke-static {p0, p1, p2}, Lcom/sourcevrport/platform/GModWebView;->lambda$resize$3(IILcom/sourcevrport/platform/GModWebView$Page;)V

    return-void
.end method

.method public static synthetic $r8$lambda$PBJLMS5mLqRuP7-NW3_9_UZ4oEI(Lcom/sourcevrport/platform/GModWebView$Page;)V
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/sourcevrport/platform/GModWebView;->lambda$stop$7(Lcom/sourcevrport/platform/GModWebView$Page;)V

    return-void
.end method

.method public static synthetic $r8$lambda$PUJumuZ5N7MoP1gWqlPftQv7F6M(IZLcom/sourcevrport/platform/GModWebView$Page;)V
    .registers 3

    .line 0
    invoke-static {p0, p1, p2}, Lcom/sourcevrport/platform/GModWebView;->lambda$key$11(IZLcom/sourcevrport/platform/GModWebView$Page;)V

    return-void
.end method

.method public static synthetic $r8$lambda$U_jGWJNe1ZHpmaBy-mjF1R3TuZw(IIIILcom/sourcevrport/platform/GModWebView$Page;)V
    .registers 5

    .line 0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/sourcevrport/platform/GModWebView;->lambda$pointer$9(IIIILcom/sourcevrport/platform/GModWebView$Page;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WtdtYjRK-yloxQy7FU66DhyBJJc(Ljava/lang/String;Ljava/lang/String;Lcom/sourcevrport/platform/GModWebView$Page;)V
    .registers 3

    .line 0
    invoke-static {p0, p1, p2}, Lcom/sourcevrport/platform/GModWebView;->lambda$html$5(Ljava/lang/String;Ljava/lang/String;Lcom/sourcevrport/platform/GModWebView$Page;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XhUqiekWTqvfJd6GS_C_eIyW_D4(ILcom/sourcevrport/platform/GModWebView$Page;)V
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/sourcevrport/platform/GModWebView;->lambda$wheel$10(ILcom/sourcevrport/platform/GModWebView$Page;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lNW02pxzgzwI_BiXqtYo6wg_8U4(ILcom/sourcevrport/platform/GModWebView$Operation;)V
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/sourcevrport/platform/GModWebView;->lambda$post$1(ILcom/sourcevrport/platform/GModWebView$Operation;)V

    return-void
.end method

.method public static synthetic $r8$lambda$npgpAc2P9hNPmqh1FJJeaeZn51c(ILcom/sourcevrport/platform/GModWebView$Page;II)V
    .registers 4

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/sourcevrport/platform/GModWebView;->lambda$create$0(ILcom/sourcevrport/platform/GModWebView$Page;II)V

    return-void
.end method

.method public static synthetic $r8$lambda$pVDbCEqmdqgOBk89NwvQ9JqpG7g(Lcom/sourcevrport/platform/GModWebView$Page;Ljava/util/concurrent/CountDownLatch;)V
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/sourcevrport/platform/GModWebView;->lambda$destroy$2(Lcom/sourcevrport/platform/GModWebView$Page;Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ulGK__H6ci2TnmiVrlO5bVUuODk(Ljava/lang/String;Ljava/lang/String;Lcom/sourcevrport/platform/GModWebView$Page;)V
    .registers 3

    .line 0
    invoke-static {p0, p1, p2}, Lcom/sourcevrport/platform/GModWebView;->lambda$bind$8(Ljava/lang/String;Ljava/lang/String;Lcom/sourcevrport/platform/GModWebView$Page;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetUI()Landroid/os/Handler;
    .registers 1

    .line 0
    sget-object v0, Lcom/sourcevrport/platform/GModWebView;->UI:Landroid/os/Handler;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$smmime(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/sourcevrport/platform/GModWebView;->mime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$smreadAsset(Ljava/lang/String;)[B
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/sourcevrport/platform/GModWebView;->readAsset(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 49
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/sourcevrport/platform/GModWebView;->UI:Landroid/os/Handler;

    .line 50
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/sourcevrport/platform/GModWebView;->PAGES:Ljava/util/concurrent/ConcurrentHashMap;

    .line 51
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/sourcevrport/platform/GModWebView;->NEXT:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 52
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/sourcevrport/platform/GModWebView;->activity:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static assetURL(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 193
    const-string v0, "asset://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "https://gmod-assets.invalid/"

    if-eqz v0, :cond_20

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 194
    :cond_20
    const-string v0, "file://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_45

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x7

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "^/+"

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 195
    :cond_45
    const-string v0, "html/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5f

    const-string v0, "data/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5f

    const-string v0, "lua/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5e

    goto :goto_5f

    :cond_5e
    return-object p0

    :cond_5f
    :goto_5f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bind(ILjava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 115
    new-instance v0, Lcom/sourcevrport/platform/GModWebView$$ExternalSyntheticLambda12;

    invoke-direct {v0, p1, p2}, Lcom/sourcevrport/platform/GModWebView$$ExternalSyntheticLambda12;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/sourcevrport/platform/GModWebView;->post(ILcom/sourcevrport/platform/GModWebView$Operation;)V

    return-void
.end method

.method public static command(IILjava/lang/String;II)V
    .registers 5

    packed-switch p1, :pswitch_data_2c

    goto :goto_2a

    .line 104
    :pswitch_4
    invoke-static {p0, p2}, Lcom/sourcevrport/platform/GModWebView;->text(ILjava/lang/String;)V

    goto :goto_2a

    :pswitch_8
    if-eqz p4, :cond_c

    const/4 p1, 0x1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    .line 103
    :goto_d
    invoke-static {p0, p3, p1}, Lcom/sourcevrport/platform/GModWebView;->key(IIZ)V

    goto :goto_2a

    .line 102
    :pswitch_11
    invoke-static {p0, p3}, Lcom/sourcevrport/platform/GModWebView;->wheel(II)V

    goto :goto_2a

    .line 101
    :pswitch_15
    invoke-static {p0}, Lcom/sourcevrport/platform/GModWebView;->stop(I)V

    goto :goto_2a

    .line 100
    :pswitch_19
    invoke-static {p0, p3, p4}, Lcom/sourcevrport/platform/GModWebView;->resize(III)V

    goto :goto_2a

    .line 99
    :pswitch_1d
    invoke-static {p0, p2}, Lcom/sourcevrport/platform/GModWebView;->script(ILjava/lang/String;)V

    goto :goto_2a

    .line 98
    :pswitch_21
    const-string p1, ""

    invoke-static {p0, p2, p1}, Lcom/sourcevrport/platform/GModWebView;->html(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_2a

    .line 97
    :pswitch_27
    invoke-static {p0, p2}, Lcom/sourcevrport/platform/GModWebView;->navigate(ILjava/lang/String;)V

    :goto_2a
    return-void

    nop

    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_27
        :pswitch_21
        :pswitch_1d
        :pswitch_19
        :pswitch_15
        :pswitch_11
        :pswitch_8
        :pswitch_4
    .end packed-switch
.end method

.method public static create(II)I
    .registers 6

    .line 63
    sget-object v0, Lcom/sourcevrport/platform/GModWebView;->activity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_30

    .line 64
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_11

    goto :goto_30

    .line 65
    :cond_11
    sget-object v1, Lcom/sourcevrport/platform/GModWebView;->NEXT:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    .line 66
    new-instance v2, Lcom/sourcevrport/platform/GModWebView$Page;

    invoke-direct {v2, v1, v0}, Lcom/sourcevrport/platform/GModWebView$Page;-><init>(ILandroid/app/Activity;)V

    .line 67
    sget-object v0, Lcom/sourcevrport/platform/GModWebView;->PAGES:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lcom/sourcevrport/platform/GModWebView;->UI:Landroid/os/Handler;

    new-instance v3, Lcom/sourcevrport/platform/GModWebView$$ExternalSyntheticLambda5;

    invoke-direct {v3, v1, v2, p0, p1}, Lcom/sourcevrport/platform/GModWebView$$ExternalSyntheticLambda5;-><init>(ILcom/sourcevrport/platform/GModWebView$Page;II)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return v1

    :cond_30
    :goto_30
    const/4 p0, 0x0

    return p0
.end method

.method public static destroy(I)V
    .registers 4

    .line 85
    sget-object v0, Lcom/sourcevrport/platform/GModWebView;->PAGES:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sourcevrport/platform/GModWebView$Page;

    if-nez p0, :cond_f

    return-void

    .line 86
    :cond_f
    iget-object v0, p0, Lcom/sourcevrport/platform/GModWebView$Page;->assetLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_13
    iput-boolean v1, p0, Lcom/sourcevrport/platform/GModWebView$Page;->closed:Z

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_43

    .line 87
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v0, v2, :cond_24

    invoke-virtual {p0}, Lcom/sourcevrport/platform/GModWebView$Page;->release()V

    goto :goto_42

    .line 89
    :cond_24
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 90
    sget-object v1, Lcom/sourcevrport/platform/GModWebView;->UI:Landroid/os/Handler;

    new-instance v2, Lcom/sourcevrport/platform/GModWebView$$ExternalSyntheticLambda10;

    invoke-direct {v2, p0, v0}, Lcom/sourcevrport/platform/GModWebView$$ExternalSyntheticLambda10;-><init>(Lcom/sourcevrport/platform/GModWebView$Page;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 91
    :try_start_33
    sget-object p0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x5

    invoke-virtual {v0, v1, v2, p0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_3a
    .catch Ljava/lang/InterruptedException; {:try_start_33 .. :try_end_3a} :catch_3b

    goto :goto_42

    .line 92
    :catch_3b
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    :goto_42
    return-void

    :catchall_43
    move-exception p0

    .line 86
    :try_start_44
    monitor-exit v0
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_43

    throw p0
.end method

.method public static events(I)[Ljava/lang/String;
    .registers 5

    .line 122
    sget-object v0, Lcom/sourcevrport/platform/GModWebView;->PAGES:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sourcevrport/platform/GModWebView$Page;

    const/4 v0, 0x0

    if-nez p0, :cond_12

    new-array p0, v0, [Ljava/lang/String;

    return-object p0

    .line 123
    :cond_12
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 124
    :goto_17
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v3, 0x80

    if-ge v2, v3, :cond_2d

    iget-object v2, p0, Lcom/sourcevrport/platform/GModWebView$Page;->events:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_2d

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_17

    .line 125
    :cond_2d
    new-array p0, v0, [Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public static html(ILjava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 110
    new-instance v0, Lcom/sourcevrport/platform/GModWebView$$ExternalSyntheticLambda6;

    invoke-direct {v0, p2, p1}, Lcom/sourcevrport/platform/GModWebView$$ExternalSyntheticLambda6;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/sourcevrport/platform/GModWebView;->post(ILcom/sourcevrport/platform/GModWebView$Operation;)V

    return-void
.end method

.method public static initialize(Landroid/app/Activity;)V
    .registers 2

    .line 55
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/sourcevrport/platform/GModWebView;->activity:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static key(IIZ)V
    .registers 4

    .line 166
    new-instance v0, Lcom/sourcevrport/platform/GModWebView$$ExternalSyntheticLambda7;

    invoke-direct {v0, p1, p2}, Lcom/sourcevrport/platform/GModWebView$$ExternalSyntheticLambda7;-><init>(IZ)V

    invoke-static {p0, v0}, Lcom/sourcevrport/platform/GModWebView;->post(ILcom/sourcevrport/platform/GModWebView$Operation;)V

    return-void
.end method

.method private static synthetic lambda$bind$8(Ljava/lang/String;Ljava/lang/String;Lcom/sourcevrport/platform/GModWebView$Page;)V
    .registers 6

    .line 116
    iget-object v0, p2, Lcom/sourcevrport/platform/GModWebView$Page;->bindings:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\u0000"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {p0, p1}, [Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/sourcevrport/platform/GModWebView$Page;->installBindings()V

    return-void
.end method

.method private static synthetic lambda$create$0(ILcom/sourcevrport/platform/GModWebView$Page;II)V
    .registers 5

    .line 69
    sget-object v0, Lcom/sourcevrport/platform/GModWebView;->PAGES:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_d

    return-void

    .line 70
    :cond_d
    :try_start_d
    invoke-virtual {p1, p2, p3}, Lcom/sourcevrport/platform/GModWebView$Page;->create(II)V
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_11

    goto :goto_22

    :catchall_11
    move-exception p0

    .line 71
    const-string p2, "fatal"

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p2, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sourcevrport/platform/GModWebView$Page;->event([Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/sourcevrport/platform/GModWebView$Page;->release()V

    :goto_22
    return-void
.end method

.method private static synthetic lambda$destroy$2(Lcom/sourcevrport/platform/GModWebView$Page;Ljava/util/concurrent/CountDownLatch;)V
    .registers 2

    .line 90
    :try_start_0
    invoke-virtual {p0}, Lcom/sourcevrport/platform/GModWebView$Page;->release()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_7

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :catchall_7
    move-exception p0

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw p0
.end method

.method private static synthetic lambda$html$5(Ljava/lang/String;Ljava/lang/String;Lcom/sourcevrport/platform/GModWebView$Page;)V
    .registers 9

    .line 110
    iget-object v0, p2, Lcom/sourcevrport/platform/GModWebView$Page;->web:Landroid/webkit/WebView;

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    const-string v1, "https://gmod-assets.invalid/"

    if-eqz p2, :cond_c

    move-object p0, v1

    goto :goto_10

    :cond_c
    invoke-static {p0}, Lcom/sourcevrport/platform/GModWebView;->assetURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_10
    const-string p2, "asset://"

    .line 111
    invoke-virtual {p1, p2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "UTF-8"

    const/4 v5, 0x0

    .line 110
    const-string v3, "text/html"

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$key$11(IZLcom/sourcevrport/platform/GModWebView$Page;)V
    .registers 14

    .line 167
    iget-object v0, p2, Lcom/sourcevrport/platform/GModWebView$Page;->web:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    const/16 v0, 0x3b

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p0, v0, :cond_29

    const/16 v0, 0x3c

    if-ne p0, v0, :cond_10

    goto :goto_29

    :cond_10
    const/16 v0, 0x71

    if-eq p0, v0, :cond_26

    const/16 v0, 0x72

    if-ne p0, v0, :cond_19

    goto :goto_26

    :cond_19
    const/16 v0, 0x39

    if-eq p0, v0, :cond_24

    const/16 v0, 0x3a

    if-ne p0, v0, :cond_22

    goto :goto_24

    :cond_22
    move v0, v1

    goto :goto_2a

    :cond_24
    :goto_24
    const/4 v0, 0x2

    goto :goto_2a

    :cond_26
    :goto_26
    const/16 v0, 0x1000

    goto :goto_2a

    :cond_29
    :goto_29
    move v0, v2

    .line 171
    :goto_2a
    iget v3, p2, Lcom/sourcevrport/platform/GModWebView$Page;->keyMeta:I

    if-eqz p1, :cond_30

    or-int/2addr v0, v3

    goto :goto_32

    :cond_30
    not-int v0, v0

    and-int/2addr v0, v3

    :goto_32
    iput v0, p2, Lcom/sourcevrport/platform/GModWebView$Page;->keyMeta:I

    const/4 v0, -0x1

    .line 172
    invoke-static {v0}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v0

    iget v3, p2, Lcom/sourcevrport/platform/GModWebView$Page;->keyMeta:I

    invoke-virtual {v0, p0, v3}, Landroid/view/KeyCharacterMap;->get(II)I

    move-result v0

    const/16 v3, 0x20

    if-lt v0, v3, :cond_90

    .line 173
    iget v3, p2, Lcom/sourcevrport/platform/GModWebView$Page;->keyMeta:I

    and-int/lit16 v3, v3, 0x1002

    if-nez v3, :cond_90

    .line 176
    new-instance p0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    .line 177
    iget-object v0, p2, Lcom/sourcevrport/platform/GModWebView$Page;->web:Landroid/webkit/WebView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(()=>{let e=document.activeElement;if(e)window.__gmodCancelText=!e.dispatchEvent(new KeyboardEvent(\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_63

    .line 178
    const-string p1, "keydown"

    goto :goto_65

    :cond_63
    const-string p1, "keyup"

    :goto_65
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\',{key:"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ",bubbles:true,cancelable:true,shiftKey:"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p2, Lcom/sourcevrport/platform/GModWebView$Page;->keyMeta:I

    and-int/2addr p0, v2

    if-eqz p0, :cond_7f

    move v1, v2

    :cond_7f
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, "}));})()"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    .line 177
    invoke-virtual {v0, p0, p1}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    goto :goto_a6

    .line 181
    :cond_90
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 182
    iget-object v0, p2, Lcom/sourcevrport/platform/GModWebView$Page;->web:Landroid/webkit/WebView;

    new-instance v10, Landroid/view/KeyEvent;

    xor-int/lit8 v6, p1, 0x1

    const/4 v8, 0x0

    iget v9, p2, Lcom/sourcevrport/platform/GModWebView$Page;->keyMeta:I

    move-object v1, v10

    move-wide v2, v4

    move v7, p0

    invoke-direct/range {v1 .. v9}, Landroid/view/KeyEvent;-><init>(JJIIII)V

    invoke-virtual {v0, v10}, Landroid/webkit/WebView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    :goto_a6
    return-void
.end method

.method private static synthetic lambda$navigate$4(Ljava/lang/String;Lcom/sourcevrport/platform/GModWebView$Page;)V
    .registers 2

    .line 108
    iget-object p1, p1, Lcom/sourcevrport/platform/GModWebView$Page;->web:Landroid/webkit/WebView;

    invoke-static {p0}, Lcom/sourcevrport/platform/GModWebView;->assetURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$pointer$9(IIIILcom/sourcevrport/platform/GModWebView$Page;)V
    .registers 22

    move/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    .line 129
    iput v0, v4, Lcom/sourcevrport/platform/GModWebView$Page;->mouseX:I

    iput v1, v4, Lcom/sourcevrport/platform/GModWebView$Page;->mouseY:I

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-nez v2, :cond_5c

    .line 130
    iget v8, v4, Lcom/sourcevrport/platform/GModWebView$Page;->otherButtons:I

    if-eqz v8, :cond_18

    goto :goto_5c

    .line 143
    :cond_18
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    const/4 v2, 0x7

    if-ne v3, v7, :cond_21

    move v8, v5

    goto :goto_2c

    :cond_21
    if-ne v3, v6, :cond_25

    move v8, v7

    goto :goto_2c

    .line 145
    :cond_25
    iget-boolean v8, v4, Lcom/sourcevrport/platform/GModWebView$Page;->down:Z

    if-eqz v8, :cond_2b

    move v8, v6

    goto :goto_2c

    :cond_2b
    move v8, v2

    :goto_2c
    if-ne v3, v7, :cond_37

    .line 146
    iput-boolean v7, v4, Lcom/sourcevrport/platform/GModWebView$Page;->down:Z

    iput-wide v11, v4, Lcom/sourcevrport/platform/GModWebView$Page;->downTime:J

    iget-object v7, v4, Lcom/sourcevrport/platform/GModWebView$Page;->web:Landroid/webkit/WebView;

    invoke-virtual {v7}, Landroid/view/View;->requestFocus()Z

    :cond_37
    if-ne v3, v6, :cond_3b

    .line 147
    iput-boolean v5, v4, Lcom/sourcevrport/platform/GModWebView$Page;->down:Z

    .line 148
    :cond_3b
    iget-wide v9, v4, Lcom/sourcevrport/platform/GModWebView$Page;->downTime:J

    int-to-float v14, v0

    int-to-float v15, v1

    const/16 v16, 0x0

    move v13, v8

    invoke-static/range {v9 .. v16}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    const/16 v1, 0x2002

    .line 149
    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setSource(I)V

    if-ne v8, v2, :cond_53

    .line 150
    iget-object v1, v4, Lcom/sourcevrport/platform/GModWebView$Page;->web:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/view/View;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    goto :goto_58

    .line 151
    :cond_53
    iget-object v1, v4, Lcom/sourcevrport/platform/GModWebView$Page;->web:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 152
    :goto_58
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    return-void

    :cond_5c
    :goto_5c
    if-ne v2, v7, :cond_60

    move v5, v6

    goto :goto_63

    :cond_60
    if-ne v2, v6, :cond_63

    const/4 v5, 0x4

    :cond_63
    :goto_63
    if-ne v3, v7, :cond_6f

    .line 132
    iget v8, v4, Lcom/sourcevrport/platform/GModWebView$Page;->otherButtons:I

    or-int/2addr v8, v5

    iput v8, v4, Lcom/sourcevrport/platform/GModWebView$Page;->otherButtons:I

    iget-object v8, v4, Lcom/sourcevrport/platform/GModWebView$Page;->web:Landroid/webkit/WebView;

    invoke-virtual {v8}, Landroid/view/View;->requestFocus()Z

    :cond_6f
    if-ne v3, v6, :cond_77

    .line 133
    iget v8, v4, Lcom/sourcevrport/platform/GModWebView$Page;->otherButtons:I

    not-int v5, v5

    and-int/2addr v5, v8

    iput v5, v4, Lcom/sourcevrport/platform/GModWebView$Page;->otherButtons:I

    :cond_77
    if-ne v3, v7, :cond_7c

    .line 134
    const-string v5, "mousedown"

    goto :goto_83

    :cond_7c
    if-ne v3, v6, :cond_81

    const-string v5, "mouseup"

    goto :goto_83

    :cond_81
    const-string v5, "mousemove"

    :goto_83
    if-ne v2, v7, :cond_8a

    if-ne v3, v6, :cond_8a

    .line 136
    const-string v3, "e.dispatchEvent(new MouseEvent(\'contextmenu\',o));"

    goto :goto_8c

    :cond_8a
    const-string v3, ""

    .line 137
    :goto_8c
    iget-object v8, v4, Lcom/sourcevrport/platform/GModWebView$Page;->web:Landroid/webkit/WebView;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "(()=>{let e=document.elementFromPoint("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ");if(e){let o={bubbles:true,cancelable:true,button:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne v2, v7, :cond_ab

    goto :goto_b0

    :cond_ab
    if-ne v2, v6, :cond_af

    move v6, v7

    goto :goto_b0

    :cond_af
    const/4 v6, -0x1

    .line 138
    :goto_b0
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",buttons:"

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v4, Lcom/sourcevrport/platform/GModWebView$Page;->otherButtons:I

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",clientX:"

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",clientY:"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "};e.dispatchEvent(new MouseEvent(\'"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\',o));"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "}})()"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 137
    invoke-virtual {v8, v0, v1}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void
.end method

.method private static synthetic lambda$post$1(ILcom/sourcevrport/platform/GModWebView$Operation;)V
    .registers 3

    .line 78
    sget-object v0, Lcom/sourcevrport/platform/GModWebView;->PAGES:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sourcevrport/platform/GModWebView$Page;

    if-eqz p0, :cond_24

    .line 79
    iget-object v0, p0, Lcom/sourcevrport/platform/GModWebView$Page;->web:Landroid/webkit/WebView;

    if-eqz v0, :cond_24

    .line 80
    :try_start_12
    invoke-interface {p1, p0}, Lcom/sourcevrport/platform/GModWebView$Operation;->run(Lcom/sourcevrport/platform/GModWebView$Page;)V
    :try_end_15
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_15} :catch_16

    goto :goto_24

    :catch_16
    move-exception p1

    const-string v0, "error"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sourcevrport/platform/GModWebView$Page;->event([Ljava/lang/Object;)V

    :cond_24
    :goto_24
    return-void
.end method

.method private static synthetic lambda$resize$3(IILcom/sourcevrport/platform/GModWebView$Page;)V
    .registers 3

    .line 107
    invoke-virtual {p2, p0, p1}, Lcom/sourcevrport/platform/GModWebView$Page;->resize(II)V

    return-void
.end method

.method private static synthetic lambda$script$6(Ljava/lang/String;Lcom/sourcevrport/platform/GModWebView$Page;)V
    .registers 3

    .line 113
    iget-object p1, p1, Lcom/sourcevrport/platform/GModWebView$Page;->web:Landroid/webkit/WebView;

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void
.end method

.method private static synthetic lambda$stop$7(Lcom/sourcevrport/platform/GModWebView$Page;)V
    .registers 1

    .line 114
    iget-object p0, p0, Lcom/sourcevrport/platform/GModWebView$Page;->web:Landroid/webkit/WebView;

    invoke-virtual {p0}, Landroid/webkit/WebView;->stopLoading()V

    return-void
.end method

.method private static synthetic lambda$text$12(Ljava/lang/String;Lcom/sourcevrport/platform/GModWebView$Page;)V
    .registers 4

    .line 189
    iget-object p1, p1, Lcom/sourcevrport/platform/GModWebView$Page;->web:Landroid/webkit/WebView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(()=>{if(window.__gmodCancelText){window.__gmodCancelText=false;return;}document.execCommand(\'insertText\',false,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    invoke-static {p0}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ");})()"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    .line 189
    invoke-virtual {p1, p0, v0}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void
.end method

.method private static synthetic lambda$wheel$10(ILcom/sourcevrport/platform/GModWebView$Page;)V
    .registers 23

    move-object/from16 v0, p1

    .line 155
    new-instance v1, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v1}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    const/4 v2, 0x0

    .line 156
    iput v2, v1, Landroid/view/MotionEvent$PointerProperties;->id:I

    const/4 v2, 0x3

    iput v2, v1, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    .line 157
    new-instance v2, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v2}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    .line 158
    iget v3, v0, Lcom/sourcevrport/platform/GModWebView$Page;->mouseX:I

    int-to-float v3, v3

    iput v3, v2, Landroid/view/MotionEvent$PointerCoords;->x:F

    iget v3, v0, Lcom/sourcevrport/platform/GModWebView$Page;->mouseY:I

    int-to-float v3, v3

    iput v3, v2, Landroid/view/MotionEvent$PointerCoords;->y:F

    const/16 v3, 0x9

    move/from16 v4, p0

    int-to-float v4, v4

    .line 159
    invoke-virtual {v2, v3, v4}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    .line 160
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 161
    filled-new-array {v1}, [Landroid/view/MotionEvent$PointerProperties;

    move-result-object v11

    filled-new-array {v2}, [Landroid/view/MotionEvent$PointerCoords;

    move-result-object v12

    iget v13, v0, Lcom/sourcevrport/platform/GModWebView$Page;->keyMeta:I

    const/16 v19, 0x2002

    const/16 v20, 0x0

    const/16 v9, 0x8

    const/4 v10, 0x1

    const/4 v14, 0x0

    const/high16 v15, 0x3f800000    # 1.0f

    const/high16 v16, 0x3f800000    # 1.0f

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-wide v5, v7

    invoke-static/range {v5 .. v20}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v1

    .line 164
    iget-object v0, v0, Lcom/sourcevrport/platform/GModWebView$Page;->web:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/view/View;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    return-void
.end method

.method private static mime(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 199
    invoke-static {p0}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 200
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 201
    const-string v1, ".js"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_17

    const-string p0, "application/javascript"

    return-object p0

    :cond_17
    if-nez v0, :cond_1b

    .line 202
    const-string v0, "application/octet-stream"

    :cond_1b
    return-object v0
.end method

.method public static navigate(ILjava/lang/String;)V
    .registers 3

    .line 108
    new-instance v0, Lcom/sourcevrport/platform/GModWebView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/sourcevrport/platform/GModWebView$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/sourcevrport/platform/GModWebView;->post(ILcom/sourcevrport/platform/GModWebView$Operation;)V

    return-void
.end method

.method public static pixels(I)[B
    .registers 2

    .line 127
    sget-object v0, Lcom/sourcevrport/platform/GModWebView;->PAGES:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sourcevrport/platform/GModWebView$Page;

    const/4 v0, 0x0

    if-nez p0, :cond_10

    goto :goto_19

    :cond_10
    iget-object p0, p0, Lcom/sourcevrport/platform/GModWebView$Page;->pixels:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, [B

    :goto_19
    return-object v0
.end method

.method public static pointer(IIIII)V
    .registers 6

    .line 128
    new-instance v0, Lcom/sourcevrport/platform/GModWebView$$ExternalSyntheticLambda9;

    invoke-direct {v0, p2, p3, p4, p1}, Lcom/sourcevrport/platform/GModWebView$$ExternalSyntheticLambda9;-><init>(IIII)V

    invoke-static {p0, v0}, Lcom/sourcevrport/platform/GModWebView;->post(ILcom/sourcevrport/platform/GModWebView$Operation;)V

    return-void
.end method

.method private static post(ILcom/sourcevrport/platform/GModWebView$Operation;)V
    .registers 4

    .line 77
    sget-object v0, Lcom/sourcevrport/platform/GModWebView;->UI:Landroid/os/Handler;

    new-instance v1, Lcom/sourcevrport/platform/GModWebView$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0, p1}, Lcom/sourcevrport/platform/GModWebView$$ExternalSyntheticLambda11;-><init>(ILcom/sourcevrport/platform/GModWebView$Operation;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static native readAsset(Ljava/lang/String;)[B
.end method

.method public static reply(IILjava/lang/String;)V
    .registers 5

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "window.__gmodReply&&window.__gmodReply("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ");"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sourcevrport/platform/GModWebView;->script(ILjava/lang/String;)V

    return-void
.end method

.method public static resize(III)V
    .registers 4

    .line 107
    new-instance v0, Lcom/sourcevrport/platform/GModWebView$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1, p2}, Lcom/sourcevrport/platform/GModWebView$$ExternalSyntheticLambda3;-><init>(II)V

    invoke-static {p0, v0}, Lcom/sourcevrport/platform/GModWebView;->post(ILcom/sourcevrport/platform/GModWebView$Operation;)V

    return-void
.end method

.method public static script(ILjava/lang/String;)V
    .registers 3

    .line 113
    new-instance v0, Lcom/sourcevrport/platform/GModWebView$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1}, Lcom/sourcevrport/platform/GModWebView$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/sourcevrport/platform/GModWebView;->post(ILcom/sourcevrport/platform/GModWebView$Operation;)V

    return-void
.end method

.method public static shutdown(Landroid/app/Activity;)V
    .registers 2

    .line 57
    sget-object v0, Lcom/sourcevrport/platform/GModWebView;->activity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p0, :cond_9

    return-void

    .line 58
    :cond_9
    sget-object p0, Lcom/sourcevrport/platform/GModWebView;->PAGES:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_13
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/sourcevrport/platform/GModWebView;->destroy(I)V

    goto :goto_13

    .line 59
    :cond_27
    sget-object p0, Lcom/sourcevrport/platform/GModWebView;->activity:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->clear()V

    return-void
.end method

.method public static stop(I)V
    .registers 2

    .line 114
    new-instance v0, Lcom/sourcevrport/platform/GModWebView$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Lcom/sourcevrport/platform/GModWebView$$ExternalSyntheticLambda8;-><init>()V

    invoke-static {p0, v0}, Lcom/sourcevrport/platform/GModWebView;->post(ILcom/sourcevrport/platform/GModWebView$Operation;)V

    return-void
.end method

.method public static text(ILjava/lang/String;)V
    .registers 3

    .line 185
    new-instance v0, Lcom/sourcevrport/platform/GModWebView$$ExternalSyntheticLambda4;

    invoke-direct {v0, p1}, Lcom/sourcevrport/platform/GModWebView$$ExternalSyntheticLambda4;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/sourcevrport/platform/GModWebView;->post(ILcom/sourcevrport/platform/GModWebView$Operation;)V

    return-void
.end method

.method public static wheel(II)V
    .registers 3

    .line 154
    new-instance v0, Lcom/sourcevrport/platform/GModWebView$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lcom/sourcevrport/platform/GModWebView$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-static {p0, v0}, Lcom/sourcevrport/platform/GModWebView;->post(ILcom/sourcevrport/platform/GModWebView$Operation;)V

    return-void
.end method

###### Class com.sourcevrport.platform.GModWebView.Operation (com.sourcevrport.platform.GModWebView$Operation)
.class interface abstract Lcom/sourcevrport/platform/GModWebView$Operation;
.super Ljava/lang/Object;
.source "GModWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sourcevrport/platform/GModWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Operation"
.end annotation


# virtual methods
.method public abstract run(Lcom/sourcevrport/platform/GModWebView$Page;)V
.end method

###### Class com.sourcevrport.platform.GModWebView.Page (com.sourcevrport.platform.GModWebView$Page)
.class final Lcom/sourcevrport/platform/GModWebView$Page;
.super Ljava/lang/Object;
.source "GModWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sourcevrport/platform/GModWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Page"
.end annotation


# instance fields
.field final assetLock:Ljava/lang/Object;

.field final bindings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field volatile closed:Z

.field display:Landroid/hardware/display/VirtualDisplay;

.field documentScript:Landroidx/webkit/ScriptHandler;

.field down:Z

.field downTime:J

.field final events:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field height:I

.field final id:I

.field keyMeta:I

.field lastFrame:J

.field mouseX:I

.field mouseY:I

.field otherButtons:I

.field final owner:Landroid/app/Activity;

.field final pixels:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "[B>;"
        }
    .end annotation
.end field

.field presentation:Landroid/app/Presentation;

.field reader:Landroid/media/ImageReader;

.field web:Landroid/webkit/WebView;

.field width:I


# direct methods
.method public static synthetic $r8$lambda$Pqmu0e-Z_OY-djLt4RuJAjvzcfw(Lcom/sourcevrport/platform/GModWebView$Page;Landroid/media/ImageReader;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/sourcevrport/platform/GModWebView$Page;->lambda$resize$0(Landroid/media/ImageReader;)V

    return-void
.end method

.method public constructor <init>(ILandroid/app/Activity;)V
    .registers 4

    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 207
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/sourcevrport/platform/GModWebView$Page;->events:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 208
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/sourcevrport/platform/GModWebView$Page;->pixels:Ljava/util/concurrent/atomic/AtomicReference;

    .line 209
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sourcevrport/platform/GModWebView$Page;->bindings:Ljava/util/Map;

    .line 210
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sourcevrport/platform/GModWebView$Page;->assetLock:Ljava/lang/Object;

    .line 221
    iput p1, p0, Lcom/sourcevrport/platform/GModWebView$Page;->id:I

    iput-object p2, p0, Lcom/sourcevrport/platform/GModWebView$Page;->owner:Landroid/app/Activity;

    return-void
.end method

.method private synthetic lambda$resize$0(Landroid/media/ImageReader;)V
    .registers 15

    .line 314
    :try_start_0
    invoke-virtual {p1}, Landroid/media/ImageReader;->acquireLatestImage()Landroid/media/Image;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_4} :catch_1e
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_4} :catch_1e

    if-eqz v0, :cond_b9

    .line 315
    :try_start_6
    iget-object v1, p0, Lcom/sourcevrport/platform/GModWebView$Page;->reader:Landroid/media/ImageReader;

    if-eq p1, v1, :cond_c

    goto/16 :goto_b9

    .line 316
    :cond_c
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/sourcevrport/platform/GModWebView$Page;->lastFrame:J
    :try_end_12
    .catchall {:try_start_6 .. :try_end_12} :catchall_56

    sub-long v3, v1, v3

    const-wide/16 v5, 0x1e

    cmp-long p1, v3, v5

    if-gez p1, :cond_21

    .line 336
    :try_start_1a
    invoke-virtual {v0}, Landroid/media/Image;->close()V
    :try_end_1d
    .catch Ljava/lang/IllegalStateException; {:try_start_1a .. :try_end_1d} :catch_1e
    .catch Ljava/nio/BufferUnderflowException; {:try_start_1a .. :try_end_1d} :catch_1e

    return-void

    :catch_1e
    move-exception p1

    goto/16 :goto_bf

    .line 316
    :cond_21
    :try_start_21
    iput-wide v1, p0, Lcom/sourcevrport/platform/GModWebView$Page;->lastFrame:J

    .line 317
    invoke-virtual {v0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object p1

    const/4 v1, 0x0

    aget-object p1, p1, v1

    invoke-virtual {p1}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 318
    invoke-virtual {p1}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v3

    invoke-virtual {p1}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result p1

    .line 319
    iget v4, p0, Lcom/sourcevrport/platform/GModWebView$Page;->width:I

    iget v5, p0, Lcom/sourcevrport/platform/GModWebView$Page;->height:I

    mul-int/2addr v4, v5

    const/4 v5, 0x4

    mul-int/2addr v4, v5

    new-array v6, v4, [B

    move v7, v1

    .line 320
    :goto_40
    iget v8, p0, Lcom/sourcevrport/platform/GModWebView$Page;->height:I

    if-ge v7, v8, :cond_7b

    if-ne p1, v5, :cond_58

    mul-int v8, v7, v3

    .line 321
    invoke-virtual {v2, v8}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget v8, p0, Lcom/sourcevrport/platform/GModWebView$Page;->width:I

    mul-int v9, v7, v8

    mul-int/2addr v9, v5

    mul-int/lit8 v8, v8, 0x4

    invoke-virtual {v2, v6, v9, v8}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    goto :goto_78

    :catchall_56
    move-exception p1

    goto :goto_b0

    :cond_58
    move v8, v1

    .line 322
    :goto_59
    iget v9, p0, Lcom/sourcevrport/platform/GModWebView$Page;->width:I

    if-ge v8, v9, :cond_78

    move v9, v1

    :goto_5e
    if-ge v9, v5, :cond_75

    .line 323
    iget v10, p0, Lcom/sourcevrport/platform/GModWebView$Page;->width:I

    mul-int/2addr v10, v7

    add-int/2addr v10, v8

    mul-int/2addr v10, v5

    add-int/2addr v10, v9

    mul-int v11, v7, v3

    mul-int v12, v8, p1

    add-int/2addr v11, v12

    add-int/2addr v11, v9

    invoke-virtual {v2, v11}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v11

    aput-byte v11, v6, v10

    add-int/lit8 v9, v9, 0x1

    goto :goto_5e

    :cond_75
    add-int/lit8 v8, v8, 0x1

    goto :goto_59

    :cond_78
    :goto_78
    add-int/lit8 v7, v7, 0x1

    goto :goto_40

    :cond_7b
    move p1, v1

    :goto_7c
    if-ge p1, v4, :cond_a7

    add-int/lit8 v2, p1, 0x3

    .line 329
    aget-byte v2, v6, v2

    const/16 v3, 0xff

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_88

    goto :goto_a4

    :cond_88
    move v5, v1

    :goto_89
    const/4 v7, 0x3

    if-ge v5, v7, :cond_a4

    add-int v7, p1, v5

    if-nez v2, :cond_92

    move v8, v1

    goto :goto_9f

    .line 332
    :cond_92
    aget-byte v8, v6, v7

    and-int/2addr v8, v3

    mul-int/2addr v8, v3

    div-int/lit8 v9, v2, 0x2

    add-int/2addr v8, v9

    div-int/2addr v8, v2

    invoke-static {v3, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    int-to-byte v8, v8

    :goto_9f
    aput-byte v8, v6, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_89

    :cond_a4
    :goto_a4
    add-int/lit8 p1, p1, 0x4

    goto :goto_7c

    .line 335
    :cond_a7
    iget-object p1, p0, Lcom/sourcevrport/platform/GModWebView$Page;->pixels:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1, v6}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_ac
    .catchall {:try_start_21 .. :try_end_ac} :catchall_56

    .line 336
    :try_start_ac
    invoke-virtual {v0}, Landroid/media/Image;->close()V
    :try_end_af
    .catch Ljava/lang/IllegalStateException; {:try_start_ac .. :try_end_af} :catch_1e
    .catch Ljava/nio/BufferUnderflowException; {:try_start_ac .. :try_end_af} :catch_1e

    goto :goto_cc

    .line 314
    :goto_b0
    :try_start_b0
    invoke-virtual {v0}, Landroid/media/Image;->close()V
    :try_end_b3
    .catchall {:try_start_b0 .. :try_end_b3} :catchall_b4

    goto :goto_b8

    :catchall_b4
    move-exception v0

    :try_start_b5
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_b8
    throw p1

    :cond_b9
    :goto_b9
    if-eqz v0, :cond_be

    .line 336
    invoke-virtual {v0}, Landroid/media/Image;->close()V
    :try_end_be
    .catch Ljava/lang/IllegalStateException; {:try_start_b5 .. :try_end_be} :catch_1e
    .catch Ljava/nio/BufferUnderflowException; {:try_start_b5 .. :try_end_be} :catch_1e

    :cond_be
    return-void

    :goto_bf
    const-string v0, "error"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sourcevrport/platform/GModWebView$Page;->event([Ljava/lang/Object;)V

    :goto_cc
    return-void
.end method


# virtual methods
.method public attach()V
    .registers 3

    .line 349
    iget-object v0, p0, Lcom/sourcevrport/platform/GModWebView$Page;->web:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/sourcevrport/platform/GModWebView$Page;->web:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/sourcevrport/platform/GModWebView$Page;->web:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 350
    :cond_17
    iget-object v0, p0, Lcom/sourcevrport/platform/GModWebView$Page;->presentation:Landroid/app/Presentation;

    iget-object v1, p0, Lcom/sourcevrport/platform/GModWebView$Page;->web:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    iget-object p0, p0, Lcom/sourcevrport/platform/GModWebView$Page;->presentation:Landroid/app/Presentation;

    invoke-virtual {p0}, Landroid/app/Presentation;->show()V

    return-void
.end method

.method public create(II)V
    .registers 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled",
            "JavascriptInterface"
        }
    .end annotation

    .line 227
    invoke-virtual {p0, p1, p2}, Lcom/sourcevrport/platform/GModWebView$Page;->resize(II)V

    .line 230
    new-instance p1, Landroid/webkit/WebView;

    iget-object p2, p0, Lcom/sourcevrport/platform/GModWebView$Page;->presentation:Landroid/app/Presentation;

    invoke-virtual {p2}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/sourcevrport/platform/GModWebView$Page;->web:Landroid/webkit/WebView;

    const/4 p2, 0x0

    .line 233
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 234
    iget-object p1, p0, Lcom/sourcevrport/platform/GModWebView$Page;->web:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const/4 v0, 0x1

    .line 235
    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 236
    invoke-virtual {p1, p2}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    const/4 v1, 0x2

    .line 237
    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 238
    invoke-virtual {p1, p2}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    invoke-virtual {p1, p2}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    .line 239
    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 240
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "; wv"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " GModVR"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 241
    iget-object p1, p0, Lcom/sourcevrport/platform/GModWebView$Page;->web:Landroid/webkit/WebView;

    new-instance p2, Lcom/sourcevrport/platform/GModWebView$Page$1;

    invoke-direct {p2, p0}, Lcom/sourcevrport/platform/GModWebView$Page$1;-><init>(Lcom/sourcevrport/platform/GModWebView$Page;)V

    const-string v0, "__gmodNative"

    invoke-virtual {p1, p2, v0}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 248
    iget-object p1, p0, Lcom/sourcevrport/platform/GModWebView$Page;->web:Landroid/webkit/WebView;

    new-instance p2, Lcom/sourcevrport/platform/GModWebView$Page$2;

    invoke-direct {p2, p0}, Lcom/sourcevrport/platform/GModWebView$Page$2;-><init>(Lcom/sourcevrport/platform/GModWebView$Page;)V

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 274
    iget-object p1, p0, Lcom/sourcevrport/platform/GModWebView$Page;->web:Landroid/webkit/WebView;

    new-instance p2, Lcom/sourcevrport/platform/GModWebView$Page$3;

    invoke-direct {p2, p0}, Lcom/sourcevrport/platform/GModWebView$Page$3;-><init>(Lcom/sourcevrport/platform/GModWebView$Page;)V

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 288
    invoke-virtual {p0}, Lcom/sourcevrport/platform/GModWebView$Page;->installBindings()V

    invoke-virtual {p0}, Lcom/sourcevrport/platform/GModWebView$Page;->attach()V

    iget-object p0, p0, Lcom/sourcevrport/platform/GModWebView$Page;->web:Landroid/webkit/WebView;

    const-string p1, "about:blank"

    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public varargs event([Ljava/lang/Object;)V
    .registers 4

    .line 223
    iget-object v0, p0, Lcom/sourcevrport/platform/GModWebView$Page;->events:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v0

    const/16 v1, 0x400

    if-ge v0, v1, :cond_1c

    iget-object p0, p0, Lcom/sourcevrport/platform/GModWebView$Page;->events:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v0, Lorg/json/JSONArray;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    :cond_1c
    return-void
.end method

.method public installBindings()V
    .registers 8

    .line 291
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "(()=>{window.__gmodCallbacks=window.__gmodCallbacks||{};window.__gmodCallId=window.__gmodCallId||0;window.__gmodReply=(id,args)=>{let f=window.__gmodCallbacks[id];delete window.__gmodCallbacks[id];if(f)f.apply(null,args);};"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 292
    iget-object v1, p0, Lcom/sourcevrport/platform/GModWebView$Page;->bindings:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    const/4 v3, 0x0

    .line 293
    aget-object v3, v2, v3

    invoke-static {v3}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v5, v2, v4

    invoke-static {v5}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 294
    aget-object v2, v2, v4

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    const-string v4, "]=window["

    const-string v6, "window["

    if-eqz v2, :cond_49

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]||{};"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_11

    .line 295
    :cond_49
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]||{};window["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]=function(...args){let id=++window.__gmodCallId;if(typeof args[args.length-1]===\'function\')window.__gmodCallbacks[id]=args.pop();window.__gmodNative.call("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",JSON.stringify(args),id);};"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_11

    .line 299
    :cond_7b
    const-string v1, "})()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    iget-object v1, p0, Lcom/sourcevrport/platform/GModWebView$Page;->documentScript:Landroidx/webkit/ScriptHandler;

    const/4 v2, 0x0

    if-eqz v1, :cond_8a

    invoke-interface {v1}, Landroidx/webkit/ScriptHandler;->remove()V

    iput-object v2, p0, Lcom/sourcevrport/platform/GModWebView$Page;->documentScript:Landroidx/webkit/ScriptHandler;

    .line 301
    :cond_8a
    const-string v1, "DOCUMENT_START_SCRIPT"

    invoke-static {v1}, Landroidx/webkit/WebViewFeature;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a4

    .line 302
    iget-object v1, p0, Lcom/sourcevrport/platform/GModWebView$Page;->web:Landroid/webkit/WebView;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "*"

    invoke-static {v4}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v4

    invoke-static {v1, v3, v4}, Landroidx/webkit/WebViewCompat;->addDocumentStartJavaScript(Landroid/webkit/WebView;Ljava/lang/String;Ljava/util/Set;)Landroidx/webkit/ScriptHandler;

    move-result-object v1

    iput-object v1, p0, Lcom/sourcevrport/platform/GModWebView$Page;->documentScript:Landroidx/webkit/ScriptHandler;

    .line 303
    :cond_a4
    iget-object p0, p0, Lcom/sourcevrport/platform/GModWebView$Page;->web:Landroid/webkit/WebView;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void
.end method

.method public release()V
    .registers 4

    .line 353
    iget-object v0, p0, Lcom/sourcevrport/platform/GModWebView$Page;->web:Landroid/webkit/WebView;

    const/4 v1, 0x0

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    iget-object v0, p0, Lcom/sourcevrport/platform/GModWebView$Page;->web:Landroid/webkit/WebView;

    const-string v2, "__gmodNative"

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sourcevrport/platform/GModWebView$Page;->web:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    iput-object v1, p0, Lcom/sourcevrport/platform/GModWebView$Page;->web:Landroid/webkit/WebView;

    .line 354
    :cond_16
    iget-object v0, p0, Lcom/sourcevrport/platform/GModWebView$Page;->presentation:Landroid/app/Presentation;

    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iput-object v1, p0, Lcom/sourcevrport/platform/GModWebView$Page;->presentation:Landroid/app/Presentation;

    .line 355
    :cond_1f
    iget-object v0, p0, Lcom/sourcevrport/platform/GModWebView$Page;->display:Landroid/hardware/display/VirtualDisplay;

    if-eqz v0, :cond_28

    invoke-virtual {v0}, Landroid/hardware/display/VirtualDisplay;->release()V

    iput-object v1, p0, Lcom/sourcevrport/platform/GModWebView$Page;->display:Landroid/hardware/display/VirtualDisplay;

    .line 356
    :cond_28
    iget-object v0, p0, Lcom/sourcevrport/platform/GModWebView$Page;->reader:Landroid/media/ImageReader;

    if-eqz v0, :cond_31

    invoke-virtual {v0}, Landroid/media/ImageReader;->close()V

    iput-object v1, p0, Lcom/sourcevrport/platform/GModWebView$Page;->reader:Landroid/media/ImageReader;

    .line 357
    :cond_31
    iget-object p0, p0, Lcom/sourcevrport/platform/GModWebView$Page;->pixels:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public resize(II)V
    .registers 12

    const/16 v0, 0x1000

    .line 306
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/16 v1, 0x40

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 307
    iget p1, p0, Lcom/sourcevrport/platform/GModWebView$Page;->width:I

    if-ne v4, p1, :cond_21

    iget p1, p0, Lcom/sourcevrport/platform/GModWebView$Page;->height:I

    if-ne v5, p1, :cond_21

    iget-object p1, p0, Lcom/sourcevrport/platform/GModWebView$Page;->reader:Landroid/media/ImageReader;

    if-eqz p1, :cond_21

    return-void

    .line 308
    :cond_21
    iget-object p1, p0, Lcom/sourcevrport/platform/GModWebView$Page;->presentation:Landroid/app/Presentation;

    if-eqz p1, :cond_28

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 309
    :cond_28
    iget-object p1, p0, Lcom/sourcevrport/platform/GModWebView$Page;->display:Landroid/hardware/display/VirtualDisplay;

    if-eqz p1, :cond_2f

    invoke-virtual {p1}, Landroid/hardware/display/VirtualDisplay;->release()V

    .line 310
    :cond_2f
    iget-object p1, p0, Lcom/sourcevrport/platform/GModWebView$Page;->reader:Landroid/media/ImageReader;

    if-eqz p1, :cond_36

    invoke-virtual {p1}, Landroid/media/ImageReader;->close()V

    .line 311
    :cond_36
    iput v4, p0, Lcom/sourcevrport/platform/GModWebView$Page;->width:I

    iput v5, p0, Lcom/sourcevrport/platform/GModWebView$Page;->height:I

    iget-object p1, p0, Lcom/sourcevrport/platform/GModWebView$Page;->pixels:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    const/4 p1, 0x1

    const/4 p2, 0x3

    .line 312
    invoke-static {v4, v5, p1, p2}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object p1

    iput-object p1, p0, Lcom/sourcevrport/platform/GModWebView$Page;->reader:Landroid/media/ImageReader;

    .line 313
    new-instance p2, Lcom/sourcevrport/platform/GModWebView$Page$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/sourcevrport/platform/GModWebView$Page$$ExternalSyntheticLambda0;-><init>(Lcom/sourcevrport/platform/GModWebView$Page;)V

    invoke-static {}, Lcom/sourcevrport/platform/GModWebView;->-$$Nest$sfgetUI()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 338
    iget-object p1, p0, Lcom/sourcevrport/platform/GModWebView$Page;->owner:Landroid/app/Activity;

    const-string p2, "display"

    invoke-virtual {p1, p2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Landroid/hardware/display/DisplayManager;

    .line 339
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "GMod DHTML "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/sourcevrport/platform/GModWebView$Page;->id:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object p1, p0, Lcom/sourcevrport/platform/GModWebView$Page;->reader:Landroid/media/ImageReader;

    invoke-virtual {p1}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v7

    const/16 v8, 0xa

    const/16 v6, 0xa0

    invoke-virtual/range {v2 .. v8}, Landroid/hardware/display/DisplayManager;->createVirtualDisplay(Ljava/lang/String;IIILandroid/view/Surface;I)Landroid/hardware/display/VirtualDisplay;

    move-result-object p1

    iput-object p1, p0, Lcom/sourcevrport/platform/GModWebView$Page;->display:Landroid/hardware/display/VirtualDisplay;

    if-eqz p1, :cond_bd

    .line 342
    new-instance p1, Landroid/app/Presentation;

    iget-object p2, p0, Lcom/sourcevrport/platform/GModWebView$Page;->owner:Landroid/app/Activity;

    iget-object v0, p0, Lcom/sourcevrport/platform/GModWebView$Page;->display:Landroid/hardware/display/VirtualDisplay;

    invoke-virtual {v0}, Landroid/hardware/display/VirtualDisplay;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Landroid/app/Presentation;-><init>(Landroid/content/Context;Landroid/view/Display;)V

    iput-object p1, p0, Lcom/sourcevrport/platform/GModWebView$Page;->presentation:Landroid/app/Presentation;

    .line 343
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 p2, 0x1000000

    invoke-virtual {p1, p2}, Landroid/view/Window;->addFlags(I)V

    .line 344
    iget-object p1, p0, Lcom/sourcevrport/platform/GModWebView$Page;->presentation:Landroid/app/Presentation;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    new-instance p2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, p2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 345
    iget-object p1, p0, Lcom/sourcevrport/platform/GModWebView$Page;->presentation:Landroid/app/Presentation;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 p2, -0x3

    invoke-virtual {p1, p2}, Landroid/view/Window;->setFormat(I)V

    .line 346
    iget-object p1, p0, Lcom/sourcevrport/platform/GModWebView$Page;->web:Landroid/webkit/WebView;

    if-eqz p1, :cond_bc

    invoke-virtual {p0}, Lcom/sourcevrport/platform/GModWebView$Page;->attach()V

    :cond_bc
    return-void

    .line 341
    :cond_bd
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot create the browser display"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

###### Class com.sourcevrport.platform.GModWebView.Page.AnonymousClass1 (com.sourcevrport.platform.GModWebView$Page$1)
.class Lcom/sourcevrport/platform/GModWebView$Page$1;
.super Ljava/lang/Object;
.source "GModWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sourcevrport/platform/GModWebView$Page;->create(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sourcevrport/platform/GModWebView$Page;


# direct methods
.method public constructor <init>(Lcom/sourcevrport/platform/GModWebView$Page;)V
    .registers 2

    .line 241
    iput-object p1, p0, Lcom/sourcevrport/platform/GModWebView$Page$1;->this$0:Lcom/sourcevrport/platform/GModWebView$Page;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 8
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 243
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    const/high16 v1, 0x100000

    if-le v0, v1, :cond_9

    return-void

    .line 244
    :cond_9
    :try_start_9
    iget-object v0, p0, Lcom/sourcevrport/platform/GModWebView$Page$1;->this$0:Lcom/sourcevrport/platform/GModWebView$Page;

    const-string v1, "call"

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, p3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {v1, p1, p2, v2, p3}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sourcevrport/platform/GModWebView$Page;->event([Ljava/lang/Object;)V
    :try_end_1d
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_1d} :catch_1e

    goto :goto_2b

    .line 245
    :catch_1e
    iget-object p0, p0, Lcom/sourcevrport/platform/GModWebView$Page$1;->this$0:Lcom/sourcevrport/platform/GModWebView$Page;

    const-string p1, "error"

    const-string p2, "Invalid Lua callback arguments"

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sourcevrport/platform/GModWebView$Page;->event([Ljava/lang/Object;)V

    :goto_2b
    return-void
.end method

###### Class com.sourcevrport.platform.GModWebView.Page.AnonymousClass2 (com.sourcevrport.platform.GModWebView$Page$2)
.class Lcom/sourcevrport/platform/GModWebView$Page$2;
.super Landroid/webkit/WebViewClient;
.source "GModWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sourcevrport/platform/GModWebView$Page;->create(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sourcevrport/platform/GModWebView$Page;


# direct methods
.method public constructor <init>(Lcom/sourcevrport/platform/GModWebView$Page;)V
    .registers 2

    .line 248
    iput-object p1, p0, Lcom/sourcevrport/platform/GModWebView$Page$2;->this$0:Lcom/sourcevrport/platform/GModWebView$Page;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 3

    .line 250
    iget-object p1, p0, Lcom/sourcevrport/platform/GModWebView$Page$2;->this$0:Lcom/sourcevrport/platform/GModWebView$Page;

    invoke-virtual {p1}, Lcom/sourcevrport/platform/GModWebView$Page;->installBindings()V

    iget-object p0, p0, Lcom/sourcevrport/platform/GModWebView$Page$2;->this$0:Lcom/sourcevrport/platform/GModWebView$Page;

    const-string p1, "ready"

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sourcevrport/platform/GModWebView$Page;->event([Ljava/lang/Object;)V

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 4

    .line 249
    iget-object p1, p0, Lcom/sourcevrport/platform/GModWebView$Page$2;->this$0:Lcom/sourcevrport/platform/GModWebView$Page;

    const-string p3, "begin"

    filled-new-array {p3, p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/sourcevrport/platform/GModWebView$Page;->event([Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/sourcevrport/platform/GModWebView$Page$2;->this$0:Lcom/sourcevrport/platform/GModWebView$Page;

    invoke-virtual {p0}, Lcom/sourcevrport/platform/GModWebView$Page;->installBindings()V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .registers 5

    .line 268
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->isForMainFrame()Z

    move-result p1

    if-eqz p1, :cond_2c

    iget-object p1, p0, Lcom/sourcevrport/platform/GModWebView$Page$2;->this$0:Lcom/sourcevrport/platform/GModWebView$Page;

    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getDescription()Ljava/lang/CharSequence;

    move-result-object p3

    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "error"

    filled-new-array {v0, p3}, [Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/sourcevrport/platform/GModWebView$Page;->event([Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/sourcevrport/platform/GModWebView$Page$2;->this$0:Lcom/sourcevrport/platform/GModWebView$Page;

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ready"

    filled-new-array {p2, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sourcevrport/platform/GModWebView$Page;->event([Ljava/lang/Object;)V

    :cond_2c
    return-void
.end method

.method public onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z
    .registers 4

    .line 271
    iget-object p1, p0, Lcom/sourcevrport/platform/GModWebView$Page$2;->this$0:Lcom/sourcevrport/platform/GModWebView$Page;

    const-string p2, "fatal"

    const-string v0, "The browser renderer stopped"

    filled-new-array {p2, v0}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/sourcevrport/platform/GModWebView$Page;->event([Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/sourcevrport/platform/GModWebView$Page$2;->this$0:Lcom/sourcevrport/platform/GModWebView$Page;

    invoke-virtual {p0}, Lcom/sourcevrport/platform/GModWebView$Page;->release()V

    const/4 p0, 0x1

    return p0
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;
    .registers 12

    .line 252
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    .line 253
    const-string v0, "https://gmod-assets.invalid/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1a

    const-string v0, "asset://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1a

    return-object v1

    .line 254
    :cond_1a
    const-string v0, "https://gmod-assets.invalid/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    :goto_2b
    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_33

    :cond_30
    const/16 p2, 0x8

    goto :goto_2b

    :goto_33
    const/16 p2, 0x3f

    .line 255
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(I)I

    move-result p2

    const/4 v0, 0x0

    if-ltz p2, :cond_40

    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 257
    :cond_40
    iget-object p2, p0, Lcom/sourcevrport/platform/GModWebView$Page$2;->this$0:Lcom/sourcevrport/platform/GModWebView$Page;

    iget-object p2, p2, Lcom/sourcevrport/platform/GModWebView$Page;->assetLock:Ljava/lang/Object;

    monitor-enter p2

    .line 258
    :try_start_45
    iget-object p0, p0, Lcom/sourcevrport/platform/GModWebView$Page$2;->this$0:Lcom/sourcevrport/platform/GModWebView$Page;

    iget-boolean p0, p0, Lcom/sourcevrport/platform/GModWebView$Page;->closed:Z

    if-eqz p0, :cond_4c

    goto :goto_53

    :cond_4c
    invoke-static {p1}, Lcom/sourcevrport/platform/GModWebView;->-$$Nest$smreadAsset(Ljava/lang/String;)[B

    move-result-object v1
    :try_end_50
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_45 .. :try_end_50} :catch_53
    .catchall {:try_start_45 .. :try_end_50} :catchall_51

    goto :goto_53

    :catchall_51
    move-exception p0

    goto :goto_8e

    .line 260
    :catch_53
    :goto_53
    :try_start_53
    monitor-exit p2
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_51

    .line 261
    invoke-static {p1}, Lcom/sourcevrport/platform/GModWebView;->-$$Nest$smmime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/sourcevrport/platform/GModWebAsset;->contentType(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v3

    .line 262
    const-string p0, "https://gmod-assets.invalid/"

    invoke-static {v3, v1, p0}, Lcom/sourcevrport/platform/GModWebAsset;->rewriteURLs(Ljava/lang/String;[BLjava/lang/String;)[B

    move-result-object p0

    .line 263
    new-instance p1, Landroid/webkit/WebResourceResponse;

    const-string v4, "UTF-8"

    if-nez p0, :cond_6c

    const/16 p2, 0x194

    :goto_6a
    move v5, p2

    goto :goto_6f

    :cond_6c
    const/16 p2, 0xc8

    goto :goto_6a

    :goto_6f
    if-nez p0, :cond_75

    .line 264
    const-string p2, "Not Found"

    :goto_73
    move-object v6, p2

    goto :goto_78

    :cond_75
    const-string p2, "OK"

    goto :goto_73

    :goto_78
    const-string p2, "Access-Control-Allow-Origin"

    const-string v1, "*"

    invoke-static {p2, v1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v7

    new-instance v8, Ljava/io/ByteArrayInputStream;

    if-nez p0, :cond_86

    .line 265
    new-array p0, v0, [B

    :cond_86
    invoke-direct {v8, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object v2, p1

    invoke-direct/range {v2 .. v8}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Ljava/io/InputStream;)V

    return-object p1

    .line 260
    :goto_8e
    :try_start_8e
    monitor-exit p2
    :try_end_8f
    .catchall {:try_start_8e .. :try_end_8f} :catchall_51

    throw p0
.end method

###### Class com.sourcevrport.platform.GModWebView.Page.AnonymousClass3 (com.sourcevrport.platform.GModWebView$Page$3)
.class Lcom/sourcevrport/platform/GModWebView$Page$3;
.super Landroid/webkit/WebChromeClient;
.source "GModWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sourcevrport/platform/GModWebView$Page;->create(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sourcevrport/platform/GModWebView$Page;


# direct methods
.method public constructor <init>(Lcom/sourcevrport/platform/GModWebView$Page;)V
    .registers 2

    .line 274
    iput-object p1, p0, Lcom/sourcevrport/platform/GModWebView$Page$3;->this$0:Lcom/sourcevrport/platform/GModWebView$Page;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .registers 3

    .line 276
    iget-object p0, p0, Lcom/sourcevrport/platform/GModWebView$Page$3;->this$0:Lcom/sourcevrport/platform/GModWebView$Page;

    const-string v0, "console"

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object p1

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sourcevrport/platform/GModWebView$Page;->event([Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0
.end method

.method public onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z
    .registers 6

    .line 278
    new-instance p3, Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/sourcevrport/platform/GModWebView$Page$3;->this$0:Lcom/sourcevrport/platform/GModWebView$Page;

    iget-object v0, v0, Lcom/sourcevrport/platform/GModWebView$Page;->owner:Landroid/app/Activity;

    invoke-direct {p3, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 279
    new-instance v0, Lcom/sourcevrport/platform/GModWebView$Page$3$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/sourcevrport/platform/GModWebView$Page$3$1;-><init>(Lcom/sourcevrport/platform/GModWebView$Page$3;Landroid/webkit/WebView;ZLandroid/webkit/WebView;)V

    invoke-virtual {p3, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 285
    iget-object p0, p4, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Landroid/webkit/WebView$WebViewTransport;

    invoke-virtual {p0, p3}, Landroid/webkit/WebView$WebViewTransport;->setWebView(Landroid/webkit/WebView;)V

    invoke-virtual {p4}, Landroid/os/Message;->sendToTarget()V

    const/4 p0, 0x1

    return p0
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 3

    .line 275
    iget-object p0, p0, Lcom/sourcevrport/platform/GModWebView$Page$3;->this$0:Lcom/sourcevrport/platform/GModWebView$Page;

    const-string p1, "title"

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sourcevrport/platform/GModWebView$Page;->event([Ljava/lang/Object;)V

    return-void
.end method

###### Class com.sourcevrport.platform.GModWebView.Page.AnonymousClass3.AnonymousClass1 (com.sourcevrport.platform.GModWebView$Page$3$1)
.class Lcom/sourcevrport/platform/GModWebView$Page$3$1;
.super Landroid/webkit/WebViewClient;
.source "GModWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sourcevrport/platform/GModWebView$Page$3;->onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sourcevrport/platform/GModWebView$Page$3;

.field final synthetic val$child:Landroid/webkit/WebView;

.field final synthetic val$dialog:Z

.field final synthetic val$v:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Lcom/sourcevrport/platform/GModWebView$Page$3;Landroid/webkit/WebView;ZLandroid/webkit/WebView;)V
    .registers 5

    .line 279
    iput-object p1, p0, Lcom/sourcevrport/platform/GModWebView$Page$3$1;->this$1:Lcom/sourcevrport/platform/GModWebView$Page$3;

    iput-object p2, p0, Lcom/sourcevrport/platform/GModWebView$Page$3$1;->val$v:Landroid/webkit/WebView;

    iput-boolean p3, p0, Lcom/sourcevrport/platform/GModWebView$Page$3$1;->val$dialog:Z

    iput-object p4, p0, Lcom/sourcevrport/platform/GModWebView$Page$3$1;->val$child:Landroid/webkit/WebView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .registers 7

    .line 281
    iget-object p1, p0, Lcom/sourcevrport/platform/GModWebView$Page$3$1;->this$1:Lcom/sourcevrport/platform/GModWebView$Page$3;

    iget-object p1, p1, Lcom/sourcevrport/platform/GModWebView$Page$3;->this$0:Lcom/sourcevrport/platform/GModWebView$Page;

    iget-object v0, p0, Lcom/sourcevrport/platform/GModWebView$Page$3$1;->val$v:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sourcevrport/platform/GModWebView$Page$3$1;->val$dialog:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "child"

    filled-new-array {v3, v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sourcevrport/platform/GModWebView$Page;->event([Ljava/lang/Object;)V

    .line 282
    iget-object p1, p0, Lcom/sourcevrport/platform/GModWebView$Page$3$1;->val$v:Landroid/webkit/WebView;

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sourcevrport/platform/GModWebView$Page$3$1;->val$child:Landroid/webkit/WebView;

    invoke-virtual {p0}, Landroid/webkit/WebView;->destroy()V

    const/4 p0, 0x1

    return p0
.end method

###### Class com.sourcevrport.platform.GModWebView$Page$$ExternalSyntheticLambda0 (com.sourcevrport.platform.GModWebView$Page$$ExternalSyntheticLambda0)
.class public final synthetic Lcom/sourcevrport/platform/GModWebView$Page$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;


# instance fields
.field public final synthetic f$0:Lcom/sourcevrport/platform/GModWebView$Page;


# direct methods
.method public synthetic constructor <init>(Lcom/sourcevrport/platform/GModWebView$Page;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sourcevrport/platform/GModWebView$Page$$ExternalSyntheticLambda0;->f$0:Lcom/sourcevrport/platform/GModWebView$Page;

    return-void
.end method


# virtual methods
.method public final onImageAvailable(Landroid/media/ImageReader;)V
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/sourcevrport/platform/GModWebView$Page$$ExternalSyntheticLambda0;->f$0:Lcom/sourcevrport/platform/GModWebView$Page;

    invoke-static {p0, p1}, Lcom/sourcevrport/platform/GModWebView$Page;->$r8$lambda$Pqmu0e-Z_OY-djLt4RuJAjvzcfw(Lcom/sourcevrport/platform/GModWebView$Page;Landroid/media/ImageReader;)V

    return-void
.end method

###### Class com.sourcevrport.platform.GModWebView$$ExternalSyntheticLambda0 (com.sourcevrport.platform.GModWebView$$ExternalSyntheticLambda0)
.class public final synthetic Lcom/sourcevrport/platform/GModWebView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/sourcevrport/platform/GModWebView$Operation;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sourcevrport/platform/GModWebView$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run(Lcom/sourcevrport/platform/GModWebView$Page;)V
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/sourcevrport/platform/GModWebView$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/sourcevrport/platform/GModWebView;->$r8$lambda$DRA6p7XTuZVTtlYSOXB4r4Aq3n8(Ljava/lang/String;Lcom/sourcevrport/platform/GModWebView$Page;)V

    return-void
.end method

###### Class com.sourcevrport.platform.GModWebView$$ExternalSyntheticLambda1 (com.sourcevrport.platform.GModWebView$$ExternalSyntheticLambda1)
.class public final synthetic Lcom/sourcevrport/platform/GModWebView$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/sourcevrport/platform/GModWebView$Operation;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sourcevrport/platform/GModWebView$$ExternalSyntheticLambda1;->f$0:I

    return-void
.end method


# virtual methods
.method public final run(Lcom/sourcevrport/platform/GModWebView$Page;)V
    .registers 2

    .line 0
    iget p0, p0, Lcom/sourcevrport/platform/GModWebView$$ExternalSyntheticLambda1;->f$0:I

    invoke-static {p0, p1}, Lcom/sourcevrport/platform/GModWebView;->$r8$lambda$XhUqiekWTqvfJd6GS_C_eIyW_D4(ILcom/sourcevrport/platform/GModWebView$Page;)V

    return-void
.end method

###### Class com.sourcevrport.platform.GModWebView$$ExternalSyntheticLambda10 (com.sourcevrport.platform.GModWebView$$ExternalSyntheticLambda10)
.class public final synthetic Lcom/sourcevrport/platform/GModWebView$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/sourcevrport/platform/GModWebView$Page;

.field public final synthetic f$1:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public synthetic constructor <init>(Lcom/sourcevrport/platform/GModWebView$Page;Ljava/util/concurrent/CountDownLatch;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sourcevrport/platform/GModWebView$$ExternalSyntheticLambda10;->f$0:Lcom/sourcevrport/platform/GModWebView$Page;

    iput-object p2, p0, Lcom/sourcevrport/platform/GModWebView$$ExternalSyntheticLambda10;->f$1:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/sourcevrport/platform/GModWebView$$ExternalSyntheticLambda10;->f$0:Lcom/sourcevrport/platform/GModWebView$Page;

    iget-object p0, p0, Lcom/sourcevrport/platform/GModWebView$$ExternalSyntheticLambda10;->f$1:Ljava/util/concurrent/CountDownLatch;

    invoke-static {v0, p0}, Lcom/sourcevrport/platform/GModWebView;->$r8$lambda$pVDbCEqmdqgOBk89NwvQ9JqpG7g(Lcom/sourcevrport/platform/GModWebView$Page;Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method

###### Class com.sourcevrport.platform.GModWebView$$ExternalSyntheticLambda11 (com.sourcevrport.platform.GModWebView$$ExternalSyntheticLambda11)
.class public final synthetic Lcom/sourcevrport/platform/GModWebView$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Lcom/sourcevrport/platform/GModWebView$Operation;


# direct methods
.method public synthetic constructor <init>(ILcom/sourcevrport/platform/GModWebView$Operation;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sourcevrport/platform/GModWebView$$ExternalSyntheticLambda11;->f$0:I

    iput-object p2, p0, Lcom/sourcevrport/platform/GModWebView$$ExternalSyntheticLambda11;->f$1:Lcom/sourcevrport/platform/GModWebView$Operation;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget v0, p0, Lcom/sourcevrport/platform/GModWebView$$ExternalSyntheticLambda11;->f$0:I

    iget-object p0, p0, Lcom/sourcevrport/platform/GModWebView$$ExternalSyntheticLambda11;->f$1:Lcom/sourcevrport/platform/GModWebView$Operation;

    invoke-static {v0, p0}, Lcom/sourcevrport/platform/GModWebView;->$r8$lambda$lNW02pxzgzwI_BiXqtYo6wg_8U4(ILcom/sourcevrport/platform/GModWebView$Operation;)V

    return-void
.end method

###### Class com.sourcevrport.platform.GModWebView$$ExternalSyntheticLambda12 (com.sourcevrport.platform.GModWebView$$ExternalSyntheticLambda12)
.class public final synthetic Lcom/sourcevrport/platform/GModWebView$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/sourcevrport/platform/GModWebView$Operation;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sourcevrport/platform/GModWebView$$ExternalSyntheticLambda12;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/sourcevrport/platform/GModWebView$$ExternalSyntheticLambda12;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run(Lcom/sourcevrport/platform/GModWebView$Page;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/sourcevrport/platform/GModWebView$$ExternalSyntheticLambda12;->f$0:Ljava/lang/String;

    iget-object p0, p0, Lcom/sourcevrport/platform/GModWebView$$ExternalSyntheticLambda12;->f$1:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/sourcevrport/platform/GModWebView;->$r8$lambda$ulGK__H6ci2TnmiVrlO5bVUuODk(Ljava/lang/String;Ljava/lang/String;Lcom/sourcevrport/platform/GModWebView$Page;)V

    return-void
.end method

###### Class com.sourcevrport.platform.GModWebView$$ExternalSyntheticLambda2 (com.sourcevrport.platform.GModWebView$$ExternalSyntheticLambda2)
.class public final synthetic Lcom/sourcevrport/platform/GModWebView$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/sourcevrport/platform/GModWebView$Operation;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sourcevrport/platform/GModWebView$$ExternalSyntheticLambda2;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run(Lcom/sourcevrport/platform/GModWebView$Page;)V
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/sourcevrport/platform/GModWebView$$ExternalSyntheticLambda2;->f$0:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/sourcevrport/platform/GModWebView;->$r8$lambda$52Ao18NbZQ6DiQCgxYQcNW5efcw(Ljava/lang/String;Lcom/sourcevrport/platform/GModWebView$Page;)V

    return-void
.end method

###### Class com.sourcevrport.platform.GModWebView$$ExternalSyntheticLambda3 (com.sourcevrport.platform.GModWebView$$ExternalSyntheticLambda3)
.class public final synthetic Lcom/sourcevrport/platform/GModWebView$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/sourcevrport/platform/GModWebView$Operation;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(II)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sourcevrport/platform/GModWebView$$ExternalSyntheticLambda3;->f$0:I

    iput p2, p0, Lcom/sourcevrport/platform/GModWebView$$ExternalSyntheticLambda3;->f$1:I

    return-void
.end method


# virtual methods
.method public final run(Lcom/sourcevrport/platform/GModWebView$Page;)V
    .registers 3

    .line 0
    iget v0, p0, Lcom/sourcevrport/platform/GModWebView$$ExternalSyntheticLambda3;->f$0:I

    iget p0, p0, Lcom/sourcevrport/platform/GModWebView$$ExternalSyntheticLambda3;->f$1:I

    invoke-static {v0, p0, p1}, Lcom/sourcevrport/platform/GModWebView;->$r8$lambda$OEzVTGg8qp3MzjxObbOgAogqzmA(IILcom/sourcevrport/platform/GModWebView$Page;)V

    return-void
.end method

###### Class com.sourcevrport.platform.GModWebView$$ExternalSyntheticLambda4 (com.sourcevrport.platform.GModWebView$$ExternalSyntheticLambda4)
.class public final synthetic Lcom/sourcevrport/platform/GModWebView$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/sourcevrport/platform/GModWebView$Operation;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sourcevrport/platform/GModWebView$$ExternalSyntheticLambda4;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run(Lcom/sourcevrport/platform/GModWebView$Page;)V
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/sourcevrport/platform/GModWebView$$ExternalSyntheticLambda4;->f$0:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/sourcevrport/platform/GModWebView;->$r8$lambda$76BvxPkrIuG1p_9Do2l4GGxyTa4(Ljava/lang/String;Lcom/sourcevrport/platform/GModWebView$Page;)V

    return-void
.end method

###### Class com.sourcevrport.platform.GModWebView$$ExternalSyntheticLambda5 (com.sourcevrport.platform.GModWebView$$ExternalSyntheticLambda5)
.class public final synthetic Lcom/sourcevrport/platform/GModWebView$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Lcom/sourcevrport/platform/GModWebView$Page;

.field public final synthetic f$2:I

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(ILcom/sourcevrport/platform/GModWebView$Page;II)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sourcevrport/platform/GModWebView$$ExternalSyntheticLambda5;->f$0:I

    iput-object p2, p0, Lcom/sourcevrport/platform/GModWebView$$ExternalSyntheticLambda5;->f$1:Lcom/sourcevrport/platform/GModWebView$Page;

    iput p3, p0, Lcom/sourcevrport/platform/GModWebView$$ExternalSyntheticLambda5;->f$2:I

    iput p4, p0, Lcom/sourcevrport/platform/GModWebView$$ExternalSyntheticLambda5;->f$3:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 0
    iget v0, p0, Lcom/sourcevrport/platform/GModWebView$$ExternalSyntheticLambda5;->f$0:I

    iget-object v1, p0, Lcom/sourcevrport/platform/GModWebView$$ExternalSyntheticLambda5;->f$1:Lcom/sourcevrport/platform/GModWebView$Page;

    iget v2, p0, Lcom/sourcevrport/platform/GModWebView$$ExternalSyntheticLambda5;->f$2:I

    iget p0, p0, Lcom/sourcevrport/platform/GModWebView$$ExternalSyntheticLambda5;->f$3:I

    invoke-static {v0, v1, v2, p0}, Lcom/sourcevrport/platform/GModWebView;->$r8$lambda$npgpAc2P9hNPmqh1FJJeaeZn51c(ILcom/sourcevrport/platform/GModWebView$Page;II)V

    return-void
.end method

###### Class com.sourcevrport.platform.GModWebView$$ExternalSyntheticLambda6 (com.sourcevrport.platform.GModWebView$$ExternalSyntheticLambda6)
.class public final synthetic Lcom/sourcevrport/platform/GModWebView$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/sourcevrport/platform/GModWebView$Operation;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sourcevrport/platform/GModWebView$$ExternalSyntheticLambda6;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/sourcevrport/platform/GModWebView$$ExternalSyntheticLambda6;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run(Lcom/sourcevrport/platform/GModWebView$Page;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/sourcevrport/platform/GModWebView$$ExternalSyntheticLambda6;->f$0:Ljava/lang/String;

    iget-object p0, p0, Lcom/sourcevrport/platform/GModWebView$$ExternalSyntheticLambda6;->f$1:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/sourcevrport/platform/GModWebView;->$r8$lambda$WtdtYjRK-yloxQy7FU66DhyBJJc(Ljava/lang/String;Ljava/lang/String;Lcom/sourcevrport/platform/GModWebView$Page;)V

    return-void
.end method

###### Class com.sourcevrport.platform.GModWebView$$ExternalSyntheticLambda7 (com.sourcevrport.platform.GModWebView$$ExternalSyntheticLambda7)
.class public final synthetic Lcom/sourcevrport/platform/GModWebView$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/sourcevrport/platform/GModWebView$Operation;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(IZ)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sourcevrport/platform/GModWebView$$ExternalSyntheticLambda7;->f$0:I

    iput-boolean p2, p0, Lcom/sourcevrport/platform/GModWebView$$ExternalSyntheticLambda7;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run(Lcom/sourcevrport/platform/GModWebView$Page;)V
    .registers 3

    .line 0
    iget v0, p0, Lcom/sourcevrport/platform/GModWebView$$ExternalSyntheticLambda7;->f$0:I

    iget-boolean p0, p0, Lcom/sourcevrport/platform/GModWebView$$ExternalSyntheticLambda7;->f$1:Z

    invoke-static {v0, p0, p1}, Lcom/sourcevrport/platform/GModWebView;->$r8$lambda$PUJumuZ5N7MoP1gWqlPftQv7F6M(IZLcom/sourcevrport/platform/GModWebView$Page;)V

    return-void
.end method

###### Class com.sourcevrport.platform.GModWebView$$ExternalSyntheticLambda8 (com.sourcevrport.platform.GModWebView$$ExternalSyntheticLambda8)
.class public final synthetic Lcom/sourcevrport/platform/GModWebView$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/sourcevrport/platform/GModWebView$Operation;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run(Lcom/sourcevrport/platform/GModWebView$Page;)V
    .registers 2

    .line 0
    invoke-static {p1}, Lcom/sourcevrport/platform/GModWebView;->$r8$lambda$PBJLMS5mLqRuP7-NW3_9_UZ4oEI(Lcom/sourcevrport/platform/GModWebView$Page;)V

    return-void
.end method

###### Class com.sourcevrport.platform.GModWebView$$ExternalSyntheticLambda9 (com.sourcevrport.platform.GModWebView$$ExternalSyntheticLambda9)
.class public final synthetic Lcom/sourcevrport/platform/GModWebView$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/sourcevrport/platform/GModWebView$Operation;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(IIII)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sourcevrport/platform/GModWebView$$ExternalSyntheticLambda9;->f$0:I

    iput p2, p0, Lcom/sourcevrport/platform/GModWebView$$ExternalSyntheticLambda9;->f$1:I

    iput p3, p0, Lcom/sourcevrport/platform/GModWebView$$ExternalSyntheticLambda9;->f$2:I

    iput p4, p0, Lcom/sourcevrport/platform/GModWebView$$ExternalSyntheticLambda9;->f$3:I

    return-void
.end method


# virtual methods
.method public final run(Lcom/sourcevrport/platform/GModWebView$Page;)V
    .registers 5

    .line 0
    iget v0, p0, Lcom/sourcevrport/platform/GModWebView$$ExternalSyntheticLambda9;->f$0:I

    iget v1, p0, Lcom/sourcevrport/platform/GModWebView$$ExternalSyntheticLambda9;->f$1:I

    iget v2, p0, Lcom/sourcevrport/platform/GModWebView$$ExternalSyntheticLambda9;->f$2:I

    iget p0, p0, Lcom/sourcevrport/platform/GModWebView$$ExternalSyntheticLambda9;->f$3:I

    invoke-static {v0, v1, v2, p0, p1}, Lcom/sourcevrport/platform/GModWebView;->$r8$lambda$U_jGWJNe1ZHpmaBy-mjF1R3TuZw(IIIILcom/sourcevrport/platform/GModWebView$Page;)V

    return-void
.end method
