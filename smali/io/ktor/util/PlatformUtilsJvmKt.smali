###### Class io.ktor.util.PlatformUtilsJvmKt (io.ktor.util.PlatformUtilsJvmKt)
.class public final Lio/ktor/util/PlatformUtilsJvmKt;
.super Ljava/lang/Object;
.source "PlatformUtilsJvm.kt"


# direct methods
.method public static final getPlatform(Lio/ktor/util/PlatformUtils;)Lio/ktor/util/Platform;
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    sget-object p0, Lio/ktor/util/Platform$Jvm;->INSTANCE:Lio/ktor/util/Platform$Jvm;

    return-object p0
.end method

.method public static final isDevelopmentMode(Lio/ktor/util/PlatformUtils;)Z
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    const-string p0, "io.ktor.development"

    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_16

    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_16

    move v0, v1

    :cond_16
    return v0
.end method
