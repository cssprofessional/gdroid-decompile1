###### Class in.dragonbra.javasteam.steam.steamclient.callbackmgr.Callback (in.dragonbra.javasteam.steam.steamclient.callbackmgr.Callback)
.class public final Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/Callback;
.super Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackBase;
.source "Callback.kt"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TCall:",
        "Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;",
        ">",
        "Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackBase;",
        "Ljava/io/Closeable;"
    }
.end annotation


# instance fields
.field private final callbackType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+TTCall;>;"
        }
    .end annotation
.end field

.field private final jobID:Lin/dragonbra/javasteam/types/JobID;

.field private mgr:Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackManager;

.field private final onRun:Lin/dragonbra/javasteam/util/compat/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lin/dragonbra/javasteam/util/compat/Consumer<",
            "TTCall;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;Lin/dragonbra/javasteam/util/compat/Consumer;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+TTCall;>;",
            "Lin/dragonbra/javasteam/util/compat/Consumer<",
            "TTCall;>;)V"
        }
    .end annotation

    .line 0
    const-string v0, "callbackType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0xc

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v7}, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/Callback;-><init>(Ljava/lang/Class;Lin/dragonbra/javasteam/util/compat/Consumer;Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackManager;Lin/dragonbra/javasteam/types/JobID;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Lin/dragonbra/javasteam/util/compat/Consumer;Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackManager;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+TTCall;>;",
            "Lin/dragonbra/javasteam/util/compat/Consumer<",
            "TTCall;>;",
            "Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackManager;",
            ")V"
        }
    .end annotation

    .line 0
    const-string v0, "callbackType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v7}, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/Callback;-><init>(Ljava/lang/Class;Lin/dragonbra/javasteam/util/compat/Consumer;Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackManager;Lin/dragonbra/javasteam/types/JobID;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Lin/dragonbra/javasteam/util/compat/Consumer;Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackManager;Lin/dragonbra/javasteam/types/JobID;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+TTCall;>;",
            "Lin/dragonbra/javasteam/util/compat/Consumer<",
            "TTCall;>;",
            "Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackManager;",
            "Lin/dragonbra/javasteam/types/JobID;",
            ")V"
        }
    .end annotation

    const-string v0, "callbackType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "jobID"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackBase;-><init>()V

    .line 9
    iput-object p1, p0, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/Callback;->callbackType:Ljava/lang/Class;

    .line 10
    iput-object p2, p0, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/Callback;->onRun:Lin/dragonbra/javasteam/util/compat/Consumer;

    .line 11
    iput-object p3, p0, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/Callback;->mgr:Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackManager;

    .line 12
    iput-object p4, p0, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/Callback;->jobID:Lin/dragonbra/javasteam/types/JobID;

    if-eqz p3, :cond_1a

    .line 17
    invoke-virtual {p3, p0}, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackManager;->register$javasteam(Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackBase;)V

    :cond_1a
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Class;Lin/dragonbra/javasteam/util/compat/Consumer;Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackManager;Lin/dragonbra/javasteam/types/JobID;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 7

    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_5

    const/4 p3, 0x0

    :cond_5
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_b

    .line 12
    sget-object p4, Lin/dragonbra/javasteam/types/JobID;->INVALID:Lin/dragonbra/javasteam/types/JobID;

    .line 8
    :cond_b
    invoke-direct {p0, p1, p2, p3, p4}, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/Callback;-><init>(Ljava/lang/Class;Lin/dragonbra/javasteam/util/compat/Consumer;Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackManager;Lin/dragonbra/javasteam/types/JobID;)V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 2

    .line 21
    iget-object v0, p0, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/Callback;->mgr:Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackManager;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p0}, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackManager;->unregister$javasteam(Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackBase;)V

    :cond_7
    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/Callback;->mgr:Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackManager;

    return-void
.end method

.method public getCallbackType()Ljava/lang/Class;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+TTCall;>;"
        }
    .end annotation

    .line 9
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/Callback;->callbackType:Ljava/lang/Class;

    return-object p0
.end method

.method public final getJobID()Lin/dragonbra/javasteam/types/JobID;
    .registers 1

    .line 12
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/Callback;->jobID:Lin/dragonbra/javasteam/types/JobID;

    return-object p0
.end method

.method public run(Ljava/lang/Object;)V
    .registers 4

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    check-cast p1, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;

    .line 28
    invoke-virtual {p1}, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/CallbackMsg;->getJobID()Lin/dragonbra/javasteam/types/JobID;

    move-result-object v0

    iget-object v1, p0, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/Callback;->jobID:Lin/dragonbra/javasteam/types/JobID;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    iget-object v0, p0, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/Callback;->jobID:Lin/dragonbra/javasteam/types/JobID;

    sget-object v1, Lin/dragonbra/javasteam/types/JobID;->INVALID:Lin/dragonbra/javasteam/types/JobID;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    :cond_1d
    iget-object p0, p0, Lin/dragonbra/javasteam/steam/steamclient/callbackmgr/Callback;->onRun:Lin/dragonbra/javasteam/util/compat/Consumer;

    if-eqz p0, :cond_24

    .line 29
    invoke-interface {p0, p1}, Lin/dragonbra/javasteam/util/compat/Consumer;->accept(Ljava/lang/Object;)V

    :cond_24
    return-void
.end method
