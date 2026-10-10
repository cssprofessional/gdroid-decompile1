###### Class io.ktor.network.tls.platform.PlatformVersionKt (io.ktor.network.tls.platform.PlatformVersionKt)
.class public final Lio/ktor/network/tls/platform/PlatformVersionKt;
.super Ljava/lang/Object;
.source "PlatformVersion.kt"


# static fields
.field public static final platformVersion$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$FFqQ9DpSgnncRUvMrj0OM9DQlVA()Lio/ktor/network/tls/platform/PlatformVersion;
    .registers 1

    .line 0
    invoke-static {}, Lio/ktor/network/tls/platform/PlatformVersionKt;->platformVersion_delegate$lambda$0()Lio/ktor/network/tls/platform/PlatformVersion;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 28
    new-instance v0, Lio/ktor/network/tls/platform/PlatformVersionKt$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lio/ktor/network/tls/platform/PlatformVersionKt$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lio/ktor/network/tls/platform/PlatformVersionKt;->platformVersion$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final getPlatformVersion()Lio/ktor/network/tls/platform/PlatformVersion;
    .registers 1

    .line 28
    sget-object v0, Lio/ktor/network/tls/platform/PlatformVersionKt;->platformVersion$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/ktor/network/tls/platform/PlatformVersion;

    return-object v0
.end method

.method public static final platformVersion_delegate$lambda$0()Lio/ktor/network/tls/platform/PlatformVersion;
    .registers 3

    .line 29
    sget-object v0, Lio/ktor/network/tls/platform/PlatformVersion;->Companion:Lio/ktor/network/tls/platform/PlatformVersion$Companion;

    const-string v1, "java.version"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getProperty(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lio/ktor/network/tls/platform/PlatformVersion$Companion;->invoke(Ljava/lang/String;)Lio/ktor/network/tls/platform/PlatformVersion;

    move-result-object v0

    return-object v0
.end method

###### Class io.ktor.network.tls.platform.PlatformVersionKt$$ExternalSyntheticLambda0 (io.ktor.network.tls.platform.PlatformVersionKt$$ExternalSyntheticLambda0)
.class public final synthetic Lio/ktor/network/tls/platform/PlatformVersionKt$$ExternalSyntheticLambda0;
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
    .registers 1

    .line 0
    invoke-static {}, Lio/ktor/network/tls/platform/PlatformVersionKt;->$r8$lambda$FFqQ9DpSgnncRUvMrj0OM9DQlVA()Lio/ktor/network/tls/platform/PlatformVersion;

    move-result-object p0

    return-object p0
.end method
