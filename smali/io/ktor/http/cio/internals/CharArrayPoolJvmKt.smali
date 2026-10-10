###### Class io.ktor.http.cio.internals.CharArrayPoolJvmKt (io.ktor.http.cio.internals.CharArrayPoolJvmKt)
.class public final Lio/ktor/http/cio/internals/CharArrayPoolJvmKt;
.super Ljava/lang/Object;
.source "CharArrayPoolJvm.kt"


# direct methods
.method public static final isPoolingDisabled()Z
    .registers 1

    .line 8
    const-string v0, "ktor.internal.cio.disable.chararray.pooling"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method
