###### Class in.dragonbra.javasteam.util.event.ScheduledFunction (in.dragonbra.javasteam.util.event.ScheduledFunction)
.class public Lin/dragonbra/javasteam/util/event/ScheduledFunction;
.super Ljava/lang/Object;
.source "ScheduledFunction.java"


# instance fields
.field private bStarted:Z

.field private delay:J

.field private final func:Ljava/lang/Runnable;

.field private timer:Ljava/util/Timer;


# direct methods
.method public static bridge synthetic -$$Nest$fgetfunc(Lin/dragonbra/javasteam/util/event/ScheduledFunction;)Ljava/lang/Runnable;
    .registers 1

    .line 0
    iget-object p0, p0, Lin/dragonbra/javasteam/util/event/ScheduledFunction;->func:Ljava/lang/Runnable;

    return-object p0
.end method

.method public constructor <init>(Ljava/lang/Runnable;J)V
    .registers 5

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lin/dragonbra/javasteam/util/event/ScheduledFunction;->bStarted:Z

    .line 21
    iput-wide p2, p0, Lin/dragonbra/javasteam/util/event/ScheduledFunction;->delay:J

    .line 22
    iput-object p1, p0, Lin/dragonbra/javasteam/util/event/ScheduledFunction;->func:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public getDelay()J
    .registers 3

    .line 49
    iget-wide v0, p0, Lin/dragonbra/javasteam/util/event/ScheduledFunction;->delay:J

    return-wide v0
.end method

.method public setDelay(J)V
    .registers 3

    .line 53
    iput-wide p1, p0, Lin/dragonbra/javasteam/util/event/ScheduledFunction;->delay:J

    return-void
.end method

.method public start()V
    .registers 8

    .line 26
    iget-boolean v0, p0, Lin/dragonbra/javasteam/util/event/ScheduledFunction;->bStarted:Z

    if-nez v0, :cond_1a

    .line 27
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lin/dragonbra/javasteam/util/event/ScheduledFunction;->timer:Ljava/util/Timer;

    .line 28
    new-instance v2, Lin/dragonbra/javasteam/util/event/ScheduledFunction$1;

    invoke-direct {v2, p0}, Lin/dragonbra/javasteam/util/event/ScheduledFunction$1;-><init>(Lin/dragonbra/javasteam/util/event/ScheduledFunction;)V

    const-wide/16 v3, 0x0

    iget-wide v5, p0, Lin/dragonbra/javasteam/util/event/ScheduledFunction;->delay:J

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    const/4 v0, 0x1

    .line 36
    iput-boolean v0, p0, Lin/dragonbra/javasteam/util/event/ScheduledFunction;->bStarted:Z

    :cond_1a
    return-void
.end method

.method public stop()V
    .registers 2

    .line 41
    iget-boolean v0, p0, Lin/dragonbra/javasteam/util/event/ScheduledFunction;->bStarted:Z

    if-eqz v0, :cond_f

    .line 42
    iget-object v0, p0, Lin/dragonbra/javasteam/util/event/ScheduledFunction;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    .line 43
    iput-object v0, p0, Lin/dragonbra/javasteam/util/event/ScheduledFunction;->timer:Ljava/util/Timer;

    const/4 v0, 0x0

    .line 44
    iput-boolean v0, p0, Lin/dragonbra/javasteam/util/event/ScheduledFunction;->bStarted:Z

    :cond_f
    return-void
.end method

###### Class in.dragonbra.javasteam.util.event.ScheduledFunction.AnonymousClass1 (in.dragonbra.javasteam.util.event.ScheduledFunction$1)
.class Lin/dragonbra/javasteam/util/event/ScheduledFunction$1;
.super Ljava/util/TimerTask;
.source "ScheduledFunction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lin/dragonbra/javasteam/util/event/ScheduledFunction;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lin/dragonbra/javasteam/util/event/ScheduledFunction;


# direct methods
.method public constructor <init>(Lin/dragonbra/javasteam/util/event/ScheduledFunction;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 28
    iput-object p1, p0, Lin/dragonbra/javasteam/util/event/ScheduledFunction$1;->this$0:Lin/dragonbra/javasteam/util/event/ScheduledFunction;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 31
    iget-object v0, p0, Lin/dragonbra/javasteam/util/event/ScheduledFunction$1;->this$0:Lin/dragonbra/javasteam/util/event/ScheduledFunction;

    invoke-static {v0}, Lin/dragonbra/javasteam/util/event/ScheduledFunction;->-$$Nest$fgetfunc(Lin/dragonbra/javasteam/util/event/ScheduledFunction;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 32
    iget-object p0, p0, Lin/dragonbra/javasteam/util/event/ScheduledFunction$1;->this$0:Lin/dragonbra/javasteam/util/event/ScheduledFunction;

    invoke-static {p0}, Lin/dragonbra/javasteam/util/event/ScheduledFunction;->-$$Nest$fgetfunc(Lin/dragonbra/javasteam/util/event/ScheduledFunction;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_11
    return-void
.end method
