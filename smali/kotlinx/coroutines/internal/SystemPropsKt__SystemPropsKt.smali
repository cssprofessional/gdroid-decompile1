###### Class kotlinx.coroutines.internal.SystemPropsKt__SystemPropsKt (kotlinx.coroutines.internal.SystemPropsKt__SystemPropsKt)
.class public final synthetic Lkotlinx/coroutines/internal/SystemPropsKt__SystemPropsKt;
.super Ljava/lang/Object;
.source "SystemProps.kt"


# static fields
.field public static final AVAILABLE_PROCESSORS:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 7
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lkotlinx/coroutines/internal/SystemPropsKt__SystemPropsKt;->AVAILABLE_PROCESSORS:I

    return-void
.end method

.method public static final getAVAILABLE_PROCESSORS()I
    .registers 1

    .line 7
    sget v0, Lkotlinx/coroutines/internal/SystemPropsKt__SystemPropsKt;->AVAILABLE_PROCESSORS:I

    return v0
.end method

.method public static final systemProp(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 13
    :try_start_0
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_4} :catch_5

    goto :goto_6

    :catch_5
    const/4 p0, 0x0

    :goto_6
    return-object p0
.end method
