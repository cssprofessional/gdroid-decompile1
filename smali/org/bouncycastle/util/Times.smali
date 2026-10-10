###### Class org.bouncycastle.util.Times (org.bouncycastle.util.Times)
.class public final Lorg/bouncycastle/util/Times;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static nanoTime()J
    .registers 2

    .line 0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    return-wide v0
.end method
