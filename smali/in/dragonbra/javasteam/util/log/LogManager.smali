###### Class in.dragonbra.javasteam.util.log.LogManager (in.dragonbra.javasteam.util.log.LogManager)
.class public final Lin/dragonbra/javasteam/util/log/LogManager;
.super Ljava/lang/Object;
.source "LogManager.kt"


# static fields
.field public static final INSTANCE:Lin/dragonbra/javasteam/util/log/LogManager;

.field private static final LOGGERS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lin/dragonbra/javasteam/util/log/Logger;",
            ">;"
        }
    .end annotation
.end field

.field public static final LOG_LISTENERS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lin/dragonbra/javasteam/util/log/LogListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$L2RoqeuIfbK3bVED3ST7ntU6NF8(Ljava/lang/Class;Ljava/lang/Class;)Lin/dragonbra/javasteam/util/log/Logger;
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lin/dragonbra/javasteam/util/log/LogManager;->getLogger$lambda$0(Ljava/lang/Class;Ljava/lang/Class;)Lin/dragonbra/javasteam/util/log/Logger;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$kd1sntjlGIv4a8a27k47hVCz8-o(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lin/dragonbra/javasteam/util/log/Logger;
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lin/dragonbra/javasteam/util/log/LogManager;->getLogger$lambda$1(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lin/dragonbra/javasteam/util/log/Logger;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lin/dragonbra/javasteam/util/log/LogManager;

    invoke-direct {v0}, Lin/dragonbra/javasteam/util/log/LogManager;-><init>()V

    sput-object v0, Lin/dragonbra/javasteam/util/log/LogManager;->INSTANCE:Lin/dragonbra/javasteam/util/log/LogManager;

    .line 13
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lin/dragonbra/javasteam/util/log/LogManager;->LOGGERS:Ljava/util/Map;

    .line 16
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lin/dragonbra/javasteam/util/log/LogManager;->LOG_LISTENERS:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final addListener(Lin/dragonbra/javasteam/util/log/LogListener;)V
    .registers 2

    const-string v0, "listener"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    sget-object v0, Lin/dragonbra/javasteam/util/log/LogManager;->LOG_LISTENERS:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static final getLogger(Ljava/lang/Class;)Lin/dragonbra/javasteam/util/log/Logger;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lin/dragonbra/javasteam/util/log/Logger;"
        }
    .end annotation

    const-string v0, "clazz"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    sget-object v0, Lin/dragonbra/javasteam/util/log/LogManager;->LOGGERS:Ljava/util/Map;

    new-instance v1, Lin/dragonbra/javasteam/util/log/LogManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lin/dragonbra/javasteam/util/log/LogManager$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Class;)V

    new-instance v2, Lin/dragonbra/javasteam/util/log/LogManager$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1}, Lin/dragonbra/javasteam/util/log/LogManager$$ExternalSyntheticLambda1;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-interface {v0, p0, v2}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "computeIfAbsent(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lin/dragonbra/javasteam/util/log/Logger;

    return-object p0
.end method

.method private static final getLogger$lambda$0(Ljava/lang/Class;Ljava/lang/Class;)Lin/dragonbra/javasteam/util/log/Logger;
    .registers 3

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    new-instance p1, Lin/dragonbra/javasteam/util/log/Logger;

    invoke-direct {p1, p0}, Lin/dragonbra/javasteam/util/log/Logger;-><init>(Ljava/lang/Class;)V

    return-object p1
.end method

.method private static final getLogger$lambda$1(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lin/dragonbra/javasteam/util/log/Logger;
    .registers 2

    .line 24
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lin/dragonbra/javasteam/util/log/Logger;

    return-object p0
.end method

.method public static final removeListener(Lin/dragonbra/javasteam/util/log/LogListener;)V
    .registers 2

    const-string v0, "listener"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    sget-object v0, Lin/dragonbra/javasteam/util/log/LogManager;->LOG_LISTENERS:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final synthetic getLogger()Lin/dragonbra/javasteam/util/log/Logger;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lin/dragonbra/javasteam/util/log/Logger;"
        }
    .end annotation

    const/4 p0, 0x4

    .line 53
    const-string v0, "T"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class p0, Ljava/lang/Object;

    invoke-static {p0}, Lin/dragonbra/javasteam/util/log/LogManager;->getLogger(Ljava/lang/Class;)Lin/dragonbra/javasteam/util/log/Logger;

    move-result-object p0

    return-object p0
.end method

###### Class in.dragonbra.javasteam.util.log.LogManager$$ExternalSyntheticLambda0 (in.dragonbra.javasteam.util.log.LogManager$$ExternalSyntheticLambda0)
.class public final synthetic Lin/dragonbra/javasteam/util/log/LogManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Ljava/lang/Class;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Class;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lin/dragonbra/javasteam/util/log/LogManager$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object p0, p0, Lin/dragonbra/javasteam/util/log/LogManager$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Class;

    check-cast p1, Ljava/lang/Class;

    invoke-static {p0, p1}, Lin/dragonbra/javasteam/util/log/LogManager;->$r8$lambda$L2RoqeuIfbK3bVED3ST7ntU6NF8(Ljava/lang/Class;Ljava/lang/Class;)Lin/dragonbra/javasteam/util/log/Logger;

    move-result-object p0

    return-object p0
.end method

###### Class in.dragonbra.javasteam.util.log.LogManager$$ExternalSyntheticLambda1 (in.dragonbra.javasteam.util.log.LogManager$$ExternalSyntheticLambda1)
.class public final synthetic Lin/dragonbra/javasteam/util/log/LogManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lin/dragonbra/javasteam/util/log/LogManager$$ExternalSyntheticLambda1;->f$0:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object p0, p0, Lin/dragonbra/javasteam/util/log/LogManager$$ExternalSyntheticLambda1;->f$0:Lkotlin/jvm/functions/Function1;

    invoke-static {p0, p1}, Lin/dragonbra/javasteam/util/log/LogManager;->$r8$lambda$kd1sntjlGIv4a8a27k47hVCz8-o(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lin/dragonbra/javasteam/util/log/Logger;

    move-result-object p0

    return-object p0
.end method
