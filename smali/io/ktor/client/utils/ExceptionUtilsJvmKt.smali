###### Class io.ktor.client.utils.ExceptionUtilsJvmKt (io.ktor.client.utils.ExceptionUtilsJvmKt)
.class public final Lio/ktor/client/utils/ExceptionUtilsJvmKt;
.super Ljava/lang/Object;
.source "ExceptionUtilsJvm.kt"


# direct methods
.method public static final unwrapCancellationException(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .registers 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    .line 16
    :goto_6
    instance-of v1, v0, Ljava/util/concurrent/CancellationException;

    if-eqz v1, :cond_1d

    .line 18
    move-object v1, v0

    check-cast v1, Ljava/util/concurrent/CancellationException;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    return-object p0

    .line 21
    :cond_18
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_6

    :cond_1d
    if-nez v0, :cond_20

    goto :goto_21

    :cond_20
    move-object p0, v0

    :goto_21
    return-object p0
.end method
