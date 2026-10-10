###### Class io.ktor.utils.io.core.InputKt (io.ktor.utils.io.core.InputKt)
.class public final Lio/ktor/utils/io/core/InputKt;
.super Ljava/lang/Object;
.source "Input.kt"


# direct methods
.method public static final readAvailable(Lkotlinx/io/Source;[BII)I
    .registers 5

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "buffer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/2addr p3, p2

    .line 13
    invoke-interface {p0, p1, p2, p3}, Lkotlinx/io/Source;->readAtMostTo([BII)I

    move-result p0

    const/4 p1, -0x1

    if-ne p0, p1, :cond_13

    const/4 p0, 0x0

    :cond_13
    return p0
.end method
