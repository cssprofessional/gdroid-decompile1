###### Class kotlinx.coroutines.SupervisorJobImpl (kotlinx.coroutines.SupervisorJobImpl)
.class public final Lkotlinx/coroutines/SupervisorJobImpl;
.super Lkotlinx/coroutines/JobImpl;
.source "Supervisor.kt"


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/Job;)V
    .registers 2

    .line 60
    invoke-direct {p0, p1}, Lkotlinx/coroutines/JobImpl;-><init>(Lkotlinx/coroutines/Job;)V

    return-void
.end method


# virtual methods
.method public childCancelled(Ljava/lang/Throwable;)Z
    .registers 2

    .line 0
    const/4 p0, 0x0

    return p0
.end method
