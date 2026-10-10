###### Class com.github.luben.zstd.Objects (com.github.luben.zstd.Objects)
.class final Lcom/github/luben/zstd/Objects;
.super Ljava/lang/Object;
.source "Objects.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkFromIndexSize(III)V
    .registers 4

    or-int v0, p2, p0

    or-int/2addr v0, p1

    if-ltz v0, :cond_a

    sub-int v0, p2, p0

    if-gt p1, v0, :cond_a

    return-void

    .line 10
    :cond_a
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p0, p1, p2}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "Range [%s, %<s + %s) out of bounds for length %s"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
