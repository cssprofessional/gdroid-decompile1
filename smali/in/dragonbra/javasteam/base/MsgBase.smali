###### Class in.dragonbra.javasteam.base.MsgBase (in.dragonbra.javasteam.base.MsgBase)
.class public abstract Lin/dragonbra/javasteam/base/MsgBase;
.super Lin/dragonbra/javasteam/base/AbstractMsgBase;
.source "MsgBase.kt"

# interfaces
.implements Lin/dragonbra/javasteam/base/IClientMsg;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lin/dragonbra/javasteam/base/MsgBase$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<HdrType::",
        "Lin/dragonbra/javasteam/base/ISteamSerializable;",
        ">",
        "Lin/dragonbra/javasteam/base/AbstractMsgBase;",
        "Lin/dragonbra/javasteam/base/IClientMsg;"
    }
.end annotation


# static fields
.field public static final Companion:Lin/dragonbra/javasteam/base/MsgBase$Companion;

.field private static final logger:Lin/dragonbra/javasteam/util/log/Logger;


# instance fields
.field private header:Lin/dragonbra/javasteam/base/ISteamSerializable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "THdrType;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lin/dragonbra/javasteam/base/MsgBase$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lin/dragonbra/javasteam/base/MsgBase$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lin/dragonbra/javasteam/base/MsgBase;->Companion:Lin/dragonbra/javasteam/base/MsgBase$Companion;

    .line 23
    const-class v0, Lin/dragonbra/javasteam/base/MsgBase;

    invoke-static {v0}, Lin/dragonbra/javasteam/util/log/LogManager;->getLogger(Ljava/lang/Class;)Lin/dragonbra/javasteam/util/log/Logger;

    move-result-object v0

    sput-object v0, Lin/dragonbra/javasteam/base/MsgBase;->logger:Lin/dragonbra/javasteam/util/log/Logger;

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

    invoke-direct {p0, p1, v2, v0, v1}, Lin/dragonbra/javasteam/base/MsgBase;-><init>(Ljava/lang/Class;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

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

    .line 15
    invoke-direct {p0, p2}, Lin/dragonbra/javasteam/base/AbstractMsgBase;-><init>(I)V

    const/4 p2, 0x0

    .line 34
    :try_start_9
    new-array v0, p2, [Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    new-array p2, p2, [Ljava/lang/Object;

    invoke-virtual {p1, p2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "newInstance(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lin/dragonbra/javasteam/base/ISteamSerializable;

    iput-object p1, p0, Lin/dragonbra/javasteam/base/MsgBase;->header:Lin/dragonbra/javasteam/base/ISteamSerializable;
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

    .line 42
    :goto_27
    sget-object p1, Lin/dragonbra/javasteam/base/MsgBase;->logger:Lin/dragonbra/javasteam/util/log/Logger;

    invoke-virtual {p1, p0}, Lin/dragonbra/javasteam/util/log/Logger;->error(Ljava/lang/Throwable;)V

    goto :goto_3e

    .line 40
    :goto_2d
    sget-object p1, Lin/dragonbra/javasteam/base/MsgBase;->logger:Lin/dragonbra/javasteam/util/log/Logger;

    invoke-virtual {p1, p0}, Lin/dragonbra/javasteam/util/log/Logger;->error(Ljava/lang/Throwable;)V

    goto :goto_3e

    .line 38
    :goto_33
    sget-object p1, Lin/dragonbra/javasteam/base/MsgBase;->logger:Lin/dragonbra/javasteam/util/log/Logger;

    invoke-virtual {p1, p0}, Lin/dragonbra/javasteam/util/log/Logger;->error(Ljava/lang/Throwable;)V

    goto :goto_3e

    .line 36
    :goto_39
    sget-object p1, Lin/dragonbra/javasteam/base/MsgBase;->logger:Lin/dragonbra/javasteam/util/log/Logger;

    invoke-virtual {p1, p0}, Lin/dragonbra/javasteam/util/log/Logger;->error(Ljava/lang/Throwable;)V

    :goto_3e
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Class;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 5

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_5

    const/4 p2, 0x0

    .line 16
    :cond_5
    invoke-direct {p0, p1, p2}, Lin/dragonbra/javasteam/base/MsgBase;-><init>(Ljava/lang/Class;I)V

    return-void
.end method


# virtual methods
.method public final getHeader()Lin/dragonbra/javasteam/base/ISteamSerializable;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()THdrType;"
        }
    .end annotation

    .line 29
    iget-object p0, p0, Lin/dragonbra/javasteam/base/MsgBase;->header:Lin/dragonbra/javasteam/base/ISteamSerializable;

    if-eqz p0, :cond_5

    return-object p0

    :cond_5
    const-string p0, "header"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

###### Class in.dragonbra.javasteam.base.MsgBase.Companion (in.dragonbra.javasteam.base.MsgBase$Companion)
.class public final Lin/dragonbra/javasteam/base/MsgBase$Companion;
.super Ljava/lang/Object;
.source "MsgBase.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lin/dragonbra/javasteam/base/MsgBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lin/dragonbra/javasteam/base/MsgBase$Companion;-><init>()V

    return-void
.end method
