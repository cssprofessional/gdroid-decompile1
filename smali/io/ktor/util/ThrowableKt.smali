###### Class io.ktor.util.ThrowableKt (io.ktor.util.ThrowableKt)
.class public final Lio/ktor/util/ThrowableKt;
.super Ljava/lang/Object;
.source "Throwable.kt"


# direct methods
.method public static final getRootCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_5
    if-eqz p0, :cond_c

    .line 18
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    if-eqz v0, :cond_14

    .line 19
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    goto :goto_5

    :cond_14
    return-object p0
.end method
