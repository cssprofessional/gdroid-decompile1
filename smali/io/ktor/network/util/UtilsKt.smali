###### Class io.ktor.network.util.UtilsKt (io.ktor.network.util.UtilsKt)
.class public final Lio/ktor/network/util/UtilsKt;
.super Ljava/lang/Object;
.source "Utils.kt"


# direct methods
.method public static synthetic $r8$lambda$PDJAFGKj0yZ4xsmZnt4rlWcIIks()J
    .registers 2

    .line 0
    invoke-static {}, Lio/ktor/network/util/UtilsKt;->createTimeout$lambda$0()J

    move-result-wide v0

    return-wide v0
.end method

.method public static final createTimeout(Lkotlinx/coroutines/CoroutineScope;Ljava/lang/String;JLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)Lio/ktor/network/util/Timeout;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Ljava/lang/String;",
            "J",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Long;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)",
            "Lio/ktor/network/util/Timeout;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clock"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onTimeout"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    new-instance v0, Lio/ktor/network/util/Timeout;

    move-object v1, v0

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p4

    move-object v6, p0

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lio/ktor/network/util/Timeout;-><init>(Ljava/lang/String;JLkotlin/jvm/functions/Function0;Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function1;)V

    return-object v0
.end method

.method public static synthetic createTimeout$default(Lkotlinx/coroutines/CoroutineScope;Ljava/lang/String;JLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lio/ktor/network/util/Timeout;
    .registers 14

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_6

    .line 71
    const-string p1, ""

    :cond_6
    move-object v1, p1

    and-int/lit8 p1, p6, 0x4

    if-eqz p1, :cond_10

    .line 73
    new-instance p4, Lio/ktor/network/util/UtilsKt$$ExternalSyntheticLambda0;

    invoke-direct {p4}, Lio/ktor/network/util/UtilsKt$$ExternalSyntheticLambda0;-><init>()V

    :cond_10
    move-object v4, p4

    move-object v0, p0

    move-wide v2, p2

    move-object v5, p5

    .line 70
    invoke-static/range {v0 .. v5}, Lio/ktor/network/util/UtilsKt;->createTimeout(Lkotlinx/coroutines/CoroutineScope;Ljava/lang/String;JLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)Lio/ktor/network/util/Timeout;

    move-result-object p0

    return-object p0
.end method

.method public static final createTimeout$lambda$0()J
    .registers 2

    .line 73
    invoke-static {}, Lio/ktor/util/date/DateJvmKt;->getTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

###### Class io.ktor.network.util.UtilsKt$$ExternalSyntheticLambda0 (io.ktor.network.util.UtilsKt$$ExternalSyntheticLambda0)
.class public final synthetic Lio/ktor/network/util/UtilsKt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 3

    .line 0
    invoke-static {}, Lio/ktor/network/util/UtilsKt;->$r8$lambda$PDJAFGKj0yZ4xsmZnt4rlWcIIks()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method
