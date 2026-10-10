###### Class io.ktor.utils.io.ByteChannel_jvmKt (io.ktor.utils.io.ByteChannel_jvmKt)
.class public final Lio/ktor/utils/io/ByteChannel_jvmKt;
.super Ljava/lang/Object;
.source "ByteChannel.jvm.kt"


# direct methods
.method public static final getDEVELOPMENT_MODE()Z
    .registers 3

    .line 10
    const-string v0, "io.ktor.development"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_11

    move v1, v2

    :cond_11
    return v1
.end method
