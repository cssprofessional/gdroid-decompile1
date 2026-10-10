###### Class io.ktor.util.PlatformUtils (io.ktor.util.PlatformUtils)
.class public final Lio/ktor/util/PlatformUtils;
.super Ljava/lang/Object;
.source "PlatformUtils.kt"


# static fields
.field public static final INSTANCE:Lio/ktor/util/PlatformUtils;

.field public static final IS_BROWSER:Z

.field public static final IS_DEVELOPMENT_MODE:Z

.field public static final IS_JS:Z

.field public static final IS_JVM:Z

.field public static final IS_NATIVE:Z

.field public static final IS_NEW_MM_ENABLED:Z

.field public static final IS_NODE:Z

.field public static final IS_WASM_JS:Z


# direct methods
.method static constructor <clinit>()V
    .registers 5

    new-instance v0, Lio/ktor/util/PlatformUtils;

    invoke-direct {v0}, Lio/ktor/util/PlatformUtils;-><init>()V

    sput-object v0, Lio/ktor/util/PlatformUtils;->INSTANCE:Lio/ktor/util/PlatformUtils;

    .line 8
    invoke-static {v0}, Lio/ktor/util/PlatformUtilsJvmKt;->getPlatform(Lio/ktor/util/PlatformUtils;)Lio/ktor/util/Platform;

    move-result-object v1

    .line 9
    instance-of v2, v1, Lio/ktor/util/Platform$Js;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1f

    check-cast v1, Lio/ktor/util/Platform$Js;

    invoke-virtual {v1}, Lio/ktor/util/Platform$Js;->getJsPlatform()Lio/ktor/util/Platform$JsPlatform;

    move-result-object v1

    sget-object v2, Lio/ktor/util/Platform$JsPlatform;->Browser:Lio/ktor/util/Platform$JsPlatform;

    if-ne v1, v2, :cond_1d

    :goto_1b
    move v1, v3

    goto :goto_2e

    :cond_1d
    move v1, v4

    goto :goto_2e

    .line 10
    :cond_1f
    instance-of v2, v1, Lio/ktor/util/Platform$WasmJs;

    if-eqz v2, :cond_1d

    check-cast v1, Lio/ktor/util/Platform$WasmJs;

    invoke-virtual {v1}, Lio/ktor/util/Platform$WasmJs;->getJsPlatform()Lio/ktor/util/Platform$JsPlatform;

    move-result-object v1

    sget-object v2, Lio/ktor/util/Platform$JsPlatform;->Browser:Lio/ktor/util/Platform$JsPlatform;

    if-ne v1, v2, :cond_1d

    goto :goto_1b

    .line 8
    :goto_2e
    sput-boolean v1, Lio/ktor/util/PlatformUtils;->IS_BROWSER:Z

    .line 13
    invoke-static {v0}, Lio/ktor/util/PlatformUtilsJvmKt;->getPlatform(Lio/ktor/util/PlatformUtils;)Lio/ktor/util/Platform;

    move-result-object v1

    .line 14
    instance-of v2, v1, Lio/ktor/util/Platform$Js;

    if-eqz v2, :cond_44

    check-cast v1, Lio/ktor/util/Platform$Js;

    invoke-virtual {v1}, Lio/ktor/util/Platform$Js;->getJsPlatform()Lio/ktor/util/Platform$JsPlatform;

    move-result-object v1

    sget-object v2, Lio/ktor/util/Platform$JsPlatform;->Node:Lio/ktor/util/Platform$JsPlatform;

    if-ne v1, v2, :cond_53

    :goto_42
    move v4, v3

    goto :goto_53

    .line 15
    :cond_44
    instance-of v2, v1, Lio/ktor/util/Platform$WasmJs;

    if-eqz v2, :cond_53

    check-cast v1, Lio/ktor/util/Platform$WasmJs;

    invoke-virtual {v1}, Lio/ktor/util/Platform$WasmJs;->getJsPlatform()Lio/ktor/util/Platform$JsPlatform;

    move-result-object v1

    sget-object v2, Lio/ktor/util/Platform$JsPlatform;->Node:Lio/ktor/util/Platform$JsPlatform;

    if-ne v1, v2, :cond_53

    goto :goto_42

    .line 13
    :cond_53
    :goto_53
    sput-boolean v4, Lio/ktor/util/PlatformUtils;->IS_NODE:Z

    .line 19
    invoke-static {v0}, Lio/ktor/util/PlatformUtilsJvmKt;->getPlatform(Lio/ktor/util/PlatformUtils;)Lio/ktor/util/Platform;

    move-result-object v1

    instance-of v1, v1, Lio/ktor/util/Platform$Js;

    sput-boolean v1, Lio/ktor/util/PlatformUtils;->IS_JS:Z

    .line 20
    invoke-static {v0}, Lio/ktor/util/PlatformUtilsJvmKt;->getPlatform(Lio/ktor/util/PlatformUtils;)Lio/ktor/util/Platform;

    move-result-object v1

    instance-of v1, v1, Lio/ktor/util/Platform$WasmJs;

    sput-boolean v1, Lio/ktor/util/PlatformUtils;->IS_WASM_JS:Z

    .line 21
    invoke-static {v0}, Lio/ktor/util/PlatformUtilsJvmKt;->getPlatform(Lio/ktor/util/PlatformUtils;)Lio/ktor/util/Platform;

    move-result-object v1

    sget-object v2, Lio/ktor/util/Platform$Jvm;->INSTANCE:Lio/ktor/util/Platform$Jvm;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lio/ktor/util/PlatformUtils;->IS_JVM:Z

    .line 22
    invoke-static {v0}, Lio/ktor/util/PlatformUtilsJvmKt;->getPlatform(Lio/ktor/util/PlatformUtils;)Lio/ktor/util/Platform;

    move-result-object v1

    sget-object v2, Lio/ktor/util/Platform$Native;->INSTANCE:Lio/ktor/util/Platform$Native;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lio/ktor/util/PlatformUtils;->IS_NATIVE:Z

    .line 24
    invoke-static {v0}, Lio/ktor/util/PlatformUtilsJvmKt;->isDevelopmentMode(Lio/ktor/util/PlatformUtils;)Z

    move-result v0

    sput-boolean v0, Lio/ktor/util/PlatformUtils;->IS_DEVELOPMENT_MODE:Z

    .line 31
    sput-boolean v3, Lio/ktor/util/PlatformUtils;->IS_NEW_MM_ENABLED:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getIS_BROWSER()Z
    .registers 1

    .line 8
    sget-boolean p0, Lio/ktor/util/PlatformUtils;->IS_BROWSER:Z

    return p0
.end method

.method public final getIS_DEVELOPMENT_MODE()Z
    .registers 1

    .line 24
    sget-boolean p0, Lio/ktor/util/PlatformUtils;->IS_DEVELOPMENT_MODE:Z

    return p0
.end method
