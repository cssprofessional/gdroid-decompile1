###### Class okhttp3.internal.platform.PlatformRegistry (okhttp3.internal.platform.PlatformRegistry)
.class public final Lokhttp3/internal/platform/PlatformRegistry;
.super Ljava/lang/Object;
.source "PlatformRegistry.kt"


# static fields
.field public static final INSTANCE:Lokhttp3/internal/platform/PlatformRegistry;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lokhttp3/internal/platform/PlatformRegistry;

    invoke-direct {v0}, Lokhttp3/internal/platform/PlatformRegistry;-><init>()V

    sput-object v0, Lokhttp3/internal/platform/PlatformRegistry;->INSTANCE:Lokhttp3/internal/platform/PlatformRegistry;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final findPlatform()Lokhttp3/internal/platform/Platform;
    .registers 4

    .line 25
    sget-object p0, Lokhttp3/internal/platform/android/AndroidLog;->INSTANCE:Lokhttp3/internal/platform/android/AndroidLog;

    invoke-virtual {p0}, Lokhttp3/internal/platform/android/AndroidLog;->enable()V

    .line 28
    sget-object p0, Lokhttp3/internal/platform/Android10Platform;->Companion:Lokhttp3/internal/platform/Android10Platform$Companion;

    invoke-virtual {p0}, Lokhttp3/internal/platform/Android10Platform$Companion;->buildIfSupported()Lokhttp3/internal/platform/Platform;

    move-result-object p0

    if-nez p0, :cond_13

    .line 29
    sget-object p0, Lokhttp3/internal/platform/AndroidPlatform;->Companion:Lokhttp3/internal/platform/AndroidPlatform$Companion;

    invoke-virtual {p0}, Lokhttp3/internal/platform/AndroidPlatform$Companion;->buildIfSupported()Lokhttp3/internal/platform/Platform;

    move-result-object p0

    :cond_13
    if-eqz p0, :cond_16

    return-object p0

    .line 33
    :cond_16
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 38
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected Android API level 21+ but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getApplicationContext()Landroid/content/Context;
    .registers 3

    .line 45
    sget-object p0, Lokhttp3/internal/platform/Platform;->Companion:Lokhttp3/internal/platform/Platform$Companion;

    invoke-virtual {p0}, Lokhttp3/internal/platform/Platform$Companion;->get()Lokhttp3/internal/platform/Platform;

    move-result-object p0

    instance-of v0, p0, Lokhttp3/internal/platform/ContextAwarePlatform;

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    check-cast p0, Lokhttp3/internal/platform/ContextAwarePlatform;

    goto :goto_f

    :cond_e
    move-object p0, v1

    :goto_f
    if-eqz p0, :cond_15

    invoke-interface {p0}, Lokhttp3/internal/platform/ContextAwarePlatform;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    :cond_15
    return-object v1
.end method

.method public final isAndroid()Z
    .registers 1

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public final setApplicationContext(Landroid/content/Context;)V
    .registers 3

    .line 47
    sget-object p0, Lokhttp3/internal/platform/Platform;->Companion:Lokhttp3/internal/platform/Platform$Companion;

    invoke-virtual {p0}, Lokhttp3/internal/platform/Platform$Companion;->get()Lokhttp3/internal/platform/Platform;

    move-result-object p0

    instance-of v0, p0, Lokhttp3/internal/platform/ContextAwarePlatform;

    if-eqz v0, :cond_d

    check-cast p0, Lokhttp3/internal/platform/ContextAwarePlatform;

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    if-eqz p0, :cond_13

    invoke-interface {p0, p1}, Lokhttp3/internal/platform/ContextAwarePlatform;->setApplicationContext(Landroid/content/Context;)V

    :cond_13
    return-void
.end method
