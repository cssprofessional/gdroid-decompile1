###### Class in.dragonbra.javasteam.base.gc.GCMsgBase (in.dragonbra.javasteam.base.gc.GCMsgBase)
.class public abstract Lin/dragonbra/javasteam/base/gc/GCMsgBase;
.super Lin/dragonbra/javasteam/base/AbstractMsgBase;
.source "GCMsgBase.kt"

# interfaces
.implements Lin/dragonbra/javasteam/base/gc/IClientGCMsg;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lin/dragonbra/javasteam/base/gc/GCMsgBase$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<HdrType::",
        "Lin/dragonbra/javasteam/base/gc/IGCSerializableHeader;",
        ">",
        "Lin/dragonbra/javasteam/base/AbstractMsgBase;",
        "Lin/dragonbra/javasteam/base/gc/IClientGCMsg;"
    }
.end annotation


# static fields
.field public static final Companion:Lin/dragonbra/javasteam/base/gc/GCMsgBase$Companion;

.field private static final logger:Lin/dragonbra/javasteam/util/log/Logger;


# instance fields
.field private header:Lin/dragonbra/javasteam/base/gc/IGCSerializableHeader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "THdrType;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lin/dragonbra/javasteam/base/gc/GCMsgBase$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lin/dragonbra/javasteam/base/gc/GCMsgBase$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lin/dragonbra/javasteam/base/gc/GCMsgBase;->Companion:Lin/dragonbra/javasteam/base/gc/GCMsgBase$Companion;

    .line 24
    const-class v0, Lin/dragonbra/javasteam/base/gc/GCMsgBase;

    invoke-static {v0}, Lin/dragonbra/javasteam/util/log/LogManager;->getLogger(Ljava/lang/Class;)Lin/dragonbra/javasteam/util/log/Logger;

    move-result-object v0

    sput-object v0, Lin/dragonbra/javasteam/base/gc/GCMsgBase;->logger:Lin/dragonbra/javasteam/util/log/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "THdrType;>;)V"
        }
    .end annotation

    .line 0
    const-string v0, "clazz"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, v2, v0, v1}, Lin/dragonbra/javasteam/base/gc/GCMsgBase;-><init>(Ljava/lang/Class;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "THdrType;>;I)V"
        }
    .end annotation

    const-string v0, "clazz"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0, p2}, Lin/dragonbra/javasteam/base/AbstractMsgBase;-><init>(I)V

    const/4 p2, 0x0

    .line 35
    :try_start_9
    new-array v0, p2, [Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    new-array p2, p2, [Ljava/lang/Object;

    invoke-virtual {p1, p2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "newInstance(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lin/dragonbra/javasteam/base/gc/IGCSerializableHeader;

    iput-object p1, p0, Lin/dragonbra/javasteam/base/gc/GCMsgBase;->header:Lin/dragonbra/javasteam/base/gc/IGCSerializableHeader;
    :try_end_1e
    .catch Ljava/lang/NoSuchMethodException; {:try_start_9 .. :try_end_1e} :catch_25
    .catch Ljava/lang/InstantiationException; {:try_start_9 .. :try_end_1e} :catch_23
    .catch Ljava/lang/IllegalAccessException; {:try_start_9 .. :try_end_1e} :catch_21
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_9 .. :try_end_1e} :catch_1f

    goto :goto_3e

    :catch_1f
    move-exception p0

    goto :goto_27

    :catch_21
    move-exception p0

    goto :goto_2d

    :catch_23
    move-exception p0

    goto :goto_33

    :catch_25
    move-exception p0

    goto :goto_39

    .line 43
    :goto_27
    sget-object p1, Lin/dragonbra/javasteam/base/gc/GCMsgBase;->logger:Lin/dragonbra/javasteam/util/log/Logger;

    invoke-virtual {p1, p0}, Lin/dragonbra/javasteam/util/log/Logger;->error(Ljava/lang/Throwable;)V

    goto :goto_3e

    .line 41
    :goto_2d
    sget-object p1, Lin/dragonbra/javasteam/base/gc/GCMsgBase;->logger:Lin/dragonbra/javasteam/util/log/Logger;

    invoke-virtual {p1, p0}, Lin/dragonbra/javasteam/util/log/Logger;->error(Ljava/lang/Throwable;)V

    goto :goto_3e

    .line 39
    :goto_33
    sget-object p1, Lin/dragonbra/javasteam/base/gc/GCMsgBase;->logger:Lin/dragonbra/javasteam/util/log/Logger;

    invoke-virtual {p1, p0}, Lin/dragonbra/javasteam/util/log/Logger;->error(Ljava/lang/Throwable;)V

    goto :goto_3e

    .line 37
    :goto_39
    sget-object p1, Lin/dragonbra/javasteam/base/gc/GCMsgBase;->logger:Lin/dragonbra/javasteam/util/log/Logger;

    invoke-virtual {p1, p0}, Lin/dragonbra/javasteam/util/log/Logger;->error(Ljava/lang/Throwable;)V

    :goto_3e
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Class;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 5

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_5

    const/4 p2, 0x0

    .line 17
    :cond_5
    invoke-direct {p0, p1, p2}, Lin/dragonbra/javasteam/base/gc/GCMsgBase;-><init>(Ljava/lang/Class;I)V

    return-void
.end method


# virtual methods
.method public final getHeader()Lin/dragonbra/javasteam/base/gc/IGCSerializableHeader;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()THdrType;"
        }
    .end annotation

    .line 30
    iget-object p0, p0, Lin/dragonbra/javasteam/base/gc/GCMsgBase;->header:Lin/dragonbra/javasteam/base/gc/IGCSerializableHeader;

    if-eqz p0, :cond_5

    return-object p0

    :cond_5
    const-string p0, "header"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

###### Class in.dragonbra.javasteam.base.gc.GCMsgBase.Companion (in.dragonbra.javasteam.base.gc.GCMsgBase$Companion)
.class public final Lin/dragonbra/javasteam/base/gc/GCMsgBase$Companion;
.super Ljava/lang/Object;
.source "GCMsgBase.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lin/dragonbra/javasteam/base/gc/GCMsgBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lin/dragonbra/javasteam/base/gc/GCMsgBase$Companion;-><init>()V

    return-void
.end method
